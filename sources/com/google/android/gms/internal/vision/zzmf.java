package com.google.android.gms.internal.vision;

import com.google.appinventor.components.runtime.util.Ev3Constants;

/* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmf {
    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzd(byte b) {
        return b >= 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zze(byte b) {
        return b < -32;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzf(byte b) {
        return b < -16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(byte b, char[] cArr, int i) {
        cArr[i] = (char) b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(byte b, byte b2, char[] cArr, int i) throws zzjk {
        if (b < -62 || zzg(b2)) {
            throw zzjk.zzh();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & Ev3Constants.Opcode.MOVEF_F));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(byte b, byte b2, byte b3, char[] cArr, int i) throws zzjk {
        if (zzg(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || zzg(b3)))) {
            throw zzjk.zzh();
        }
        cArr[i] = (char) (((b & 15) << 12) | ((b2 & Ev3Constants.Opcode.MOVEF_F) << 6) | (b3 & Ev3Constants.Opcode.MOVEF_F));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws zzjk {
        if (zzg(b2) || (((b << 28) + (b2 + Ev3Constants.Opcode.JR_NEQ8)) >> 30) != 0 || zzg(b3) || zzg(b4)) {
            throw zzjk.zzh();
        }
        int i2 = ((b & 7) << 18) | ((b2 & Ev3Constants.Opcode.MOVEF_F) << 12) | ((b3 & Ev3Constants.Opcode.MOVEF_F) << 6) | (b4 & Ev3Constants.Opcode.MOVEF_F);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    private static boolean zzg(byte b) {
        return b > -65;
    }
}
