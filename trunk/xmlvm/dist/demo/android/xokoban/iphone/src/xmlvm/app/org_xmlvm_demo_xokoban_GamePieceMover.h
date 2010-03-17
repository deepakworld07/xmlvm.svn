#import "xmlvm.h"
#import "java_lang_Object.h"

// For circular include:
@class org_xmlvm_demo_xokoban_MoveFinishedHandler;
@class java_lang_Object;
@class org_xmlvm_demo_xokoban_GamePieceMover;
@class java_lang_Throwable;
@class org_xmlvm_demo_xokoban_MovableGamePiece;

// Automatically generated by xmlvm2obj. Do not edit!


	
@interface org_xmlvm_demo_xokoban_GamePieceMover : java_lang_Object
{
@public XMLVMArray* gamePiecesToBeMoved_org_xmlvm_demo_xokoban_MovableGamePiece_ARRAYTYPE;
@public org_xmlvm_demo_xokoban_MoveFinishedHandler* moveFinishedHandler_org_xmlvm_demo_xokoban_MoveFinishedHandler;

}
+ (void) initialize;
- (id) init;
+ (int) _GET_MAX_PIECES_MOVING;
+ (void) _PUT_MAX_PIECES_MOVING: (int) v;
- (void) __init_org_xmlvm_demo_xokoban_GamePieceMover__;
- (void) moveGamePiece___org_xmlvm_demo_xokoban_MovableGamePiece :(org_xmlvm_demo_xokoban_MovableGamePiece*)n1;
- (int) isMoving__;
- (void) setMoveFinishedHandler___org_xmlvm_demo_xokoban_MoveFinishedHandler :(org_xmlvm_demo_xokoban_MoveFinishedHandler*)n1;
- (void) doNextAnimationStep__;

@end

