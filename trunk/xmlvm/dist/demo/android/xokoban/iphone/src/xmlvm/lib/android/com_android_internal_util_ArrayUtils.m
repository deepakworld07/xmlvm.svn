#import "java_lang_Class.h"
#import "java_lang_reflect_Array.h"
#import "java_lang_System.h"

// Automatically generated by xmlvm2obj. Do not edit!


#import "com_android_internal_util_ArrayUtils.h"

XMLVMArray* _STATIC_com_android_internal_util_ArrayUtils_EMPTY;
int _STATIC_com_android_internal_util_ArrayUtils_CACHE_SIZE = 73;
XMLVMArray* _STATIC_com_android_internal_util_ArrayUtils_sCache;

@implementation com_android_internal_util_ArrayUtils;

+ (void) initialize
{
    if (strcmp(class_getName(self), "com_android_internal_util_ArrayUtils") == 0) {
        _STATIC_com_android_internal_util_ArrayUtils_EMPTY = (id) [NSNull null];
        _STATIC_com_android_internal_util_ArrayUtils_sCache = (id) [NSNull null];
        [com_android_internal_util_ArrayUtils __clinit_com_android_internal_util_ArrayUtils];
    }
}

- (id) init
{
    if (self = [super init]) {
    }
    return self;
}

- (void) dealloc
{
    [super dealloc];
}

+ (XMLVMArray*) _GET_EMPTY
{
    return [[_STATIC_com_android_internal_util_ArrayUtils_EMPTY retain] autorelease];
}

+ (void) _PUT_EMPTY: (XMLVMArray*) v
{
    [v retain];
    [_STATIC_com_android_internal_util_ArrayUtils_EMPTY release];
    _STATIC_com_android_internal_util_ArrayUtils_EMPTY = v;
}

+ (int) _GET_CACHE_SIZE
{
    return _STATIC_com_android_internal_util_ArrayUtils_CACHE_SIZE;
}

+ (void) _PUT_CACHE_SIZE: (int) v
{
    _STATIC_com_android_internal_util_ArrayUtils_CACHE_SIZE = v;
}

+ (XMLVMArray*) _GET_sCache
{
    return [[_STATIC_com_android_internal_util_ArrayUtils_sCache retain] autorelease];
}

+ (void) _PUT_sCache: (XMLVMArray*) v
{
    [v retain];
    [_STATIC_com_android_internal_util_ArrayUtils_sCache release];
    _STATIC_com_android_internal_util_ArrayUtils_sCache = v;
}

- (void) __init_com_android_internal_util_ArrayUtils__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    [((java_lang_Object*) _r0.o) __init_java_lang_Object__];
    [_pool release];
    return;
}


+ (int) idealByteArraySize___int :(int)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r4.i = n1;
    _r3.i = 12;
    _r2.i = 1;
    _r0.i = 4;
    label4:;
    _r1.i = 32;
    if (_r0.i >= _r1.i) goto label20;
    _r1.i = _r2.i << _r0.i;
    _r1.i = _r1.i - _r3.i;
    if (_r4.i > _r1.i) goto label17;
    _r1.i = _r2.i << _r0.i;
    _r1.i = _r1.i - _r3.i;
    label16:;
    [_pool release];
    return _r1.i;
    label17:;
    _r0.i = _r0.i + 1;
    goto label4;
    label20:;
    _r1 = _r4;
    goto label16;
}


+ (int) idealBooleanArraySize___int :(int)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.i = n1;
    _r0.i = [com_android_internal_util_ArrayUtils idealByteArraySize___int:_r1.i];
    [_pool release];
    return _r0.i;
}


+ (int) idealShortArraySize___int :(int)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.i = n1;
    _r0.i = _r1.i * 2;
    _r0.i = [com_android_internal_util_ArrayUtils idealByteArraySize___int:_r0.i];
    _r0.i = _r0.i / 2;
    [_pool release];
    return _r0.i;
}


+ (int) idealCharArraySize___int :(int)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.i = n1;
    _r0.i = _r1.i * 2;
    _r0.i = [com_android_internal_util_ArrayUtils idealByteArraySize___int:_r0.i];
    _r0.i = _r0.i / 2;
    [_pool release];
    return _r0.i;
}


+ (int) idealIntArraySize___int :(int)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.i = n1;
    _r0.i = _r1.i * 4;
    _r0.i = [com_android_internal_util_ArrayUtils idealByteArraySize___int:_r0.i];
    _r0.i = _r0.i / 4;
    [_pool release];
    return _r0.i;
}


+ (int) idealFloatArraySize___int :(int)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.i = n1;
    _r0.i = _r1.i * 4;
    _r0.i = [com_android_internal_util_ArrayUtils idealByteArraySize___int:_r0.i];
    _r0.i = _r0.i / 4;
    [_pool release];
    return _r0.i;
}


+ (int) idealObjectArraySize___int :(int)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.i = n1;
    _r0.i = _r1.i * 4;
    _r0.i = [com_android_internal_util_ArrayUtils idealByteArraySize___int:_r0.i];
    _r0.i = _r0.i / 4;
    [_pool release];
    return _r0.i;
}


+ (int) idealLongArraySize___int :(int)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.i = n1;
    _r0.i = _r1.i * 8;
    _r0.i = [com_android_internal_util_ArrayUtils idealByteArraySize___int:_r0.i];
    _r0.i = _r0.i / 8;
    [_pool release];
    return _r0.i;
}


