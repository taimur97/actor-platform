//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/jvm/threads/JavaDispatcherThreads.java
//

#ifndef _ImActorModelJvmThreadsJavaDispatcherThreads_H_
#define _ImActorModelJvmThreadsJavaDispatcherThreads_H_

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/actors/dispatch/AbstractDispatcher.h"

@class DKAbstractDispatchQueue;
@class DKThreadPriorityEnum;
@protocol DKDispatch;

@interface ImActorModelJvmThreadsJavaDispatcherThreads : DKAbstractDispatcher

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)count
        withDKThreadPriorityEnum:(DKThreadPriorityEnum *)priority
     withDKAbstractDispatchQueue:(DKAbstractDispatchQueue *)queue
                  withDKDispatch:(id<DKDispatch>)dispatch
                     withBoolean:(jboolean)createThreads;

- (void)close;

- (void)startPool;

#pragma mark Protected

- (void)notifyDispatcher;

@end

J2OBJC_STATIC_INIT(ImActorModelJvmThreadsJavaDispatcherThreads)

FOUNDATION_EXPORT void ImActorModelJvmThreadsJavaDispatcherThreads_initWithNSString_withInt_withDKThreadPriorityEnum_withDKAbstractDispatchQueue_withDKDispatch_withBoolean_(ImActorModelJvmThreadsJavaDispatcherThreads *self, NSString *name, jint count, DKThreadPriorityEnum *priority, DKAbstractDispatchQueue *queue, id<DKDispatch> dispatch, jboolean createThreads);

FOUNDATION_EXPORT ImActorModelJvmThreadsJavaDispatcherThreads *new_ImActorModelJvmThreadsJavaDispatcherThreads_initWithNSString_withInt_withDKThreadPriorityEnum_withDKAbstractDispatchQueue_withDKDispatch_withBoolean_(NSString *name, jint count, DKThreadPriorityEnum *priority, DKAbstractDispatchQueue *queue, id<DKDispatch> dispatch, jboolean createThreads) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelJvmThreadsJavaDispatcherThreads)

#endif // _ImActorModelJvmThreadsJavaDispatcherThreads_H_