//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cms/TimeStampAndCRL.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/cms/ContentInfo.h"
#include "org/bouncycastle/asn1/cms/TimeStampAndCRL.h"
#include "org/bouncycastle/asn1/x509/CertificateList.h"

@interface OrgBouncycastleAsn1CmsTimeStampAndCRL () {
 @public
  OrgBouncycastleAsn1CmsContentInfo *timeStamp_;
  OrgBouncycastleAsn1X509CertificateList *crl_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsTimeStampAndCRL, timeStamp_, OrgBouncycastleAsn1CmsContentInfo *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmsTimeStampAndCRL, crl_, OrgBouncycastleAsn1X509CertificateList *)

@implementation OrgBouncycastleAsn1CmsTimeStampAndCRL

- (instancetype)initWithOrgBouncycastleAsn1CmsContentInfo:(OrgBouncycastleAsn1CmsContentInfo *)timeStamp {
  if (self = [super init]) {
    self->timeStamp_ = timeStamp;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    self->timeStamp_ = OrgBouncycastleAsn1CmsContentInfo_getInstanceWithId_([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjectAtWithInt:0]);
    if ([seq size] == 2) {
      self->crl_ = OrgBouncycastleAsn1X509CertificateList_getInstanceWithId_([seq getObjectAtWithInt:1]);
    }
  }
  return self;
}

+ (OrgBouncycastleAsn1CmsTimeStampAndCRL *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1CmsTimeStampAndCRL_getInstanceWithId_(obj);
}

- (OrgBouncycastleAsn1CmsContentInfo *)getTimeStampToken {
  return self->timeStamp_;
}

- (OrgBouncycastleAsn1X509CertificateList *)getCertificateList {
  return self->crl_;
}

- (OrgBouncycastleAsn1X509CertificateList *)getCRL {
  return self->crl_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:timeStamp_];
  if (crl_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:crl_];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1CmsTimeStampAndCRL *)other {
  [super copyAllFieldsTo:other];
  other->timeStamp_ = timeStamp_;
  other->crl_ = crl_;
}

@end

OrgBouncycastleAsn1CmsTimeStampAndCRL *OrgBouncycastleAsn1CmsTimeStampAndCRL_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1CmsTimeStampAndCRL_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1CmsTimeStampAndCRL class]]) {
    return (OrgBouncycastleAsn1CmsTimeStampAndCRL *) check_class_cast(obj, [OrgBouncycastleAsn1CmsTimeStampAndCRL class]);
  }
  else if (obj != nil) {
    return [[OrgBouncycastleAsn1CmsTimeStampAndCRL alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CmsTimeStampAndCRL)