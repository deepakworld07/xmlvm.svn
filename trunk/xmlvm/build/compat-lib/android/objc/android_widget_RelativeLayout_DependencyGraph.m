#import "java_util_ArrayList.h"
#import "java_util_LinkedList.h"
#import "android_widget_RelativeLayout_1.h"
#import "android_util_Log.h"
#import "android_view_ViewGroup_LayoutParams.h"
#import "java_lang_StringBuilder.h"
#import "java_lang_String.h"
#import "android_view_View.h"
#import "android_util_SparseArray.h"
#import "java_lang_IllegalStateException.h"
#import "android_widget_RelativeLayout_DependencyGraph_Node.h"
#import "java_lang_CharSequence.h"
#import "java_util_Iterator.h"
#import "java_util_HashSet.h"
#import "android_widget_RelativeLayout_LayoutParams.h"
#import "android_content_res_Resources.h"

// Automatically generated by xmlvm2obj. Do not edit!


#import "android_widget_RelativeLayout_DependencyGraph.h"


@implementation android_widget_RelativeLayout_DependencyGraph;

+ (void) initialize
{
    if (strcmp(class_getName(self), "android_widget_RelativeLayout_DependencyGraph") == 0) {
    }
}

- (id) init
{
    if (self = [super init]) {
        mNodes_java_util_ArrayList = (id) [NSNull null];
        mKeyNodes_android_util_SparseArray = (id) [NSNull null];
        mRoots_java_util_LinkedList = (id) [NSNull null];
    }
    return self;
}

- (void) dealloc
{
    [mNodes_java_util_ArrayList release];
    [mKeyNodes_android_util_SparseArray release];
    [mRoots_java_util_LinkedList release];
    [super dealloc];
}

- (void) __init_android_widget_RelativeLayout_DependencyGraph__
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = self;
    [((java_lang_Object*) _r1.o) __init_java_lang_Object__];
    _r0.o = [[[java_util_ArrayList alloc] init] autorelease];
    [((java_util_ArrayList*) _r0.o) __init_java_util_ArrayList__];
    [_r0.o retain];
    [((android_widget_RelativeLayout_DependencyGraph*) _r1.o)->mNodes_java_util_ArrayList release];
    ((android_widget_RelativeLayout_DependencyGraph*) _r1.o)->mNodes_java_util_ArrayList = _r0.o;
    _r0.o = [[[android_util_SparseArray alloc] init] autorelease];
    [((android_util_SparseArray*) _r0.o) __init_android_util_SparseArray__];
    [_r0.o retain];
    [((android_widget_RelativeLayout_DependencyGraph*) _r1.o)->mKeyNodes_android_util_SparseArray release];
    ((android_widget_RelativeLayout_DependencyGraph*) _r1.o)->mKeyNodes_android_util_SparseArray = _r0.o;
    _r0.o = [[[java_util_LinkedList alloc] init] autorelease];
    [((java_util_LinkedList*) _r0.o) __init_java_util_LinkedList__];
    [_r0.o retain];
    [((android_widget_RelativeLayout_DependencyGraph*) _r1.o)->mRoots_java_util_LinkedList release];
    ((android_widget_RelativeLayout_DependencyGraph*) _r1.o)->mRoots_java_util_LinkedList = _r0.o;
    [_pool release];
    return;
}


- (void) clear__
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
    _r2.o = [[((android_widget_RelativeLayout_DependencyGraph*) _r4.o)->mNodes_java_util_ArrayList retain] autorelease];
    _r0.i = [((java_util_ArrayList*) _r2.o) size__];
    _r1.i = 0;
    label7:;
    if (_r1.i >= _r0.i) goto label21;
    _r3.o = [((java_util_ArrayList*) _r2.o) get___int:_r1.i];
    [_r3.o autorelease];
    _r3.o = _r3.o;
    [((android_widget_RelativeLayout_DependencyGraph_Node*) _r3.o) release__];
    _r1.i = _r1.i + 1;
    goto label7;
    label21:;
    [((java_util_ArrayList*) _r2.o) clear__];
    _r3.o = [[((android_widget_RelativeLayout_DependencyGraph*) _r4.o)->mKeyNodes_android_util_SparseArray retain] autorelease];
    [((android_util_SparseArray*) _r3.o) clear__];
    _r3.o = [[((android_widget_RelativeLayout_DependencyGraph*) _r4.o)->mRoots_java_util_LinkedList retain] autorelease];
    [((java_util_LinkedList*) _r3.o) clear__];
    [_pool release];
    return;
}


