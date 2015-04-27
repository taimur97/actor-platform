package im.actor.server

import com.amazonaws.auth.BasicAWSCredentials
import com.amazonaws.services.s3.transfer.TransferManager
import com.github.dwhjames.awswrap.s3.AmazonS3ScalaClient
import com.google.android.gcm.server.Sender
import com.relayrides.pushy.apns.{ PushManagerConfiguration, ApnsEnvironment, PushManager }
import com.relayrides.pushy.apns.util.{ SSLContextUtil, SimpleApnsPushNotification }

import im.actor.server.api.frontend.{ Tcp, Ws }
import akka.actor._
import akka.stream.ActorFlowMaterializer
import akka.kernel.Bootable
import com.typesafe.config.ConfigFactory
import im.actor.server.api.rpc.RpcApiService
import im.actor.server.api.rpc.service.auth.AuthServiceImpl
import im.actor.server.api.rpc.service.configs.ConfigsServiceImpl
import im.actor.server.api.rpc.service.contacts.ContactsServiceImpl
import im.actor.server.api.rpc.service.files.FilesServiceImpl
import im.actor.server.api.rpc.service.groups.GroupsServiceImpl
import im.actor.server.api.rpc.service.messaging.MessagingServiceImpl
import im.actor.server.api.rpc.service.push.PushServiceImpl
import im.actor.server.api.rpc.service.sequence.SequenceServiceImpl
import im.actor.server.api.rpc.service.users.UsersServiceImpl
import im.actor.server.api.rpc.service.weak.WeakServiceImpl
import im.actor.server.db.{ DbInit, FlywayInit }
import im.actor.server.presences.PresenceManager
import im.actor.server.push.{ WeakUpdatesManager, SeqUpdatesManager }
import im.actor.server.session.Session
import im.actor.server.social.SocialManager

class Main extends Bootable with DbInit with FlywayInit {
  val config = ConfigFactory.load()
  val serverConfig = config.getConfig("actor-server")

  val sqlConfig = serverConfig.getConfig("persist.sql")
  val s3Config = serverConfig.getConfig("files.s3")
  val gcmConfig = serverConfig.getConfig("push.gcm")
  val apnsConfig = serverConfig.getConfig("push.apns")

  implicit val system = ActorSystem(serverConfig.getString("actor-system-name"), serverConfig)
  implicit val executor = system.dispatcher
  implicit val materializer = ActorFlowMaterializer()

  val ds = initDs(sqlConfig)
  implicit val db = initDb(ds)

  def startup() = {
    val flyway = initFlyway(ds.ds)
    flyway.migrate()

    implicit val gcmSender = new Sender(gcmConfig.getString("key"))

    implicit val apnsManager = new PushManager[SimpleApnsPushNotification](
      ApnsEnvironment.getProductionEnvironment,
      SSLContextUtil.createDefaultSSLContext(apnsConfig.getString("cert.path"), apnsConfig.getString("cert.password")),
      null,
      null,
      null,
      new PushManagerConfiguration(),
      "ActorPushManager"
    )
    apnsManager.start()

    implicit val seqUpdManagerRegion = SeqUpdatesManager.startRegion()
    implicit val weakUpdManagerRegion = WeakUpdatesManager.startRegion()
    implicit val presenceManagerRegion = PresenceManager.startRegion()
    implicit val socialManagerRegion = SocialManager.startRegion()

    val rpcApiService = system.actorOf(RpcApiService.props())
    implicit val sessionRegion = Session.startRegion(
      Some(Session.props(rpcApiService))
    )

    val s3BucketName = s3Config.getString("bucket")
    val awsKey = s3Config.getString("key")
    val awsSecret = s3Config.getString("secret")
    val awsCredentials = new BasicAWSCredentials(awsKey, awsSecret)

    implicit val client = new AmazonS3ScalaClient(awsCredentials)
    implicit val transferManager = new TransferManager(awsCredentials)

    val services = Seq(
      new AuthServiceImpl,
      new ContactsServiceImpl,
      new MessagingServiceImpl,
      new GroupsServiceImpl,
      new SequenceServiceImpl,
      new WeakServiceImpl,
      new UsersServiceImpl,
      new FilesServiceImpl(s3BucketName),
      new ConfigsServiceImpl,
      new PushServiceImpl
    )

    services foreach (rpcApiService ! RpcApiService.AttachService(_))

    Tcp.start(serverConfig, sessionRegion)
    //Ws.start(serverConfig)
  }

  def shutdown() = {
    system.shutdown()
    ds.close()
  }
}

object Main {
  def main(args: Array[String]): Unit = {
    new Main()
      .startup()
  }
}