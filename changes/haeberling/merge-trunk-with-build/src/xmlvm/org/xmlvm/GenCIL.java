/*
 * XMLVM --- An XML-based Programming Language Copyright (c) 2004-2005 by Arno
 * Puder
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
 * For more information, visit the XMLVM Home Page at
 * http://www.xml11.org/xmlvm/
 */

/*
 * Created on Aug 2, 2007 by Ilias
 */

package org.xmlvm;

import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;


import org.jdom.Document;
import org.jdom.Element;
import org.jdom.Namespace;

import edu.arizona.cs.mbel.mbel.AssemblyInfo;
import edu.arizona.cs.mbel.mbel.AssemblyRefInfo;
import edu.arizona.cs.mbel.mbel.AssemblyTypeRef;
import edu.arizona.cs.mbel.mbel.FieldRef;
import edu.arizona.cs.mbel.mbel.Method;
import edu.arizona.cs.mbel.mbel.Module;
import edu.arizona.cs.mbel.mbel.TypeDef;
import edu.arizona.cs.mbel.mbel.TypeRef;
import edu.arizona.cs.mbel.instructions.Instruction;
import edu.arizona.cs.mbel.instructions.RET;
import edu.arizona.cs.mbel.parse.*;
import edu.arizona.cs.mbel.signature.*;
import edu.arizona.cs.mbel.instructions.*;
import edu.arizona.cs.mbel.mbel.*;
import edu.arizona.cs.mbel.emit.*;



public class GenCIL
{

    private InstructionList              il;
    private InstructionHandlerManagerCIL instructionHandlerManager;
    private Document                     xmlvm;
    private Namespace                    nsXMLVM;
    private Module                       module;
    private AssemblyInfo                 assembly;
    private AssemblyRefInfo              compatJavaLibAssembly;
    private TypeDef                      currentTypeDef;
    private MethodBody                   body;



    public GenCIL(Document xmlvm)
    {
        this.xmlvm = xmlvm;
        nsXMLVM = Namespace.getNamespace("vm", "http://xmlvm.org");
    }



    public void create(OutputStream out, String assemblyName)
        throws IllegalXMLVMException, IOException
    {
        compatJavaLibAssembly = new AssemblyRefInfo(0, 0, 0, 0, 0, null,
                                                    "CompatJavaLib", null, null);

        module = new Module(assemblyName + ".exe", new byte[16],
                            PE_Header.PE_SUBSYSTEM_WINDOWS_CUI);
        assembly = new AssemblyInfo(AssemblyInfo.SHA1, 1, 0, 1, 1, 0, null,
                                    assemblyName, "");
        module.setAssemblyInfo(assembly);

        Element root = xmlvm.getRootElement();
        if (!root.getName().equals("xmlvm"))
            throw new IllegalXMLVMException("Root element needs to be <xmlvm>");
        List<Element> clazzes = root.getChildren("class", nsXMLVM);

        for (Element clazz : clazzes) {
            String ns = clazz.getAttributeValue("package");
            String name = clazz.getAttributeValue("name");
            currentTypeDef = new TypeDef(ns, name, TypeDef.NotPublic);
            TypeRef baseClass = getTypeRef(clazz.getAttributeValue("extends"));
            currentTypeDef.setSuperClass(baseClass);
            module.addTypeDef(currentTypeDef);

            for (Object o : clazz.getChildren()) {
                Element decl = (Element) o;
                String tag = decl.getName();
                if (tag.equals("method"))
                    createMethod(decl);
                else if (tag.equals("field"))
                    createField(decl);
                else
                    throw new IllegalXMLVMException(
                                                    "Unknown class declaration '"
                                                            + tag + "'");
            }
        }
        Emitter emitter = new Emitter(module);
        emitter.emitModule(out);
    }