- (void) add___android_view_View :(android_view_View*)n1
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
    _r0.i = [((android_view_View*) _r4.o) getId__];
    _r1.o = [android_widget_RelativeLayout_DependencyGraph_Node acquire___android_view_View:_r4.o];
    [_r1.o autorelease];
    _r2.i = -1;
    if (_r0.i == _r2.i) goto label16;
    _r2.o = [[((android_widget_RelativeLayout_DependencyGraph*) _r3.o)->mKeyNodes_android_util_SparseArray retain] autorelease];
    [((android_util_SparseArray*) _r2.o) put___int_java_lang_Object:_r0.i:_r1.o];
    label16:;
    _r2.o = [[((android_widget_RelativeLayout_DependencyGraph*) _r3.o)->mNodes_java_util_ArrayList retain] autorelease];
    [((java_util_ArrayList*) _r2.o) add___java_lang_Object:_r1.o];
    [_pool release];
    return;
}


- (void) getSortedViews___android_view_View_ARRAYTYPE_int_ARRAYTYPE :(XMLVMArray*)n1 :(XMLVMArray*)n2
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
    XMLVMElem _r12;
    XMLVMElem _r13;
    XMLVMElem _r14;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r12.o = self;
    _r13.o = n1;
    _r14.o = n2;
    _r8.o = [((android_widget_RelativeLayout_DependencyGraph*) _r12.o) findRoots___int_ARRAYTYPE:_r14.o];
    [_r8.o autorelease];
    _r4.i = 0;
    label5:;
    _r10.i = [((java_util_LinkedList*) _r8.o) size__];
    if (_r10.i <= 0) goto label62;
    _r7.o = [((java_util_LinkedList*) _r8.o) removeFirst__];
    [_r7.o autorelease];
    _r7.o = _r7.o;
    _r9.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r7.o)->view_android_view_View retain] autorelease];
    _r6.i = [((android_view_View*) _r9.o) getId__];
    _r5.i = _r4.i + 1;
    [_r9.o retain];
    [((XMLVMArray*) _r13.o)->array.o[_r4.i] release];
    ((XMLVMArray*) _r13.o)->array.o[_r4.i] = _r9.o;
    _r2.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r7.o)->dependents_java_util_HashSet retain] autorelease];
    _r3.o = [((java_util_HashSet*) _r2.o) iterator__];
    [_r3.o autorelease];
    label33:;
    _r10.i = [((java_util_Iterator*) _r3.o) hasNext__];
    if (_r10.i == 0) goto label60;
    _r1.o = [((java_util_Iterator*) _r3.o) next__];
    [_r1.o autorelease];
    _r1.o = _r1.o;
    _r0.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r1.o)->dependencies_android_util_SparseArray retain] autorelease];
    [((android_util_SparseArray*) _r0.o) remove___int:_r6.i];
    _r10.i = [((android_util_SparseArray*) _r0.o) size__];
    if (_r10.i != 0) goto label33;
    [((java_util_LinkedList*) _r8.o) add___java_lang_Object:_r1.o];
    goto label33;
    label60:;
    _r4 = _r5;
    goto label5;
    label62:;
    _r10.i = [_r13.o count];
    if (_r4.i >= _r10.i) goto label73;
    _r10.o = [[[java_lang_IllegalStateException alloc] init] autorelease];
    _r11.o = @"Circular dependencies cannot exist in RelativeLayout";
    [((java_lang_IllegalStateException*) _r10.o) __init_java_lang_IllegalStateException___java_lang_String:_r11.o];
    @throw _r10.o;
    label73:;
    [_pool release];
    return;
}


