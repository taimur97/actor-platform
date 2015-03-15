//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/isismtt/x509/AdmissionSyntax.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Enumeration.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/isismtt/x509/AdmissionSyntax.h"
#include "org/bouncycastle/asn1/isismtt/x509/Admissions.h"
#include "org/bouncycastle/asn1/x509/GeneralName.h"

@interface OrgBouncycastleAsn1IsismttX509AdmissionSyntax () {
 @public
  OrgBouncycastleAsn1X509GeneralName *admissionAuthority_;
  OrgBouncycastleAsn1ASN1Sequence *contentsOfAdmissions_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1IsismttX509AdmissionSyntax, admissionAuthority_, OrgBouncycastleAsn1X509GeneralName *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1IsismttX509AdmissionSyntax, contentsOfAdmissions_, OrgBouncycastleAsn1ASN1Sequence *)

@implementation OrgBouncycastleAsn1IsismttX509AdmissionSyntax

+ (OrgBouncycastleAsn1IsismttX509AdmissionSyntax *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1IsismttX509AdmissionSyntax_getInstanceWithId_(obj);
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    switch ([((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) size]) {
      case 1:
      contentsOfAdmissions_ = OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_([seq getObjectAtWithInt:0]);
      break;
      case 2:
      admissionAuthority_ = OrgBouncycastleAsn1X509GeneralName_getInstanceWithId_([seq getObjectAtWithInt:0]);
      contentsOfAdmissions_ = OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_([seq getObjectAtWithInt:1]);
      break;
      default:
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$I", @"Bad sequence size: ", [seq size])];
    }
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1X509GeneralName:(OrgBouncycastleAsn1X509GeneralName *)admissionAuthority
                       withOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)contentsOfAdmissions {
  if (self = [super init]) {
    self->admissionAuthority_ = admissionAuthority;
    self->contentsOfAdmissions_ = contentsOfAdmissions;
  }
  return self;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *vec = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  if (admissionAuthority_ != nil) {
    [vec addWithOrgBouncycastleAsn1ASN1Encodable:admissionAuthority_];
  }
  [vec addWithOrgBouncycastleAsn1ASN1Encodable:contentsOfAdmissions_];
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:vec];
}

- (OrgBouncycastleAsn1X509GeneralName *)getAdmissionAuthority {
  return admissionAuthority_;
}

- (IOSObjectArray *)getContentsOfAdmissions {
  IOSObjectArray *admissions = [IOSObjectArray newArrayWithLength:[((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(contentsOfAdmissions_)) size] type:OrgBouncycastleAsn1IsismttX509Admissions_class_()];
  jint count = 0;
  for (id<JavaUtilEnumeration> e = [contentsOfAdmissions_ getObjects]; [((id<JavaUtilEnumeration>) nil_chk(e)) hasMoreElements]; ) {
    IOSObjectArray_Set(admissions, count++, OrgBouncycastleAsn1IsismttX509Admissions_getInstanceWithId_([e nextElement]));
  }
  return admissions;
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1IsismttX509AdmissionSyntax *)other {
  [super copyAllFieldsTo:other];
  other->admissionAuthority_ = admissionAuthority_;
  other->contentsOfAdmissions_ = contentsOfAdmissions_;
}

@end

OrgBouncycastleAsn1IsismttX509AdmissionSyntax *OrgBouncycastleAsn1IsismttX509AdmissionSyntax_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1IsismttX509AdmissionSyntax_init();
  if (obj == nil || [obj isKindOfClass:[OrgBouncycastleAsn1IsismttX509AdmissionSyntax class]]) {
    return (OrgBouncycastleAsn1IsismttX509AdmissionSyntax *) check_class_cast(obj, [OrgBouncycastleAsn1IsismttX509AdmissionSyntax class]);
  }
  if ([obj isKindOfClass:[OrgBouncycastleAsn1ASN1Sequence class]]) {
    return [[OrgBouncycastleAsn1IsismttX509AdmissionSyntax alloc] initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *) check_class_cast(obj, [OrgBouncycastleAsn1ASN1Sequence class])];
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$$", @"illegal object in getInstance: ", [[nil_chk(obj) getClass] getName])];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1IsismttX509AdmissionSyntax)