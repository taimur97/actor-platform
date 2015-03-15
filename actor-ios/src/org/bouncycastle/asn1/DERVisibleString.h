//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/DERVisibleString.java
//

#ifndef _OrgBouncycastleAsn1DERVisibleString_H_
#define _OrgBouncycastleAsn1DERVisibleString_H_

@class IOSByteArray;
@class OrgBouncycastleAsn1ASN1OutputStream;
@class OrgBouncycastleAsn1ASN1TaggedObject;

#include "J2ObjC_header.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1String.h"

@interface OrgBouncycastleAsn1DERVisibleString : OrgBouncycastleAsn1ASN1Primitive < OrgBouncycastleAsn1ASN1String > {
}

+ (OrgBouncycastleAsn1DERVisibleString *)getInstanceWithId:(id)obj;

+ (OrgBouncycastleAsn1DERVisibleString *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                                withBoolean:(jboolean)explicit_;

- (instancetype)initWithByteArray:(IOSByteArray *)string;

- (instancetype)initWithNSString:(NSString *)string;

- (NSString *)getString;

- (NSString *)description;

- (IOSByteArray *)getOctets;

- (jboolean)isConstructed;

- (jint)encodedLength;

- (void)encodeWithOrgBouncycastleAsn1ASN1OutputStream:(OrgBouncycastleAsn1ASN1OutputStream *)outArg;

- (jboolean)asn1EqualsWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)o;

- (NSUInteger)hash;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1DERVisibleString)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT OrgBouncycastleAsn1DERVisibleString *OrgBouncycastleAsn1DERVisibleString_getInstanceWithId_(id obj);

FOUNDATION_EXPORT OrgBouncycastleAsn1DERVisibleString *OrgBouncycastleAsn1DERVisibleString_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_);
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1DERVisibleString)

#endif // _OrgBouncycastleAsn1DERVisibleString_H_