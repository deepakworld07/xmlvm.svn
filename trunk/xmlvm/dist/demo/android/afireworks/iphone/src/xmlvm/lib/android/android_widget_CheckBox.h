#import "xmlvm.h"
#import "android_widget_CompoundButton.h"

// For circular include:
@class org_xmlvm_iphone_CGRect;
@class java_lang_Object;
@class android_util_Log;
@class android_widget_CheckBox;
@class android_view_ViewGroup_LayoutParams;
@class java_lang_String;
@class org_xmlvm_iphone_UIView;
@class android_widget_CompoundButton;
@class android_content_Context;
@class org_xmlvm_iphone_UISwitch;
@class android_util_AttributeSet;
@class android_widget_AbsoluteLayout_LayoutParams;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface android_widget_CheckBox : android_widget_CompoundButton
{

}
+ (void) initialize;
- (id) init;
- (void) __init_android_widget_CheckBox___android_content_Context :(android_content_Context*)n1;
- (void) setLayoutParams___android_view_ViewGroup_LayoutParams :(android_view_ViewGroup_LayoutParams*)n1;
- (int) isChecked__;
- (void) setChecked___boolean :(int)n1;
- (void) setSelected___boolean :(int)n1;
- (org_xmlvm_iphone_UIView*) xmlvmCreateUIView___android_util_AttributeSet :(android_util_AttributeSet*)n1;
- (org_xmlvm_iphone_UISwitch*) getUISwitch__;
- (void) onMeasure___int_int :(int)n1 :(int)n2;
- (void) xmlvmUpdateUIView___boolean :(int)n1;

@end

