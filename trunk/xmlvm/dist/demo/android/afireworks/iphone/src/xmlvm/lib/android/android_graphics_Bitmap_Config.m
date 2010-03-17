#import "java_lang_Object.h"
#import "java_lang_Class.h"
#import "java_lang_String.h"

// Automatically generated by xmlvm2obj. Do not edit!


#import "android_graphics_Bitmap_Config.h"

android_graphics_Bitmap_Config* _STATIC_android_graphics_Bitmap_Config_ALPHA_8;
android_graphics_Bitmap_Config* _STATIC_android_graphics_Bitmap_Config_ARGB_4444;
android_graphics_Bitmap_Config* _STATIC_android_graphics_Bitmap_Config_ARGB_8888;
android_graphics_Bitmap_Config* _STATIC_android_graphics_Bitmap_Config_RGB_565;
XMLVMArray* _STATIC_android_graphics_Bitmap_Config__VALUES;

@implementation android_graphics_Bitmap_Config;

+ (void) initialize
{
    if (strcmp(class_getName(self), "android_graphics_Bitmap_Config") == 0) {
        _STATIC_android_graphics_Bitmap_Config_ALPHA_8 = (id) [NSNull null];
        _STATIC_android_graphics_Bitmap_Config_ARGB_4444 = (id) [NSNull null];
        _STATIC_android_graphics_Bitmap_Config_ARGB_8888 = (id) [NSNull null];
        _STATIC_android_graphics_Bitmap_Config_RGB_565 = (id) [NSNull null];
        _STATIC_android_graphics_Bitmap_Config__VALUES = (id) [NSNull null];
        [android_graphics_Bitmap_Config __clinit_android_graphics_Bitmap_Config];
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

+ (android_graphics_Bitmap_Config*) _GET_ALPHA_8
{
    return [[_STATIC_android_graphics_Bitmap_Config_ALPHA_8 retain] autorelease];
}

+ (void) _PUT_ALPHA_8: (android_graphics_Bitmap_Config*) v
{
    [v retain];
    [_STATIC_android_graphics_Bitmap_Config_ALPHA_8 release];
    _STATIC_android_graphics_Bitmap_Config_ALPHA_8 = v;
}

+ (android_graphics_Bitmap_Config*) _GET_ARGB_4444
{
    return [[_STATIC_android_graphics_Bitmap_Config_ARGB_4444 retain] autorelease];
}

+ (void) _PUT_ARGB_4444: (android_graphics_Bitmap_Config*) v
{
    [v retain];
    [_STATIC_android_graphics_Bitmap_Config_ARGB_4444 release];
    _STATIC_android_graphics_Bitmap_Config_ARGB_4444 = v;
}

+ (android_graphics_Bitmap_Config*) _GET_ARGB_8888
{
    return [[_STATIC_android_graphics_Bitmap_Config_ARGB_8888 retain] autorelease];
}

+ (void) _PUT_ARGB_8888: (android_graphics_Bitmap_Config*) v
{
    [v retain];
    [_STATIC_android_graphics_Bitmap_Config_ARGB_8888 release];
    _STATIC_android_graphics_Bitmap_Config_ARGB_8888 = v;
}

+ (android_graphics_Bitmap_Config*) _GET_RGB_565
{
    return [[_STATIC_android_graphics_Bitmap_Config_RGB_565 retain] autorelease];
}

+ (void) _PUT_RGB_565: (android_graphics_Bitmap_Config*) v
{
    [v retain];
    [_STATIC_android_graphics_Bitmap_Config_RGB_565 release];
    _STATIC_android_graphics_Bitmap_Config_RGB_565 = v;
}

+ (XMLVMArray*) _GET__VALUES
{
    return [[_STATIC_android_graphics_Bitmap_Config__VALUES retain] autorelease];
}

+ (void) _PUT__VALUES: (XMLVMArray*) v
{
    [v retain];
    [_STATIC_android_graphics_Bitmap_Config__VALUES release];
    _STATIC_android_graphics_Bitmap_Config__VALUES = v;
}

+ (XMLVMArray*) values__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = [android_graphics_Bitmap_Config _GET__VALUES];
    _r0.o = [((XMLVMArray*) _r0.o) clone__];
    [_r0.o autorelease];
    _r0.o = _r0.o;
    [_r0.o retain];
    [_pool release];
    return _r0.o;
}


+ (android_graphics_Bitmap_Config*) valueOf___java_lang_String :(java_lang_String*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = n1;
    _r0.o = [[android_graphics_Bitmap_Config getClass__] autorelease];
    _r1.o = [java_lang_Enum valueOf___java_lang_Class_java_lang_String:_r0.o:_r1.o];
    [_r1.o autorelease];
    _r1.o = _r1.o;
    [_r1.o retain];
    [_pool release];
    return _r1.o;
}


- (void) __init_android_graphics_Bitmap_Config___java_lang_String_int :(java_lang_String*)n1 :(int)n2
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    _r1.o = n1;
    _r2.i = n2;
    [((java_lang_Enum*) _r0.o) __init_java_lang_Enum___java_lang_String_int:_r1.o:_r2.i];
    [_pool release];
    return;
}


