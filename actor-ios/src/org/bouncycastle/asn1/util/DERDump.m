//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/asn1/util/DERDump.java
//

#include "J2ObjC_source.h"
#include "java/lang/StringBuffer.h"
#include "org/bouncycastle/asn1/ASN1Encodable.h"
#include "org/bouncycastle/asn1/ASN1Primitive.h"
#include "org/bouncycastle/asn1/util/ASN1Dump.h"
#include "org/bouncycastle/asn1/util/DERDump.h"

@implementation OrgBouncycastleAsn1UtilDERDump

+ (NSString *)dumpAsStringWithOrgBouncycastleAsn1ASN1Primitive:(OrgBouncycastleAsn1ASN1Primitive *)obj {
  return OrgBouncycastleAsn1UtilDERDump_dumpAsStringWithOrgBouncycastleAsn1ASN1Primitive_(obj);
}

+ (NSString *)dumpAsStringWithOrgBouncycastleAsn1ASN1Encodable:(id<OrgBouncycastleAsn1ASN1Encodable>)obj {
  return OrgBouncycastleAsn1UtilDERDump_dumpAsStringWithOrgBouncycastleAsn1ASN1Encodable_(obj);
}

- (instancetype)init {
  return [super init];
}

@end

NSString *OrgBouncycastleAsn1UtilDERDump_dumpAsStringWithOrgBouncycastleAsn1ASN1Primitive_(OrgBouncycastleAsn1ASN1Primitive *obj) {
  OrgBouncycastleAsn1UtilDERDump_init();
  JavaLangStringBuffer *buf = [[JavaLangStringBuffer alloc] init];
  OrgBouncycastleAsn1UtilASN1Dump__dumpAsStringWithNSString_withBoolean_withOrgBouncycastleAsn1ASN1Primitive_withJavaLangStringBuffer_(@"", NO, obj, buf);
  return [buf description];
}

NSString *OrgBouncycastleAsn1UtilDERDump_dumpAsStringWithOrgBouncycastleAsn1ASN1Encodable_(id<OrgBouncycastleAsn1ASN1Encodable> obj) {
  OrgBouncycastleAsn1UtilDERDump_init();
  JavaLangStringBuffer *buf = [[JavaLangStringBuffer alloc] init];
  OrgBouncycastleAsn1UtilASN1Dump__dumpAsStringWithNSString_withBoolean_withOrgBouncycastleAsn1ASN1Primitive_withJavaLangStringBuffer_(@"", NO, [((id<OrgBouncycastleAsn1ASN1Encodable>) nil_chk(obj)) toASN1Primitive], buf);
  return [buf description];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleAsn1UtilDERDump)