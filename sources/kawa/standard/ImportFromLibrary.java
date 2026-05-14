package kawa.standard;

import com.google.appinventor.components.runtime.Component;
import gnu.expr.Expression;
import gnu.lists.Pair;
import kawa.lang.Syntax;
import kawa.lang.Translator;

/* JADX INFO: loaded from: classes.dex */
public class ImportFromLibrary extends Syntax {
    private static final String BUILTIN = "";
    public String[] classPrefixPath = {"", "kawa.lib."};
    public static final ImportFromLibrary instance = new ImportFromLibrary();
    private static final String MISSING = null;
    static final String[][] SRFI97Map = {new String[]{Component.TYPEFACE_SANSSERIF, "lists", "gnu.kawa.slib.srfi1"}, new String[]{Component.TYPEFACE_SERIF, "and-let*", "gnu.kawa.slib.srfi2"}, new String[]{"5", "let", MISSING}, new String[]{"6", "basic-string-ports", ""}, new String[]{"8", "receive", ""}, new String[]{"9", "records", ""}, new String[]{"11", "let-values", ""}, new String[]{"13", "strings", "gnu.kawa.slib.srfi13"}, new String[]{"14", "char-sets", MISSING}, new String[]{"16", "case-lambda", ""}, new String[]{"17", "generalized-set!", ""}, new String[]{"18", "multithreading", MISSING}, new String[]{"19", "time", MISSING}, new String[]{"21", "real-time-multithreading", MISSING}, new String[]{"23", "error", ""}, new String[]{"25", "multi-dimensional-arrays", ""}, new String[]{"26", "cut", ""}, new String[]{"27", "random-bits", MISSING}, new String[]{"28", "basic-format-strings", ""}, new String[]{"29", "localization", MISSING}, new String[]{"31", "rec", MISSING}, new String[]{"38", "with-shared-structure", MISSING}, new String[]{"39", "parameters", ""}, new String[]{"41", "streams", MISSING}, new String[]{"42", "eager-comprehensions", MISSING}, new String[]{"43", "vectors", MISSING}, new String[]{"44", "collections", MISSING}, new String[]{"45", "lazy", MISSING}, new String[]{"46", "syntax-rules", MISSING}, new String[]{"47", "arrays", MISSING}, new String[]{"48", "intermediate-format-strings", MISSING}, new String[]{"51", "rest-values", MISSING}, new String[]{"54", "cat", MISSING}, new String[]{"57", "records", MISSING}, new String[]{"59", "vicinities", MISSING}, new String[]{"60", "integer-bits", MISSING}, new String[]{"61", "cond", MISSING}, new String[]{"63", "arrays", MISSING}, new String[]{"64", "testing", "gnu.kawa.slib.testing"}, new String[]{"66", "octet-vectors", MISSING}, new String[]{"67", "compare-procedures", MISSING}, new String[]{"69", "basic-hash-tables", "gnu.kawa.slib.srfi69"}, new String[]{"71", "let", MISSING}, new String[]{"74", "blobs", MISSING}, new String[]{"78", "lightweight-testing", MISSING}, new String[]{"86", "mu-and-nu", MISSING}, new String[]{"87", "case", MISSING}, new String[]{"95", "sorting-and-merging", "kawa.lib.srfi95"}};

    /* JADX WARN: Removed duplicated region for block: B:61:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0151  */
    @Override // kawa.lang.Syntax
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean scanForDefinitions(gnu.lists.Pair r26, java.util.Vector r27, gnu.expr.ScopeExp r28, kawa.lang.Translator r29) {
        /*
            Method dump skipped, instruction units count: 648
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.standard.ImportFromLibrary.scanForDefinitions(gnu.lists.Pair, java.util.Vector, gnu.expr.ScopeExp, kawa.lang.Translator):boolean");
    }

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair form, Translator tr) {
        return null;
    }
}
