package im.actor.server.api.rpc.service

import scala.concurrent.Await
import scala.concurrent.duration._

import com.amazonaws.services.s3.transfer.TransferManager
import com.google.protobuf.CodedInputStream
import com.typesafe.config.ConfigFactory
import org.scalatest.Inside._
import slick.dbio.DBIO

import im.actor.api.rpc._
import im.actor.api.rpc.misc.ResponseSeq
import im.actor.api.rpc.sequence.{ DifferenceUpdate, ResponseGetDifference }
import im.actor.api.rpc.users.UpdateUserNameChanged
import im.actor.server.api.rpc.service.sequence.SequenceServiceConfig
import im.actor.server.presences.PresenceManager
import im.actor.server.push.SeqUpdatesManager
import im.actor.server._

class SequenceServiceSpec extends BaseAppSuite({
  ActorSpecification.createSystem(
    ConfigFactory.parseString(
      """
        push.seq-updates-manager.receive-timeout = 3 seconds
      """
    )
  )
}) with ImplicitGroupRegions with ImplicitSessionRegionProxy with ImplicitAuthService {

  behavior of "Sequence service"

  it should "get state" in e1
  it should "get difference" in e2
  it should "get difference if there is one update bigger than difference size limit" in e3

  implicit val presenceManagerRegion = PresenceManager.startRegion()

  val bucketName = "actor-uploads-test"

  implicit val transferManager = new TransferManager(awsCredentials)
  val config = SequenceServiceConfig.load().get

  implicit val service = new sequence.SequenceServiceImpl(config)
  implicit val msgService = messaging.MessagingServiceImpl(mediator)

  import SeqUpdatesManager._

  def e1() = {
    val (user, authId, _) = createUser()
    val sessionId = createSessionId()
    implicit val clientData = ClientData(authId, sessionId, Some(user.id))

    whenReady(service.handleGetState()) { res ⇒
      res should matchPattern { case Ok(ResponseSeq(999, _)) ⇒ }
    }
  }

  def e2() = {
    val (user, authId, _) = createUser()
    val sessionId = createSessionId()
    implicit val clientData = ClientData(authId, sessionId, Some(user.id))

    def withError(maxUpdateSize: Long) = {
      val example = UpdateUserNameChanged(1000, "Looooooooooooooooooooooooooooooong name")
      maxUpdateSize * (1 + 4.toDouble / example.getSerializedSize)
    }

    //serialized update size is: 40 bytes for body + 4 bytes for header, 44 bytes total
    //with max update size of 20 KiB 1281 updates should split into three parts
    val actions = for (i ← 1000 to 2280) yield {
      val update = UpdateUserNameChanged(i, "Looooooooooooooooooooooooooooooong name")
      persistAndPushUpdate(authId, update, pushText = None, isFat = false)
    }
    var totalUpdates: Seq[DifferenceUpdate] = Seq.empty

    Await.result(db.run(DBIO.sequence(actions)), 10.seconds)

    val (seq1, state1) = whenReady(service.handleGetDifference(0, Array.empty)) { res ⇒
      val diff = res.toOption.get
      inside(res) {
        case Ok(ResponseGetDifference(seq, state, users, updates, needMore, groups)) ⇒
          (updates.map(_.toByteArray.length).sum <= withError(config.maxDifferenceSize)) shouldEqual true
          needMore shouldEqual true
          totalUpdates ++= updates
          diff.seq shouldEqual 999 + updates.length
      }
      (diff.seq, diff.state)
    }

    val (seq2, state2) = whenReady(service.handleGetDifference(seq1, state1)) { res ⇒
      val diff = res.toOption.get
      inside(res) {
        case Ok(ResponseGetDifference(seq, state, users, updates, needMore, groups)) ⇒
          (updates.map(_.toByteArray.length).sum <= withError(config.maxDifferenceSize)) shouldEqual true
          needMore shouldEqual true
          totalUpdates ++= updates
          diff.seq shouldEqual seq1 + updates.length
      }
      (diff.seq, diff.state)
    }

    val finalSeq = whenReady(service.handleGetDifference(seq2, state2)) { res ⇒
      val diff = res.toOption.get
      inside(res) {
        case Ok(ResponseGetDifference(seq, state, users, updates, needMore, groups)) ⇒
          (updates.map(_.toByteArray.length).sum <= withError(config.maxDifferenceSize)) shouldEqual true
          needMore shouldEqual false
          totalUpdates ++= updates
          diff.seq shouldEqual seq2 + updates.length
      }
      diff.seq
    }

    for (i ← 1000 to 2280) {
      val data = totalUpdates(i - 1000)
      val in = CodedInputStream.newInstance(data.update)
      UpdateUserNameChanged.parseFrom(in) should matchPattern {
        case Right(UpdateUserNameChanged(`i`, _)) ⇒
      }
    }

    finalSeq shouldEqual 2280
    totalUpdates.length shouldEqual 1281

  }

  def e3() = {
    val (user, authId, _) = createUser()
    val sessionId = createSessionId()
    implicit val clientData = ClientData(authId, sessionId, Some(user.id))

    val maxSize = config.maxDifferenceSize

    val smallUpdate = UpdateUserNameChanged(2, "Name")
    val bigUpdate = UpdateUserNameChanged(1, (for (_ ← (1L to maxSize * 10)) yield "b").mkString(""))

    whenReady(persistAndPushUpdateF(authId, smallUpdate, pushText = None, isFat = false))(identity)
    whenReady(persistAndPushUpdateF(authId, bigUpdate, pushText = None, isFat = false))(identity)
    whenReady(persistAndPushUpdateF(authId, bigUpdate, pushText = None, isFat = false))(identity)

    // expect first small update and needMore == true
    val (seq1, state1) = whenReady(service.handleGetDifference(0, Array.empty)) { res ⇒
      inside(res) {
        case Ok(ResponseGetDifference(_, _, _, updates, true, _)) ⇒
          updates.size shouldEqual 1
      }

      val diff = res.toOption.get
      (diff.seq, diff.state)
    }

    // expect first big update and needMore == true
    val (seq2, state2) = whenReady(service.handleGetDifference(seq1, state1)) { res ⇒
      inside(res) {
        case Ok(ResponseGetDifference(_, _, _, updates, true, _)) ⇒
          updates.size shouldEqual 1
      }

      val diff = res.toOption.get
      (diff.seq, diff.state)
    }

    // expect second big update and needMore == false
    whenReady(service.handleGetDifference(seq2, state2)) { res ⇒
      inside(res) {
        case Ok(ResponseGetDifference(_, _, _, updates, false, _)) ⇒
          updates.size shouldEqual 1
      }
    }
  }
}
