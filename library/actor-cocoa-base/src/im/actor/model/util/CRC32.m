//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/util/CRC32.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/util/CRC32.h"

__attribute__((unused)) static IOSIntArray *AMCRC32_make_crc_table();

@interface AMCRC32 () {
 @public
  jint crc_;
}

+ (IOSIntArray *)make_crc_table;
@end

BOOL AMCRC32_initialized = NO;

@implementation AMCRC32

IOSIntArray * AMCRC32_crc_table_;

+ (IOSIntArray *)make_crc_table {
  return AMCRC32_make_crc_table();
}

- (jlong)getValue {
  return (jlong) crc_ & (jlong) 0xffffffffLL;
}

- (void)reset {
  crc_ = 0;
}

- (void)updateWithInt:(jint)bval {
  jint c = ~crc_;
  c = IOSIntArray_Get(nil_chk(AMCRC32_crc_table_), (c ^ bval) & (jint) 0xff) ^ (URShift32(c, 8));
  crc_ = ~c;
}

- (void)updateWithByteArray:(IOSByteArray *)buf
                    withInt:(jint)off
                    withInt:(jint)len {
  jint c = ~crc_;
  while (--len >= 0) c = IOSIntArray_Get(nil_chk(AMCRC32_crc_table_), (c ^ IOSByteArray_Get(nil_chk(buf), off++)) & (jint) 0xff) ^ (URShift32(c, 8));
  crc_ = ~c;
}

- (void)updateWithByteArray:(IOSByteArray *)buf {
  [self updateWithByteArray:buf withInt:0 withInt:((IOSByteArray *) nil_chk(buf))->size_];
}

- (instancetype)init {
  if (self = [super init]) {
    crc_ = 0;
  }
  return self;
}

- (void)copyAllFieldsTo:(AMCRC32 *)other {
  [super copyAllFieldsTo:other];
  other->crc_ = crc_;
}

+ (void)initialize {
  if (self == [AMCRC32 class]) {
    AMCRC32_crc_table_ = AMCRC32_make_crc_table();
    J2OBJC_SET_INITIALIZED(AMCRC32)
  }
}

@end

IOSIntArray *AMCRC32_make_crc_table() {
  AMCRC32_init();
  IOSIntArray *crc_table = [IOSIntArray newArrayWithLength:256];
  for (jint n = 0; n < 256; n++) {
    jint c = n;
    for (jint k = 8; --k >= 0; ) {
      if ((c & 1) != 0) c = (jint) 0xedb88320 ^ (URShift32(c, 1));
      else c = URShift32(c, 1);
    }
    *IOSIntArray_GetRef(crc_table, n) = c;
  }
  return crc_table;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMCRC32)