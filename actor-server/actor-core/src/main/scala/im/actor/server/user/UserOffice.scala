package im.actor.server.user

import im.actor.api.rpc.{ AuthorizedClientData, Update }
import im.actor.api.rpc.users.Sex

import scala.concurrent.{ ExecutionContext, Future }
import scala.util.control.NoStackTrace

import akka.actor._
import akka.pattern.ask
import akka.util.Timeout
import org.joda.time.DateTime

import im.actor.api.rpc.messaging.{ Message ⇒ ApiMessage }
import im.actor.api.rpc.peers.Peer
import im.actor.api.rpc.users.{ User ⇒ ApiUser }
import im.actor.server.db.ActorPostgresDriver.api._
import im.actor.server.db.DbExtension
import im.actor.server.file.Avatar
import im.actor.server.push.SeqUpdatesManager.UpdateRefs
import im.actor.server.{ models, persist }
import im.actor.server.push.SeqUpdatesManagerMessages.{ FatMetaData, FatData }
import im.actor.server.push.{ SeqUpdatesExtension, SeqUpdatesManager, SeqUpdatesManagerRegion }
import im.actor.server.sequence.{ SeqState, SeqStateDate }

object UserOffice extends Commands with Queries {
  case object InvalidAccessHash extends Exception with NoStackTrace

  case object FailedToFetchInfo

  def persistenceIdFor(userId: Int): String = s"User-${userId}"
}

