#import "xmlvm.h"
#import "java_lang_Object.h"

// For circular include:
@class android_content_res_AssetFileDescriptor;
@class java_lang_Object;
@class android_util_Log;
@class java_lang_String;
@class android_media_SoundPool;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface android_media_SoundPool : java_lang_Object
{

}
+ (void) initialize;
- (id) init;
- (void) __init_android_media_SoundPool___int_int_int :(int)n1 :(int)n2 :(int)n3;
- (int) load___android_content_res_AssetFileDescriptor_int :(android_content_res_AssetFileDescriptor*)n1 :(int)n2;
- (int) play___int_float_float_int_int_float :(int)n1 :(float)n2 :(float)n3 :(int)n4 :(int)n5 :(float)n6;
- (void) stop___int :(int)n1;

@end
