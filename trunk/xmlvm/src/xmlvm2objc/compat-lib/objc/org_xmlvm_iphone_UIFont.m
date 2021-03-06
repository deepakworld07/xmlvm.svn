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

#import "org_xmlvm_iphone_UIFont.h"


// UIFont
//----------------------------------------------------------------------------
@implementation UIFont (cat_org_xmlvm_iphone_UIFont);

- (void) __init_org_xmlvm_iphone_UIFont__
{
}

+ (UIFont*) systemFontOfSize___float: (float)size
{
	return [[UIFont systemFontOfSize:size] retain];
}

+ (UIFont*) boldSystemFontOfSize___float: (float)size
{
	return [[UIFont boldSystemFontOfSize:size] retain];
}

+ (UIFont*) italicSystemFontOfSize___float: (float)size
{
	return [[UIFont italicSystemFontOfSize:size] retain];
}

+ (float) buttonFontSize__
{
    return [UIFont buttonFontSize];
}

+ (float) labelFontSize__
{
    return [UIFont labelFontSize];
}

+ (UIFont*) fontWithNameSize___java_lang_String_float:(java_lang_String*)name :(float)size
{
	return [[UIFont fontWithName:name size:size] retain];
}

- (UIFont *) fontWithSize___float:(float)fontSize
{
	return [self fontWithSize: fontSize];
}

@end
