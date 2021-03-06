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

#import "java_lang_Integer.h"

@interface PrimitiveInt : java_lang_Object
@end

@implementation PrimitiveInt
@end

static PrimitiveInt* primitiveInt;
static java_lang_Class* primitiveIntClass;


// java.lang.Integer
//----------------------------------------------------------------------------
@implementation java_lang_Integer

+ (void) initialize
{
	primitiveInt = [[PrimitiveInt alloc] init];
	primitiveIntClass = [primitiveInt getClass__];
}

- (id) init
{
	[super init];
	number = 0;
	return self;
}

- (id) copyWithZone:(NSZone *)zone
{
    java_lang_Integer* other = [[[self class] allocWithZone:zone] init];
    other->number = self->number;
    return other;
}

- (NSUInteger) hash
{
	return number;
}

+ (java_lang_Class*) _GET_TYPE
{
	return primitiveIntClass;
}

- (void) __init_java_lang_Integer___int :(int) i
{
	number = i;
}

- (BOOL)isEqual:(id)anObject
{
	return [anObject isKindOfClass: [java_lang_Integer class]] && ((java_lang_Integer*) anObject)-> number == number;
}

- (int) intValue__
{
	return number;
}

+ (int) parseInt___java_lang_String: (java_lang_String *) str
{
	return atoi([str UTF8String]);
}

+ (java_lang_String*) toString___int: i
{
	return [[[NSNumber numberWithInt: i] stringValue] retain];
}

+ (java_lang_Integer*) valueOf___int: (int) i
{
	java_lang_Integer* o = [[java_lang_Integer alloc] init];
	[o __init_java_lang_Integer___int:i];
	return o;
}

@end
