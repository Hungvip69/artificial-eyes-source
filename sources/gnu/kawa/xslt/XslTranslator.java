package gnu.kawa.xslt;

import com.google.appinventor.components.common.PropertyTypeConstants;
import gnu.bytecode.ClassType;
import gnu.bytecode.Method;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.IfExp;
import gnu.expr.LambdaExp;
import gnu.expr.ModuleExp;
import gnu.expr.PrimProcedure;
import gnu.expr.QuoteExp;
import gnu.kawa.functions.AppendValues;
import gnu.kawa.xml.MakeAttribute;
import gnu.kawa.xml.MakeElement;
import gnu.lists.Consumer;
import gnu.mapping.CharArrayInPort;
import gnu.mapping.InPort;
import gnu.mapping.Symbol;
import gnu.math.DFloNum;
import gnu.math.IntNum;
import gnu.text.Lexer;
import gnu.text.LineBufferedReader;
import gnu.text.SourceMessages;
import gnu.xml.XMLParser;
import gnu.xml.XName;
import gnu.xquery.lang.XQParser;
import java.io.IOException;
import java.util.Stack;
import java.util.Vector;

/* JADX INFO: loaded from: classes2.dex */
public class XslTranslator extends Lexer implements Consumer {
    static final String XSL_TRANSFORM_URI = "http://www.w3.org/1999/XSL/Transform";
    Object attributeType;
    StringBuffer attributeValue;
    Compilation comp;
    Declaration consumerDecl;
    InPort in;
    boolean inAttribute;
    boolean inTemplate;
    XSLT interpreter;
    ModuleExp mexp;
    StringBuffer nesting;
    boolean preserveSpace;
    LambdaExp templateLambda;
    static final ClassType typeXSLT = ClassType.make("gnu.kawa.xslt.XSLT");
    static final ClassType typeTemplateTable = ClassType.make("gnu.kawa.xslt.TemplateTable");
    static final Method defineTemplateMethod = typeXSLT.getDeclaredMethod("defineTemplate", 5);
    static final Method runStylesheetMethod = typeXSLT.getDeclaredMethod("runStylesheet", 0);
    static final PrimProcedure defineTemplateProc = new PrimProcedure(defineTemplateMethod);
    static final PrimProcedure runStylesheetProc = new PrimProcedure(runStylesheetMethod);
    static final Method applyTemplatesMethod = typeXSLT.getDeclaredMethod("applyTemplates", 2);
    static final PrimProcedure applyTemplatesProc = new PrimProcedure(applyTemplatesMethod);

