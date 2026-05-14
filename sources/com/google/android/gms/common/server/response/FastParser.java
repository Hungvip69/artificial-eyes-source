package com.google.android.gms.common.server.response;

import android.util.Log;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.Base64Utils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

/* JADX INFO: loaded from: classes2.dex */
public class FastParser<T extends FastJsonResponse> {
    private static final char[] zaqg = {'u', 'l', 'l'};
    private static final char[] zaqh = {'r', 'u', 'e'};
    private static final char[] zaqi = {'r', 'u', 'e', '\"'};
    private static final char[] zaqj = {'a', 'l', 's', 'e'};
    private static final char[] zaqk = {'a', 'l', 's', 'e', '\"'};
    private static final char[] zaql = {'\n'};
    private static final zaa<Integer> zaqn = new com.google.android.gms.common.server.response.zaa();
    private static final zaa<Long> zaqo = new zab();
    private static final zaa<Float> zaqp = new zac();
    private static final zaa<Double> zaqq = new zad();
    private static final zaa<Boolean> zaqr = new zae();
    private static final zaa<String> zaqs = new zaf();
    private static final zaa<BigInteger> zaqt = new zag();
    private static final zaa<BigDecimal> zaqu = new zah();
    private final char[] zaqb = new char[1];
    private final char[] zaqc = new char[32];
    private final char[] zaqd = new char[1024];
    private final StringBuilder zaqe = new StringBuilder(32);
    private final StringBuilder zaqf = new StringBuilder(1024);
    private final Stack<Integer> zaqm = new Stack<>();

    /* JADX INFO: Access modifiers changed from: private */
    interface zaa<O> {
        O zah(FastParser fastParser, BufferedReader bufferedReader) throws ParseException, IOException;
    }

    public static class ParseException extends Exception {
        public ParseException(String str) {
            super(str);
        }

        public ParseException(String str, Throwable th) {
            super(str, th);
        }

        public ParseException(Throwable th) {
            super(th);
        }
    }

