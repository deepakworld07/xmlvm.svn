#import "xmlvm.h"
#import "java_lang_Object.h"

// For circular include:
@class java_lang_Object;
@class android_util_Poolable;

// Automatically generated by xmlvm2obj. Do not edit!


	
@protocol android_util_Pool
+ (void) initialize;
- (id) init;
- (android_util_Poolable*) acquire__;
- (void) release___android_util_Poolable :(android_util_Poolable*)n1;

@end

@interface android_util_Pool : java_lang_Object <android_util_Pool>
@end
