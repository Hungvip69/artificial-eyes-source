package gnu.kawa.functions;

import gnu.expr.Language;
import gnu.mapping.Procedure2;

/* JADX INFO: loaded from: classes.dex */
public class IsEqual extends Procedure2 {
    Language language;

    public IsEqual(Language language, String name) {
        this.language = language;
        setName(name);
    }

    public static boolean numberEquals(Number num1, Number num2) {
        boolean exact1 = Arithmetic.isExact(num1);
        boolean exact2 = Arithmetic.isExact(num2);
        if (exact1 && exact2) {
            return NumberCompare.$Eq(num1, num2);
        }
        return exact1 == exact2 && num1.equals(num2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:72:0x00bf, code lost:
    
        return apply(r4, r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean apply(java.lang.Object r10, java.lang.Object r11) {
        /*
            r0 = 1
            if (r10 != r11) goto L4
            return r0
        L4:
            r1 = 0
            if (r10 == 0) goto Lc7
            if (r11 != 0) goto Lb
            goto Lc7
        Lb:
            boolean r2 = r10 instanceof java.lang.Number
            if (r2 == 0) goto L1e
            boolean r2 = r11 instanceof java.lang.Number
            if (r2 == 0) goto L1e
            r0 = r10
            java.lang.Number r0 = (java.lang.Number) r0
            r1 = r11
            java.lang.Number r1 = (java.lang.Number) r1
            boolean r0 = numberEquals(r0, r1)
            return r0
        L1e:
            boolean r2 = r10 instanceof java.lang.CharSequence
            if (r2 == 0) goto L49
            boolean r2 = r11 instanceof java.lang.CharSequence
            if (r2 != 0) goto L27
            return r1
        L27:
            r2 = r10
            java.lang.CharSequence r2 = (java.lang.CharSequence) r2
            r3 = r11
            java.lang.CharSequence r3 = (java.lang.CharSequence) r3
            int r4 = r2.length()
            int r5 = r3.length()
            if (r4 == r5) goto L38
            return r1
        L38:
            r6 = r4
        L39:
            int r6 = r6 + (-1)
            if (r6 < 0) goto L48
            char r7 = r2.charAt(r6)
            char r8 = r3.charAt(r6)
            if (r7 == r8) goto L39
            return r1
        L48:
            return r0
        L49:
            boolean r2 = r10 instanceof gnu.lists.FVector
            if (r2 == 0) goto L79
            boolean r2 = r11 instanceof gnu.lists.FVector
            if (r2 != 0) goto L52
            return r1
        L52:
            r2 = r10
            gnu.lists.FVector r2 = (gnu.lists.FVector) r2
            r3 = r11
            gnu.lists.FVector r3 = (gnu.lists.FVector) r3
            int r4 = r2.size
            java.lang.Object[] r5 = r3.data
            if (r5 == 0) goto L78
            int r5 = r3.size
            if (r5 == r4) goto L63
            goto L78
        L63:
            java.lang.Object[] r5 = r2.data
            java.lang.Object[] r6 = r3.data
            r7 = r4
        L68:
            int r7 = r7 + (-1)
            if (r7 < 0) goto L77
            r8 = r5[r7]
            r9 = r6[r7]
            boolean r8 = apply(r8, r9)
            if (r8 != 0) goto L68
            return r1
        L77:
            return r0
        L78:
            return r1
        L79:
            boolean r2 = r10 instanceof gnu.lists.LList
            if (r2 == 0) goto Lc2
            boolean r2 = r10 instanceof gnu.lists.Pair
            if (r2 == 0) goto Lc1
            boolean r2 = r11 instanceof gnu.lists.Pair
            if (r2 != 0) goto L86
            goto Lc1
        L86:
            r2 = r10
            gnu.lists.Pair r2 = (gnu.lists.Pair) r2
            r3 = r11
            gnu.lists.Pair r3 = (gnu.lists.Pair) r3
        L8c:
            java.lang.Object r4 = r2.getCar()
            java.lang.Object r5 = r3.getCar()
            boolean r6 = apply(r4, r5)
            if (r6 != 0) goto L9b
            return r1
        L9b:
            java.lang.Object r4 = r2.getCdr()
            java.lang.Object r5 = r3.getCdr()
            if (r4 != r5) goto La6
            return r0
        La6:
            if (r4 == 0) goto Lc0
            if (r5 != 0) goto Lab
            goto Lc0
        Lab:
            boolean r6 = r4 instanceof gnu.lists.Pair
            if (r6 == 0) goto Lbb
            boolean r6 = r5 instanceof gnu.lists.Pair
            if (r6 != 0) goto Lb4
            goto Lbb
        Lb4:
            r2 = r4
            gnu.lists.Pair r2 = (gnu.lists.Pair) r2
            r3 = r5
            gnu.lists.Pair r3 = (gnu.lists.Pair) r3
            goto L8c
        Lbb:
            boolean r0 = apply(r4, r5)
            return r0
        Lc0:
            return r1
        Lc1:
            return r1
        Lc2:
            boolean r0 = r10.equals(r11)
            return r0
        Lc7:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.functions.IsEqual.apply(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // gnu.mapping.Procedure2, gnu.mapping.Procedure
    public Object apply2(Object arg1, Object arg2) {
        return this.language.booleanObject(apply(arg1, arg2));
    }
}
