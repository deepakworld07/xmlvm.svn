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

#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_lang_String.h"

// java.lang.Byte
//----------------------------------------------------------------------------
@interface java_lang_Byte : java_lang_Object <NSCopying> {

unsigned char number;

}

- (id) init;
- (id) copyWithZone:(NSZone *)zone;
- (NSUInteger) hash;
- (void) __init_java_lang_Byte___byte :(unsigned char) b;
- (BOOL) isEqual:(id)anObject;
- (unsigned char) byteValue__;
+ (unsigned char) parseByte___java_lang_String: (java_lang_String *) str;
+ (unsigned char) parseByte___java_lang_String_int: (java_lang_String*) str :(int) radix;

@end
