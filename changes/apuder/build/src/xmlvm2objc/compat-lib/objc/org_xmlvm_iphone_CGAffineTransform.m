#import "org_xmlvm_iphone_CGAffineTransform.h"



// CGAffineTransform
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGAffineTransform;

+ (org_xmlvm_iphone_CGAffineTransform*) makeRotation___float: (float) alpha
{
    org_xmlvm_iphone_CGAffineTransform* t = [[org_xmlvm_iphone_CGAffineTransform alloc] init];
    t->transform = CGAffineTransformMakeRotation(alpha);
    return t;
}
@end
