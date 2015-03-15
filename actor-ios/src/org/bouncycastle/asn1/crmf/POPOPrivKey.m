//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/crmf/POPOPrivKey.java
//

#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/math/BigInteger.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/DERBitString.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"
#include "org/bouncycastle/asn1/cms/EnvelopedData.h"
#include "org/bouncycastle/asn1/crmf/PKMACValue.h"
#include "org/bouncycastle/asn1/crmf/POPOPrivKey.h"
#include "org/bouncycastle/asn1/crmf/SubsequentMessage.h"

@interface OrgBouncycastleAsn1CrmfPOPOPrivKey () {
 @public
  jint tagNo_;
  id<OrgBouncycastleAsn1ASN1Encodable> obj_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CrmfPOPOPrivKey, obj_, id<OrgBouncycastleAsn1ASN1Encodable>)

@implementation OrgBouncycastleAsn1CrmfPOPOPrivKey

- (instancetype)initWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj {
  if (self = [super init]) {
    self->tagNo_ = [((OrgBouncycastleAsn1ASN1TaggedObject *) nil_chk(obj)) getTagNo];
    switch (tagNo_) {
      case OrgBouncycastleAsn1CrmfPOPOPrivKey_thisMessage:
      self->obj_ = OrgBouncycastleAsn1DERBitString_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, NO);
      break;
      case OrgBouncycastleAsn1CrmfPOPOPrivKey_subsequentMessage:
      self->obj_ = OrgBouncycastleAsn1CrmfSubsequentMessage_valueOfWithInt_([((JavaMathBigInteger *) nil_chk([((OrgBouncycastleAsn1ASN1Integer *) nil_chk(OrgBouncycastleAsn1ASN1Integer_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, NO))) getValue])) intValue]);
      break;
      case OrgBouncycastleAsn1CrmfPOPOPrivKey_dhMAC:
      self->obj_ = OrgBouncycastleAsn1DERBitString_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, NO);
      break;
      case OrgBouncycastleAsn1CrmfPOPOPrivKey_agreeMAC:
      self->obj_ = OrgBouncycastleAsn1CrmfPKMACValue_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, NO);
      break;
      case OrgBouncycastleAsn1CrmfPOPOPrivKey_encryptedKey:
      self->obj_ = OrgBouncycastleAsn1CmsEnvelopedData_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, NO);
      break;
      default:
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"unknown tag in POPOPrivKey"];
    }
  }
  return self;
}

+ (OrgBouncycastleAsn1CrmfPOPOPrivKey *)getInstanceWithId:(id)obj {
  return OrgBouncycastleAsn1CrmfPOPOPrivKey_getInstanceWithId_(obj);
}

+ (OrgBouncycastleAsn1CrmfPOPOPrivKey *)getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject:(OrgBouncycastleAsn1ASN1TaggedObject *)obj
                                                                               withBoolean:(jboolean)explicit_ {
  return OrgBouncycastleAsn1CrmfPOPOPrivKey_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_);
}

- (instancetype)initWithOrgBouncycastleAsn1CrmfSubsequentMessage:(OrgBouncycastleAsn1CrmfSubsequentMessage *)msg {
  if (self = [super init]) {
    self->tagNo_ = OrgBouncycastleAsn1CrmfPOPOPrivKey_subsequentMessage;
    self->obj_ = msg;
  }
  return self;
}

- (jint)getType {
  return tagNo_;
}

- (id<OrgBouncycastleAsn1ASN1Encodable>)getValue {
  return obj_;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  return [[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:NO withInt:tagNo_ withOrgBouncycastleAsn1ASN1Encodable:obj_];
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1CrmfPOPOPrivKey *)other {
  [super copyAllFieldsTo:other];
  other->tagNo_ = tagNo_;
  other->obj_ = obj_;
}

@end

OrgBouncycastleAsn1CrmfPOPOPrivKey *OrgBouncycastleAsn1CrmfPOPOPrivKey_getInstanceWithId_(id obj) {
  OrgBouncycastleAsn1CrmfPOPOPrivKey_init();
  if ([obj isKindOfClass:[OrgBouncycastleAsn1CrmfPOPOPrivKey class]]) {
    return (OrgBouncycastleAsn1CrmfPOPOPrivKey *) check_class_cast(obj, [OrgBouncycastleAsn1CrmfPOPOPrivKey class]);
  }
  if (obj != nil) {
    return [[OrgBouncycastleAsn1CrmfPOPOPrivKey alloc] initWithOrgBouncycastleAsn1ASN1TaggedObject:OrgBouncycastleAsn1ASN1TaggedObject_getInstanceWithId_(obj)];
  }
  return nil;
}

OrgBouncycastleAsn1CrmfPOPOPrivKey *OrgBouncycastleAsn1CrmfPOPOPrivKey_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(OrgBouncycastleAsn1ASN1TaggedObject *obj, jboolean explicit_) {
  OrgBouncycastleAsn1CrmfPOPOPrivKey_init();
  return OrgBouncycastleAsn1CrmfPOPOPrivKey_getInstanceWithId_(OrgBouncycastleAsn1ASN1TaggedObject_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(obj, explicit_));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CrmfPOPOPrivKey)