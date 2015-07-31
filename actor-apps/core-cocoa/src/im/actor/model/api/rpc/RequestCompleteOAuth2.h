//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-proprietary/actor-apps/core/src/main/java/im/actor/model/api/rpc/RequestCompleteOAuth2.java
//

#ifndef _APRequestCompleteOAuth2_H_
#define _APRequestCompleteOAuth2_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#define APRequestCompleteOAuth2_HEADER 196

@interface APRequestCompleteOAuth2 : APRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithNSString:(NSString *)transactionHash
                    withNSString:(NSString *)code;

+ (APRequestCompleteOAuth2 *)fromBytesWithByteArray:(IOSByteArray *)data;

- (NSString *)getCode;

- (jint)getHeaderKey;

- (NSString *)getTransactionHash;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestCompleteOAuth2)

J2OBJC_STATIC_FIELD_GETTER(APRequestCompleteOAuth2, HEADER, jint)

FOUNDATION_EXPORT APRequestCompleteOAuth2 *APRequestCompleteOAuth2_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestCompleteOAuth2_initWithNSString_withNSString_(APRequestCompleteOAuth2 *self, NSString *transactionHash, NSString *code);

FOUNDATION_EXPORT APRequestCompleteOAuth2 *new_APRequestCompleteOAuth2_initWithNSString_withNSString_(NSString *transactionHash, NSString *code) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APRequestCompleteOAuth2_init(APRequestCompleteOAuth2 *self);

FOUNDATION_EXPORT APRequestCompleteOAuth2 *new_APRequestCompleteOAuth2_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestCompleteOAuth2)

typedef APRequestCompleteOAuth2 ImActorModelApiRpcRequestCompleteOAuth2;

#endif // _APRequestCompleteOAuth2_H_