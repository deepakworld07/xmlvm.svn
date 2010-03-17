#import "xmlvm.h"
#import "java_lang_Object.h"

// For circular include:
@class android_graphics_Rect;
@class java_io_InputStream;
@class java_lang_Object;
@class android_graphics_drawable_Drawable;
@class java_lang_String;
@class android_internal_Assert;
@class android_graphics_drawable_Drawable_ConstantState;
@class android_graphics_Canvas;
@class java_util_Arrays;
@class android_util_StateSet;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface android_graphics_drawable_Drawable : java_lang_Object
{
@public android_graphics_Rect* bounds_android_graphics_Rect;
@public XMLVMArray* stateSet_int_ARRAYTYPE;

}
+ (void) initialize;
- (id) init;
+ (android_graphics_Rect*) _GET_ZERO_BOUNDS_RECT;
+ (void) _PUT_ZERO_BOUNDS_RECT: (android_graphics_Rect*) v;
- (void) __init_android_graphics_drawable_Drawable__;
- (int) setState___int_ARRAYTYPE :(XMLVMArray*)n1;
- (XMLVMArray*) getState__;
- (int) onStateChange___int_ARRAYTYPE :(XMLVMArray*)n1;
- (android_graphics_Rect*) getBounds__;
- (int) getIntrinsicWidth__;
- (int) getIntrinsicHeight__;
- (int) getMinimumWidth__;
- (int) getMinimumHeight__;
- (android_graphics_drawable_Drawable_ConstantState*) getConstantState__;
- (int) isStateful__;
- (android_graphics_drawable_Drawable*) getCurrent__;
- (int) getPadding___android_graphics_Rect :(android_graphics_Rect*)n1;
- (void) setBounds___int_int_int_int :(int)n1 :(int)n2 :(int)n3 :(int)n4;
- (void) setBounds___android_graphics_Rect :(android_graphics_Rect*)n1;
- (void) onBoundsChange___android_graphics_Rect :(android_graphics_Rect*)n1;
- (void) draw___android_graphics_Canvas :(android_graphics_Canvas*)n1;
+ (android_graphics_drawable_Drawable*) createFromStream___java_io_InputStream_java_lang_String :(java_io_InputStream*)n1 :(java_lang_String*)n2;
- (void) setFilterBitmap___boolean :(int)n1;
- (void) setDither___boolean :(int)n1;
+ (void) __clinit_android_graphics_drawable_Drawable;

@end

