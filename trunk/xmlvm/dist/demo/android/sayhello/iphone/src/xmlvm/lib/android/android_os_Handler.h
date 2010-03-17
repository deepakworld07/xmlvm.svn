#import "xmlvm.h"
#import "java_lang_Object.h"

// For circular include:
@class org_xmlvm_iphone_NSTimer;
@class java_lang_Object;
@class java_lang_Runnable;
@class org_xmlvm_iphone_NSObject;
@class android_os_Message;
@class java_lang_String;
@class android_internal_Assert;
@class android_os_Looper;
@class android_os_Handler;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface android_os_Handler : java_lang_Object
{
@public java_lang_Runnable* toRun_java_lang_Runnable;
@public org_xmlvm_iphone_NSTimer* timer_org_xmlvm_iphone_NSTimer;
@public float delay_float;

}
+ (void) initialize;
- (id) init;
- (void) __init_android_os_Handler__;
- (void) __init_android_os_Handler___android_os_Looper :(android_os_Looper*)n1;
- (void) run___org_xmlvm_iphone_NSTimer :(org_xmlvm_iphone_NSTimer*)n1;
- (int) postDelayed___java_lang_Runnable_long :(java_lang_Runnable*)n1 :(long)n2;
- (void) post___java_lang_Runnable :(java_lang_Runnable*)n1;
- (void) removeCallbacks___java_lang_Runnable :(java_lang_Runnable*)n1;
- (void) xmlvmStartTimer___java_lang_Object :(java_lang_Object*)n1;
- (void) handleMessage___android_os_Message :(android_os_Message*)n1;
- (void) dispatchMessage___android_os_Message :(android_os_Message*)n1;
- (void) sendMessage___android_os_Message :(android_os_Message*)n1;
- (int) sendMessageDelayed___android_os_Message_long :(android_os_Message*)n1 :(long)n2;

@end

