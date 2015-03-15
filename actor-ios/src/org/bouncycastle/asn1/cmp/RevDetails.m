//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cmp/RevDetails.java
//

#include "J2ObjC_source.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/cmp/RevDetails.h"
#include "org/bouncycastle/asn1/crmf/CertTemplate.h"
#include "org/bouncycastle/asn1/x509/Extensions.h"
#include "org/bouncycastle/asn1/x509/X509Extensions.h"

@interface OrgBouncycastleAsn1CmpRevDetails () {
 @public
  OrgBouncycastleAsn1CrmfCertTemplate *certDetails_;
  OrgBouncycastleAsn1X509Extensions *crlEntryDetails_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpRevDetails, certDetails_, OrgBouncycastleAsn1CrmfCertTemplate *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpRevDetails, crlEntryDetails_, OrgBouncycastleAsn1X509Extensions *)

@implementation OrgBouncycastleAsn1CmpRevDetails

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    certDetails_ = OrgBouncycastleAsn1CrmfCertTemplate_getInstanceWithId_([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjectAtWithInt:0]);
    if ([seq size] > 1) {
      crlEntryDetails_ = OrgBouncycastleAsn1X509Extensions_getInstanceWithId_([seq getObjectAtWithInt:1]);
    }
  }
  return self;
}

+ (OrgBouncycastleAsn1CmpRevDetails *)getInstanceWithId:(id)o {
  return OrgBouncycastleAsn1CmpRevDetails_getInstanceWithId_(o);
}

- (instancetype)initWithOrgBouncycastleAsn1CrmfCertTemplate:(OrgBouncycastleAsn1CrmfCertTemplate *)certDetails {
  if (self = [super init]) {
    self->certDetails_ = certDetails;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1CrmfCertTemplate:(OrgBouncycastleAsn1CrmfCertTemplate *)certDetails
                  withOrgBouncycastleAsn1X509X509Extensions:(OrgBouncycastleAsn1X509X509Extensions *)crlEntryDetails {
  if (self = [super init]) {
    self->certDetails_ = certDetails;
    self->crlEntryDetails_ = OrgBouncycastleAsn1X509Extensions_getInstanceWithId_([((OrgBouncycastleAsn1X509X509Extensions *) nil_chk(crlEntryDetails)) toASN1Primitive]);
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1CrmfCertTemplate:(OrgBouncycastleAsn1CrmfCertTemplate *)certDetails
                      withOrgBouncycastleAsn1X509Extensions:(OrgBouncycastleAsn1X509Extensions *)crlEntryDetails {
  if (self = [super init]) {
    self->certDetails_ = certDetails;
    self->crlEntryDetails_ = crlEntryDetails;
  }
  return self;
}

- (OrgBouncycastleAsn1CrmfCertTemplate *)getCertDetails {
  return certDetails_;
}

- (OrgBouncycastleAsn1X509Extensions *)getCrlEntryDetails {
  return crlEntryDetails_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:certDetails_];
  if (crlEntryDetails_ != nil) {
    [v addWithOrgBouncycastleAsn1ASN1Encodable:crlEntryDetails_];
  }
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1CmpRevDetails *)other {
  [super copyAllFieldsTo:other];
  other->certDetails_ = certDetails_;
  other->crlEntryDetails_ = crlEntryDetails_;
}

@end

OrgBouncycastleAsn1CmpRevDetails *OrgBouncycastleAsn1CmpRevDetails_getInstanceWithId_(id o) {
  OrgBouncycastleAsn1CmpRevDetails_init();
  if ([o isKindOfClass:[OrgBouncycastleAsn1CmpRevDetails class]]) {
    return (OrgBouncycastleAsn1CmpRevDetails *) check_class_cast(o, [OrgBouncycastleAsn1CmpRevDetails class]);
  }
  if (o != nil) {
    return [[OrgBouncycastleAsn1CmpRevDetails alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(o)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CmpRevDetails)