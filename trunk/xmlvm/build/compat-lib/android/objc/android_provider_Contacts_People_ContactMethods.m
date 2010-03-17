#import "android_provider_BaseColumns.h"
#import "java_lang_String.h"
#import "android_provider_Contacts_PeopleColumns.h"
#import "android_provider_Contacts_ContactMethodsColumns.h"

// Automatically generated by xmlvm2obj. Do not edit!


#import "android_provider_Contacts_People_ContactMethods.h"

java_lang_String* _STATIC_android_provider_Contacts_People_ContactMethods_CONTENT_DIRECTORY = @"contact_methods";
java_lang_String* _STATIC_android_provider_Contacts_People_ContactMethods_DEFAULT_SORT_ORDER = @"data ASC";

@implementation android_provider_Contacts_People_ContactMethods;

+ (void) initialize
{
    if (strcmp(class_getName(self), "android_provider_Contacts_People_ContactMethods") == 0) {
        _STATIC_android_provider_Contacts_People_ContactMethods_CONTENT_DIRECTORY = (id) [NSNull null];
        _STATIC_android_provider_Contacts_People_ContactMethods_DEFAULT_SORT_ORDER = (id) [NSNull null];
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

+ (java_lang_String*) _GET_CONTENT_DIRECTORY
{
    return [[_STATIC_android_provider_Contacts_People_ContactMethods_CONTENT_DIRECTORY retain] autorelease];
}

+ (void) _PUT_CONTENT_DIRECTORY: (java_lang_String*) v
{
    [v retain];
    [_STATIC_android_provider_Contacts_People_ContactMethods_CONTENT_DIRECTORY release];
    _STATIC_android_provider_Contacts_People_ContactMethods_CONTENT_DIRECTORY = v;
}

+ (java_lang_String*) _GET_DEFAULT_SORT_ORDER
{
    return [[_STATIC_android_provider_Contacts_People_ContactMethods_DEFAULT_SORT_ORDER retain] autorelease];
}

+ (void) _PUT_DEFAULT_SORT_ORDER: (java_lang_String*) v
{
    [v retain];
    [_STATIC_android_provider_Contacts_People_ContactMethods_DEFAULT_SORT_ORDER release];
    _STATIC_android_provider_Contacts_People_ContactMethods_DEFAULT_SORT_ORDER = v;
}

- (void) __init_android_provider_Contacts_People_ContactMethods__
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

