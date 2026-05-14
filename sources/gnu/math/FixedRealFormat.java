package gnu.math;

import java.text.FieldPosition;
import java.text.Format;
import java.text.ParsePosition;

/* JADX INFO: loaded from: classes.dex */
public class FixedRealFormat extends Format {
    private int d;
    private int i;
    public boolean internalPad;
    public char overflowChar;
    public char padChar;
    public int scale;
    public boolean showPlus;
    public int width;

    public int getMaximumFractionDigits() {
        return this.d;
    }

    public int getMinimumIntegerDigits() {
        return this.i;
    }

    public void setMaximumFractionDigits(int d) {
        this.d = d;
    }

    public void setMinimumIntegerDigits(int i) {
        this.i = i;
    }

    public void format(RealNum number, StringBuffer sbuf, FieldPosition fpos) {
        int decimals;
        RatNum ratnum;
        int signLen;
        if (!(number instanceof RatNum) || (decimals = getMaximumFractionDigits()) < 0) {
            format(number.doubleValue(), sbuf, fpos);
            return;
        }
        RatNum ratnum2 = (RatNum) number;
        boolean negative = ratnum2.isNegative();
        if (!negative) {
            ratnum = ratnum2;
        } else {
            ratnum = ratnum2.rneg();
        }
        int oldSize = sbuf.length();
        if (negative) {
            sbuf.append('-');
        } else if (this.showPlus) {
            sbuf.append('+');
        } else {
            signLen = 0;
            int signLen2 = this.scale;
            String string = RealNum.toScaledInt(ratnum, signLen2 + decimals).toString();
            sbuf.append(string);
            int length = string.length();
            int digits = length - decimals;
            format(sbuf, fpos, length, digits, decimals, signLen, oldSize);
        }
        signLen = 1;
        int signLen22 = this.scale;
        String string2 = RealNum.toScaledInt(ratnum, signLen22 + decimals).toString();
        sbuf.append(string2);
        int length2 = string2.length();
        int digits2 = length2 - decimals;
        format(sbuf, fpos, length2, digits2, decimals, signLen, oldSize);
    }

    public StringBuffer format(long num, StringBuffer sbuf, FieldPosition fpos) {
        format((RealNum) IntNum.make(num), sbuf, fpos);
        return sbuf;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d5 A[ADDED_TO_REGION, LOOP:1: B:42:0x00d5->B:43:0x00d7, LOOP_START, PHI: r0 r3
      0x00d5: PHI (r0v27 'i' int) = (r0v7 'i' int), (r0v28 'i' int) binds: [B:41:0x00d3, B:43:0x00d7] A[DONT_GENERATE, DONT_INLINE]
      0x00d5: PHI (r3v12 'digits' int) = (r3v3 'digits' int), (r3v13 'digits' int) binds: [B:41:0x00d3, B:43:0x00d7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fb A[LOOP:2: B:53:0x00f9->B:54:0x00fb, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0196  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.StringBuffer format(double r30, java.lang.StringBuffer r32, java.text.FieldPosition r33) {
        /*
            Method dump skipped, instruction units count: 452
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.math.FixedRealFormat.format(double, java.lang.StringBuffer, java.text.FieldPosition):java.lang.StringBuffer");
    }

    @Override // java.text.Format
    public StringBuffer format(Object num, StringBuffer sbuf, FieldPosition fpos) {
        RealNum rnum = RealNum.asRealNumOrNull(num);
        if (rnum == null) {
            if (num instanceof Complex) {
                String str = num.toString();
                int padding = this.width - str.length();
                while (true) {
                    padding--;
                    if (padding >= 0) {
                        sbuf.append(' ');
                    } else {
                        sbuf.append(str);
                        return sbuf;
                    }
                }
            } else {
                rnum = (RealNum) num;
            }
        }
        return format(rnum.doubleValue(), sbuf, fpos);
    }

    private void format(StringBuffer sbuf, FieldPosition fpos, int length, int digits, int decimals, int signLen, int oldSize) {
        int zero_digits;
        int i = digits + decimals;
        int zero_digits2 = getMinimumIntegerDigits();
        if (digits >= 0 && digits > zero_digits2) {
            zero_digits = 0;
        } else {
            zero_digits = zero_digits2 - digits;
        }
        if (digits + zero_digits <= 0 && (this.width <= 0 || this.width > decimals + 1 + signLen)) {
            zero_digits++;
        }
        int needed = signLen + length + zero_digits + 1;
        int padding = this.width - needed;
        int i2 = zero_digits;
        while (true) {
            i2--;
            if (i2 < 0) {
                break;
            } else {
                sbuf.insert(oldSize + signLen, '0');
            }
        }
        if (padding >= 0) {
            int i3 = oldSize;
            if (this.internalPad && signLen > 0) {
                i3++;
            }
            while (true) {
                padding--;
                if (padding < 0) {
                    break;
                } else {
                    sbuf.insert(i3, this.padChar);
                }
            }
        } else if (this.overflowChar != 0) {
            sbuf.setLength(oldSize);
            this.i = this.width;
            while (true) {
                int i4 = this.i - 1;
                this.i = i4;
                if (i4 >= 0) {
                    sbuf.append(this.overflowChar);
                } else {
                    return;
                }
            }
        }
        int newSize = sbuf.length();
        sbuf.insert(newSize - decimals, '.');
    }

    public Number parse(String text, ParsePosition status) {
        throw new Error("RealFixedFormat.parse - not implemented");
    }

    @Override // java.text.Format
    public Object parseObject(String text, ParsePosition status) {
        throw new Error("RealFixedFormat.parseObject - not implemented");
    }
}
