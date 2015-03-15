//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/PhoneToImport.java
//

#ifndef _ImActorModelApiPhoneToImport_H_
#define _ImActorModelApiPhoneToImport_H_

@class BSBserValues;
@class BSBserWriter;

#include "J2ObjC_header.h"
#include "im/actor/model/droidkit/bser/BserObject.h"

@interface ImActorModelApiPhoneToImport : BSBserObject {
}

- (instancetype)initWithLong:(jlong)phoneNumber
                withNSString:(NSString *)name;

- (instancetype)init;

- (jlong)getPhoneNumber;

- (NSString *)getName;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiPhoneToImport)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiPhoneToImport)

#endif // _ImActorModelApiPhoneToImport_H_