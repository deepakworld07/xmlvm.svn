#import "xmlvm.h"
#import "java_lang_Object.h"

// For circular include:
@class java_lang_Object;
@class android_app_Activity;
@class android_view_WindowManager;
@class android_view_Display;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface android_view_WindowManager : java_lang_Object
{
@public android_app_Activity* activity_android_app_Activity;

}
+ (void) initialize;
- (id) init;
- (void) __init_android_view_WindowManager___android_app_Activity :(android_app_Activity*)n1;
- (android_view_Display*) getDefaultDisplay__;

@end

