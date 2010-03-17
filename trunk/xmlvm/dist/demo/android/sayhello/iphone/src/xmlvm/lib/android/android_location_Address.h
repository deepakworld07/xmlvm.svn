#import "xmlvm.h"
#import "java_lang_Object.h"

// For circular include:
@class android_internal_Assert;
@class java_lang_Object;
@class android_location_Address;
@class java_util_Locale;
@class java_lang_String;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface android_location_Address : java_lang_Object
{

}
+ (void) initialize;
- (id) init;
- (void) __init_android_location_Address___java_util_Locale :(java_util_Locale*)n1;
- (void) setAddressLine___int_java_lang_String :(int)n1 :(java_lang_String*)n2;
- (void) setLocality___java_lang_String :(java_lang_String*)n1;
- (void) setPostalCode___java_lang_String :(java_lang_String*)n1;
- (void) setCountryName___java_lang_String :(java_lang_String*)n1;
- (void) setLongitude___double :(double)n1;
- (void) setLatitude___double :(double)n1;
- (java_lang_String*) getAddressLine___int :(int)n1;
- (java_lang_String*) getPostalCode__;
- (java_lang_String*) getLocality__;
- (double) getLongitude__;
- (double) getLatitude__;

@end

