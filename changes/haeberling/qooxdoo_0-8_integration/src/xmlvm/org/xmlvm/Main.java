/*
 * Copyright (c) 2004-2008 XMLVM --- An XML-based Programming Language
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
 * http://www.xmlvm.org
 */

package org.xmlvm;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.StringReader;
import java.util.List;

import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import org.apache.bcel.classfile.JavaClass;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.Namespace;
import org.jdom.input.SAXBuilder;
import org.jdom.output.Format;
import org.jdom.output.XMLOutputter;
import org.jdom.transform.JDOMResult;
import org.jdom.transform.JDOMSource;
import org.xmlvm.dep.Import;
import org.xmlvm.dep.Recursion;
import org.xmlvm.util.FileSet;

import edu.arizona.cs.mbel.mbel.ClassParser;
import edu.arizona.cs.mbel.mbel.Module;

public class Main {
  private JavaClass jvm_class;
  private Module cil_class;
  private String class_name;
  private boolean _isXMLVM = false;

  public Main() {
      jvm_class = null;
      cil_class = null;
      class_name = null;
      setSaxonEngine();
    }

  public Main(JavaClass clazz) {
      jvm_class = clazz;
      cil_class = null;
      class_name = null;
      setSaxonEngine();
    }

  public Main(File inputFile) {
    jvm_class = null;
    cil_class = null;
    setSaxonEngine();

    String inputFileName = inputFile.getPath().toLowerCase();
    try {
      if (inputFileName.endsWith(".exe")) {
        FileInputStream fin = new FileInputStream(inputFile);
        ClassParser parser = new ClassParser(fin);
        cil_class = parser.parseModule();
        class_name = inputFile.getName();
        class_name = class_name.substring(0, class_name.length() - 4);
      } else if (inputFileName.endsWith(".class")) {
        org.apache.bcel.classfile.ClassParser parser = new org.apache.bcel.classfile.ClassParser(
            inputFileName);
        jvm_class = parser.parse();
        // new BCELifier(jvm_class, System.out).start();
        // System.exit(0);
        class_name = jvm_class.getClassName();
      } else if (inputFileName.endsWith(".xmlvm")) {
        _isXMLVM = true;
      }
      /*
       * else { jvm_class = org.apache.bcel.Repository .lookupClass(inputFile);
       * class_name = jvm_class.getClassName(); }
       */
    } catch (Exception ex) {
      System.err.println("Could not file '" + inputFileName + "'");
      System.exit(-1);
    }
  }

  private void setSaxonEngine() {
    System.setProperty("javax.xml.transform.TransformerFactory",
        "net.sf.saxon.TransformerFactoryImpl");
  }

  /**
   * Returns an output stream created based on the given options.
   * 
   */
  public OutputStream getOutputStream(XmlvmArguments args)/*boolean option_console,
      String option_out, boolean option_js, boolean option_cpp,
      boolean option_objc, boolean option_python, boolean option_exe*/ {
    OutputStream out = null;
    try {
      if (args.option_console()) {
        out = System.out;
      } else if (args.option_exe()) {
        // TODO Should check that option_out is set
        out = new FileOutputStream(args.option_out());
      } else if (args.option_js()) {
        String suffix = ".js";
        String path = args.option_out() != null ? args.option_out() : "";
        class_name = class_name.replace('.', '_');
        String outputFileName = path + File.separatorChar + class_name + suffix;
        out = new FileOutputStream(outputFileName);
        System.out.println("Generate JS " + outputFileName);
      } else {
        int index = class_name.lastIndexOf('.');
        String path = class_name.substring(0, index + 1).replace('.',
            File.separatorChar);
        if (args.option_out() != null) {
          path = args.option_out() + File.separatorChar + path;
        }
        class_name = class_name.substring(index + 1);
        if (!path.equals("")) {
          File f = new File(path);
          f.mkdirs();
        }
        String suffix = ".xmlvm";
        if (args.option_js())
          suffix = ".js";
        if (args.option_cpp())
          suffix = ".cpp";
        if (args.option_objc())
          suffix = ".m";
        if (args.option_python())
          suffix = ".py";
        out = new FileOutputStream(path + class_name + suffix);
        System.out.println("Generate " + path + class_name + suffix);
      }
    } catch (Exception ex) {
      System.err.println("Could not create file");
      System.exit(-1);
    }
    return out;
  }