    XslTranslator(InPort inp, SourceMessages messages, XSLT interpreter) {
        super(inp, messages);
        this.nesting = new StringBuffer(100);
        this.attributeValue = new StringBuffer(100);
        this.interpreter = interpreter;
        this.in = inp;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x004e, code lost:
    
        r7.comp.exprStack.setSize(r0 + 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0057, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void maybeSkipWhitespace() {
        /*
            r7 = this;
            boolean r0 = r7.preserveSpace
            if (r0 == 0) goto L5
            return
        L5:
            gnu.expr.Compilation r0 = r7.comp
            java.util.Stack<gnu.expr.Expression> r0 = r0.exprStack
            int r0 = r0.size()
        Ld:
            int r0 = r0 + (-1)
            if (r0 < 0) goto L4e
            gnu.expr.Compilation r1 = r7.comp
            java.util.Stack<gnu.expr.Expression> r1 = r1.exprStack
            java.lang.Object r1 = r1.elementAt(r0)
            gnu.expr.Expression r1 = (gnu.expr.Expression) r1
            boolean r2 = r1 instanceof gnu.expr.QuoteExp
            if (r2 == 0) goto L4e
            r2 = r1
            gnu.expr.QuoteExp r2 = (gnu.expr.QuoteExp) r2
            java.lang.Object r2 = r2.getValue()
            if (r2 != 0) goto L2b
            java.lang.String r3 = ""
            goto L2f
        L2b:
            java.lang.String r3 = r2.toString()
        L2f:
            int r4 = r3.length()
        L33:
            int r4 = r4 + (-1)
            if (r4 < 0) goto L4d
            char r5 = r3.charAt(r4)
            r6 = 32
            if (r5 == r6) goto L4c
            r6 = 9
            if (r5 == r6) goto L4c
            r6 = 13
            if (r5 == r6) goto L4c
            r6 = 10
            if (r5 == r6) goto L4c
            return
        L4c:
            goto L33
        L4d:
            goto Ld
        L4e:
            gnu.expr.Compilation r1 = r7.comp
            java.util.Stack<gnu.expr.Expression> r1 = r1.exprStack
            int r2 = r0 + 1
            r1.setSize(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.xslt.XslTranslator.maybeSkipWhitespace():void");
    }

    public String popMatchingAttribute(String ns, String name, int start) {
        int size = this.comp.exprStack.size();
        for (int i = start; i < size; i++) {
            Object el = this.comp.exprStack.elementAt(start);
            if (!(el instanceof ApplyExp)) {
                return null;
            }
            ApplyExp aexp = (ApplyExp) el;
            aexp.getFunction();
            if (aexp.getFunction() != MakeAttribute.makeAttributeExp) {
                return null;
            }
            Expression[] args = aexp.getArgs();
            if (args.length != 2) {
                return null;
            }
            Expression arg0 = args[0];
            if (!(arg0 instanceof QuoteExp)) {
                return null;
            }
            Object tag = ((QuoteExp) arg0).getValue();
            if (!(tag instanceof Symbol)) {
                return null;
            }
            Symbol stag = (Symbol) tag;
            if (stag.getLocalPart() == name && stag.getNamespaceURI() == ns) {
                this.comp.exprStack.removeElementAt(i);
                return (String) ((QuoteExp) args[1]).getValue();
            }
        }
        return null;
    }

    Expression popTemplateBody(int start) {
        int i = this.comp.exprStack.size() - start;
        Expression[] args = new Expression[i];
        while (true) {
            i--;
            if (i >= 0) {
                args[i] = this.comp.exprStack.pop();
            } else {
                return new ApplyExp(AppendValues.appendValues, args);
            }
        }
    }

    public static String isXslTag(Object type) {
        if (type instanceof QuoteExp) {
            type = ((QuoteExp) type).getValue();
        }
        if (!(type instanceof Symbol)) {
            return null;
        }
        Symbol qname = (Symbol) type;
        if (qname.getNamespaceURI() != XSL_TRANSFORM_URI) {
            return null;
        }
        return qname.getLocalName();
    }

    void append(Expression expr) {
    }

    @Override // gnu.lists.Consumer
    public void startElement(Object type) {
        maybeSkipWhitespace();
        String xslTag = isXslTag(type);
        if (xslTag == "template") {
            if (this.templateLambda != null) {
                error("nested xsl:template");
            }
            this.templateLambda = new LambdaExp();
        } else if (xslTag == PropertyTypeConstants.PROPERTY_TYPE_TEXT) {
            this.preserveSpace = false;
        }
        if (type instanceof XName) {
            XName xn = (XName) type;
            type = Symbol.make(xn.getNamespaceURI(), xn.getLocalPart(), xn.getPrefix());
        }
        this.nesting.append((char) this.comp.exprStack.size());
        push(type);
    }

    @Override // gnu.lists.Consumer
    public void startAttribute(Object attrType) {
        if (this.inAttribute) {
            error('f', "internal error - attribute inside attribute");
        }
        this.attributeType = attrType;
        this.attributeValue.setLength(0);
        this.nesting.append((char) this.comp.exprStack.size());
        this.inAttribute = true;
    }

    @Override // gnu.lists.Consumer
    public void endAttribute() {
        Expression[] args = {new QuoteExp(this.attributeType), new QuoteExp(this.attributeValue.toString())};
        push((Expression) new ApplyExp((Expression) MakeAttribute.makeAttributeExp, args));
        this.nesting.setLength(this.nesting.length() - 1);
        this.inAttribute = false;
    }

    @Override // gnu.lists.Consumer
    public void endElement() {
        maybeSkipWhitespace();
        int nlen = this.nesting.length() - 1;
        int start = this.nesting.charAt(nlen);
        this.nesting.setLength(nlen);
        Expression startTag = this.comp.exprStack.elementAt(start);
        String xslTag = isXslTag(startTag);
        if (xslTag == "value-of") {
            String select = popMatchingAttribute("", "select", start + 1);
            if (select != null) {
                Expression exp = new ApplyExp(XQParser.makeText, parseXPath(select));
                this.comp.exprStack.pop();
                push(exp);
                return;
            }
            return;
        }
        if (xslTag == "copy-of") {
            String select2 = popMatchingAttribute("", "select", start + 1);
            if (select2 != null) {
                Expression exp2 = parseXPath(select2);
                this.comp.exprStack.pop();
                push(exp2);
                return;
            }
            return;
        }
        if (xslTag == "apply-templates") {
            String select3 = popMatchingAttribute("", "select", start + 1);
            String mode = popMatchingAttribute("", "mode", start + 1);
            Expression[] args = {new QuoteExp(select3), resolveQNameExpression(mode)};
            this.comp.exprStack.pop();
            push((Expression) new ApplyExp((Expression) new QuoteExp(applyTemplatesProc), args));
            return;
        }
        if (xslTag == "if") {
            String select4 = popMatchingAttribute("", "test", start + 1);
            Expression test = parseXPath(select4);
            Expression test2 = XQParser.booleanValue(test);
            Expression clause = popTemplateBody(start + 1);
            this.comp.exprStack.pop();
            push((Expression) new IfExp(test2, clause, QuoteExp.voidExp));
            return;
        }
        if (xslTag == "stylesheet" || xslTag == "transform") {
            popMatchingAttribute("", "version", start + 1);
            push((Expression) new ApplyExp((Expression) new QuoteExp(runStylesheetProc), Expression.noExpressions));
            Expression body = popTemplateBody(start + 1);
            push(body);
            this.mexp.body = body;
            return;
        }
        if (xslTag == "template") {
            String match = popMatchingAttribute("", "match", start + 1);
            String name = popMatchingAttribute("", "name", start + 1);
            popMatchingAttribute("", "priority", start + 1);
            String mode2 = popMatchingAttribute("", "mode", start + 1);
            this.templateLambda.body = popTemplateBody(start + 1);
            this.comp.exprStack.pop();
            push((Expression) new ApplyExp((Expression) new QuoteExp(defineTemplateProc), resolveQNameExpression(name), new QuoteExp(match), new QuoteExp(DFloNum.make(0.0d)), resolveQNameExpression(mode2), this.templateLambda));
            this.templateLambda = null;
            return;
        }
        if (xslTag == PropertyTypeConstants.PROPERTY_TYPE_TEXT) {
            this.preserveSpace = false;
            Expression[] args2 = new Expression[(this.comp.exprStack.size() - start) - 1];
            int i = args2.length;
            while (true) {
                i--;
                if (i >= 0) {
                    args2[i] = this.comp.exprStack.pop();
                } else {
                    this.comp.exprStack.pop();
                    Expression exp3 = new ApplyExp(XQParser.makeText, args2);
                    push(exp3);
                    this.mexp.body = exp3;
                    return;
                }
            }
        } else {
            Expression[] args3 = new Expression[this.comp.exprStack.size() - start];
            int i2 = args3.length;
            while (true) {
                i2--;
                if (i2 >= 0) {
                    args3[i2] = this.comp.exprStack.pop();
                } else {
                    MakeElement mkElement = new MakeElement();
                    Expression exp4 = new ApplyExp((Expression) new QuoteExp(mkElement), args3);
                    push(exp4);
                    this.mexp.body = exp4;
                    return;
                }
            }
        }
    }

    Expression parseXPath(String string) {
        SourceMessages messages = this.comp.getMessages();
        try {
            XQParser parser = new XQParser(new CharArrayInPort(string), messages, this.interpreter);
            Vector exps = new Vector(20);
            while (true) {
                Expression sexp = parser.parse(this.comp);
                if (sexp == null) {
                    break;
                }
                exps.addElement(sexp);
            }
            int nexps = exps.size();
            if (nexps == 0) {
                return QuoteExp.voidExp;
            }
            if (nexps == 1) {
                return (Expression) exps.elementAt(0);
            }
            throw new InternalError("too many xpath expressions");
        } catch (Throwable ex) {
            ex.printStackTrace();
            throw new InternalError("caught " + ex);
        }
    }

    @Override // gnu.lists.Consumer
    public void write(int v) {
        String str;
        if (this.inAttribute) {
            this.attributeValue.appendCodePoint(v);
            return;
        }
        if (v < 65536) {
            str = String.valueOf(v);
        } else {
            char[] c2 = {(char) (((v - 65536) >> 10) + 55296), (char) ((v & 1023) + 56320)};
            str = new String(c2);
        }
        push(str);
    }

    @Override // java.lang.Appendable
    public Consumer append(char v) {
        if (this.inAttribute) {
            this.attributeValue.append(v);
        } else {
            push(String.valueOf(v));
        }
        return this;
    }

    @Override // java.lang.Appendable
    public Consumer append(CharSequence csq) {
        if (this.inAttribute) {
            this.attributeValue.append(csq);
        } else {
            push(csq.toString());
        }
        return this;
    }

    @Override // java.lang.Appendable
    public Consumer append(CharSequence csq, int start, int end) {
        return append(csq.subSequence(start, end));
    }

    void push(Expression exp) {
        this.comp.exprStack.push(exp);
    }

    void push(Object value) {
        push((Expression) new QuoteExp(value));
    }

    @Override // gnu.lists.Consumer
    public void writeBoolean(boolean v) {
        if (this.inAttribute) {
            this.attributeValue.append(v);
        } else {
            push((Expression) (v ? QuoteExp.trueExp : QuoteExp.falseExp));
        }
    }

    @Override // gnu.lists.Consumer
    public void writeFloat(float v) {
        if (this.inAttribute) {
            this.attributeValue.append(v);
        } else {
            push(DFloNum.make(v));
        }
    }

    @Override // gnu.lists.Consumer
    public void writeDouble(double v) {
        if (this.inAttribute) {
            this.attributeValue.append(v);
        } else {
            push(DFloNum.make(v));
        }
    }

    @Override // gnu.lists.Consumer
    public void writeInt(int v) {
        if (this.inAttribute) {
            this.attributeValue.append(v);
        } else {
            push(IntNum.make(v));
        }
    }

    @Override // gnu.lists.Consumer
    public void writeLong(long v) {
        if (this.inAttribute) {
            this.attributeValue.append(v);
        } else {
            push(IntNum.make(v));
        }
    }

    @Override // gnu.lists.Consumer
    public void startDocument() {
    }

    public void startDocument(ModuleExp mexp) {
        this.mexp = mexp;
        startDocument();
    }

    @Override // gnu.lists.Consumer
    public void endDocument() {
    }

    @Override // gnu.lists.Consumer
    public void writeObject(Object v) {
        if (this.inAttribute) {
            this.attributeValue.append(v);
        } else {
            push(v);
        }
    }

    @Override // gnu.lists.Consumer
    public void write(char[] buf, int off, int len) {
        if (this.inAttribute) {
            this.attributeValue.append(buf, off, len);
        } else {
            push(new String(buf, off, len));
        }
    }

    @Override // gnu.lists.Consumer
    public void write(String str) {
        if (this.inAttribute) {
            this.attributeValue.append(str);
        } else {
            push(str);
        }
    }

    @Override // gnu.lists.Consumer
    public void write(CharSequence str, int start, int length) {
        write(str.subSequence(start, length).toString());
    }

    @Override // gnu.lists.Consumer
    public boolean ignoring() {
        return false;
    }

    public Expression getExpression() {
        return this.comp.exprStack.pop();
    }

    @Override // gnu.text.Lexer
    public void error(char kind, String message) {
        getMessages().error(kind, message);
    }

    Expression resolveQNameExpression(String name) {
        if (name == null) {
            return QuoteExp.nullExp;
        }
        return new QuoteExp(Symbol.make(null, name));
    }

    public void parse(Compilation comp) throws IOException {
        this.comp = comp;
        if (comp.exprStack == null) {
            comp.exprStack = new Stack<>();
        }
        ModuleExp mexp = comp.pushNewModule(this);
        comp.mustCompileHere();
        startDocument(mexp);
        XMLParser.parse((LineBufferedReader) this.in, getMessages(), (Consumer) this);
        endDocument();
        comp.pop(mexp);
    }
}
