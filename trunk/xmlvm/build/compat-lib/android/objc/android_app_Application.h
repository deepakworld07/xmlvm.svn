#import "xmlvm.h"
#import "java_lang_Object.h"

// For circular include:
@class android_internal_Assert;
@class java_lang_Object;
@class android_app_Application;
@class android_content_res_Configuration;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface android_app_Application : java_lang_Object
{

}
+ (void) initialize;
- (id) init;
- (void) __init_android_app_Application__;
- (void) onConfigurationChanged___android_content_res_Configuration :(android_content_res_Configuration*)n1;
- (void) onCreate__;
- (void) onLowMemory__;
- (void) onTerminate__;

@end