- (java_util_LinkedList*) findRoots___int_ARRAYTYPE :(XMLVMArray*)n1
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
    XMLVMElem _r12;
    XMLVMElem _r13;
    XMLVMElem _r14;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r13.o = self;
    _r14.o = n1;
    _r4.o = [[((android_widget_RelativeLayout_DependencyGraph*) _r13.o)->mKeyNodes_android_util_SparseArray retain] autorelease];
    _r7.o = [[((android_widget_RelativeLayout_DependencyGraph*) _r13.o)->mNodes_java_util_ArrayList retain] autorelease];
    _r0.i = [((java_util_ArrayList*) _r7.o) size__];
    _r2.i = 0;
    label9:;
    if (_r2.i >= _r0.i) goto label30;
    _r6.o = [((java_util_ArrayList*) _r7.o) get___int:_r2.i];
    [_r6.o autorelease];
    _r6.o = _r6.o;
    _r12.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r6.o)->dependents_java_util_HashSet retain] autorelease];
    [((java_util_HashSet*) _r12.o) clear__];
    _r12.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r6.o)->dependencies_android_util_SparseArray retain] autorelease];
    [((android_util_SparseArray*) _r12.o) clear__];
    _r2.i = _r2.i + 1;
    goto label9;
    label30:;
    _r2.i = 0;
    label31:;
    if (_r2.i >= _r0.i) goto label88;
    _r6.o = [((java_util_ArrayList*) _r7.o) get___int:_r2.i];
    [_r6.o autorelease];
    _r6.o = _r6.o;
    _r12.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r6.o)->view_android_view_View retain] autorelease];
    _r5.o = [((android_view_View*) _r12.o) getLayoutParams__];
    [_r5.o autorelease];
    _r5.o = _r5.o;
    _r10.o = [android_widget_RelativeLayout_LayoutParams access$600___android_widget_RelativeLayout_LayoutParams:_r5.o];
    [_r10.o autorelease];
    _r11.i = [_r14.o count];
    _r3.i = 0;
    label53:;
    if (_r3.i >= _r11.i) goto label85;
    _r12.i = ((XMLVMArray*) _r14.o)->array.i[_r3.i];
    _r9.i = ((XMLVMArray*) _r10.o)->array.i[_r12.i];
    if (_r9.i <= 0) goto label71;
    _r1.o = [((android_util_SparseArray*) _r4.o) get___int:_r9.i];
    [_r1.o autorelease];
    _r1.o = _r1.o;
    if (_r1.o == [NSNull null]) goto label71;
    if (_r1.o != _r6.o) goto label74;
    label71:;
    _r3.i = _r3.i + 1;
    goto label53;
    label74:;
    _r12.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r1.o)->dependents_java_util_HashSet retain] autorelease];
    [((java_util_HashSet*) _r12.o) add___java_lang_Object:_r6.o];
    _r12.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r6.o)->dependencies_android_util_SparseArray retain] autorelease];
    [((android_util_SparseArray*) _r12.o) put___int_java_lang_Object:_r9.i:_r1.o];
    goto label71;
    label85:;
    _r2.i = _r2.i + 1;
    goto label31;
    label88:;
    _r8.o = [[((android_widget_RelativeLayout_DependencyGraph*) _r13.o)->mRoots_java_util_LinkedList retain] autorelease];
    [((java_util_LinkedList*) _r8.o) clear__];
    _r2.i = 0;
    label94:;
    if (_r2.i >= _r0.i) goto label116;
    _r6.o = [((java_util_ArrayList*) _r7.o) get___int:_r2.i];
    [_r6.o autorelease];
    _r6.o = _r6.o;
    _r12.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r6.o)->dependencies_android_util_SparseArray retain] autorelease];
    _r12.i = [((android_util_SparseArray*) _r12.o) size__];
    if (_r12.i != 0) goto label113;
    [((java_util_LinkedList*) _r8.o) add___java_lang_Object:_r6.o];
    label113:;
    _r2.i = _r2.i + 1;
    goto label94;
    label116:;
    [_r8.o retain];
    [_pool release];
    return _r8.o;
}


