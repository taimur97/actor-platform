//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateUserLocalNameChanged.java
//

#ifndef _ImActorModelApiUpdatesUpdateUserLocalNameChanged_H_
#define _ImActorModelApiUpdatesUpdateUserLocalNameChanged_H_

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Update.h"

#define ImActorModelApiUpdatesUpdateUserLocalNameChanged_HEADER 51

@interface ImActorModelApiUpdatesUpdateUserLocalNameChanged : ImActorModelNetworkParserUpdate {
}

+ (ImActorModelApiUpdatesUpdateUserLocalNameChanged *)fromBytesWithByteArray:(IOSByteArray *)data;

- (instancetype)initWithInt:(jint)uid
               withNSString:(NSString *)localName;

- (instancetype)init;

- (jint)getUid;

- (NSString *)getLocalName;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (jint)getHeaderKey;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiUpdatesUpdateUserLocalNameChanged)

CF_EXTERN_C_BEGIN

FOUNDATION_EXPORT ImActorModelApiUpdatesUpdateUserLocalNameChanged *ImActorModelApiUpdatesUpdateUserLocalNameChanged_fromBytesWithByteArray_(IOSByteArray *data);

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiUpdatesUpdateUserLocalNameChanged, HEADER, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiUpdatesUpdateUserLocalNameChanged)

#endif // _ImActorModelApiUpdatesUpdateUserLocalNameChanged_H_