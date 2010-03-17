#import "xmlvm.h"
#import "java_lang_Object.h"

// For circular include:
@class java_lang_Object;
@class android_view_MotionEvent;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface android_view_MotionEvent : java_lang_Object
{
@public int action_int;
@public float x_float;
@public float y_float;

}
+ (void) initialize;
- (id) init;
+ (int) _GET_ACTION_DOWN;
+ (void) _PUT_ACTION_DOWN: (int) v;
+ (int) _GET_ACTION_UP;
+ (void) _PUT_ACTION_UP: (int) v;
+ (int) _GET_ACTION_MOVE;
+ (void) _PUT_ACTION_MOVE: (int) v;
+ (int) _GET_ACTION_CANCEL;
+ (void) _PUT_ACTION_CANCEL: (int) v;
- (void) __init_android_view_MotionEvent___int_int_int :(int)n1 :(int)n2 :(int)n3;
- (int) getAction__;
- (float) getX__;
- (float) getY__;

@end

