//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/mtp/entity/AuthIdInvalid.java
//

#ifndef _MTAuthIdInvalid_H_
#define _MTAuthIdInvalid_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"

@class BSDataInput;
@class BSDataOutput;

#define MTAuthIdInvalid_HEADER 17

@interface MTAuthIdInvalid : MTProtoStruct

#pragma mark Public

- (instancetype)initWithBSDataInput:(BSDataInput *)stream;

#pragma mark Protected

- (jbyte)getHeader;

- (void)readBodyWithBSDataInput:(BSDataInput *)bs;

- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(MTAuthIdInvalid)

J2OBJC_STATIC_FIELD_GETTER(MTAuthIdInvalid, HEADER, jbyte)

FOUNDATION_EXPORT void MTAuthIdInvalid_initWithBSDataInput_(MTAuthIdInvalid *self, BSDataInput *stream);

FOUNDATION_EXPORT MTAuthIdInvalid *new_MTAuthIdInvalid_initWithBSDataInput_(BSDataInput *stream) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(MTAuthIdInvalid)

typedef MTAuthIdInvalid ImActorModelNetworkMtpEntityAuthIdInvalid;

#endif // _MTAuthIdInvalid_H_
