//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/mvvm/AsyncVM.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/mvvm/AsyncVM.h"
#include "im/actor/model/mvvm/MVVMEngine.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface AMAsyncVM () {
 @public
  jboolean isDetached_;
}
@end

@interface AMAsyncVM_$1 () {
 @public
  AMAsyncVM *this$0_;
  id val$obj_;
}
@end

J2OBJC_FIELD_SETTER(AMAsyncVM_$1, this$0_, AMAsyncVM *)
J2OBJC_FIELD_SETTER(AMAsyncVM_$1, val$obj_, id)

@implementation AMAsyncVM

- (void)postWithId:(id)obj {
  AMMVVMEngine_runOnUiThreadWithJavaLangRunnable_([[AMAsyncVM_$1 alloc] initWithAMAsyncVM:self withId:obj]);
}

- (void)detach {
  isDetached_ = YES;
}

- (instancetype)init {
  return [super init];
}

- (void)copyAllFieldsTo:(AMAsyncVM *)other {
  [super copyAllFieldsTo:other];
  other->isDetached_ = isDetached_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMAsyncVM)

@implementation AMAsyncVM_$1

- (void)run {
  if (!this$0_->isDetached_) {
    [this$0_ onObjectReceivedWithId:val$obj_];
  }
}

- (instancetype)initWithAMAsyncVM:(AMAsyncVM *)outer$
                           withId:(id)capture$0 {
  this$0_ = outer$;
  val$obj_ = capture$0;
  return [super init];
}

- (void)copyAllFieldsTo:(AMAsyncVM_$1 *)other {
  [super copyAllFieldsTo:other];
  other->this$0_ = this$0_;
  other->val$obj_ = val$obj_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMAsyncVM_$1)