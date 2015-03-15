//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cms/AuthenticatedDataParser.java
//

#ifndef _OrgBouncycastleAsn1CmsAuthenticatedDataParser_H_
#define _OrgBouncycastleAsn1CmsAuthenticatedDataParser_H_

@class OrgBouncycastleAsn1ASN1Integer;
@class OrgBouncycastleAsn1ASN1OctetString;
@class OrgBouncycastleAsn1CmsContentInfoParser;
@class OrgBouncycastleAsn1CmsOriginatorInfo;
@class OrgBouncycastleAsn1X509AlgorithmIdentifier;
@protocol OrgBouncycastleAsn1ASN1Encodable;
@protocol OrgBouncycastleAsn1ASN1SequenceParser;
@protocol OrgBouncycastleAsn1ASN1SetParser;

#include "J2ObjC_header.h"

@interface OrgBouncycastleAsn1CmsAuthenticatedDataParser : NSObject {
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1SequenceParser:(id<OrgBouncycastleAsn1ASN1SequenceParser>)seq;

- (OrgBouncycastleAsn1ASN1Integer *)getVersion;

- (OrgBouncycastleAsn1CmsOriginatorInfo *)getOriginatorInfo;

- (id<OrgBouncycastleAsn1ASN1SetParser>)getRecipientInfos;

- (OrgBouncycastleAsn1X509AlgorithmIdentifier *)getMacAlgorithm;

- (OrgBouncycastleAsn1X509AlgorithmIdentifier *)getDigestAlgorithm;

- (OrgBouncycastleAsn1CmsContentInfoParser *)getEnapsulatedContentInfo;

- (OrgBouncycastleAsn1CmsContentInfoParser *)getEncapsulatedContentInfo;

- (id<OrgBouncycastleAsn1ASN1SetParser>)getAuthAttrs;

- (OrgBouncycastleAsn1ASN1OctetString *)getMac;

- (id<OrgBouncycastleAsn1ASN1SetParser>)getUnauthAttrs;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleAsn1CmsAuthenticatedDataParser)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleAsn1CmsAuthenticatedDataParser)

#endif // _OrgBouncycastleAsn1CmsAuthenticatedDataParser_H_