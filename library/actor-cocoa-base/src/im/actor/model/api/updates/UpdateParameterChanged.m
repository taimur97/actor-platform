//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateParameterChanged.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateParameterChanged.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdateParameterChanged.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateParameterChanged () {
 @public
  NSString *key_;
  NSString *value_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateParameterChanged, key_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateParameterChanged, value_, NSString *)


#line 20
@implementation ImActorModelApiUpdatesUpdateParameterChanged


#line 23
+ (ImActorModelApiUpdatesUpdateParameterChanged *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateParameterChanged_fromBytesWithByteArray_(data);
}


#line 30
- (instancetype)initWithNSString:(NSString *)key
                    withNSString:(NSString *)value {
  if (self = [super init]) {
    
#line 31
    self->key_ = key;
    
#line 32
    self->value_ = value;
  }
  return self;
}


#line 35
- (instancetype)init {
  return [super init];
}

- (NSString *)getKey {
  
#line 40
  return self->key_;
}


#line 43
- (NSString *)getValue {
  
#line 44
  return self->value_;
}


#line 48
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->key_ = [((BSBserValues *) nil_chk(values)) getStringWithInt:1];
  self->value_ = [values optStringWithInt:2];
}


#line 54
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  
#line 55
  if (self->key_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [((BSBserWriter *) nil_chk(writer)) writeStringWithInt:1 withNSString:self->key_];
  if (self->value_ != nil) {
    [writer writeStringWithInt:2 withNSString:self->value_];
  }
}

- (NSString *)description {
  NSString *res = @"update ParameterChanged{";
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  
#line 73
  return ImActorModelApiUpdatesUpdateParameterChanged_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiUpdatesUpdateParameterChanged *)other {
  [super copyAllFieldsTo:other];
  other->key_ = key_;
  other->value_ = value_;
}

@end

ImActorModelApiUpdatesUpdateParameterChanged *ImActorModelApiUpdatesUpdateParameterChanged_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateParameterChanged_init();
  
#line 24
  return ((ImActorModelApiUpdatesUpdateParameterChanged *) BSBser_parseWithBSBserObject_withByteArray_([[ImActorModelApiUpdatesUpdateParameterChanged alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateParameterChanged)