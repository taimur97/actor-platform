//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/smime/SMIMEEncryptionKeyPreferenceAttribute.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1ObjectIdentifier.h"
#include "org/bouncycastle/asn1/ASN1OctetString.h"
#include "org/bouncycastle/asn1/DERSet.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"
#include "org/bouncycastle/asn1/cms/IssuerAndSerialNumber.h"
#include "org/bouncycastle/asn1/cms/RecipientKeyIdentifier.h"
#include "org/bouncycastle/asn1/smime/SMIMEAttributes.h"
#include "org/bouncycastle/asn1/smime/SMIMEEncryptionKeyPreferenceAttribute.h"

@implementation OrgBouncycastleAsn1SmimeSMIMEEncryptionKeyPreferenceAttribute

- (instancetype)initWithOrgBouncycastleAsn1CmsIssuerAndSerialNumber:(OrgBouncycastleAsn1CmsIssuerAndSerialNumber *)issAndSer {
  return [super initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:OrgBouncycastleAsn1SmimeSMIMEAttributes_get_encrypKeyPref_() withOrgBouncycastleAsn1ASN1Set:[[OrgBouncycastleAsn1DERSet alloc] initWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:NO withInt:0 withOrgBouncycastleAsn1ASN1Encodable:issAndSer]]];
}

- (instancetype)initWithOrgBouncycastleAsn1CmsRecipientKeyIdentifier:(OrgBouncycastleAsn1CmsRecipientKeyIdentifier *)rKeyId {
  return [super initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:OrgBouncycastleAsn1SmimeSMIMEAttributes_get_encrypKeyPref_() withOrgBouncycastleAsn1ASN1Set:[[OrgBouncycastleAsn1DERSet alloc] initWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:NO withInt:1 withOrgBouncycastleAsn1ASN1Encodable:rKeyId]]];
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1OctetString:(OrgBouncycastleAsn1ASN1OctetString *)sKeyId {
  return [super initWithOrgBouncycastleAsn1ASN1ObjectIdentifier:OrgBouncycastleAsn1SmimeSMIMEAttributes_get_encrypKeyPref_() withOrgBouncycastleAsn1ASN1Set:[[OrgBouncycastleAsn1DERSet alloc] initWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:NO withInt:2 withOrgBouncycastleAsn1ASN1Encodable:sKeyId]]];
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1SmimeSMIMEEncryptionKeyPreferenceAttribute)