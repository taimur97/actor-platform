//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestInviteUser.java
//

#ifndef _ImActorModelApiRpcRequestInviteUser_H_
#define _ImActorModelApiRpcRequestInviteUser_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@class ImActorModelApiGroupOutPeer;
@class ImActorModelApiUserOutPeer;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

#define ImActorModelApiRpcRequestInviteUser_HEADER 69

@interface ImActorModelApiRpcRequestInviteUser : ImActorModelNetworkParserRequest {
}

+ (ImActorModelApiRpcRequestInviteUser *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithImActorModelApiGroupOutPeer:(ImActorModelApiGroupOutPeer *)groupPeer
                                           withLong:(jlong)rid
                     withImActorModelApiUserOutPeer:(ImActorModelApiUserOutPeer *)user;

- (instancetype)init;

- (ImActorModelApiGroupOutPeer *)getGroupPeer;

- (jlong)getRid;

- (ImActorModelApiUserOutPeer *)getUser;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestInviteUser)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiRpcRequestInviteUser *ImActorModelApiRpcRequestInviteUser_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestInviteUser, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestInviteUser)

#endif // _ImActorModelApiRpcRequestInviteUser_H_