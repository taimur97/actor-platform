//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/TextMessageExUnsupported.java
//

#ifndef _APTextMessageExUnsupported_H_
#define _APTextMessageExUnsupported_H_

#include "J2ObjC_header.h"
#include "im/actor/model/api/TextMessageEx.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

@interface APTextMessageExUnsupported : APTextMessageEx

#pragma mark Public

- (instancetype)initWithInt:(jint)key
              withByteArray:(IOSByteArray *)content;

- (jint)getHeader;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

@end

J2OBJC_EMPTY_STATIC_INIT(APTextMessageExUnsupported)

FOUNDATION_EXPORT void APTextMessageExUnsupported_initWithInt_withByteArray_(APTextMessageExUnsupported *self, jint key, IOSByteArray *content);

FOUNDATION_EXPORT APTextMessageExUnsupported *new_APTextMessageExUnsupported_initWithInt_withByteArray_(jint key, IOSByteArray *content) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APTextMessageExUnsupported)

typedef APTextMessageExUnsupported ImActorModelApiTextMessageExUnsupported;

#endif // _APTextMessageExUnsupported_H_