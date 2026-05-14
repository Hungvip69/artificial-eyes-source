package gnu.math;

import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class Numeric extends Number {
    public static final int CEILING = 2;
    public static final int FLOOR = 1;
    public static final int NONNEG_MOD = 5;
    public static final int ROUND = 4;
    public static final int TRUNCATE = 3;

    public abstract Numeric abs();

    public abstract Numeric add(Object obj, int i);

    public abstract Numeric div(Object obj);

    public abstract boolean isExact();

    public abstract boolean isZero();

    public abstract Numeric mul(Object obj);

    public abstract Numeric neg();

    public abstract String toString(int i);

    @Override // java.lang.Number
    public float floatValue() {
        return (float) doubleValue();
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) longValue();
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) doubleValue();
    }

    public final Numeric add(Object obj) {
        return add(obj, 1);
    }

    public final Numeric sub(Object obj) {
        return add(obj, -1);
    }

    public String toString() {
        return toString(10);
    }

    public static Numeric asNumericOrNull(Object value) {
        if (value instanceof Numeric) {
            return (Numeric) value;
        }
        if ((value instanceof BigInteger) || (value instanceof Long) || (value instanceof Short) || (value instanceof Byte) || (value instanceof Integer)) {
            return IntNum.asIntNumOrNull(value);
        }
        if (value instanceof BigDecimal) {
            return RatNum.asRatNumOrNull(value);
        }
        if ((value instanceof Float) || (value instanceof Double)) {
            return new DFloNum(((Number) value).doubleValue());
        }
        return null;
    }

    public Numeric toExact() {
        return this;
    }

    public Numeric toInexact() {
        return this;
    }

    public int compare(Object obj) {
        return -3;
    }

    public int compareReversed(Numeric x) {
        throw new IllegalArgumentException();
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof Numeric) && compare(obj) == 0;
    }

    public boolean grt(Object x) {
        return compare(x) > 0;
    }

    public boolean geq(Object x) {
        return compare(x) >= 0;
    }

    public Numeric addReversed(Numeric x, int k) {
        throw new IllegalArgumentException();
    }

    public Numeric mulReversed(Numeric x) {
        throw new IllegalArgumentException();
    }

    public Numeric divReversed(Numeric x) {
        throw new IllegalArgumentException();
    }

    public Numeric div_inv() {
        return IntNum.one().div(this);
    }

    public Numeric mul_ident() {
        return IntNum.one();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [gnu.math.Numeric, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [gnu.math.Numeric] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r2v3, types: [gnu.math.Numeric] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    public Numeric power(IntNum intNum) {
        ?? Mul;
        if (intNum.isNegative()) {
            return power(IntNum.neg(intNum)).div_inv();
        }
        ?? Mul2 = this;
        ?? r1 = 0;
        while (true) {
            Mul = r1;
            if (intNum.isOdd()) {
                Mul = r1 == 0 ? Mul2 : r1.mul(Mul2);
            }
            intNum = IntNum.shift(intNum, -1);
            if (intNum.isZero()) {
                break;
            }
            Mul2 = Mul2.mul(Mul2);
            r1 = Mul;
        }
        return Mul == 0 ? mul_ident() : Mul;
    }
}
