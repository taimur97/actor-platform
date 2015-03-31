//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/UpdateProcessor.java
//

#ifndef _ImActorModelModulesUpdatesUpdateProcessor_H_
#define _ImActorModelModulesUpdatesUpdateProcessor_H_

@class ImActorModelModulesModules;
@class ImActorModelModulesUpdatesContactsProcessor;
@class ImActorModelModulesUpdatesGroupsProcessor;
@class ImActorModelModulesUpdatesInternalGroupCreated;
@class ImActorModelModulesUpdatesInternalInternalUpdate;
@class ImActorModelModulesUpdatesInternalUsersFounded;
@class ImActorModelModulesUpdatesMessagesProcessor;
@class ImActorModelModulesUpdatesPresenceProcessor;
@class ImActorModelModulesUpdatesTypingProcessor;
@class ImActorModelModulesUpdatesUsersProcessor;
@class ImActorModelNetworkParserUpdate;
@class JavaUtilArrayList;
@protocol JavaUtilList;

#include "J2ObjC_header.h"
#include "im/actor/model/modules/BaseModule.h"
#include "java/lang/Runnable.h"

@interface ImActorModelModulesUpdatesUpdateProcessor : ImActorModelModulesBaseModule {
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules;

- (void)applyRelatedWithJavaUtilList:(id<JavaUtilList>)users
                    withJavaUtilList:(id<JavaUtilList>)groups
                         withBoolean:(jboolean)force;

- (void)processInternalUpdateWithImActorModelModulesUpdatesInternalInternalUpdate:(ImActorModelModulesUpdatesInternalInternalUpdate *)update;

- (void)processUpdateWithImActorModelNetworkParserUpdate:(ImActorModelNetworkParserUpdate *)update;

- (jboolean)isCausesInvalidationWithImActorModelNetworkParserUpdate:(ImActorModelNetworkParserUpdate *)update;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUpdatesUpdateProcessor)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT NSString *ImActorModelModulesUpdatesUpdateProcessor_TAG_;
J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesUpdatesUpdateProcessor, TAG_, NSString *)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUpdatesUpdateProcessor)

@interface ImActorModelModulesUpdatesUpdateProcessor_$1 : NSObject < JavaLangRunnable > {
}

- (void)run;

- (instancetype)initWithImActorModelModulesUpdatesInternalUsersFounded:(ImActorModelModulesUpdatesInternalUsersFounded *)capture$0
                                                 withJavaUtilArrayList:(JavaUtilArrayList *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUpdatesUpdateProcessor_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUpdatesUpdateProcessor_$1)

@interface ImActorModelModulesUpdatesUpdateProcessor_$2 : NSObject < JavaLangRunnable > {
}

- (void)run;

- (instancetype)initWithImActorModelModulesUpdatesInternalGroupCreated:(ImActorModelModulesUpdatesInternalGroupCreated *)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUpdatesUpdateProcessor_$2)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUpdatesUpdateProcessor_$2)

#endif // _ImActorModelModulesUpdatesUpdateProcessor_H_