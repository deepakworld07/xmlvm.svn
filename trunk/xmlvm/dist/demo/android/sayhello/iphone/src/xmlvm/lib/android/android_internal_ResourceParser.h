#import "xmlvm.h"
#import "java_lang_Object.h"

// For circular include:
@class android_internal_ResourceParser;
@class java_util_Map;
@class java_lang_Object;
@class org_xmlvm_iphone_NSData;
@class java_lang_String;
@class android_graphics_drawable_Drawable;
@class java_lang_StringBuilder;
@class android_internal_DrawableParser;
@class org_xmlvm_iphone_NSBundle;
@class android_internal_StringsParser;
@class org_xmlvm_iphone_NSXMLParser;
@class android_view_InflateException;
@class android_internal_StringArraysParser;
@class android_content_Context;
@class org_xmlvm_iphone_NSXMLParserDelegate;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface android_internal_ResourceParser : java_lang_Object
{

}
+ (void) initialize;
- (id) init;
- (void) __init_android_internal_ResourceParser__;
+ (android_graphics_drawable_Drawable*) parseDrawable___android_content_Context_java_lang_String :(android_content_Context*)n1 :(java_lang_String*)n2;
+ (java_util_Map*) parseStrings___android_content_Context_java_lang_String_java_util_Map :(android_content_Context*)n1 :(java_lang_String*)n2 :(java_util_Map*)n3;
+ (java_util_Map*) parseStringArrays___android_content_Context_java_lang_String_java_util_Map :(android_content_Context*)n1 :(java_lang_String*)n2 :(java_util_Map*)n3;
+ (org_xmlvm_iphone_NSXMLParser*) createParser___android_content_Context_org_xmlvm_iphone_NSData_org_xmlvm_iphone_NSXMLParserDelegate :(android_content_Context*)n1 :(org_xmlvm_iphone_NSData*)n2 :(org_xmlvm_iphone_NSXMLParserDelegate*)n3;
+ (java_lang_String*) getResourceName___java_lang_String :(java_lang_String*)n1;
+ (java_lang_String*) getResourceDirectory___java_lang_String :(java_lang_String*)n1;

@end

