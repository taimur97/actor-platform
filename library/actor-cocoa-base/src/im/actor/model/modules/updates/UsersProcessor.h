//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/UsersProcessor.java
//

#ifndef _ImActorModelModulesUpdatesUsersProcessor_H_
#define _ImActorModelModulesUpdatesUsersProcessor_H_

@class AMUser;
@class ImActorModelApiAvatar;
@class ImActorModelModulesModules;
@protocol JavaUtilCollection;

#include "J2ObjC_header.h"
#include "im/actor/model/modules/BaseModule.h"

@interface ImActorModelModulesUpdatesUsersProcessor : ImActorModelModulesBaseModule {
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (void)applyUsersWithJavaUtilCollection:(id<JavaUtilCollection>)updated
                             withBoolean:(jboolean)forced;

- (void)onUserNameChangedWithInt:(jint)uid
                    withNSString:(NSString *)name;

- (void)onUserLocalNameChangedWithInt:(jint)uid
                         withNSString:(NSString *)name;

- (void)onUserAvatarChangedWithInt:(jint)uid
         withImActorModelApiAvatar:(ImActorModelApiAvatar *)_avatar;

- (jboolean)hasUsersWithJavaUtilCollection:(id<JavaUtilCollection>)uids;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUpdatesUsersProcessor)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUpdatesUsersProcessor)

#endif // _ImActorModelModulesUpdatesUsersProcessor_H_