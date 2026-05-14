package gnu.kawa.slib;

import androidx.fragment.app.FragmentTransaction;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.kawa.functions.Apply;
import gnu.kawa.functions.IsEq;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.kawa.slib.condition;
import gnu.lists.Consumer;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import kawa.lang.Macro;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxRule;
import kawa.lang.SyntaxRules;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.standard.Scheme;
import kawa.standard.append;

/* JADX INFO: compiled from: conditions.scm */
/* JADX INFO: loaded from: classes2.dex */
public class conditions extends ModuleBody {
    public static Object $Amcondition;
    public static Object $Amerror;
    public static Object $Ammessage;
    public static Object $Amserious;
    static final Class $Lscondition$Mntype$Gr;
    public static final Class $Prvt$$Lscondition$Gr;
    public static final ModuleMethod $Prvt$type$Mnfield$Mnalist$Mn$Grcondition;
    public static final conditions $instance;
    static final SimpleSymbol Lit0;
    static final SimpleSymbol Lit1;
    static final SimpleSymbol Lit10;
    static final SimpleSymbol Lit11;
    static final SimpleSymbol Lit12;
    static final SimpleSymbol Lit13;
    static final SyntaxRules Lit14;
    static final SimpleSymbol Lit15;
    static final SimpleSymbol Lit16;
    static final SimpleSymbol Lit17;
    static final SimpleSymbol Lit18;
    static final SyntaxRules Lit19;
    static final PairWithPosition Lit2;
    static final SimpleSymbol Lit3;
    static final SimpleSymbol Lit4;
    static final SimpleSymbol Lit5;
    static final SimpleSymbol Lit6;
    static final SimpleSymbol Lit7;
    static final SimpleSymbol Lit8;
    static final SyntaxRules Lit9;
    public static final Macro condition;
    public static final ModuleMethod condition$Mnhas$Mntype$Qu;
    public static final ModuleMethod condition$Mnref;
    static final Macro condition$Mntype$Mnfield$Mnalist;
    public static final ModuleMethod condition$Mntype$Qu;
    public static final ModuleMethod condition$Qu;
    public static final Macro define$Mncondition$Mntype;
    public static final ModuleMethod extract$Mncondition;
    public static final ModuleMethod make$Mncompound$Mncondition;
    public static final ModuleMethod make$Mncondition;
    public static final ModuleMethod make$Mncondition$Mntype;
    static final SimpleSymbol Lit22 = (SimpleSymbol) new SimpleSymbol("thing").readResolve();
    static final SimpleSymbol Lit21 = (SimpleSymbol) new SimpleSymbol(LispLanguage.quote_sym).readResolve();
    static final SimpleSymbol Lit20 = (SimpleSymbol) new SimpleSymbol("type-field-alist->condition").readResolve();

    public conditions() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext $ctx) {
        Consumer $result = $ctx.consumer;
        $Amcondition = new condition.Mntype(Lit0, Boolean.FALSE, LList.Empty, LList.Empty);
        SimpleSymbol simpleSymbol = Lit1;
        Object obj = $Amcondition;
        try {
            $Ammessage = makeConditionType(simpleSymbol, (condition.Mntype) obj, Lit2);
            SimpleSymbol simpleSymbol2 = Lit3;
            Object obj2 = $Amcondition;
            try {
                $Amserious = makeConditionType(simpleSymbol2, (condition.Mntype) obj2, LList.Empty);
                SimpleSymbol simpleSymbol3 = Lit4;
                Object obj3 = $Amserious;
                try {
                    $Amerror = makeConditionType(simpleSymbol3, (condition.Mntype) obj3, LList.Empty);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "make-condition-type", 1, obj3);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "make-condition-type", 1, obj2);
            }
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "make-condition-type", 1, obj);
        }
    }

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) new SimpleSymbol("condition").readResolve();
        Lit18 = simpleSymbol;
        Lit19 = new SyntaxRules(new Object[]{simpleSymbol}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018]\f\u0007-\f\u000f\f\u0017\b\b\u0010\b\u0000\u0018\b", new Object[0], 3), "\u0003\u0005\u0005", "\u0011\u0018\u0004\b\u0011\u0018\f\b\u0005\u0011\u0018\u0014\t\u0003\b\u0011\u0018\f\b\r\u0011\u0018\u0014)\u0011\u0018\u001c\b\u000b\b\u0013", new Object[]{Lit20, (SimpleSymbol) new SimpleSymbol("list").readResolve(), (SimpleSymbol) new SimpleSymbol("cons").readResolve(), Lit21}, 2)}, 3);
        Lit17 = (SimpleSymbol) new SimpleSymbol("extract-condition").readResolve();
        Lit16 = (SimpleSymbol) new SimpleSymbol("make-compound-condition").readResolve();
        Lit15 = (SimpleSymbol) new SimpleSymbol("condition-ref").readResolve();
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) new SimpleSymbol("condition-type-field-alist").readResolve();
        Lit13 = simpleSymbol2;
        Lit14 = new SyntaxRules(new Object[]{simpleSymbol2}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u0004\b\u0011\u0018\f\u0011\u0018\u0014\b\u0003", new Object[]{PairWithPosition.make((SimpleSymbol) new SimpleSymbol("$lookup$").readResolve(), Pair.make((SimpleSymbol) new SimpleSymbol("*").readResolve(), Pair.make(Pair.make((SimpleSymbol) new SimpleSymbol(LispLanguage.quasiquote_sym).readResolve(), Pair.make((SimpleSymbol) new SimpleSymbol(".type-field-alist").readResolve(), LList.Empty)), LList.Empty)), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm", 581639), (SimpleSymbol) new SimpleSymbol("as").readResolve(), (SimpleSymbol) new SimpleSymbol("<condition>").readResolve()}, 0)}, 1);
        Lit12 = (SimpleSymbol) new SimpleSymbol("condition-has-type?").readResolve();
        Lit11 = (SimpleSymbol) new SimpleSymbol("make-condition").readResolve();
        Lit10 = (SimpleSymbol) new SimpleSymbol("condition?").readResolve();
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) new SimpleSymbol("define-condition-type").readResolve();
        Lit8 = simpleSymbol3;
        SyntaxPattern syntaxPattern = new SyntaxPattern("\f\u0018\f\u0007\f\u000f\f\u0017-\f\u001f\f'\b\u0018\u0010\b", new Object[0], 5);
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) new SimpleSymbol("begin").readResolve();
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) new SimpleSymbol("define").readResolve();
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) new SimpleSymbol("make-condition-type").readResolve();
        Lit7 = simpleSymbol6;
        Lit9 = new SyntaxRules(new Object[]{simpleSymbol3}, new SyntaxRule[]{new SyntaxRule(syntaxPattern, "\u0001\u0001\u0001\u0003\u0003", "\u0011\u0018\u0004É\u0011\u0018\f\t\u0003\b\u0011\u0018\u0014)\u0011\u0018\u001c\b\u0003\t\u000b\b\u0011\u0018\u001c\b\b\u001d\u001bÁ\u0011\u0018\f!\t\u0013\u0018$\b\u0011\u0018,\u0011\u00184\b\u0011\u0018<\u0011\u0018D\b\u0003\b%\u0011\u0018\f!\t#\u0018L\b\u0011\u0018TA\u0011\u0018\\\u0011\u0018d\b\u0003\b\u0011\u0018\u001c\b\u001b", new Object[]{simpleSymbol4, simpleSymbol5, simpleSymbol6, Lit21, PairWithPosition.make(Lit22, LList.Empty, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm", 327708), (SimpleSymbol) new SimpleSymbol("and").readResolve(), PairWithPosition.make(Lit10, PairWithPosition.make(Lit22, LList.Empty, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm", 331803), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm", 331791), Lit12, Lit22, PairWithPosition.make(Lit18, LList.Empty, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm", 339996), Lit15, Lit17, Lit18}, 1)}, 5);
        Lit6 = (SimpleSymbol) new SimpleSymbol("condition-type?").readResolve();
        Lit5 = (SimpleSymbol) new SimpleSymbol("message").readResolve();
        Lit4 = (SimpleSymbol) new SimpleSymbol("&error").readResolve();
        Lit3 = (SimpleSymbol) new SimpleSymbol("&serious").readResolve();
        Lit2 = PairWithPosition.make(Lit5, LList.Empty, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm", 925699);
        Lit1 = (SimpleSymbol) new SimpleSymbol("&message").readResolve();
        Lit0 = (SimpleSymbol) new SimpleSymbol("&condition").readResolve();
        $instance = new conditions();
        $Lscondition$Mntype$Gr = condition.Mntype.class;
        conditions conditionsVar = $instance;
        condition$Mntype$Qu = new ModuleMethod(conditionsVar, 2, Lit6, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        make$Mncondition$Mntype = new ModuleMethod(conditionsVar, 3, Lit7, 12291);
        define$Mncondition$Mntype = Macro.make(Lit8, Lit9, $instance);
        $Prvt$$Lscondition$Gr = condition.class;
        condition$Qu = new ModuleMethod(conditionsVar, 4, Lit10, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        make$Mncondition = new ModuleMethod(conditionsVar, 5, Lit11, -4095);
        condition$Mnhas$Mntype$Qu = new ModuleMethod(conditionsVar, 6, Lit12, 8194);
        condition$Mntype$Mnfield$Mnalist = Macro.make(Lit13, Lit14, $instance);
        condition$Mnref = new ModuleMethod(conditionsVar, 7, Lit15, 8194);
        make$Mncompound$Mncondition = new ModuleMethod(conditionsVar, 8, Lit16, -4095);
        extract$Mncondition = new ModuleMethod(conditionsVar, 9, Lit17, 8194);
        condition = Macro.make(Lit18, Lit19, $instance);
        $Prvt$type$Mnfield$Mnalist$Mn$Grcondition = new ModuleMethod(conditionsVar, 10, Lit20, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
        $instance.run();
    }

    public static boolean isConditionType(Object obj) {
        return obj instanceof condition.Mntype;
    }

    @Override // gnu.expr.ModuleBody
    public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 2:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 4:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            case 10:
                callContext.value1 = obj;
                callContext.proc = moduleMethod;
                callContext.pc = 1;
                return 0;
            default:
                return super.match1(moduleMethod, obj, callContext);
        }
    }

    public static condition.Mntype makeConditionType(Symbol name, condition.Mntype supertype, Object fields) throws Throwable {
        if (!lists.isNull(srfi1.lsetIntersection$V(Scheme.isEq, supertype.all$Mnfields, new Object[]{fields}))) {
            misc.error$V("duplicate field name", new Object[0]);
        }
        return new condition.Mntype(name, supertype, fields, append.append$V(new Object[]{supertype.all$Mnfields, fields}));
    }

    @Override // gnu.expr.ModuleBody
    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
        if (moduleMethod.selector != 3) {
            return super.apply3(moduleMethod, obj, obj2, obj3);
        }
        try {
            try {
                return makeConditionType((Symbol) obj, (condition.Mntype) obj2, obj3);
            } catch (ClassCastException e) {
                throw new WrongType(e, "make-condition-type", 2, obj2);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "make-condition-type", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        if (moduleMethod.selector != 3) {
            return super.match3(moduleMethod, obj, obj2, obj3, callContext);
        }
        if (!(obj instanceof Symbol)) {
            return -786431;
        }
        callContext.value1 = obj;
        if (!(obj2 instanceof condition.Mntype)) {
            return -786430;
        }
        callContext.value2 = obj2;
        callContext.value3 = obj3;
        callContext.proc = moduleMethod;
        callContext.pc = 3;
        return 0;
    }

    static boolean isConditionSubtype(condition.Mntype subtype, condition.Mntype supertype) {
        for (condition.Mntype subtype2 = subtype; subtype2 != Boolean.FALSE; subtype2 = (condition.Mntype) subtype2.supertype) {
            if (subtype2 == supertype) {
                return true;
            }
        }
        return false;
    }

    static Object conditionTypeFieldSupertype(condition.Mntype condition$Mntype, Object field) {
        for (condition.Mntype condition$Mntype2 = condition$Mntype; condition$Mntype2 != Boolean.FALSE; condition$Mntype2 = (condition.Mntype) condition$Mntype2.supertype) {
            if (lists.memq(field, condition$Mntype2.fields) != Boolean.FALSE) {
                return condition$Mntype2;
            }
        }
        return Boolean.FALSE;
    }

    public static boolean isCondition(Object obj) {
        return obj instanceof condition;
    }

    public static condition makeCondition$V(condition.Mntype type, Object[] argsArray) throws Throwable {
        LList field$Mnplist = LList.makeList(argsArray, 0);
        Object alist = lambda1label(field$Mnplist);
        IsEq isEq = Scheme.isEq;
        Object obj = type.all$Mnfields;
        Object result = LList.Empty;
        Object arg0 = alist;
        while (arg0 != LList.Empty) {
            try {
                Pair arg02 = (Pair) arg0;
                arg0 = arg02.getCdr();
                result = Pair.make(lists.car.apply1(arg02.getCar()), result);
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, arg0);
            }
        }
        if (srfi1.lset$Eq$V(isEq, new Object[]{obj, LList.reverseInPlace(result)}) == Boolean.FALSE) {
            misc.error$V("condition fields don't match condition type", new Object[0]);
        }
        return new condition(LList.list1(lists.cons(type, alist)));
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 5:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 8:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            default:
                return super.matchN(moduleMethod, objArr, callContext);
        }
    }

    public static Object lambda1label(Object plist) {
        return lists.isNull(plist) ? LList.Empty : lists.cons(lists.cons(lists.car.apply1(plist), lists.cadr.apply1(plist)), lambda1label(lists.cddr.apply1(plist)));
    }

    public static boolean isConditionHasType(Object condition2, condition.Mntype type) throws Throwable {
        Object types = conditionTypes(condition2);
        while (true) {
            Object objApply1 = lists.car.apply1(types);
            try {
                boolean x = isConditionSubtype((condition.Mntype) objApply1, type);
                if (x) {
                    return x;
                }
                types = lists.cdr.apply1(types);
            } catch (ClassCastException e) {
                throw new WrongType(e, "condition-subtype?", 0, objApply1);
            }
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 6:
                callContext.value1 = obj;
                if (!(obj2 instanceof condition.Mntype)) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 7:
                if (!(obj instanceof condition)) {
                    return -786431;
                }
                callContext.value1 = obj;
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
            case 8:
            default:
                return super.match2(moduleMethod, obj, obj2, callContext);
            case 9:
                if (!(obj instanceof condition)) {
                    return -786431;
                }
                callContext.value1 = obj;
                if (!(obj2 instanceof condition.Mntype)) {
                    return -786430;
                }
                callContext.value2 = obj2;
                callContext.proc = moduleMethod;
                callContext.pc = 2;
                return 0;
        }
    }

    public static Object conditionRef(condition condition2, Object field) {
        return typeFieldAlistRef(condition2.type$Mnfield$Mnalist, field);
    }

    static Object typeFieldAlistRef(Object type$Mnfield$Mnalist, Object field) throws Throwable {
        Object type$Mnfield$Mnalist2 = type$Mnfield$Mnalist;
        while (!lists.isNull(type$Mnfield$Mnalist2)) {
            Object temp = lists.assq(field, lists.cdr.apply1(lists.car.apply1(type$Mnfield$Mnalist2)));
            if (temp != Boolean.FALSE) {
                return lists.cdr.apply1(temp);
            }
            type$Mnfield$Mnalist2 = lists.cdr.apply1(type$Mnfield$Mnalist2);
        }
        return misc.error$V("type-field-alist-ref: field not found", new Object[]{type$Mnfield$Mnalist2, field});
    }

    public static condition makeCompoundCondition$V(Object condition$Mn1, Object[] argsArray) {
        LList conditions = LList.makeList(argsArray, 0);
        Apply apply = Scheme.apply;
        append appendVar = append.append;
        Object arg0 = lists.cons(condition$Mn1, conditions);
        Object result = LList.Empty;
        while (arg0 != LList.Empty) {
            try {
                Pair arg02 = (Pair) arg0;
                Object cdr = arg02.getCdr();
                result = Pair.make(Scheme.applyToArgs.apply2(condition$Mntype$Mnfield$Mnalist, arg02.getCar()), result);
                arg0 = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, arg0);
            }
        }
        Object arg03 = LList.reverseInPlace(result);
        return new condition(apply.apply2(appendVar, arg03));
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        switch (moduleMethod.selector) {
            case 5:
                Object obj = objArr[0];
                try {
                    condition.Mntype mntype = (condition.Mntype) obj;
                    int length = objArr.length - 1;
                    Object[] objArr2 = new Object[length];
                    while (true) {
                        length--;
                        if (length < 0) {
                            return makeCondition$V(mntype, objArr2);
                        }
                        objArr2[length] = objArr[length + 1];
                    }
                } catch (ClassCastException e) {
                    throw new WrongType(e, "make-condition", 1, obj);
                }
                break;
            case 8:
                Object obj2 = objArr[0];
                int length2 = objArr.length - 1;
                Object[] objArr3 = new Object[length2];
                while (true) {
                    length2--;
                    if (length2 < 0) {
                        return makeCompoundCondition$V(obj2, objArr3);
                    }
                    objArr3[length2] = objArr[length2 + 1];
                }
                break;
            default:
                return super.applyN(moduleMethod, objArr);
        }
    }

    public static condition extractCondition(condition condition2, condition.Mntype type) throws Throwable {
        frame frameVar = new frame();
        frameVar.type = type;
        Object entry = srfi1.find(frameVar.lambda$Fn1, condition2.type$Mnfield$Mnalist);
        if (entry == Boolean.FALSE) {
            misc.error$V("extract-condition: invalid condition type", new Object[]{condition2, frameVar.type});
        }
        condition.Mntype mntype = frameVar.type;
        Object arg0 = frameVar.type.all$Mnfields;
        Object result = LList.Empty;
        while (arg0 != LList.Empty) {
            try {
                Pair arg02 = (Pair) arg0;
                Object cdr = arg02.getCdr();
                Object field = arg02.getCar();
                result = Pair.make(lists.assq(field, lists.cdr.apply1(entry)), result);
                arg0 = cdr;
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, arg0);
            }
        }
        Object arg03 = LList.reverseInPlace(result);
        return new condition(LList.list1(lists.cons(mntype, arg03)));
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        switch (moduleMethod.selector) {
            case 6:
                try {
                    return isConditionHasType(obj, (condition.Mntype) obj2) ? Boolean.TRUE : Boolean.FALSE;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "condition-has-type?", 2, obj2);
                }
            case 7:
                try {
                    return conditionRef((condition) obj, obj2);
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "condition-ref", 1, obj);
                }
            case 8:
            default:
                return super.apply2(moduleMethod, obj, obj2);
            case 9:
                try {
                    try {
                        return extractCondition((condition) obj, (condition.Mntype) obj2);
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "extract-condition", 2, obj2);
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "extract-condition", 1, obj);
                }
        }
    }

    /* JADX INFO: compiled from: conditions.scm */
    public class frame extends ModuleBody {
        final ModuleMethod lambda$Fn1;
        condition.Mntype type;

        public frame() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 1, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm:166");
            this.lambda$Fn1 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 1 ? lambda2(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        boolean lambda2(Object entry) throws Throwable {
            Object objApply1 = lists.car.apply1(entry);
            try {
                return conditions.isConditionSubtype((condition.Mntype) objApply1, this.type);
            } catch (ClassCastException e) {
                throw new WrongType(e, "condition-subtype?", 0, objApply1);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 1) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static condition typeFieldAlist$To$Condition(Object type$Mnfield$Mnalist) throws Throwable {
        Object result = LList.Empty;
        Object arg0 = type$Mnfield$Mnalist;
        while (arg0 != LList.Empty) {
            try {
                Pair arg02 = (Pair) arg0;
                Object cdr = arg02.getCdr();
                Object entry = arg02.getCar();
                Object objApply1 = lists.car.apply1(entry);
                Object arg03 = ((condition.Mntype) lists.car.apply1(entry)).all$Mnfields;
                Object result2 = LList.Empty;
                while (arg03 != LList.Empty) {
                    try {
                        Pair arg04 = (Pair) arg03;
                        Object cdr2 = arg04.getCdr();
                        Object field = arg04.getCar();
                        Object x = lists.assq(field, lists.cdr.apply1(entry));
                        result2 = Pair.make(x != Boolean.FALSE ? x : lists.cons(field, typeFieldAlistRef(type$Mnfield$Mnalist, field)), result2);
                        arg03 = cdr2;
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "arg0", -2, arg03);
                    }
                }
                result = Pair.make(lists.cons(objApply1, LList.reverseInPlace(result2)), result);
                arg0 = cdr;
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "arg0", -2, arg0);
            }
        }
        return new condition(LList.reverseInPlace(result));
    }

    @Override // gnu.expr.ModuleBody
    public Object apply1(ModuleMethod moduleMethod, Object obj) {
        switch (moduleMethod.selector) {
            case 2:
                return isConditionType(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 4:
                return isCondition(obj) ? Boolean.TRUE : Boolean.FALSE;
            case 10:
                return typeFieldAlist$To$Condition(obj);
            default:
                return super.apply1(moduleMethod, obj);
        }
    }

    static Object conditionTypes(Object condition2) {
        Object arg0 = ((condition) condition2).type$Mnfield$Mnalist;
        Object result = LList.Empty;
        while (arg0 != LList.Empty) {
            try {
                Pair arg02 = (Pair) arg0;
                arg0 = arg02.getCdr();
                result = Pair.make(lists.car.apply1(arg02.getCar()), result);
            } catch (ClassCastException e) {
                throw new WrongType(e, "arg0", -2, arg0);
            }
        }
        Object arg03 = LList.reverseInPlace(result);
        return arg03;
    }

    static Object checkConditionTypeFieldAlist(Object the$Mntype$Mnfield$Mnalist) throws Throwable {
        boolean x;
        for (Object type$Mnfield$Mnalist = the$Mntype$Mnfield$Mnalist; !lists.isNull(type$Mnfield$Mnalist); type$Mnfield$Mnalist = lists.cdr.apply1(type$Mnfield$Mnalist)) {
            Object entry = lists.car.apply1(type$Mnfield$Mnalist);
            Object objApply1 = lists.car.apply1(entry);
            try {
                condition.Mntype type = (condition.Mntype) objApply1;
                Object field$Mnalist = lists.cdr.apply1(entry);
                Object result = LList.Empty;
                Object arg0 = field$Mnalist;
                while (arg0 != LList.Empty) {
                    try {
                        Pair arg02 = (Pair) arg0;
                        arg0 = arg02.getCdr();
                        result = Pair.make(lists.car.apply1(arg02.getCar()), result);
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "arg0", -2, arg0);
                    }
                }
                LList fields = LList.reverseInPlace(result);
                Object all$Mnfields = type.all$Mnfields;
                Object arg03 = srfi1.lsetDifference$V(Scheme.isEq, all$Mnfields, new Object[]{fields});
                while (arg03 != LList.Empty) {
                    try {
                        Pair arg04 = (Pair) arg03;
                        Object missing$Mnfield = arg04.getCar();
                        Object supertype = conditionTypeFieldSupertype(type, missing$Mnfield);
                        Object alist = the$Mntype$Mnfield$Mnalist;
                        while (true) {
                            Object objApply12 = lists.car.apply1(lists.car.apply1(alist));
                            try {
                                try {
                                    x = isConditionSubtype((condition.Mntype) objApply12, (condition.Mntype) supertype);
                                    if (x) {
                                        break;
                                    }
                                    alist = lists.cdr.apply1(alist);
                                } catch (ClassCastException e2) {
                                    throw new WrongType(e2, "condition-subtype?", 1, supertype);
                                }
                            } catch (ClassCastException e3) {
                                throw new WrongType(e3, "condition-subtype?", 0, objApply12);
                            }
                        }
                        if (!x) {
                            misc.error$V("missing field in condition construction", new Object[]{type, missing$Mnfield});
                        }
                        arg03 = arg04.getCdr();
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "arg0", -2, arg03);
                    }
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "type", -2, objApply1);
            }
        }
        Object type$Mnfield$Mnalist2 = Values.empty;
        return type$Mnfield$Mnalist2;
    }

    static boolean isMessageCondition(Object thing) {
        boolean x = isCondition(thing);
        if (!x) {
            return x;
        }
        Object obj = $Ammessage;
        try {
            return isConditionHasType(thing, (condition.Mntype) obj);
        } catch (ClassCastException e) {
            throw new WrongType(e, "condition-has-type?", 1, obj);
        }
    }

    static Object conditionMessage(Object condition2) {
        try {
            condition conditionVar = (condition) condition2;
            Object obj = $Ammessage;
            try {
                return conditionRef(extractCondition(conditionVar, (condition.Mntype) obj), Lit5);
            } catch (ClassCastException e) {
                throw new WrongType(e, "extract-condition", 1, obj);
            }
        } catch (ClassCastException e2) {
            throw new WrongType(e2, "extract-condition", 0, condition2);
        }
    }

    static boolean isSeriousCondition(Object thing) {
        boolean x = isCondition(thing);
        if (!x) {
            return x;
        }
        Object obj = $Amserious;
        try {
            return isConditionHasType(thing, (condition.Mntype) obj);
        } catch (ClassCastException e) {
            throw new WrongType(e, "condition-has-type?", 1, obj);
        }
    }

    static boolean isError(Object thing) {
        boolean x = isCondition(thing);
        if (!x) {
            return x;
        }
        Object obj = $Amerror;
        try {
            return isConditionHasType(thing, (condition.Mntype) obj);
        } catch (ClassCastException e) {
            throw new WrongType(e, "condition-has-type?", 1, obj);
        }
    }
}
