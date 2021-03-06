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
#import "java_io_Reader.h"
#import "java_io_InputStream.h"
#import "java_lang_String.h"

@interface java_io_InputStreamReader : java_io_Reader {
	java_io_InputStream *target;
	java_lang_String *encoding;
}

static const char LF;
static const char CR;

- (void) __init_java_io_InputStreamReader___java_io_InputStream: (java_io_InputStream *) input;
- (void) __init_java_io_InputStreamReader___java_io_InputStream_java_lang_String: (java_io_InputStream*) input: (java_lang_String*) enc;
- (java_lang_String*) readLine__;

@end
