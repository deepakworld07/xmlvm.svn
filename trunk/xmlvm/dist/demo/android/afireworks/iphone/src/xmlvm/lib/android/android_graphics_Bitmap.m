#import "android_graphics_Rect.h"
#import "android_graphics_drawable_BitmapDrawable.h"
#import "android_graphics_drawable_Drawable.h"
#import "org_xmlvm_iphone_UIImage.h"
#import "org_xmlvm_iphone_CGContext.h"
#import "android_graphics_Bitmap_Config.h"
#import "org_xmlvm_iphone_CGSize.h"
#import "android_content_res_Resources.h"

// Automatically generated by xmlvm2obj. Do not edit!


#import "android_graphics_Bitmap.h"


@implementation android_graphics_Bitmap;

+ (void) initialize
{
    if (strcmp(class_getName(self), "android_graphics_Bitmap") == 0) {
    }
}

- (id) init
{
    if (self = [super init]) {
        drawable_android_graphics_drawable_Drawable = (id) [NSNull null];
    }
    return self;
}

- (void) dealloc
{
    [drawable_android_graphics_drawable_Drawable release];
    [super dealloc];
}

- (void) __init_android_graphics_Bitmap___android_graphics_drawable_Drawable :(android_graphics_drawable_Drawable*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    _r1.o = n1;
    [((java_lang_Object*) _r0.o) __init_java_lang_Object__];
    [_r1.o retain];
    [((android_graphics_Bitmap*) _r0.o)->drawable_android_graphics_drawable_Drawable release];
    ((android_graphics_Bitmap*) _r0.o)->drawable_android_graphics_drawable_Drawable = _r1.o;
    [_pool release];
    return;
}


- (void) __init_android_graphics_Bitmap___android_content_res_Resources_int :(android_content_res_Resources*)n1 :(int)n2
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = self;
    _r2.o = n1;
    _r3.i = n2;
    [((java_lang_Object*) _r1.o) __init_java_lang_Object__];
    _r0.o = [((android_content_res_Resources*) _r2.o) getDrawable___int:_r3.i];
    [_r0.o autorelease];
    [_r0.o retain];
    [((android_graphics_Bitmap*) _r1.o)->drawable_android_graphics_drawable_Drawable release];
    ((android_graphics_Bitmap*) _r1.o)->drawable_android_graphics_drawable_Drawable = _r0.o;
    [_pool release];
    return;
}


- (android_graphics_drawable_Drawable*) getDrawable__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = self;
    _r0.o = [[((android_graphics_Bitmap*) _r1.o)->drawable_android_graphics_drawable_Drawable retain] autorelease];
    [_r0.o retain];
    [_pool release];
    return _r0.o;
}


- (int) getWidth__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r2.o = self;
    _r1.o = [[((android_graphics_Bitmap*) _r2.o)->drawable_android_graphics_drawable_Drawable retain] autorelease];
    _r0.o = [((android_graphics_drawable_Drawable*) _r1.o) getBounds__];
    [_r0.o autorelease];
    _r1.i = ((android_graphics_Rect*) _r0.o)->right_int;
    [_pool release];
    return _r1.i;
}


- (int) getHeight__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r2.o = self;
    _r1.o = [[((android_graphics_Bitmap*) _r2.o)->drawable_android_graphics_drawable_Drawable retain] autorelease];
    _r0.o = [((android_graphics_drawable_Drawable*) _r1.o) getBounds__];
    [_r0.o autorelease];
    _r1.i = ((android_graphics_Rect*) _r0.o)->bottom_int;
    [_pool release];
    return _r1.i;
}


+ (android_graphics_Bitmap*) createBitmap___int_int_android_graphics_Bitmap_Config :(int)n1 :(int)n2 :(android_graphics_Bitmap_Config*)n3
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
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r4.i = n1;
    _r5.i = n2;
    _r6.o = n3;
    _r1.o = [[[org_xmlvm_iphone_CGSize alloc] init] autorelease];
    _r2.f = (float) _r4.i;
    _r3.f = (float) _r5.i;
    [((org_xmlvm_iphone_CGSize*) _r1.o) __init_org_xmlvm_iphone_CGSize___float_float:_r2.f:_r3.f];
    [org_xmlvm_iphone_CGContext UIGraphicsBeginImageContext___org_xmlvm_iphone_CGSize:_r1.o];
    _r0.o = [org_xmlvm_iphone_CGContext UIGraphicsGetImageFromCurrentImageContext__];
    [_r0.o autorelease];
    [org_xmlvm_iphone_CGContext UIGraphicsEndImageContext__];
    _r1.o = [[[android_graphics_Bitmap alloc] init] autorelease];
    _r2.o = [android_graphics_drawable_BitmapDrawable xmlvmCreateWithImage___org_xmlvm_iphone_UIImage:_r0.o];
    [_r2.o autorelease];
    [((android_graphics_Bitmap*) _r1.o) __init_android_graphics_Bitmap___android_graphics_drawable_Drawable:_r2.o];
    [_r1.o retain];
    [_pool release];
    return _r1.o;
}


+ (android_graphics_Bitmap*) createBitmap___android_graphics_Bitmap_int_int_int_int :(android_graphics_Bitmap*)n1 :(int)n2 :(int)n3 :(int)n4 :(int)n5
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
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r2.o = n1;
    _r3.i = n2;
    _r4.i = n3;
    _r5.i = n4;
    _r6.i = n5;
    _r0.o = [[[android_graphics_Bitmap alloc] init] autorelease];
    _r2.o = [[((android_graphics_Bitmap*) _r2.o)->drawable_android_graphics_drawable_Drawable retain] autorelease];
    _r2.o = _r2.o;
    _r1.o = [((android_graphics_drawable_BitmapDrawable*) _r2.o) xmlvmCropImage___int_int_int_int:_r3.i:_r4.i:_r5.i:_r6.i];
    [_r1.o autorelease];
    [((android_graphics_Bitmap*) _r0.o) __init_android_graphics_Bitmap___android_graphics_drawable_Drawable:_r1.o];
    [_r0.o retain];
    [_pool release];
    return _r0.o;
}



@end

