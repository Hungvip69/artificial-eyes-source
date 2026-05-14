package gnu.kawa.xml;

/* JADX INFO: loaded from: classes2.dex */
public class Base64Binary extends BinaryObject {
    public static final String ENCODING = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";

    public Base64Binary(byte[] data) {
        this.data = data;
    }

    public static Base64Binary valueOf(String str) {
        return new Base64Binary(str);
    }

    public Base64Binary(String str) {
        int v;
        int len = str.length();
        int blen = 0;
        for (int i = 0; i < len; i++) {
            char ch = str.charAt(i);
            if (!Character.isWhitespace(ch) && ch != '=') {
                blen++;
            }
        }
        int i2 = blen * 3;
        int blen2 = i2 / 4;
        byte[] bytes = new byte[blen2];
        int blen3 = 0;
        int buffered = 0;
        int padding = 0;
        int blen4 = 0;
        for (int i3 = 0; i3 < len; i3++) {
            char ch2 = str.charAt(i3);
            if (ch2 >= 'A' && ch2 <= 'Z') {
                v = ch2 - 'A';
            } else if (ch2 >= 'a' && ch2 <= 'z') {
                v = (ch2 - 'a') + 26;
            } else if (ch2 >= '0' && ch2 <= '9') {
                v = (ch2 - '0') + 52;
            } else if (ch2 == '+') {
                v = 62;
            } else if (ch2 == '/') {
                v = 63;
            } else {
                if (Character.isWhitespace(ch2)) {
                    continue;
                } else if (ch2 == '=') {
                    padding++;
                } else {
                    v = -1;
                }
            }
            if (v < 0 || padding > 0) {
                throw new IllegalArgumentException("illegal character in base64Binary string at position " + i3);
            }
            int value = (blen3 << 6) + v;
            buffered++;
            if (buffered != 4) {
                blen3 = value;
            } else {
                int blen5 = blen4 + 1;
                bytes[blen4] = (byte) (value >> 16);
                int blen6 = blen5 + 1;
                bytes[blen5] = (byte) (value >> 8);
                bytes[blen6] = (byte) value;
                buffered = 0;
                blen4 = blen6 + 1;
                blen3 = value;
            }
        }
        if (buffered + padding <= 0 ? blen4 != bytes.length : buffered + padding != 4 || (blen3 & ((1 << padding) - 1)) != 0 || (blen4 + 3) - padding != bytes.length) {
            throw new IllegalArgumentException();
        }
        switch (padding) {
            case 1:
                int blen7 = blen4 + 1;
                bytes[blen4] = (byte) (blen3 << 10);
                int i4 = blen7 + 1;
                bytes[blen7] = (byte) (blen3 >> 2);
                break;
            case 2:
                int i5 = blen4 + 1;
                bytes[blen4] = (byte) (blen3 >> 4);
                break;
        }
        this.data = bytes;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public StringBuffer toString(StringBuffer sbuf) {
        byte[] bb = this.data;
        int len = bb.length;
        int value = 0;
        int i = 0;
        while (i < len) {
            byte b = bb[i];
            value = (value << 8) | (b & 255);
            i++;
            if (i % 3 == 0) {
                sbuf.append(ENCODING.charAt((value >> 18) & 63));
                sbuf.append(ENCODING.charAt((value >> 12) & 63));
                sbuf.append(ENCODING.charAt((value >> 6) & 63));
                sbuf.append(ENCODING.charAt(value & 63));
            }
        }
        int i2 = len % 3;
        switch (i2) {
            case 1:
                sbuf.append(ENCODING.charAt((value >> 2) & 63));
                sbuf.append(ENCODING.charAt((value << 4) & 63));
                sbuf.append("==");
                return sbuf;
            case 2:
                sbuf.append(ENCODING.charAt((value >> 10) & 63));
                sbuf.append(ENCODING.charAt((value >> 4) & 63));
                sbuf.append(ENCODING.charAt((value << 2) & 63));
                sbuf.append('=');
                return sbuf;
            default:
                return sbuf;
        }
    }

    public String toString() {
        return toString(new StringBuffer()).toString();
    }
}