private[user] sealed trait Commands extends AuthCommands {
  self: Queries ⇒

  import UserCommands._

  def create(userId: Int, accessSalt: String, name: String, countryCode: String, sex: Sex.Sex, isBot: Boolean)(
    implicit
    userOfficeRegion: UserProcessorRegion,
    timeout:          Timeout,
    ec:               ExecutionContext
  ): Future[CreateAck] = {
    (userOfficeRegion.ref ? Create(userId, accessSalt, name, countryCode, sex, isBot)).mapTo[CreateAck]
  }

  def addPhone(userId: Int, phone: Long)(
    implicit
    userOfficeRegion: UserProcessorRegion,
    timeout:          Timeout,
    ec:               ExecutionContext
  ): Future[Unit] = {
    (userOfficeRegion.ref ? AddPhone(userId, phone)).mapTo[AddPhoneAck] map (_ ⇒ ())
  }

  def addEmail(userId: Int, email: String)(
    implicit
    userOfficeRegion: UserProcessorRegion,
    timeout:          Timeout,
    ec:               ExecutionContext
  ): Future[Unit] = {
    (userOfficeRegion.ref ? AddEmail(userId, email)).mapTo[AddEmailAck] map (_ ⇒ ())
  }

  def delete(userId: Int)(
    implicit
    userOfficeRegion: UserProcessorRegion,
    timeout:          Timeout,
    ec:               ExecutionContext
  ): Future[Unit] = {
    (userOfficeRegion.ref ? Delete(userId)).mapTo[DeleteAck] map (_ ⇒ ())
  }

  def changeCountryCode(userId: Int, countryCode: String)(
    implicit
    userOfficeRegion: UserProcessorRegion,
    timeout:          Timeout,
    ec:               ExecutionContext
  ): Future[Unit] = {
    userOfficeRegion.ref ? ChangeCountryCode(userId, countryCode) map (_ ⇒ ())
  }

  def changeName(userId: Int, name: String)(
    implicit
    userOfficeRegion: UserProcessorRegion,
    timeout:          Timeout,
    ec:               ExecutionContext
  ): Future[SeqState] = {
    (userOfficeRegion.ref ? ChangeName(userId, name)).mapTo[SeqState]
  }

  def deliverMessage(userId: Int, peer: Peer, senderUserId: Int, randomId: Long, date: DateTime, message: ApiMessage, isFat: Boolean)(
    implicit
    region:  UserProcessorRegion,
    timeout: Timeout,
    ec:      ExecutionContext
  ): Future[Unit] =
    (region.ref ? DeliverMessage(userId, peer, senderUserId, randomId, date, message, isFat)) map (_ ⇒ ())

  def deliverOwnMessage(userId: Int, peer: Peer, senderAuthId: Long, randomId: Long, date: DateTime, message: ApiMessage, isFat: Boolean)(
    implicit
    region:  UserProcessorRegion,
    timeout: Timeout,
    ec:      ExecutionContext
  ): Future[SeqState] =
    (region.ref ? DeliverOwnMessage(userId, peer, senderAuthId, randomId, date, message, isFat)).mapTo[SeqState]

  def changeNickname(userId: Int, clientAuthId: Long, nickname: Option[String])(
    implicit
    userOfficeRegion: UserProcessorRegion,
    timeout:          Timeout,
    ec:               ExecutionContext
  ): Future[SeqState] = {
    (userOfficeRegion.ref ? ChangeNickname(userId, clientAuthId, nickname)).mapTo[SeqState]
  }

  def changeAbout(userId: Int, clientAuthId: Long, about: Option[String])(
    implicit
    userOfficeRegion: UserProcessorRegion,
    timeout:          Timeout,
    ec:               ExecutionContext
  ): Future[SeqState] = {
    (userOfficeRegion.ref ? ChangeAbout(userId, clientAuthId, about)).mapTo[SeqState]
  }

  def updateAvatar(userId: Int, clientAuthId: Long, avatarOpt: Option[Avatar])(
    implicit
    region:  UserProcessorRegion,
    timeout: Timeout,
    ec:      ExecutionContext
  ): Future[UpdateAvatarAck] = (region.ref ? UpdateAvatar(userId, clientAuthId, avatarOpt)).mapTo[UpdateAvatarAck]

  def broadcastUserUpdate(
    userId:   Int,
    update:   Update,
    pushText: Option[String],
    isFat:    Boolean
  )(implicit
    ext: SeqUpdatesExtension,
    userViewRegion: UserViewRegion,
    ec:             ExecutionContext,
    timeout:        Timeout): Future[Seq[SeqState]] = {
    val header = update.header
    val serializedData = update.toByteArray

    val originPeer = SeqUpdatesManager.getOriginPeer(update)
    val fatMetaData = if (isFat) Some(SeqUpdatesManager.getFatMetaData(update)) else None
    val refs = SeqUpdatesManager.updateRefs(update)

    broadcastUserUpdate(userId, header, serializedData, refs, pushText, originPeer, fatMetaData)
  }

  def broadcastUserUpdate(
    userId:         Int,
    header:         Int,
    serializedData: Array[Byte],
    refs:           UpdateRefs,
    pushText:       Option[String],
    originPeer:     Option[Peer],
    fatMetaData:    Option[FatMetaData]
  )(implicit
    ext: SeqUpdatesExtension,
    userViewRegion: UserViewRegion,
    ec:             ExecutionContext,
    timeout:        Timeout): Future[Seq[SeqState]] = {
    for {
      authIds ← getAuthIds(userId)
      seqstates ← SeqUpdatesManager.persistAndPushUpdatesF(authIds.toSet, header, serializedData, refs, pushText, originPeer, fatMetaData)
    } yield seqstates
  }

  def broadcastUsersUpdate(
    userIds:  Set[Int],
    update:   Update,
    pushText: Option[String],
    isFat:    Boolean
  )(implicit
    ext: SeqUpdatesExtension,
    userViewRegion: UserViewRegion,
    ec:             ExecutionContext,
    timeout:        Timeout): Future[Seq[SeqState]] = {
    val header = update.header
    val serializedData = update.toByteArray

    val originPeer = SeqUpdatesManager.getOriginPeer(update)
    val fatMetaData = if (isFat) Some(SeqUpdatesManager.getFatMetaData(update)) else None
    val refs = SeqUpdatesManager.updateRefs(update)

    for {
      authIds ← getAuthIds(userIds)
      seqstates ← Future.sequence(
        authIds.map(SeqUpdatesManager.persistAndPushUpdateF(_, header, serializedData, refs, pushText, originPeer, fatMetaData))
      )
    } yield seqstates
  }

  def broadcastClientUpdate(
    update:   Update,
    pushText: Option[String],
    isFat:    Boolean
  )(
    implicit
    ext:            SeqUpdatesExtension,
    userViewRegion: UserViewRegion,
    client:         AuthorizedClientData,
    ec:             ExecutionContext,
    timeout:        Timeout
  ): Future[SeqState] = broadcastClientUpdate(client.userId, client.authId, update, pushText, isFat)

  def broadcastClientUpdate(
    clientUserId: Int,
    clientAuthId: Long,
    update:       Update,
    pushText:     Option[String],
    isFat:        Boolean
  )(
    implicit
    ext:            SeqUpdatesExtension,
    userViewRegion: UserViewRegion,
    ec:             ExecutionContext,
    timeout:        Timeout
  ): Future[SeqState] = {
    val header = update.header
    val serializedData = update.toByteArray

    val originPeer = SeqUpdatesManager.getOriginPeer(update)
    val fatMetaData = if (isFat) Some(SeqUpdatesManager.getFatMetaData(update)) else None
    val refs = SeqUpdatesManager.updateRefs(update)

    for {
      otherAuthIds ← UserOffice.getAuthIds(clientUserId) map (_.filter(_ != clientAuthId))
      _ ← Future.sequence(
        otherAuthIds map (
          SeqUpdatesManager.persistAndPushUpdateF(_, header, serializedData, refs, pushText, originPeer, fatMetaData)
        )
      )

      seqstate ← SeqUpdatesManager.persistAndPushUpdateF(clientAuthId, header, serializedData, refs, pushText, originPeer, fatMetaData)
    } yield seqstate
  }

  def broadcastClientAndUsersUpdate(
    userIds:  Set[Int],
    update:   Update,
    pushText: Option[String],
    isFat:    Boolean
  )(implicit
    ext: SeqUpdatesExtension,
    userViewRegion: UserViewRegion,
    ec:             ExecutionContext,
    timeout:        Timeout,
    client:         AuthorizedClientData): Future[(SeqState, Seq[SeqState])] =
    broadcastClientAndUsersUpdate(client.userId, client.authId, userIds, update, pushText, isFat)

  def broadcastClientAndUsersUpdate(
    clientUserId: Int,
    clientAuthId: Long,
    userIds:      Set[Int],
    update:       Update,
    pushText:     Option[String],
    isFat:        Boolean
  )(implicit
    ext: SeqUpdatesExtension,
    userViewRegion: UserViewRegion,
    ec:             ExecutionContext,
    timeout:        Timeout): Future[(SeqState, Seq[SeqState])] = {
    val header = update.header
    val serializedData = update.toByteArray

    val originPeer = SeqUpdatesManager.getOriginPeer(update)
    val fatMetaData = if (isFat) Some(SeqUpdatesManager.getFatMetaData(update)) else None
    val refs = SeqUpdatesManager.updateRefs(update)

    for {
      authIds ← getAuthIds(userIds + clientUserId)
      seqstates ← Future.sequence(
        authIds.view
          .filterNot(_ == clientAuthId)
          .map(SeqUpdatesManager.persistAndPushUpdateF(_, header, serializedData, refs, pushText, originPeer, fatMetaData))
      )
      seqstate ← SeqUpdatesManager.persistAndPushUpdateF(clientAuthId, header, serializedData, refs, pushText, originPeer, fatMetaData)
    } yield (seqstate, seqstates)
  }
}

