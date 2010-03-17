#import "android_widget_Toast_1.h"
#import "java_lang_Runnable.h"
#import "android_view_ViewGroup_LayoutParams.h"
#import "android_util_Log.h"
#import "android_view_View.h"
#import "java_lang_String.h"
#import "android_widget_TextView.h"
#import "android_internal_ActivityManager.h"
#import "java_lang_CharSequence.h"
#import "android_view_Window.h"
#import "android_app_Activity.h"
#import "android_content_Context.h"
#import "android_os_Handler.h"
#import "android_widget_RelativeLayout_LayoutParams.h"
#import "android_widget_RelativeLayout.h"
#import "android_content_res_Resources.h"

// Automatically generated by xmlvm2obj. Do not edit!


#import "android_widget_Toast.h"

int _STATIC_android_widget_Toast_LENGTH_LONG = 1;
int _STATIC_android_widget_Toast_LENGTH_SHORT = 0;

@implementation android_widget_Toast;

+ (void) initialize
{
    if (strcmp(class_getName(self), "android_widget_Toast") == 0) {
    }
}

- (id) init
{
    if (self = [super init]) {
        activity_android_app_Activity = (id) [NSNull null];
        view_android_view_View = (id) [NSNull null];
        handler_android_os_Handler = (id) [NSNull null];
        runnable_java_lang_Runnable = (id) [NSNull null];
    }
    return self;
}

- (void) dealloc
{
    [activity_android_app_Activity release];
    [view_android_view_View release];
    [handler_android_os_Handler release];
    [runnable_java_lang_Runnable release];
    [super dealloc];
}

+ (int) _GET_LENGTH_LONG
{
    return _STATIC_android_widget_Toast_LENGTH_LONG;
}

+ (void) _PUT_LENGTH_LONG: (int) v
{
    _STATIC_android_widget_Toast_LENGTH_LONG = v;
}

+ (int) _GET_LENGTH_SHORT
{
    return _STATIC_android_widget_Toast_LENGTH_SHORT;
}

+ (void) _PUT_LENGTH_SHORT: (int) v
{
    _STATIC_android_widget_Toast_LENGTH_SHORT = v;
}

- (void) __init_android_widget_Toast___android_content_Context :(android_content_Context*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = self;
    _r2.o = n1;
    [((java_lang_Object*) _r1.o) __init_java_lang_Object__];
    _r0.i = 0;
    ((android_widget_Toast*) _r1.o)->duration_int = _r0.i;
    _r0.o = [android_internal_ActivityManager getTopActivity__];
    [_r0.o autorelease];
    [_r0.o retain];
    [((android_widget_Toast*) _r1.o)->activity_android_app_Activity release];
    ((android_widget_Toast*) _r1.o)->activity_android_app_Activity = _r0.o;
    [_pool release];
    return;
}


+ (android_widget_Toast*) makeText___android_content_Context_int_int :(android_content_Context*)n1 :(int)n2 :(int)n3
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r2.o = n1;
    _r3.i = n2;
    _r4.i = n3;
    _r1.o = [((android_content_Context*) _r2.o) getResources__];
    [_r1.o autorelease];
    _r0.o = [((android_content_res_Resources*) _r1.o) getText___int:_r3.i];
    [_r0.o autorelease];
    _r1.o = [android_widget_Toast makeText___android_content_Context_java_lang_CharSequence_int:_r2.o:_r0.o:_r4.i];
    [_r1.o autorelease];
    [_r1.o retain];
    [_pool release];
    return _r1.o;
}


+ (android_widget_Toast*) makeText___android_content_Context_java_lang_CharSequence_int :(android_content_Context*)n1 :(java_lang_CharSequence*)n2 :(int)n3
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r2.o = n1;
    _r3.o = n2;
    _r4.i = n3;
    _r1.o = [[[android_widget_Toast alloc] init] autorelease];
    [((android_widget_Toast*) _r1.o) __init_android_widget_Toast___android_content_Context:_r2.o];
    [((android_widget_Toast*) _r1.o) setDuration___int:_r4.i];
    _r0.o = [[[android_widget_TextView alloc] init] autorelease];
    [((android_widget_TextView*) _r0.o) __init_android_widget_TextView___android_content_Context:_r2.o];
    [((android_widget_Toast*) _r1.o) setView___android_view_View:_r0.o];
    [((android_widget_Toast*) _r1.o) setText___java_lang_CharSequence:_r3.o];
    [_r1.o retain];
    [_pool release];
    return _r1.o;
}


- (void) setText___java_lang_CharSequence :(java_lang_CharSequence*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    _r1.o = n1;
    _r0.o = [[((android_widget_Toast*) _r0.o)->view_android_view_View retain] autorelease];
    _r0.o = _r0.o;
    [((android_widget_TextView*) _r0.o) setText___java_lang_CharSequence:_r1.o];
    [_pool release];
    return;
}


