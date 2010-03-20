#import "xmlvm.h"
#import "android_widget_TextView.h"

// For circular include:
@class java_lang_Object;
@class java_lang_String;
@class android_widget_TextView;
@class org_xmlvm_iphone_UIView;
@class org_xmlvm_iphone_UITextField;
@class java_lang_CharSequence;
@class org_xmlvm_iphone_UIFont;
@class android_content_Context;
@class android_util_AttributeSet;
@class android_widget_EditText;
@class org_xmlvm_iphone_UIColor;
@class android_internal_XMLVMTheme;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface android_widget_EditText : android_widget_TextView
{

}
+ (void) initialize;
- (id) init;
+ (int) _GET_INSETS_X;
+ (void) _PUT_INSETS_X: (int) v;
+ (int) _GET_INSETS_Y;
+ (void) _PUT_INSETS_Y: (int) v;
- (void) __init_android_widget_EditText___android_content_Context :(android_content_Context*)n1;
- (void) __init_android_widget_EditText___android_content_Context_android_util_AttributeSet :(android_content_Context*)n1 :(android_util_AttributeSet*)n2;
- (void) initEditText___android_content_Context_android_util_AttributeSet :(android_content_Context*)n1 :(android_util_AttributeSet*)n2;
- (java_lang_Object*) getText__;
- (void) setText___java_lang_String :(java_lang_String*)n1;
- (void) setLines___int :(int)n1;
- (void) setHint___java_lang_CharSequence :(java_lang_CharSequence*)n1;
- (org_xmlvm_iphone_UIView*) xmlvmCreateUIView___android_util_AttributeSet :(android_util_AttributeSet*)n1;
- (org_xmlvm_iphone_UITextField*) getUITextField__;
- (void) parseEditTextAttributes___android_util_AttributeSet :(android_util_AttributeSet*)n1;
- (org_xmlvm_iphone_UIFont*) xmlvmGetUIFont__;
- (int) xmlvmGetInsetsX__;
- (int) xmlvmGetInsetsY__;

@end
