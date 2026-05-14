package gnu.kawa.slib;

import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.BeginExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.IfExp;
import gnu.expr.Keyword;
import gnu.expr.LambdaExp;
import gnu.expr.Language;
import gnu.expr.LetExp;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.expr.NameLookup;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.expr.SetExp;
import gnu.expr.Special;
import gnu.kawa.functions.AddOp;
import gnu.kawa.functions.Convert;
import gnu.kawa.functions.Format;
import gnu.kawa.functions.GetNamedPart;
import gnu.kawa.lispexpr.LangObjType;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.kawa.reflect.SlotGet;
import gnu.lists.Consumer;
import gnu.lists.EofClass;
import gnu.lists.LList;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.Environment;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import gnu.math.Numeric;
import gnu.text.Char;
import gnu.text.SourceMessages;
import kawa.lang.Macro;
import kawa.lang.Quote;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxRule;
import kawa.lang.SyntaxRules;
import kawa.lang.Translator;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.standard.Scheme;

/* JADX INFO: compiled from: syntaxutils.scm */
/* JADX INFO: loaded from: classes2.dex */
public class syntaxutils extends ModuleBody {
    public static final Macro $Prvt$$Ex;
    public static final Macro $Prvt$typecase$Pc;
    public static final syntaxutils $instance;
    static final Keyword Lit0;
    static final PairWithPosition Lit1;
    static final PairWithPosition Lit10;
    static final PairWithPosition Lit11;
    static final PairWithPosition Lit12;
    static final SimpleSymbol Lit13;
    static final SyntaxRules Lit14;
    static final SimpleSymbol Lit15;
    static final SyntaxRules Lit16;
    static final Keyword Lit2;
    static final PairWithPosition Lit3;
    static final PairWithPosition Lit4;
    static final PairWithPosition Lit5;
    static final PairWithPosition Lit6;
    static final IntNum Lit7;
    static final IntNum Lit8;
    static final PairWithPosition Lit9;
    public static final ModuleMethod expand;
    static final SimpleSymbol Lit26 = (SimpleSymbol) new SimpleSymbol("lambda").readResolve();
    static final SimpleSymbol Lit25 = (SimpleSymbol) new SimpleSymbol("as").readResolve();
    static final SimpleSymbol Lit24 = (SimpleSymbol) new SimpleSymbol("else").readResolve();
    static final SimpleSymbol Lit23 = (SimpleSymbol) new SimpleSymbol("let").readResolve();
    static final SimpleSymbol Lit22 = (SimpleSymbol) new SimpleSymbol("cond").readResolve();
    static final SimpleSymbol Lit21 = (SimpleSymbol) new SimpleSymbol("begin").readResolve();
    static final SimpleSymbol Lit20 = (SimpleSymbol) new SimpleSymbol("or").readResolve();
    static final SimpleSymbol Lit19 = (SimpleSymbol) new SimpleSymbol(LispLanguage.quote_sym).readResolve();
    static final SimpleSymbol Lit18 = (SimpleSymbol) new SimpleSymbol("eql").readResolve();
    static final SimpleSymbol Lit17 = (SimpleSymbol) new SimpleSymbol("expand").readResolve();

    /* JADX INFO: compiled from: syntaxutils.scm */
    public class frame extends ModuleBody {
        LList pack;
    }

    /* JADX INFO: compiled from: syntaxutils.scm */
    public class frame0 extends ModuleBody {
        LList pack;
    }

    /* JADX INFO: compiled from: syntaxutils.scm */
    public class frame1 extends ModuleBody {
        LList pack;
    }

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) new SimpleSymbol("!").readResolve();
        Lit15 = simpleSymbol;
        Lit16 = new SyntaxRules(new Object[]{simpleSymbol}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\r\u0017\u0010\b\b", new Object[0], 3), "\u0001\u0001\u0003", "\u0011\u0018\u0004\t\u000b)\u0011\u0018\f\b\u0003\b\u0015\u0013", new Object[]{(SimpleSymbol) new SimpleSymbol("invoke").readResolve(), Lit19}, 1)}, 3);
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) new SimpleSymbol("typecase%").readResolve();
        Lit13 = simpleSymbol2;
        Lit14 = new SyntaxRules(new Object[]{simpleSymbol2, Lit18, Lit20}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007<\f\u0002\r\u000f\b\b\b\r\u0017\u0010\b\b", new Object[]{Boolean.TRUE}, 3), "\u0001\u0003\u0003", "\u0011\u0018\u0004\b\r\u000b", new Object[]{Lit21}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\\,\f\u0002\f\u000f\b\r\u0017\u0010\b\b\r\u001f\u0018\b\b", new Object[]{Lit18}, 4), "\u0001\u0001\u0003\u0003", "\u0011\u0018\u0004yY\u0011\u0018\f\t\u0003\b\u0011\u0018\u0014\b\u000b\b\u0015\u0013\b\u0011\u0018\u001c\b\u0011\u0018$\t\u0003\b\u001d\u001b", new Object[]{Lit22, (SimpleSymbol) new SimpleSymbol("eqv?").readResolve(), Lit19, Lit24, Lit13}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\\,\f\u0002\f\u000f\b\r\u0017\u0010\b\b\r\u001f\u0018\b\b", new Object[]{Lit20}, 4), "\u0001\u0001\u0003\u0003", "\u0011\u0018\u0004\t\u0003)\t\u000b\b\u0015\u0013\b\u001d\u001b", new Object[]{Lit13}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007l<\f\u0002\r\u000f\b\b\b\r\u0017\u0010\b\b\r\u001f\u0018\b\b", new Object[]{Lit20}, 4), "\u0001\u0003\u0003\u0003", "\u0011\u0018\u0004\u0091\b\u0011\u0018\f\b\u0011\u0018\u0014\u0011\b\u0003\b\u0011\u0018\u001c\b\u0015\u0013\b\u0011\u0018$\t\u0003I\r\t\u000b\b\u0011\u0018\f\b\u0003\b\u0011\u0018,\b\u0011\u0018$\t\u0003\b\u001d\u001b", new Object[]{Lit23, (SimpleSymbol) new SimpleSymbol("f").readResolve(), Lit26, Lit21, Lit13, Boolean.TRUE}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007<\f\u000f\r\u0017\u0010\b\b\r\u001f\u0018\b\b", new Object[0], 4), "\u0001\u0001\u0003\u0003", "\u0011\u0018\u0004ñ9\u0011\u0018\f\t\u0003\b\u000b\b\u0011\u0018\u0014Q\b\t\u0003\u0011\u0018\u001c\t\u000b\b\u0003\b\u0011\u0018$\b\u0015\u0013\b\u0011\u0018,\b\u0011\u00184\t\u0003\b\u001d\u001b", new Object[]{Lit22, (SimpleSymbol) new SimpleSymbol(GetNamedPart.INSTANCEOF_METHOD_NAME).readResolve(), Lit23, (SimpleSymbol) new SimpleSymbol("::").readResolve(), Lit21, Lit24, Lit13}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u0004\u0011\u0018\f\t\u0003\b\u0011\u0018\u0014\u0011\u0018\u001c\b\u0011\u0018$\u0011\u0018,\b\u0003", new Object[]{(SimpleSymbol) new SimpleSymbol("error").readResolve(), "typecase% failed", Lit15, (SimpleSymbol) new SimpleSymbol("getClass").readResolve(), Lit25, (SimpleSymbol) new SimpleSymbol("<object>").readResolve()}, 0)}, 4);
        Lit12 = PairWithPosition.make((SimpleSymbol) new SimpleSymbol(":").readResolve(), LList.Empty, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm", 634896);
        Lit11 = PairWithPosition.make(Lit25, LList.Empty, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm", 626704);
        Lit10 = PairWithPosition.make(Lit19, LList.Empty, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm", 552972);
        Lit9 = PairWithPosition.make(Lit23, LList.Empty, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm", 479236);
        Lit8 = IntNum.make(1);
        Lit7 = IntNum.make(0);
        Lit6 = PairWithPosition.make((SimpleSymbol) new SimpleSymbol("if").readResolve(), LList.Empty, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm", 417799);
        Lit5 = PairWithPosition.make(Lit21, LList.Empty, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm", 409627);
        Lit4 = PairWithPosition.make(Lit26, LList.Empty, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm", 376839);
        Lit3 = PairWithPosition.make((SimpleSymbol) new SimpleSymbol("set").readResolve(), LList.Empty, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm", 368647);
        Lit2 = Keyword.make("lang");
        Lit1 = PairWithPosition.make(Lit21, LList.Empty, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm", 278557);
        Lit0 = Keyword.make("env");
        $instance = new syntaxutils();
        $Prvt$typecase$Pc = Macro.make(Lit13, Lit14, $instance);
        $Prvt$$Ex = Macro.make(Lit15, Lit16, $instance);
        expand = new ModuleMethod($instance, 1, Lit17, -4095);
        $instance.run();
    }

    public syntaxutils() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext $ctx) {
        Consumer $result = $ctx.consumer;
    }

    public static Object expand$V(Object sexp, Object[] argsArray) {
        Object objSearchForKeyword = Keyword.searchForKeyword(argsArray, 0, Lit0);
        if (objSearchForKeyword == Special.dfault) {
            objSearchForKeyword = misc.interactionEnvironment();
        }
        Object env = objSearchForKeyword;
        return unrewrite(rewriteForm$V(Quote.append$V(new Object[]{Lit1, LList.consX(new Object[]{sexp, LList.Empty})}), new Object[]{Lit0, env}));
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        if (moduleMethod.selector != 1) {
            return super.applyN(moduleMethod, objArr);
        }
        Object obj = objArr[0];
        int length = objArr.length - 1;
        Object[] objArr2 = new Object[length];
        while (true) {
            length--;
            if (length < 0) {
                return expand$V(obj, objArr2);
            }
            objArr2[length] = objArr[length + 1];
        }
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        if (moduleMethod.selector != 1) {
            return super.matchN(moduleMethod, objArr, callContext);
        }
        callContext.values = objArr;
        callContext.proc = moduleMethod;
        callContext.pc = 5;
        return 0;
    }

    static Expression rewriteForm$V(Object exp, Object[] argsArray) {
        Object objSearchForKeyword = Keyword.searchForKeyword(argsArray, 0, Lit2);
        if (objSearchForKeyword == Special.dfault) {
            objSearchForKeyword = Language.getDefaultLanguage();
        }
        Object lang = objSearchForKeyword;
        Object objSearchForKeyword2 = Keyword.searchForKeyword(argsArray, 0, Lit0);
        if (objSearchForKeyword2 == Special.dfault) {
            objSearchForKeyword2 = misc.interactionEnvironment();
        }
        Object env = objSearchForKeyword2;
        try {
            try {
                NameLookup namelookup = NameLookup.getInstance((Environment) env, (Language) lang);
                SourceMessages messages = new SourceMessages();
                try {
                    Translator translator = new Translator((Language) lang, messages, namelookup);
                    translator.pushNewModule((String) null);
                    Compilation saved$Mncomp = Compilation.setSaveCurrent(translator);
                    try {
                        return translator.rewrite(exp);
                    } finally {
                        Compilation.restoreCurrent(saved$Mncomp);
                    }
                } catch (ClassCastException e) {
                    throw new WrongType(e, "kawa.lang.Translator.<init>(gnu.expr.Language,gnu.text.SourceMessages,gnu.expr.NameLookup)", 1, lang);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "gnu.expr.NameLookup.getInstance(gnu.mapping.Environment,gnu.expr.Language)", 2, lang);
            }
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "gnu.expr.NameLookup.getInstance(gnu.mapping.Environment,gnu.expr.Language)", 1, env);
        }
    }

    static Object unrewrite(Expression exp) {
        frame frameVar = new frame();
        if (exp instanceof LetExp) {
            try {
                return unrewriteLet((LetExp) exp);
            } catch (ClassCastException e) {
                throw new WrongType(e, "exp", -2, exp);
            }
        }
        if (exp instanceof QuoteExp) {
            try {
                return unrewriteQuote((QuoteExp) exp);
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "exp", -2, exp);
            }
        }
        if (exp instanceof SetExp) {
            try {
                SetExp exp2 = (SetExp) exp;
                return Quote.append$V(new Object[]{Lit3, LList.consX(new Object[]{exp2.getSymbol(), LList.consX(new Object[]{unrewrite(exp2.getNewValue()), LList.Empty})})});
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "exp", -2, exp);
            }
        }
        if (exp instanceof LambdaExp) {
            try {
                LambdaExp exp3 = (LambdaExp) exp;
                frameVar.pack = LList.Empty;
                for (Declaration decl = exp3.firstDecl(); decl != null; decl = decl.nextDecl()) {
                    Object v = decl.getSymbol();
                    frameVar.pack = lists.cons(v, frameVar.pack);
                }
                return Quote.append$V(new Object[]{Lit4, LList.consX(new Object[]{LList.reverseInPlace(frameVar.pack), LList.consX(new Object[]{unrewrite(exp3.body), LList.Empty})})});
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "exp", -2, exp);
            }
        }
        if (exp instanceof ReferenceExp) {
            try {
                return ((ReferenceExp) exp).getSymbol();
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "exp", -2, exp);
            }
        }
        if (exp instanceof ApplyExp) {
            try {
                return unrewriteApply((ApplyExp) exp);
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "exp", -2, exp);
            }
        }
        if (exp instanceof BeginExp) {
            try {
                return Quote.append$V(new Object[]{Lit5, unrewrite$St(((BeginExp) exp).getExpressions())});
            } catch (ClassCastException e7) {
                throw new WrongType(e7, "exp", -2, exp);
            }
        }
        if (!(exp instanceof IfExp)) {
            return exp;
        }
        try {
            IfExp exp4 = (IfExp) exp;
            Object objUnrewrite = unrewrite(exp4.getTest());
            Object objUnrewrite2 = unrewrite(exp4.getThenClause());
            Expression eclause = exp4.getElseClause();
            return Quote.append$V(new Object[]{Lit6, LList.consX(new Object[]{objUnrewrite, LList.consX(new Object[]{objUnrewrite2, Quote.append$V(new Object[]{eclause == null ? LList.Empty : LList.list1(unrewrite(eclause)), LList.Empty})})})});
        } catch (ClassCastException e8) {
            throw new WrongType(e8, "exp", -2, exp);
        }
    }

    static Object unrewrite$St(Expression[] exps) throws Throwable {
        frame0 frame0Var = new frame0();
        frame0Var.pack = LList.Empty;
        Object len = Integer.valueOf(exps.length);
        for (Object i = Lit7; Scheme.numEqu.apply2(i, len) == Boolean.FALSE; i = AddOp.$Pl.apply2(i, Lit8)) {
            Object v = unrewrite(exps[((Number) i).intValue()]);
            frame0Var.pack = lists.cons(v, frame0Var.pack);
        }
        return LList.reverseInPlace(frame0Var.pack);
    }

    static Object unrewriteLet(LetExp exp) throws Throwable {
        frame1 frame1Var = new frame1();
        frame1Var.pack = LList.Empty;
        Declaration decl = exp.firstDecl();
        Object i = Lit7;
        while (decl != null) {
            Object v = LList.list2(decl.getSymbol(), unrewrite(exp.inits[((Number) i).intValue()]));
            frame1Var.pack = lists.cons(v, frame1Var.pack);
            Declaration declarationNextDecl = decl.nextDecl();
            i = AddOp.$Pl.apply2(i, Lit8);
            decl = declarationNextDecl;
        }
        return Quote.append$V(new Object[]{Lit9, LList.consX(new Object[]{LList.reverseInPlace(frame1Var.pack), LList.consX(new Object[]{unrewrite(exp.body), LList.Empty})})});
    }

    static Object unrewriteQuote(QuoteExp quoteExp) {
        String name;
        Object value = quoteExp.getValue();
        if (Numeric.asNumericOrNull(value) != null) {
            try {
                return LangObjType.coerceNumeric(value);
            } catch (ClassCastException e) {
                throw new WrongType(e, "val", -2, value);
            }
        }
        if (value instanceof Boolean) {
            try {
                return value != Boolean.FALSE ? Boolean.TRUE : Boolean.FALSE;
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "val", -2, value);
            }
        }
        if (value instanceof Char) {
            try {
                return (Char) value;
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "val", -2, value);
            }
        }
        if (value instanceof Keyword) {
            try {
                return (Keyword) value;
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "val", -2, value);
            }
        }
        if (value instanceof CharSequence) {
            try {
                return (CharSequence) value;
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "val", -2, value);
            }
        }
        if (value == Special.undefined || value == EofClass.eofValue) {
            return value;
        }
        if (value instanceof Type) {
            try {
                name = ((Type) value).getName();
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "val", -2, value);
            }
        } else {
            if (!(value instanceof Class)) {
                return Quote.append$V(new Object[]{Lit10, LList.consX(new Object[]{value, LList.Empty})});
            }
            try {
                name = ((Class) value).getName();
            } catch (ClassCastException e7) {
                throw new WrongType(e7, "val", -2, value);
            }
        }
        return misc.string$To$Symbol(Format.formatToString(0, "<~a>", name));
    }

    static Object unrewriteApply(ApplyExp applyExp) throws Throwable {
        Declaration binding;
        Expression function = applyExp.getFunction();
        Object objUnrewrite$St = unrewrite$St(applyExp.getArgs());
        if (function instanceof ReferenceExp) {
            try {
                binding = ((ReferenceExp) function).getBinding();
            } catch (ClassCastException e) {
                throw new WrongType(e, "fun", -2, function);
            }
        } else {
            binding = null;
        }
        Declaration declaration = binding;
        Declaration declarationFromStatic = Declaration.getDeclarationFromStatic("kawa.standard.Scheme", "applyToArgs");
        Object functionValue = applyExp.getFunctionValue();
        int i = ((declaration == null ? 1 : 0) + 1) & 1;
        if (i != 0) {
            int i2 = ((declarationFromStatic == null ? 1 : 0) + 1) & 1;
            if (i2 != 0) {
                if (SlotGet.getSlotValue(false, declaration, "field", "field", "getField", "isField", Scheme.instance) == declarationFromStatic.field) {
                    return objUnrewrite$St;
                }
            } else if (i2 != 0) {
                return objUnrewrite$St;
            }
        } else if (i != 0) {
            return objUnrewrite$St;
        }
        Object objAppend$V = functionValue instanceof Convert ? Quote.append$V(new Object[]{Lit11, objUnrewrite$St}) : functionValue instanceof GetNamedPart ? Quote.append$V(new Object[]{Lit12, objUnrewrite$St}) : Boolean.FALSE;
        return objAppend$V != Boolean.FALSE ? objAppend$V : LList.consX(new Object[]{unrewrite(function), objUnrewrite$St});
    }
}
