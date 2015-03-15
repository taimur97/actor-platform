//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/cmp/PKIHeader.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Enumeration.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1EncodableVector.h"
#include "org/bouncycastle/asn1/ASN1GeneralizedTime.h"
#include "org/bouncycastle/asn1/ASN1Integer.h"
#include "org/bouncycastle/asn1/ASN1OctetString.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/ASN1Sequence.h"
#include "org/bouncycastle/asn1/ASN1TaggedObject.h"
#include "org/bouncycastle/asn1/DERSequence.h"
#include "org/bouncycastle/asn1/DERTaggedObject.h"
#include "org/bouncycastle/asn1/cmp/InfoTypeAndValue.h"
#include "org/bouncycastle/asn1/cmp/PKIFreeText.h"
#include "org/bouncycastle/asn1/cmp/PKIHeader.h"
#include "org/bouncycastle/asn1/x500/X500Name.h"
#include "org/bouncycastle/asn1/x509/AlgorithmIdentifier.h"
#include "org/bouncycastle/asn1/x509/GeneralName.h"

__attribute__((unused)) static void OrgBouncycastleAsn1CmpPKIHeader_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(OrgBouncycastleAsn1CmpPKIHeader *self, OrgBouncycastleAsn1ASN1EncodableVector *v, jint tagNo, id<OrgBouncycastleAsn1ASN1Encodable> obj);

@interface OrgBouncycastleAsn1CmpPKIHeader () {
 @public
  OrgBouncycastleAsn1ASN1Integer *pvno_;
  OrgBouncycastleAsn1X509GeneralName *sender_;
  OrgBouncycastleAsn1X509GeneralName *recipient_;
  OrgBouncycastleAsn1ASN1GeneralizedTime *messageTime_;
  OrgBouncycastleAsn1X509AlgorithmIdentifier *protectionAlg_;
  OrgBouncycastleAsn1ASN1OctetString *senderKID_;
  OrgBouncycastleAsn1ASN1OctetString *recipKID_;
  OrgBouncycastleAsn1ASN1OctetString *transactionID_;
  OrgBouncycastleAsn1ASN1OctetString *senderNonce_;
  OrgBouncycastleAsn1ASN1OctetString *recipNonce_;
  OrgBouncycastleAsn1CmpPKIFreeText *freeText_;
  OrgBouncycastleAsn1ASN1Sequence *generalInfo_;
}
- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq;
- (instancetype)initWithOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)pvno
                withOrgBouncycastleAsn1X509GeneralName:(OrgBouncycastleAsn1X509GeneralName *)sender
                withOrgBouncycastleAsn1X509GeneralName:(OrgBouncycastleAsn1X509GeneralName *)recipient;

- (void)addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector:(OrgBouncycastleAsn1ASN1EncodableVector *)v
                                                      withInt:(jint)tagNo
                         withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)obj;
@end

J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpPKIHeader, pvno_, OrgBouncycastleAsn1ASN1Integer *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpPKIHeader, sender_, OrgBouncycastleAsn1X509GeneralName *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpPKIHeader, recipient_, OrgBouncycastleAsn1X509GeneralName *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpPKIHeader, messageTime_, OrgBouncycastleAsn1ASN1GeneralizedTime *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpPKIHeader, protectionAlg_, OrgBouncycastleAsn1X509AlgorithmIdentifier *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpPKIHeader, senderKID_, OrgBouncycastleAsn1ASN1OctetString *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpPKIHeader, recipKID_, OrgBouncycastleAsn1ASN1OctetString *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpPKIHeader, transactionID_, OrgBouncycastleAsn1ASN1OctetString *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpPKIHeader, senderNonce_, OrgBouncycastleAsn1ASN1OctetString *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpPKIHeader, recipNonce_, OrgBouncycastleAsn1ASN1OctetString *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpPKIHeader, freeText_, OrgBouncycastleAsn1CmpPKIFreeText *)
J2OBJC_FIELD_SETTER(OrgBouncycastleAsn1CmpPKIHeader, generalInfo_, OrgBouncycastleAsn1ASN1Sequence *)

BOOL OrgBouncycastleAsn1CmpPKIHeader_initialized = NO;

@implementation OrgBouncycastleAsn1CmpPKIHeader

OrgBouncycastleAsn1X509GeneralName * OrgBouncycastleAsn1CmpPKIHeader_NULL_NAME_;

