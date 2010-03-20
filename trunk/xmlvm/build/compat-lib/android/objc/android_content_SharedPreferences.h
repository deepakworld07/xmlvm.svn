#import "xmlvm.h"
#import "java_lang_Object.h"

// For circular include:
@class android_internal_Assert;
@class org_xmlvm_iphone_NSUserDefaults;
@class java_lang_Object;
@class android_content_SharedPreferences_1;
@class android_content_SharedPreferences;
@class java_lang_String;
@class android_content_SharedPreferences_Editor;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface android_content_SharedPreferences : java_lang_Object
{
@public org_xmlvm_iphone_NSUserDefaults* preferences_org_xmlvm_iphone_NSUserDefaults;

}
+ (void) initialize;
- (id) init;
- (void) __init_android_content_SharedPreferences___int :(int)n1;
- (int) contains___java_lang_String :(java_lang_String*)n1;
- (android_content_SharedPreferences_Editor*) edit__;
- (int) getBoolean___java_lang_String_boolean :(java_lang_String*)n1 :(int)n2;
- (float) getFloat___java_lang_String_float :(java_lang_String*)n1 :(float)n2;
- (int) getInt___java_lang_String_int :(java_lang_String*)n1 :(int)n2;
- (long) getLong___java_lang_String_long :(java_lang_String*)n1 :(long)n2;
- (java_lang_String*) getString___java_lang_String_java_lang_String :(java_lang_String*)n1 :(java_lang_String*)n2;

@end
