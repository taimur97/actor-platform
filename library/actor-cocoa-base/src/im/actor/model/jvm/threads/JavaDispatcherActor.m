//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/jvm/threads/JavaDispatcherActor.java
//

#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/jvm/threads/JavaDispatcherActor.java"

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/ActorSystem.h"
#include "im/actor/model/droidkit/actors/ThreadPriority.h"
#include "im/actor/model/droidkit/actors/mailbox/ActorDispatcher.h"
#include "im/actor/model/droidkit/actors/mailbox/Envelope.h"
#include "im/actor/model/droidkit/actors/mailbox/MailboxesQueue.h"
#include "im/actor/model/jvm/threads/JavaDispatcherActor.h"
#include "im/actor/model/jvm/threads/JavaDispatcherThreads.h"

@interface ImActorModelJvmThreadsJavaDispatcherActor_$1 () {
 @public
  ImActorModelJvmThreadsJavaDispatcherActor *this$0_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelJvmThreadsJavaDispatcherActor_$1, this$0_, ImActorModelJvmThreadsJavaDispatcherActor *)


#line 15
@implementation ImActorModelJvmThreadsJavaDispatcherActor

- (instancetype)initWithNSString:(NSString *)name
               withDKActorSystem:(DKActorSystem *)actorSystem
                         withInt:(jint)threadsCount
        withDKThreadPriorityEnum:(DKThreadPriorityEnum *)priority {
  if (self =
#line 18
  [super initWithNSString:name withDKActorSystem:actorSystem]) {
    
#line 19
    [self initDispatcherWithDKAbstractDispatcher:[[ImActorModelJvmThreadsJavaDispatcherThreads alloc] initWithNSString:[self getName] withInt:threadsCount withDKThreadPriorityEnum:priority withDKAbstractDispatchQueue:[[DKMailboxesQueue alloc] init] withDKDispatch:
#line 20
    [[ImActorModelJvmThreadsJavaDispatcherActor_$1 alloc] initWithImActorModelJvmThreadsJavaDispatcherActor:self] withBoolean:
#line 25
    YES]];
  }
  return self;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelJvmThreadsJavaDispatcherActor)

@implementation ImActorModelJvmThreadsJavaDispatcherActor_$1


#line 22
- (void)dispatchMessageWithId:(DKEnvelope *)message {
  
#line 23
  [this$0_ processEnvelopeWithDKEnvelope:message];
}

- (instancetype)initWithImActorModelJvmThreadsJavaDispatcherActor:(ImActorModelJvmThreadsJavaDispatcherActor *)outer$ {
  this$0_ = outer$;
  return [super init];
}

- (void)copyAllFieldsTo:(ImActorModelJvmThreadsJavaDispatcherActor_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelJvmThreadsJavaDispatcherActor_$1)