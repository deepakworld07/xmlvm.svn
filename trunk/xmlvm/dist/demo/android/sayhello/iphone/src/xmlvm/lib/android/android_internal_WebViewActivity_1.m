#import "android_internal_WebViewActivity.h"
#import "android_view_View_OnClickListener.h"
#import "android_view_View.h"

// Automatically generated by xmlvm2obj. Do not edit!


#import "android_internal_WebViewActivity_1.h"


@implementation android_internal_WebViewActivity_1;

+ (void) initialize
{
    if (strcmp(class_getName(self), "android_internal_WebViewActivity_1") == 0) {
    }
}

- (id) init
{
    if (self = [super init]) {
        this_0_android_internal_WebViewActivity = (id) [NSNull null];
    }
    return self;
}

- (void) dealloc
{
    [this_0_android_internal_WebViewActivity release];
    [super dealloc];
}

- (void) __init_android_internal_WebViewActivity_1___android_internal_WebViewActivity :(android_internal_WebViewActivity*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    _r1.o = n1;
    [_r1.o retain];
    [((android_internal_WebViewActivity_1*) _r0.o)->this_0_android_internal_WebViewActivity release];
    ((android_internal_WebViewActivity_1*) _r0.o)->this_0_android_internal_WebViewActivity = _r1.o;
    [((java_lang_Object*) _r0.o) __init_java_lang_Object__];
    [_pool release];
    return;
}


- (void) onClick___android_view_View :(android_view_View*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = self;
    _r2.o = n1;
    _r0.o = [[((android_internal_WebViewActivity_1*) _r1.o)->this_0_android_internal_WebViewActivity retain] autorelease];
    [((android_internal_WebViewActivity*) _r0.o) finish__];
    [_pool release];
    return;
}



@end

