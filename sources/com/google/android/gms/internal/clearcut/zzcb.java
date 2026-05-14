package com.google.android.gms.internal.clearcut;

import java.lang.reflect.Type;

/* JADX INFO: loaded from: classes2.dex */
public enum zzcb {
    DOUBLE(0, zzcd.SCALAR, zzcq.DOUBLE),
    FLOAT(1, zzcd.SCALAR, zzcq.FLOAT),
    INT64(2, zzcd.SCALAR, zzcq.LONG),
    UINT64(3, zzcd.SCALAR, zzcq.LONG),
    INT32(4, zzcd.SCALAR, zzcq.INT),
    FIXED64(5, zzcd.SCALAR, zzcq.LONG),
    FIXED32(6, zzcd.SCALAR, zzcq.INT),
    BOOL(7, zzcd.SCALAR, zzcq.BOOLEAN),
    STRING(8, zzcd.SCALAR, zzcq.STRING),
    MESSAGE(9, zzcd.SCALAR, zzcq.MESSAGE),
    BYTES(10, zzcd.SCALAR, zzcq.BYTE_STRING),
    UINT32(11, zzcd.SCALAR, zzcq.INT),
    ENUM(12, zzcd.SCALAR, zzcq.ENUM),
    SFIXED32(13, zzcd.SCALAR, zzcq.INT),
    SFIXED64(14, zzcd.SCALAR, zzcq.LONG),
    SINT32(15, zzcd.SCALAR, zzcq.INT),
    SINT64(16, zzcd.SCALAR, zzcq.LONG),
    GROUP(17, zzcd.SCALAR, zzcq.MESSAGE),
    DOUBLE_LIST(18, zzcd.VECTOR, zzcq.DOUBLE),
    FLOAT_LIST(19, zzcd.VECTOR, zzcq.FLOAT),
    INT64_LIST(20, zzcd.VECTOR, zzcq.LONG),
    UINT64_LIST(21, zzcd.VECTOR, zzcq.LONG),
    INT32_LIST(22, zzcd.VECTOR, zzcq.INT),
    FIXED64_LIST(23, zzcd.VECTOR, zzcq.LONG),
    FIXED32_LIST(24, zzcd.VECTOR, zzcq.INT),
    BOOL_LIST(25, zzcd.VECTOR, zzcq.BOOLEAN),
    STRING_LIST(26, zzcd.VECTOR, zzcq.STRING),
    MESSAGE_LIST(27, zzcd.VECTOR, zzcq.MESSAGE),
    BYTES_LIST(28, zzcd.VECTOR, zzcq.BYTE_STRING),
    UINT32_LIST(29, zzcd.VECTOR, zzcq.INT),
    ENUM_LIST(30, zzcd.VECTOR, zzcq.ENUM),
    SFIXED32_LIST(31, zzcd.VECTOR, zzcq.INT),
    SFIXED64_LIST(32, zzcd.VECTOR, zzcq.LONG),
    SINT32_LIST(33, zzcd.VECTOR, zzcq.INT),
    SINT64_LIST(34, zzcd.VECTOR, zzcq.LONG),
    DOUBLE_LIST_PACKED(35, zzcd.PACKED_VECTOR, zzcq.DOUBLE),
    FLOAT_LIST_PACKED(36, zzcd.PACKED_VECTOR, zzcq.FLOAT),
    INT64_LIST_PACKED(37, zzcd.PACKED_VECTOR, zzcq.LONG),
    UINT64_LIST_PACKED(38, zzcd.PACKED_VECTOR, zzcq.LONG),
    INT32_LIST_PACKED(39, zzcd.PACKED_VECTOR, zzcq.INT),
    FIXED64_LIST_PACKED(40, zzcd.PACKED_VECTOR, zzcq.LONG),
    FIXED32_LIST_PACKED(41, zzcd.PACKED_VECTOR, zzcq.INT),
    BOOL_LIST_PACKED(42, zzcd.PACKED_VECTOR, zzcq.BOOLEAN),
    UINT32_LIST_PACKED(43, zzcd.PACKED_VECTOR, zzcq.INT),
    ENUM_LIST_PACKED(44, zzcd.PACKED_VECTOR, zzcq.ENUM),
    SFIXED32_LIST_PACKED(45, zzcd.PACKED_VECTOR, zzcq.INT),
    SFIXED64_LIST_PACKED(46, zzcd.PACKED_VECTOR, zzcq.LONG),
    SINT32_LIST_PACKED(47, zzcd.PACKED_VECTOR, zzcq.INT),
    SINT64_LIST_PACKED(48, zzcd.PACKED_VECTOR, zzcq.LONG),
    GROUP_LIST(49, zzcd.VECTOR, zzcq.MESSAGE),
    MAP(50, zzcd.MAP, zzcq.VOID);

    private static final zzcb[] zzjb;
    private static final Type[] zzjc = new Type[0];
    private final int id;
    private final zzcq zzix;
    private final zzcd zziy;
    private final Class<?> zziz;
    private final boolean zzja;

    static {
        zzcb[] zzcbVarArrValues = values();
        zzjb = new zzcb[zzcbVarArrValues.length];
        for (zzcb zzcbVar : zzcbVarArrValues) {
            zzjb[zzcbVar.id] = zzcbVar;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    zzcb(int r3, com.google.android.gms.internal.clearcut.zzcd r4, com.google.android.gms.internal.clearcut.zzcq r5) {
        /*
            r0 = this;
            r0.<init>(r1, r2)
            r0.id = r3
            r0.zziy = r4
            r0.zzix = r5
            int[] r1 = com.google.android.gms.internal.clearcut.zzcc.zzje
            int r2 = r4.ordinal()
            r1 = r1[r2]
            switch(r1) {
                case 1: goto L16;
                case 2: goto L16;
                default: goto L14;
            }
        L14:
            r1 = 0
            goto L1a
        L16:
            java.lang.Class r1 = r5.zzbq()
        L1a:
            r0.zziz = r1
            com.google.android.gms.internal.clearcut.zzcd r1 = com.google.android.gms.internal.clearcut.zzcd.SCALAR
            if (r4 != r1) goto L2d
            int[] r1 = com.google.android.gms.internal.clearcut.zzcc.zzjf
            int r2 = r5.ordinal()
            r1 = r1[r2]
            switch(r1) {
                case 1: goto L2d;
                case 2: goto L2d;
                case 3: goto L2d;
                default: goto L2b;
            }
        L2b:
            r1 = 1
            goto L2e
        L2d:
            r1 = 0
        L2e:
            r0.zzja = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzcb.<init>(java.lang.String, int, int, com.google.android.gms.internal.clearcut.zzcd, com.google.android.gms.internal.clearcut.zzcq):void");
    }

    public final int id() {
        return this.id;
    }
}
