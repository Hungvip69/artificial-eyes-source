package gnu.kawa.lispexpr;

import gnu.bytecode.ClassType;
import kawa.lang.Syntax;

/* JADX INFO: loaded from: classes.dex */
public class MakeXmlElement extends Syntax {
    public static final MakeXmlElement makeXml = new MakeXmlElement();
    static final ClassType typeNamespace;

    static {
        makeXml.setName("$make-xml$");
        typeNamespace = ClassType.make("gnu.mapping.Namespace");
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0112 A[Catch: all -> 0x011b, TRY_LEAVE, TryCatch #1 {all -> 0x011b, blocks: (B:42:0x0108, B:44:0x0112), top: B:55:0x0108 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0117  */
    @Override // kawa.lang.Syntax
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public gnu.expr.Expression rewriteForm(gnu.lists.Pair r19, kawa.lang.Translator r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 289
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.lispexpr.MakeXmlElement.rewriteForm(gnu.lists.Pair, kawa.lang.Translator):gnu.expr.Expression");
    }
}
