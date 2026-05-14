package gnu.kawa.slib;

import androidx.fragment.app.FragmentTransaction;
import appinventor.ai_quachtanhung124.artificial_eyes.R;
import com.google.appinventor.components.runtime.Component;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.expr.Special;
import gnu.kawa.functions.AddOp;
import gnu.kawa.functions.ApplyToArgs;
import gnu.kawa.functions.IsEqual;
import gnu.kawa.functions.IsEqv;
import gnu.kawa.functions.MultiplyOp;
import gnu.kawa.lispexpr.LangObjType;
import gnu.lists.Consumer;
import gnu.lists.FString;
import gnu.lists.FVector;
import gnu.lists.LList;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.Procedure;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.mapping.WrongType;
import gnu.math.Complex;
import gnu.math.IntNum;
import gnu.text.Char;
import kawa.lib.characters;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.lib.numbers;
import kawa.lib.ports;
import kawa.lib.rnrs.unicode;
import kawa.lib.strings;
import kawa.standard.Scheme;
import kawa.standard.append;

/* JADX INFO: compiled from: printf.scm */
/* JADX INFO: loaded from: classes2.dex */
public class printf extends ModuleBody {
    public static final printf $instance;
    static final IntNum Lit0;
    static final IntNum Lit1;
    static final PairWithPosition Lit10;
    static final Char Lit11;
    static final Char Lit12;
    static final Char Lit13;
    static final IntNum Lit14;
    static final IntNum Lit15;
    static final IntNum Lit16;
    static final IntNum Lit17;
    static final Char Lit18;
    static final Char Lit19;
    static final PairWithPosition Lit2;
    static final Char Lit20;
    static final Char Lit21;
    static final Char Lit22;
    static final Char Lit23;
    static final Char Lit24;
    static final Char Lit25;
    static final Char Lit26;
    static final Char Lit27;
    static final Char Lit28;
    static final Char Lit29;
    static final Char Lit3;
    static final Char Lit30;
    static final Char Lit31;
    static final Char Lit32;
    static final PairWithPosition Lit33;
    static final Char Lit4;
    static final Char Lit5;
    static final Char Lit6;
    static final IntNum Lit7;
    static final Char Lit8;
    static final Char Lit9;
    public static final ModuleMethod fprintf;
    public static final ModuleMethod printf;
    public static final ModuleMethod sprintf;
    public static final boolean stdio$Clhex$Mnupper$Mncase$Qu = false;
    public static final ModuleMethod stdio$Cliprintf;
    public static final ModuleMethod stdio$Clparse$Mnfloat;
    public static final ModuleMethod stdio$Clround$Mnstring;
    static final SimpleSymbol Lit72 = (SimpleSymbol) new SimpleSymbol("fprintf").readResolve();
    static final SimpleSymbol Lit71 = (SimpleSymbol) new SimpleSymbol("stdio:iprintf").readResolve();
    static final SimpleSymbol Lit70 = (SimpleSymbol) new SimpleSymbol("stdio:round-string").readResolve();
    static final SimpleSymbol Lit69 = (SimpleSymbol) new SimpleSymbol("stdio:parse-float").readResolve();
    static final SimpleSymbol Lit68 = (SimpleSymbol) new SimpleSymbol("sprintf").readResolve();
    static final SimpleSymbol Lit67 = (SimpleSymbol) new SimpleSymbol("pad").readResolve();
    static final Char Lit66 = Char.make(42);
    static final Char Lit65 = Char.make(63);
    static final SimpleSymbol Lit64 = (SimpleSymbol) new SimpleSymbol("format-real").readResolve();
    static final PairWithPosition Lit63 = PairWithPosition.make("i", LList.Empty, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1634315);
    static final FVector Lit62 = FVector.make("y", "z", "a", "f", "p", "n", "u", "m", "", "k", "M", "G", "T", "P", "E", "Z", "Y");
    static final IntNum Lit61 = IntNum.make(3);
    static final IntNum Lit60 = IntNum.make(-10);
    static final IntNum Lit59 = IntNum.make(6);
    static final Char Lit58 = Char.make(75);
    static final Char Lit57 = Char.make(107);
    static final Char Lit56 = Char.make(71);
    static final Char Lit55 = Char.make(103);
    static final Char Lit54 = Char.make(69);
    static final Char Lit53 = Char.make(66);
    static final Char Lit52 = Char.make(98);
    static final Char Lit51 = Char.make(88);
    static final IntNum Lit50 = IntNum.make(16);
    static final Char Lit49 = Char.make(R.styleable.AppCompatTheme_viewInflaterClass);
    static final IntNum Lit48 = IntNum.make(8);
    static final Char Lit47 = Char.make(79);
    static final Char Lit46 = Char.make(111);
    static final IntNum Lit45 = IntNum.make(10);
    static final Char Lit44 = Char.make(85);
    static final Char Lit43 = Char.make(117);
    static final Char Lit42 = Char.make(73);
    static final Char Lit41 = Char.make(68);
    static final Char Lit40 = Char.make(65);
    static final Char Lit39 = Char.make(97);
    static final Char Lit38 = Char.make(83);
    static final Char Lit37 = Char.make(115);
    static final Char Lit36 = Char.make(67);
    static final Char Lit35 = Char.make(99);
    static final SimpleSymbol Lit34 = (SimpleSymbol) new SimpleSymbol("printf").readResolve();

    static {
        Char r0 = Lit35;
        Char r5 = Lit37;
        Char r7 = Lit39;
        Char charMake = Char.make(100);
        Lit12 = charMake;
        Char charMake2 = Char.make(105);
        Lit3 = charMake2;
        Char r13 = Lit43;
        Char r14 = Lit46;
        Char r15 = Lit49;
        Char r1 = Lit52;
        Char charMake3 = Char.make(102);
        Lit25 = charMake3;
        Char charMake4 = Char.make(101);
        Lit13 = charMake4;
        Lit33 = PairWithPosition.make(r0, PairWithPosition.make(r5, PairWithPosition.make(r7, PairWithPosition.make(charMake, PairWithPosition.make(charMake2, PairWithPosition.make(r13, PairWithPosition.make(r14, PairWithPosition.make(r15, PairWithPosition.make(r1, PairWithPosition.make(charMake3, PairWithPosition.make(charMake4, PairWithPosition.make(Lit55, PairWithPosition.make(Lit57, LList.Empty, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1781780), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1781776), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1781772), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1781768), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1777704), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1777700), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1777696), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1777692), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1777688), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1777684), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1777680), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1777676), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 1777671);
        Lit32 = Char.make(104);
        Lit31 = Char.make(76);
        Lit30 = Char.make(108);
        Lit29 = Char.make(32);
        Lit28 = Char.make(37);
        Lit27 = Char.make(12);
        Lit26 = Char.make(70);
        Lit24 = Char.make(9);
        Lit23 = Char.make(84);
        Lit22 = Char.make(116);
        Lit21 = Char.make(10);
        Lit20 = Char.make(78);
        Lit19 = Char.make(110);
        Lit18 = Char.make(92);
        Lit17 = IntNum.make(-1);
        Lit16 = IntNum.make(9);
        Lit15 = IntNum.make(5);
        Lit14 = IntNum.make(2);
        Lit11 = Char.make(46);
        Lit10 = PairWithPosition.make(Lit13, PairWithPosition.make(Lit37, PairWithPosition.make(Lit25, PairWithPosition.make(Lit12, PairWithPosition.make(Lit30, PairWithPosition.make(Lit54, PairWithPosition.make(Lit38, PairWithPosition.make(Lit26, PairWithPosition.make(Lit41, PairWithPosition.make(Lit31, LList.Empty, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266284), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266280), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266276), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266272), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266268), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266264), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266260), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266256), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266252), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 266247);
        Lit9 = Char.make(48);
        Lit8 = Char.make(35);
        Lit7 = IntNum.make(1);
        Lit6 = Char.make(43);
        Lit5 = Char.make(45);
        Lit4 = Char.make(64);
        Lit2 = PairWithPosition.make(Lit6, PairWithPosition.make(Lit5, LList.Empty, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 446503), "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm", 446498);
        Lit1 = IntNum.make(0);
        Lit0 = IntNum.make(-15);
        $instance = new printf();
        printf printfVar = $instance;
        stdio$Clparse$Mnfloat = new ModuleMethod(printfVar, 22, Lit69, 8194);
        stdio$Clround$Mnstring = new ModuleMethod(printfVar, 23, Lit70, 12291);
        stdio$Cliprintf = new ModuleMethod(printfVar, 24, Lit71, -4094);
        fprintf = new ModuleMethod(printfVar, 25, Lit72, -4094);
        printf = new ModuleMethod(printfVar, 26, Lit34, -4095);
        sprintf = new ModuleMethod(printfVar, 27, Lit68, -4094);
        $instance.run();
    }

    public printf() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext $ctx) {
        Consumer $result = $ctx.consumer;
        stdio$Clhex$Mnupper$Mncase$Qu = strings.isString$Eq("-F", numbers.number$To$String(Lit0, 16));
    }

    public static Object stdio$ClParseFloat(Object str, Object proc) {
        frame frameVar = new frame();
        frameVar.str = str;
        frameVar.proc = proc;
        Object obj = frameVar.str;
        try {
            frameVar.n = strings.stringLength((CharSequence) obj);
            return frameVar.lambda4real(Lit1, frameVar.lambda$Fn1);
        } catch (ClassCastException e) {
            throw new WrongType(e, "string-length", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
        return moduleMethod.selector == 22 ? stdio$ClParseFloat(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
    }

    @Override // gnu.expr.ModuleBody
    public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
        if (moduleMethod.selector != 22) {
            return super.match2(moduleMethod, obj, obj2, callContext);
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.proc = moduleMethod;
        callContext.pc = 2;
        return 0;
    }

    /* JADX INFO: compiled from: printf.scm */
    public class frame extends ModuleBody {
        final ModuleMethod lambda$Fn1;
        int n;
        Object proc;
        Object str;

        public frame() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 12, null, 16388);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:106");
            this.lambda$Fn1 = moduleMethod;
        }

        public static Boolean lambda1parseError() {
            return Boolean.FALSE;
        }

        public Object lambda2sign(Object i, Object cont) throws Throwable {
            if (Scheme.numLss.apply2(i, Integer.valueOf(this.n)) != Boolean.FALSE) {
                Object obj = this.str;
                try {
                    try {
                        char c = strings.stringRef((CharSequence) obj, ((Number) i).intValue());
                        Object x = Scheme.isEqv.apply2(Char.make(c), printf.Lit5);
                        if (x == Boolean.FALSE ? Scheme.isEqv.apply2(Char.make(c), printf.Lit6) != Boolean.FALSE : x != Boolean.FALSE) {
                            return Scheme.applyToArgs.apply3(cont, AddOp.$Pl.apply2(i, printf.Lit7), Char.make(c));
                        }
                        return Scheme.applyToArgs.apply3(cont, i, printf.Lit6);
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "string-ref", 2, i);
                    }
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "string-ref", 1, obj);
                }
            }
            return Values.empty;
        }

        public Object lambda3digits(Object obj, Object obj2) throws Throwable {
            Object objSubstring;
            Object objApply2 = obj;
            while (true) {
                Object objApply22 = Scheme.numGEq.apply2(objApply2, Integer.valueOf(this.n));
                try {
                    boolean zBooleanValue = ((Boolean) objApply22).booleanValue();
                    if (!zBooleanValue) {
                        Object obj3 = this.str;
                        try {
                            try {
                                boolean zIsCharNumeric = unicode.isCharNumeric(Char.make(strings.stringRef((CharSequence) obj3, ((Number) objApply2).intValue())));
                                if (!zIsCharNumeric) {
                                    Char r3 = printf.Lit8;
                                    Object obj4 = this.str;
                                    try {
                                        try {
                                            if (!characters.isChar$Eq(r3, Char.make(strings.stringRef((CharSequence) obj4, ((Number) objApply2).intValue())))) {
                                                break;
                                            }
                                            objApply2 = AddOp.$Pl.apply2(objApply2, printf.Lit7);
                                        } catch (ClassCastException e) {
                                            throw new WrongType(e, "string-ref", 2, objApply2);
                                        }
                                    } catch (ClassCastException e2) {
                                        throw new WrongType(e2, "string-ref", 1, obj4);
                                    }
                                } else {
                                    if (!zIsCharNumeric) {
                                        break;
                                    }
                                    objApply2 = AddOp.$Pl.apply2(objApply2, printf.Lit7);
                                }
                            } catch (ClassCastException e3) {
                                throw new WrongType(e3, "string-ref", 2, objApply2);
                            }
                        } catch (ClassCastException e4) {
                            throw new WrongType(e4, "string-ref", 1, obj3);
                        }
                    } else {
                        if (zBooleanValue) {
                            break;
                        }
                        objApply2 = AddOp.$Pl.apply2(objApply2, printf.Lit7);
                    }
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "x", -2, objApply22);
                }
            }
            ApplyToArgs applyToArgs = Scheme.applyToArgs;
            if (Scheme.numEqu.apply2(obj, objApply2) != Boolean.FALSE) {
                objSubstring = Component.TYPEFACE_DEFAULT;
            } else {
                Object obj5 = this.str;
                try {
                    try {
                        try {
                            objSubstring = strings.substring((CharSequence) obj5, ((Number) obj).intValue(), ((Number) objApply2).intValue());
                        } catch (ClassCastException e6) {
                            throw new WrongType(e6, "substring", 3, objApply2);
                        }
                    } catch (ClassCastException e7) {
                        throw new WrongType(e7, "substring", 2, obj);
                    }
                } catch (ClassCastException e8) {
                    throw new WrongType(e8, "substring", 1, obj5);
                }
            }
            return applyToArgs.apply3(obj2, objApply2, objSubstring);
        }

        /* JADX WARN: Code restructure failed: missing block: B:49:0x00e5, code lost:
        
            return kawa.standard.Scheme.applyToArgs.apply2(r0, r1);
         */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0085  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Object lambda4real(java.lang.Object r11, java.lang.Object r12) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 242
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.printf.frame.lambda4real(java.lang.Object, java.lang.Object):java.lang.Object");
        }

        @Override // gnu.expr.ModuleBody
        public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) {
            return moduleMethod.selector == 12 ? lambda5(obj, obj2, obj3, obj4) : super.apply4(moduleMethod, obj, obj2, obj3, obj4);
        }

        Object lambda5(Object i, Object sgn, Object digs, Object ex) {
            frame0 frame0Var = new frame0();
            frame0Var.staticLink = this;
            frame0Var.sgn = sgn;
            frame0Var.digs = digs;
            frame0Var.ex = ex;
            if (Scheme.numEqu.apply2(i, Integer.valueOf(this.n)) != Boolean.FALSE) {
                return Scheme.applyToArgs.apply4(this.proc, frame0Var.sgn, frame0Var.digs, frame0Var.ex);
            }
            Object obj = this.str;
            try {
                try {
                    if (lists.memv(Char.make(strings.stringRef((CharSequence) obj, ((Number) i).intValue())), printf.Lit2) != Boolean.FALSE) {
                        return lambda4real(i, frame0Var.lambda$Fn2);
                    }
                    IsEqv isEqv = Scheme.isEqv;
                    Object obj2 = this.str;
                    try {
                        try {
                            if (isEqv.apply2(Char.make(strings.stringRef((CharSequence) obj2, ((Number) i).intValue())), printf.Lit4) != Boolean.FALSE) {
                                Object obj3 = this.str;
                                try {
                                    frame0Var.num = numbers.string$To$Number((CharSequence) obj3);
                                    if (frame0Var.num != Boolean.FALSE) {
                                        Object obj4 = frame0Var.num;
                                        try {
                                            return printf.stdio$ClParseFloat(numbers.number$To$String(numbers.realPart((Complex) obj4)), frame0Var.lambda$Fn3);
                                        } catch (ClassCastException e) {
                                            throw new WrongType(e, "real-part", 1, obj4);
                                        }
                                    }
                                    return lambda1parseError();
                                } catch (ClassCastException e2) {
                                    throw new WrongType(e2, "string->number", 1, obj3);
                                }
                            }
                            return Boolean.FALSE;
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "string-ref", 2, i);
                        }
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "string-ref", 1, obj2);
                    }
                } catch (ClassCastException e5) {
                    throw new WrongType(e5, "string-ref", 2, i);
                }
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "string-ref", 1, obj);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
            if (moduleMethod.selector != 12) {
                return super.match4(moduleMethod, obj, obj2, obj3, obj4, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }
    }

    /* JADX INFO: compiled from: printf.scm */
    public class frame6 extends ModuleBody {
        Object cont;
        final ModuleMethod lambda$Fn11;
        frame staticLink;

        public frame6() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 5, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:67");
            this.lambda$Fn11 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 5 ? lambda15(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        Object lambda15(Object i, Object sgn) {
            frame7 frame7Var = new frame7();
            frame7Var.staticLink = this;
            frame7Var.sgn = sgn;
            return this.staticLink.lambda3digits(i, frame7Var.lambda$Fn12);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 5) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    /* JADX INFO: compiled from: printf.scm */
    public class frame7 extends ModuleBody {
        final ModuleMethod lambda$Fn12;
        Object sgn;
        frame6 staticLink;

        public frame7() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 4, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:69");
            this.lambda$Fn12 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 4 ? lambda16(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        Object lambda16(Object i, Object digs) throws Throwable {
            Object objString$To$Number;
            ApplyToArgs applyToArgs = Scheme.applyToArgs;
            Object obj = this.staticLink.cont;
            Char r2 = printf.Lit5;
            Object obj2 = this.sgn;
            try {
                if (characters.isChar$Eq(r2, (Char) obj2)) {
                    try {
                        objString$To$Number = AddOp.$Mn.apply1(numbers.string$To$Number((CharSequence) digs));
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "string->number", 1, digs);
                    }
                } else {
                    try {
                        objString$To$Number = numbers.string$To$Number((CharSequence) digs);
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "string->number", 1, digs);
                    }
                }
                return applyToArgs.apply3(obj, i, objString$To$Number);
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "char=?", 2, obj2);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 4) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    /* JADX INFO: compiled from: printf.scm */
    public class frame2 extends ModuleBody {
        Object cont;
        final ModuleMethod lambda$Fn5;
        final ModuleMethod lambda$Fn6;
        frame staticLink;

        public frame2() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 10, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:81");
            this.lambda$Fn6 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 11, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:78");
            this.lambda$Fn5 = moduleMethod2;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 11 ? lambda9(obj) : super.apply1(moduleMethod, obj);
        }

        Object lambda9(Object i) {
            return this.staticLink.lambda2sign(i, this.lambda$Fn6);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 11) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 10 ? lambda10(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        Object lambda10(Object i, Object sgn) {
            frame3 frame3Var = new frame3();
            frame3Var.staticLink = this;
            frame3Var.sgn = sgn;
            return this.staticLink.lambda3digits(i, frame3Var.lambda$Fn7);
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 10) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    /* JADX INFO: compiled from: printf.scm */
    public class frame3 extends ModuleBody {
        final ModuleMethod lambda$Fn7;
        Object sgn;
        frame2 staticLink;

        public frame3() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 9, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:84");
            this.lambda$Fn7 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 9 ? lambda11(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0047, code lost:
        
            if (kawa.lib.characters.isChar$Eq(r4, gnu.text.Char.make(kawa.lib.strings.stringRef((java.lang.CharSequence) r5, ((java.lang.Number) r8).intValue()))) != false) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x005a, code lost:
        
            if (r3 != false) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0071, code lost:
        
            return kawa.standard.Scheme.applyToArgs.apply2(r1, r8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
        
            return kawa.standard.Scheme.applyToArgs.apply2(r1, gnu.kawa.functions.AddOp.$Pl.apply2(r8, gnu.kawa.slib.printf.Lit7));
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        java.lang.Object lambda11(java.lang.Object r8, java.lang.Object r9) throws java.lang.Throwable {
            /*
                r7 = this;
                java.lang.String r0 = "string-ref"
                gnu.kawa.slib.printf$frame4 r1 = new gnu.kawa.slib.printf$frame4
                r1.<init>()
                r1.staticLink = r7
                r1.idigs = r9
                gnu.expr.ModuleMethod r1 = r1.lambda$Fn8
                r2 = r8
                gnu.kawa.functions.NumberCompare r3 = kawa.standard.Scheme.numLss
                gnu.kawa.slib.printf$frame2 r4 = r7.staticLink
                gnu.kawa.slib.printf$frame r4 = r4.staticLink
                int r4 = r4.n
                java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
                java.lang.Object r3 = r3.apply2(r2, r4)
                r4 = r3
                java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch: java.lang.ClassCastException -> L72
                boolean r3 = r4.booleanValue()     // Catch: java.lang.ClassCastException -> L72
                r4 = 0
                if (r3 == 0) goto L5a
                gnu.text.Char r4 = gnu.kawa.slib.printf.Lit11
                gnu.kawa.slib.printf$frame2 r5 = r7.staticLink
                gnu.kawa.slib.printf$frame r5 = r5.staticLink
                java.lang.Object r5 = r5.str
                java.lang.CharSequence r5 = (java.lang.CharSequence) r5     // Catch: java.lang.ClassCastException -> L52
                r6 = r2
                java.lang.Number r6 = (java.lang.Number) r6     // Catch: java.lang.ClassCastException -> L4a
                int r0 = r6.intValue()     // Catch: java.lang.ClassCastException -> L4a
                char r0 = kawa.lib.strings.stringRef(r5, r0)
                gnu.text.Char r0 = gnu.text.Char.make(r0)
                boolean r0 = kawa.lib.characters.isChar$Eq(r4, r0)
                if (r0 == 0) goto L6b
                goto L5c
            L4a:
                r8 = move-exception
                gnu.mapping.WrongType r9 = new gnu.mapping.WrongType
                r1 = 2
                r9.<init>(r8, r0, r1, r2)
                throw r9
            L52:
                r8 = move-exception
                gnu.mapping.WrongType r9 = new gnu.mapping.WrongType
                r1 = 1
                r9.<init>(r8, r0, r1, r5)
                throw r9
            L5a:
                if (r3 == 0) goto L6b
            L5c:
                gnu.kawa.functions.ApplyToArgs r0 = kawa.standard.Scheme.applyToArgs
                gnu.kawa.functions.AddOp r3 = gnu.kawa.functions.AddOp.$Pl
                gnu.math.IntNum r4 = gnu.kawa.slib.printf.Lit7
                java.lang.Object r3 = r3.apply2(r2, r4)
                java.lang.Object r0 = r0.apply2(r1, r3)
                goto L71
            L6b:
                gnu.kawa.functions.ApplyToArgs r0 = kawa.standard.Scheme.applyToArgs
                java.lang.Object r0 = r0.apply2(r1, r2)
            L71:
                return r0
            L72:
                r8 = move-exception
                gnu.mapping.WrongType r9 = new gnu.mapping.WrongType
                java.lang.String r0 = "x"
                r1 = -2
                r9.<init>(r8, r0, r1, r3)
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.printf.frame3.lambda11(java.lang.Object, java.lang.Object):java.lang.Object");
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 9) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    /* JADX INFO: compiled from: printf.scm */
    public class frame4 extends ModuleBody {
        Object idigs;
        final ModuleMethod lambda$Fn8;
        final ModuleMethod lambda$Fn9;
        frame3 staticLink;

        public frame4() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 7, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:90");
            this.lambda$Fn9 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 8, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:87");
            this.lambda$Fn8 = moduleMethod2;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 8 ? lambda12(obj) : super.apply1(moduleMethod, obj);
        }

        Object lambda12(Object i) {
            return this.staticLink.staticLink.staticLink.lambda3digits(i, this.lambda$Fn9);
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 8) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 7 ? lambda13(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        Object lambda13(Object i, Object fdigs) {
            frame5 frame5Var = new frame5();
            frame5Var.staticLink = this;
            frame5Var.fdigs = fdigs;
            Object cont = frame5Var.lambda$Fn10;
            frame closureEnv = this.staticLink.staticLink.staticLink;
            frame6 frame6Var = new frame6();
            frame6Var.staticLink = closureEnv;
            frame6Var.cont = cont;
            if (Scheme.numGEq.apply2(i, Integer.valueOf(this.staticLink.staticLink.staticLink.n)) != Boolean.FALSE) {
                return Scheme.applyToArgs.apply3(frame6Var.cont, i, printf.Lit1);
            }
            Object obj = this.staticLink.staticLink.staticLink.str;
            try {
                try {
                    if (lists.memv(Char.make(strings.stringRef((CharSequence) obj, ((Number) i).intValue())), printf.Lit10) != Boolean.FALSE) {
                        return this.staticLink.staticLink.staticLink.lambda2sign(AddOp.$Pl.apply2(i, printf.Lit7), frame6Var.lambda$Fn11);
                    }
                    return Scheme.applyToArgs.apply3(frame6Var.cont, i, printf.Lit1);
                } catch (ClassCastException e) {
                    throw new WrongType(e, "string-ref", 2, i);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "string-ref", 1, obj);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 7) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    /* JADX INFO: compiled from: printf.scm */
    public class frame5 extends ModuleBody {
        Object fdigs;
        final ModuleMethod lambda$Fn10;
        frame4 staticLink;

        public frame5() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 6, null, 8194);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:92");
            this.lambda$Fn10 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply2(ModuleMethod moduleMethod, Object obj, Object obj2) {
            return moduleMethod.selector == 6 ? lambda14(obj, obj2) : super.apply2(moduleMethod, obj, obj2);
        }

        Object lambda14(Object i, Object ex) throws Throwable {
            FString digs = strings.stringAppend(Component.TYPEFACE_DEFAULT, this.staticLink.idigs, this.fdigs);
            int ndigs = strings.stringLength(digs);
            Object j = printf.Lit7;
            AddOp addOp = AddOp.$Pl;
            Object obj = this.staticLink.idigs;
            try {
                Object ex2 = addOp.apply2(ex, Integer.valueOf(strings.stringLength((CharSequence) obj)));
                while (Scheme.numGEq.apply2(j, Integer.valueOf(ndigs)) == Boolean.FALSE) {
                    try {
                        if (characters.isChar$Eq(printf.Lit9, Char.make(strings.stringRef(digs, ((Number) j).intValue())))) {
                            j = AddOp.$Pl.apply2(j, printf.Lit7);
                            ex2 = AddOp.$Mn.apply2(ex2, printf.Lit7);
                        } else {
                            ApplyToArgs applyToArgs = Scheme.applyToArgs;
                            Object obj2 = this.staticLink.staticLink.staticLink.cont;
                            Object obj3 = this.staticLink.staticLink.sgn;
                            Object objApply2 = AddOp.$Mn.apply2(j, printf.Lit7);
                            try {
                                return applyToArgs.applyN(new Object[]{obj2, i, obj3, strings.substring(digs, ((Number) objApply2).intValue(), ndigs), ex2});
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "substring", 2, objApply2);
                            }
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "string-ref", 2, j);
                    }
                }
                return Scheme.applyToArgs.applyN(new Object[]{this.staticLink.staticLink.staticLink.cont, i, this.staticLink.staticLink.sgn, Component.TYPEFACE_DEFAULT, printf.Lit7});
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "string-length", 1, obj);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match2(ModuleMethod moduleMethod, Object obj, Object obj2, CallContext callContext) {
            if (moduleMethod.selector != 6) {
                return super.match2(moduleMethod, obj, obj2, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.proc = moduleMethod;
            callContext.pc = 2;
            return 0;
        }
    }

    /* JADX INFO: compiled from: printf.scm */
    public class frame0 extends ModuleBody {
        Object digs;
        Object ex;
        final ModuleMethod lambda$Fn2;
        final ModuleMethod lambda$Fn3;
        Object num;
        Object sgn;
        frame staticLink;

        public frame0() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 2, null, 16388);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:111");
            this.lambda$Fn2 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 3, null, 12291);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:123");
            this.lambda$Fn3 = moduleMethod2;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4) {
            return moduleMethod.selector == 2 ? lambda6(obj, obj2, obj3, obj4) : super.apply4(moduleMethod, obj, obj2, obj3, obj4);
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0038, code lost:
        
            if (kawa.lib.rnrs.unicode.isCharCi$Eq(r4, gnu.text.Char.make(kawa.lib.strings.stringRef((java.lang.CharSequence) r5, ((java.lang.Number) r10).intValue()))) != false) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0049, code lost:
        
            if (r1 != false) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0076, code lost:
        
            return gnu.kawa.slib.printf.frame.lambda1parseError();
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
        
            return kawa.standard.Scheme.applyToArgs.applyN(new java.lang.Object[]{r9.staticLink.proc, r9.sgn, r9.digs, r9.ex, r11, r12, r13});
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        java.lang.Object lambda6(java.lang.Object r10, java.lang.Object r11, java.lang.Object r12, java.lang.Object r13) throws java.lang.Throwable {
            /*
                r9 = this;
                java.lang.String r0 = "string-ref"
                gnu.kawa.functions.NumberCompare r1 = kawa.standard.Scheme.numEqu
                gnu.kawa.slib.printf$frame r2 = r9.staticLink
                int r2 = r2.n
                r3 = 1
                int r2 = r2 - r3
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                java.lang.Object r1 = r1.apply2(r10, r2)
                r2 = r1
                java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch: java.lang.ClassCastException -> L77
                boolean r1 = r2.booleanValue()     // Catch: java.lang.ClassCastException -> L77
                r2 = 0
                r2 = 2
                if (r1 == 0) goto L49
                gnu.text.Char r4 = gnu.kawa.slib.printf.Lit3
                gnu.kawa.slib.printf$frame r5 = r9.staticLink
                java.lang.Object r5 = r5.str
                java.lang.CharSequence r5 = (java.lang.CharSequence) r5     // Catch: java.lang.ClassCastException -> L42
                r6 = r10
                java.lang.Number r6 = (java.lang.Number) r6     // Catch: java.lang.ClassCastException -> L3b
                int r0 = r6.intValue()     // Catch: java.lang.ClassCastException -> L3b
                char r0 = kawa.lib.strings.stringRef(r5, r0)
                gnu.text.Char r0 = gnu.text.Char.make(r0)
                boolean r0 = kawa.lib.rnrs.unicode.isCharCi$Eq(r4, r0)
                if (r0 == 0) goto L72
                goto L4b
            L3b:
                r11 = move-exception
                gnu.mapping.WrongType r12 = new gnu.mapping.WrongType
                r12.<init>(r11, r0, r2, r10)
                throw r12
            L42:
                r10 = move-exception
                gnu.mapping.WrongType r11 = new gnu.mapping.WrongType
                r11.<init>(r10, r0, r3, r5)
                throw r11
            L49:
                if (r1 == 0) goto L72
            L4b:
                gnu.kawa.functions.ApplyToArgs r0 = kawa.standard.Scheme.applyToArgs
                gnu.kawa.slib.printf$frame r1 = r9.staticLink
                java.lang.Object r1 = r1.proc
                java.lang.Object r4 = r9.sgn
                java.lang.Object r5 = r9.digs
                java.lang.Object r6 = r9.ex
                r7 = 7
                java.lang.Object[] r7 = new java.lang.Object[r7]
                r8 = 0
                r7[r8] = r1
                r7[r3] = r4
                r7[r2] = r5
                r1 = 3
                r7[r1] = r6
                r1 = 4
                r7[r1] = r11
                r1 = 5
                r7[r1] = r12
                r1 = 6
                r7[r1] = r13
                java.lang.Object r0 = r0.applyN(r7)
                goto L76
            L72:
                java.lang.Boolean r0 = gnu.kawa.slib.printf.frame.lambda1parseError()
            L76:
                return r0
            L77:
                r10 = move-exception
                gnu.mapping.WrongType r11 = new gnu.mapping.WrongType
                java.lang.String r12 = "x"
                r13 = -2
                r11.<init>(r10, r12, r13, r1)
                throw r11
            */
            throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.printf.frame0.lambda6(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
        }

        @Override // gnu.expr.ModuleBody
        public int match4(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, Object obj4, CallContext callContext) {
            if (moduleMethod.selector != 2) {
                return super.match4(moduleMethod, obj, obj2, obj3, obj4, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.value4 = obj4;
            callContext.proc = moduleMethod;
            callContext.pc = 4;
            return 0;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 3 ? lambda7(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        Object lambda7(Object sgn, Object digs, Object ex) {
            frame1 frame1Var = new frame1();
            frame1Var.staticLink = this;
            frame1Var.sgn = sgn;
            frame1Var.digs = digs;
            frame1Var.ex = ex;
            Object obj = this.num;
            try {
                return printf.stdio$ClParseFloat(numbers.number$To$String(numbers.imagPart((Complex) obj)), frame1Var.lambda$Fn4);
            } catch (ClassCastException e) {
                throw new WrongType(e, "imag-part", 1, obj);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 3) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
    }

    /* JADX INFO: compiled from: printf.scm */
    public class frame1 extends ModuleBody {
        Object digs;
        Object ex;
        final ModuleMethod lambda$Fn4;
        Object sgn;
        frame0 staticLink;

        public frame1() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 1, null, 12291);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:126");
            this.lambda$Fn4 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
            return moduleMethod.selector == 1 ? lambda8(obj, obj2, obj3) : super.apply3(moduleMethod, obj, obj2, obj3);
        }

        Object lambda8(Object im$Mnsgn, Object im$Mndigs, Object im$Mnex) {
            return Scheme.applyToArgs.applyN(new Object[]{this.staticLink.staticLink.proc, this.sgn, this.digs, this.ex, im$Mnsgn, im$Mndigs, im$Mnex});
        }

        @Override // gnu.expr.ModuleBody
        public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
            if (moduleMethod.selector != 1) {
                return super.match3(moduleMethod, obj, obj2, obj3, callContext);
            }
            callContext.value1 = obj;
            callContext.value2 = obj2;
            callContext.value3 = obj3;
            callContext.proc = moduleMethod;
            callContext.pc = 3;
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:150:0x0192 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0158 A[EDGE_INSN: B:162:0x0158->B:60:0x0158 BREAK  A[LOOP:1: B:58:0x0146->B:77:0x019c], EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0145 A[EDGE_INSN: B:170:0x0145->B:57:0x0145 BREAK  A[LOOP:2: B:43:0x010a->B:52:0x0132]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object stdio$ClRoundString(java.lang.CharSequence r16, java.lang.Object r17, java.lang.Object r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 609
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.printf.stdio$ClRoundString(java.lang.CharSequence, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    @Override // gnu.expr.ModuleBody
    public Object apply3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3) {
        if (moduleMethod.selector != 23) {
            return super.apply3(moduleMethod, obj, obj2, obj3);
        }
        try {
            return stdio$ClRoundString((CharSequence) obj, obj2, obj3);
        } catch (ClassCastException e) {
            throw new WrongType(e, "stdio:round-string", 1, obj);
        }
    }

    @Override // gnu.expr.ModuleBody
    public int match3(ModuleMethod moduleMethod, Object obj, Object obj2, Object obj3, CallContext callContext) {
        if (moduleMethod.selector != 23) {
            return super.match3(moduleMethod, obj, obj2, obj3, callContext);
        }
        if (!(obj instanceof CharSequence)) {
            return -786431;
        }
        callContext.value1 = obj;
        callContext.value2 = obj2;
        callContext.value3 = obj3;
        callContext.proc = moduleMethod;
        callContext.pc = 3;
        return 0;
    }

    /* JADX INFO: compiled from: printf.scm */
    public class frame8 extends ModuleBody {
        CharSequence str;

        public Object lambda17dig(Object i) {
            try {
                char c = strings.stringRef(this.str, ((Number) i).intValue());
                return unicode.isCharNumeric(Char.make(c)) ? numbers.string$To$Number(strings.$make$string$(Char.make(c))) : printf.Lit1;
            } catch (ClassCastException e) {
                throw new WrongType(e, "string-ref", 2, i);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:677:?, code lost:
    
        return r6;
     */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x035e  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x041f  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0484  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0487  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0491  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x04a6  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x04aa  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x04b1  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x04d8  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x04ed  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x04f1  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0526  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0619  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x061e  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0687  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x06a1  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x06a6  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x06ca  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x077f  */
    /* JADX WARN: Removed duplicated region for block: B:437:0x085a  */
    /* JADX WARN: Removed duplicated region for block: B:438:0x085f  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x0882  */
    /* JADX WARN: Removed duplicated region for block: B:459:0x08a4  */
    /* JADX WARN: Removed duplicated region for block: B:472:0x08cf  */
    /* JADX WARN: Removed duplicated region for block: B:473:0x08d2  */
    /* JADX WARN: Removed duplicated region for block: B:476:0x08e1  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x090b  */
    /* JADX WARN: Removed duplicated region for block: B:555:0x0378 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:567:0x088f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:592:0x0711 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:600:0x06e4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:606:0x07af A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:608:0x0799 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:617:0x0906 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:629:0x08eb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:632:0x078a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:635:0x06d5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:642:0x0692 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:647:0x0429 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:650:0x02f2 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object stdio$ClIprintf$V(java.lang.Object r16, java.lang.Object r17, java.lang.Object[] r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 2426
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.printf.stdio$ClIprintf$V(java.lang.Object, java.lang.Object, java.lang.Object[]):java.lang.Object");
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        switch (moduleMethod.selector) {
            case 24:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 25:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 26:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            case 27:
                callContext.values = objArr;
                callContext.proc = moduleMethod;
                callContext.pc = 5;
                return 0;
            default:
                return super.matchN(moduleMethod, objArr, callContext);
        }
    }

    /* JADX INFO: compiled from: printf.scm */
    public class frame9 extends ModuleBody {
        LList args;
        Object fc;
        int fl;
        Object format$Mnstring;
        Object out;
        Object pos;

        public Object lambda18mustAdvance() {
            this.pos = AddOp.$Pl.apply2(printf.Lit7, this.pos);
            if (Scheme.numGEq.apply2(this.pos, Integer.valueOf(this.fl)) != Boolean.FALSE) {
                return lambda20incomplete();
            }
            Object obj = this.format$Mnstring;
            try {
                CharSequence charSequence = (CharSequence) obj;
                Object obj2 = this.pos;
                try {
                    this.fc = Char.make(strings.stringRef(charSequence, ((Number) obj2).intValue()));
                    return Values.empty;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "string-ref", 2, obj2);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "string-ref", 1, obj);
            }
        }

        public boolean lambda19isEndOfFormat() {
            return ((Boolean) Scheme.numGEq.apply2(this.pos, Integer.valueOf(this.fl))).booleanValue();
        }

        public Object lambda20incomplete() {
            return misc.error$V(printf.Lit34, new Object[]{"conversion specification incomplete", this.format$Mnstring});
        }

        public Object lambda21out$St(Object strs) throws Throwable {
            if (strings.isString(strs)) {
                return Scheme.applyToArgs.apply2(this.out, strs);
            }
            Object strs2 = strs;
            while (true) {
                boolean x = lists.isNull(strs2);
                if (x) {
                    return x ? Boolean.TRUE : Boolean.FALSE;
                }
                Object x2 = Scheme.applyToArgs.apply2(this.out, lists.car.apply1(strs2));
                if (x2 == Boolean.FALSE) {
                    return x2;
                }
                strs2 = lists.cdr.apply1(strs2);
            }
        }
    }

    /* JADX INFO: compiled from: printf.scm */
    public class frame10 extends ModuleBody {
        Object alternate$Mnform;
        Object args;
        Object blank;
        final ModuleMethod lambda$Fn13;
        final ModuleMethod lambda$Fn14;
        final ModuleMethod lambda$Fn15;
        final ModuleMethod lambda$Fn16;
        Object leading$Mn0s;
        Object left$Mnadjust;
        Object os;
        Procedure pad = new ModuleMethod(this, 15, printf.Lit67, -4095);
        Object pr;
        Object precision;
        Object signed;
        frame9 staticLink;
        Object width;

        public frame10() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 16, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:472");
            this.lambda$Fn13 = moduleMethod;
            ModuleMethod moduleMethod2 = new ModuleMethod(this, 17, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod2.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:476");
            this.lambda$Fn14 = moduleMethod2;
            ModuleMethod moduleMethod3 = new ModuleMethod(this, 18, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod3.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:484");
            this.lambda$Fn15 = moduleMethod3;
            ModuleMethod moduleMethod4 = new ModuleMethod(this, 19, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod4.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:494");
            this.lambda$Fn16 = moduleMethod4;
        }

        public Object lambda22readFormatNumber() throws Throwable {
            if (Scheme.isEqv.apply2(printf.Lit66, this.staticLink.fc) != Boolean.FALSE) {
                this.staticLink.lambda18mustAdvance();
                Object accum = lists.car.apply1(this.args);
                this.args = lists.cdr.apply1(this.args);
                return accum;
            }
            Object c = this.staticLink.fc;
            Object accum2 = printf.Lit1;
            Object c2 = c;
            Object accum3 = accum2;
            while (true) {
                Object obj = this.staticLink.fc;
                try {
                    if (!unicode.isCharNumeric((Char) obj)) {
                        return accum3;
                    }
                    this.staticLink.lambda18mustAdvance();
                    Object obj2 = this.staticLink.fc;
                    accum3 = AddOp.$Pl.apply2(MultiplyOp.$St.apply2(accum3, printf.Lit45), numbers.string$To$Number(strings.$make$string$(c2 instanceof Object[] ? (Object[]) c2 : new Object[]{c2})));
                    c2 = obj2;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "char-numeric?", 1, obj);
                }
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
            if (moduleMethod.selector != 15) {
                return super.applyN(moduleMethod, objArr);
            }
            Object obj = objArr[0];
            int length = objArr.length - 1;
            Object[] objArr2 = new Object[length];
            while (true) {
                length--;
                if (length < 0) {
                    return lambda23pad$V(obj, objArr2);
                }
                objArr2[length] = objArr[length + 1];
            }
        }

        public Object lambda23pad$V(Object pre, Object[] argsArray) throws Throwable {
            LList strs = LList.makeList(argsArray, 0);
            try {
                Object len = Integer.valueOf(strings.stringLength((CharSequence) pre));
                Object ss = strs;
                while (Scheme.numGEq.apply2(len, this.width) == Boolean.FALSE) {
                    if (lists.isNull(ss)) {
                        if (this.left$Mnadjust != Boolean.FALSE) {
                            Object objApply2 = AddOp.$Mn.apply2(this.width, len);
                            try {
                                return lists.cons(pre, append.append$V(new Object[]{strs, LList.list1(strings.makeString(((Number) objApply2).intValue(), printf.Lit29))}));
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "make-string", 1, objApply2);
                            }
                        }
                        if (this.leading$Mn0s != Boolean.FALSE) {
                            Object objApply22 = AddOp.$Mn.apply2(this.width, len);
                            try {
                                return lists.cons(pre, lists.cons(strings.makeString(((Number) objApply22).intValue(), printf.Lit9), strs));
                            } catch (ClassCastException e2) {
                                throw new WrongType(e2, "make-string", 1, objApply22);
                            }
                        }
                        Object objApply23 = AddOp.$Mn.apply2(this.width, len);
                        try {
                            return lists.cons(strings.makeString(((Number) objApply23).intValue(), printf.Lit29), lists.cons(pre, strs));
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "make-string", 1, objApply23);
                        }
                    }
                    AddOp addOp = AddOp.$Pl;
                    Object objApply1 = lists.car.apply1(ss);
                    try {
                        len = addOp.apply2(len, Integer.valueOf(strings.stringLength((CharSequence) objApply1)));
                        ss = lists.cdr.apply1(ss);
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "string-length", 1, objApply1);
                    }
                }
                return lists.cons(pre, strs);
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "string-length", 1, pre);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
            if (moduleMethod.selector != 15) {
                return super.matchN(moduleMethod, objArr, callContext);
            }
            callContext.values = objArr;
            callContext.proc = moduleMethod;
            callContext.pc = 5;
            return 0;
        }

        public Object lambda24integerConvert(Object obj, Object obj2, Object obj3) throws Throwable {
            String str;
            Object obj4 = this.precision;
            try {
                Object objMakeString = "";
                if (!numbers.isNegative(LangObjType.coerceRealNum(obj4))) {
                    this.leading$Mn0s = Boolean.FALSE;
                    Object obj5 = this.precision;
                    try {
                        boolean zIsZero = numbers.isZero((Number) obj5);
                        if (!zIsZero ? zIsZero : Scheme.isEqv.apply2(printf.Lit1, obj) != Boolean.FALSE) {
                            obj = "";
                        }
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "zero?", 1, obj5);
                    }
                }
                boolean zIsSymbol = misc.isSymbol(obj);
                String str2 = Component.TYPEFACE_DEFAULT;
                if (zIsSymbol) {
                    try {
                        obj = ((Symbol) obj).toString();
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "symbol->string", 1, obj);
                    }
                } else if (numbers.isNumber(obj)) {
                    try {
                        try {
                            obj = numbers.number$To$String((Number) obj, ((Number) obj2).intValue());
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "number->string", 2, obj2);
                        }
                    } catch (ClassCastException e4) {
                        throw new WrongType(e4, "number->string", 1, obj);
                    }
                } else {
                    try {
                        int i = ((obj != Boolean.FALSE ? 1 : 0) + 1) & 1;
                        if (i == 0 ? lists.isNull(obj) : i != 0) {
                            obj = Component.TYPEFACE_DEFAULT;
                        } else if (!strings.isString(obj)) {
                            obj = Component.TYPEFACE_SANSSERIF;
                        }
                    } catch (ClassCastException e5) {
                        throw new WrongType(e5, "x", -2, obj);
                    }
                }
                if (obj3 != Boolean.FALSE) {
                    obj = Scheme.applyToArgs.apply2(obj3, obj);
                }
                if (IsEqual.apply("", obj)) {
                    str = "";
                } else {
                    try {
                        if (Scheme.isEqv.apply2(printf.Lit5, Char.make(strings.stringRef((CharSequence) obj, 0))) != Boolean.FALSE) {
                            try {
                                try {
                                    obj = strings.substring((CharSequence) obj, 1, strings.stringLength((CharSequence) obj));
                                    str = "-";
                                } catch (ClassCastException e6) {
                                    throw new WrongType(e6, "string-length", 1, obj);
                                }
                            } catch (ClassCastException e7) {
                                throw new WrongType(e7, "substring", 1, obj);
                            }
                        } else if (this.signed != Boolean.FALSE) {
                            str = "+";
                        } else if (this.blank != Boolean.FALSE) {
                            str = " ";
                        } else if (this.alternate$Mnform != Boolean.FALSE) {
                            if (Scheme.isEqv.apply2(obj2, printf.Lit48) == Boolean.FALSE) {
                                if (Scheme.isEqv.apply2(obj2, printf.Lit50) != Boolean.FALSE) {
                                    str2 = "0x";
                                } else {
                                    str2 = "";
                                }
                            }
                            str = str2;
                        } else {
                            str = "";
                        }
                    } catch (ClassCastException e8) {
                        throw new WrongType(e8, "string-ref", 1, obj);
                    }
                }
                try {
                    if (Scheme.numLss.apply2(Integer.valueOf(strings.stringLength((CharSequence) obj)), this.precision) != Boolean.FALSE) {
                        try {
                            Object objApply2 = AddOp.$Mn.apply2(this.precision, Integer.valueOf(strings.stringLength((CharSequence) obj)));
                            try {
                                objMakeString = strings.makeString(((Number) objApply2).intValue(), printf.Lit9);
                            } catch (ClassCastException e9) {
                                throw new WrongType(e9, "make-string", 1, objApply2);
                            }
                        } catch (ClassCastException e10) {
                            throw new WrongType(e10, "string-length", 1, obj);
                        }
                    }
                    return lambda23pad$V(str, new Object[]{objMakeString, obj});
                } catch (ClassCastException e11) {
                    throw new WrongType(e11, "string-length", 1, obj);
                }
            } catch (ClassCastException e12) {
                throw new WrongType(e12, "negative?", 1, obj4);
            }
        }

        Object lambda25(Object s) {
            try {
                this.pr = AddOp.$Pl.apply2(this.pr, Integer.valueOf(strings.stringLength((CharSequence) s)));
                return Scheme.applyToArgs.apply2(this.staticLink.out, s);
            } catch (ClassCastException e) {
                throw new WrongType(e, "string-length", 1, s);
            }
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 16:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 17:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 18:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                case 19:
                    callContext.value1 = obj;
                    callContext.proc = moduleMethod;
                    callContext.pc = 1;
                    return 0;
                default:
                    return super.match1(moduleMethod, obj, callContext);
            }
        }

        boolean lambda26(Object s) throws Throwable {
            Object obj;
            Special special = Special.undefined;
            try {
                Object sl = AddOp.$Mn.apply2(this.pr, Integer.valueOf(strings.stringLength((CharSequence) s)));
                try {
                    if (numbers.isNegative(LangObjType.coerceRealNum(sl))) {
                        ApplyToArgs applyToArgs = Scheme.applyToArgs;
                        Object obj2 = this.staticLink.out;
                        try {
                            CharSequence charSequence = (CharSequence) s;
                            Object obj3 = this.pr;
                            try {
                                applyToArgs.apply2(obj2, strings.substring(charSequence, 0, ((Number) obj3).intValue()));
                                obj = printf.Lit1;
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "substring", 3, obj3);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "substring", 1, s);
                        }
                    } else {
                        Scheme.applyToArgs.apply2(this.staticLink.out, s);
                        obj = sl;
                    }
                    this.pr = obj;
                    try {
                        return numbers.isPositive(LangObjType.coerceRealNum(sl));
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "positive?", 1, sl);
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "negative?", 1, sl);
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "string-length", 1, s);
            }
        }

        Boolean lambda27(Object s) throws Throwable {
            try {
                this.pr = AddOp.$Mn.apply2(this.pr, Integer.valueOf(strings.stringLength((CharSequence) s)));
                if (this.os == Boolean.FALSE) {
                    Scheme.applyToArgs.apply2(this.staticLink.out, s);
                } else {
                    Object obj = this.pr;
                    try {
                        if (numbers.isNegative(LangObjType.coerceRealNum(obj))) {
                            Scheme.applyToArgs.apply2(this.staticLink.out, this.os);
                            this.os = Boolean.FALSE;
                            Scheme.applyToArgs.apply2(this.staticLink.out, s);
                        } else {
                            this.os = strings.stringAppend(this.os, s);
                        }
                    } catch (ClassCastException e) {
                        throw new WrongType(e, "negative?", 1, obj);
                    }
                }
                return Boolean.TRUE;
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "string-length", 1, s);
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            switch (moduleMethod.selector) {
                case 16:
                    return lambda25(obj);
                case 17:
                    return lambda26(obj) ? Boolean.TRUE : Boolean.FALSE;
                case 18:
                    return lambda27(obj);
                case 19:
                    return lambda28(obj) ? Boolean.TRUE : Boolean.FALSE;
                default:
                    return super.apply1(moduleMethod, obj);
            }
        }

        boolean lambda28(Object s) throws Throwable {
            Special special = Special.undefined;
            try {
                Object sl = AddOp.$Mn.apply2(this.pr, Integer.valueOf(strings.stringLength((CharSequence) s)));
                try {
                    if (numbers.isNegative(LangObjType.coerceRealNum(sl))) {
                        Object obj = this.os;
                        try {
                            CharSequence charSequence = (CharSequence) s;
                            Object obj2 = this.pr;
                            try {
                                this.os = strings.stringAppend(obj, strings.substring(charSequence, 0, ((Number) obj2).intValue()));
                            } catch (ClassCastException e) {
                                throw new WrongType(e, "substring", 3, obj2);
                            }
                        } catch (ClassCastException e2) {
                            throw new WrongType(e2, "substring", 1, s);
                        }
                    } else {
                        this.os = strings.stringAppend(this.os, s);
                    }
                    this.pr = sl;
                    try {
                        return numbers.isPositive(LangObjType.coerceRealNum(sl));
                    } catch (ClassCastException e3) {
                        throw new WrongType(e3, "positive?", 1, sl);
                    }
                } catch (ClassCastException e4) {
                    throw new WrongType(e4, "negative?", 1, sl);
                }
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "string-length", 1, s);
            }
        }
    }

    /* JADX INFO: compiled from: printf.scm */
    public class frame11 extends ModuleBody {
        Object fc;
        Procedure format$Mnreal = new ModuleMethod(this, 13, printf.Lit64, -4092);
        final ModuleMethod lambda$Fn17;
        frame10 staticLink;

        public frame11() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 14, null, -4093);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:401");
            this.lambda$Fn17 = moduleMethod;
        }

        public Object lambda29f(Object obj, Object obj2, Object obj3) throws Throwable {
            IntNum intNum;
            try {
                Object objStdio$ClRoundString = printf.stdio$ClRoundString((CharSequence) obj, AddOp.$Pl.apply2(obj2, this.staticLink.precision), obj3 != Boolean.FALSE ? obj2 : obj3);
                if (Scheme.numGEq.apply2(obj2, printf.Lit1) == Boolean.FALSE) {
                    Object obj4 = this.staticLink.precision;
                    try {
                        if (numbers.isZero((Number) obj4)) {
                            return LList.list1(this.staticLink.alternate$Mnform == Boolean.FALSE ? Component.TYPEFACE_DEFAULT : "0.");
                        }
                        if (obj3 != Boolean.FALSE) {
                            boolean zIsString$Eq = strings.isString$Eq(objStdio$ClRoundString, "");
                            obj3 = zIsString$Eq ? LList.list1(Component.TYPEFACE_DEFAULT) : zIsString$Eq ? Boolean.TRUE : Boolean.FALSE;
                        }
                        if (obj3 != Boolean.FALSE) {
                            return obj3;
                        }
                        Object objMin = numbers.min(this.staticLink.precision, AddOp.$Mn.apply2(printf.Lit17, obj2));
                        try {
                            return LList.list3("0.", strings.makeString(((Number) objMin).intValue(), printf.Lit9), objStdio$ClRoundString);
                        } catch (ClassCastException e) {
                            throw new WrongType(e, "make-string", 1, objMin);
                        }
                    } catch (ClassCastException e2) {
                        throw new WrongType(e2, "zero?", 1, obj4);
                    }
                }
                try {
                    if (numbers.isZero((Number) obj2)) {
                        intNum = printf.Lit1;
                    } else {
                        try {
                            intNum = characters.isChar$Eq(printf.Lit9, Char.make(strings.stringRef((CharSequence) objStdio$ClRoundString, 0))) ? printf.Lit7 : printf.Lit1;
                        } catch (ClassCastException e3) {
                            throw new WrongType(e3, "string-ref", 1, objStdio$ClRoundString);
                        }
                    }
                    Object objMax = numbers.max(printf.Lit7, AddOp.$Pl.apply2(printf.Lit7, obj2));
                    try {
                        try {
                            try {
                                CharSequence charSequenceSubstring = strings.substring((CharSequence) objStdio$ClRoundString, intNum.intValue(), ((Number) objMax).intValue());
                                try {
                                    try {
                                        try {
                                            CharSequence charSequenceSubstring2 = strings.substring((CharSequence) objStdio$ClRoundString, ((Number) objMax).intValue(), strings.stringLength((CharSequence) objStdio$ClRoundString));
                                            boolean zIsString$Eq2 = strings.isString$Eq(charSequenceSubstring2, "");
                                            return lists.cons(charSequenceSubstring, (!zIsString$Eq2 ? zIsString$Eq2 : this.staticLink.alternate$Mnform == Boolean.FALSE) ? LList.list2(".", charSequenceSubstring2) : LList.Empty);
                                        } catch (ClassCastException e4) {
                                            throw new WrongType(e4, "string-length", 1, objStdio$ClRoundString);
                                        }
                                    } catch (ClassCastException e5) {
                                        throw new WrongType(e5, "substring", 2, objMax);
                                    }
                                } catch (ClassCastException e6) {
                                    throw new WrongType(e6, "substring", 1, objStdio$ClRoundString);
                                }
                            } catch (ClassCastException e7) {
                                throw new WrongType(e7, "substring", 3, objMax);
                            }
                        } catch (ClassCastException e8) {
                            throw new WrongType(e8, "substring", 2, intNum);
                        }
                    } catch (ClassCastException e9) {
                        throw new WrongType(e9, "substring", 1, objStdio$ClRoundString);
                    }
                } catch (ClassCastException e10) {
                    throw new WrongType(e10, "zero?", 1, obj2);
                }
            } catch (ClassCastException e11) {
                throw new WrongType(e11, "stdio:round-string", 0, obj);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:68:0x0194  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Object lambda30formatReal$V(java.lang.Object r17, java.lang.Object r18, java.lang.Object r19, java.lang.Object r20, java.lang.Object[] r21) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 879
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.printf.frame11.lambda30formatReal$V(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object[]):java.lang.Object");
        }

        @Override // gnu.expr.ModuleBody
        public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
            switch (moduleMethod.selector) {
                case 13:
                    callContext.values = objArr;
                    callContext.proc = moduleMethod;
                    callContext.pc = 5;
                    return 0;
                case 14:
                    callContext.values = objArr;
                    callContext.proc = moduleMethod;
                    callContext.pc = 5;
                    return 0;
                default:
                    return super.matchN(moduleMethod, objArr, callContext);
            }
        }

        @Override // gnu.expr.ModuleBody
        public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
            switch (moduleMethod.selector) {
                case 13:
                    Object obj = objArr[0];
                    Object obj2 = objArr[1];
                    Object obj3 = objArr[2];
                    Object obj4 = objArr[3];
                    int length = objArr.length - 4;
                    Object[] objArr2 = new Object[length];
                    while (true) {
                        length--;
                        if (length < 0) {
                            return lambda30formatReal$V(obj, obj2, obj3, obj4, objArr2);
                        }
                        objArr2[length] = objArr[length + 4];
                    }
                    break;
                case 14:
                    Object obj5 = objArr[0];
                    Object obj6 = objArr[1];
                    Object obj7 = objArr[2];
                    int length2 = objArr.length - 3;
                    Object[] objArr3 = new Object[length2];
                    while (true) {
                        length2--;
                        if (length2 < 0) {
                            return lambda31$V(obj5, obj6, obj7, objArr3);
                        }
                        objArr3[length2] = objArr[length2 + 3];
                    }
                    break;
                default:
                    return super.applyN(moduleMethod, objArr);
            }
        }

        Object lambda31$V(Object sgn, Object digs, Object expon, Object[] argsArray) {
            LList imag = LList.makeList(argsArray, 0);
            return Scheme.apply.apply2(this.staticLink.pad, Scheme.apply.applyN(new Object[]{this.format$Mnreal, this.staticLink.signed, sgn, digs, expon, imag}));
        }
    }

    public static Object fprintf$V(Object port, Object format, Object[] argsArray) throws Throwable {
        frame12 frame12Var = new frame12();
        frame12Var.port = port;
        LList args = LList.makeList(argsArray, 0);
        frame12Var.cnt = Lit1;
        Scheme.apply.apply4(stdio$Cliprintf, frame12Var.lambda$Fn18, format, args);
        return frame12Var.cnt;
    }

    /* JADX INFO: compiled from: printf.scm */
    public class frame12 extends ModuleBody {
        Object cnt;
        final ModuleMethod lambda$Fn18;
        Object port;

        public frame12() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 20, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:546");
            this.lambda$Fn18 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 20 ? lambda32(obj) : super.apply1(moduleMethod, obj);
        }

        Boolean lambda32(Object x) {
            if (strings.isString(x)) {
                try {
                    this.cnt = AddOp.$Pl.apply2(Integer.valueOf(strings.stringLength((CharSequence) x)), this.cnt);
                    ports.display(x, this.port);
                    return Boolean.TRUE;
                } catch (ClassCastException e) {
                    throw new WrongType(e, "string-length", 1, x);
                }
            }
            this.cnt = AddOp.$Pl.apply2(printf.Lit7, this.cnt);
            ports.display(x, this.port);
            return Boolean.TRUE;
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 20) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }

    public static Object printf$V(Object format, Object[] argsArray) {
        LList args = LList.makeList(argsArray, 0);
        return Scheme.apply.apply4(fprintf, ports.current$Mnoutput$Mnport.apply0(), format, args);
    }

    public static Object sprintf$V(Object str, Object format, Object[] argsArray) throws Throwable {
        Object objMakeString;
        frame13 frame13Var = new frame13();
        frame13Var.str = str;
        LList args = LList.makeList(argsArray, 0);
        frame13Var.cnt = Lit1;
        if (strings.isString(frame13Var.str)) {
            objMakeString = frame13Var.str;
        } else if (numbers.isNumber(frame13Var.str)) {
            Object obj = frame13Var.str;
            try {
                objMakeString = strings.makeString(((Number) obj).intValue());
            } catch (ClassCastException e) {
                throw new WrongType(e, "make-string", 1, obj);
            }
        } else {
            objMakeString = frame13Var.str == Boolean.FALSE ? strings.makeString(100) : misc.error$V(Lit68, new Object[]{"first argument not understood", frame13Var.str});
        }
        frame13Var.s = objMakeString;
        Object obj2 = frame13Var.s;
        try {
            frame13Var.end = Integer.valueOf(strings.stringLength((CharSequence) obj2));
            Scheme.apply.apply4(stdio$Cliprintf, frame13Var.lambda$Fn19, format, args);
            if (strings.isString(frame13Var.str)) {
                return frame13Var.cnt;
            }
            if (Scheme.isEqv.apply2(frame13Var.end, frame13Var.cnt) != Boolean.FALSE) {
                return frame13Var.s;
            }
            Object obj3 = frame13Var.s;
            try {
                CharSequence charSequence = (CharSequence) obj3;
                Object obj4 = frame13Var.cnt;
                try {
                    return strings.substring(charSequence, 0, ((Number) obj4).intValue());
                } catch (ClassCastException e2) {
                    throw new WrongType(e2, "substring", 3, obj4);
                }
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "substring", 1, obj3);
            }
        } catch (ClassCastException e4) {
            throw new WrongType(e4, "string-length", 1, obj2);
        }
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        switch (moduleMethod.selector) {
            case 24:
                Object obj = objArr[0];
                Object obj2 = objArr[1];
                int length = objArr.length - 2;
                Object[] objArr2 = new Object[length];
                while (true) {
                    length--;
                    if (length < 0) {
                        return stdio$ClIprintf$V(obj, obj2, objArr2);
                    }
                    objArr2[length] = objArr[length + 2];
                }
                break;
            case 25:
                Object obj3 = objArr[0];
                Object obj4 = objArr[1];
                int length2 = objArr.length - 2;
                Object[] objArr3 = new Object[length2];
                while (true) {
                    length2--;
                    if (length2 < 0) {
                        return fprintf$V(obj3, obj4, objArr3);
                    }
                    objArr3[length2] = objArr[length2 + 2];
                }
                break;
            case 26:
                Object obj5 = objArr[0];
                int length3 = objArr.length - 1;
                Object[] objArr4 = new Object[length3];
                while (true) {
                    length3--;
                    if (length3 < 0) {
                        return printf$V(obj5, objArr4);
                    }
                    objArr4[length3] = objArr[length3 + 1];
                }
                break;
            case 27:
                Object obj6 = objArr[0];
                Object obj7 = objArr[1];
                int length4 = objArr.length - 2;
                Object[] objArr5 = new Object[length4];
                while (true) {
                    length4--;
                    if (length4 < 0) {
                        return sprintf$V(obj6, obj7, objArr5);
                    }
                    objArr5[length4] = objArr[length4 + 2];
                }
                break;
            default:
                return super.applyN(moduleMethod, objArr);
        }
    }

    /* JADX INFO: compiled from: printf.scm */
    public class frame13 extends ModuleBody {
        Object cnt;
        Object end;
        final ModuleMethod lambda$Fn19;
        Object s;
        Object str;

        public frame13() {
            ModuleMethod moduleMethod = new ModuleMethod(this, 21, null, FragmentTransaction.TRANSIT_FRAGMENT_OPEN);
            moduleMethod.setProperty("source-location", "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:564");
            this.lambda$Fn19 = moduleMethod;
        }

        @Override // gnu.expr.ModuleBody
        public Object apply1(ModuleMethod moduleMethod, Object obj) {
            return moduleMethod.selector == 21 ? lambda33(obj) ? Boolean.TRUE : Boolean.FALSE : super.apply1(moduleMethod, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:133:0x0086 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        boolean lambda33(java.lang.Object r13) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 477
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.printf.frame13.lambda33(java.lang.Object):boolean");
        }

        @Override // gnu.expr.ModuleBody
        public int match1(ModuleMethod moduleMethod, Object obj, CallContext callContext) {
            if (moduleMethod.selector != 21) {
                return super.match1(moduleMethod, obj, callContext);
            }
            callContext.value1 = obj;
            callContext.proc = moduleMethod;
            callContext.pc = 1;
            return 0;
        }
    }
}