  public Document genXMLVM() {
    if (jvm_class != null)
      return new ParseJVM(jvm_class).genXMLVM();
    return new ParseCIL(cil_class).genXMLVM();
  }

  /**
   * Generates a JavaScript file from the given Document. The JavaScript file is
   * created based on the given OutputStream.
   * 
   * @param doc
   *          The XML document from which to generate a JavaScript file.
   * @param out
   *          The output stream to use for the creation of the JavaScript file.
   */
  public void genJS(Document doc, OutputStream out) {
    Document jvmDoc = null;
    if (cil_class == null) {
      jvmDoc = doc;
    } else {
      try {
        System.out.println("Switch CS to JVM");
        jvmDoc = genJVM(doc);
      } catch (Exception ex) {
        System.err.println(ex);
        System.exit(-1);
      }
    }
    InputStream xslt = this.getClass().getResourceAsStream("/xmlvm2js.xsl");
    runXSLT(xslt, jvmDoc, out);
  }

  public void genCPP(Document doc, OutputStream out) {
    InputStream xslt = this.getClass().getResourceAsStream("/xmlvm2cpp.xsl");
    runXSLT(xslt, doc, out, null);
  }

  public void genObjC(Document doc, String path, String headerFileName,
      boolean option_console) {
    try {
      // The filename will be the name of the first class
      Namespace nsXMLVM = Namespace.getNamespace("vm", "http://xmlvm.org");
      String className = doc.getRootElement().getChild("class", nsXMLVM)
          .getAttributeValue("name");
      if (headerFileName == null)
        headerFileName = className + ".h";
      String final_path = path + File.separatorChar + className;
      OutputStream header;
      header = option_console ? System.out : new FileOutputStream(final_path
          + ".h");
      System.out.println("Creating Objective-C header: " + final_path + ".h");
      InputStream xslt = this.getClass().getResourceAsStream("/xmlvm2objc.xsl");
      runXSLT(xslt, doc, header, new String[][] { { "pass", "emitHeader" },
          { "header", headerFileName } });
      if (!option_console)
        header.close();
      OutputStream impl = option_console ? System.out : new FileOutputStream(
          final_path + ".m");
      System.out.println("Creating Objective-C implementation: " + final_path
          + ".m");
      xslt = this.getClass().getResourceAsStream("/xmlvm2objc.xsl");
      if (headerFileName == null)
        headerFileName = className + ".h";
      runXSLT(xslt, doc, impl, new String[][] {
          { "pass", "emitImplementation" }, { "header", headerFileName } });
      if (!option_console)
        impl.close();
    } catch (FileNotFoundException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    } catch (IOException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
  }

  public void genObjC(Document doc, OutputStream out) {
    InputStream xslt = this.getClass().getResourceAsStream("/xmlvm2objc.xsl");
    runXSLT(xslt, doc, out);
  }

  public void genPython(Document doc, OutputStream out) {
    InputStream xslt = this.getClass().getResourceAsStream("/xmlvm2py.xsl");
    runXSLT(xslt, doc, out, null);
  }

  /**
   * Performs a DFA (Data Flow Analysis) of the given XMLVM(CLR) document and
   * returns an XMLVM(CLR-DFA) document.
   * 
   * @param doc
   *          An XMLVM(CLR) document.
   * @return An XMLVM(CLR-DFA) document created from the given XMLVM(DFA)
   *         document.
   */
  public Document genDFA(Document doc) throws Exception {
    JDOMResult out = new JDOMResult();
    JDOMSource in = new JDOMSource(doc);
    CustomUriResolver myResolver = new CustomUriResolver();
    TransformerFactory transFactory = TransformerFactory.newInstance();

    // because we don't get includes off the file system
    transFactory.setURIResolver(myResolver);
    String stageOneResourceName = "stage1.xsl";
    String stageTwoResourceName = "stage2.xsl";
    if (_isXMLVM) {
      stageOneResourceName = "stageOne4avm.xsl";
      stageTwoResourceName = "stageTwo4avm.xsl";
    }
    System.out.println("Preparing dfa...");
    Transformer stage1 = transFactory.newTransformer(myResolver.resolve(
        stageOneResourceName, ""));

    stage1.transform(in, out);
    in = iterateTransform(new JDOMSource(out.getDocument()), myResolver,
        transFactory);

    System.out.println("Preparing boxing...");
    Transformer stage2 = transFactory.newTransformer(myResolver.resolve(
        stageTwoResourceName, ""));

    stage2.transform(in, out);
    in = iterateTransform(new JDOMSource(out.getDocument()), myResolver,
        transFactory);
    return in.getDocument();

    // TODO: Eventually this pipeline path will only go through
    // the avm2jvm xslt documents. Adjust build.xml so that
    // only avm2jvm is used (not clr2jvm)
    // Then the resourceName should always be "/dfa.xsl"
    // The file in src/avm2jvm/avm_dfa.xsl should be renamed to dfa.xsl
    /*
     * String resourceName = "/dfa.xsl";
     * 
     * if (_isXMLVM) { resourceName = "/dfa4avm.xsl"; }
     * 
     * InputStream xslt = this.getClass().getResourceAsStream(resourceName);
     * return runXSLT(xslt, doc);
     */
  }

  private JDOMSource iterateTransform(JDOMSource in,
      CustomUriResolver myResolver, TransformerFactory transFactory)
      throws Exception {
    String iterateFileName = "iterateUntilNoChange.xsl";

    if (_isXMLVM) {
      iterateFileName = "iterateUntilNoChange4avm.xsl";
    }

    Transformer iter = transFactory.newTransformer(myResolver.resolve(
        iterateFileName, ""));

    System.out.println("Applying transform until no change");
    int x = 0;
    in.getDocument().getRootElement().setAttribute("iters", "");
    while (true) {
      JDOMResult out = new JDOMResult();
      System.out.print(".");
      if (in.getDocument().getRootElement().getAttributeValue("iters") != null
          && in.getDocument().getRootElement().getAttributeValue("iters")
              .equals("done")) {
        break;
      }
      iter.transform(in, out);
      in = new JDOMSource(out.getDocument());
      if (++x % 80 == 0) {
        System.out.println();
      }
    }
    System.out.println("\nDone after " + x + " transforms");
    return in;
  }

  /*
   * This thing turns xsl:import or xsl:includes into streams that saxon can
   * use. The streams come out of java resources (eg things in jars) rather than
   * off the file system.
   */
  class CustomUriResolver implements javax.xml.transform.URIResolver {
    public Source resolve(String href, String base) throws TransformerException {
      // System.out.println("href " + href + " base " + base);
      StreamSource ss = new StreamSource(this.getClass().getResourceAsStream(
          "/" + href));
      return ss;
    }
  }

  /**
   * Returns an XMLVM(JVM) document based on the given XMLVM(CLR).
   * 
   * @param doc
   *          An XMLVM(CLR) document.
   * @return An XMLVM(JVM) document created from the given XMLVM(CLR) document.
   */
  public Document genJVM(Document doc) {
    Document jvmDoc = null;
    try {
      Document dfaDoc = genDFA(doc);

      // TODO: Eventually this pipeline path will only go through
      // the avm2jvm xslt documents. Adjust build.xml so that
      // only avm2jvm is used (not clr2jvm)
      // Then the resourceName should always be "/avm2jvm.xsl"
      String resourceName = "/clr2jvm.xsl";

      if (_isXMLVM) {
        resourceName = "/avm2jvm.xsl";
      }

      InputStream xsltJVM = this.getClass().getResourceAsStream(resourceName);
      jvmDoc = runXSLT(xsltJVM, dfaDoc);
    } catch (Exception ex) {
      System.err.println(ex);
      System.exit(-1);
    }
    return jvmDoc;
  }

  /**
   * Returns an XMLVM(CLR) document based on the given XMLVM(JVM).
   * 
   * @param doc
   *          An XMLVM(JVM) document.
   * @return An XMLVM(CLR) document created from the given XMLVM(JVM) document.
   */
  public Document genCLR(Document doc) {
    Document clrDoc = null;
    Document clrAPIDoc = null;

    try {
      InputStream xslt = this.getClass().getResourceAsStream("/jvm2clr.xsl");
      clrDoc = runXSLT(xslt, doc);
      xslt = this.getClass().getResourceAsStream("/clr-api.xsl");
      clrAPIDoc = runXSLT(xslt, clrDoc);
    } catch (Exception ex) {
      System.err.println(ex);
      System.exit(-1);
    }

    return clrAPIDoc;
  }

  public void genExe(Document doc, OutputStream out) {
    try {
      Document clrDoc = genCLR(doc);
      new GenCIL(clrDoc).create(out, class_name);
    } catch (Exception ex) {
      ex.printStackTrace();
      System.exit(-1);
    }
  }

  public Document genAPI(Document doc) {
    Document apiDoc = null;

    try {
      Document jvmDoc = genJVM(doc);

      // TODO: Eventually this pipeline path will only go through
      // the avm2jvm xslt documents. Adjust build.xml so that
      // only avm2jvm is used (not clr2jvm)
      // Then the resourceName should always be "/api.xsl"
      // The file in src/avm2jvm/api4avm.xsl should be renamed to api.xsl
      String resourceName = "/api.xsl";

      if (_isXMLVM) {
        resourceName = "/api4avm.xsl";
      }
      InputStream xsltJVM = this.getClass().getResourceAsStream(resourceName);
      apiDoc = runXSLT(xsltJVM, jvmDoc);
    } catch (Exception ex) {
      System.err.println(ex);
      System.exit(-1);
    }
    return apiDoc;
  }

  /**
   * Generates Java class files based on the given XMLVM(CLR) document. The root
   * for the generated class files is determined by the given string path.
   * 
   * @param doc
   *          An XMLVM(CLR) document.
   * @param path
   *          The root path for the Java class files. Can be the empty string.
   */
  public void genJava(Document doc, String path) {
    try {
      Document jvmDoc = genAPI(doc);
      new GenJava(jvmDoc).create(path);
    } catch (Exception ex) {
      System.err.println(ex);
      System.exit(-1);
    }
  }

  /**
   * Generates an XML document.
   * 
   * @param doc
   *          A jdom document from which we want to output an actual XML
   *          document.
   * @param out
   *          The output stream specifying the location of the generated XML
   *          document.
   */
  public void genXML(Document doc, OutputStream out) {
    try {
      XMLOutputter outputter = new XMLOutputter(Format.getPrettyFormat());
      outputter.output(doc, out);
    } catch (Exception ex) {
      System.err.println(ex);
    }
  }

  private void runXSLT(InputStream xsltFile, Document doc, OutputStream out) {
    runXSLT(xsltFile, doc, out, null);
  }

  private void runXSLT(InputStream xsltFile, Document doc, OutputStream out,
      String[][] xsltParams) {
    try {
      OutputStream xmlvm_out = new ByteArrayOutputStream();
      XMLOutputter outputter = new XMLOutputter();
      outputter.output(doc, xmlvm_out);
      xmlvm_out.close();

      StringReader xmlvmReader = new StringReader(xmlvm_out.toString());
      Source xmlvmSource = new StreamSource(xmlvmReader);
      Source xsltSource = new StreamSource(xsltFile);
      Result result = new StreamResult(out);

      TransformerFactory transFactory = TransformerFactory.newInstance();
      Transformer trans = transFactory.newTransformer(xsltSource);
      if (xsltParams != null) {
        for (int i = 0; i < xsltParams.length; i++)
          trans.setParameter(xsltParams[i][0], xsltParams[i][1]);
      }
      trans.transform(xmlvmSource, result);
    } catch (Exception ex) {
      ex.printStackTrace(System.err);
    }
  }

  /**
   * Performs an XSLT transformation on the Document 'doc', using the stream
   * 'xsltFile' for the transform rules. Returns the resulting transformed
   * document
   * 
   * @param xsltFile
   *          The xslt file with rules for the transformation
   * @param doc
   *          A document representing an xml file to be transformed
   * @return The resulting transformed document.
   */
  private Document runXSLT(InputStream xsltFile, Document doc) {
    Document returnDoc = null;
    try {
      JDOMResult out = new JDOMResult();
      JDOMSource in = new JDOMSource(doc);
      Source xsltSource = new StreamSource(xsltFile);
      TransformerFactory transFactory = TransformerFactory.newInstance();
      Transformer trans = transFactory.newTransformer(xsltSource);
      trans.transform(in, out);

      returnDoc = out.getDocument();
    } catch (Exception ex) {
      ex.printStackTrace(System.err);
    }
    return returnDoc;
  }

  public static void main(String[] argv) throws Exception {
    XmlvmArguments args = new XmlvmArguments(argv);
    if (args.option_class() == null) {
      System.out.println("Opt class : " + args.option_class());
    }
    for (File f : new FileSet(args.option_class())) {
      System.out.println("Processing: " + f);

      Main main = new Main(f);

      // String inputFileName = f.getPath().toLowerCase();
      Document doc = null;

      // If the document does not end with .xmlvm,
      // then it is a module that needs to be parsed
      // into XMLVM, else we need to create the document
      // file for working with the XMLVM byte code in memory
      // if (!inputFileName.endsWith(".xmlvm")) {
      if (!main._isXMLVM) {

        doc = main.genXMLVM();
      } else {
        SAXBuilder builder = new SAXBuilder();
        try {
          FileInputStream in = new FileInputStream(f);
          doc = builder.build(in);
        } catch (Exception ex) {
          ex.printStackTrace();
        }
      }
      if (args.option_import()) {
        Import imp = new Import();
        imp.genImport(doc);
      }
      if (args.option_recursive()) {
        Recursion rec = new Recursion();
        rec.startRecursion(doc);
      }
      OutputStream out = null;
      if (!(args.option_java() || args.option_objc() || args.option_js())) {
        out = main.getOutputStream(args);
      }
      if (args.option_js()) {
        // This chunk of code generates 1 JS file per class so we can maintain 1
        // class per file
        // which makes dependency resolution easier.
//        out.close(); // Don't use this...
        List<Element> clazzes = doc.getRootElement().getChildren("class",
            Namespace.getNamespace("vm", "http://xmlvm.org"));
        for (Element clazz : clazzes) {
          //main.class_name = clazz.getAttributeValue("name");
          out = main.getOutputStream(args);
          Document newDoc = new Document();
          Element newRoot = new Element(doc.getRootElement().getName(), doc
              .getRootElement().getNamespace());

          for (Namespace ns : (List<Namespace>) doc.getRootElement()
              .getAdditionalNamespaces()) {
            newRoot.addNamespaceDeclaration(ns);
          }

          for (Element i : (List<Element>) doc.getRootElement().getAttributes()) {
            newRoot.addContent((Element) i.clone());
          }
          newRoot.addContent((Element) clazz.clone());
          newDoc.setRootElement(newRoot);
          main.genJS(newDoc, out);
        }
      } else if (args.option_cpp()) {
        main.genCPP(doc, out);
      } else if (args.option_objc()) {
        String path = "";
        if (args.option_out() != null)
          path = args.option_out();
        main.genObjC(doc, path, args.option_objc_header(), args
            .option_console());
      } else if (args.option_python()) {
        main.genPython(doc, out);
      } else if (args.option_jvm()) {
        Document jvmDoc = main.genJVM(doc);
        main.genXML(jvmDoc, out);
      } else if (args.option_dfa()) {
        Document dfaDoc = main.genDFA(doc);
        main.genXML(dfaDoc, out);
      } else if (args.option_api()) {
        Document apiDoc = main.genAPI(doc);
        main.genXML(apiDoc, out);
      } else if (args.option_java()) {
        String path = "";
        if (args.option_out() != null)
          path = args.option_out();
        main.genJava(doc, path);
      } else if (args.option_clr()) {
        Document clrDoc = main.genCLR(doc);
        main.genXML(clrDoc, out);
      } else if (args.option_exe()) {
        main.genExe(doc, out);
      } else {
        main.genXML(doc, out);
      }
      // the output stream will not be opened if
      // the java option is chosen.
      if (!(args.option_java() || args.option_objc())) {
        try {
          out.close();
        } catch (Exception ex) {
          System.err.println("Error closing output file.");
        }
      }
    }
  }
}
