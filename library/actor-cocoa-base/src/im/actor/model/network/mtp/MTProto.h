//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/mtp/MTProto.java
//

#ifndef _MTMTProto_H_
#define _MTMTProto_H_

#include "J2ObjC_header.h"

@class AMEndpoints;
@class AMNetworkStateEnum;
@class MTProtoStruct;
@protocol AMNetworkProvider;
@protocol MTMTProtoCallback;

@interface MTMTProto : NSObject

#pragma mark Public

- (instancetype)initWithLong:(jlong)authId
                    withLong:(jlong)sessionId
             withAMEndpoints:(AMEndpoints *)endpoints
       withMTMTProtoCallback:(id<MTMTProtoCallback>)callback
       withAMNetworkProvider:(id<AMNetworkProvider>)networkProvider
                 withBoolean:(jboolean)isEnableLog
                withNSString:(NSString *)basePath;

- (void)cancelRpcWithLong:(jlong)mtId;

- (void)forceNetworkCheck;

- (NSString *)getActorPath;

- (jlong)getAuthId;

- (id<MTMTProtoCallback>)getCallback;

- (AMEndpoints *)getEndpoints;

- (id<AMNetworkProvider>)getNetworkProvider;

- (jlong)getSessionId;

- (jboolean)isEnableLog;

- (void)onNetworkChangedWithAMNetworkStateEnum:(AMNetworkStateEnum *)state;

- (jlong)sendRpcMessageWithMTProtoStruct:(MTProtoStruct *)protoStruct;

- (void)stopProto;

@end

J2OBJC_EMPTY_STATIC_INIT(MTMTProto)

FOUNDATION_EXPORT void MTMTProto_initWithLong_withLong_withAMEndpoints_withMTMTProtoCallback_withAMNetworkProvider_withBoolean_withNSString_(MTMTProto *self, jlong authId, jlong sessionId, AMEndpoints *endpoints, id<MTMTProtoCallback> callback, id<AMNetworkProvider> networkProvider, jboolean isEnableLog, NSString *basePath);

FOUNDATION_EXPORT MTMTProto *new_MTMTProto_initWithLong_withLong_withAMEndpoints_withMTMTProtoCallback_withAMNetworkProvider_withBoolean_withNSString_(jlong authId, jlong sessionId, AMEndpoints *endpoints, id<MTMTProtoCallback> callback, id<AMNetworkProvider> networkProvider, jboolean isEnableLog, NSString *basePath) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(MTMTProto)

typedef MTMTProto ImActorModelNetworkMtpMTProto;

#endif // _MTMTProto_H_
