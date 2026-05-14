package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzcc {
    static final /* synthetic */ int[] zzje;
    static final /* synthetic */ int[] zzjf = new int[zzcq.values().length];

    static {
        try {
            zzjf[zzcq.BYTE_STRING.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            zzjf[zzcq.MESSAGE.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            zzjf[zzcq.STRING.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        zzje = new int[zzcd.values().length];
        try {
            zzje[zzcd.MAP.ordinal()] = 1;
        } catch (NoSuchFieldError e4) {
        }
        try {
            zzje[zzcd.VECTOR.ordinal()] = 2;
        } catch (NoSuchFieldError e5) {
        }
        try {
            zzje[zzcd.SCALAR.ordinal()] = 3;
        } catch (NoSuchFieldError e6) {
        }
    }
}
