package kawa.lang;

import gnu.bytecode.ClassType;
import gnu.bytecode.Method;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Expression;
import gnu.expr.QuoteExp;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.Namespace;
import gnu.mapping.Symbol;
import java.util.IdentityHashMap;

/* JADX INFO: loaded from: classes.dex */
public class Quote extends Syntax {
    protected static final int QUOTE_DEPTH = -1;
    protected boolean isQuasi;
    public static final Quote plainQuote = new Quote(LispLanguage.quote_sym, false);
    public static final Quote quasiQuote = new Quote(LispLanguage.quasiquote_sym, true);
    private static final Object WORKING = new String("(working)");
    private static final Object CYCLE = new String("(cycle)");
    static final Method vectorAppendMethod = ClassType.make("kawa.standard.vector_append").getDeclaredMethod("apply$V", 1);
    static final ClassType quoteType = ClassType.make("kawa.lang.Quote");
    static final Method consXMethod = quoteType.getDeclaredMethod("consX$V", 1);
    static final Method appendMethod = quoteType.getDeclaredMethod("append$V", 1);
    static final Method makePairMethod = Compilation.typePair.getDeclaredMethod("make", 2);
    static final Method makeVectorMethod = ClassType.make("gnu.lists.FVector").getDeclaredMethod("make", 1);

    public Quote(String name, boolean isQuasi) {
        super(name);
        this.isQuasi = isQuasi;
    }

    protected Object expand(Object template, int depth, Translator tr) {
        IdentityHashMap seen = new IdentityHashMap();
        return expand(template, depth, null, seen, tr);
    }

    public static Object quote(Object obj, Translator tr) {
        return plainQuote.expand(obj, -1, tr);
    }

    public static Object quote(Object obj) {
        return plainQuote.expand(obj, -1, (Translator) Compilation.getCurrent());
    }

    protected Expression coerceExpression(Object val, Translator tr) {
        return val instanceof Expression ? (Expression) val : leaf(val, tr);
    }

    protected Expression leaf(Object val, Translator tr) {
        return new QuoteExp(val);
    }

    protected boolean expandColonForms() {
        return true;
    }

    public static Symbol makeSymbol(Namespace ns, Object local) {
        String name;
        if (local instanceof CharSequence) {
            name = ((CharSequence) local).toString();
        } else {
            name = (String) local;
        }
        return ns.getSymbol(name.intern());
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x016c, code lost:
    
        return r26.syntaxError("invalid used of " + r10.getCar() + " in quasiquote template");
     */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0295 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0274  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    java.lang.Object expand_pair(gnu.lists.Pair r22, int r23, kawa.lang.SyntaxForm r24, java.lang.Object r25, kawa.lang.Translator r26) {
        /*
            Method dump skipped, instruction units count: 839
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.lang.Quote.expand_pair(gnu.lists.Pair, int, kawa.lang.SyntaxForm, java.lang.Object, kawa.lang.Translator):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00dd A[PHI: r17
      0x00dd: PHI (r17v1 'element_depth' int) = (r17v0 'element_depth' int), (r17v0 'element_depth' int), (r17v0 'element_depth' int), (r17v2 'element_depth' int) binds: [B:23:0x0076, B:25:0x007b, B:27:0x008c, B:29:0x0090] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    java.lang.Object expand(java.lang.Object r22, int r23, kawa.lang.SyntaxForm r24, java.lang.Object r25, kawa.lang.Translator r26) {
        /*
            Method dump skipped, instruction units count: 423
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.lang.Quote.expand(java.lang.Object, int, kawa.lang.SyntaxForm, java.lang.Object, kawa.lang.Translator):java.lang.Object");
    }

    private static ApplyExp makeInvokeMakeVector(Expression[] args) {
        return new ApplyExp(makeVectorMethod, args);
    }

    @Override // kawa.lang.Syntax
    public Expression rewrite(Object obj, Translator tr) {
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            if (pair.getCdr() == LList.Empty) {
                return coerceExpression(expand(pair.getCar(), this.isQuasi ? 1 : -1, tr), tr);
            }
        }
        return tr.syntaxError("wrong number of arguments to quote");
    }

    public static Object append$V(Object[] args) {
        int count = args.length;
        if (count == 0) {
            return LList.Empty;
        }
        Object result = args[count - 1];
        int i = count - 1;
        while (true) {
            i--;
            if (i >= 0) {
                Object list = args[i];
                Object copy = null;
                Pair last = null;
                SyntaxForm syntax = null;
                while (true) {
                    if (list instanceof SyntaxForm) {
                        syntax = (SyntaxForm) list;
                        list = syntax.getDatum();
                    } else {
                        if (list == LList.Empty) {
                            break;
                        }
                        Pair list_pair = (Pair) list;
                        Object car = list_pair.getCar();
                        if (syntax != null && !(car instanceof SyntaxForm)) {
                            car = SyntaxForms.makeForm(car, syntax.getScope());
                        }
                        Pair new_pair = new Pair(car, null);
                        if (last == null) {
                            copy = new_pair;
                        } else {
                            last.setCdr(new_pair);
                        }
                        last = new_pair;
                        list = list_pair.getCdr();
                    }
                }
                if (last != null) {
                    last.setCdr(result);
                    result = copy;
                }
            } else {
                return result;
            }
        }
    }
}
