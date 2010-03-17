#import "xmlvm.h"
#import "java_lang_Object.h"

// For circular include:
@class android_util_Pools;
@class android_util_FinitePool;
@class android_util_SynchronizedPool;
@class java_lang_Object;
@class android_util_Pool;
@class android_util_PoolableManager;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface android_util_Pools : java_lang_Object
{

}
+ (void) initialize;
- (id) init;
- (void) __init_android_util_Pools__;
+ (android_util_Pool*) simplePool___android_util_PoolableManager :(android_util_PoolableManager*)n1;
+ (android_util_Pool*) finitePool___android_util_PoolableManager_int :(android_util_PoolableManager*)n1 :(int)n2;
+ (android_util_Pool*) synchronizedPool___android_util_Pool :(android_util_Pool*)n1;
+ (android_util_Pool*) synchronizedPool___android_util_Pool_java_lang_Object :(android_util_Pool*)n1 :(java_lang_Object*)n2;

@end