    public void parse(InputStream inputStream, T t) throws ParseException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 1024);
        try {
            try {
                this.zaqm.push(0);
                char cZaj = zaj(bufferedReader);
                switch (cZaj) {
                    case 0:
                        throw new ParseException("No data to parse");
                    case '[':
                        this.zaqm.push(5);
                        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = t.getFieldMappings();
                        if (fieldMappings.size() != 1) {
                            throw new ParseException("Object array response class must have a single Field");
                        }
                        FastJsonResponse.Field<?, ?> value = fieldMappings.entrySet().iterator().next().getValue();
                        t.addConcreteTypeArrayInternal(value, value.zapv, zaa(bufferedReader, value));
                        break;
                        break;
                    case '{':
                        this.zaqm.push(1);
                        zaa(bufferedReader, t);
                        break;
                    default:
                        throw new ParseException(new StringBuilder(19).append("Unexpected token: ").append(cZaj).toString());
                }
                zak(0);
            } finally {
                try {
                    bufferedReader.close();
                } catch (IOException e) {
                    Log.w("FastParser", "Failed to close reader while parsing.");
                }
            }
        } catch (IOException e2) {
            throw new ParseException(e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean zaa(BufferedReader bufferedReader, FastJsonResponse fastJsonResponse) throws ParseException, IOException {
        HashMap map;
        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = fastJsonResponse.getFieldMappings();
        String strZaa = zaa(bufferedReader);
        if (strZaa == null) {
            zak(1);
            return false;
        }
        while (strZaa != null) {
            FastJsonResponse.Field<?, ?> field = fieldMappings.get(strZaa);
            if (field == null) {
                strZaa = zab(bufferedReader);
            } else {
                this.zaqm.push(4);
                switch (field.zapr) {
                    case 0:
                        if (field.zaps) {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, (ArrayList<Integer>) zaa(bufferedReader, zaqn));
                        } else {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, zad(bufferedReader));
                        }
                        break;
                    case 1:
                        if (field.zaps) {
                            fastJsonResponse.zab((FastJsonResponse.Field) field, (ArrayList<BigInteger>) zaa(bufferedReader, zaqt));
                        } else {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, zaf(bufferedReader));
                        }
                        break;
                    case 2:
                        if (field.zaps) {
                            fastJsonResponse.zac(field, zaa(bufferedReader, zaqo));
                        } else {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, zae(bufferedReader));
                        }
                        break;
                    case 3:
                        if (field.zaps) {
                            fastJsonResponse.zad(field, zaa(bufferedReader, zaqp));
                        } else {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, zag(bufferedReader));
                        }
                        break;
                    case 4:
                        if (field.zaps) {
                            fastJsonResponse.zae(field, zaa(bufferedReader, zaqq));
                        } else {
                            fastJsonResponse.zaa(field, zah(bufferedReader));
                        }
                        break;
                    case 5:
                        if (field.zaps) {
                            fastJsonResponse.zaf(field, zaa(bufferedReader, zaqu));
                        } else {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, zai(bufferedReader));
                        }
                        break;
                    case 6:
                        if (field.zaps) {
                            fastJsonResponse.zag(field, zaa(bufferedReader, zaqr));
                        } else {
                            fastJsonResponse.zaa(field, zaa(bufferedReader, false));
                        }
                        break;
                    case 7:
                        if (field.zaps) {
                            fastJsonResponse.zah(field, zaa(bufferedReader, zaqs));
                        } else {
                            fastJsonResponse.zaa((FastJsonResponse.Field) field, zac(bufferedReader));
                        }
                        break;
                    case 8:
                        fastJsonResponse.zaa((FastJsonResponse.Field) field, Base64Utils.decode(zaa(bufferedReader, this.zaqd, this.zaqf, zaql)));
                        break;
                    case 9:
                        fastJsonResponse.zaa((FastJsonResponse.Field) field, Base64Utils.decodeUrlSafe(zaa(bufferedReader, this.zaqd, this.zaqf, zaql)));
                        break;
                    case 10:
                        char cZaj = zaj(bufferedReader);
                        if (cZaj == 'n') {
                            zab(bufferedReader, zaqg);
                            map = null;
                        } else {
                            if (cZaj != '{') {
                                throw new ParseException("Expected start of a map object");
                            }
                            this.zaqm.push(1);
                            map = new HashMap();
                            while (true) {
                                switch (zaj(bufferedReader)) {
                                    case 0:
                                        throw new ParseException("Unexpected EOF");
                                    case '\"':
                                        String strZab = zab(bufferedReader, this.zaqc, this.zaqe, null);
                                        if (zaj(bufferedReader) != ':') {
                                            String strValueOf = String.valueOf(strZab);
                                            throw new ParseException(strValueOf.length() != 0 ? "No map value found for key ".concat(strValueOf) : new String("No map value found for key "));
                                        }
                                        if (zaj(bufferedReader) != '\"') {
                                            String strValueOf2 = String.valueOf(strZab);
                                            throw new ParseException(strValueOf2.length() != 0 ? "Expected String value for key ".concat(strValueOf2) : new String("Expected String value for key "));
                                        }
                                        map.put(strZab, zab(bufferedReader, this.zaqc, this.zaqe, null));
                                        char cZaj2 = zaj(bufferedReader);
                                        if (cZaj2 != ',') {
                                            if (cZaj2 == '}') {
                                                zak(1);
                                            } else {
                                                throw new ParseException(new StringBuilder(48).append("Unexpected character while parsing string map: ").append(cZaj2).toString());
                                            }
                                        }
                                        break;
                                        break;
                                    case '}':
                                        zak(1);
                                        break;
                                }
                            }
                        }
                        fastJsonResponse.zaa((FastJsonResponse.Field) field, (Map<String, String>) map);
                        break;
                    case 11:
                        if (field.zaps) {
                            char cZaj3 = zaj(bufferedReader);
                            if (cZaj3 == 'n') {
                                zab(bufferedReader, zaqg);
                                fastJsonResponse.addConcreteTypeArrayInternal(field, field.zapv, null);
                            } else {
                                this.zaqm.push(5);
                                if (cZaj3 != '[') {
                                    throw new ParseException("Expected array start");
                                }
                                fastJsonResponse.addConcreteTypeArrayInternal(field, field.zapv, zaa(bufferedReader, field));
                            }
                        } else {
                            char cZaj4 = zaj(bufferedReader);
                            if (cZaj4 != 'n') {
                                this.zaqm.push(1);
                                if (cZaj4 != '{') {
                                    throw new ParseException("Expected start of object");
                                }
                                try {
                                    FastJsonResponse fastJsonResponseZacp = field.zacp();
                                    zaa(bufferedReader, fastJsonResponseZacp);
                                    fastJsonResponse.addConcreteTypeInternal(field, field.zapv, fastJsonResponseZacp);
                                } catch (IllegalAccessException e) {
                                    throw new ParseException("Error instantiating inner object", e);
                                } catch (InstantiationException e2) {
                                    throw new ParseException("Error instantiating inner object", e2);
                                }
                            } else {
                                zab(bufferedReader, zaqg);
                                fastJsonResponse.addConcreteTypeInternal(field, field.zapv, null);
                            }
                        }
                        break;
                    default:
                        throw new ParseException(new StringBuilder(30).append("Invalid field type ").append(field.zapr).toString());
                }
                zak(4);
                zak(2);
                char cZaj5 = zaj(bufferedReader);
                switch (cZaj5) {
                    case ',':
                        strZaa = zaa(bufferedReader);
                        break;
                    case '}':
                        strZaa = null;
                        break;
                    default:
                        throw new ParseException(new StringBuilder(55).append("Expected end of object or field separator, but found: ").append(cZaj5).toString());
                }
            }
        }
        zak(1);
        return true;
    }

    private final String zaa(BufferedReader bufferedReader) throws ParseException, IOException {
        this.zaqm.push(2);
        char cZaj = zaj(bufferedReader);
        switch (cZaj) {
            case '\"':
                this.zaqm.push(3);
                String strZab = zab(bufferedReader, this.zaqc, this.zaqe, null);
                zak(3);
                if (zaj(bufferedReader) != ':') {
                    throw new ParseException("Expected key/value separator");
                }
                return strZab;
            case ']':
                zak(2);
                zak(1);
                zak(5);
                return null;
            case '}':
                zak(2);
                return null;
            default:
                throw new ParseException(new StringBuilder(19).append("Unexpected token: ").append(cZaj).toString());
        }
    }

    private final String zab(BufferedReader bufferedReader) throws ParseException, IOException {
        bufferedReader.mark(1024);
        int i = 1;
        switch (zaj(bufferedReader)) {
            case '\"':
                if (bufferedReader.read(this.zaqb) == -1) {
                    throw new ParseException("Unexpected EOF while parsing string");
                }
                char c = this.zaqb[0];
                boolean z = false;
                do {
                    if (c != '\"' || z) {
                        z = c == '\\' ? !z : false;
                        if (bufferedReader.read(this.zaqb) == -1) {
                            throw new ParseException("Unexpected EOF while parsing string");
                        }
                        c = this.zaqb[0];
                    }
                    break;
                } while (!Character.isISOControl(c));
                throw new ParseException("Unexpected control character while reading string");
            case ',':
                throw new ParseException("Missing value");
            case '[':
                this.zaqm.push(5);
                bufferedReader.mark(32);
                if (zaj(bufferedReader) == ']') {
                    zak(5);
                } else {
                    bufferedReader.reset();
                    boolean z2 = false;
                    boolean z3 = false;
                    while (i > 0) {
                        char cZaj = zaj(bufferedReader);
                        if (cZaj == 0) {
                            throw new ParseException("Unexpected EOF while parsing array");
                        }
                        if (Character.isISOControl(cZaj)) {
                            throw new ParseException("Unexpected control character while reading array");
                        }
                        if (cZaj == '\"' && !z2) {
                            z3 = !z3;
                        }
                        if (cZaj == '[' && !z3) {
                            i++;
                        }
                        if (cZaj == ']' && !z3) {
                            i--;
                        }
                        z2 = (cZaj == '\\' && z3) ? !z2 : false;
                    }
                    zak(5);
                }
                break;
            case '{':
                this.zaqm.push(1);
                bufferedReader.mark(32);
                char cZaj2 = zaj(bufferedReader);
                if (cZaj2 == '}') {
                    zak(1);
                } else if (cZaj2 == '\"') {
                    bufferedReader.reset();
                    zaa(bufferedReader);
                    while (zab(bufferedReader) != null) {
                    }
                    zak(1);
                } else {
                    throw new ParseException(new StringBuilder(18).append("Unexpected token ").append(cZaj2).toString());
                }
                break;
            default:
                bufferedReader.reset();
                zaa(bufferedReader, this.zaqd);
                break;
        }
        char cZaj3 = zaj(bufferedReader);
        switch (cZaj3) {
            case ',':
                zak(2);
                return zaa(bufferedReader);
            case '}':
                zak(2);
                return null;
            default:
                throw new ParseException(new StringBuilder(18).append("Unexpected token ").append(cZaj3).toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String zac(BufferedReader bufferedReader) throws ParseException, IOException {
        return zaa(bufferedReader, this.zaqc, this.zaqe, null);
    }

    private final <O> ArrayList<O> zaa(BufferedReader bufferedReader, zaa<O> zaaVar) throws ParseException, IOException {
        char cZaj = zaj(bufferedReader);
        if (cZaj == 'n') {
            zab(bufferedReader, zaqg);
            return null;
        }
        if (cZaj != '[') {
            throw new ParseException("Expected start of array");
        }
        this.zaqm.push(5);
        ArrayList<O> arrayList = new ArrayList<>();
        while (true) {
            bufferedReader.mark(1024);
            switch (zaj(bufferedReader)) {
                case 0:
                    throw new ParseException("Unexpected EOF");
                case ',':
                    break;
                case ']':
                    zak(5);
                    return arrayList;
                default:
                    bufferedReader.reset();
                    arrayList.add(zaaVar.zah(this, bufferedReader));
                    break;
            }
        }
    }

    private final String zaa(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, char[] cArr2) throws ParseException, IOException {
        switch (zaj(bufferedReader)) {
            case '\"':
                return zab(bufferedReader, cArr, sb, cArr2);
            case 'n':
                zab(bufferedReader, zaqg);
                return null;
            default:
                throw new ParseException("Expected string");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0032 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String zab(java.io.BufferedReader r9, char[] r10, java.lang.StringBuilder r11, char[] r12) throws com.google.android.gms.common.server.response.FastParser.ParseException, java.io.IOException {
        /*
            r0 = 0
            r11.setLength(r0)
            int r1 = r10.length
            r9.mark(r1)
            r1 = 0
            r2 = 0
        Lc:
            int r3 = r9.read(r10)
            r4 = -1
            if (r3 == r4) goto L70
            r4 = 0
        L14:
            if (r4 >= r3) goto L68
            char r5 = r10[r4]
            boolean r6 = java.lang.Character.isISOControl(r5)
            r7 = 1
            if (r6 == 0) goto L3a
            if (r12 == 0) goto L2e
            r6 = 0
        L22:
            int r8 = r12.length
            if (r6 >= r8) goto L2e
            char r8 = r12[r6]
            if (r8 != r5) goto L2b
            r6 = 1
            goto L2f
        L2b:
            int r6 = r6 + 1
            goto L22
        L2e:
            r6 = 0
        L2f:
            if (r6 == 0) goto L32
            goto L3a
        L32:
            com.google.android.gms.common.server.response.FastParser$ParseException r9 = new com.google.android.gms.common.server.response.FastParser$ParseException
            java.lang.String r10 = "Unexpected control character while reading string"
            r9.<init>(r10)
            throw r9
        L3a:
            r6 = 34
            if (r5 != r6) goto L5b
            if (r1 != 0) goto L5b
            r11.append(r10, r0, r4)
            r9.reset()
            int r4 = r4 + r7
            long r0 = (long) r4
            r9.skip(r0)
            if (r2 == 0) goto L56
            java.lang.String r9 = r11.toString()
            java.lang.String r9 = com.google.android.gms.common.util.JsonUtils.unescapeString(r9)
            return r9
        L56:
            java.lang.String r9 = r11.toString()
            return r9
        L5b:
            r6 = 92
            if (r5 != r6) goto L64
        L60:
            r1 = r1 ^ 1
            r2 = 1
            goto L65
        L64:
            r1 = 0
        L65:
            int r4 = r4 + 1
            goto L14
        L68:
            r11.append(r10, r0, r3)
            int r3 = r10.length
            r9.mark(r3)
            goto Lc
        L70:
            com.google.android.gms.common.server.response.FastParser$ParseException r9 = new com.google.android.gms.common.server.response.FastParser$ParseException
            java.lang.String r10 = "Unexpected EOF while parsing string"
            r9.<init>(r10)
            goto L79
        L78:
            throw r9
        L79:
            goto L78
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.FastParser.zab(java.io.BufferedReader, char[], java.lang.StringBuilder, char[]):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int zad(BufferedReader bufferedReader) throws ParseException, IOException {
        int i;
        int i2;
        boolean z;
        int iZaa = zaa(bufferedReader, this.zaqd);
        int i3 = 0;
        if (iZaa == 0) {
            return 0;
        }
        char[] cArr = this.zaqd;
        if (iZaa > 0) {
            if (cArr[0] == '-') {
                i = Integer.MIN_VALUE;
                i2 = 1;
                z = true;
            } else {
                i = -2147483647;
                i2 = 0;
                z = false;
            }
            if (i2 < iZaa) {
                int i4 = i2 + 1;
                int iDigit = Character.digit(cArr[i2], 10);
                if (iDigit < 0) {
                    throw new ParseException("Unexpected non-digit character");
                }
                int i5 = -iDigit;
                i2 = i4;
                i3 = i5;
            }
            while (i2 < iZaa) {
                int i6 = i2 + 1;
                int iDigit2 = Character.digit(cArr[i2], 10);
                if (iDigit2 < 0) {
                    throw new ParseException("Unexpected non-digit character");
                }
                if (i3 < -214748364) {
                    throw new ParseException("Number too large");
                }
                int i7 = i3 * 10;
                if (i7 < i + iDigit2) {
                    throw new ParseException("Number too large");
                }
                i3 = i7 - iDigit2;
                i2 = i6;
            }
            if (z) {
                if (i2 > 1) {
                    return i3;
                }
                throw new ParseException("No digits to parse");
            }
            return -i3;
        }
        throw new ParseException("No number to parse");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zae(BufferedReader bufferedReader) throws ParseException, IOException {
        long j;
        boolean z;
        int iZaa = zaa(bufferedReader, this.zaqd);
        long j2 = 0;
        if (iZaa == 0) {
            return 0L;
        }
        char[] cArr = this.zaqd;
        if (iZaa > 0) {
            int i = 0;
            if (cArr[0] == '-') {
                j = Long.MIN_VALUE;
                i = 1;
                z = true;
            } else {
                j = -9223372036854775807L;
                z = false;
            }
            if (i < iZaa) {
                int i2 = i + 1;
                int iDigit = Character.digit(cArr[i], 10);
                if (iDigit < 0) {
                    throw new ParseException("Unexpected non-digit character");
                }
                i = i2;
                j2 = -iDigit;
            }
            while (i < iZaa) {
                int i3 = i + 1;
                int iDigit2 = Character.digit(cArr[i], 10);
                if (iDigit2 < 0) {
                    throw new ParseException("Unexpected non-digit character");
                }
                if (j2 < -922337203685477580L) {
                    throw new ParseException("Number too large");
                }
                long j3 = j2 * 10;
                long j4 = iDigit2;
                if (j3 < j + j4) {
                    throw new ParseException("Number too large");
                }
                j2 = j3 - j4;
                i = i3;
            }
            if (z) {
                if (i > 1) {
                    return j2;
                }
                throw new ParseException("No digits to parse");
            }
            return -j2;
        }
        throw new ParseException("No number to parse");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BigInteger zaf(BufferedReader bufferedReader) throws ParseException, IOException {
        int iZaa = zaa(bufferedReader, this.zaqd);
        if (iZaa == 0) {
            return null;
        }
        return new BigInteger(new String(this.zaqd, 0, iZaa));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:282)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:65)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public final boolean zaa(java.io.BufferedReader r4, boolean r5) throws com.google.android.gms.common.server.response.FastParser.ParseException, java.io.IOException {
        /*
            r3 = this;
        L1:
            char r0 = r3.zaj(r4)
            r1 = 1
            r2 = 0
            switch(r0) {
                case 34: goto L41;
                case 102: goto L36;
                case 110: goto L30;
                case 116: goto L25;
                default: goto La;
            }
        La:
            com.google.android.gms.common.server.response.FastParser$ParseException r4 = new com.google.android.gms.common.server.response.FastParser$ParseException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r1 = 19
            r5.<init>(r1)
            java.lang.String r1 = "Unexpected token: "
            java.lang.StringBuilder r5 = r5.append(r1)
            java.lang.StringBuilder r5 = r5.append(r0)
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L25:
            if (r5 == 0) goto L2a
            char[] r5 = com.google.android.gms.common.server.response.FastParser.zaqi
            goto L2c
        L2a:
            char[] r5 = com.google.android.gms.common.server.response.FastParser.zaqh
        L2c:
            r3.zab(r4, r5)
            return r1
        L30:
            char[] r5 = com.google.android.gms.common.server.response.FastParser.zaqg
            r3.zab(r4, r5)
            return r2
        L36:
            if (r5 == 0) goto L3b
            char[] r5 = com.google.android.gms.common.server.response.FastParser.zaqk
            goto L3d
        L3b:
            char[] r5 = com.google.android.gms.common.server.response.FastParser.zaqj
        L3d:
            r3.zab(r4, r5)
            return r2
        L41:
            if (r5 != 0) goto L45
            r5 = 1
            goto L1
        L45:
            com.google.android.gms.common.server.response.FastParser$ParseException r4 = new com.google.android.gms.common.server.response.FastParser$ParseException
            java.lang.String r5 = "No boolean value found in string"
            r4.<init>(r5)
            goto L4e
        L4d:
            throw r4
        L4e:
            goto L4d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.FastParser.zaa(java.io.BufferedReader, boolean):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float zag(BufferedReader bufferedReader) throws ParseException, IOException {
        int iZaa = zaa(bufferedReader, this.zaqd);
        if (iZaa == 0) {
            return 0.0f;
        }
        return Float.parseFloat(new String(this.zaqd, 0, iZaa));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final double zah(BufferedReader bufferedReader) throws ParseException, IOException {
        int iZaa = zaa(bufferedReader, this.zaqd);
        if (iZaa == 0) {
            return 0.0d;
        }
        return Double.parseDouble(new String(this.zaqd, 0, iZaa));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BigDecimal zai(BufferedReader bufferedReader) throws ParseException, IOException {
        int iZaa = zaa(bufferedReader, this.zaqd);
        if (iZaa == 0) {
            return null;
        }
        return new BigDecimal(new String(this.zaqd, 0, iZaa));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:96)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:282)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:65)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.addCases(SwitchRegionMaker.java:123)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:71)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    private final <T extends com.google.android.gms.common.server.response.FastJsonResponse> java.util.ArrayList<T> zaa(java.io.BufferedReader r9, com.google.android.gms.common.server.response.FastJsonResponse.Field<?, ?> r10) throws com.google.android.gms.common.server.response.FastParser.ParseException, java.io.IOException {
        /*
            r8 = this;
            java.lang.String r0 = "Error instantiating inner object"
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            char r2 = r8.zaj(r9)
            java.lang.String r3 = "Unexpected token: "
            r4 = 19
            r5 = 5
            switch(r2) {
                case 93: goto L98;
                case 110: goto L8e;
                case 123: goto L2a;
                default: goto L13;
            }
        L13:
            com.google.android.gms.common.server.response.FastParser$ParseException r9 = new com.google.android.gms.common.server.response.FastParser$ParseException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>(r4)
            java.lang.StringBuilder r10 = r10.append(r3)
            java.lang.StringBuilder r10 = r10.append(r2)
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        L2a:
            java.util.Stack<java.lang.Integer> r2 = r8.zaqm
            r6 = 1
            java.lang.Integer r7 = java.lang.Integer.valueOf(r6)
            r2.push(r7)
        L35:
            com.google.android.gms.common.server.response.FastJsonResponse r2 = r10.zacp()     // Catch: java.lang.IllegalAccessException -> L80 java.lang.InstantiationException -> L87
            boolean r7 = r8.zaa(r9, r2)     // Catch: java.lang.IllegalAccessException -> L80 java.lang.InstantiationException -> L87
            if (r7 == 0) goto L7e
            r1.add(r2)     // Catch: java.lang.IllegalAccessException -> L80 java.lang.InstantiationException -> L87
            char r2 = r8.zaj(r9)
            switch(r2) {
                case 44: goto L64;
                case 93: goto L60;
                default: goto L49;
            }
        L49:
            com.google.android.gms.common.server.response.FastParser$ParseException r9 = new com.google.android.gms.common.server.response.FastParser$ParseException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>(r4)
            java.lang.StringBuilder r10 = r10.append(r3)
            java.lang.StringBuilder r10 = r10.append(r2)
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        L60:
            r8.zak(r5)
            return r1
        L64:
            char r2 = r8.zaj(r9)
            r7 = 123(0x7b, float:1.72E-43)
            if (r2 != r7) goto L76
            java.util.Stack<java.lang.Integer> r2 = r8.zaqm
            java.lang.Integer r7 = java.lang.Integer.valueOf(r6)
            r2.push(r7)
            goto L35
        L76:
            com.google.android.gms.common.server.response.FastParser$ParseException r9 = new com.google.android.gms.common.server.response.FastParser$ParseException
            java.lang.String r10 = "Expected start of next object in array"
            r9.<init>(r10)
            throw r9
        L7e:
            return r1
        L80:
            r9 = move-exception
            com.google.android.gms.common.server.response.FastParser$ParseException r10 = new com.google.android.gms.common.server.response.FastParser$ParseException
            r10.<init>(r0, r9)
            throw r10
        L87:
            r9 = move-exception
            com.google.android.gms.common.server.response.FastParser$ParseException r10 = new com.google.android.gms.common.server.response.FastParser$ParseException
            r10.<init>(r0, r9)
            throw r10
        L8e:
            char[] r10 = com.google.android.gms.common.server.response.FastParser.zaqg
            r8.zab(r9, r10)
            r8.zak(r5)
            r9 = 0
            return r9
        L98:
            r8.zak(r5)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.server.response.FastParser.zaa(java.io.BufferedReader, com.google.android.gms.common.server.response.FastJsonResponse$Field):java.util.ArrayList");
    }

    private final char zaj(BufferedReader bufferedReader) throws ParseException, IOException {
        if (bufferedReader.read(this.zaqb) == -1) {
            return (char) 0;
        }
        while (Character.isWhitespace(this.zaqb[0])) {
            if (bufferedReader.read(this.zaqb) == -1) {
                return (char) 0;
            }
        }
        return this.zaqb[0];
    }

    private final int zaa(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i;
        char cZaj = zaj(bufferedReader);
        if (cZaj == 0) {
            throw new ParseException("Unexpected EOF");
        }
        if (cZaj == ',') {
            throw new ParseException("Missing value");
        }
        if (cZaj == 'n') {
            zab(bufferedReader, zaqg);
            return 0;
        }
        bufferedReader.mark(1024);
        if (cZaj == '\"') {
            i = 0;
            boolean z = false;
            while (i < cArr.length && bufferedReader.read(cArr, i, 1) != -1) {
                char c = cArr[i];
                if (Character.isISOControl(c)) {
                    throw new ParseException("Unexpected control character while reading string");
                }
                if (c == '\"' && !z) {
                    bufferedReader.reset();
                    bufferedReader.skip(i + 1);
                    return i;
                }
                if (c == '\\') {
                    z = !z;
                } else {
                    z = false;
                }
                i++;
            }
        } else {
            cArr[0] = cZaj;
            i = 1;
            while (i < cArr.length && bufferedReader.read(cArr, i, 1) != -1) {
                if (cArr[i] == '}' || cArr[i] == ',' || Character.isWhitespace(cArr[i]) || cArr[i] == ']') {
                    bufferedReader.reset();
                    bufferedReader.skip(i - 1);
                    cArr[i] = 0;
                    return i;
                }
                i++;
            }
        }
        if (i == cArr.length) {
            throw new ParseException("Absurdly long value");
        }
        throw new ParseException("Unexpected EOF");
    }

    private final void zab(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i = 0;
        while (i < cArr.length) {
            int i2 = bufferedReader.read(this.zaqc, 0, cArr.length - i);
            if (i2 == -1) {
                throw new ParseException("Unexpected EOF");
            }
            for (int i3 = 0; i3 < i2; i3++) {
                if (cArr[i3 + i] != this.zaqc[i3]) {
                    throw new ParseException("Unexpected character");
                }
            }
            i += i2;
        }
    }

    private final void zak(int i) throws ParseException {
        if (this.zaqm.isEmpty()) {
            throw new ParseException(new StringBuilder(46).append("Expected state ").append(i).append(" but had empty stack").toString());
        }
        int iIntValue = this.zaqm.pop().intValue();
        if (iIntValue != i) {
            throw new ParseException(new StringBuilder(46).append("Expected state ").append(i).append(" but had ").append(iIntValue).toString());
        }
    }
}