- (void) setView___android_view_View :(android_view_View*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    _r1.o = n1;
    [_r1.o retain];
    [((android_widget_Toast*) _r0.o)->view_android_view_View release];
    ((android_widget_Toast*) _r0.o)->view_android_view_View = _r1.o;
    [_pool release];
    return;
}


- (void) setGravity___int_int_int :(int)n1 :(int)n2 :(int)n3
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    XMLVMElem _r5;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r2.o = self;
    _r3.i = n1;
    _r4.i = n2;
    _r5.i = n3;
    _r0.o = @"xmlvm";
    _r1.o = @"Toast.setGravity() not implemented";
    [android_util_Log w___java_lang_String_java_lang_String:_r0.o:_r1.o];
    [_pool release];
    return;
}


- (void) setDuration___int :(int)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    _r1.i = n1;
    ((android_widget_Toast*) _r0.o)->duration_int = _r1.i;
    [_pool release];
    return;
}


- (void) show__
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
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r7.o = self;
    _r5.i = -1;
    _r4.i = -2;
    _r0.o = [[[android_widget_RelativeLayout alloc] init] autorelease];
    _r3.o = [[((android_widget_Toast*) _r7.o)->activity_android_app_Activity retain] autorelease];
    [((android_widget_RelativeLayout*) _r0.o) __init_android_widget_RelativeLayout___android_content_Context:_r3.o];
    _r1.o = [[[android_widget_RelativeLayout_LayoutParams alloc] init] autorelease];
    [((android_widget_RelativeLayout_LayoutParams*) _r1.o) __init_android_widget_RelativeLayout_LayoutParams___int_int:_r4.i:_r4.i];
    _r3.i = 14;
    [((android_widget_RelativeLayout_LayoutParams*) _r1.o) addRule___int_int:_r3.i:_r5.i];
    _r3.i = 15;
    [((android_widget_RelativeLayout_LayoutParams*) _r1.o) addRule___int_int:_r3.i:_r5.i];
    _r3.o = [[((android_widget_Toast*) _r7.o)->view_android_view_View retain] autorelease];
    [((android_widget_RelativeLayout*) _r0.o) addView___android_view_View_android_view_ViewGroup_LayoutParams:_r3.o:_r1.o];
    _r3.o = [[((android_widget_Toast*) _r7.o)->activity_android_app_Activity retain] autorelease];
    _r2.o = [((android_app_Activity*) _r3.o) getWindow__];
    [_r2.o autorelease];
    [((android_view_Window*) _r2.o) xmlvmShowToast___android_view_View:_r0.o];
    _r3.o = [[[android_os_Handler alloc] init] autorelease];
    [((android_os_Handler*) _r3.o) __init_android_os_Handler__];
    [_r3.o retain];
    [((android_widget_Toast*) _r7.o)->handler_android_os_Handler release];
    ((android_widget_Toast*) _r7.o)->handler_android_os_Handler = _r3.o;
    _r3.o = [[[android_widget_Toast_1 alloc] init] autorelease];
    [((android_widget_Toast_1*) _r3.o) __init_android_widget_Toast_1___android_widget_Toast_android_view_Window:_r7.o:_r2.o];
    [_r3.o retain];
    [((android_widget_Toast*) _r7.o)->runnable_java_lang_Runnable release];
    ((android_widget_Toast*) _r7.o)->runnable_java_lang_Runnable = _r3.o;
    _r3.o = [[((android_widget_Toast*) _r7.o)->handler_android_os_Handler retain] autorelease];
    _r4.o = [[((android_widget_Toast*) _r7.o)->runnable_java_lang_Runnable retain] autorelease];
    _r5.i = ((android_widget_Toast*) _r7.o)->duration_int;
    if (_r5.i != 0) goto label66;
    _r5.l = 2000;
    label62:;
    [((android_os_Handler*) _r3.o) postDelayed___java_lang_Runnable_long:_r4.o:_r5.l];
    [_pool release];
    return;
    label66:;
    _r5.l = 4000;
    goto label62;
}


- (void) cancel__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r3.o = self;
    _r1.o = [[((android_widget_Toast*) _r3.o)->handler_android_os_Handler retain] autorelease];
    _r2.o = [[((android_widget_Toast*) _r3.o)->runnable_java_lang_Runnable retain] autorelease];
    [((android_os_Handler*) _r1.o) removeCallbacks___java_lang_Runnable:_r2.o];
    _r1.o = [[((android_widget_Toast*) _r3.o)->activity_android_app_Activity retain] autorelease];
    _r0.o = [((android_app_Activity*) _r1.o) getWindow__];
    [_r0.o autorelease];
    [((android_view_Window*) _r0.o) xmlvmRemoveToast__];
    [_pool release];
    return;
}



@end