- (void) log___android_content_res_Resources_int_ARRAYTYPE :(android_content_res_Resources*)n1 :(XMLVMArray*)n2
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
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r4.o = self;
    _r5.o = n1;
    _r6.o = n2;
    _r2.o = [((android_widget_RelativeLayout_DependencyGraph*) _r4.o) findRoots___int_ARRAYTYPE:_r6.o];
    [_r2.o autorelease];
    _r0.o = [((java_util_LinkedList*) _r2.o) iterator__];
    [_r0.o autorelease];
    label8:;
    _r3.i = [((java_util_Iterator*) _r0.o) hasNext__];
    if (_r3.i == 0) goto label24;
    _r1.o = [((java_util_Iterator*) _r0.o) next__];
    [_r1.o autorelease];
    _r1.o = _r1.o;
    [android_widget_RelativeLayout_DependencyGraph printNode___android_content_res_Resources_android_widget_RelativeLayout_DependencyGraph_Node:_r5.o:_r1.o];
    goto label8;
    label24:;
    [_pool release];
    return;
}


+ (void) printViewId___android_content_res_Resources_android_view_View :(android_content_res_Resources*)n1 :(android_view_View*)n2
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    XMLVMElem _r2;
    XMLVMElem _r3;
    XMLVMElem _r4;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r3.o = n1;
    _r4.o = n2;
    _r2.o = @"RelativeLayout";
    _r0.i = [((android_view_View*) _r4.o) getId__];
    _r1.i = -1;
    if (_r0.i == _r1.i) goto label23;
    _r0.o = @"RelativeLayout";
    _r0.i = [((android_view_View*) _r4.o) getId__];
    _r0.o = [((android_content_res_Resources*) _r3.o) getResourceEntryName___int:_r0.i];
    [_r0.o autorelease];
    [android_util_Log d___java_lang_String_java_lang_String:_r2.o:_r0.o];
    label22:;
    [_pool release];
    return;
    label23:;
    _r0.o = @"RelativeLayout";
    _r0.o = @"NO_ID";
    [android_util_Log d___java_lang_String_java_lang_String:_r2.o:_r0.o];
    goto label22;
}


+ (void) appendViewId___android_content_res_Resources_android_widget_RelativeLayout_DependencyGraph_Node_java_lang_StringBuilder :(android_content_res_Resources*)n1 :(android_widget_RelativeLayout_DependencyGraph_Node*)n2 :(java_lang_StringBuilder*)n3
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
    _r4.o = n3;
    _r0.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r3.o)->view_android_view_View retain] autorelease];
    _r0.i = [((android_view_View*) _r0.o) getId__];
    _r1.i = -1;
    if (_r0.i == _r1.i) goto label23;
    _r0.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r3.o)->view_android_view_View retain] autorelease];
    _r0.i = [((android_view_View*) _r0.o) getId__];
    _r0.o = [((android_content_res_Resources*) _r2.o) getResourceEntryName___int:_r0.i];
    [_r0.o autorelease];
    _res = [((java_lang_StringBuilder*) _r4.o) append___java_lang_String:_r0.o];
    [_res release];
    label22:;
    [_pool release];
    return;
    label23:;
    _r0.o = @"NO_ID";
    _res = [((java_lang_StringBuilder*) _r4.o) append___java_lang_String:_r0.o];
    [_res release];
    goto label22;
}


