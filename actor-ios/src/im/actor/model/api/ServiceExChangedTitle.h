//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/ServiceExChangedTitle.java
//

#ifndef _ImActorModelApiServiceExChangedTitle_H_
#define _ImActorModelApiServiceExChangedTitle_H_

@class BSBserValues;
@class BSBserWriter;

#include "J2ObjC_header.h"
#include "im/actor/model/api/ServiceEx.h"

@interface ImActorModelApiServiceExChangedTitle : ImActorModelApiServiceEx {
}

- (instancetype)initWithNSString:(NSString *)title;

- (instancetype)init;

- (jint)getHeader;

- (NSString *)getTitle;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiServiceExChangedTitle)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiServiceExChangedTitle)

#endif // _ImActorModelApiServiceExChangedTitle_H_