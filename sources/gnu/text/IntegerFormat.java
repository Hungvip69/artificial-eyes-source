package gnu.text;

import appinventor.ai_quachtanhung124.artificial_eyes.R;
import java.io.IOException;
import java.io.Writer;
import java.math.BigInteger;
import java.text.FieldPosition;

/* JADX INFO: loaded from: classes.dex */
public class IntegerFormat extends ReportFormat {
    public static final int MIN_DIGITS = 64;
    public static final int PAD_RIGHT = 16;
    public static final int SHOW_BASE = 8;
    public static final int SHOW_GROUPS = 1;
    public static final int SHOW_PLUS = 2;
    public static final int SHOW_SPACE = 4;
    public static final int UPPERCASE = 32;
    public int base = 10;
    public int minWidth = 1;
    public int padChar = 32;
    public int commaChar = 44;
    public int commaInterval = 3;
    public int flags = 0;

    @Override // gnu.text.ReportFormat
    public int format(Object[] args, int start, Writer dst, FieldPosition fpos) throws IOException {
        return format((Object) args, start, dst, fpos);
    }

    @Override // gnu.text.ReportFormat
    public int format(Object arg, int start, Writer dst, FieldPosition fpos) throws IOException {
        int unpadded_len;
        int minWidth;
        int i;
        Object arg2 = arg;
        int start2 = start;
        Object[] args = arg2 instanceof Object[] ? (Object[]) arg2 : null;
        int minWidth2 = getParam(this.minWidth, 1, args, start2);
        if (this.minWidth == -1610612736) {
            start2++;
        }
        char padChar = getParam(this.padChar, ' ', args, start2);
        if (this.padChar == -1610612736) {
            start2++;
        }
        char commaChar = getParam(this.commaChar, ',', args, start2);
        if (this.commaChar == -1610612736) {
            start2++;
        }
        int commaInterval = getParam(this.commaInterval, 3, args, start2);
        if (this.commaInterval == -1610612736) {
            start2++;
        }
        boolean printCommas = (this.flags & 1) != 0;
        boolean padRight = (this.flags & 16) != 0;
        boolean padInternal = padChar == '0';
        if (args != null) {
            if (start2 >= args.length) {
                dst.write("#<missing format argument>");
                return start2;
            }
            arg2 = args[start2];
        }
        String sarg = convertToIntegerString(arg2, this.base);
        if (sarg != null) {
            char sarg0 = sarg.charAt(0);
            boolean neg = sarg0 == '-';
            int slen = sarg.length();
            int ndigits = neg ? slen - 1 : slen;
            int numCommas = printCommas ? (ndigits - 1) / commaInterval : 0;
            int unpadded_len2 = ndigits + numCommas;
            if (neg || (this.flags & 6) != 0) {
                unpadded_len2++;
            }
            if ((this.flags & 8) != 0) {
                if (this.base == 16) {
                    unpadded_len2 += 2;
                } else if (this.base == 8 && sarg0 != '0') {
                    unpadded_len2++;
                }
            }
            if ((this.flags & 64) != 0) {
                int unpadded_len3 = ndigits;
                if (slen == 1 && sarg0 == '0' && minWidth2 == 0) {
                    slen = 0;
                    unpadded_len = unpadded_len3;
                } else {
                    unpadded_len = unpadded_len3;
                }
            } else {
                unpadded_len = unpadded_len2;
            }
            if (!padRight && !padInternal) {
                while (minWidth2 > unpadded_len) {
                    dst.write(padChar);
                    minWidth2--;
                }
            }
            int i2 = 0;
            if (neg) {
                dst.write(45);
                i2 = 0 + 1;
                slen--;
            } else if ((this.flags & 2) != 0) {
                dst.write(43);
            } else if ((this.flags & 4) != 0) {
                dst.write(32);
            }
            boolean uppercase = this.base > 10 && (this.flags & 32) != 0;
            if ((this.flags & 8) == 0) {
                minWidth = minWidth2;
            } else {
                minWidth = minWidth2;
                if (this.base == 16) {
                    dst.write(48);
                    dst.write(uppercase ? 88 : R.styleable.AppCompatTheme_viewInflaterClass);
                } else if (this.base == 8 && sarg0 != '0') {
                    dst.write(48);
                }
            }
            int minWidth3 = minWidth;
            if (!padInternal) {
                i = i2;
            } else {
                while (minWidth3 > unpadded_len) {
                    dst.write(padChar);
                    minWidth3--;
                }
                i = i2;
            }
            while (slen != 0) {
                int i3 = i + 1;
                char ch = sarg.charAt(i);
                if (uppercase) {
                    ch = Character.toUpperCase(ch);
                }
                dst.write(ch);
                slen--;
                if (printCommas && slen > 0 && slen % commaInterval == 0) {
                    dst.write(commaChar);
                }
                i = i3;
            }
            if (padRight) {
                while (minWidth3 > unpadded_len) {
                    dst.write(padChar);
                    minWidth3--;
                }
            }
        } else {
            print(dst, arg2.toString());
        }
        return start2 + 1;
    }

    public String convertToIntegerString(Object x, int radix) {
        if (!(x instanceof Number)) {
            return null;
        }
        if (x instanceof BigInteger) {
            return ((BigInteger) x).toString(radix);
        }
        return Long.toString(((Number) x).longValue(), radix);
    }
}
