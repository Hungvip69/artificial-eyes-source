package gnu.kawa.xslt;

import gnu.expr.ApplicationMainSupport;
import gnu.expr.Compilation;
import gnu.expr.Language;
import gnu.expr.ModuleBody;
import gnu.kawa.functions.GetNamedPart;
import gnu.kawa.xml.Document;
import gnu.kawa.xml.Focus;
import gnu.kawa.xml.KDocument;
import gnu.lists.Consumer;
import gnu.lists.TreeList;
import gnu.mapping.CallContext;
import gnu.mapping.InPort;
import gnu.mapping.Procedure;
import gnu.mapping.Symbol;
import gnu.text.Lexer;
import gnu.text.SourceMessages;
import gnu.text.SyntaxException;
import gnu.xquery.lang.XQParser;
import gnu.xquery.lang.XQResolveNames;
import gnu.xquery.lang.XQuery;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class XSLT extends XQuery {
    public static XSLT instance;
    public static Symbol nullMode = Symbol.make(null, "");

    @Override // gnu.xquery.lang.XQuery, gnu.expr.Language
    public String getName() {
        return "XSLT";
    }

    public XSLT() {
        instance = this;
        ModuleBody.setMainPrintValues(true);
    }

    public static XSLT getXsltInstance() {
        if (instance == null) {
            new XSLT();
        }
        return instance;
    }

    @Override // gnu.xquery.lang.XQuery, gnu.expr.Language
    public Lexer getLexer(InPort inp, SourceMessages messages) {
        return new XslTranslator(inp, messages, this);
    }

    @Override // gnu.xquery.lang.XQuery, gnu.expr.Language
    public boolean parse(Compilation comp, int options) throws SyntaxException, IOException {
        Compilation.defaultCallConvention = 2;
        ((XslTranslator) comp.lexer).parse(comp);
        comp.setState(4);
        XQParser xqparser = new XQParser(null, comp.getMessages(), this);
        XQResolveNames resolver = new XQResolveNames(comp);
        resolver.functionNamespacePath = xqparser.functionNamespacePath;
        resolver.parser = xqparser;
        resolver.resolveModule(comp.mainLambda);
        return true;
    }

    public static void registerEnvironment() {
        Language.setDefaults(new XSLT());
    }

    public static void defineCallTemplate(Symbol name, double priority, Procedure template) {
    }

    public static void defineApplyTemplate(String pattern, double priority, Symbol mode, Procedure template) {
        if (mode == null) {
            mode = nullMode;
        }
        TemplateTable table = TemplateTable.getTemplateTable(mode);
        table.enter(pattern, priority, template);
    }

    public static void defineTemplate(Symbol name, String pattern, double priority, Symbol mode, Procedure template) {
        if (name != null) {
            defineCallTemplate(name, priority, template);
        }
        if (pattern != null) {
            defineApplyTemplate(pattern, priority, mode, template);
        }
    }

    public static void process(TreeList treeList, Focus focus, CallContext callContext) throws Throwable {
        Consumer consumer = callContext.consumer;
        while (true) {
            int iNextDataIndex = focus.ipos;
            switch (treeList.getNextKind(iNextDataIndex)) {
                case 29:
                    break;
                case 30:
                case 31:
                case 32:
                default:
                    return;
                case 33:
                    Object nextTypeObject = focus.getNextTypeObject();
                    Procedure procedureFind = TemplateTable.nullModeTable.find(focus.getNextTypeName());
                    if (procedureFind != null) {
                        procedureFind.check0(callContext);
                        callContext.runUntilDone();
                    } else {
                        consumer.startElement(nextTypeObject);
                        int iFirstAttributePos = treeList.firstAttributePos(iNextDataIndex);
                        if (iFirstAttributePos == 0) {
                            iFirstAttributePos = treeList.firstChildPos(iNextDataIndex);
                        }
                        focus.push(treeList, iFirstAttributePos);
                        process(treeList, focus, callContext);
                        focus.pop();
                        consumer.endElement();
                    }
                    iNextDataIndex = treeList.nextDataIndex(iNextDataIndex >>> 1) << 1;
                    focus.gotoNext();
                    continue;
                    focus.ipos = iNextDataIndex;
                    break;
                case 34:
                    iNextDataIndex = treeList.firstChildPos(iNextDataIndex);
                    continue;
                    focus.ipos = iNextDataIndex;
                    break;
                case 35:
                    focus.getNextTypeObject();
                    Procedure procedureFind2 = TemplateTable.nullModeTable.find(GetNamedPart.CAST_METHOD_NAME + focus.getNextTypeName());
                    if (procedureFind2 != null) {
                        procedureFind2.check0(callContext);
                        callContext.runUntilDone();
                    }
                    focus.ipos = iNextDataIndex;
                    break;
                case 36:
                case 37:
                    iNextDataIndex = treeList.nextDataIndex(iNextDataIndex >>> 1) << 1;
                    continue;
                    focus.ipos = iNextDataIndex;
                    break;
            }
            int i = iNextDataIndex >>> 1;
            int iNextNodeIndex = treeList.nextNodeIndex(i, Integer.MAX_VALUE);
            if (i == iNextNodeIndex) {
                iNextNodeIndex = treeList.nextDataIndex(i);
            }
            treeList.consumeIRange(i, iNextNodeIndex, consumer);
            iNextDataIndex = iNextNodeIndex << 1;
            focus.ipos = iNextDataIndex;
        }
    }

    public static void runStylesheet() throws Throwable {
        CallContext ctx = CallContext.getInstance();
        ApplicationMainSupport.processSetProperties();
        String[] args = ApplicationMainSupport.commandLineArgArray;
        for (String arg : args) {
            KDocument doc = Document.parse(arg);
            Focus pos = Focus.getCurrent();
            pos.push(doc.sequence, doc.ipos);
            process((TreeList) doc.sequence, pos, ctx);
        }
    }

    public static void applyTemplates(String select, Symbol mode) throws Throwable {
        if (mode == null) {
            mode = nullMode;
        }
        TemplateTable.getTemplateTable(mode);
        CallContext ctx = CallContext.getInstance();
        Focus pos = Focus.getCurrent();
        TreeList doc = (TreeList) pos.sequence;
        pos.push(doc, doc.firstChildPos(pos.ipos));
        process(doc, pos, ctx);
        pos.pop();
    }
}