+ (void) __clinit_android_graphics_Bitmap_Config
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    XMLVMElem _r5;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r5.i = 3;
    _r4.i = 2;
    _r3.i = 1;
    _r2.i = 0;
    _r0.o = [[[android_graphics_Bitmap_Config alloc] init] autorelease];
    _r1.o = @"ALPHA_8";
    [((android_graphics_Bitmap_Config*) _r0.o) __init_android_graphics_Bitmap_Config___java_lang_String_int:_r1.o:_r2.i];
    [android_graphics_Bitmap_Config _PUT_ALPHA_8: _r0.o];
    _r0.o = [[[android_graphics_Bitmap_Config alloc] init] autorelease];
    _r1.o = @"ARGB_4444";
    [((android_graphics_Bitmap_Config*) _r0.o) __init_android_graphics_Bitmap_Config___java_lang_String_int:_r1.o:_r3.i];
    [android_graphics_Bitmap_Config _PUT_ARGB_4444: _r0.o];
    _r0.o = [[[android_graphics_Bitmap_Config alloc] init] autorelease];
    _r1.o = @"ARGB_8888";
    [((android_graphics_Bitmap_Config*) _r0.o) __init_android_graphics_Bitmap_Config___java_lang_String_int:_r1.o:_r4.i];
    [android_graphics_Bitmap_Config _PUT_ARGB_8888: _r0.o];
    _r0.o = [[[android_graphics_Bitmap_Config alloc] init] autorelease];
    _r1.o = @"RGB_565";
    [((android_graphics_Bitmap_Config*) _r0.o) __init_android_graphics_Bitmap_Config___java_lang_String_int:_r1.o:_r5.i];
    [android_graphics_Bitmap_Config _PUT_RGB_565: _r0.o];
    _r0.i = 4;
    _r0.o = [XMLVMArray createSingleDimensionWithType:0 andSize:_r0.i];
    _r1.o = [android_graphics_Bitmap_Config _GET_ALPHA_8];
    [_r1.o retain];
    [((XMLVMArray*) _r0.o)->array.o[_r2.i] release];
    ((XMLVMArray*) _r0.o)->array.o[_r2.i] = _r1.o;
    _r1.o = [android_graphics_Bitmap_Config _GET_ARGB_4444];
    [_r1.o retain];
    [((XMLVMArray*) _r0.o)->array.o[_r3.i] release];
    ((XMLVMArray*) _r0.o)->array.o[_r3.i] = _r1.o;
    _r1.o = [android_graphics_Bitmap_Config _GET_ARGB_8888];
    [_r1.o retain];
    [((XMLVMArray*) _r0.o)->array.o[_r4.i] release];
    ((XMLVMArray*) _r0.o)->array.o[_r4.i] = _r1.o;
    _r1.o = [android_graphics_Bitmap_Config _GET_RGB_565];
    [_r1.o retain];
    [((XMLVMArray*) _r0.o)->array.o[_r5.i] release];
    ((XMLVMArray*) _r0.o)->array.o[_r5.i] = _r1.o;
    [android_graphics_Bitmap_Config _PUT__VALUES: _r0.o];
    [_pool release];
    return;
}



@end

