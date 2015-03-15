//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/org/bouncycastle/crypto/params/ECKeyParameters.java
//

#ifndef _OrgBouncycastleCryptoParamsECKeyParameters_H_
#define _OrgBouncycastleCryptoParamsECKeyParameters_H_

@class OrgBouncycastleCryptoParamsECDomainParameters;

#include "J2ObjC_header.h"
#include "org/bouncycastle/crypto/params/AsymmetricKeyParameter.h"

@interface OrgBouncycastleCryptoParamsECKeyParameters : OrgBouncycastleCryptoParamsAsymmetricKeyParameter {
 @public
  OrgBouncycastleCryptoParamsECDomainParameters *params_;
}

- (instancetype)initWithBoolean:(jboolean)isPrivate
withOrgBouncycastleCryptoParamsECDomainParameters:(OrgBouncycastleCryptoParamsECDomainParameters *)params;

- (OrgBouncycastleCryptoParamsECDomainParameters *)getParameters;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgBouncycastleCryptoParamsECKeyParameters)

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsECKeyParameters, params_, OrgBouncycastleCryptoParamsECDomainParameters *)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(OrgBouncycastleCryptoParamsECKeyParameters)

#endif // _OrgBouncycastleCryptoParamsECKeyParameters_H_