#import "java_io_File.h"
#import "java_io_FileDescriptor.h"
#import "java_io_FileNotFoundException.h"
#import "java_io_IOException.h"
#import "java_io_FileInputStream.h"

// Automatically generated by xmlvm2obj. Do not edit!


#import "android_content_res_AssetFileDescriptor.h"


@implementation android_content_res_AssetFileDescriptor;

+ (void) initialize
{
    if (strcmp(class_getName(self), "android_content_res_AssetFileDescriptor") == 0) {
    }
}

- (id) init
{
    if (self = [super init]) {
        file_java_io_File = (id) [NSNull null];
    }
    return self;
}

- (void) dealloc
{
    [file_java_io_File release];
    [super dealloc];
}

- (void) __init_android_content_res_AssetFileDescriptor___java_io_File :(java_io_File*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    _r1.o = n1;
    [((java_lang_Object*) _r0.o) __init_java_lang_Object__];
    [_r1.o retain];
    [((android_content_res_AssetFileDescriptor*) _r0.o)->file_java_io_File release];
    ((android_content_res_AssetFileDescriptor*) _r0.o)->file_java_io_File = _r1.o;
    [_pool release];
    return;
}


- (java_io_FileDescriptor*) getFileDescriptor__
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
    _r3.o = [NSNull null];
    @try {
    _r1.o = [[[java_io_FileInputStream alloc] init] autorelease];
    _r2.o = [[((android_content_res_AssetFileDescriptor*) _r4.o)->file_java_io_File retain] autorelease];
    [((java_io_FileInputStream*) _r1.o) __init_java_io_FileInputStream___java_io_File:_r2.o];
    _r1.o = [((java_io_FileInputStream*) _r1.o) getFD__];
    [_r1.o autorelease];
}
    @catch (java_io_FileNotFoundException* ex) {
        _ex = ex;
        goto label13;
    }
    @catch (java_io_IOException* ex) {
        _ex = ex;
        goto label17;
    }
    label12:;
    [_r1.o retain];
    [_pool release];
    return _r1.o;
    label13:;
    _r1.o = _ex;
    _r0 = _r1;
    _r1 = _r3;
    goto label12;
    label17:;
    _r1.o = _ex;
    _r0 = _r1;
    _r1 = _r3;
    goto label12;
}


- (long) getStartOffset__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r2.o = self;
    _r0.l = 0;
    [_pool release];
    return _r0.l;
}


- (long) getLength__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r2.o = self;
    _r0.o = [[((android_content_res_AssetFileDescriptor*) _r2.o)->file_java_io_File retain] autorelease];
    _r0.l = [((java_io_File*) _r0.o) length__];
    [_pool release];
    return _r0.l;
}



@end

