/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

#import "org_xmlvm_iphone_UIScrollView.h"


// UIScrollView
//----------------------------------------------------------------------------
@implementation UIScrollView (cat_org_xmlvm_iphone_UIScrollView);

- (void) __init_org_xmlvm_iphone_UIScrollView__
{
	[self initWithFrame: CGRectZero];
}

- (void) __init_org_xmlvm_iphone_UIScrollView___org_xmlvm_iphone_CGRect :(org_xmlvm_iphone_CGRect*)rect
{
	[self initWithFrame: [rect getCGRect]];
}

- (void) setContentOffset___org_xmlvm_iphone_CGPoint_boolean
               :(org_xmlvm_iphone_CGPoint*) offset
               :(int) animated
{
    CGPoint p = CGPointMake(offset->x_float, offset->y_float);
    [self setContentOffset:p animated:animated];
}

- (void) setScrollEnabled___boolean :(BOOL)enabled
{
	self.scrollEnabled = enabled;
}

- (BOOL) isScrollEnabled__
{
	return self.scrollEnabled;
}

@end
