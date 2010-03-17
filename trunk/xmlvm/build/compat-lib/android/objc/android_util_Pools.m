#import "android_util_FinitePool.h"
#import "android_util_SynchronizedPool.h"
#import "android_util_Pool.h"
#import "android_util_PoolableManager.h"

// Automatically generated by xmlvm2obj. Do not edit!


#import "android_util_Pools.h"


@implementation android_util_Pools;

+ (void) initialize
{
    if (strcmp(class_getName(self), "android_util_Pools") == 0) {
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

- (void) __init_android_util_Pools__
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


+ (android_util_Pool*) simplePool___android_util_PoolableManager :(android_util_PoolableManager*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = n1;
    _r0.o = [[[android_util_FinitePool alloc] init] autorelease];
    [((android_util_FinitePool*) _r0.o) __init_android_util_FinitePool___android_util_PoolableManager:_r1.o];
    [_r0.o retain];
    [_pool release];
    return _r0.o;
}


+ (android_util_Pool*) finitePool___android_util_PoolableManager_int :(android_util_PoolableManager*)n1 :(int)n2
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = n1;
    _r2.i = n2;
    _r0.o = [[[android_util_FinitePool alloc] init] autorelease];
    [((android_util_FinitePool*) _r0.o) __init_android_util_FinitePool___android_util_PoolableManager_int:_r1.o:_r2.i];
    [_r0.o retain];
    [_pool release];
    return _r0.o;
}


+ (android_util_Pool*) synchronizedPool___android_util_Pool :(android_util_Pool*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = n1;
    _r0.o = [[[android_util_SynchronizedPool alloc] init] autorelease];
    [((android_util_SynchronizedPool*) _r0.o) __init_android_util_SynchronizedPool___android_util_Pool:_r1.o];
    [_r0.o retain];
    [_pool release];
    return _r0.o;
}


+ (android_util_Pool*) synchronizedPool___android_util_Pool_java_lang_Object :(android_util_Pool*)n1 :(java_lang_Object*)n2
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = n1;
    _r2.o = n2;
    _r0.o = [[[android_util_SynchronizedPool alloc] init] autorelease];
    [((android_util_SynchronizedPool*) _r0.o) __init_android_util_SynchronizedPool___android_util_Pool_java_lang_Object:_r1.o:_r2.o];
    [_r0.o retain];
    [_pool release];
    return _r0.o;
}



@end

