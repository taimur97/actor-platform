//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/mtp/entity/ProtoStruct.java
//

#ifndef _MTProtoStruct_H_
#define _MTProtoStruct_H_

@class BSDataInput;
@class BSDataOutput;

#include "J2ObjC_header.h"
#include "im/actor/model/network/mtp/entity/ProtoObject.h"

@interface MTProtoStruct : MTProtoObject {
}

- (instancetype)initWithBSDataInput:(BSDataInput *)stream;

- (instancetype)init;

- (jbyte)getHeader;

- (void)writeObjectWithBSDataOutput:(BSDataOutput *)bs;

- (MTProtoObject *)readObjectWithBSDataInput:(BSDataInput *)bs;

- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs;

- (void)readBodyWithBSDataInput:(BSDataInput *)bs;

@end

J2OBJC_EMPTY_STATIC_INIT(MTProtoStruct)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef MTProtoStruct ImActorModelNetworkMtpEntityProtoStruct;

J2OBJC_TYPE_LITERAL_HEADER(MTProtoStruct)

#endif // _MTProtoStruct_H_