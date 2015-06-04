//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestImportContacts.java
//

#ifndef _APRequestImportContacts_H_
#define _APRequestImportContacts_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define APRequestImportContacts_HEADER 7

@interface APRequestImportContacts : APRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)phones
                    withJavaUtilList:(id<JavaUtilList>)emails;

+ (APRequestImportContacts *)fromBytesWithByteArray:(IOSByteArray *)data;

- (id<JavaUtilList>)getEmails;

- (jint)getHeaderKey;

- (id<JavaUtilList>)getPhones;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(APRequestImportContacts)

J2OBJC_STATIC_FIELD_GETTER(APRequestImportContacts, HEADER, jint)

FOUNDATION_EXPORT APRequestImportContacts *APRequestImportContacts_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void APRequestImportContacts_initWithJavaUtilList_withJavaUtilList_(APRequestImportContacts *self, id<JavaUtilList> phones, id<JavaUtilList> emails);

FOUNDATION_EXPORT APRequestImportContacts *new_APRequestImportContacts_initWithJavaUtilList_withJavaUtilList_(id<JavaUtilList> phones, id<JavaUtilList> emails) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void APRequestImportContacts_init(APRequestImportContacts *self);

FOUNDATION_EXPORT APRequestImportContacts *new_APRequestImportContacts_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(APRequestImportContacts)

typedef APRequestImportContacts ImActorModelApiRpcRequestImportContacts;

#endif // _APRequestImportContacts_H_
