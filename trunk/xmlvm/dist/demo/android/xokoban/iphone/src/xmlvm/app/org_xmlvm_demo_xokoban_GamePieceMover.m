#import "org_xmlvm_demo_xokoban_MoveFinishedHandler.h"
#import "java_lang_Throwable.h"
#import "org_xmlvm_demo_xokoban_MovableGamePiece.h"

// Automatically generated by xmlvm2obj. Do not edit!


#import "org_xmlvm_demo_xokoban_GamePieceMover.h"

int _STATIC_org_xmlvm_demo_xokoban_GamePieceMover_MAX_PIECES_MOVING = 2;

@implementation org_xmlvm_demo_xokoban_GamePieceMover;

+ (void) initialize
{
    if (strcmp(class_getName(self), "org_xmlvm_demo_xokoban_GamePieceMover") == 0) {
    }
}

- (id) init
{
    if (self = [super init]) {
        gamePiecesToBeMoved_org_xmlvm_demo_xokoban_MovableGamePiece_ARRAYTYPE = (id) [NSNull null];
        moveFinishedHandler_org_xmlvm_demo_xokoban_MoveFinishedHandler = (id) [NSNull null];
    }
    return self;
}

- (void) dealloc
{
    [gamePiecesToBeMoved_org_xmlvm_demo_xokoban_MovableGamePiece_ARRAYTYPE release];
    [moveFinishedHandler_org_xmlvm_demo_xokoban_MoveFinishedHandler release];
    [super dealloc];
}

+ (int) _GET_MAX_PIECES_MOVING
{
    return _STATIC_org_xmlvm_demo_xokoban_GamePieceMover_MAX_PIECES_MOVING;
}

+ (void) _PUT_MAX_PIECES_MOVING: (int) v
{
    _STATIC_org_xmlvm_demo_xokoban_GamePieceMover_MAX_PIECES_MOVING = v;
}

- (void) __init_org_xmlvm_demo_xokoban_GamePieceMover__
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
    _r3.i = 2;
    [((java_lang_Object*) _r4.o) __init_java_lang_Object__];
    _r1.o = [XMLVMArray createSingleDimensionWithType:0 andSize:_r3.i];
    [_r1.o retain];
    [((org_xmlvm_demo_xokoban_GamePieceMover*) _r4.o)->gamePiecesToBeMoved_org_xmlvm_demo_xokoban_MovableGamePiece_ARRAYTYPE release];
    ((org_xmlvm_demo_xokoban_GamePieceMover*) _r4.o)->gamePiecesToBeMoved_org_xmlvm_demo_xokoban_MovableGamePiece_ARRAYTYPE = _r1.o;
    _r0.i = 0;
    label9:;
    if (_r0.i >= _r3.i) goto label19;
    _r1.o = [[((org_xmlvm_demo_xokoban_GamePieceMover*) _r4.o)->gamePiecesToBeMoved_org_xmlvm_demo_xokoban_MovableGamePiece_ARRAYTYPE retain] autorelease];
    _r2.o = [NSNull null];
    [_r2.o retain];
    [((XMLVMArray*) _r1.o)->array.o[_r0.i] release];
    ((XMLVMArray*) _r1.o)->array.o[_r0.i] = _r2.o;
    _r0.i = _r0.i + 1;
    goto label9;
    label19:;
    [_pool release];
    return;
}


- (void) moveGamePiece___org_xmlvm_demo_xokoban_MovableGamePiece :(org_xmlvm_demo_xokoban_MovableGamePiece*)n1
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
    _r0.i = 0;
    label2:;
    _r1.i = 2;
    if (_r0.i >= _r1.i) goto label15;
    @try {
    _r1.o = [[((org_xmlvm_demo_xokoban_GamePieceMover*) _r2.o)->gamePiecesToBeMoved_org_xmlvm_demo_xokoban_MovableGamePiece_ARRAYTYPE retain] autorelease];
    _r1.o = ((XMLVMArray*) _r1.o)->array.o[_r0.i];
    [[_r1.o retain] autorelease];
    if (_r1.o != [NSNull null]) goto label17;
    _r1.o = [[((org_xmlvm_demo_xokoban_GamePieceMover*) _r2.o)->gamePiecesToBeMoved_org_xmlvm_demo_xokoban_MovableGamePiece_ARRAYTYPE retain] autorelease];
    [_r3.o retain];
    [((XMLVMArray*) _r1.o)->array.o[_r0.i] release];
    ((XMLVMArray*) _r1.o)->array.o[_r0.i] = _r3.o;
}
    @catch (id ex) {
        _ex = ex;
        goto label20;
    }
    label15:;
    [_pool release];
    return;
    label17:;
    _r0.i = _r0.i + 1;
    goto label2;
    label20:;
    _r1.o = _ex;
    @throw _r1.o;
}