- (instancetype)initWithOrgBouncycastleAsn1ASN1Sequence:(OrgBouncycastleAsn1ASN1Sequence *)seq {
  if (self = [super init]) {
    id<JavaUtilEnumeration> en = [((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(seq)) getObjects];
    pvno_ = OrgBouncycastleAsn1ASN1Integer_getInstanceWithId_([((id<JavaUtilEnumeration>) nil_chk(en)) nextElement]);
    sender_ = OrgBouncycastleAsn1X509GeneralName_getInstanceWithId_([en nextElement]);
    recipient_ = OrgBouncycastleAsn1X509GeneralName_getInstanceWithId_([en nextElement]);
    while ([en hasMoreElements]) {
      OrgBouncycastleAsn1ASN1TaggedObject *tObj = (OrgBouncycastleAsn1ASN1TaggedObject *) check_class_cast([en nextElement], [OrgBouncycastleAsn1ASN1TaggedObject class]);
      switch ([((OrgBouncycastleAsn1ASN1TaggedObject *) nil_chk(tObj)) getTagNo]) {
        case 0:
        messageTime_ = OrgBouncycastleAsn1ASN1GeneralizedTime_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(tObj, YES);
        break;
        case 1:
        protectionAlg_ = OrgBouncycastleAsn1X509AlgorithmIdentifier_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(tObj, YES);
        break;
        case 2:
        senderKID_ = OrgBouncycastleAsn1ASN1OctetString_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(tObj, YES);
        break;
        case 3:
        recipKID_ = OrgBouncycastleAsn1ASN1OctetString_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(tObj, YES);
        break;
        case 4:
        transactionID_ = OrgBouncycastleAsn1ASN1OctetString_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(tObj, YES);
        break;
        case 5:
        senderNonce_ = OrgBouncycastleAsn1ASN1OctetString_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(tObj, YES);
        break;
        case 6:
        recipNonce_ = OrgBouncycastleAsn1ASN1OctetString_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(tObj, YES);
        break;
        case 7:
        freeText_ = OrgBouncycastleAsn1CmpPKIFreeText_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(tObj, YES);
        break;
        case 8:
        generalInfo_ = OrgBouncycastleAsn1ASN1Sequence_getInstanceWithOrgBouncycastleAsn1ASN1TaggedObject_withBoolean_(tObj, YES);
        break;
        default:
        @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:JreStrcat("$I", @"unknown tag number: ", [tObj getTagNo])];
      }
    }
  }
  return self;
}

+ (OrgBouncycastleAsn1CmpPKIHeader *)getInstanceWithId:(id)o {
  return OrgBouncycastleAsn1CmpPKIHeader_getInstanceWithId_(o);
}

- (instancetype)initWithInt:(jint)pvno
withOrgBouncycastleAsn1X509GeneralName:(OrgBouncycastleAsn1X509GeneralName *)sender
withOrgBouncycastleAsn1X509GeneralName:(OrgBouncycastleAsn1X509GeneralName *)recipient {
  return [self initOrgBouncycastleAsn1CmpPKIHeaderWithOrgBouncycastleAsn1ASN1Integer:[[OrgBouncycastleAsn1ASN1Integer alloc] initWithLong:pvno] withOrgBouncycastleAsn1X509GeneralName:sender withOrgBouncycastleAsn1X509GeneralName:recipient];
}

- (instancetype)initOrgBouncycastleAsn1CmpPKIHeaderWithOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)pvno
                                               withOrgBouncycastleAsn1X509GeneralName:(OrgBouncycastleAsn1X509GeneralName *)sender
                                               withOrgBouncycastleAsn1X509GeneralName:(OrgBouncycastleAsn1X509GeneralName *)recipient {
  if (self = [super init]) {
    self->pvno_ = pvno;
    self->sender_ = sender;
    self->recipient_ = recipient;
  }
  return self;
}

- (instancetype)initWithOrgBouncycastleAsn1ASN1Integer:(OrgBouncycastleAsn1ASN1Integer *)pvno
                withOrgBouncycastleAsn1X509GeneralName:(OrgBouncycastleAsn1X509GeneralName *)sender
                withOrgBouncycastleAsn1X509GeneralName:(OrgBouncycastleAsn1X509GeneralName *)recipient {
  return [self initOrgBouncycastleAsn1CmpPKIHeaderWithOrgBouncycastleAsn1ASN1Integer:pvno withOrgBouncycastleAsn1X509GeneralName:sender withOrgBouncycastleAsn1X509GeneralName:recipient];
}

- (OrgBouncycastleAsn1ASN1Integer *)getPvno {
  return pvno_;
}

- (OrgBouncycastleAsn1X509GeneralName *)getSender {
  return sender_;
}

- (OrgBouncycastleAsn1X509GeneralName *)getRecipient {
  return recipient_;
}

- (OrgBouncycastleAsn1ASN1GeneralizedTime *)getMessageTime {
  return messageTime_;
}

- (OrgBouncycastleAsn1X509AlgorithmIdentifier *)getProtectionAlg {
  return protectionAlg_;
}

- (OrgBouncycastleAsn1ASN1OctetString *)getSenderKID {
  return senderKID_;
}

- (OrgBouncycastleAsn1ASN1OctetString *)getRecipKID {
  return recipKID_;
}

- (OrgBouncycastleAsn1ASN1OctetString *)getTransactionID {
  return transactionID_;
}

- (OrgBouncycastleAsn1ASN1OctetString *)getSenderNonce {
  return senderNonce_;
}

- (OrgBouncycastleAsn1ASN1OctetString *)getRecipNonce {
  return recipNonce_;
}

- (OrgBouncycastleAsn1CmpPKIFreeText *)getFreeText {
  return freeText_;
}

