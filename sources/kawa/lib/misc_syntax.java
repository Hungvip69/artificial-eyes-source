package kawa.lib;

import androidx.fragment.app.FragmentTransaction;
import gnu.expr.Compilation;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.GetModuleClass;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.kawa.reflect.StaticFieldLocation;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.InPort;
import gnu.mapping.Location;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import gnu.text.Path;
import gnu.text.SyntaxException;
import java.io.IOException;
import kawa.lang.Macro;
import kawa.lang.Quote;
import kawa.lang.SyntaxForms;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxRule;
import kawa.lang.SyntaxRules;
import kawa.lang.SyntaxTemplate;
import kawa.lang.TemplateScope;
import kawa.standard.syntax_case;

/* JADX INFO: compiled from: misc_syntax.scm */
/* JADX INFO: loaded from: classes.dex */
public class misc_syntax extends ModuleBody {
    public static final Location $Prvt$define$Mnconstant;
    public static final misc_syntax $instance;
    static final SimpleSymbol Lit0;
    static final SyntaxPattern Lit1;
    static final SimpleSymbol Lit10;
    static final SyntaxRules Lit11;
    static final SyntaxTemplate Lit2;
    static final SyntaxTemplate Lit3;
    static final SyntaxTemplate Lit4;
    static final SyntaxPattern Lit5;
    static final SimpleSymbol Lit6;
    static final SyntaxRules Lit7;
    static final SimpleSymbol Lit8;
    static final SyntaxPattern Lit9;
    public static final Macro include;
    public static final Macro include$Mnrelative;
    public static final Macro module$Mnuri;
    public static final Macro provide;
    public static final Macro resource$Mnurl;
    public static final Macro test$Mnbegin;
    static final SimpleSymbol Lit31 = (SimpleSymbol) new SimpleSymbol("%test-begin").readResolve();
    static final SimpleSymbol Lit30 = (SimpleSymbol) new SimpleSymbol(LispLanguage.quote_sym).readResolve();
    static final SimpleSymbol Lit29 = (SimpleSymbol) new SimpleSymbol("require").readResolve();
    static final SimpleSymbol Lit28 = (SimpleSymbol) new SimpleSymbol("else").readResolve();
    static final SimpleSymbol Lit27 = (SimpleSymbol) new SimpleSymbol("cond-expand").readResolve();
    static final SimpleSymbol Lit26 = (SimpleSymbol) new SimpleSymbol("srfi-64").readResolve();
    static final SimpleSymbol Lit25 = (SimpleSymbol) new SimpleSymbol("begin").readResolve();
    static final SimpleSymbol Lit24 = (SimpleSymbol) new SimpleSymbol(LispLanguage.quasiquote_sym).readResolve();
    static final SimpleSymbol Lit23 = (SimpleSymbol) new SimpleSymbol("$lookup$").readResolve();
    static final SyntaxTemplate Lit22 = new SyntaxTemplate("\u0001\u0001", "\u000b", new Object[0], 0);
    static final SyntaxTemplate Lit21 = new SyntaxTemplate("\u0001\u0001", "\u000b", new Object[0], 0);
    static final SyntaxTemplate Lit20 = new SyntaxTemplate("\u0001\u0001", "\b\u000b", new Object[0], 0);
    static final SyntaxPattern Lit19 = new SyntaxPattern("\f\u0007\f\u000f\b", new Object[0], 2);
    static final SimpleSymbol Lit18 = (SimpleSymbol) new SimpleSymbol("include-relative").readResolve();
    static final SyntaxTemplate Lit17 = new SyntaxTemplate("\u0001\u0001\u0003", "\u0011\u0018\u0004\b\u0015\u0013", new Object[]{Lit25}, 1);
    static final SyntaxPattern Lit16 = new SyntaxPattern("\r\u0017\u0010\b\b", new Object[0], 3);
    static final SyntaxTemplate Lit15 = new SyntaxTemplate("\u0001\u0001", "\u0003", new Object[0], 0);
    static final SyntaxTemplate Lit14 = new SyntaxTemplate("\u0001\u0001", "\u000b", new Object[0], 0);
    static final SyntaxPattern Lit13 = new SyntaxPattern("\f\u0007\f\u000f\b", new Object[0], 2);
    static final SimpleSymbol Lit12 = (SimpleSymbol) new SimpleSymbol("include").readResolve();

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) new SimpleSymbol("resource-url").readResolve();
        Lit10 = simpleSymbol;
        SyntaxPattern syntaxPattern = new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1);
        PairWithPosition pairWithPositionMake = PairWithPosition.make(Lit23, Pair.make((SimpleSymbol) new SimpleSymbol("gnu.text.URLPath").readResolve(), Pair.make(Pair.make(Lit24, Pair.make((SimpleSymbol) new SimpleSymbol("valueOf").readResolve(), LList.Empty)), LList.Empty)), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 155655);
        SimpleSymbol simpleSymbol2 = Lit23;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) new SimpleSymbol("module-uri").readResolve();
        Lit8 = simpleSymbol3;
        Lit11 = new SyntaxRules(new Object[]{simpleSymbol}, new SyntaxRule[]{new SyntaxRule(syntaxPattern, "\u0001", "\u0011\u0018\u0004\b\b\u0011\u0018\f\u0099\b\u0011\u0018\fa\b\u0011\u0018\f)\u0011\u0018\u0014\b\u0003\u0018\u001c\u0018$\u0018,", new Object[]{pairWithPositionMake, Lit23, PairWithPosition.make(simpleSymbol2, Pair.make(PairWithPosition.make(simpleSymbol3, LList.Empty, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 159755), Pair.make(Pair.make(Lit24, Pair.make((SimpleSymbol) new SimpleSymbol("resolve").readResolve(), LList.Empty)), LList.Empty)), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 159755), Pair.make(Pair.make(Lit24, Pair.make((SimpleSymbol) new SimpleSymbol("toURL").readResolve(), LList.Empty)), LList.Empty), Pair.make(Pair.make(Lit24, Pair.make((SimpleSymbol) new SimpleSymbol("openConnection").readResolve(), LList.Empty)), LList.Empty), Pair.make(Pair.make(Lit24, Pair.make((SimpleSymbol) new SimpleSymbol("getURL").readResolve(), LList.Empty)), LList.Empty)}, 0)}, 1);
        Lit9 = new SyntaxPattern("\f\u0007\b", new Object[0], 1);
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) new SimpleSymbol("test-begin").readResolve();
        Lit6 = simpleSymbol4;
        Lit7 = new SyntaxRules(new Object[]{simpleSymbol4}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u0004\u0011\u0018\f\b\u0011\u0018\u0014\t\u0003\u0018\u001c", new Object[]{Lit25, PairWithPosition.make(Lit27, PairWithPosition.make(PairWithPosition.make(Lit26, PairWithPosition.make(Values.empty, LList.Empty, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86046), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86037), PairWithPosition.make(PairWithPosition.make(Lit28, PairWithPosition.make(PairWithPosition.make(Lit29, PairWithPosition.make(PairWithPosition.make(Lit30, PairWithPosition.make(Lit26, LList.Empty, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86070), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86070), LList.Empty, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86069), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86060), LList.Empty, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86060), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86054), LList.Empty, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86054), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86037), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 86024), Lit31, PairWithPosition.make(Boolean.FALSE, LList.Empty, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 90144)}, 0), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\b", new Object[0], 2), "\u0001\u0001", "\u0011\u0018\u0004\u0011\u0018\f\b\u0011\u0018\u0014\t\u0003\b\u000b", new Object[]{Lit25, PairWithPosition.make(Lit27, PairWithPosition.make(PairWithPosition.make(Lit26, PairWithPosition.make(Values.empty, LList.Empty, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102430), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102421), PairWithPosition.make(PairWithPosition.make(Lit28, PairWithPosition.make(PairWithPosition.make(Lit29, PairWithPosition.make(PairWithPosition.make(Lit30, PairWithPosition.make(Lit26, LList.Empty, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102454), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102454), LList.Empty, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102453), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102444), LList.Empty, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102444), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102438), LList.Empty, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102438), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102421), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 102408), Lit31}, 0)}, 2);
        Lit5 = new SyntaxPattern("\f\u0007\u000b", new Object[0], 2);
        Lit4 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0018\u0004", new Object[]{PairWithPosition.make((SimpleSymbol) new SimpleSymbol("::").readResolve(), PairWithPosition.make((SimpleSymbol) new SimpleSymbol("<int>").readResolve(), PairWithPosition.make(IntNum.make(123), LList.Empty, "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 53270), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 53264), "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm", 53260)}, 0);
        Lit3 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0013", new Object[0], 0);
        Lit2 = new SyntaxTemplate("\u0001\u0001\u0001", "\u0018\u0004", new Object[]{(SimpleSymbol) new SimpleSymbol("define-constant").readResolve()}, 0);
        Lit1 = new SyntaxPattern("\f\u0007,\f\u000f\f\u0017\b\b", new Object[0], 3);
        Lit0 = (SimpleSymbol) new SimpleSymbol("provide").readResolve();
        $instance = new misc_syntax();
        $Prvt$define$Mnconstant = StaticFieldLocation.make("kawa.lib.prim_syntax", "define$Mnconstant");
        SimpleSymbol simpleSymbol5 = Lit0;
        misc_syntax misc_syntaxVar = $instance;
        provide = Macro.make(simpleSymbol5, new ModuleMethod(misc_syntaxVar, 1, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN), $instance);
        test$Mnbegin = Macro.make(Lit6, Lit7, $instance);
        SimpleSymbol simpleSymbol6 = Lit8;
        ModuleMethod moduleMethod = new ModuleMethod(misc_syntaxVar, 2, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm:29");
        module$Mnuri = Macro.make(simpleSymbol6, moduleMethod, $instance);
        resource$Mnurl = Macro.make(Lit10, Lit11, $instance);
        SimpleSymbol simpleSymbol7 = Lit12;
        ModuleMethod moduleMethod2 = new ModuleMethod(misc_syntaxVar, 3, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/kawa/lib/misc_syntax.scm:54");
        include = Macro.make(simpleSymbol7, moduleMethod2, $instance);
        include$Mnrelative = Macro.make(Lit18, new ModuleMethod(misc_syntaxVar, 4, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN), $instance);
        $instance.run();
    }

    public misc_syntax() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext $ctx) {
        Consumer $result = $ctx.consumer;
    }

    static Object lambda1(Object form) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(3, null);
        if (Lit1.match(form, objArrAllocVars, 0)) {
            Object objExecute = Lit2.execute(objArrAllocVars, TemplateScope.make());
            Object objQuote = Quote.quote(Lit3.execute(objArrAllocVars, TemplateScope.make()));
            try {
                return lists.cons(objExecute, lists.cons(SyntaxForms.makeWithTemplate(form, misc.string$To$Symbol(strings.stringAppend("%provide%", ((Symbol) objQuote).toString()))), Lit4.execute(objArrAllocVars, TemplateScope.make())));
            } catch (ClassCastException e) {
                throw new WrongType(e, "symbol->string", 1, objQuote);
            }
        }
        if (Lit5.match(form, objArrAllocVars, 0)) {
            return prim_syntax.syntaxError(form, "provide requires a quoted feature-name" instanceof Object[] ? (Object[]) "provide requires a quoted feature-name" : new Object[]{"provide requires a quoted feature-name"});
        }
        return syntax_case.error("syntax-case", form);
    }

    static Object lambda2(Object form) {
        return Lit9.match(form, SyntaxPattern.allocVars(1, null), 0) ? GetModuleClass.getModuleClassURI(Compilation.getCurrent()) : syntax_case.error("syntax-case", form);
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 1:
            case 2:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 3:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 4:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            default:
                return super.match1(moduleMethod, obj, callContext);
        }
    }

    static Object lambda3(Object x) throws SyntaxException, IOException {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(2, null);
        if (Lit13.match(x, objArrAllocVars, 0)) {
            Object fn = Quote.quote(Lit14.execute(objArrAllocVars, TemplateScope.make()));
            Object k = Lit15.execute(objArrAllocVars, TemplateScope.make());
            frame frameVar = new frame();
            frameVar.k = k;
            try {
                frameVar.p = ports.openInputFile(Path.valueOf(fn));
                Object k2 = frameVar.lambda4f();
                Object[] objArrAllocVars2 = SyntaxPattern.allocVars(3, objArrAllocVars);
                if (!Lit16.match(k2, objArrAllocVars2, 0)) {
                    return syntax_case.error("syntax-case", k2);
                }
                return Lit17.execute(objArrAllocVars2, TemplateScope.make());
            } catch (ClassCastException e) {
                throw new WrongType(e, "open-input-file", 1, fn);
            }
        }
        return syntax_case.error("syntax-case", x);
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        switch (moduleMethod.selector) {
            case 1:
                return lambda1(obj);
            case 2:
                return lambda2(obj);
            case 3:
                return lambda3(obj);
            case 4:
                return lambda5(obj);
            default:
                return super.apply1(moduleMethod, obj);
        }
    }

    /* JADX INFO: compiled from: misc_syntax.scm */
    public class frame extends ModuleBody {
        Object k;
        InPort p;

        public Object lambda4f() throws SyntaxException, IOException {
            Object x = ports.read(this.p);
            if (ports.isEofObject(x)) {
                ports.closeInputPort(this.p);
                return LList.Empty;
            }
            return new Pair(SyntaxForms.makeWithTemplate(this.k, x), lambda4f());
        }
    }

    static Object lambda5(Object x) {
        Object[] objArrAllocVars = SyntaxPattern.allocVars(2, null);
        if (Lit19.match(x, objArrAllocVars, 0)) {
            Object objQuote = Quote.quote(Lit20.execute(objArrAllocVars, TemplateScope.make()));
            try {
                PairWithPosition path$Mnpair = (PairWithPosition) objQuote;
                Path base = Path.valueOf(path$Mnpair.getFileName());
                String fname = path$Mnpair.getCar().toString();
                return LList.list2(SyntaxForms.makeWithTemplate(Lit21.execute(objArrAllocVars, TemplateScope.make()), Lit12), SyntaxForms.makeWithTemplate(Lit22.execute(objArrAllocVars, TemplateScope.make()), base.resolve(fname).toString()));
            } catch (ClassCastException e) {
                throw new WrongType(e, "path-pair", -2, objQuote);
            }
        }
        return syntax_case.error("syntax-case", x);
    }
}
