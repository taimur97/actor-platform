//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/file/UploadTask.java
//

#ifndef _ImActorModelModulesFileUploadTask_H_
#define _ImActorModelModulesFileUploadTask_H_

@class AMFileReference;
@class AMRpcException;
@class DKActorRef;
@class IOSByteArray;
@class ImActorModelApiRpcResponseCompleteUpload;
@class ImActorModelApiRpcResponseStartUpload;
@class ImActorModelApiRpcResponseVoid;
@class ImActorModelApiUploadConfig;
@class ImActorModelModulesModules;
@class JavaUtilZipCRC32;
@protocol AMFileSystemReference;
@protocol AMInputFile;
@protocol AMOutputFile;

#include "J2ObjC_header.h"
#include "im/actor/model/modules/utils/ModuleActor.h"
#include "im/actor/model/network/RpcCallback.h"

#define ImActorModelModulesFileUploadTask_SIM_BLOCKS_COUNT 4

@interface ImActorModelModulesFileUploadTask : ImActorModelModulesUtilsModuleActor {
}

- (instancetype)initWithLong:(jlong)rid
                withNSString:(NSString *)descriptor
                withNSString:(NSString *)fileName
              withDKActorRef:(DKActorRef *)manager
withImActorModelModulesModules:(ImActorModelModulesModules *)modules;

- (void)preStart;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFileUploadTask)

CF_EXTERN_C_BEGIN

J2OBJC_STATIC_FIELD_GETTER(ImActorModelModulesFileUploadTask, SIM_BLOCKS_COUNT, jint)
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFileUploadTask)

@interface ImActorModelModulesFileUploadTask_$1 : NSObject < AMRpcCallback > {
}

- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseStartUpload *)response;

- (void)onErrorWithAMRpcException:(AMRpcException *)e;

- (instancetype)initWithImActorModelModulesFileUploadTask:(ImActorModelModulesFileUploadTask *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFileUploadTask_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFileUploadTask_$1)

@interface ImActorModelModulesFileUploadTask_$2 : NSObject < AMRpcCallback > {
}

- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseCompleteUpload *)response;

- (void)onErrorWithAMRpcException:(AMRpcException *)e;

- (instancetype)initWithImActorModelModulesFileUploadTask:(ImActorModelModulesFileUploadTask *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFileUploadTask_$2)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFileUploadTask_$2)

@interface ImActorModelModulesFileUploadTask_$3 : NSObject < AMRpcCallback > {
}

- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseVoid *)response;

- (void)onErrorWithAMRpcException:(AMRpcException *)e;

- (instancetype)initWithImActorModelModulesFileUploadTask:(ImActorModelModulesFileUploadTask *)outer$
                                                  withInt:(jint)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesFileUploadTask_$3)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesFileUploadTask_$3)

#endif // _ImActorModelModulesFileUploadTask_H_
