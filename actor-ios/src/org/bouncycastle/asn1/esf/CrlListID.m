//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/esf/CrlListID.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/Enumeration.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/esf/CrlListID.h"
#include "org/bouncycastle/asn1/esf/CrlValidatedID.h"

@interface OrgBouncycastleAsn1EsfCrlListID () {
 @public
  OrgBouncycastleAsn1ASN1Sequence *crls_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1EsfCrlListID, crls_, OrgBouncycastleAsn1ASN1Sequence *)

@implementation OrgBouncycastleAsn1EsfCrlListID

+ (OrgBouncycastleAsn1EsfCrlListID *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1EsfCrlListID_getInstanceWithId_(obj);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    self->crls_ = (OrgBouncycastleAsn1ASN1Sequence *) check_class_cast([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjectAtWithInt:0], [OrgBouncycastleAsn1ASN1Sequence class]);
    id<JavaUtilEnumeration> e = [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(self->crls_)) getObjects];
    while ([((id<JavaUtilEnumeration>) nil_chk(e)) hasMoreElements]) {
      OrgBouncycastleAsn1EsfCrlValidatedID_getInstanceWithId_([e nextElement]);
    }
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1EsfCrlValidatedIDArray:(IOSObjectArray *)crls {
  if (self = [super init]) {
    self->crls_ = [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableArray:crls];
  }
  return self;
}

- (IOSObjectArray *)getCrls {
  IOSObjectArray *result = [IOSObjectArray newArrayWithLength:[((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(self->crls_)) size] type:OrgBouncycastleAsn1EsfCrlValidatedID_class_()];
  for (jint idx = 0; idx < result->size_; idx++) {
    IOSObjectArray_Set(result, idx, OrgBouncycastleAsn1EsfCrlValidatedID_getInstanceWithId_([self->crls_ getObjectAtWithInt:idx]));
  }
  return result;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1Encodable:self->crls_];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1EsfCrlListID *)other {
  [super copyAllFieldsTo:other];
  other->crls_ = crls_;
}

@end

OrgBouncycastleAsn1EsfCrlListID *OrgBouncycastleAsn1EsfCrlListID_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1EsfCrlListID_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1EsfCrlListID class]]) {
    return (OrgBouncycastleAsn1EsfCrlListID *) check_class_cast(obj, [OrgBouncycastleAsn1EsfCrlListID class]);
  }
  else if (obj != nil) {
    return [[OrgBouncycastleAsn1EsfCrlListID alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(obj)];
  }
  return nil;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1EsfCrlListID)