+ (void) printNode___android_content_res_Resources_android_widget_RelativeLayout_DependencyGraph_Node :(android_content_res_Resources*)n1 :(android_widget_RelativeLayout_DependencyGraph_Node*)n2
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
    _r4.o = n1;
    _r5.o = n2;
    _r3.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r5.o)->dependents_java_util_HashSet retain] autorelease];
    _r3.i = [((java_util_HashSet*) _r3.o) size__];
    if (_r3.i != 0) goto label14;
    _r3.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r5.o)->view_android_view_View retain] autorelease];
    [android_widget_RelativeLayout_DependencyGraph printViewId___android_content_res_Resources_android_view_View:_r4.o:_r3.o];
    label13:;
    [_pool release];
    return;
    label14:;
    _r3.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r5.o)->dependents_java_util_HashSet retain] autorelease];
    _r2.o = [((java_util_HashSet*) _r3.o) iterator__];
    [_r2.o autorelease];
    label20:;
    _r3.i = [((java_util_Iterator*) _r2.o) hasNext__];
    if (_r3.i == 0) goto label13;
    _r1.o = [((java_util_Iterator*) _r2.o) next__];
    [_r1.o autorelease];
    _r1.o = _r1.o;
    _r0.o = [[[java_lang_StringBuilder alloc] init] autorelease];
    [((java_lang_StringBuilder*) _r0.o) __init_java_lang_StringBuilder__];
    [android_widget_RelativeLayout_DependencyGraph appendViewId___android_content_res_Resources_android_widget_RelativeLayout_DependencyGraph_Node_java_lang_StringBuilder:_r4.o:_r5.o:_r0.o];
    [android_widget_RelativeLayout_DependencyGraph printdependents___android_content_res_Resources_android_widget_RelativeLayout_DependencyGraph_Node_java_lang_StringBuilder:_r4.o:_r1.o:_r0.o];
    goto label20;
}


+ (void) printdependents___android_content_res_Resources_android_widget_RelativeLayout_DependencyGraph_Node_java_lang_StringBuilder :(android_content_res_Resources*)n1 :(android_widget_RelativeLayout_DependencyGraph_Node*)n2 :(java_lang_StringBuilder*)n3
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
    _r5.o = n1;
    _r6.o = n2;
    _r7.o = n3;
    _r3.o = @" -> ";
    _res = [((java_lang_StringBuilder*) _r7.o) append___java_lang_String:_r3.o];
    [_res release];
    [android_widget_RelativeLayout_DependencyGraph appendViewId___android_content_res_Resources_android_widget_RelativeLayout_DependencyGraph_Node_java_lang_StringBuilder:_r5.o:_r6.o:_r7.o];
    _r3.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r6.o)->dependents_java_util_HashSet retain] autorelease];
    _r3.i = [((java_util_HashSet*) _r3.o) size__];
    if (_r3.i != 0) goto label26;
    _r3.o = @"RelativeLayout";
    _r4.o = [((java_lang_StringBuilder*) _r7.o) toString__];
    [_r4.o autorelease];
    [android_util_Log d___java_lang_String_java_lang_String:_r3.o:_r4.o];
    label25:;
    [_pool release];
    return;
    label26:;
    _r3.o = [[((android_widget_RelativeLayout_DependencyGraph_Node*) _r6.o)->dependents_java_util_HashSet retain] autorelease];
    _r1.o = [((java_util_HashSet*) _r3.o) iterator__];
    [_r1.o autorelease];
    label32:;
    _r3.i = [((java_util_Iterator*) _r1.o) hasNext__];
    if (_r3.i == 0) goto label25;
    _r0.o = [((java_util_Iterator*) _r1.o) next__];
    [_r0.o autorelease];
    _r0.o = _r0.o;
    _r2.o = [[[java_lang_StringBuilder alloc] init] autorelease];
    [((java_lang_StringBuilder*) _r2.o) __init_java_lang_StringBuilder___java_lang_CharSequence:_r7.o];
    [android_widget_RelativeLayout_DependencyGraph printdependents___android_content_res_Resources_android_widget_RelativeLayout_DependencyGraph_Node_java_lang_StringBuilder:_r5.o:_r0.o:_r2.o];
    goto label32;
}


- (void) __init_android_widget_RelativeLayout_DependencyGraph___android_widget_RelativeLayout_1 :(android_widget_RelativeLayout_1*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    _r1.o = n1;
    [((android_widget_RelativeLayout_DependencyGraph*) _r0.o) __init_android_widget_RelativeLayout_DependencyGraph__];
    [_pool release];
    return;
}


+ (android_util_SparseArray*) access$500___android_widget_RelativeLayout_DependencyGraph :(android_widget_RelativeLayout_DependencyGraph*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r1.o = n1;
    _r0.o = [[((android_widget_RelativeLayout_DependencyGraph*) _r1.o)->mKeyNodes_android_util_SparseArray retain] autorelease];
    [_r0.o retain];
    [_pool release];
    return _r0.o;
}



@end

