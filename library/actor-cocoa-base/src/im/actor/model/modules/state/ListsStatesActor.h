//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/state/ListsStatesActor.java
//

#ifndef _ImActorModelModulesStateListsStatesActor_H_
#define _ImActorModelModulesStateListsStatesActor_H_

@class ImActorModelModulesModules;

#include "J2ObjC_header.h"
#include "im/actor/model/modules/utils/ModuleActor.h"

@interface ImActorModelModulesStateListsStatesActor : ImActorModelModulesUtilsModuleActor {
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules;

- (void)onDialogsChangedWithBoolean:(jboolean)isEmpty;

- (void)onContactsChangedWithBoolean:(jboolean)isEmpty;

- (void)onReceiveWithId:(id)message;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesStateListsStatesActor)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesStateListsStatesActor)

@interface ImActorModelModulesStateListsStatesActor_OnContactsChanged : NSObject {
}

- (instancetype)initWithBoolean:(jboolean)isEmpty;

- (jboolean)isEmpty;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesStateListsStatesActor_OnContactsChanged)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesStateListsStatesActor_OnContactsChanged)

@interface ImActorModelModulesStateListsStatesActor_OnDialogsChanged : NSObject {
}

- (instancetype)initWithBoolean:(jboolean)isEmpty;

- (jboolean)isEmpty;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesStateListsStatesActor_OnDialogsChanged)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesStateListsStatesActor_OnDialogsChanged)

#endif // _ImActorModelModulesStateListsStatesActor_H_