private[user] sealed trait Queries {
  import UserQueries._

  def getAuthIds(userId: Int)(implicit region: UserViewRegion, timeout: Timeout, ec: ExecutionContext): Future[Seq[Long]] = {
    (region.ref ? GetAuthIds(userId)).mapTo[GetAuthIdsResponse] map (_.authIds)
  }

  def getAuthIds(userIds: Set[Int])(implicit region: UserViewRegion, timeout: Timeout, ec: ExecutionContext): Future[Seq[Long]] = {
    Future.sequence(userIds map (getAuthIds(_))) map (_.toSeq.flatten)
  }

  def getApiStruct(userId: Int, clientUserId: Int, clientAuthId: Long)(implicit region: UserViewRegion, timeout: Timeout, ec: ExecutionContext): Future[ApiUser] = {
    (region.ref ? GetApiStruct(userId, clientUserId, clientAuthId)).mapTo[GetApiStructResponse] map (_.struct)
  }

  def getContactRecords(userId: Int)(implicit region: UserViewRegion, timeout: Timeout, ec: ExecutionContext): Future[(Seq[Long], Seq[String])] = {
    (region.ref ? GetContactRecords(userId)).mapTo[GetContactRecordsResponse] map (r ⇒ (r.phones, r.emails))
  }

  def getContactRecordsSet(userId: Int)(implicit region: UserViewRegion, timeout: Timeout, ec: ExecutionContext): Future[(Set[Long], Set[String])] =
    for ((phones, emails) ← getContactRecords(userId)) yield (phones.toSet, emails.toSet)

  def checkAccessHash(userId: Int, senderAuthId: Long, accessHash: Long)(implicit region: UserViewRegion, timeout: Timeout, ec: ExecutionContext): Future[Boolean] = {
    (region.ref ? CheckAccessHash(userId, senderAuthId, accessHash)).mapTo[CheckAccessHashResponse] map (_.isCorrect)
  }
}
