//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/messages/entity/PendingMessage.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/modules/messages/entity/PendingMessage.h"
#include "java/io/IOException.h"

@interface ImActorModelModulesMessagesEntityPendingMessage () {
 @public
  AMPeer *peer_;
  jlong rid_;
  AMAbsContent *content_;
  jboolean isError__;
}
- (instancetype)init;
@end

J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesEntityPendingMessage, peer_, AMPeer *)
J2OBJC_FIELD_SETTER(ImActorModelModulesMessagesEntityPendingMessage, content_, AMAbsContent *)

@implementation ImActorModelModulesMessagesEntityPendingMessage

+ (ImActorModelModulesMessagesEntityPendingMessage *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelModulesMessagesEntityPendingMessage_fromBytesWithByteArray_(data);
}

- (instancetype)initWithAMPeer:(AMPeer *)peer
                      withLong:(jlong)rid
              withAMAbsContent:(AMAbsContent *)content {
  if (self = [super init]) {
    self->peer_ = peer;
    self->rid_ = rid;
    self->content_ = content;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (AMPeer *)getPeer {
  return peer_;
}

- (AMAbsContent *)getContent {
  return content_;
}

- (jlong)getRid {
  return rid_;
}

- (jboolean)isError {
  return isError__;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  peer_ = AMPeer_fromUniqueIdWithLong_([((BSBserValues *) nil_chk(values)) getLongWithInt:1]);
  rid_ = [values getLongWithInt:2];
  content_ = AMAbsContent_contentFromBytesWithByteArray_([values getBytesWithInt:3]);
  isError__ = [values getBoolWithInt:4 withBoolean:NO];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeLongWithInt:1 withLong:[((AMPeer *) nil_chk(peer_)) getUnuqueId]];
  [writer writeLongWithInt:2 withLong:rid_];
  [writer writeBytesWithInt:3 withByteArray:[((AMAbsContent *) nil_chk(content_)) toByteArray]];
  [writer writeBoolWithInt:4 withBoolean:isError__];
}

- (void)copyAllFieldsTo:(ImActorModelModulesMessagesEntityPendingMessage *)other {
  [super copyAllFieldsTo:other];
  other->peer_ = peer_;
  other->rid_ = rid_;
  other->content_ = content_;
  other->isError__ = isError__;
}

@end

ImActorModelModulesMessagesEntityPendingMessage *ImActorModelModulesMessagesEntityPendingMessage_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelModulesMessagesEntityPendingMessage_init();
  return ((ImActorModelModulesMessagesEntityPendingMessage *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelModulesMessagesEntityPendingMessage alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesMessagesEntityPendingMessage)