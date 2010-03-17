#import "org_xmlvm_iphone_CGRect.h"
#import "android_util_Log.h"
#import "android_text_TextWatcher.h"
#import "java_lang_StringBuilder.h"
#import "java_lang_CharSequence.h"
#import "android_internal_Assert.h"
#import "org_xmlvm_iphone_UIFont.h"
#import "org_xmlvm_iphone_CGSize.h"
#import "org_xmlvm_iphone_UIColor.h"
#import "org_xmlvm_iphone_NSString.h"
#import "android_content_res_Resources.h"
#import "org_xmlvm_iphone_UILabel.h"
#import "java_lang_Object.h"
#import "android_view_ViewGroup_LayoutParams.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_UIView.h"
#import "android_content_Context.h"
#import "android_util_AttributeSet.h"
#import "android_view_View_MeasureSpec.h"
#import "java_lang_Math.h"
#import "android_widget_AbsoluteLayout_LayoutParams.h"
#import "android_graphics_Typeface.h"
#import "android_internal_XMLVMTheme.h"

// Automatically generated by xmlvm2obj. Do not edit!


#import "android_widget_TextView.h"

int _STATIC_android_widget_TextView_INSETS_X = 0;
int _STATIC_android_widget_TextView_INSETS_Y = 0;

@implementation android_widget_TextView;

+ (void) initialize
{
    if (strcmp(class_getName(self), "android_widget_TextView") == 0) {
    }
}

- (id) init
{
    if (self = [super init]) {
        text_java_lang_String = (id) [NSNull null];
    }
    return self;
}

- (void) dealloc
{
    [text_java_lang_String release];
    [super dealloc];
}

+ (int) _GET_INSETS_X
{
    return _STATIC_android_widget_TextView_INSETS_X;
}

+ (void) _PUT_INSETS_X: (int) v
{
    _STATIC_android_widget_TextView_INSETS_X = v;
}

+ (int) _GET_INSETS_Y
{
    return _STATIC_android_widget_TextView_INSETS_Y;
}

+ (void) _PUT_INSETS_Y: (int) v
{
    _STATIC_android_widget_TextView_INSETS_Y = v;
}

- (void) __init_android_widget_TextView___android_content_Context :(android_content_Context*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = self;
    _r2.o = n1;
    [((android_view_View*) _r1.o) __init_android_view_View___android_content_Context:_r2.o];
    _r0.o = @"";
    [_r0.o retain];
    [((android_widget_TextView*) _r1.o)->text_java_lang_String release];
    ((android_widget_TextView*) _r1.o)->text_java_lang_String = _r0.o;
    _r0.o = [NSNull null];
    [((android_widget_TextView*) _r1.o) initTextView___android_content_Context_android_util_AttributeSet:_r2.o:_r0.o];
    [_pool release];
    return;
}


- (void) __init_android_widget_TextView___android_content_Context_android_util_AttributeSet :(android_content_Context*)n1 :(android_util_AttributeSet*)n2
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = self;
    _r2.o = n1;
    _r3.o = n2;
    [((android_view_View*) _r1.o) __init_android_view_View___android_content_Context_android_util_AttributeSet:_r2.o:_r3.o];
    _r0.o = @"";
    [_r0.o retain];
    [((android_widget_TextView*) _r1.o)->text_java_lang_String release];
    ((android_widget_TextView*) _r1.o)->text_java_lang_String = _r0.o;
    [((android_widget_TextView*) _r1.o) initTextView___android_content_Context_android_util_AttributeSet:_r2.o:_r3.o];
    [_pool release];
    return;
}


- (void) initTextView___android_content_Context_android_util_AttributeSet :(android_content_Context*)n1 :(android_util_AttributeSet*)n2
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = self;
    _r2.o = n1;
    _r3.o = n2;
    if (_r3.o == [NSNull null]) goto label11;
    _r0.i = [((android_util_AttributeSet*) _r3.o) getAttributeCount__];
    if (_r0.i <= 0) goto label11;
    [((android_widget_TextView*) _r1.o) parseTextViewAttributes___android_util_AttributeSet:_r3.o];
    label11:;
    [_pool release];
    return;
}


- (void) setLayoutParams___android_view_ViewGroup_LayoutParams :(android_view_ViewGroup_LayoutParams*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    XMLVMElem _r5;
    XMLVMElem _r6;
    XMLVMElem _r7;
    XMLVMElem _r8;
    XMLVMElem _r9;
    XMLVMElem _r10;
    XMLVMElem _r11;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r10.o = self;
    _r11.o = n1;
    _r5.i = -2;
    [_r11.o retain];
    [((android_widget_TextView*) _r10.o)->layoutParams_android_view_ViewGroup_LayoutParams release];
    ((android_widget_TextView*) _r10.o)->layoutParams_android_view_ViewGroup_LayoutParams = _r11.o;
    _r4.i = (_r11.o != [NSNull null] && 
        ([_r11.o isKindOfClass: objc_getClass("android_widget_AbsoluteLayout_LayoutParams")] ||
         [_r11.o conformsToProtocol: objc_getProtocol("android_widget_AbsoluteLayout_LayoutParams")])) ? 1 : 0;
    if (_r4.i == 0) goto label57;
    _r2.o = [((android_widget_TextView*) _r10.o) xmlvmGetTextSize__];
    [_r2.o autorelease];
    _r4.i = ((android_view_ViewGroup_LayoutParams*) _r11.o)->width_int;
    if (_r4.i != _r5.i) goto label58;
    _r4.f = ((org_xmlvm_iphone_CGSize*) _r2.o)->width_float;
    _r4.i = (int) _r4.f;
    _r4.i = _r4.i + 0;
    _r3 = _r4;
    label21:;
    _r4.i = ((android_view_ViewGroup_LayoutParams*) _r11.o)->height_int;
    if (_r4.i != _r5.i) goto label62;
    _r4.f = ((org_xmlvm_iphone_CGSize*) _r2.o)->height_float;
    _r4.i = (int) _r4.f;
    _r4.i = _r4.i + 0;
    _r1 = _r4;
    label31:;
    _r5.o = [((android_widget_TextView*) _r10.o) xmlvmGetUIView__];
    [_r5.o autorelease];
    _r6.o = [[[org_xmlvm_iphone_CGRect alloc] init] autorelease];
    _r0 = _r11;
    _r0.o = _r0.o;
    _r4 = _r0;
    _r4.i = ((android_widget_AbsoluteLayout_LayoutParams*) _r4.o)->x_int;
    _r4.f = (float) _r4.i;
    _r11.o = _r11.o;
    _r7.i = ((android_widget_AbsoluteLayout_LayoutParams*) _r11.o)->y_int;
    _r7.f = (float) _r7.i;
    _r8.f = (float) _r3.i;
    _r9.f = (float) _r1.i;
    [((org_xmlvm_iphone_CGRect*) _r6.o) __init_org_xmlvm_iphone_CGRect___float_float_float_float:_r4.f:_r7.f:_r8.f:_r9.f];
    [((org_xmlvm_iphone_UIView*) _r5.o) setFrame___org_xmlvm_iphone_CGRect:_r6.o];
    label57:;
    [_pool release];
    return;
    label58:;
    _r4.i = ((android_view_ViewGroup_LayoutParams*) _r11.o)->width_int;
    _r3 = _r4;
    goto label21;
    label62:;
    _r4.i = ((android_view_ViewGroup_LayoutParams*) _r11.o)->height_int;
    _r1 = _r4;
    goto label31;
}


- (void) setText___int :(int)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r2.o = self;
    _r3.i = n1;
    _r1.o = [((android_widget_TextView*) _r2.o) getContext__];
    [_r1.o autorelease];
    _r1.o = [((android_content_Context*) _r1.o) getResources__];
    [_r1.o autorelease];
    _r0.o = [((android_content_res_Resources*) _r1.o) getText___int:_r3.i];
    [_r0.o autorelease];
    [((android_widget_TextView*) _r2.o) setText___java_lang_String:_r0.o];
    [_pool release];
    return;
}


- (void) setText___java_lang_String :(java_lang_String*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = self;
    _r2.o = n1;
    [_r2.o retain];
    [((android_widget_TextView*) _r1.o)->text_java_lang_String release];
    ((android_widget_TextView*) _r1.o)->text_java_lang_String = _r2.o;
    _r0.o = [((android_widget_TextView*) _r1.o) getUILabel__];
    [_r0.o autorelease];
    [((org_xmlvm_iphone_UILabel*) _r0.o) setText___java_lang_String:_r2.o];
    [((android_widget_TextView*) _r1.o) requestLayout__];
    [_pool release];
    return;
}


- (void) setText___java_lang_CharSequence :(java_lang_CharSequence*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = self;
    _r2.o = n1;
    _r0.o = [((java_lang_Object*) _r2.o) toString__];
    [_r0.o autorelease];
    [((android_widget_TextView*) _r1.o) setText___java_lang_String:_r0.o];
    [_pool release];
    return;
}


- (void) append___java_lang_CharSequence :(java_lang_CharSequence*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r2.o = self;
    _r3.o = n1;
    _r0.o = [[[java_lang_StringBuilder alloc] init] autorelease];
    [((java_lang_StringBuilder*) _r0.o) __init_java_lang_StringBuilder__];
    _r1.o = [[((android_widget_TextView*) _r2.o)->text_java_lang_String retain] autorelease];
    _r0.o = [((java_lang_StringBuilder*) _r0.o) append___java_lang_String:_r1.o];
    [_r0.o autorelease];
    _r1.o = [((java_lang_Object*) _r3.o) toString__];
    [_r1.o autorelease];
    _r0.o = [((java_lang_StringBuilder*) _r0.o) append___java_lang_String:_r1.o];
    [_r0.o autorelease];
    _r0.o = [((java_lang_StringBuilder*) _r0.o) toString__];
    [_r0.o autorelease];
    [((android_widget_TextView*) _r2.o) setText___java_lang_String:_r0.o];
    [_pool release];
    return;
}


- (void) setTextSize___float :(float)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r3.o = self;
    _r4.f = n1;
    _r1.o = [((android_widget_TextView*) _r3.o) getUILabel__];
    [_r1.o autorelease];
    _r0.o = [((org_xmlvm_iphone_UILabel*) _r1.o) getFont__];
    [_r0.o autorelease];
    if (_r0.o != [NSNull null]) goto label22;
    _r1.o = [((android_widget_TextView*) _r3.o) getUILabel__];
    [_r1.o autorelease];
    _r2.o = [org_xmlvm_iphone_UIFont systemFontOfSize___float:_r4.f];
    [_r2.o autorelease];
    [((org_xmlvm_iphone_UILabel*) _r1.o) setFont___org_xmlvm_iphone_UIFont:_r2.o];
    label21:;
    [_pool release];
    return;
    label22:;
    _r1.o = [((android_widget_TextView*) _r3.o) getUILabel__];
    [_r1.o autorelease];
    _r2.o = [((org_xmlvm_iphone_UIFont*) _r0.o) fontWithSize___float:_r4.f];
    [_r2.o autorelease];
    [((org_xmlvm_iphone_UILabel*) _r1.o) setFont___org_xmlvm_iphone_UIFont:_r2.o];
    goto label21;
}


- (void) setTypeface___android_graphics_Typeface_int :(android_graphics_Typeface*)n1 :(int)n2
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r2.o = self;
    _r3.o = n1;
    _r4.i = n2;
    _r0.o = @"xmlvm";
    _r1.o = @"TextView.setTypeface() not implemented";
    [android_util_Log w___java_lang_String_java_lang_String:_r0.o:_r1.o];
    [_pool release];
    return;
}


- (org_xmlvm_iphone_UIView*) xmlvmCreateUIView___android_util_AttributeSet :(android_util_AttributeSet*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r2.o = self;
    _r3.o = n1;
    _r0.o = [[[org_xmlvm_iphone_UILabel alloc] init] autorelease];
    [((org_xmlvm_iphone_UILabel*) _r0.o) __init_org_xmlvm_iphone_UILabel__];
    _r1.i = [android_internal_XMLVMTheme getTheme__];
    if (_r1.i != 0) goto label21;
    _r1.o = [org_xmlvm_iphone_UIColor _GET_whiteColor];
    [((org_xmlvm_iphone_UILabel*) _r0.o) setTextColor___org_xmlvm_iphone_UIColor:_r1.o];
    _r1.o = [org_xmlvm_iphone_UIColor _GET_clearColor];
    [((org_xmlvm_iphone_UILabel*) _r0.o) setBackgroundColor___org_xmlvm_iphone_UIColor:_r1.o];
    label21:;
    [_r0.o retain];
    [_pool release];
    return _r0.o;
}


- (org_xmlvm_iphone_UILabel*) getUILabel__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    _r0.o = [((android_widget_TextView*) _r0.o) xmlvmGetUIView__];
    [_r0.o autorelease];
    _r0.o = _r0.o;
    [_r0.o retain];
    [_pool release];
    return _r0.o;
}


- (void) parseTextViewAttributes___android_util_AttributeSet :(android_util_AttributeSet*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r3.o = self;
    _r4.o = n1;
    _r1.i = 1;
    [((android_widget_TextView*) _r3.o) setIgnoreRequestLayout___boolean:_r1.i];
    _r1.o = [NSNull null];
    _r2.o = @"text";
    _r0.o = [((android_util_AttributeSet*) _r4.o) getAttributeValue___java_lang_String_java_lang_String:_r1.o:_r2.o];
    [_r0.o autorelease];
    if (_r0.o == [NSNull null]) goto label22;
    _r1 = _r0;
    label14:;
    [((android_widget_TextView*) _r3.o) setText___java_lang_String:_r1.o];
    _r1.i = 0;
    [((android_widget_TextView*) _r3.o) setIgnoreRequestLayout___boolean:_r1.i];
    [_pool release];
    return;
    label22:;
    _r1.o = @"";
    goto label14;
}


- (void) onMeasure___int_int :(int)n1 :(int)n2
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    XMLVMElem _r5;
    XMLVMElem _r6;
    XMLVMElem _r7;
    XMLVMElem _r8;
    XMLVMElem _r9;
    XMLVMElem _r10;
    XMLVMElem _r11;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r9.o = self;
    _r10.i = n1;
    _r11.i = n2;
    _r8.i = 1073741824;
    _r2.i = [((android_widget_TextView*) _r9.o) getSuggestedMinimumWidth__];
    _r1.i = [((android_widget_TextView*) _r9.o) getSuggestedMinimumHeight__];
    _r3.o = [((android_widget_TextView*) _r9.o) xmlvmGetTextSize__];
    [_r3.o autorelease];
    _r5.i = [android_view_View_MeasureSpec getMode___int:_r10.i];
    if (_r5.i != _r8.i) goto label48;
    _r5.i = [android_view_View_MeasureSpec getSize___int:_r10.i];
    _r4 = _r5;
    label25:;
    _r5.i = [android_view_View_MeasureSpec getMode___int:_r11.i];
    if (_r5.i != _r8.i) goto label69;
    _r5.i = [android_view_View_MeasureSpec getSize___int:_r11.i];
    _r0 = _r5;
    label36:;
    _r5.i = [java_lang_Math max___int_int:_r4.i:_r2.i];
    _r6.i = [java_lang_Math max___int_int:_r0.i:_r1.i];
    [((android_widget_TextView*) _r9.o) setMeasuredDimension___int_int:_r5.i:_r6.i];
    [_pool release];
    return;
    label48:;
    _r5.i = [((android_widget_TextView*) _r9.o) xmlvmGetInsetsX__];
    _r5.i = _r5.i * 2;
    _r6.i = ((android_widget_TextView*) _r9.o)->paddingLeft_int;
    _r7.i = ((android_widget_TextView*) _r9.o)->paddingRight_int;
    _r6.i = _r6.i + _r7.i;
    _r5.i = [java_lang_Math max___int_int:_r5.i:_r6.i];
    _r6.f = ((org_xmlvm_iphone_CGSize*) _r3.o)->width_float;
    _r6.i = (int) _r6.f;
    _r5.i = _r5.i + _r6.i;
    _r4 = _r5;
    goto label25;
    label69:;
    _r5.i = [((android_widget_TextView*) _r9.o) xmlvmGetInsetsY__];
    _r5.i = _r5.i * 2;
    _r6.i = ((android_widget_TextView*) _r9.o)->paddingTop_int;
    _r7.i = ((android_widget_TextView*) _r9.o)->paddingBottom_int;
    _r6.i = _r6.i + _r7.i;
    _r5.i = [java_lang_Math max___int_int:_r5.i:_r6.i];
    _r6.f = ((org_xmlvm_iphone_CGSize*) _r3.o)->height_float;
    _r6.i = (int) _r6.f;
    _r5.i = _r5.i + _r6.i;
    _r0 = _r5;
    goto label36;
}


- (org_xmlvm_iphone_CGSize*) xmlvmGetTextSize__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r4.o = self;
    _r0.o = [((android_widget_TextView*) _r4.o) xmlvmGetUIFont__];
    [_r0.o autorelease];
    if (_r0.o != [NSNull null]) goto label14;
    _r3.f = [org_xmlvm_iphone_UIFont labelFontSize__];
    _r0.o = [org_xmlvm_iphone_UIFont systemFontOfSize___float:_r3.f];
    [_r0.o autorelease];
    label14:;
    _r3.o = @"M";
    _r1.o = [org_xmlvm_iphone_NSString sizeWithFont___java_lang_String_org_xmlvm_iphone_UIFont:_r3.o:_r0.o];
    [_r1.o autorelease];
    _r3.o = [[((android_widget_TextView*) _r4.o)->text_java_lang_String retain] autorelease];
    _r2.o = [org_xmlvm_iphone_NSString sizeWithFont___java_lang_String_org_xmlvm_iphone_UIFont:_r3.o:_r0.o];
    [_r2.o autorelease];
    _r3.o = [[((android_widget_TextView*) _r4.o)->text_java_lang_String retain] autorelease];
    _r3.i = [((java_lang_String*) _r3.o) length__];
    if (_r3.i != 0) goto label38;
    _r3.f = ((org_xmlvm_iphone_CGSize*) _r1.o)->height_float;
    ((org_xmlvm_iphone_CGSize*) _r2.o)->height_float = _r3.f;
    label38:;
    [_r2.o retain];
    [_pool release];
    return _r2.o;
}


- (org_xmlvm_iphone_UIFont*) xmlvmGetUIFont__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = self;
    _r1.o = [((android_widget_TextView*) _r1.o) xmlvmGetUIView__];
    [_r1.o autorelease];
    _r1.o = _r1.o;
    _r0.o = [((org_xmlvm_iphone_UILabel*) _r1.o) getFont__];
    [_r0.o autorelease];
    [_r0.o retain];
    [_pool release];
    return _r0.o;
}


- (int) xmlvmGetInsetsX__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = self;
    _r0.i = 0;
    [_pool release];
    return _r0.i;
}


- (int) xmlvmGetInsetsY__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = self;
    _r0.i = 0;
    [_pool release];
    return _r0.i;
}


- (void) addTextChangedListener___android_text_TextWatcher :(android_text_TextWatcher*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    _r1.o = n1;
    [android_internal_Assert NOT_IMPLEMENTED__];
    [_pool release];
    return;
}



@end

