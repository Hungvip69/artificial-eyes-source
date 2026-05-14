package kawa.standard;

/* JADX INFO: loaded from: classes.dex */
public class read_line {
    /* JADX WARN: Removed duplicated region for block: B:36:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00c6 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object apply(gnu.text.LineBufferedReader r16, java.lang.String r17) throws java.io.IOException {
        /*
            r0 = r16
            r1 = r17
            int r2 = r16.read()
            if (r2 >= 0) goto Ld
            java.lang.Object r3 = gnu.expr.Special.eof
            return r3
        Ld:
            int r3 = r0.pos
            r4 = 1
            int r3 = r3 - r4
            r5 = r3
            int r6 = r0.limit
            char[] r7 = r0.buffer
            r8 = -1
        L17:
            java.lang.String r9 = "concat"
            java.lang.String r10 = "peek"
            r11 = 13
            r12 = 2
            r13 = 10
            if (r5 >= r6) goto L5f
            int r14 = r5 + 1
            char r2 = r7[r5]
            if (r2 == r11) goto L2d
            if (r2 != r13) goto L2b
            goto L2d
        L2b:
            r5 = r14
            goto L17
        L2d:
            int r5 = r14 + (-1)
            java.lang.String r14 = "trim"
            if (r1 == r14) goto L3f
            if (r1 != r10) goto L36
            goto L3f
        L36:
            if (r1 != r9) goto L5f
            if (r2 != r13) goto L5f
            int r5 = r5 + 1
            r0.pos = r5
            goto L57
        L3f:
            if (r1 != r10) goto L42
            r8 = 0
        L42:
            if (r2 != r13) goto L47
            r4 = 1
            r8 = r4
            goto L53
        L47:
            int r14 = r5 + 1
            if (r14 >= r6) goto L5f
            int r9 = r5 + 1
            char r9 = r7[r9]
            if (r9 != r13) goto L52
            r4 = 2
        L52:
            r8 = r4
        L53:
            int r4 = r5 + r8
            r0.pos = r4
        L57:
            gnu.lists.FString r4 = new gnu.lists.FString
            int r9 = r5 - r3
            r4.<init>(r7, r3, r9)
            return r4
        L5f:
            java.lang.StringBuffer r14 = new java.lang.StringBuffer
            r15 = 100
            r14.<init>(r15)
            if (r5 <= r3) goto L6d
            int r15 = r5 - r3
            r14.append(r7, r3, r15)
        L6d:
            r0.pos = r5
            java.lang.String r15 = "split"
            if (r1 != r10) goto L76
            r9 = 80
            goto L80
        L76:
            if (r1 == r9) goto L7e
            if (r1 != r15) goto L7b
            goto L7e
        L7b:
            r9 = 73
            goto L80
        L7e:
            r9 = 65
        L80:
            r0.readLine(r14, r9)
            int r10 = r14.length()
            if (r1 != r15) goto La9
            if (r10 != 0) goto L8d
            r8 = 0
            goto La9
        L8d:
            int r4 = r10 + (-1)
            char r4 = r14.charAt(r4)
            if (r4 != r11) goto L97
            r8 = 1
            goto La8
        L97:
            if (r4 == r13) goto L9b
            r8 = 0
            goto La8
        L9b:
            if (r4 <= r12) goto La7
            int r13 = r10 + (-2)
            char r13 = r14.charAt(r13)
            if (r13 != r11) goto La7
            r8 = 2
            goto La8
        La7:
            r8 = 1
        La8:
            int r10 = r10 - r8
        La9:
            gnu.lists.FString r4 = new gnu.lists.FString
            r11 = 0
            r4.<init>(r14, r11, r10)
            if (r1 != r15) goto Lc6
            gnu.lists.FString r13 = new gnu.lists.FString
            int r15 = r10 - r8
            r13.<init>(r14, r15, r8)
            java.lang.Object[] r12 = new java.lang.Object[r12]
            r12[r11] = r4
            r11 = 1
            r12[r11] = r13
            r11 = r12
            gnu.mapping.Values r12 = new gnu.mapping.Values
            r12.<init>(r11)
            return r12
        Lc6:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.standard.read_line.apply(gnu.text.LineBufferedReader, java.lang.String):java.lang.Object");
    }
}
