
// Automatically generated by xmlvm2obj. Do not edit!


#import "android_location_LocationProvider.h"

int _STATIC_android_location_LocationProvider_OUT_OF_SERVICE = 0;
int _STATIC_android_location_LocationProvider_TEMPORARILY_UNAVAILABLE = 1;
int _STATIC_android_location_LocationProvider_AVAILABLE = 2;

@implementation android_location_LocationProvider;

+ (void) initialize
{
    if (strcmp(class_getName(self), "android_location_LocationProvider") == 0) {
    }
}

- (id) init
{
    if (self = [super init]) {
    }
    return self;
}

- (void) dealloc
{
    [super dealloc];
}

+ (int) _GET_OUT_OF_SERVICE
{
    return _STATIC_android_location_LocationProvider_OUT_OF_SERVICE;
}

+ (void) _PUT_OUT_OF_SERVICE: (int) v
{
    _STATIC_android_location_LocationProvider_OUT_OF_SERVICE = v;
}

+ (int) _GET_TEMPORARILY_UNAVAILABLE
{
    return _STATIC_android_location_LocationProvider_TEMPORARILY_UNAVAILABLE;
}

+ (void) _PUT_TEMPORARILY_UNAVAILABLE: (int) v
{
    _STATIC_android_location_LocationProvider_TEMPORARILY_UNAVAILABLE = v;
}

+ (int) _GET_AVAILABLE
{
    return _STATIC_android_location_LocationProvider_AVAILABLE;
}

+ (void) _PUT_AVAILABLE: (int) v
{
    _STATIC_android_location_LocationProvider_AVAILABLE = v;
}

- (void) __init_android_location_LocationProvider__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    [((java_lang_Object*) _r0.o) __init_java_lang_Object__];
    [_pool release];
    return;
}



@end

