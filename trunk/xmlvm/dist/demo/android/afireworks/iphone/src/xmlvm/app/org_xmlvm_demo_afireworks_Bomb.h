#import "xmlvm.h"
#import "java_lang_Object.h"

// For circular include:
@class java_lang_Object;
@class org_xmlvm_demo_afireworks_Spark;
@class org_xmlvm_demo_afireworks_Bomb;
@class android_view_ViewGroup;
@class org_xmlvm_demo_afireworks_AndroidFireworks_Environment;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface org_xmlvm_demo_afireworks_Bomb : java_lang_Object
{
@public XMLVMArray* sparks_org_xmlvm_demo_afireworks_Spark_ARRAYTYPE;

}
+ (void) initialize;
- (id) init;
- (void) __init_org_xmlvm_demo_afireworks_Bomb___android_view_ViewGroup_org_xmlvm_demo_afireworks_AndroidFireworks_Environment :(android_view_ViewGroup*)n1 :(org_xmlvm_demo_afireworks_AndroidFireworks_Environment*)n2;
- (org_xmlvm_demo_afireworks_Spark*) getSpark___int :(int)n1;
- (void) reset___int_int :(int)n1 :(int)n2;
- (int) allOutOfSight__;

@end

