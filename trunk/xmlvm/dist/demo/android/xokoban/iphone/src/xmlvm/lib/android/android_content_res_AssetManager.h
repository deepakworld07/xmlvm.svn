#import "xmlvm.h"
#import "java_lang_Object.h"

// For circular include:
@class android_content_res_AssetFileDescriptor;
@class android_content_res_AssetManager;
@class java_lang_Object;
@class java_lang_StringBuilder;
@class java_io_File;
@class java_lang_String;
@class org_xmlvm_iphone_NSBundle;
@class java_io_FileNotFoundException;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface android_content_res_AssetManager : java_lang_Object
{

}
+ (void) initialize;
- (id) init;
+ (java_lang_String*) _GET_ASSETS_DIR;
+ (void) _PUT_ASSETS_DIR: (java_lang_String*) v;
- (void) __init_android_content_res_AssetManager__;
- (android_content_res_AssetFileDescriptor*) openFd___java_lang_String :(java_lang_String*)n1;
- (java_lang_String*) getResourceName___java_lang_String :(java_lang_String*)n1;
- (java_lang_String*) getResourceDirectory___java_lang_String :(java_lang_String*)n1;

@end