+ (int) equals___byte_ARRAYTYPE_byte_ARRAYTYPE_int :(XMLVMArray*)n1 :(XMLVMArray*)n2 :(int)n3
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    XMLVMElem _r5;
    XMLVMElem _r6;
    XMLVMElem _r7;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r5.o = n1;
    _r6.o = n2;
    _r7.i = n3;
    _r4.i = 1;
    _r3.i = 0;
    if (_r5.o != _r6.o) goto label6;
    _r1 = _r4;
    label5:;
    [_pool release];
    return _r1.i;
    label6:;
    if (_r5.o == [NSNull null]) goto label16;
    if (_r6.o == [NSNull null]) goto label16;
    _r1.i = [_r5.o count];
    if (_r1.i < _r7.i) goto label16;
    _r1.i = [_r6.o count];
    if (_r1.i >= _r7.i) goto label18;
    label16:;
    _r1 = _r3;
    goto label5;
    label18:;
    _r0.i = 0;
    label19:;
    if (_r0.i >= _r7.i) goto label32;
    _r1.o = ((XMLVMArray*) _r5.o)->array.o[_r0.i];
    _r2.o = ((XMLVMArray*) _r6.o)->array.o[_r0.i];
    if (_r1.i == _r2.i) goto label29;
    _r1 = _r3;
    goto label5;
    label29:;
    _r0.i = _r0.i + 1;
    goto label19;
    label32:;
    _r1 = _r4;
    goto label5;
}


+ (XMLVMArray*) emptyArray___java_lang_Class :(java_lang_Class*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r4.o = n1;
    _r2.o = [[java_lang_Object getClass__] autorelease];
    if (_r4.o != _r2.o) goto label10;
    _r4.o = [com_android_internal_util_ArrayUtils _GET_EMPTY];
    _r4.o = _r4.o;
    _r2 = _r4;
    label9:;
    [_r2.o retain];
    [_pool release];
    return _r2.o;
    label10:;
    _r2.i = [java_lang_System identityHashCode___java_lang_Object:_r4.o];
    _r2.i = _r2.i / 8;
    _r3.i = 2147483647;
    _r2.i = _r2.i & _r3.i;
    _r0.i = _r2.i % 73;
    _r2.o = [com_android_internal_util_ArrayUtils _GET_sCache];
    _r1.o = ((XMLVMArray*) _r2.o)->array.o[_r0.i];
    [[_r1.o retain] autorelease];
    if (_r1.o == [NSNull null]) goto label38;
    _r2.o = [((java_lang_Object*) _r1.o) getClass__];
    [_r2.o autorelease];
    _r2.o = [((java_lang_Class*) _r2.o) getComponentType__];
    [_r2.o autorelease];
    if (_r2.o == _r4.o) goto label47;
    label38:;
    _r2.i = 0;
    _r1.o = [java_lang_reflect_Array newInstance___java_lang_Class_int:_r4.o:_r2.i];
    [_r1.o autorelease];
    _r2.o = [com_android_internal_util_ArrayUtils _GET_sCache];
    [_r1.o retain];
    [((XMLVMArray*) _r2.o)->array.o[_r0.i] release];
    ((XMLVMArray*) _r2.o)->array.o[_r0.i] = _r1.o;
    label47:;
    _r1.o = _r1.o;
    _r1.o = _r1.o;
    _r2 = _r1;
    goto label9;
}


+ (int) contains___java_lang_Object_ARRAYTYPE_java_lang_Object :(XMLVMArray*)n1 :(java_lang_Object*)n2
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    XMLVMElem _r5;
    XMLVMElem _r6;
    XMLVMElem _r7;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r6.o = n1;
    _r7.o = n2;
    _r5.i = 1;
    _r0 = _r6;
    _r3.i = [_r0.o count];
    _r2.i = 0;
    label4:;
    if (_r2.i >= _r3.i) goto label27;
    _r1.o = ((XMLVMArray*) _r0.o)->array.o[_r2.i];
    [[_r1.o retain] autorelease];
    if (_r1.o != [NSNull null]) goto label14;
    if (_r7.o != [NSNull null]) goto label24;
    _r4 = _r5;
    label13:;
    [_pool release];
    return _r4.i;
    label14:;
    if (_r7.o == [NSNull null]) goto label24;
    _r4.i = [((java_lang_Object*) _r1.o) equals___java_lang_Object:_r7.o];
    if (_r4.i == 0) goto label24;
    _r4 = _r5;
    goto label13;
    label24:;
    _r2.i = _r2.i + 1;
    goto label4;
    label27:;
    _r4.i = 0;
    goto label13;
}


+ (void) __clinit_com_android_internal_util_ArrayUtils
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.i = 0;
    _r0.o = [XMLVMArray createSingleDimensionWithType:0 andSize:_r0.i];
    [com_android_internal_util_ArrayUtils _PUT_EMPTY: _r0.o];
    _r0.i = 73;
    _r0.o = [XMLVMArray createSingleDimensionWithType:0 andSize:_r0.i];
    [com_android_internal_util_ArrayUtils _PUT_sCache: _r0.o];
    [_pool release];
    return;
}


- (BOOL) isEqual:(id)o
{
	return [self equals___java_lang_Object:o];
}

@end

