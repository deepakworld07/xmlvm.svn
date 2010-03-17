#import "xmlvm.h"
#import "java_lang_Object.h"

// For circular include:
@class android_graphics_Rect;
@class java_lang_Object;
@class java_lang_String;
@class android_view_Gravity;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface android_view_Gravity : java_lang_Object
{

}
+ (void) initialize;
- (id) init;
+ (int) _GET_NO_GRAVITY;
+ (void) _PUT_NO_GRAVITY: (int) v;
+ (int) _GET_AXIS_SPECIFIED;
+ (void) _PUT_AXIS_SPECIFIED: (int) v;
+ (int) _GET_AXIS_PULL_BEFORE;
+ (void) _PUT_AXIS_PULL_BEFORE: (int) v;
+ (int) _GET_AXIS_PULL_AFTER;
+ (void) _PUT_AXIS_PULL_AFTER: (int) v;
+ (int) _GET_AXIS_CLIP;
+ (void) _PUT_AXIS_CLIP: (int) v;
+ (int) _GET_AXIS_X_SHIFT;
+ (void) _PUT_AXIS_X_SHIFT: (int) v;
+ (int) _GET_AXIS_Y_SHIFT;
+ (void) _PUT_AXIS_Y_SHIFT: (int) v;
+ (int) _GET_TOP;
+ (void) _PUT_TOP: (int) v;
+ (int) _GET_BOTTOM;
+ (void) _PUT_BOTTOM: (int) v;
+ (int) _GET_LEFT;
+ (void) _PUT_LEFT: (int) v;
+ (int) _GET_RIGHT;
+ (void) _PUT_RIGHT: (int) v;
+ (int) _GET_CENTER_VERTICAL;
+ (void) _PUT_CENTER_VERTICAL: (int) v;
+ (int) _GET_FILL_VERTICAL;
+ (void) _PUT_FILL_VERTICAL: (int) v;
+ (int) _GET_CENTER_HORIZONTAL;
+ (void) _PUT_CENTER_HORIZONTAL: (int) v;
+ (int) _GET_FILL_HORIZONTAL;
+ (void) _PUT_FILL_HORIZONTAL: (int) v;
+ (int) _GET_CENTER;
+ (void) _PUT_CENTER: (int) v;
+ (int) _GET_FILL;
+ (void) _PUT_FILL: (int) v;
+ (int) _GET_CLIP_VERTICAL;
+ (void) _PUT_CLIP_VERTICAL: (int) v;
+ (int) _GET_CLIP_HORIZONTAL;
+ (void) _PUT_CLIP_HORIZONTAL: (int) v;
+ (int) _GET_HORIZONTAL_GRAVITY_MASK;
+ (void) _PUT_HORIZONTAL_GRAVITY_MASK: (int) v;
+ (int) _GET_VERTICAL_GRAVITY_MASK;
+ (void) _PUT_VERTICAL_GRAVITY_MASK: (int) v;
+ (int) _GET_DISPLAY_CLIP_VERTICAL;
+ (void) _PUT_DISPLAY_CLIP_VERTICAL: (int) v;
+ (int) _GET_DISPLAY_CLIP_HORIZONTAL;
+ (void) _PUT_DISPLAY_CLIP_HORIZONTAL: (int) v;
- (void) __init_android_view_Gravity__;
+ (void) apply___int_int_int_android_graphics_Rect_android_graphics_Rect :(int)n1 :(int)n2 :(int)n3 :(android_graphics_Rect*)n4 :(android_graphics_Rect*)n5;
+ (void) apply___int_int_int_android_graphics_Rect_int_int_android_graphics_Rect :(int)n1 :(int)n2 :(int)n3 :(android_graphics_Rect*)n4 :(int)n5 :(int)n6 :(android_graphics_Rect*)n7;
+ (void) applyDisplay___int_android_graphics_Rect_android_graphics_Rect :(int)n1 :(android_graphics_Rect*)n2 :(android_graphics_Rect*)n3;
+ (int) isVertical___int :(int)n1;
+ (int) isHorizontal___int :(int)n1;
+ (int) parseGravity___java_lang_String_int :(java_lang_String*)n1 :(int)n2;

@end

