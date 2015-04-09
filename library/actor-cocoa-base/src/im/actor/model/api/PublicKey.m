//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/PublicKey.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/PublicKey.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/PublicKey.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/Utils.h"
#include "java/io/IOException.h"

@interface ImActorModelApiPublicKey () {
 @public
  jint uid_;
  jlong keyHash_;
  IOSByteArray *key_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiPublicKey, key_, IOSByteArray *)


#line 19
@implementation ImActorModelApiPublicKey


#line 25
- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)keyHash
              withByteArray:(IOSByteArray *)key {
  if (self = [super init]) {
    
#line 26
    self->uid_ = uid;
    
#line 27
    self->keyHash_ = keyHash;
    
#line 28
    self->key_ = key;
  }
  return self;
}


#line 31
- (instancetype)init {
  return [super init];
}

- (jint)getUid {
  
#line 36
  return self->uid_;
}


#line 39
- (jlong)getKeyHash {
  
#line 40
  return self->keyHash_;
}


#line 43
- (IOSByteArray *)getKey {
  
#line 44
  return self->key_;
}


#line 48
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->uid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->keyHash_ = [values getLongWithInt:2];
  self->key_ = [values getBytesWithInt:3];
}


#line 55
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 56
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
  [writer writeLongWithInt:2 withLong:self->keyHash_];
  if (self->key_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeBytesWithInt:3 withByteArray:self->key_];
}

- (NSString *)description {
  NSString *res = @"struct PublicKey{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"uid=", self->uid_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", keyHash=", self->keyHash_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", key=", BSUtils_byteArrayToStringCompactWithByteArray_(self->key_)));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (void)copyAllFieldsTo:(ImActorModelApiPublicKey *)other {
  [super copyAllFieldsTo:other];
  other->uid_ = uid_;
  other->keyHash_ = keyHash_;
  other->key_ = key_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiPublicKey)