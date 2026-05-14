package gnu.kawa.functions;

import gnu.bytecode.Type;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.Language;
import gnu.expr.QuoteExp;
import gnu.mapping.Procedure;
import gnu.mapping.ProcedureN;
import gnu.math.IntNum;
import gnu.math.RatNum;

/* JADX INFO: loaded from: classes.dex */
public class NumberCompare extends ProcedureN implements Inlineable {
    static final int RESULT_EQU = 0;
    static final int RESULT_GRT = 1;
    static final int RESULT_LSS = -1;
    static final int RESULT_NAN = -2;
    static final int RESULT_NEQ = -3;
    public static final int TRUE_IF_EQU = 8;
    public static final int TRUE_IF_GRT = 16;
    public static final int TRUE_IF_LSS = 4;
    public static final int TRUE_IF_NAN = 2;
    public static final int TRUE_IF_NEQ = 1;
    int flags;
    Language language;

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return -4094;
    }

    public static boolean $Eq(Object arg1, Object arg2) {
        return apply2(8, arg1, arg2);
    }

    public static boolean $Gr(Object arg1, Object arg2) {
        return apply2(16, arg1, arg2);
    }

    public static boolean $Gr$Eq(Object arg1, Object arg2) {
        return apply2(24, arg1, arg2);
    }

    public static boolean $Ls(Object arg1, Object arg2) {
        return apply2(4, arg1, arg2);
    }

    public static boolean $Ls$Eq(Object arg1, Object arg2) {
        return apply2(12, arg1, arg2);
    }

    public static boolean $Eq$V(Object arg1, Object arg2, Object arg3, Object[] rest) {
        if ($Eq(arg1, arg2) && $Eq(arg2, arg3)) {
            return rest.length == 0 || ($Eq(arg3, rest[0]) && applyN(8, rest));
        }
        return false;
    }

    public static boolean $Gr$V(Object arg1, Object arg2, Object arg3, Object[] rest) {
        if ($Gr(arg1, arg2) && $Gr(arg2, arg3)) {
            return rest.length == 0 || ($Gr(arg3, rest[0]) && applyN(16, rest));
        }
        return false;
    }

    public static boolean $Gr$Eq$V(Object arg1, Object arg2, Object arg3, Object[] rest) {
        if ($Gr$Eq(arg1, arg2) && $Gr$Eq(arg2, arg3)) {
            return rest.length == 0 || ($Gr$Eq(arg3, rest[0]) && applyN(24, rest));
        }
        return false;
    }

    public static boolean $Ls$V(Object arg1, Object arg2, Object arg3, Object[] rest) {
        if ($Ls(arg1, arg2) && $Ls(arg2, arg3)) {
            return rest.length == 0 || ($Ls(arg3, rest[0]) && applyN(4, rest));
        }
        return false;
    }

    public static boolean $Ls$Eq$V(Object arg1, Object arg2, Object arg3, Object[] rest) {
        if ($Ls$Eq(arg1, arg2) && $Ls$Eq(arg2, arg3)) {
            return rest.length == 0 || ($Ls$Eq(arg3, rest[0]) && applyN(12, rest));
        }
        return false;
    }

    public static NumberCompare make(Language language, String name, int flags) {
        NumberCompare proc = new NumberCompare();
        proc.language = language;
        proc.setName(name);
        proc.flags = flags;
        proc.setProperty(Procedure.validateApplyKey, "gnu.kawa.functions.CompileArith:validateApplyNumberCompare");
        return proc;
    }

    protected final Language getLanguage() {
        return this.language;
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object apply2(Object arg1, Object arg2) {
        return getLanguage().booleanObject(apply2(this.flags, arg1, arg2));
    }

    public static boolean apply2(int flags, Object arg1, Object arg2) {
        return ((1 << (compare(arg1, arg2, true) + 3)) & flags) != 0;
    }

    public static boolean checkCompareCode(int code, int flags) {
        return ((1 << (code + 3)) & flags) != 0;
    }

    public static boolean applyWithPromotion(int flags, Object arg1, Object arg2) {
        return checkCompareCode(compare(arg1, arg2, false), flags);
    }

    public static int compare(Object arg1, Object arg2, boolean exact) {
        int code1 = Arithmetic.classifyValue(arg1);
        int code2 = Arithmetic.classifyValue(arg2);
        return compare(arg1, code1, arg2, code2, exact);
    }

    public static int compare(Object obj, int i, Object obj2, int i2, boolean z) {
        if (i < 0 || i2 < 0) {
            return -3;
        }
        int i3 = 0;
        switch (i < i2 ? i2 : i) {
            case 1:
                int iAsInt = Arithmetic.asInt(obj);
                int iAsInt2 = Arithmetic.asInt(obj2);
                if (iAsInt < iAsInt2) {
                    i3 = -1;
                } else if (iAsInt > iAsInt2) {
                    i3 = 1;
                }
                return i3;
            case 2:
                long jAsLong = Arithmetic.asLong(obj);
                long jAsLong2 = Arithmetic.asLong(obj2);
                if (jAsLong < jAsLong2) {
                    i3 = -1;
                } else if (jAsLong > jAsLong2) {
                    i3 = 1;
                }
                return i3;
            case 3:
                return Arithmetic.asBigInteger(obj).compareTo(Arithmetic.asBigInteger(obj2));
            case 4:
                return IntNum.compare(Arithmetic.asIntNum(obj), Arithmetic.asIntNum(obj2));
            case 5:
                return Arithmetic.asBigDecimal(obj).compareTo(Arithmetic.asBigDecimal(obj2));
            case 6:
                return RatNum.compare(Arithmetic.asRatNum(obj), Arithmetic.asRatNum(obj2));
            case 7:
                if (!z || (i > 6 && i2 > 6)) {
                    float fAsFloat = Arithmetic.asFloat(obj);
                    float fAsFloat2 = Arithmetic.asFloat(obj2);
                    if (fAsFloat > fAsFloat2) {
                        return 1;
                    }
                    if (fAsFloat < fAsFloat2) {
                        return -1;
                    }
                    return fAsFloat == fAsFloat2 ? 0 : -2;
                }
            case 8:
            case 9:
                if (!z || (i > 6 && i2 > 6)) {
                    double dAsDouble = Arithmetic.asDouble(obj);
                    double dAsDouble2 = Arithmetic.asDouble(obj2);
                    if (dAsDouble > dAsDouble2) {
                        return 1;
                    }
                    if (dAsDouble < dAsDouble2) {
                        return -1;
                    }
                    return dAsDouble == dAsDouble2 ? 0 : -2;
                }
            default:
                return Arithmetic.asNumeric(obj).compare(Arithmetic.asNumeric(obj2));
        }
    }

    static boolean applyN(int flags, Object[] args) {
        for (int i = 0; i < args.length - 1; i++) {
            Object arg1 = args[i];
            Object arg2 = args[i + 1];
            if (!apply2(flags, arg1, arg2)) {
                return false;
            }
        }
        return true;
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] args) {
        return getLanguage().booleanObject(applyN(this.flags, args));
    }

    /* JADX WARN: Removed duplicated region for block: B:92:0x012e  */
    @Override // gnu.expr.Inlineable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void compile(gnu.expr.ApplyExp r19, gnu.expr.Compilation r20, gnu.expr.Target r21) {
        /*
            Method dump skipped, instruction units count: 352
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.functions.NumberCompare.compile(gnu.expr.ApplyExp, gnu.expr.Compilation, gnu.expr.Target):void");
    }

    static int classify(Expression exp) {
        Type type = exp.getType();
        int kind = Arithmetic.classifyType(type);
        if (kind == 4 && (exp instanceof QuoteExp)) {
            Object value = ((QuoteExp) exp).getValue();
            if (value instanceof IntNum) {
                int ilength = ((IntNum) value).intLength();
                if (ilength < 32) {
                    return 1;
                }
                if (ilength < 64) {
                    return 2;
                }
            }
        }
        return kind;
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] args) {
        return Type.booleanType;
    }
}
