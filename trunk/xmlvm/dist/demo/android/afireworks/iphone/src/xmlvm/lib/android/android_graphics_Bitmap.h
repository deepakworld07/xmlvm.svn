#import "xmlvm.h"
#import "java_lang_Object.h"

// For circular include:
@class android_graphics_Rect;
@class java_lang_Object;
@class android_graphics_drawable_BitmapDrawable;
@class android_graphics_drawable_Drawable;
@class org_xmlvm_iphone_UIImage;
@class org_xmlvm_iphone_CGContext;
@class android_graphics_Bitmap_Config;
@class android_graphics_Bitmap;
@class org_xmlvm_iphone_CGSize;
@class android_content_res_Resources;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface android_graphics_Bitmap : java_lang_Object
{
@public android_graphics_drawable_Drawable* drawable_android_graphics_drawable_Drawable;

}
+ (void) initialize;
- (id) init;
- (void) __init_android_graphics_Bitmap___android_graphics_drawable_Drawable :(android_graphics_drawable_Drawable*)n1;
- (void) __init_android_graphics_Bitmap___android_content_res_Resources_int :(android_content_res_Resources*)n1 :(int)n2;
- (android_graphics_drawable_Drawable*) getDrawable__;
- (int) getWidth__;
- (int) getHeight__;
+ (android_graphics_Bitmap*) createBitmap___int_int_android_graphics_Bitmap_Config :(int)n1 :(int)n2 :(android_graphics_Bitmap_Config*)n3;
+ (android_graphics_Bitmap*) createBitmap___android_graphics_Bitmap_int_int_int_int :(android_graphics_Bitmap*)n1 :(int)n2 :(int)n3 :(int)n4 :(int)n5;

@end