    private void createMethod(Element method)
        throws IllegalXMLVMException
    {
        try {
            String methodName = method.getAttributeValue("name");
            Element signature = method.getChild("signature", nsXMLVM);
            ReturnTypeSignature retType = collectReturnTypeSignature(signature);
            ParameterSignature[] argTypes = collectParameterSignature(signature);
            if (argTypes != null) {
                for (int i = 0; i < argTypes.length; i++)
                    argTypes[i].setParameterInfo(new ParameterInfo("n" + i, i));
            }
            int accessFlags = getMethodAccessFlags(method);
            if (methodName.equals("<init>")) {
                methodName = ".ctor";
                accessFlags |= Method.RTSpecialName;
                accessFlags |= Method.SpecialName;
            }
            accessFlags |= Method.HideBySig;
            boolean hasThis = (accessFlags & Method.Static) == 0;
            MethodSignature methodSignature = new MethodSignature(
                                                                  hasThis,
                                                                  false,
                                                                  CallingConvention.DEFAULT,
                                                                  retType,
                                                                  argTypes);
            Method m = new Method(methodName, 0, accessFlags, methodSignature);
            currentTypeDef.addMethod(m);
            if (m.getName().equals("Main")) {
                module.setEntryPoint(new EntryPoint(m));
            }
            body = new MethodBody(true, Integer.parseInt(method
                    .getAttributeValue("stack")), null);
            m.setMethodBody(body);
            il = body.getInstructionList();
            instructionHandlerManager = new InstructionHandlerManagerCIL(il);
            Element code = method.getChild("code", nsXMLVM);
            createCode(code);
        }
        catch (SignatureException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }



    private void createField(Element field)
        throws IllegalXMLVMException
    {
        try {
            String name = field.getAttributeValue("name");
            TypeSignature t = parseTypeSignature(field
                    .getAttributeValue("type"));
            int flags = getFieldAccessFlags(field);
            FieldSignature fs = new FieldSignature(t);
            Field f = new Field(name, flags, fs);
            currentTypeDef.addField(f);
        }
        catch (SignatureException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }



    private TypeRef getTypeRef(String typeRef)
    {
        // Decompose typeRef into namespace and name
        int i = typeRef.indexOf('.');
        if (i == -1) {
            System.err.println("No '.'");
            System.exit(-1);
        }
        i = typeRef.lastIndexOf('.');
        String ns = typeRef.substring(0, i);
        String name = typeRef.substring(i + 1);
        
        // Check if this is a refence into our own module
        TypeRef ref = module.getTypeDefByName(ns, name);
        if (ref != null)
            return ref;
        
        // Check for Java compatibility assembly
        if (ns.startsWith("java."))
            return new AssemblyTypeRef(compatJavaLibAssembly, ns, name);
        System.err.println("Unknown assembly " + typeRef);
        System.exit(-1);
        return null;
    }



    private ReturnTypeSignature collectReturnTypeSignature(Element signature)
        throws IllegalXMLVMException, SignatureException
    {
        Element ret = signature.getChild("return", nsXMLVM);
        String t = ret.getAttributeValue("type");
        if (t.equals("void"))
            return new ReturnTypeSignature(
                                           ReturnTypeSignature.ELEMENT_TYPE_VOID);
        else
            return new ReturnTypeSignature(parseTypeSignature(t), false);
    }



    private ParameterSignature[] collectParameterSignature(Element signature)
        throws IllegalXMLVMException, SignatureException
    {
        List<Element> params = signature.getChildren("parameter", nsXMLVM);
        if (params.isEmpty())
            return null;
        List<ParameterSignature> argTypes = new ArrayList<ParameterSignature>();
        for (Element p : params) {
            String t = p.getAttributeValue("type");
            TypeSignature type = parseTypeSignature(t);
            argTypes.add(new ParameterSignature(type, false));
        }
        return argTypes.toArray(new ParameterSignature[0]);
    }



    private TypeSignature parseTypeSignature(String type)
        throws IllegalXMLVMException, SignatureException
    {
        int arrayDimension = 0;
        while (type.endsWith("[]")) {
            arrayDimension++;
            type = type.substring(0, type.length() - 2);
        }
        TypeSignature baseType = null;
        if (type.equals("System.String"))
            baseType = TypeSignature.STRING;
        else if (type.equals("string"))
            baseType = TypeSignature.STRING;
        else if (type.equals("boolean"))
            baseType = TypeSignature.BOOLEAN;
        else if (type.equals("int"))
            baseType = TypeSignature.I;
        else if (type.equals("float"))
            baseType = TypeSignature.R4;
        else if (type.equals("double"))
            baseType = TypeSignature.R8;
        else if (type.equals("System.Object")) // java.lang.Object removed
            baseType = TypeSignature.OBJECT;
        else
            // Assume a TypeRef
            baseType = new ClassTypeSignature(getTypeRef(type));
        // if (baseType == null)
        // baseType = new ObjectType(type);
        if (arrayDimension == 0)
            return baseType;
        else if (arrayDimension == 1)
            return new SZArrayTypeSignature(baseType);
        else
            return new ArrayTypeSignature(
                                          baseType,
                                          new ArrayShapeSignature(
                                                                  arrayDimension,
                                                                  null, null));
    }



    private void createCode(Element code)
        throws IllegalXMLVMException
    {
        List<Element> instructions = code.getChildren();
        for (Element inst : instructions) {
            String name = inst.getName().toUpperCase();
            String opcMethodName = "createInstruction"
                    + name.substring(0, 1).toUpperCase()
                    + name.substring(1).toLowerCase();
            // + name;
            Class appClazz;
            java.lang.reflect.Method opcMeth;
            Class[] paramTypes = {Element.class};
            Object[] params = {inst};
            appClazz = this.getClass();
            Object newInstr = null;
            try {
                opcMeth = appClazz.getMethod(opcMethodName, paramTypes);
                newInstr = opcMeth.invoke(this, params);
            }
            catch (SecurityException e) {
                throw new IllegalXMLVMException("Illegal instruction '" + name
                        + "'");
            }
            catch (NoSuchMethodException e) {
                throw new IllegalXMLVMException("Illegal instruction '" + name
                        + "'");
            }
            catch (IllegalArgumentException e) {
                throw new IllegalXMLVMException("Illegal instruction '" + name
                        + "'");
            }
            catch (IllegalAccessException e) {
                throw new IllegalXMLVMException("Illegal instruction '" + name
                        + "'");
            }
            catch (InvocationTargetException e) {
                throw new IllegalXMLVMException("Illegal instruction '" + name
                        + "'");
            }

            if (newInstr != null) {
                InstructionHandle ih = null;
                if (newInstr instanceof BranchInstruction)
                    ih = il.append((BranchInstruction) newInstr);
                // else if (newInstr instanceof CompoundInstruction)
                // ih = il.append((CompoundInstruction) newInstr);
                else if (newInstr instanceof Instruction)
                    ih = il.append((Instruction) newInstr);
                instructionHandlerManager.registerInstructionHandle(ih);
            }
        }
    }



    private int getMethodAccessFlags(Element elem)
    {
        short af = 0;
        af |= checkAccessFlag(elem, "isPublic", Method.Public);
        af |= checkAccessFlag(elem, "isPrivate", Method.Private);
        // af |= checkAccessFlag(elem, "isProtected", Constants.ACC_PROTECTED);
        af |= checkAccessFlag(elem, "isSynchronized", Method.Synchronized);
        af |= checkAccessFlag(elem, "isStatic", Method.Static);
        return af;
    }



    private int getFieldAccessFlags(Element elem)
    {
        short af = 0;
        af |= checkAccessFlag(elem, "isPublic", Field.Public);
        af |= checkAccessFlag(elem, "isPrivate", Field.Private);
        // af |= checkAccessFlag(elem, "isProtected", Constants.ACC_PROTECTED);
        af |= checkAccessFlag(elem, "isStatic", Field.Static);
        return af;
    }



    private int checkAccessFlag(Element elem, String flag, int jvmFlag)
    {
        String val = elem.getAttributeValue(flag);
        if (val == null)
            return 0;
        return val.equals("true") ? jvmFlag : 0;
    }



    public Instruction createInstructionLdarg(Element inst)
    {
        Instruction newInstr = null;
        if (inst.getAttributeValue("index").equals("0")) {
            newInstr = new LDARG(LDARG.LDARG_0);
        }
        else if (inst.getAttributeValue("index").equals("1")) {
            newInstr = new LDARG(LDARG.LDARG_1);
        }
        else if (inst.getAttributeValue("index").equals("2")) {
            newInstr = new LDARG(LDARG.LDARG_2);
        }
        else if (inst.getAttributeValue("index").equals("3")) {
            newInstr = new LDARG(LDARG.LDARG_3);
        }
        else {
            // Throw exception or do default
        }
        return newInstr;
    }



    public Instruction createInstructionLdc(Element inst)
    {
        Instruction newInstr = null;
        if (inst.getAttributeValue("type").equals("System.String")) {
            newInstr = new LDSTR(inst.getAttributeValue("value"));
        }
        else if (inst.getAttributeValue("type").equals("float")) {
            newInstr = new LDC(Integer
                    .parseInt(inst.getAttributeValue("value").substring(0,
                            inst.getAttributeValue("value").length() - 2)));
        }
        return newInstr;
    }



    public Instruction createInstructionLdsfld(Element inst)
        throws IllegalXMLVMException, SignatureException
    {
        String name = inst.getAttributeValue("field");
        TypeRef fieldRef = getTypeRef(inst.getAttributeValue("type"));
        TypeRef classRef = getTypeRef(inst.getAttributeValue("class-type"));
        FieldSignature fieldSig = new FieldSignature(
                                                     new ClassTypeSignature(
                                                                            fieldRef));
        FieldRef field = new FieldRef(name, fieldSig, classRef);
        return new LDSFLD(field);
    }



    public Instruction createInstructionLdstr(Element inst)
    {
        String str = inst.getAttributeValue("value");
        return new LDSTR(str);
    }



    public Instruction createInstructionLdnull(Element inst)
    {
        return new LDNULL();
    }



    private MethodRef collectMethodReference(Element inst)
        throws IllegalXMLVMException, SignatureException
    {
        String methodName = inst.getAttributeValue("method");
        if (methodName.equals("<init>"))
            methodName = ".ctor";
        TypeRef classType = getTypeRef(inst.getAttributeValue("class-type"));
        Element signature = inst.getChild("signature", nsXMLVM);
        ReturnTypeSignature retType = collectReturnTypeSignature(signature);
        ParameterSignature[] argTypes = collectParameterSignature(signature);
        boolean hasThis = inst.getAttributeValue("has-this").equals("true");
        MethodSignature methodSignature = new MethodSignature(
                                                              hasThis,
                                                              false,
                                                              CallingConvention.DEFAULT,
                                                              retType, argTypes);
        return new MethodRef(methodName, classType, methodSignature);

    }



    public Instruction createInstructionCallvirt(Element inst)
        throws SignatureException, IllegalXMLVMException
    {
        return new CALLVIRT(collectMethodReference(inst));
    }



    public Instruction createInstructionCall(Element inst)
        throws SignatureException, IllegalXMLVMException
    {
        return new CALL(collectMethodReference(inst));
    }



    public Instruction createInstructionReturn(Element inst)
    {
        Instruction newInstr = null;
        newInstr = new RET();
        return newInstr;
    }



    public Instruction createInstructionNewobj(Element inst)
        throws IllegalXMLVMException, SignatureException
    {
        String methodName = ".ctor";
        TypeRef classType = getTypeRef(inst.getAttributeValue("type"));
        Element signature = inst.getChild("signature", nsXMLVM);
        ReturnTypeSignature retType = collectReturnTypeSignature(signature);
        ParameterSignature[] argTypes = collectParameterSignature(signature);
        MethodSignature methodSignature = new MethodSignature(
                                                              true,
                                                              false,
                                                              CallingConvention.DEFAULT,
                                                              retType, argTypes);
        MethodRef methodRef = new MethodRef(methodName, classType,
                                            methodSignature);
        return new NEWOBJ(methodRef);
    }
}