- (IOSObjectArray *)getGeneralInfo {
  if (generalInfo_ == nil) {
    return nil;
  }
  IOSObjectArray *results = [IOSObjectArray newArrayWithLength:[((OrgBouncycastleAsn1ASN1Sequence *) nil_chk(generalInfo_)) size] type:OrgBouncycastleAsn1CmpInfoTypeAndValue_class_()];
  for (jint i = 0; i < results->size_; i++) {
    IOSObjectArray_Set(results, i, OrgBouncycastleAsn1CmpInfoTypeAndValue_getInstanceWithId_([generalInfo_ getObjectAtWithInt:i]));
  }
  return results;
}

- (OrgBouncycastleAsn1ASN1Primitive *)toASN1Primitive {
  OrgBouncycastleAsn1ASN1EncodableVector *v = [[OrgBouncycastleAsn1ASN1EncodableVector alloc] init];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:pvno_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:sender_];
  [v addWithOrgBouncycastleAsn1ASN1Encodable:recipient_];
  OrgBouncycastleAsn1CmpPKIHeader_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(self, v, 0, messageTime_);
  OrgBouncycastleAsn1CmpPKIHeader_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(self, v, 1, protectionAlg_);
  OrgBouncycastleAsn1CmpPKIHeader_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(self, v, 2, senderKID_);
  OrgBouncycastleAsn1CmpPKIHeader_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(self, v, 3, recipKID_);
  OrgBouncycastleAsn1CmpPKIHeader_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(self, v, 4, transactionID_);
  OrgBouncycastleAsn1CmpPKIHeader_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(self, v, 5, senderNonce_);
  OrgBouncycastleAsn1CmpPKIHeader_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(self, v, 6, recipNonce_);
  OrgBouncycastleAsn1CmpPKIHeader_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(self, v, 7, freeText_);
  OrgBouncycastleAsn1CmpPKIHeader_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(self, v, 8, generalInfo_);
  return [[OrgBouncycastleAsn1DERSequence alloc] initWithOrgBouncycastleAsn1ASN1EncodableVector:v];
}

- (void)addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector:(OrgBouncycastleAsn1ASN1EncodableVector *)v
                                                      withInt:(jint)tagNo
                         withOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)obj {
  OrgBouncycastleAsn1CmpPKIHeader_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(self, v, tagNo, obj);
}

- (void)copyAllFieldsTo:(OrgBouncycastleAsn1CmpPKIHeader *)other {
  [super copyAllFieldsTo:other];
  other->pvno_ = pvno_;
  other->sender_ = sender_;
  other->recipient_ = recipient_;
  other->messageTime_ = messageTime_;
  other->protectionAlg_ = protectionAlg_;
  other->senderKID_ = senderKID_;
  other->recipKID_ = recipKID_;
  other->transactionID_ = transactionID_;
  other->senderNonce_ = senderNonce_;
  other->recipNonce_ = recipNonce_;
  other->freeText_ = freeText_;
  other->generalInfo_ = generalInfo_;
}

+ (void)initialize {
  if (self == [OrgBouncycastleAsn1CmpPKIHeader class]) {
    OrgBouncycastleAsn1CmpPKIHeader_NULL_NAME_ = [[OrgBouncycastleAsn1X509GeneralName alloc] initWithOrgBouncycastleAsn1X500X500Name:OrgBouncycastleAsn1X500X500Name_getInstanceWithId_([[OrgBouncycastleAsn1DERSequence alloc] init])];
    J2OBJC_SET_INITIALIZED(OrgBouncycastleAsn1CmpPKIHeader)
  }
}

@end

OrgBouncycastleAsn1CmpPKIHeader *OrgBouncycastleAsn1CmpPKIHeader_getInstanceWithId_(id o) {
  OrgBouncycastleAsn1CmpPKIHeader_init();
  if ([o isKindOfClass:[OrgBouncycastleAsn1CmpPKIHeader class]]) {
    return (OrgBouncycastleAsn1CmpPKIHeader *) check_class_cast(o, [OrgBouncycastleAsn1CmpPKIHeader class]);
  }
  if (o != nil) {
    return [[OrgBouncycastleAsn1CmpPKIHeader alloc] initWithOrgBouncycastleAsn1ASN1Sequence:OrgBouncycastleAsn1ASN1Sequence_getInstanceWithId_(o)];
  }
  return nil;
}

void OrgBouncycastleAsn1CmpPKIHeader_addOptionalWithOrgBouncycastleAsn1ASN1EncodableVector_withInt_withOrgBouncycastleAsn1ASN1Encodable_(OrgBouncycastleAsn1CmpPKIHeader *self, OrgBouncycastleAsn1ASN1EncodableVector *v, jint tagNo, id<OrgBouncycastleAsn1ASN1Encodable> obj) {
  if (obj != nil) {
    [((OrgBouncycastleAsn1ASN1EncodableVector *) nil_chk(v)) addWithOrgBouncycastleAsn1ASN1Encodable:[[OrgBouncycastleAsn1DERTaggedObject alloc] initWithBoolean:YES withInt:tagNo withOrgBouncycastleAsn1ASN1Encodable:obj]];
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1CmpPKIHeader)