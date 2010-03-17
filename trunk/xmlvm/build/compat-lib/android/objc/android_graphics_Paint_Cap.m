#import "java_lang_Object.h"
#import "java_lang_Class.h"
#import "java_lang_String.h"

// Automatically generated by xmlvm2obj. Do not edit!


#import "android_graphics_Paint_Cap.h"

android_graphics_Paint_Cap* _STATIC_android_graphics_Paint_Cap_BUTT;
android_graphics_Paint_Cap* _STATIC_android_graphics_Paint_Cap_ROUND;
android_graphics_Paint_Cap* _STATIC_android_graphics_Paint_Cap_SQUARE;
XMLVMArray* _STATIC_android_graphics_Paint_Cap__VALUES;

@implementation android_graphics_Paint_Cap;

+ (void) initialize
{
    if (strcmp(class_getName(self), "android_graphics_Paint_Cap") == 0) {
        _STATIC_android_graphics_Paint_Cap_BUTT = (id) [NSNull null];
        _STATIC_android_graphics_Paint_Cap_ROUND = (id) [NSNull null];
        _STATIC_android_graphics_Paint_Cap_SQUARE = (id) [NSNull null];
        _STATIC_android_graphics_Paint_Cap__VALUES = (id) [NSNull null];
        [android_graphics_Paint_Cap __clinit_android_graphics_Paint_Cap];
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

+ (android_graphics_Paint_Cap*) _GET_BUTT
{
    return [[_STATIC_android_graphics_Paint_Cap_BUTT retain] autorelease];
}

+ (void) _PUT_BUTT: (android_graphics_Paint_Cap*) v
{
    [v retain];
    [_STATIC_android_graphics_Paint_Cap_BUTT release];
    _STATIC_android_graphics_Paint_Cap_BUTT = v;
}

+ (android_graphics_Paint_Cap*) _GET_ROUND
{
    return [[_STATIC_android_graphics_Paint_Cap_ROUND retain] autorelease];
}

+ (void) _PUT_ROUND: (android_graphics_Paint_Cap*) v
{
    [v retain];
    [_STATIC_android_graphics_Paint_Cap_ROUND release];
    _STATIC_android_graphics_Paint_Cap_ROUND = v;
}

+ (android_graphics_Paint_Cap*) _GET_SQUARE
{
    return [[_STATIC_android_graphics_Paint_Cap_SQUARE retain] autorelease];
}

+ (void) _PUT_SQUARE: (android_graphics_Paint_Cap*) v
{
    [v retain];
    [_STATIC_android_graphics_Paint_Cap_SQUARE release];
    _STATIC_android_graphics_Paint_Cap_SQUARE = v;
}

+ (XMLVMArray*) _GET__VALUES
{
    return [[_STATIC_android_graphics_Paint_Cap__VALUES retain] autorelease];
}

+ (void) _PUT__VALUES: (XMLVMArray*) v
{
    [v retain];
    [_STATIC_android_graphics_Paint_Cap__VALUES release];
    _STATIC_android_graphics_Paint_Cap__VALUES = v;
}

+ (XMLVMArray*) values__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = [android_graphics_Paint_Cap _GET__VALUES];
    _r0.o = [((XMLVMArray*) _r0.o) clone__];
    [_r0.o autorelease];
    _r0.o = _r0.o;
    [_r0.o retain];
    [_pool release];
    return _r0.o;
}


+ (android_graphics_Paint_Cap*) valueOf___java_lang_String :(java_lang_String*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = n1;
    _r0.o = [[android_graphics_Paint_Cap getClass__] autorelease];
    _r1.o = [java_lang_Enum valueOf___java_lang_Class_java_lang_String:_r0.o:_r1.o];
    [_r1.o autorelease];
    _r1.o = _r1.o;
    [_r1.o retain];
    [_pool release];
    return _r1.o;
}


- (void) __init_android_graphics_Paint_Cap___java_lang_String_int_int :(java_lang_String*)n1 :(int)n2 :(int)n3
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    _r1.o = n1;
    _r2.i = n2;
    _r3.i = n3;
    [((java_lang_Enum*) _r0.o) __init_java_lang_Enum___java_lang_String_int:_r1.o:_r2.i];
    ((android_graphics_Paint_Cap*) _r0.o)->nativeInt_int = _r3.i;
    [_pool release];
    return;
}


+ (void) __clinit_android_graphics_Paint_Cap
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r4.i = 2;
    _r3.i = 1;
    _r2.i = 0;
    _r0.o = [[[android_graphics_Paint_Cap alloc] init] autorelease];
    _r1.o = @"BUTT";
    [((android_graphics_Paint_Cap*) _r0.o) __init_android_graphics_Paint_Cap___java_lang_String_int_int:_r1.o:_r2.i:_r2.i];
    [android_graphics_Paint_Cap _PUT_BUTT: _r0.o];
    _r0.o = [[[android_graphics_Paint_Cap alloc] init] autorelease];
    _r1.o = @"ROUND";
    [((android_graphics_Paint_Cap*) _r0.o) __init_android_graphics_Paint_Cap___java_lang_String_int_int:_r1.o:_r3.i:_r3.i];
    [android_graphics_Paint_Cap _PUT_ROUND: _r0.o];
    _r0.o = [[[android_graphics_Paint_Cap alloc] init] autorelease];
    _r1.o = @"SQUARE";
    [((android_graphics_Paint_Cap*) _r0.o) __init_android_graphics_Paint_Cap___java_lang_String_int_int:_r1.o:_r4.i:_r4.i];
    [android_graphics_Paint_Cap _PUT_SQUARE: _r0.o];
    _r0.i = 3;
    _r0.o = [XMLVMArray createSingleDimensionWithType:0 andSize:_r0.i];
    _r1.o = [android_graphics_Paint_Cap _GET_BUTT];
    [_r1.o retain];
    [((XMLVMArray*) _r0.o)->array.o[_r2.i] release];
    ((XMLVMArray*) _r0.o)->array.o[_r2.i] = _r1.o;
    _r1.o = [android_graphics_Paint_Cap _GET_ROUND];
    [_r1.o retain];
    [((XMLVMArray*) _r0.o)->array.o[_r3.i] release];
    ((XMLVMArray*) _r0.o)->array.o[_r3.i] = _r1.o;
    _r1.o = [android_graphics_Paint_Cap _GET_SQUARE];
    [_r1.o retain];
    [((XMLVMArray*) _r0.o)->array.o[_r4.i] release];
    ((XMLVMArray*) _r0.o)->array.o[_r4.i] = _r1.o;
    [android_graphics_Paint_Cap _PUT__VALUES: _r0.o];
    [_pool release];
    return;
}



@end

