//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/util/AtomicLongCompat.java
//

#ifndef _AMAtomicLongCompat_H_
#define _AMAtomicLongCompat_H_

#include "J2ObjC_header.h"

@interface AMAtomicLongCompat : NSObject {
}

- (jlong)get;

- (jlong)incrementAndGet;

- (jlong)getAndIncrement;

- (void)setWithLong:(jlong)v;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(AMAtomicLongCompat)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

typedef AMAtomicLongCompat ImActorModelUtilAtomicLongCompat;

J2OBJC_TYPE_LITERAL_HEADER(AMAtomicLongCompat)

#endif // _AMAtomicLongCompat_H_