- (int) isMoving__
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
    _r3.i = 1;
    _r2.i = 0;
    @try {
    _r0.o = [[((org_xmlvm_demo_xokoban_GamePieceMover*) _r4.o)->gamePiecesToBeMoved_org_xmlvm_demo_xokoban_MovableGamePiece_ARRAYTYPE retain] autorelease];
    _r1.i = 0;
    _r0.o = ((XMLVMArray*) _r0.o)->array.o[_r1.i];
    [[_r0.o retain] autorelease];
    if (_r0.o != [NSNull null]) goto label17;
    _r0.o = [[((org_xmlvm_demo_xokoban_GamePieceMover*) _r4.o)->gamePiecesToBeMoved_org_xmlvm_demo_xokoban_MovableGamePiece_ARRAYTYPE retain] autorelease];
    _r1.i = 1;
    _r0.o = ((XMLVMArray*) _r0.o)->array.o[_r1.i];
    [[_r0.o retain] autorelease];
}
    @catch (id ex) {
        _ex = ex;
        goto label22;
    }
    if (_r0.o == [NSNull null]) goto label20;
    label17:;
    _r0 = _r3;
    label18:;
    [_pool release];
    return _r0.i;
    label20:;
    _r0 = _r2;
    goto label18;
    label22:;
    _r0.o = _ex;
    @throw _r0.o;
}


- (void) setMoveFinishedHandler___org_xmlvm_demo_xokoban_MoveFinishedHandler :(org_xmlvm_demo_xokoban_MoveFinishedHandler*)n1
{
    id        _res;
    id        _ex;
    XMLVMElem _r0;
    XMLVMElem _r1;
    NSAutoreleasePool* _pool = [[NSAutoreleasePool alloc] init];
    _r0.o = self;
    _r1.o = n1;
    [_r1.o retain];
    [((org_xmlvm_demo_xokoban_GamePieceMover*) _r0.o)->moveFinishedHandler_org_xmlvm_demo_xokoban_MoveFinishedHandler release];
    ((org_xmlvm_demo_xokoban_GamePieceMover*) _r0.o)->moveFinishedHandler_org_xmlvm_demo_xokoban_MoveFinishedHandler = _r1.o;
    [_pool release];
    return;
}


- (void) doNextAnimationStep__
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
    _r5.o = self;
    _r2.i = 0;
    _r1.i = 0;
    label2:;
    _r3.i = 2;
    if (_r1.i >= _r3.i) goto label31;
    _r3.o = [[((org_xmlvm_demo_xokoban_GamePieceMover*) _r5.o)->gamePiecesToBeMoved_org_xmlvm_demo_xokoban_MovableGamePiece_ARRAYTYPE retain] autorelease];
    _r3.o = ((XMLVMArray*) _r3.o)->array.o[_r1.i];
    [[_r3.o retain] autorelease];
    if (_r3.o == [NSNull null]) goto label28;
    _r3.o = [[((org_xmlvm_demo_xokoban_GamePieceMover*) _r5.o)->gamePiecesToBeMoved_org_xmlvm_demo_xokoban_MovableGamePiece_ARRAYTYPE retain] autorelease];
    _r3.o = ((XMLVMArray*) _r3.o)->array.o[_r1.i];
    [[_r3.o retain] autorelease];
    _r0.i = [((org_xmlvm_demo_xokoban_MovableGamePiece*) _r3.o) moveOneStep__];
    if (_r0.i == 0) goto label28;
    _r3.o = [[((org_xmlvm_demo_xokoban_GamePieceMover*) _r5.o)->gamePiecesToBeMoved_org_xmlvm_demo_xokoban_MovableGamePiece_ARRAYTYPE retain] autorelease];
    _r4.o = [NSNull null];
    [_r4.o retain];
    [((XMLVMArray*) _r3.o)->array.o[_r1.i] release];
    ((XMLVMArray*) _r3.o)->array.o[_r1.i] = _r4.o;
    _r2.i = _r2.i + 1;
    label28:;
    _r1.i = _r1.i + 1;
    goto label2;
    label31:;
    if (_r2.i <= 0) goto label42;
    _r3.o = [[((org_xmlvm_demo_xokoban_GamePieceMover*) _r5.o)->moveFinishedHandler_org_xmlvm_demo_xokoban_MoveFinishedHandler retain] autorelease];
    if (_r3.o == [NSNull null]) goto label42;
    _r3.o = [[((org_xmlvm_demo_xokoban_GamePieceMover*) _r5.o)->moveFinishedHandler_org_xmlvm_demo_xokoban_MoveFinishedHandler retain] autorelease];
    [((org_xmlvm_demo_xokoban_MoveFinishedHandler*) _r3.o) onMoveFinished__];
    label42:;
    [_pool release];
    return;
}



@end

