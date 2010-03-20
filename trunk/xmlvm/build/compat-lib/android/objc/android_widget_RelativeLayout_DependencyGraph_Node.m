#import "android_util_Pools.h"
#import "java_util_HashSet.h"
#import "android_util_Pool.h"
#import "android_util_Poolable.h"
#import "android_widget_RelativeLayout_DependencyGraph_Node_1.h"
#import "android_view_View.h"
#import "android_util_PoolableManager.h"
#import "android_util_SparseArray.h"

// Automatically generated by xmlvm2obj. Do not edit!


#import "android_widget_RelativeLayout_DependencyGraph_Node.h"

int _STATIC_android_widget_RelativeLayout_DependencyGraph_Node_POOL_LIMIT = 100;
android_util_Pool* _STATIC_android_widget_RelativeLayout_DependencyGraph_Node_sPool;

@implementation android_widget_RelativeLayout_DependencyGraph_Node;

+ (void) initialize
{
    if (strcmp(class_getName(self), "android_widget_RelativeLayout_DependencyGraph_Node") == 0) {
        _STATIC_android_widget_RelativeLayout_DependencyGraph_Node_sPool = (id) [NSNull null];
        [android_widget_RelativeLayout_DependencyGraph_Node __clinit_android_widget_RelativeLayout_DependencyGraph_Node];
    }
}

- (id) init
{
    if (self = [super init]) {
        view_android_view_View = (id) [NSNull null];
        dependents_java_util_HashSet = (id) [NSNull null];
        dependencies_android_util_SparseArray = (id) [NSNull null];
        mNext_android_widget_RelativeLayout_DependencyGraph_Node = (id) [NSNull null];
    }
    return self;
}

- (void) dealloc
{
    [view_android_view_View release];
    [dependents_java_util_HashSet release];
    [dependencies_android_util_SparseArray release];
    [mNext_android_widget_RelativeLayout_DependencyGraph_Node release];
    [super dealloc];
}

+ (int) _GET_POOL_LIMIT
{
    return _STATIC_android_widget_RelativeLayout_DependencyGraph_Node_POOL_LIMIT;
}

+ (void) _PUT_POOL_LIMIT: (int) v
{
    _STATIC_android_widget_RelativeLayout_DependencyGraph_Node_POOL_LIMIT = v;
}

+ (android_util_Pool*) _GET_sPool
{
    return [[_STATIC_android_widget_RelativeLayout_DependencyGraph_Node_sPool retain] autorelease];
}

+ (void) _PUT_sPool: (android_util_Pool*) v
{
    [v retain];
    [_STATIC_android_widget_RelativeLayout_DependencyGraph_Node_sPool release];
    _STATIC_android_widget_RelativeLayout_DependencyGraph_Node_sPool = v;
}

- (void) __init_android_widget_RelativeLayout_DependencyGraph_Node__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = self;
    [((java_lang_Object*) _r1.o) __init_java_lang_Object__];
    _r0.o = [[[java_util_HashSet alloc] init] autorelease];
    [((java_util_HashSet*) _r0.o) __init_java_util_HashSet__];
    [_r0.o retain];
    [((android_widget_RelativeLayout_DependencyGraph_Node*) _r1.o)->dependents_java_util_HashSet release];
    ((android_widget_RelativeLayout_DependencyGraph_Node*) _r1.o)->dependents_java_util_HashSet = _r0.o;
    _r0.o = [[[android_util_SparseArray alloc] init] autorelease];
    [((android_util_SparseArray*) _r0.o) __init_android_util_SparseArray__];
    [_r0.o retain];
    [((android_widget_RelativeLayout_DependencyGraph_Node*) _r1.o)->dependencies_android_util_SparseArray release];
    ((android_widget_RelativeLayout_DependencyGraph_Node*) _r1.o)->dependencies_android_util_SparseArray = _r0.o;
    [_pool release];
    return;
}


- (void) setNextPoolable___android_widget_RelativeLayout_DependencyGraph_Node :(android_widget_RelativeLayout_DependencyGraph_Node*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    _r1.o = n1;
    [_r1.o retain];
    [((android_widget_RelativeLayout_DependencyGraph_Node*) _r0.o)->mNext_android_widget_RelativeLayout_DependencyGraph_Node release];
    ((android_widget_RelativeLayout_DependencyGraph_Node*) _r0.o)->mNext_android_widget_RelativeLayout_DependencyGraph_Node = _r1.o;
    [_pool release];
    return;
}


- (android_widget_RelativeLayout_DependencyGraph_Node*) getNextPoolable__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = self;
    _r0.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r1.o)->mNext_android_widget_RelativeLayout_DependencyGraph_Node retain] autorelease];
    [_r0.o retain];
    [_pool release];
    return _r0.o;
}


+ (android_widget_RelativeLayout_DependencyGraph_Node*) acquire___android_view_View :(android_view_View*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r2.o = n1;
    _r1.o = [android_widget_RelativeLayout_DependencyGraph_Node _GET_sPool];
    _r0.o = [((android_util_Pool*) _r1.o) acquire__];
    [_r0.o autorelease];
    _r0.o = _r0.o;
    [_r2.o retain];
    [((android_widget_RelativeLayout_DependencyGraph_Node*) _r0.o)->view_android_view_View release];
    ((android_widget_RelativeLayout_DependencyGraph_Node*) _r0.o)->view_android_view_View = _r2.o;
    [_r0.o retain];
    [_pool release];
    return _r0.o;
}


- (void) release__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = self;
    _r0.o = [NSNull null];
    [_r0.o retain];
    [((android_widget_RelativeLayout_DependencyGraph_Node*) _r1.o)->view_android_view_View release];
    ((android_widget_RelativeLayout_DependencyGraph_Node*) _r1.o)->view_android_view_View = _r0.o;
    _r0.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r1.o)->dependents_java_util_HashSet retain] autorelease];
    [((java_util_HashSet*) _r0.o) clear__];
    _r0.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r1.o)->dependencies_android_util_SparseArray retain] autorelease];
    [((android_util_SparseArray*) _r0.o) clear__];
    _r0.o = [android_widget_RelativeLayout_DependencyGraph_Node _GET_sPool];
    [((android_util_Pool*) _r0.o) release___android_util_Poolable:_r1.o];
    [_pool release];
    return;
}


- (void) setNextPoolable___java_lang_Object :(java_lang_Object*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    _r1.o = n1;
    _r1.o = _r1.o;
    [((android_widget_RelativeLayout_DependencyGraph_Node*) _r0.o) setNextPoolable___android_widget_RelativeLayout_DependencyGraph_Node:_r1.o];
    [_pool release];
    return;
}


+ (void) __clinit_android_widget_RelativeLayout_DependencyGraph_Node
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = [[[android_widget_RelativeLayout_DependencyGraph_Node_1 alloc] init] autorelease];
    [((android_widget_RelativeLayout_DependencyGraph_Node_1*) _r0.o) __init_android_widget_RelativeLayout_DependencyGraph_Node_1__];
    _r1.i = 100;
    _r0.o = [android_util_Pools finitePool___android_util_PoolableManager_int:_r0.o:_r1.i];
    [_r0.o autorelease];
    _r0.o = [android_util_Pools synchronizedPool___android_util_Pool:_r0.o];
    [_r0.o autorelease];
    [android_widget_RelativeLayout_DependencyGraph_Node _PUT_sPool: _r0.o];
    [_pool release];
    return;
}



@end
