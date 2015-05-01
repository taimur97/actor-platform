//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/connection/ManagedConnection.java
//

#ifndef _ImActorModelNetworkConnectionManagedConnection_H_
#define _ImActorModelNetworkConnectionManagedConnection_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/Connection.h"

@class AMConnectionEndpoint;
@class IOSByteArray;
@protocol AMConnectionCallback;
@protocol ImActorModelNetworkConnectionAsyncConnectionFactory;
@protocol ImActorModelNetworkConnectionManagedConnectionCreateCallback;

#define ImActorModelNetworkConnectionManagedConnection_CONNECTION_TIMEOUT 5000

@interface ImActorModelNetworkConnectionManagedConnection : NSObject < AMConnection >

#pragma mark Public

- (instancetype)initWithInt:(jint)connectionId
                    withInt:(jint)mtprotoVersion
                    withInt:(jint)apiMajorVersion
                    withInt:(jint)apiMinorVersion
   withAMConnectionEndpoint:(AMConnectionEndpoint *)endpoint
   withAMConnectionCallback:(id<AMConnectionCallback>)callback
withImActorModelNetworkConnectionManagedConnectionCreateCallback:(id<ImActorModelNetworkConnectionManagedConnectionCreateCallback>)factoryCallback
withImActorModelNetworkConnectionAsyncConnectionFactory:(id<ImActorModelNetworkConnectionAsyncConnectionFactory>)connectionFactory;

- (void)close;

- (jboolean)isClosed;

- (void)post:(IOSByteArray *)data
  withOffset:(jint)offset
     withLen:(jint)len;

@end

J2OBJC_STATIC_INIT(ImActorModelNetworkConnectionManagedConnection)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelNetworkConnectionManagedConnection, CONNECTION_TIMEOUT, jint)

FOUNDATION_EXPORT void ImActorModelNetworkConnectionManagedConnection_initWithInt_withInt_withInt_withInt_withAMConnectionEndpoint_withAMConnectionCallback_withImActorModelNetworkConnectionManagedConnectionCreateCallback_withImActorModelNetworkConnectionAsyncConnectionFactory_(ImActorModelNetworkConnectionManagedConnection *self, jint connectionId, jint mtprotoVersion, jint apiMajorVersion, jint apiMinorVersion, AMConnectionEndpoint *endpoint, id<AMConnectionCallback> callback, id<ImActorModelNetworkConnectionManagedConnectionCreateCallback> factoryCallback, id<ImActorModelNetworkConnectionAsyncConnectionFactory> connectionFactory);

FOUNDATION_EXPORT ImActorModelNetworkConnectionManagedConnection *new_ImActorModelNetworkConnectionManagedConnection_initWithInt_withInt_withInt_withInt_withAMConnectionEndpoint_withAMConnectionCallback_withImActorModelNetworkConnectionManagedConnectionCreateCallback_withImActorModelNetworkConnectionAsyncConnectionFactory_(jint connectionId, jint mtprotoVersion, jint apiMajorVersion, jint apiMinorVersion, AMConnectionEndpoint *endpoint, id<AMConnectionCallback> callback, id<ImActorModelNetworkConnectionManagedConnectionCreateCallback> factoryCallback, id<ImActorModelNetworkConnectionAsyncConnectionFactory> connectionFactory) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelNetworkConnectionManagedConnection)

#endif // _ImActorModelNetworkConnectionManagedConnection_H_