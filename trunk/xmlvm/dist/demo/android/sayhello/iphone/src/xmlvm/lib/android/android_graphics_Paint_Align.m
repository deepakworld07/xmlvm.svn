#import "java_lang_Object.h"
#import "java_lang_Class.h"
#import "java_lang_String.h"

// Automatically generated by xmlvm2obj. Do not edit!


#import "android_graphics_Paint_Align.h"

android_graphics_Paint_Align* _STATIC_android_graphics_Paint_Align_LEFT;
android_graphics_Paint_Align* _STATIC_android_graphics_Paint_Align_CENTER;
android_graphics_Paint_Align* _STATIC_android_graphics_Paint_Align_RIGHT;
XMLVMArray* _STATIC_android_graphics_Paint_Align__VALUES;

@implementation android_graphics_Paint_Align;

+ (void) initialize
{
    if (strcmp(class_getName(self), "android_graphics_Paint_Align") == 0) {
        _STATIC_android_graphics_Paint_Align_LEFT = (id) [NSNull null];
        _STATIC_android_graphics_Paint_Align_CENTER = (id) [NSNull null];
        _STATIC_android_graphics_Paint_Align_RIGHT = (id) [NSNull null];
        _STATIC_android_graphics_Paint_Align__VALUES = (id) [NSNull null];
        [android_graphics_Paint_Align __clinit_android_graphics_Paint_Align];
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

+ (android_graphics_Paint_Align*) _GET_LEFT
{
    return [[_STATIC_android_graphics_Paint_Align_LEFT retain] autorelease];
}

+ (void) _PUT_LEFT: (android_graphics_Paint_Align*) v
{
    [v retain];
    [_STATIC_android_graphics_Paint_Align_LEFT release];
    _STATIC_android_graphics_Paint_Align_LEFT = v;
}

+ (android_graphics_Paint_Align*) _GET_CENTER
{
    return [[_STATIC_android_graphics_Paint_Align_CENTER retain] autorelease];
}

+ (void) _PUT_CENTER: (android_graphics_Paint_Align*) v
{
    [v retain];
    [_STATIC_android_graphics_Paint_Align_CENTER release];
    _STATIC_android_graphics_Paint_Align_CENTER = v;
}

+ (android_graphics_Paint_Align*) _GET_RIGHT
{
    return [[_STATIC_android_graphics_Paint_Align_RIGHT retain] autorelease];
}

+ (void) _PUT_RIGHT: (android_graphics_Paint_Align*) v
{
    [v retain];
    [_STATIC_android_graphics_Paint_Align_RIGHT release];
    _STATIC_android_graphics_Paint_Align_RIGHT = v;
}

+ (XMLVMArray*) _GET__VALUES
{
    return [[_STATIC_android_graphics_Paint_Align__VALUES retain] autorelease];
}

+ (void) _PUT__VALUES: (XMLVMArray*) v
{
    [v retain];
    [_STATIC_android_graphics_Paint_Align__VALUES release];
    _STATIC_android_graphics_Paint_Align__VALUES = v;
}

+ (XMLVMArray*) values__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = [android_graphics_Paint_Align _GET__VALUES];
    _r0.o = [((XMLVMArray*) _r0.o) clone__];
    [_r0.o autorelease];
    _r0.o = _r0.o;
    [_r0.o retain];
    [_pool release];
    return _r0.o;
}


+ (android_graphics_Paint_Align*) valueOf___java_lang_String :(java_lang_String*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = n1;
    _r0.o = [[android_graphics_Paint_Align getClass__] autorelease];
    _r1.o = [java_lang_Enum valueOf___java_lang_Class_java_lang_String:_r0.o:_r1.o];
    [_r1.o autorelease];
    _r1.o = _r1.o;
    [_r1.o retain];
    [_pool release];
    return _r1.o;
}


- (void) __init_android_graphics_Paint_Align___java_lang_String_int_int :(java_lang_String*)n1 :(int)n2 :(int)n3
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
    ((android_graphics_Paint_Align*) _r0.o)->nativeInt_int = _r3.i;
    [_pool release];
    return;
}


+ (void) __clinit_android_graphics_Paint_Align
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
    _r0.o = [[[android_graphics_Paint_Align alloc] init] autorelease];
    _r1.o = @"LEFT";
    [((android_graphics_Paint_Align*) _r0.o) __init_android_graphics_Paint_Align___java_lang_String_int_int:_r1.o:_r2.i:_r2.i];
    [android_graphics_Paint_Align _PUT_LEFT: _r0.o];
    _r0.o = [[[android_graphics_Paint_Align alloc] init] autorelease];
    _r1.o = @"CENTER";
    [((android_graphics_Paint_Align*) _r0.o) __init_android_graphics_Paint_Align___java_lang_String_int_int:_r1.o:_r3.i:_r3.i];
    [android_graphics_Paint_Align _PUT_CENTER: _r0.o];
    _r0.o = [[[android_graphics_Paint_Align alloc] init] autorelease];
    _r1.o = @"RIGHT";
    [((android_graphics_Paint_Align*) _r0.o) __init_android_graphics_Paint_Align___java_lang_String_int_int:_r1.o:_r4.i:_r4.i];
    [android_graphics_Paint_Align _PUT_RIGHT: _r0.o];
    _r0.i = 3;
    _r0.o = [XMLVMArray createSingleDimensionWithType:0 andSize:_r0.i];
    _r1.o = [android_graphics_Paint_Align _GET_LEFT];
    [_r1.o retain];
    [((XMLVMArray*) _r0.o)->array.o[_r2.i] release];
    ((XMLVMArray*) _r0.o)->array.o[_r2.i] = _r1.o;
    _r1.o = [android_graphics_Paint_Align _GET_CENTER];
    [_r1.o retain];
    [((XMLVMArray*) _r0.o)->array.o[_r3.i] release];
    ((XMLVMArray*) _r0.o)->array.o[_r3.i] = _r1.o;
    _r1.o = [android_graphics_Paint_Align _GET_RIGHT];
    [_r1.o retain];
    [((XMLVMArray*) _r0.o)->array.o[_r4.i] release];
    ((XMLVMArray*) _r0.o)->array.o[_r4.i] = _r1.o;
    [android_graphics_Paint_Align _PUT__VALUES: _r0.o];
    [_pool release];
    return;
}



@end

