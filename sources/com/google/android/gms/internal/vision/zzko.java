package com.google.android.gms.internal.vision;

import gnu.expr.Declaration;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
/* JADX INFO: loaded from: classes2.dex */
final class zzko<T> implements zzlc<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzma.zzc();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzkk zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final boolean zzk;
    private final int[] zzl;
    private final int zzm;
    private final int zzn;
    private final zzks zzo;
    private final zzju zzp;
    private final zzlu<?, ?> zzq;
    private final zziq<?> zzr;
    private final zzkh zzs;

    private zzko(int[] iArr, Object[] objArr, int i, int i2, zzkk zzkkVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzks zzksVar, zzju zzjuVar, zzlu<?, ?> zzluVar, zziq<?> zziqVar, zzkh zzkhVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzkkVar instanceof zzjb;
        this.zzj = z;
        this.zzh = zziqVar != null && zziqVar.zza(zzkkVar);
        this.zzk = false;
        this.zzl = iArr2;
        this.zzm = i3;
        this.zzn = i4;
        this.zzo = zzksVar;
        this.zzp = zzjuVar;
        this.zzq = zzluVar;
        this.zzr = zziqVar;
        this.zzg = zzkkVar;
        this.zzs = zzkhVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:181:0x03b0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static <T> com.google.android.gms.internal.vision.zzko<T> zza(java.lang.Class<T> r33, com.google.android.gms.internal.vision.zzki r34, com.google.android.gms.internal.vision.zzks r35, com.google.android.gms.internal.vision.zzju r36, com.google.android.gms.internal.vision.zzlu<?, ?> r37, com.google.android.gms.internal.vision.zziq<?> r38, com.google.android.gms.internal.vision.zzkh r39) {
        /*
            Method dump skipped, instruction units count: 1074
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzko.zza(java.lang.Class, com.google.android.gms.internal.vision.zzki, com.google.android.gms.internal.vision.zzks, com.google.android.gms.internal.vision.zzju, com.google.android.gms.internal.vision.zzlu, com.google.android.gms.internal.vision.zziq, com.google.android.gms.internal.vision.zzkh):com.google.android.gms.internal.vision.zzko");
    }

    private static Field zza(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            throw new RuntimeException(new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(string).length()).append("Field ").append(str).append(" for ").append(name).append(" not found. Known fields are ").append(string).toString());
        }
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final T zza() {
        return (T) this.zzo.zza(this.zzg);
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final boolean zza(T t, T t2) {
        int length = this.zzc.length;
        int i = 0;
        while (true) {
            boolean zZza = true;
            if (i < length) {
                int iZzd = zzd(i);
                long j = iZzd & 1048575;
                switch ((iZzd & 267386880) >>> 20) {
                    case 0:
                        if (!zzc(t, t2, i) || Double.doubleToLongBits(zzma.zze(t, j)) != Double.doubleToLongBits(zzma.zze(t2, j))) {
                            zZza = false;
                        }
                        break;
                    case 1:
                        if (!zzc(t, t2, i) || Float.floatToIntBits(zzma.zzd(t, j)) != Float.floatToIntBits(zzma.zzd(t2, j))) {
                            zZza = false;
                        }
                        break;
                    case 2:
                        if (!zzc(t, t2, i) || zzma.zzb(t, j) != zzma.zzb(t2, j)) {
                            zZza = false;
                        }
                        break;
                    case 3:
                        if (!zzc(t, t2, i) || zzma.zzb(t, j) != zzma.zzb(t2, j)) {
                            zZza = false;
                        }
                        break;
                    case 4:
                        if (!zzc(t, t2, i) || zzma.zza(t, j) != zzma.zza(t2, j)) {
                            zZza = false;
                        }
                        break;
                    case 5:
                        if (!zzc(t, t2, i) || zzma.zzb(t, j) != zzma.zzb(t2, j)) {
                            zZza = false;
                        }
                        break;
                    case 6:
                        if (!zzc(t, t2, i) || zzma.zza(t, j) != zzma.zza(t2, j)) {
                            zZza = false;
                        }
                        break;
                    case 7:
                        if (!zzc(t, t2, i) || zzma.zzc(t, j) != zzma.zzc(t2, j)) {
                            zZza = false;
                        }
                        break;
                    case 8:
                        if (!zzc(t, t2, i) || !zzle.zza(zzma.zzf(t, j), zzma.zzf(t2, j))) {
                            zZza = false;
                        }
                        break;
                    case 9:
                        if (!zzc(t, t2, i) || !zzle.zza(zzma.zzf(t, j), zzma.zzf(t2, j))) {
                            zZza = false;
                        }
                        break;
                    case 10:
                        if (!zzc(t, t2, i) || !zzle.zza(zzma.zzf(t, j), zzma.zzf(t2, j))) {
                            zZza = false;
                        }
                        break;
                    case 11:
                        if (!zzc(t, t2, i) || zzma.zza(t, j) != zzma.zza(t2, j)) {
                            zZza = false;
                        }
                        break;
                    case 12:
                        if (!zzc(t, t2, i) || zzma.zza(t, j) != zzma.zza(t2, j)) {
                            zZza = false;
                        }
                        break;
                    case 13:
                        if (!zzc(t, t2, i) || zzma.zza(t, j) != zzma.zza(t2, j)) {
                            zZza = false;
                        }
                        break;
                    case 14:
                        if (!zzc(t, t2, i) || zzma.zzb(t, j) != zzma.zzb(t2, j)) {
                            zZza = false;
                        }
                        break;
                    case 15:
                        if (!zzc(t, t2, i) || zzma.zza(t, j) != zzma.zza(t2, j)) {
                            zZza = false;
                        }
                        break;
                    case 16:
                        if (!zzc(t, t2, i) || zzma.zzb(t, j) != zzma.zzb(t2, j)) {
                            zZza = false;
                        }
                        break;
                    case 17:
                        if (!zzc(t, t2, i) || !zzle.zza(zzma.zzf(t, j), zzma.zzf(t2, j))) {
                            zZza = false;
                        }
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        zZza = zzle.zza(zzma.zzf(t, j), zzma.zzf(t2, j));
                        break;
                    case 50:
                        zZza = zzle.zza(zzma.zzf(t, j), zzma.zzf(t2, j));
                        break;
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                    case 60:
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                    case 68:
                        long jZze = zze(i) & 1048575;
                        if (zzma.zza(t, jZze) != zzma.zza(t2, jZze) || !zzle.zza(zzma.zzf(t, j), zzma.zzf(t2, j))) {
                            zZza = false;
                        }
                        break;
                }
                if (!zZza) {
                    return false;
                }
                i += 3;
            } else {
                if (!this.zzq.zzb(t).equals(this.zzq.zzb(t2))) {
                    return false;
                }
                if (this.zzh) {
                    return this.zzr.zza(t).equals(this.zzr.zza(t2));
                }
                return true;
            }
        }
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final int zza(T t) {
        int length = this.zzc.length;
        int iZza = 0;
        for (int i = 0; i < length; i += 3) {
            int iZzd = zzd(i);
            int i2 = this.zzc[i];
            long j = 1048575 & iZzd;
            int iHashCode = 37;
            switch ((iZzd & 267386880) >>> 20) {
                case 0:
                    iZza = (iZza * 53) + zzjf.zza(Double.doubleToLongBits(zzma.zze(t, j)));
                    break;
                case 1:
                    iZza = (iZza * 53) + Float.floatToIntBits(zzma.zzd(t, j));
                    break;
                case 2:
                    iZza = (iZza * 53) + zzjf.zza(zzma.zzb(t, j));
                    break;
                case 3:
                    iZza = (iZza * 53) + zzjf.zza(zzma.zzb(t, j));
                    break;
                case 4:
                    iZza = (iZza * 53) + zzma.zza(t, j);
                    break;
                case 5:
                    iZza = (iZza * 53) + zzjf.zza(zzma.zzb(t, j));
                    break;
                case 6:
                    iZza = (iZza * 53) + zzma.zza(t, j);
                    break;
                case 7:
                    iZza = (iZza * 53) + zzjf.zza(zzma.zzc(t, j));
                    break;
                case 8:
                    iZza = (iZza * 53) + ((String) zzma.zzf(t, j)).hashCode();
                    break;
                case 9:
                    Object objZzf = zzma.zzf(t, j);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    iZza = (iZza * 53) + iHashCode;
                    break;
                case 10:
                    iZza = (iZza * 53) + zzma.zzf(t, j).hashCode();
                    break;
                case 11:
                    iZza = (iZza * 53) + zzma.zza(t, j);
                    break;
                case 12:
                    iZza = (iZza * 53) + zzma.zza(t, j);
                    break;
                case 13:
                    iZza = (iZza * 53) + zzma.zza(t, j);
                    break;
                case 14:
                    iZza = (iZza * 53) + zzjf.zza(zzma.zzb(t, j));
                    break;
                case 15:
                    iZza = (iZza * 53) + zzma.zza(t, j);
                    break;
                case 16:
                    iZza = (iZza * 53) + zzjf.zza(zzma.zzb(t, j));
                    break;
                case 17:
                    Object objZzf2 = zzma.zzf(t, j);
                    if (objZzf2 != null) {
                        iHashCode = objZzf2.hashCode();
                    }
                    iZza = (iZza * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    iZza = (iZza * 53) + zzma.zzf(t, j).hashCode();
                    break;
                case 50:
                    iZza = (iZza * 53) + zzma.zzf(t, j).hashCode();
                    break;
                case 51:
                    if (zza(t, i2, i)) {
                        iZza = (iZza * 53) + zzjf.zza(Double.doubleToLongBits(zzb(t, j)));
                    }
                    break;
                case 52:
                    if (zza(t, i2, i)) {
                        iZza = (iZza * 53) + Float.floatToIntBits(zzc(t, j));
                    }
                    break;
                case 53:
                    if (zza(t, i2, i)) {
                        iZza = (iZza * 53) + zzjf.zza(zze(t, j));
                    }
                    break;
                case 54:
                    if (zza(t, i2, i)) {
                        iZza = (iZza * 53) + zzjf.zza(zze(t, j));
                    }
                    break;
                case 55:
                    if (zza(t, i2, i)) {
                        iZza = (iZza * 53) + zzd(t, j);
                    }
                    break;
                case 56:
                    if (zza(t, i2, i)) {
                        iZza = (iZza * 53) + zzjf.zza(zze(t, j));
                    }
                    break;
                case 57:
                    if (zza(t, i2, i)) {
                        iZza = (iZza * 53) + zzd(t, j);
                    }
                    break;
                case 58:
                    if (zza(t, i2, i)) {
                        iZza = (iZza * 53) + zzjf.zza(zzf(t, j));
                    }
                    break;
                case 59:
                    if (zza(t, i2, i)) {
                        iZza = (iZza * 53) + ((String) zzma.zzf(t, j)).hashCode();
                    }
                    break;
                case 60:
                    if (zza(t, i2, i)) {
                        iZza = (iZza * 53) + zzma.zzf(t, j).hashCode();
                    }
                    break;
                case 61:
                    if (zza(t, i2, i)) {
                        iZza = (iZza * 53) + zzma.zzf(t, j).hashCode();
                    }
                    break;
                case 62:
                    if (zza(t, i2, i)) {
                        iZza = (iZza * 53) + zzd(t, j);
                    }
                    break;
                case 63:
                    if (zza(t, i2, i)) {
                        iZza = (iZza * 53) + zzd(t, j);
                    }
                    break;
                case 64:
                    if (zza(t, i2, i)) {
                        iZza = (iZza * 53) + zzd(t, j);
                    }
                    break;
                case 65:
                    if (zza(t, i2, i)) {
                        iZza = (iZza * 53) + zzjf.zza(zze(t, j));
                    }
                    break;
                case 66:
                    if (zza(t, i2, i)) {
                        iZza = (iZza * 53) + zzd(t, j);
                    }
                    break;
                case 67:
                    if (zza(t, i2, i)) {
                        iZza = (iZza * 53) + zzjf.zza(zze(t, j));
                    }
                    break;
                case 68:
                    if (zza(t, i2, i)) {
                        iZza = (iZza * 53) + zzma.zzf(t, j).hashCode();
                    }
                    break;
            }
        }
        int iHashCode2 = (iZza * 53) + this.zzq.zzb(t).hashCode();
        if (this.zzh) {
            return (iHashCode2 * 53) + this.zzr.zza(t).hashCode();
        }
        return iHashCode2;
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final void zzb(T t, T t2) {
        if (t2 == null) {
            throw new NullPointerException();
        }
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzd = zzd(i);
            long j = 1048575 & iZzd;
            int i2 = this.zzc[i];
            switch ((iZzd & 267386880) >>> 20) {
                case 0:
                    if (zza((Object) t2, i)) {
                        zzma.zza(t, j, zzma.zze(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 1:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zzd(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 2:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zzb(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 3:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zzb(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 4:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zza(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 5:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zzb(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 6:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zza(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 7:
                    if (zza((Object) t2, i)) {
                        zzma.zza(t, j, zzma.zzc(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 8:
                    if (zza((Object) t2, i)) {
                        zzma.zza(t, j, zzma.zzf(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 9:
                    zza(t, t2, i);
                    break;
                case 10:
                    if (zza((Object) t2, i)) {
                        zzma.zza(t, j, zzma.zzf(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 11:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zza(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 12:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zza(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 13:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zza(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 14:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zzb(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 15:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zza(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 16:
                    if (zza((Object) t2, i)) {
                        zzma.zza((Object) t, j, zzma.zzb(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 17:
                    zza(t, t2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzp.zza(t, t2, j);
                    break;
                case 50:
                    zzle.zza(this.zzs, t, t2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zza(t2, i2, i)) {
                        zzma.zza(t, j, zzma.zzf(t2, j));
                        zzb(t, i2, i);
                    }
                    break;
                case 60:
                    zzb(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zza(t2, i2, i)) {
                        zzma.zza(t, j, zzma.zzf(t2, j));
                        zzb(t, i2, i);
                    }
                    break;
                case 68:
                    zzb(t, t2, i);
                    break;
            }
        }
        zzle.zza(this.zzq, t, t2);
        if (this.zzh) {
            zzle.zza(this.zzr, t, t2);
        }
    }

    private final void zza(T t, T t2, int i) {
        long jZzd = zzd(i) & 1048575;
        if (!zza((Object) t2, i)) {
            return;
        }
        Object objZzf = zzma.zzf(t, jZzd);
        Object objZzf2 = zzma.zzf(t2, jZzd);
        if (objZzf != null && objZzf2 != null) {
            zzma.zza(t, jZzd, zzjf.zza(objZzf, objZzf2));
            zzb((Object) t, i);
        } else if (objZzf2 != null) {
            zzma.zza(t, jZzd, objZzf2);
            zzb((Object) t, i);
        }
    }

    private final void zzb(T t, T t2, int i) {
        Object objZzf;
        int iZzd = zzd(i);
        int i2 = this.zzc[i];
        long j = iZzd & 1048575;
        if (!zza(t2, i2, i)) {
            return;
        }
        if (!zza(t, i2, i)) {
            objZzf = null;
        } else {
            objZzf = zzma.zzf(t, j);
        }
        Object objZzf2 = zzma.zzf(t2, j);
        if (objZzf != null && objZzf2 != null) {
            zzma.zza(t, j, zzjf.zza(objZzf, objZzf2));
            zzb(t, i2, i);
        } else if (objZzf2 != null) {
            zzma.zza(t, j, objZzf2);
            zzb(t, i2, i);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.vision.zzlc
    public final int zzb(T t) {
        int i;
        long j;
        int i2 = 267386880;
        int i3 = 1048575;
        int i4 = 1;
        int i5 = 0;
        if (this.zzj) {
            Unsafe unsafe = zzb;
            int i6 = 0;
            int iZzb = 0;
            while (i6 < this.zzc.length) {
                int iZzd = zzd(i6);
                int i7 = (iZzd & i2) >>> 20;
                int i8 = this.zzc[i6];
                long j2 = iZzd & 1048575;
                if (i7 >= zziv.DOUBLE_LIST_PACKED.zza() && i7 <= zziv.SINT64_LIST_PACKED.zza()) {
                    int i9 = this.zzc[i6 + 2];
                }
                switch (i7) {
                    case 0:
                        if (zza((Object) t, i6)) {
                            iZzb += zzii.zzb(i8, 0.0d);
                        }
                        break;
                    case 1:
                        if (zza((Object) t, i6)) {
                            iZzb += zzii.zzb(i8, 0.0f);
                        }
                        break;
                    case 2:
                        if (zza((Object) t, i6)) {
                            iZzb += zzii.zzd(i8, zzma.zzb(t, j2));
                        }
                        break;
                    case 3:
                        if (zza((Object) t, i6)) {
                            iZzb += zzii.zze(i8, zzma.zzb(t, j2));
                        }
                        break;
                    case 4:
                        if (zza((Object) t, i6)) {
                            iZzb += zzii.zzf(i8, zzma.zza(t, j2));
                        }
                        break;
                    case 5:
                        if (zza((Object) t, i6)) {
                            iZzb += zzii.zzg(i8, 0L);
                        }
                        break;
                    case 6:
                        if (zza((Object) t, i6)) {
                            iZzb += zzii.zzi(i8, 0);
                        }
                        break;
                    case 7:
                        if (zza((Object) t, i6)) {
                            iZzb += zzii.zzb(i8, true);
                        }
                        break;
                    case 8:
                        if (zza((Object) t, i6)) {
                            Object objZzf = zzma.zzf(t, j2);
                            if (objZzf instanceof zzht) {
                                iZzb += zzii.zzc(i8, (zzht) objZzf);
                            } else {
                                iZzb += zzii.zzb(i8, (String) objZzf);
                            }
                        }
                        break;
                    case 9:
                        if (zza((Object) t, i6)) {
                            iZzb += zzle.zza(i8, zzma.zzf(t, j2), zza(i6));
                        }
                        break;
                    case 10:
                        if (zza((Object) t, i6)) {
                            iZzb += zzii.zzc(i8, (zzht) zzma.zzf(t, j2));
                        }
                        break;
                    case 11:
                        if (zza((Object) t, i6)) {
                            iZzb += zzii.zzg(i8, zzma.zza(t, j2));
                        }
                        break;
                    case 12:
                        if (zza((Object) t, i6)) {
                            iZzb += zzii.zzk(i8, zzma.zza(t, j2));
                        }
                        break;
                    case 13:
                        if (zza((Object) t, i6)) {
                            iZzb += zzii.zzj(i8, 0);
                        }
                        break;
                    case 14:
                        if (zza((Object) t, i6)) {
                            iZzb += zzii.zzh(i8, 0L);
                        }
                        break;
                    case 15:
                        if (zza((Object) t, i6)) {
                            iZzb += zzii.zzh(i8, zzma.zza(t, j2));
                        }
                        break;
                    case 16:
                        if (zza((Object) t, i6)) {
                            iZzb += zzii.zzf(i8, zzma.zzb(t, j2));
                        }
                        break;
                    case 17:
                        if (zza((Object) t, i6)) {
                            iZzb += zzii.zzc(i8, (zzkk) zzma.zzf(t, j2), zza(i6));
                        }
                        break;
                    case 18:
                        iZzb += zzle.zzi(i8, zza(t, j2), false);
                        break;
                    case 19:
                        iZzb += zzle.zzh(i8, zza(t, j2), false);
                        break;
                    case 20:
                        iZzb += zzle.zza(i8, (List<Long>) zza(t, j2), false);
                        break;
                    case 21:
                        iZzb += zzle.zzb(i8, (List<Long>) zza(t, j2), false);
                        break;
                    case 22:
                        iZzb += zzle.zze(i8, zza(t, j2), false);
                        break;
                    case 23:
                        iZzb += zzle.zzi(i8, zza(t, j2), false);
                        break;
                    case 24:
                        iZzb += zzle.zzh(i8, zza(t, j2), false);
                        break;
                    case 25:
                        iZzb += zzle.zzj(i8, zza(t, j2), false);
                        break;
                    case 26:
                        iZzb += zzle.zza(i8, zza(t, j2));
                        break;
                    case 27:
                        iZzb += zzle.zza(i8, zza(t, j2), zza(i6));
                        break;
                    case 28:
                        iZzb += zzle.zzb(i8, zza(t, j2));
                        break;
                    case 29:
                        iZzb += zzle.zzf(i8, zza(t, j2), false);
                        break;
                    case 30:
                        iZzb += zzle.zzd(i8, zza(t, j2), false);
                        break;
                    case 31:
                        iZzb += zzle.zzh(i8, zza(t, j2), false);
                        break;
                    case 32:
                        iZzb += zzle.zzi(i8, zza(t, j2), false);
                        break;
                    case 33:
                        iZzb += zzle.zzg(i8, zza(t, j2), false);
                        break;
                    case 34:
                        iZzb += zzle.zzc(i8, zza(t, j2), false);
                        break;
                    case 35:
                        int iZzi = zzle.zzi((List) unsafe.getObject(t, j2));
                        if (iZzi > 0) {
                            iZzb += zzii.zze(i8) + zzii.zzg(iZzi) + iZzi;
                        }
                        break;
                    case 36:
                        int iZzh = zzle.zzh((List) unsafe.getObject(t, j2));
                        if (iZzh > 0) {
                            iZzb += zzii.zze(i8) + zzii.zzg(iZzh) + iZzh;
                        }
                        break;
                    case 37:
                        int iZza = zzle.zza((List<Long>) unsafe.getObject(t, j2));
                        if (iZza > 0) {
                            iZzb += zzii.zze(i8) + zzii.zzg(iZza) + iZza;
                        }
                        break;
                    case 38:
                        int iZzb2 = zzle.zzb((List) unsafe.getObject(t, j2));
                        if (iZzb2 > 0) {
                            iZzb += zzii.zze(i8) + zzii.zzg(iZzb2) + iZzb2;
                        }
                        break;
                    case 39:
                        int iZze = zzle.zze((List) unsafe.getObject(t, j2));
                        if (iZze > 0) {
                            iZzb += zzii.zze(i8) + zzii.zzg(iZze) + iZze;
                        }
                        break;
                    case 40:
                        int iZzi2 = zzle.zzi((List) unsafe.getObject(t, j2));
                        if (iZzi2 > 0) {
                            iZzb += zzii.zze(i8) + zzii.zzg(iZzi2) + iZzi2;
                        }
                        break;
                    case 41:
                        int iZzh2 = zzle.zzh((List) unsafe.getObject(t, j2));
                        if (iZzh2 > 0) {
                            iZzb += zzii.zze(i8) + zzii.zzg(iZzh2) + iZzh2;
                        }
                        break;
                    case 42:
                        int iZzj = zzle.zzj((List) unsafe.getObject(t, j2));
                        if (iZzj > 0) {
                            iZzb += zzii.zze(i8) + zzii.zzg(iZzj) + iZzj;
                        }
                        break;
                    case 43:
                        int iZzf = zzle.zzf((List) unsafe.getObject(t, j2));
                        if (iZzf > 0) {
                            iZzb += zzii.zze(i8) + zzii.zzg(iZzf) + iZzf;
                        }
                        break;
                    case 44:
                        int iZzd2 = zzle.zzd((List) unsafe.getObject(t, j2));
                        if (iZzd2 > 0) {
                            iZzb += zzii.zze(i8) + zzii.zzg(iZzd2) + iZzd2;
                        }
                        break;
                    case 45:
                        int iZzh3 = zzle.zzh((List) unsafe.getObject(t, j2));
                        if (iZzh3 > 0) {
                            iZzb += zzii.zze(i8) + zzii.zzg(iZzh3) + iZzh3;
                        }
                        break;
                    case 46:
                        int iZzi3 = zzle.zzi((List) unsafe.getObject(t, j2));
                        if (iZzi3 > 0) {
                            iZzb += zzii.zze(i8) + zzii.zzg(iZzi3) + iZzi3;
                        }
                        break;
                    case 47:
                        int iZzg = zzle.zzg((List) unsafe.getObject(t, j2));
                        if (iZzg > 0) {
                            iZzb += zzii.zze(i8) + zzii.zzg(iZzg) + iZzg;
                        }
                        break;
                    case 48:
                        int iZzc = zzle.zzc((List) unsafe.getObject(t, j2));
                        if (iZzc > 0) {
                            iZzb += zzii.zze(i8) + zzii.zzg(iZzc) + iZzc;
                        }
                        break;
                    case 49:
                        iZzb += zzle.zzb(i8, (List<zzkk>) zza(t, j2), zza(i6));
                        break;
                    case 50:
                        iZzb += this.zzs.zza(i8, zzma.zzf(t, j2), zzb(i6));
                        break;
                    case 51:
                        if (zza(t, i8, i6)) {
                            iZzb += zzii.zzb(i8, 0.0d);
                        }
                        break;
                    case 52:
                        if (zza(t, i8, i6)) {
                            iZzb += zzii.zzb(i8, 0.0f);
                        }
                        break;
                    case 53:
                        if (zza(t, i8, i6)) {
                            iZzb += zzii.zzd(i8, zze(t, j2));
                        }
                        break;
                    case 54:
                        if (zza(t, i8, i6)) {
                            iZzb += zzii.zze(i8, zze(t, j2));
                        }
                        break;
                    case 55:
                        if (zza(t, i8, i6)) {
                            iZzb += zzii.zzf(i8, zzd(t, j2));
                        }
                        break;
                    case 56:
                        if (zza(t, i8, i6)) {
                            iZzb += zzii.zzg(i8, 0L);
                        }
                        break;
                    case 57:
                        if (zza(t, i8, i6)) {
                            iZzb += zzii.zzi(i8, 0);
                        }
                        break;
                    case 58:
                        if (zza(t, i8, i6)) {
                            iZzb += zzii.zzb(i8, true);
                        }
                        break;
                    case 59:
                        if (zza(t, i8, i6)) {
                            Object objZzf2 = zzma.zzf(t, j2);
                            if (objZzf2 instanceof zzht) {
                                iZzb += zzii.zzc(i8, (zzht) objZzf2);
                            } else {
                                iZzb += zzii.zzb(i8, (String) objZzf2);
                            }
                        }
                        break;
                    case 60:
                        if (zza(t, i8, i6)) {
                            iZzb += zzle.zza(i8, zzma.zzf(t, j2), zza(i6));
                        }
                        break;
                    case 61:
                        if (zza(t, i8, i6)) {
                            iZzb += zzii.zzc(i8, (zzht) zzma.zzf(t, j2));
                        }
                        break;
                    case 62:
                        if (zza(t, i8, i6)) {
                            iZzb += zzii.zzg(i8, zzd(t, j2));
                        }
                        break;
                    case 63:
                        if (zza(t, i8, i6)) {
                            iZzb += zzii.zzk(i8, zzd(t, j2));
                        }
                        break;
                    case 64:
                        if (zza(t, i8, i6)) {
                            iZzb += zzii.zzj(i8, 0);
                        }
                        break;
                    case 65:
                        if (zza(t, i8, i6)) {
                            iZzb += zzii.zzh(i8, 0L);
                        }
                        break;
                    case 66:
                        if (zza(t, i8, i6)) {
                            iZzb += zzii.zzh(i8, zzd(t, j2));
                        }
                        break;
                    case 67:
                        if (zza(t, i8, i6)) {
                            iZzb += zzii.zzf(i8, zze(t, j2));
                        }
                        break;
                    case 68:
                        if (zza(t, i8, i6)) {
                            iZzb += zzii.zzc(i8, (zzkk) zzma.zzf(t, j2), zza(i6));
                        }
                        break;
                }
                i6 += 3;
                i2 = 267386880;
            }
            return iZzb + zza((zzlu) this.zzq, (Object) t);
        }
        Unsafe unsafe2 = zzb;
        int i10 = 0;
        int iZzb3 = 0;
        int i11 = 1048575;
        int i12 = 0;
        while (i10 < this.zzc.length) {
            int iZzd3 = zzd(i10);
            int i13 = this.zzc[i10];
            int i14 = (iZzd3 & 267386880) >>> 20;
            if (i14 > 17) {
                i = 0;
            } else {
                int i15 = this.zzc[i10 + 2];
                int i16 = i15 & i3;
                i = i4 << (i15 >>> 20);
                if (i16 != i11) {
                    i12 = unsafe2.getInt(t, i16);
                    i11 = i16;
                }
            }
            long j3 = iZzd3 & i3;
            switch (i14) {
                case 0:
                    i5 = 0;
                    j = 0;
                    if ((i & i12) != 0) {
                        iZzb3 += zzii.zzb(i13, 0.0d);
                    }
                    break;
                case 1:
                    i5 = 0;
                    j = 0;
                    if ((i & i12) != 0) {
                        iZzb3 += zzii.zzb(i13, 0.0f);
                    }
                    break;
                case 2:
                    i5 = 0;
                    j = 0;
                    if ((i & i12) != 0) {
                        iZzb3 += zzii.zzd(i13, unsafe2.getLong(t, j3));
                    }
                    break;
                case 3:
                    i5 = 0;
                    j = 0;
                    if ((i & i12) != 0) {
                        iZzb3 += zzii.zze(i13, unsafe2.getLong(t, j3));
                    }
                    break;
                case 4:
                    i5 = 0;
                    j = 0;
                    if ((i & i12) != 0) {
                        iZzb3 += zzii.zzf(i13, unsafe2.getInt(t, j3));
                    }
                    break;
                case 5:
                    i5 = 0;
                    if ((i & i12) == 0) {
                        j = 0;
                    } else {
                        iZzb3 += zzii.zzg(i13, 0L);
                        j = 0;
                    }
                    break;
                case 6:
                    if ((i & i12) == 0) {
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        iZzb3 += zzii.zzi(i13, 0);
                        j = 0;
                    }
                    break;
                case 7:
                    if ((i & i12) != 0) {
                        iZzb3 += zzii.zzb(i13, true);
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 8:
                    if ((i & i12) != 0) {
                        Object object = unsafe2.getObject(t, j3);
                        if (object instanceof zzht) {
                            iZzb3 += zzii.zzc(i13, (zzht) object);
                            i5 = 0;
                            j = 0;
                        } else {
                            iZzb3 += zzii.zzb(i13, (String) object);
                            i5 = 0;
                            j = 0;
                        }
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 9:
                    if ((i & i12) != 0) {
                        iZzb3 += zzle.zza(i13, unsafe2.getObject(t, j3), zza(i10));
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 10:
                    if ((i & i12) != 0) {
                        iZzb3 += zzii.zzc(i13, (zzht) unsafe2.getObject(t, j3));
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 11:
                    if ((i & i12) != 0) {
                        iZzb3 += zzii.zzg(i13, unsafe2.getInt(t, j3));
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 12:
                    if ((i & i12) != 0) {
                        iZzb3 += zzii.zzk(i13, unsafe2.getInt(t, j3));
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 13:
                    if ((i & i12) != 0) {
                        iZzb3 += zzii.zzj(i13, 0);
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 14:
                    if ((i & i12) != 0) {
                        iZzb3 += zzii.zzh(i13, 0L);
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 15:
                    if ((i & i12) != 0) {
                        iZzb3 += zzii.zzh(i13, unsafe2.getInt(t, j3));
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 16:
                    if ((i & i12) != 0) {
                        iZzb3 += zzii.zzf(i13, unsafe2.getLong(t, j3));
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 17:
                    if ((i & i12) != 0) {
                        iZzb3 += zzii.zzc(i13, (zzkk) unsafe2.getObject(t, j3), zza(i10));
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 18:
                    iZzb3 += zzle.zzi(i13, (List) unsafe2.getObject(t, j3), false);
                    i5 = 0;
                    j = 0;
                    break;
                case 19:
                    iZzb3 += zzle.zzh(i13, (List) unsafe2.getObject(t, j3), false);
                    i5 = 0;
                    j = 0;
                    break;
                case 20:
                    iZzb3 += zzle.zza(i13, (List<Long>) unsafe2.getObject(t, j3), false);
                    i5 = 0;
                    j = 0;
                    break;
                case 21:
                    iZzb3 += zzle.zzb(i13, (List<Long>) unsafe2.getObject(t, j3), false);
                    i5 = 0;
                    j = 0;
                    break;
                case 22:
                    iZzb3 += zzle.zze(i13, (List) unsafe2.getObject(t, j3), false);
                    i5 = 0;
                    j = 0;
                    break;
                case 23:
                    iZzb3 += zzle.zzi(i13, (List) unsafe2.getObject(t, j3), false);
                    i5 = 0;
                    j = 0;
                    break;
                case 24:
                    iZzb3 += zzle.zzh(i13, (List) unsafe2.getObject(t, j3), false);
                    i5 = 0;
                    j = 0;
                    break;
                case 25:
                    iZzb3 += zzle.zzj(i13, (List) unsafe2.getObject(t, j3), false);
                    i5 = 0;
                    j = 0;
                    break;
                case 26:
                    iZzb3 += zzle.zza(i13, (List<?>) unsafe2.getObject(t, j3));
                    i5 = 0;
                    j = 0;
                    break;
                case 27:
                    iZzb3 += zzle.zza(i13, (List<?>) unsafe2.getObject(t, j3), zza(i10));
                    i5 = 0;
                    j = 0;
                    break;
                case 28:
                    iZzb3 += zzle.zzb(i13, (List) unsafe2.getObject(t, j3));
                    i5 = 0;
                    j = 0;
                    break;
                case 29:
                    iZzb3 += zzle.zzf(i13, (List) unsafe2.getObject(t, j3), false);
                    i5 = 0;
                    j = 0;
                    break;
                case 30:
                    iZzb3 += zzle.zzd(i13, (List) unsafe2.getObject(t, j3), false);
                    i5 = 0;
                    j = 0;
                    break;
                case 31:
                    iZzb3 += zzle.zzh(i13, (List) unsafe2.getObject(t, j3), false);
                    i5 = 0;
                    j = 0;
                    break;
                case 32:
                    iZzb3 += zzle.zzi(i13, (List) unsafe2.getObject(t, j3), false);
                    i5 = 0;
                    j = 0;
                    break;
                case 33:
                    iZzb3 += zzle.zzg(i13, (List) unsafe2.getObject(t, j3), false);
                    i5 = 0;
                    j = 0;
                    break;
                case 34:
                    iZzb3 += zzle.zzc(i13, (List) unsafe2.getObject(t, j3), false);
                    i5 = 0;
                    j = 0;
                    break;
                case 35:
                    int iZzi4 = zzle.zzi((List) unsafe2.getObject(t, j3));
                    if (iZzi4 > 0) {
                        iZzb3 += zzii.zze(i13) + zzii.zzg(iZzi4) + iZzi4;
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 36:
                    int iZzh4 = zzle.zzh((List) unsafe2.getObject(t, j3));
                    if (iZzh4 > 0) {
                        iZzb3 += zzii.zze(i13) + zzii.zzg(iZzh4) + iZzh4;
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 37:
                    int iZza2 = zzle.zza((List<Long>) unsafe2.getObject(t, j3));
                    if (iZza2 > 0) {
                        iZzb3 += zzii.zze(i13) + zzii.zzg(iZza2) + iZza2;
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 38:
                    int iZzb4 = zzle.zzb((List) unsafe2.getObject(t, j3));
                    if (iZzb4 > 0) {
                        iZzb3 += zzii.zze(i13) + zzii.zzg(iZzb4) + iZzb4;
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 39:
                    int iZze2 = zzle.zze((List) unsafe2.getObject(t, j3));
                    if (iZze2 > 0) {
                        iZzb3 += zzii.zze(i13) + zzii.zzg(iZze2) + iZze2;
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 40:
                    int iZzi5 = zzle.zzi((List) unsafe2.getObject(t, j3));
                    if (iZzi5 > 0) {
                        iZzb3 += zzii.zze(i13) + zzii.zzg(iZzi5) + iZzi5;
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 41:
                    int iZzh5 = zzle.zzh((List) unsafe2.getObject(t, j3));
                    if (iZzh5 > 0) {
                        iZzb3 += zzii.zze(i13) + zzii.zzg(iZzh5) + iZzh5;
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 42:
                    int iZzj2 = zzle.zzj((List) unsafe2.getObject(t, j3));
                    if (iZzj2 > 0) {
                        iZzb3 += zzii.zze(i13) + zzii.zzg(iZzj2) + iZzj2;
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 43:
                    int iZzf2 = zzle.zzf((List) unsafe2.getObject(t, j3));
                    if (iZzf2 > 0) {
                        iZzb3 += zzii.zze(i13) + zzii.zzg(iZzf2) + iZzf2;
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 44:
                    int iZzd4 = zzle.zzd((List) unsafe2.getObject(t, j3));
                    if (iZzd4 > 0) {
                        iZzb3 += zzii.zze(i13) + zzii.zzg(iZzd4) + iZzd4;
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 45:
                    int iZzh6 = zzle.zzh((List) unsafe2.getObject(t, j3));
                    if (iZzh6 > 0) {
                        iZzb3 += zzii.zze(i13) + zzii.zzg(iZzh6) + iZzh6;
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 46:
                    int iZzi6 = zzle.zzi((List) unsafe2.getObject(t, j3));
                    if (iZzi6 > 0) {
                        iZzb3 += zzii.zze(i13) + zzii.zzg(iZzi6) + iZzi6;
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 47:
                    int iZzg2 = zzle.zzg((List) unsafe2.getObject(t, j3));
                    if (iZzg2 > 0) {
                        iZzb3 += zzii.zze(i13) + zzii.zzg(iZzg2) + iZzg2;
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 48:
                    int iZzc2 = zzle.zzc((List) unsafe2.getObject(t, j3));
                    if (iZzc2 > 0) {
                        iZzb3 += zzii.zze(i13) + zzii.zzg(iZzc2) + iZzc2;
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 49:
                    iZzb3 += zzle.zzb(i13, (List<zzkk>) unsafe2.getObject(t, j3), zza(i10));
                    i5 = 0;
                    j = 0;
                    break;
                case 50:
                    iZzb3 += this.zzs.zza(i13, unsafe2.getObject(t, j3), zzb(i10));
                    i5 = 0;
                    j = 0;
                    break;
                case 51:
                    if (zza(t, i13, i10)) {
                        iZzb3 += zzii.zzb(i13, 0.0d);
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 52:
                    if (zza(t, i13, i10)) {
                        iZzb3 += zzii.zzb(i13, 0.0f);
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 53:
                    if (zza(t, i13, i10)) {
                        iZzb3 += zzii.zzd(i13, zze(t, j3));
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 54:
                    if (zza(t, i13, i10)) {
                        iZzb3 += zzii.zze(i13, zze(t, j3));
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 55:
                    if (zza(t, i13, i10)) {
                        iZzb3 += zzii.zzf(i13, zzd(t, j3));
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 56:
                    if (zza(t, i13, i10)) {
                        iZzb3 += zzii.zzg(i13, 0L);
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 57:
                    if (zza(t, i13, i10)) {
                        iZzb3 += zzii.zzi(i13, 0);
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 58:
                    if (zza(t, i13, i10)) {
                        iZzb3 += zzii.zzb(i13, true);
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 59:
                    if (zza(t, i13, i10)) {
                        Object object2 = unsafe2.getObject(t, j3);
                        if (object2 instanceof zzht) {
                            iZzb3 += zzii.zzc(i13, (zzht) object2);
                            i5 = 0;
                            j = 0;
                        } else {
                            iZzb3 += zzii.zzb(i13, (String) object2);
                            i5 = 0;
                            j = 0;
                        }
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 60:
                    if (zza(t, i13, i10)) {
                        iZzb3 += zzle.zza(i13, unsafe2.getObject(t, j3), zza(i10));
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 61:
                    if (zza(t, i13, i10)) {
                        iZzb3 += zzii.zzc(i13, (zzht) unsafe2.getObject(t, j3));
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 62:
                    if (zza(t, i13, i10)) {
                        iZzb3 += zzii.zzg(i13, zzd(t, j3));
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 63:
                    if (zza(t, i13, i10)) {
                        iZzb3 += zzii.zzk(i13, zzd(t, j3));
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 64:
                    if (zza(t, i13, i10)) {
                        iZzb3 += zzii.zzj(i13, 0);
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 65:
                    if (zza(t, i13, i10)) {
                        iZzb3 += zzii.zzh(i13, 0L);
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 66:
                    if (zza(t, i13, i10)) {
                        iZzb3 += zzii.zzh(i13, zzd(t, j3));
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 67:
                    if (zza(t, i13, i10)) {
                        iZzb3 += zzii.zzf(i13, zze(t, j3));
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                case 68:
                    if (zza(t, i13, i10)) {
                        iZzb3 += zzii.zzc(i13, (zzkk) unsafe2.getObject(t, j3), zza(i10));
                        i5 = 0;
                        j = 0;
                    } else {
                        i5 = 0;
                        j = 0;
                    }
                    break;
                default:
                    i5 = 0;
                    j = 0;
                    break;
            }
            i10 += 3;
            i3 = 1048575;
            i4 = 1;
        }
        int iZza3 = iZzb3 + zza((zzlu) this.zzq, (Object) t);
        if (this.zzh) {
            zziu<T> zziuVarZza = this.zzr.zza(t);
            int iZzc3 = 0;
            while (i5 < zziuVarZza.zza.zzc()) {
                Map.Entry entryZzb = zziuVarZza.zza.zzb(i5);
                iZzc3 += zziu.zzc((zziw) entryZzb.getKey(), entryZzb.getValue());
                i5++;
            }
            for (Map.Entry entry : zziuVarZza.zza.zzd()) {
                iZzc3 += zziu.zzc((zziw) entry.getKey(), entry.getValue());
            }
            return iZza3 + iZzc3;
        }
        return iZza3;
    }

    private static <UT, UB> int zza(zzlu<UT, UB> zzluVar, T t) {
        return zzluVar.zzf(zzluVar.zzb(t));
    }

    private static List<?> zza(Object obj, long j) {
        return (List) zzma.zzf(obj, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:178:0x05da  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0036  */
    @Override // com.google.android.gms.internal.vision.zzlc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(T r14, com.google.android.gms.internal.vision.zzmr r15) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 3196
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzko.zza(java.lang.Object, com.google.android.gms.internal.vision.zzmr):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzb(T r18, com.google.android.gms.internal.vision.zzmr r19) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1536
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzko.zzb(java.lang.Object, com.google.android.gms.internal.vision.zzmr):void");
    }

    private final <K, V> void zza(zzmr zzmrVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzmrVar.zza(i, this.zzs.zzb(zzb(i2)), this.zzs.zzc(obj));
        }
    }

    private static <UT, UB> void zza(zzlu<UT, UB> zzluVar, T t, zzmr zzmrVar) throws IOException {
        zzluVar.zza(zzluVar.zzb(t), zzmrVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0612 A[LOOP:5: B:167:0x060e->B:169:0x0612, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x061f  */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.android.gms.internal.vision.zzlc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(T r13, com.google.android.gms.internal.vision.zzld r14, com.google.android.gms.internal.vision.zzio r15) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1722
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzko.zza(java.lang.Object, com.google.android.gms.internal.vision.zzld, com.google.android.gms.internal.vision.zzio):void");
    }

    private static zzlx zze(Object obj) {
        zzjb zzjbVar = (zzjb) obj;
        zzlx zzlxVar = zzjbVar.zzb;
        if (zzlxVar == zzlx.zza()) {
            zzlx zzlxVarZzb = zzlx.zzb();
            zzjbVar.zzb = zzlxVarZzb;
            return zzlxVarZzb;
        }
        return zzlxVar;
    }

    private static int zza(byte[] bArr, int i, int i2, zzml zzmlVar, Class<?> cls, zzhn zzhnVar) throws IOException {
        switch (zzkr.zza[zzmlVar.ordinal()]) {
            case 1:
                int iZzb = zzhl.zzb(bArr, i, zzhnVar);
                zzhnVar.zzc = Boolean.valueOf(zzhnVar.zzb != 0);
                return iZzb;
            case 2:
                return zzhl.zze(bArr, i, zzhnVar);
            case 3:
                zzhnVar.zzc = Double.valueOf(zzhl.zzc(bArr, i));
                return i + 8;
            case 4:
            case 5:
                zzhnVar.zzc = Integer.valueOf(zzhl.zza(bArr, i));
                return i + 4;
            case 6:
            case 7:
                zzhnVar.zzc = Long.valueOf(zzhl.zzb(bArr, i));
                return i + 8;
            case 8:
                zzhnVar.zzc = Float.valueOf(zzhl.zzd(bArr, i));
                return i + 4;
            case 9:
            case 10:
            case 11:
                int iZza = zzhl.zza(bArr, i, zzhnVar);
                zzhnVar.zzc = Integer.valueOf(zzhnVar.zza);
                return iZza;
            case 12:
            case 13:
                int iZzb2 = zzhl.zzb(bArr, i, zzhnVar);
                zzhnVar.zzc = Long.valueOf(zzhnVar.zzb);
                return iZzb2;
            case 14:
                return zzhl.zza(zzky.zza().zza((Class) cls), bArr, i, i2, zzhnVar);
            case 15:
                int iZza2 = zzhl.zza(bArr, i, zzhnVar);
                zzhnVar.zzc = Integer.valueOf(zzif.zze(zzhnVar.zza));
                return iZza2;
            case 16:
                int iZzb3 = zzhl.zzb(bArr, i, zzhnVar);
                zzhnVar.zzc = Long.valueOf(zzif.zza(zzhnVar.zzb));
                return iZzb3;
            case 17:
                return zzhl.zzd(bArr, i, zzhnVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, zzhn zzhnVar) throws IOException {
        int iZza;
        zzjl zzjlVarZza = (zzjl) zzb.getObject(t, j2);
        if (!zzjlVarZza.zza()) {
            int size = zzjlVarZza.size();
            zzjlVarZza = zzjlVarZza.zza(size == 0 ? 10 : size << 1);
            zzb.putObject(t, j2, zzjlVarZza);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    zzin zzinVar = (zzin) zzjlVarZza;
                    int iZza2 = zzhl.zza(bArr, i, zzhnVar);
                    int i8 = zzhnVar.zza + iZza2;
                    while (iZza2 < i8) {
                        zzinVar.zza(zzhl.zzc(bArr, iZza2));
                        iZza2 += 8;
                    }
                    if (iZza2 == i8) {
                        return iZza2;
                    }
                    throw zzjk.zza();
                }
                if (i5 == 1) {
                    zzin zzinVar2 = (zzin) zzjlVarZza;
                    zzinVar2.zza(zzhl.zzc(bArr, i));
                    int i9 = i + 8;
                    while (i9 < i2) {
                        int iZza3 = zzhl.zza(bArr, i9, zzhnVar);
                        if (i3 != zzhnVar.zza) {
                            return i9;
                        }
                        zzinVar2.zza(zzhl.zzc(bArr, iZza3));
                        i9 = iZza3 + 8;
                    }
                    return i9;
                }
                return i;
            case 19:
            case 36:
                if (i5 == 2) {
                    zzja zzjaVar = (zzja) zzjlVarZza;
                    int iZza4 = zzhl.zza(bArr, i, zzhnVar);
                    int i10 = zzhnVar.zza + iZza4;
                    while (iZza4 < i10) {
                        zzjaVar.zza(zzhl.zzd(bArr, iZza4));
                        iZza4 += 4;
                    }
                    if (iZza4 == i10) {
                        return iZza4;
                    }
                    throw zzjk.zza();
                }
                if (i5 == 5) {
                    zzja zzjaVar2 = (zzja) zzjlVarZza;
                    zzjaVar2.zza(zzhl.zzd(bArr, i));
                    int i11 = i + 4;
                    while (i11 < i2) {
                        int iZza5 = zzhl.zza(bArr, i11, zzhnVar);
                        if (i3 != zzhnVar.zza) {
                            return i11;
                        }
                        zzjaVar2.zza(zzhl.zzd(bArr, iZza5));
                        i11 = iZza5 + 4;
                    }
                    return i11;
                }
                return i;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    zzjy zzjyVar = (zzjy) zzjlVarZza;
                    int iZza6 = zzhl.zza(bArr, i, zzhnVar);
                    int i12 = zzhnVar.zza + iZza6;
                    while (iZza6 < i12) {
                        iZza6 = zzhl.zzb(bArr, iZza6, zzhnVar);
                        zzjyVar.zza(zzhnVar.zzb);
                    }
                    if (iZza6 == i12) {
                        return iZza6;
                    }
                    throw zzjk.zza();
                }
                if (i5 == 0) {
                    zzjy zzjyVar2 = (zzjy) zzjlVarZza;
                    int iZzb = zzhl.zzb(bArr, i, zzhnVar);
                    zzjyVar2.zza(zzhnVar.zzb);
                    while (iZzb < i2) {
                        int iZza7 = zzhl.zza(bArr, iZzb, zzhnVar);
                        if (i3 != zzhnVar.zza) {
                            return iZzb;
                        }
                        iZzb = zzhl.zzb(bArr, iZza7, zzhnVar);
                        zzjyVar2.zza(zzhnVar.zzb);
                    }
                    return iZzb;
                }
                return i;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return zzhl.zza(bArr, i, (zzjl<?>) zzjlVarZza, zzhnVar);
                }
                if (i5 == 0) {
                    return zzhl.zza(i3, bArr, i, i2, (zzjl<?>) zzjlVarZza, zzhnVar);
                }
                return i;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    zzjy zzjyVar3 = (zzjy) zzjlVarZza;
                    int iZza8 = zzhl.zza(bArr, i, zzhnVar);
                    int i13 = zzhnVar.zza + iZza8;
                    while (iZza8 < i13) {
                        zzjyVar3.zza(zzhl.zzb(bArr, iZza8));
                        iZza8 += 8;
                    }
                    if (iZza8 == i13) {
                        return iZza8;
                    }
                    throw zzjk.zza();
                }
                if (i5 == 1) {
                    zzjy zzjyVar4 = (zzjy) zzjlVarZza;
                    zzjyVar4.zza(zzhl.zzb(bArr, i));
                    int i14 = i + 8;
                    while (i14 < i2) {
                        int iZza9 = zzhl.zza(bArr, i14, zzhnVar);
                        if (i3 != zzhnVar.zza) {
                            return i14;
                        }
                        zzjyVar4.zza(zzhl.zzb(bArr, iZza9));
                        i14 = iZza9 + 8;
                    }
                    return i14;
                }
                return i;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    zzjd zzjdVar = (zzjd) zzjlVarZza;
                    int iZza10 = zzhl.zza(bArr, i, zzhnVar);
                    int i15 = zzhnVar.zza + iZza10;
                    while (iZza10 < i15) {
                        zzjdVar.zzc(zzhl.zza(bArr, iZza10));
                        iZza10 += 4;
                    }
                    if (iZza10 == i15) {
                        return iZza10;
                    }
                    throw zzjk.zza();
                }
                if (i5 == 5) {
                    zzjd zzjdVar2 = (zzjd) zzjlVarZza;
                    zzjdVar2.zzc(zzhl.zza(bArr, i));
                    int i16 = i + 4;
                    while (i16 < i2) {
                        int iZza11 = zzhl.zza(bArr, i16, zzhnVar);
                        if (i3 != zzhnVar.zza) {
                            return i16;
                        }
                        zzjdVar2.zzc(zzhl.zza(bArr, iZza11));
                        i16 = iZza11 + 4;
                    }
                    return i16;
                }
                return i;
            case 25:
            case 42:
                if (i5 == 2) {
                    zzhr zzhrVar = (zzhr) zzjlVarZza;
                    int iZza12 = zzhl.zza(bArr, i, zzhnVar);
                    int i17 = zzhnVar.zza + iZza12;
                    while (iZza12 < i17) {
                        iZza12 = zzhl.zzb(bArr, iZza12, zzhnVar);
                        zzhrVar.zza(zzhnVar.zzb != 0);
                    }
                    if (iZza12 != i17) {
                        throw zzjk.zza();
                    }
                    return iZza12;
                }
                if (i5 == 0) {
                    zzhr zzhrVar2 = (zzhr) zzjlVarZza;
                    int iZzb2 = zzhl.zzb(bArr, i, zzhnVar);
                    zzhrVar2.zza(zzhnVar.zzb != 0);
                    while (iZzb2 < i2) {
                        int iZza13 = zzhl.zza(bArr, iZzb2, zzhnVar);
                        if (i3 == zzhnVar.zza) {
                            iZzb2 = zzhl.zzb(bArr, iZza13, zzhnVar);
                            zzhrVar2.zza(zzhnVar.zzb != 0);
                        } else {
                            return iZzb2;
                        }
                    }
                    return iZzb2;
                }
                return i;
            case 26:
                if (i5 != 2) {
                    return i;
                }
                if ((j & 536870912) == 0) {
                    int iZza14 = zzhl.zza(bArr, i, zzhnVar);
                    int i18 = zzhnVar.zza;
                    if (i18 < 0) {
                        throw zzjk.zzb();
                    }
                    if (i18 == 0) {
                        zzjlVarZza.add("");
                    } else {
                        zzjlVarZza.add(new String(bArr, iZza14, i18, zzjf.zza));
                        iZza14 += i18;
                    }
                    while (iZza14 < i2) {
                        int iZza15 = zzhl.zza(bArr, iZza14, zzhnVar);
                        if (i3 == zzhnVar.zza) {
                            iZza14 = zzhl.zza(bArr, iZza15, zzhnVar);
                            int i19 = zzhnVar.zza;
                            if (i19 < 0) {
                                throw zzjk.zzb();
                            }
                            if (i19 == 0) {
                                zzjlVarZza.add("");
                            } else {
                                zzjlVarZza.add(new String(bArr, iZza14, i19, zzjf.zza));
                                iZza14 += i19;
                            }
                        } else {
                            return iZza14;
                        }
                    }
                    return iZza14;
                }
                int iZza16 = zzhl.zza(bArr, i, zzhnVar);
                int i20 = zzhnVar.zza;
                if (i20 < 0) {
                    throw zzjk.zzb();
                }
                if (i20 == 0) {
                    zzjlVarZza.add("");
                } else {
                    int i21 = iZza16 + i20;
                    if (!zzmd.zza(bArr, iZza16, i21)) {
                        throw zzjk.zzh();
                    }
                    zzjlVarZza.add(new String(bArr, iZza16, i20, zzjf.zza));
                    iZza16 = i21;
                }
                while (iZza16 < i2) {
                    int iZza17 = zzhl.zza(bArr, iZza16, zzhnVar);
                    if (i3 == zzhnVar.zza) {
                        iZza16 = zzhl.zza(bArr, iZza17, zzhnVar);
                        int i22 = zzhnVar.zza;
                        if (i22 < 0) {
                            throw zzjk.zzb();
                        }
                        if (i22 == 0) {
                            zzjlVarZza.add("");
                        } else {
                            int i23 = iZza16 + i22;
                            if (!zzmd.zza(bArr, iZza16, i23)) {
                                throw zzjk.zzh();
                            }
                            zzjlVarZza.add(new String(bArr, iZza16, i22, zzjf.zza));
                            iZza16 = i23;
                        }
                    } else {
                        return iZza16;
                    }
                }
                return iZza16;
            case 27:
                if (i5 == 2) {
                    return zzhl.zza(zza(i6), i3, bArr, i, i2, zzjlVarZza, zzhnVar);
                }
                return i;
            case 28:
                if (i5 == 2) {
                    int iZza18 = zzhl.zza(bArr, i, zzhnVar);
                    int i24 = zzhnVar.zza;
                    if (i24 < 0) {
                        throw zzjk.zzb();
                    }
                    if (i24 > bArr.length - iZza18) {
                        throw zzjk.zza();
                    }
                    if (i24 == 0) {
                        zzjlVarZza.add(zzht.zza);
                    } else {
                        zzjlVarZza.add(zzht.zza(bArr, iZza18, i24));
                        iZza18 += i24;
                    }
                    while (iZza18 < i2) {
                        int iZza19 = zzhl.zza(bArr, iZza18, zzhnVar);
                        if (i3 != zzhnVar.zza) {
                            return iZza18;
                        }
                        iZza18 = zzhl.zza(bArr, iZza19, zzhnVar);
                        int i25 = zzhnVar.zza;
                        if (i25 < 0) {
                            throw zzjk.zzb();
                        }
                        if (i25 > bArr.length - iZza18) {
                            throw zzjk.zza();
                        }
                        if (i25 == 0) {
                            zzjlVarZza.add(zzht.zza);
                        } else {
                            zzjlVarZza.add(zzht.zza(bArr, iZza18, i25));
                            iZza18 += i25;
                        }
                    }
                    return iZza18;
                }
                return i;
            case 30:
            case 44:
                if (i5 == 2) {
                    iZza = zzhl.zza(bArr, i, (zzjl<?>) zzjlVarZza, zzhnVar);
                } else if (i5 == 0) {
                    iZza = zzhl.zza(i3, bArr, i, i2, (zzjl<?>) zzjlVarZza, zzhnVar);
                } else {
                    return i;
                }
                zzjb zzjbVar = (zzjb) t;
                zzlx zzlxVar = zzjbVar.zzb;
                if (zzlxVar == zzlx.zza()) {
                    zzlxVar = null;
                }
                zzlx zzlxVar2 = (zzlx) zzle.zza(i4, zzjlVarZza, zzc(i6), zzlxVar, this.zzq);
                if (zzlxVar2 != null) {
                    zzjbVar.zzb = zzlxVar2;
                }
                return iZza;
            case 33:
            case 47:
                if (i5 == 2) {
                    zzjd zzjdVar3 = (zzjd) zzjlVarZza;
                    int iZza20 = zzhl.zza(bArr, i, zzhnVar);
                    int i26 = zzhnVar.zza + iZza20;
                    while (iZza20 < i26) {
                        iZza20 = zzhl.zza(bArr, iZza20, zzhnVar);
                        zzjdVar3.zzc(zzif.zze(zzhnVar.zza));
                    }
                    if (iZza20 == i26) {
                        return iZza20;
                    }
                    throw zzjk.zza();
                }
                if (i5 == 0) {
                    zzjd zzjdVar4 = (zzjd) zzjlVarZza;
                    int iZza21 = zzhl.zza(bArr, i, zzhnVar);
                    zzjdVar4.zzc(zzif.zze(zzhnVar.zza));
                    while (iZza21 < i2) {
                        int iZza22 = zzhl.zza(bArr, iZza21, zzhnVar);
                        if (i3 != zzhnVar.zza) {
                            return iZza21;
                        }
                        iZza21 = zzhl.zza(bArr, iZza22, zzhnVar);
                        zzjdVar4.zzc(zzif.zze(zzhnVar.zza));
                    }
                    return iZza21;
                }
                return i;
            case 34:
            case 48:
                if (i5 == 2) {
                    zzjy zzjyVar5 = (zzjy) zzjlVarZza;
                    int iZza23 = zzhl.zza(bArr, i, zzhnVar);
                    int i27 = zzhnVar.zza + iZza23;
                    while (iZza23 < i27) {
                        iZza23 = zzhl.zzb(bArr, iZza23, zzhnVar);
                        zzjyVar5.zza(zzif.zza(zzhnVar.zzb));
                    }
                    if (iZza23 == i27) {
                        return iZza23;
                    }
                    throw zzjk.zza();
                }
                if (i5 == 0) {
                    zzjy zzjyVar6 = (zzjy) zzjlVarZza;
                    int iZzb3 = zzhl.zzb(bArr, i, zzhnVar);
                    zzjyVar6.zza(zzif.zza(zzhnVar.zzb));
                    while (iZzb3 < i2) {
                        int iZza24 = zzhl.zza(bArr, iZzb3, zzhnVar);
                        if (i3 != zzhnVar.zza) {
                            return iZzb3;
                        }
                        iZzb3 = zzhl.zzb(bArr, iZza24, zzhnVar);
                        zzjyVar6.zza(zzif.zza(zzhnVar.zzb));
                    }
                    return iZzb3;
                }
                return i;
            case 49:
                if (i5 == 3) {
                    zzlc zzlcVarZza = zza(i6);
                    int i28 = (i3 & (-8)) | 4;
                    int iZza25 = zzhl.zza(zzlcVarZza, bArr, i, i2, i28, zzhnVar);
                    zzjlVarZza.add(zzhnVar.zzc);
                    while (iZza25 < i2) {
                        int iZza26 = zzhl.zza(bArr, iZza25, zzhnVar);
                        if (i3 == zzhnVar.zza) {
                            iZza25 = zzhl.zza(zzlcVarZza, bArr, iZza26, i2, i28, zzhnVar);
                            zzjlVarZza.add(zzhnVar.zzc);
                        } else {
                            return iZza25;
                        }
                    }
                    return iZza25;
                }
                return i;
            default:
                return i;
        }
    }

    private final <K, V> int zza(T t, byte[] bArr, int i, int i2, int i3, long j, zzhn zzhnVar) throws IOException {
        int i4;
        Unsafe unsafe = zzb;
        Object objZzb = zzb(i3);
        Object object = unsafe.getObject(t, j);
        if (this.zzs.zzd(object)) {
            Object objZzf = this.zzs.zzf(objZzb);
            this.zzs.zza(objZzf, object);
            unsafe.putObject(t, j, objZzf);
            object = objZzf;
        }
        zzkf<?, ?> zzkfVarZzb = this.zzs.zzb(objZzb);
        Map<?, ?> mapZza = this.zzs.zza(object);
        int iZza = zzhl.zza(bArr, i, zzhnVar);
        int i5 = zzhnVar.zza;
        if (i5 < 0 || i5 > i2 - iZza) {
            throw zzjk.zza();
        }
        int i6 = i5 + iZza;
        K k = zzkfVarZzb.zzb;
        V v = zzkfVarZzb.zzd;
        while (iZza < i6) {
            int i7 = iZza + 1;
            int i8 = bArr[iZza];
            if (i8 >= 0) {
                i4 = i7;
            } else {
                int iZza2 = zzhl.zza(i8, bArr, i7, zzhnVar);
                i8 = zzhnVar.zza;
                i4 = iZza2;
            }
            int i9 = i8 & 7;
            switch (i8 >>> 3) {
                case 1:
                    if (i9 == zzkfVarZzb.zza.zzb()) {
                        iZza = zza(bArr, i4, i2, zzkfVarZzb.zza, (Class<?>) null, zzhnVar);
                        k = (K) zzhnVar.zzc;
                    } else {
                        iZza = zzhl.zza(i8, bArr, i4, i2, zzhnVar);
                    }
                    break;
                case 2:
                    if (i9 == zzkfVarZzb.zzc.zzb()) {
                        iZza = zza(bArr, i4, i2, zzkfVarZzb.zzc, zzkfVarZzb.zzd.getClass(), zzhnVar);
                        v = zzhnVar.zzc;
                    } else {
                        iZza = zzhl.zza(i8, bArr, i4, i2, zzhnVar);
                    }
                    break;
                default:
                    iZza = zzhl.zza(i8, bArr, i4, i2, zzhnVar);
                    break;
            }
        }
        if (iZza != i6) {
            throw zzjk.zzg();
        }
        mapZza.put(k, v);
        return i6;
    }

    private final int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzhn zzhnVar) throws IOException {
        int iZzb;
        Object object;
        Object object2;
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(zzhl.zzc(bArr, i)));
                    iZzb = i + 8;
                } else {
                    return i;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(zzhl.zzd(bArr, i)));
                    iZzb = i + 4;
                } else {
                    return i;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    iZzb = zzhl.zzb(bArr, i, zzhnVar);
                    unsafe.putObject(t, j, Long.valueOf(zzhnVar.zzb));
                } else {
                    return i;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    iZzb = zzhl.zza(bArr, i, zzhnVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzhnVar.zza));
                } else {
                    return i;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(zzhl.zzb(bArr, i)));
                    iZzb = i + 8;
                } else {
                    return i;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(zzhl.zza(bArr, i)));
                    iZzb = i + 4;
                } else {
                    return i;
                }
                break;
            case 58:
                if (i5 == 0) {
                    iZzb = zzhl.zzb(bArr, i, zzhnVar);
                    unsafe.putObject(t, j, Boolean.valueOf(zzhnVar.zzb != 0));
                } else {
                    return i;
                }
                break;
            case 59:
                if (i5 == 2) {
                    int iZza = zzhl.zza(bArr, i, zzhnVar);
                    int i9 = zzhnVar.zza;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else {
                        if ((i6 & Declaration.EARLY_INIT) != 0 && !zzmd.zza(bArr, iZza, iZza + i9)) {
                            throw zzjk.zzh();
                        }
                        unsafe.putObject(t, j, new String(bArr, iZza, i9, zzjf.zza));
                        iZza += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    return iZza;
                }
                return i;
            case 60:
                if (i5 == 2) {
                    int iZza2 = zzhl.zza(zza(i8), bArr, i, i2, zzhnVar);
                    if (unsafe.getInt(t, j2) == i4) {
                        object = unsafe.getObject(t, j);
                    } else {
                        object = null;
                    }
                    if (object == null) {
                        unsafe.putObject(t, j, zzhnVar.zzc);
                    } else {
                        unsafe.putObject(t, j, zzjf.zza(object, zzhnVar.zzc));
                    }
                    unsafe.putInt(t, j2, i4);
                    return iZza2;
                }
                return i;
            case 61:
                if (i5 == 2) {
                    iZzb = zzhl.zze(bArr, i, zzhnVar);
                    unsafe.putObject(t, j, zzhnVar.zzc);
                } else {
                    return i;
                }
                break;
            case 63:
                if (i5 == 0) {
                    int iZza3 = zzhl.zza(bArr, i, zzhnVar);
                    int i10 = zzhnVar.zza;
                    zzjg zzjgVarZzc = zzc(i8);
                    if (zzjgVarZzc == null || zzjgVarZzc.zza(i10)) {
                        unsafe.putObject(t, j, Integer.valueOf(i10));
                        iZzb = iZza3;
                    } else {
                        zze(t).zza(i3, Long.valueOf(i10));
                        return iZza3;
                    }
                } else {
                    return i;
                }
                break;
            case 66:
                if (i5 == 0) {
                    iZzb = zzhl.zza(bArr, i, zzhnVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzif.zze(zzhnVar.zza)));
                } else {
                    return i;
                }
                break;
            case 67:
                if (i5 == 0) {
                    iZzb = zzhl.zzb(bArr, i, zzhnVar);
                    unsafe.putObject(t, j, Long.valueOf(zzif.zza(zzhnVar.zzb)));
                } else {
                    return i;
                }
                break;
            case 68:
                if (i5 == 3) {
                    iZzb = zzhl.zza(zza(i8), bArr, i, i2, (i3 & (-8)) | 4, zzhnVar);
                    if (unsafe.getInt(t, j2) == i4) {
                        object2 = unsafe.getObject(t, j);
                    } else {
                        object2 = null;
                    }
                    if (object2 == null) {
                        unsafe.putObject(t, j, zzhnVar.zzc);
                    } else {
                        unsafe.putObject(t, j, zzjf.zza(object2, zzhnVar.zzc));
                    }
                } else {
                    return i;
                }
                break;
            default:
                return i;
        }
        unsafe.putInt(t, j2, i4);
        return iZzb;
    }

    private final zzlc zza(int i) {
        int i2 = (i / 3) << 1;
        zzlc zzlcVar = (zzlc) this.zzd[i2];
        if (zzlcVar != null) {
            return zzlcVar;
        }
        zzlc<T> zzlcVarZza = zzky.zza().zza((Class) this.zzd[i2 + 1]);
        this.zzd[i2] = zzlcVarZza;
        return zzlcVarZza;
    }

    private final Object zzb(int i) {
        return this.zzd[(i / 3) << 1];
    }

    private final zzjg zzc(int i) {
        return (zzjg) this.zzd[((i / 3) << 1) + 1];
    }

    /* JADX WARN: Code restructure failed: missing block: B:193:0x0754, code lost:
    
        if (r2 == 1048575) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0756, code lost:
    
        r29.putInt(r13, r2, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x075c, code lost:
    
        r2 = r9.zzm;
        r4 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0762, code lost:
    
        if (r2 >= r9.zzn) goto L305;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0764, code lost:
    
        r4 = (com.google.android.gms.internal.vision.zzlx) r9.zza(r13, r9.zzl[r2], r4, (com.google.android.gms.internal.vision.zzlu<UT, com.google.android.gms.internal.vision.zzlx>) r9.zzq);
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x0774, code lost:
    
        if (r4 == null) goto L201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x0776, code lost:
    
        r9.zzq.zzb(r13, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x077b, code lost:
    
        if (r7 != 0) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x077d, code lost:
    
        if (r0 != r6) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0784, code lost:
    
        throw com.google.android.gms.internal.vision.zzjk.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x0785, code lost:
    
        if (r0 > r6) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x0787, code lost:
    
        if (r3 != r7) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x0789, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x078f, code lost:
    
        throw com.google.android.gms.internal.vision.zzjk.zzg();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final int zza(T r33, byte[] r34, int r35, int r36, int r37, com.google.android.gms.internal.vision.zzhn r38) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 2026
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzko.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.vision.zzhn):int");
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final void zza(T t, byte[] bArr, int i, int i2, zzhn zzhnVar) throws IOException {
        int i3;
        int iZza;
        int iZzg;
        int i4;
        int i5;
        Unsafe unsafe;
        int i6;
        int i7;
        int i8;
        Unsafe unsafe2;
        int i9;
        Unsafe unsafe3;
        int i10;
        int i11;
        int i12;
        zzko<T> zzkoVar = this;
        T t2 = t;
        byte[] bArr2 = bArr;
        int i13 = i2;
        zzhn zzhnVar2 = zzhnVar;
        if (zzkoVar.zzj) {
            Unsafe unsafe4 = zzb;
            int i14 = -1;
            int i15 = 1048575;
            int iZza2 = i;
            int i16 = -1;
            int i17 = 0;
            int i18 = 0;
            int i19 = 1048575;
            while (iZza2 < i13) {
                int i20 = iZza2 + 1;
                byte b = bArr2[iZza2];
                if (b >= 0) {
                    i3 = b;
                    iZza = i20;
                } else {
                    iZza = zzhl.zza(b, bArr2, i20, zzhnVar2);
                    i3 = zzhnVar2.zza;
                }
                int i21 = i3 >>> 3;
                int i22 = i3 & 7;
                if (i21 > i16) {
                    iZzg = zzkoVar.zza(i21, i17 / 3);
                } else {
                    iZzg = zzkoVar.zzg(i21);
                }
                if (iZzg == i14) {
                    i4 = iZza;
                    i5 = i21;
                    unsafe = unsafe4;
                    i6 = 0;
                } else {
                    int i23 = zzkoVar.zzc[iZzg + 1];
                    int i24 = (267386880 & i23) >>> 20;
                    Unsafe unsafe5 = unsafe4;
                    long j = i23 & i15;
                    if (i24 <= 17) {
                        int i25 = zzkoVar.zzc[iZzg + 2];
                        int i26 = 1 << (i25 >>> 20);
                        int i27 = i25 & 1048575;
                        if (i27 == i19) {
                            i7 = i23;
                            i8 = iZzg;
                            unsafe2 = unsafe5;
                        } else {
                            if (i19 == 1048575) {
                                i7 = i23;
                                i8 = iZzg;
                                unsafe3 = unsafe5;
                            } else {
                                i7 = i23;
                                i8 = iZzg;
                                long j2 = i19;
                                unsafe3 = unsafe5;
                                unsafe3.putInt(t2, j2, i18);
                            }
                            if (i27 != 1048575) {
                                i18 = unsafe3.getInt(t2, i27);
                            }
                            unsafe2 = unsafe3;
                            i19 = i27;
                        }
                        switch (i24) {
                            case 0:
                                i9 = i8;
                                i5 = i21;
                                if (i22 == 1) {
                                    zzma.zza(t2, j, zzhl.zzc(bArr2, iZza));
                                    iZza2 = iZza + 8;
                                    i18 |= i26;
                                    unsafe4 = unsafe2;
                                    i17 = i9;
                                    i16 = i5;
                                    i15 = 1048575;
                                    i14 = -1;
                                    i13 = i2;
                                } else {
                                    i4 = iZza;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                }
                                break;
                            case 1:
                                i9 = i8;
                                i5 = i21;
                                if (i22 == 5) {
                                    zzma.zza((Object) t2, j, zzhl.zzd(bArr2, iZza));
                                    iZza2 = iZza + 4;
                                    i18 |= i26;
                                    unsafe4 = unsafe2;
                                    i17 = i9;
                                    i16 = i5;
                                    i15 = 1048575;
                                    i14 = -1;
                                    i13 = i2;
                                } else {
                                    i4 = iZza;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                }
                                break;
                            case 2:
                            case 3:
                                i9 = i8;
                                i5 = i21;
                                if (i22 == 0) {
                                    int iZzb = zzhl.zzb(bArr2, iZza, zzhnVar2);
                                    unsafe2.putLong(t, j, zzhnVar2.zzb);
                                    i18 |= i26;
                                    unsafe4 = unsafe2;
                                    i17 = i9;
                                    iZza2 = iZzb;
                                    i16 = i5;
                                    i15 = 1048575;
                                    i14 = -1;
                                    i13 = i2;
                                } else {
                                    i4 = iZza;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                }
                                break;
                            case 4:
                            case 11:
                                i9 = i8;
                                i5 = i21;
                                if (i22 == 0) {
                                    iZza2 = zzhl.zza(bArr2, iZza, zzhnVar2);
                                    unsafe2.putInt(t2, j, zzhnVar2.zza);
                                    i18 |= i26;
                                    unsafe4 = unsafe2;
                                    i17 = i9;
                                    i16 = i5;
                                    i15 = 1048575;
                                    i14 = -1;
                                    i13 = i2;
                                } else {
                                    i4 = iZza;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                }
                                break;
                            case 5:
                            case 14:
                                i9 = i8;
                                i5 = i21;
                                if (i22 == 1) {
                                    unsafe2.putLong(t, j, zzhl.zzb(bArr2, iZza));
                                    iZza2 = iZza + 8;
                                    i18 |= i26;
                                    unsafe4 = unsafe2;
                                    i17 = i9;
                                    i16 = i5;
                                    i15 = 1048575;
                                    i14 = -1;
                                    i13 = i2;
                                } else {
                                    i4 = iZza;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                }
                                break;
                            case 6:
                            case 13:
                                i9 = i8;
                                i5 = i21;
                                if (i22 == 5) {
                                    unsafe2.putInt(t2, j, zzhl.zza(bArr2, iZza));
                                    iZza2 = iZza + 4;
                                    i18 |= i26;
                                    unsafe4 = unsafe2;
                                    i16 = i5;
                                    i15 = 1048575;
                                    i14 = -1;
                                    i13 = i2;
                                    i17 = i9;
                                } else {
                                    i4 = iZza;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                }
                                break;
                            case 7:
                                i9 = i8;
                                i5 = i21;
                                if (i22 == 0) {
                                    iZza2 = zzhl.zzb(bArr2, iZza, zzhnVar2);
                                    zzma.zza(t2, j, zzhnVar2.zzb != 0);
                                    i18 |= i26;
                                    unsafe4 = unsafe2;
                                    i16 = i5;
                                    i15 = 1048575;
                                    i14 = -1;
                                    i13 = i2;
                                    i17 = i9;
                                } else {
                                    i4 = iZza;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                }
                                break;
                            case 8:
                                i9 = i8;
                                i5 = i21;
                                if (i22 == 2) {
                                    if ((i7 & Declaration.EARLY_INIT) == 0) {
                                        iZza2 = zzhl.zzc(bArr2, iZza, zzhnVar2);
                                    } else {
                                        iZza2 = zzhl.zzd(bArr2, iZza, zzhnVar2);
                                    }
                                    unsafe2.putObject(t2, j, zzhnVar2.zzc);
                                    i18 |= i26;
                                    unsafe4 = unsafe2;
                                    i16 = i5;
                                    i15 = 1048575;
                                    i14 = -1;
                                    i13 = i2;
                                    i17 = i9;
                                } else {
                                    i4 = iZza;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                }
                                break;
                            case 9:
                                i9 = i8;
                                i5 = i21;
                                if (i22 == 2) {
                                    iZza2 = zzhl.zza(zzkoVar.zza(i9), bArr2, iZza, i2, zzhnVar2);
                                    Object object = unsafe2.getObject(t2, j);
                                    if (object == null) {
                                        unsafe2.putObject(t2, j, zzhnVar2.zzc);
                                    } else {
                                        unsafe2.putObject(t2, j, zzjf.zza(object, zzhnVar2.zzc));
                                    }
                                    i18 |= i26;
                                    unsafe4 = unsafe2;
                                    i16 = i5;
                                    i15 = 1048575;
                                    i14 = -1;
                                    i13 = i2;
                                    i17 = i9;
                                } else {
                                    i4 = iZza;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                }
                                break;
                            case 10:
                                i9 = i8;
                                i5 = i21;
                                if (i22 == 2) {
                                    iZza2 = zzhl.zze(bArr2, iZza, zzhnVar2);
                                    unsafe2.putObject(t2, j, zzhnVar2.zzc);
                                    i18 |= i26;
                                    unsafe4 = unsafe2;
                                    i17 = i9;
                                    i16 = i5;
                                    i15 = 1048575;
                                    i14 = -1;
                                    i13 = i2;
                                } else {
                                    i4 = iZza;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                }
                                break;
                            case 12:
                                i9 = i8;
                                i5 = i21;
                                if (i22 == 0) {
                                    iZza2 = zzhl.zza(bArr2, iZza, zzhnVar2);
                                    unsafe2.putInt(t2, j, zzhnVar2.zza);
                                    i18 |= i26;
                                    unsafe4 = unsafe2;
                                    i17 = i9;
                                    i16 = i5;
                                    i15 = 1048575;
                                    i14 = -1;
                                    i13 = i2;
                                } else {
                                    i4 = iZza;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                }
                                break;
                            case 15:
                                i9 = i8;
                                i5 = i21;
                                if (i22 == 0) {
                                    iZza2 = zzhl.zza(bArr2, iZza, zzhnVar2);
                                    unsafe2.putInt(t2, j, zzif.zze(zzhnVar2.zza));
                                    i18 |= i26;
                                    unsafe4 = unsafe2;
                                    i17 = i9;
                                    i16 = i5;
                                    i15 = 1048575;
                                    i14 = -1;
                                    i13 = i2;
                                } else {
                                    i4 = iZza;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                }
                                break;
                            case 16:
                                if (i22 != 0) {
                                    i9 = i8;
                                    i5 = i21;
                                    i4 = iZza;
                                    unsafe = unsafe2;
                                    i6 = i9;
                                } else {
                                    int iZzb2 = zzhl.zzb(bArr2, iZza, zzhnVar2);
                                    unsafe2.putLong(t, j, zzif.zza(zzhnVar2.zzb));
                                    i18 |= i26;
                                    unsafe4 = unsafe2;
                                    i17 = i8;
                                    iZza2 = iZzb2;
                                    i16 = i21;
                                    i15 = 1048575;
                                    i14 = -1;
                                    i13 = i2;
                                }
                                break;
                            default:
                                i9 = i8;
                                i5 = i21;
                                i4 = iZza;
                                unsafe = unsafe2;
                                i6 = i9;
                                break;
                        }
                    } else {
                        i5 = i21;
                        int i28 = iZzg;
                        if (i24 == 27) {
                            if (i22 != 2) {
                                i10 = iZza;
                                i11 = i19;
                                i12 = i18;
                                unsafe = unsafe5;
                                i6 = i28;
                                i4 = i10;
                                i18 = i12;
                                i19 = i11;
                            } else {
                                zzjl zzjlVarZza = (zzjl) unsafe5.getObject(t2, j);
                                if (!zzjlVarZza.zza()) {
                                    int size = zzjlVarZza.size();
                                    zzjlVarZza = zzjlVarZza.zza(size == 0 ? 10 : size << 1);
                                    unsafe5.putObject(t2, j, zzjlVarZza);
                                }
                                iZza2 = zzhl.zza(zzkoVar.zza(i28), i3, bArr, iZza, i2, zzjlVarZza, zzhnVar);
                                i18 = i18;
                                unsafe4 = unsafe5;
                                i17 = i28;
                                i16 = i5;
                                i15 = 1048575;
                                i14 = -1;
                                i13 = i2;
                            }
                        } else if (i24 <= 49) {
                            int i29 = iZza;
                            int i30 = i18;
                            int i31 = i19;
                            unsafe = unsafe5;
                            i6 = i28;
                            iZza2 = zza(t, bArr, iZza, i2, i3, i5, i22, i28, i23, i24, j, zzhnVar);
                            if (iZza2 != i29) {
                                zzkoVar = this;
                                t2 = t;
                                bArr2 = bArr;
                                i13 = i2;
                                zzhnVar2 = zzhnVar;
                                i17 = i6;
                                i16 = i5;
                                i18 = i30;
                                i19 = i31;
                                unsafe4 = unsafe;
                                i15 = 1048575;
                                i14 = -1;
                            } else {
                                i4 = iZza2;
                                i18 = i30;
                                i19 = i31;
                            }
                        } else {
                            i10 = iZza;
                            i12 = i18;
                            i11 = i19;
                            unsafe = unsafe5;
                            i6 = i28;
                            if (i24 == 50) {
                                if (i22 == 2) {
                                    iZza2 = zza(t, bArr, i10, i2, i6, j, zzhnVar);
                                    if (iZza2 != i10) {
                                        zzkoVar = this;
                                        t2 = t;
                                        bArr2 = bArr;
                                        i13 = i2;
                                        zzhnVar2 = zzhnVar;
                                        i17 = i6;
                                        i16 = i5;
                                        i18 = i12;
                                        i19 = i11;
                                        unsafe4 = unsafe;
                                        i15 = 1048575;
                                        i14 = -1;
                                    } else {
                                        i4 = iZza2;
                                        i18 = i12;
                                        i19 = i11;
                                    }
                                } else {
                                    i4 = i10;
                                    i18 = i12;
                                    i19 = i11;
                                }
                            } else {
                                iZza2 = zza(t, bArr, i10, i2, i3, i5, i22, i23, i24, j, i6, zzhnVar);
                                if (iZza2 == i10) {
                                    i4 = iZza2;
                                    i18 = i12;
                                    i19 = i11;
                                } else {
                                    zzkoVar = this;
                                    t2 = t;
                                    bArr2 = bArr;
                                    i13 = i2;
                                    zzhnVar2 = zzhnVar;
                                    i17 = i6;
                                    i16 = i5;
                                    i18 = i12;
                                    i19 = i11;
                                    unsafe4 = unsafe;
                                    i15 = 1048575;
                                    i14 = -1;
                                }
                            }
                        }
                    }
                }
                iZza2 = zzhl.zza(i3, bArr, i4, i2, zze(t), zzhnVar);
                zzkoVar = this;
                t2 = t;
                bArr2 = bArr;
                i13 = i2;
                zzhnVar2 = zzhnVar;
                i17 = i6;
                i16 = i5;
                unsafe4 = unsafe;
                i15 = 1048575;
                i14 = -1;
            }
            int i32 = i18;
            Unsafe unsafe6 = unsafe4;
            if (i19 != 1048575) {
                unsafe6.putInt(t, i19, i32);
            }
            if (iZza2 != i2) {
                throw zzjk.zzg();
            }
            return;
        }
        zza(t, bArr, i, i2, 0, zzhnVar);
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final void zzc(T t) {
        for (int i = this.zzm; i < this.zzn; i++) {
            long jZzd = zzd(this.zzl[i]) & 1048575;
            Object objZzf = zzma.zzf(t, jZzd);
            if (objZzf != null) {
                zzma.zza(t, jZzd, this.zzs.zze(objZzf));
            }
        }
        int length = this.zzl.length;
        for (int i2 = this.zzn; i2 < length; i2++) {
            this.zzp.zzb(t, this.zzl[i2]);
        }
        this.zzq.zzd(t);
        if (this.zzh) {
            this.zzr.zzc(t);
        }
    }

    private final <UT, UB> UB zza(Object obj, int i, UB ub, zzlu<UT, UB> zzluVar) {
        zzjg zzjgVarZzc;
        int i2 = this.zzc[i];
        Object objZzf = zzma.zzf(obj, zzd(i) & 1048575);
        if (objZzf == null || (zzjgVarZzc = zzc(i)) == null) {
            return ub;
        }
        return (UB) zza(i, i2, this.zzs.zza(objZzf), zzjgVarZzc, ub, zzluVar);
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzjg zzjgVar, UB ub, zzlu<UT, UB> zzluVar) {
        zzkf<?, ?> zzkfVarZzb = this.zzs.zzb(zzb(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzjgVar.zza(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = zzluVar.zza();
                }
                zzib zzibVarZzc = zzht.zzc(zzkc.zza(zzkfVarZzb, next.getKey(), next.getValue()));
                try {
                    zzkc.zza(zzibVarZzc.zzb(), zzkfVarZzb, next.getKey(), next.getValue());
                    zzluVar.zza(ub, i2, zzibVarZzc.zza());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15, types: [com.google.android.gms.internal.vision.zzlc] */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.vision.zzlc] */
    @Override // com.google.android.gms.internal.vision.zzlc
    public final boolean zzd(T t) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            boolean z = true;
            if (i5 >= this.zzm) {
                return !this.zzh || this.zzr.zza(t).zzf();
            }
            int i6 = this.zzl[i5];
            int i7 = this.zzc[i6];
            int iZzd = zzd(i6);
            int i8 = this.zzc[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 == i3) {
                i = i3;
                i2 = i4;
            } else if (i9 == 1048575) {
                i2 = i4;
                i = i9;
            } else {
                i2 = zzb.getInt(t, i9);
                i = i9;
            }
            if (((268435456 & iZzd) != 0) && !zza(t, i6, i, i2, i10)) {
                return false;
            }
            switch ((267386880 & iZzd) >>> 20) {
                case 9:
                case 17:
                    if (zza(t, i6, i, i2, i10) && !zza(t, iZzd, zza(i6))) {
                        return false;
                    }
                    break;
                    break;
                case 27:
                case 49:
                    List list = (List) zzma.zzf(t, iZzd & 1048575);
                    if (!list.isEmpty()) {
                        ?? Zza = zza(i6);
                        int i11 = 0;
                        while (true) {
                            if (i11 < list.size()) {
                                if (!Zza.zzd(list.get(i11))) {
                                    z = false;
                                } else {
                                    i11++;
                                }
                            }
                        }
                    }
                    if (!z) {
                        return false;
                    }
                    break;
                    break;
                case 50:
                    Map<?, ?> mapZzc = this.zzs.zzc(zzma.zzf(t, iZzd & 1048575));
                    if (!mapZzc.isEmpty()) {
                        if (this.zzs.zzb(zzb(i6)).zzc.zza() == zzmo.MESSAGE) {
                            Iterator<?> it = mapZzc.values().iterator();
                            ?? Zza2 = 0;
                            while (true) {
                                if (it.hasNext()) {
                                    Object next = it.next();
                                    Zza2 = Zza2;
                                    if (Zza2 == 0) {
                                        Zza2 = zzky.zza().zza((Class) next.getClass());
                                    }
                                    if (!Zza2.zzd(next)) {
                                        z = false;
                                    }
                                }
                            }
                        }
                    }
                    if (!z) {
                        return false;
                    }
                    break;
                    break;
                case 60:
                case 68:
                    if (zza(t, i7, i6) && !zza(t, iZzd, zza(i6))) {
                        return false;
                    }
                    break;
                    break;
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzlc zzlcVar) {
        return zzlcVar.zzd(zzma.zzf(obj, i & 1048575));
    }

    private static void zza(int i, Object obj, zzmr zzmrVar) throws IOException {
        if (obj instanceof String) {
            zzmrVar.zza(i, (String) obj);
        } else {
            zzmrVar.zza(i, (zzht) obj);
        }
    }

    private final void zza(Object obj, int i, zzld zzldVar) throws IOException {
        if (zzf(i)) {
            zzma.zza(obj, i & 1048575, zzldVar.zzm());
        } else if (this.zzi) {
            zzma.zza(obj, i & 1048575, zzldVar.zzl());
        } else {
            zzma.zza(obj, i & 1048575, zzldVar.zzn());
        }
    }

    private final int zzd(int i) {
        return this.zzc[i + 1];
    }

    private final int zze(int i) {
        return this.zzc[i + 2];
    }

    private static boolean zzf(int i) {
        return (i & Declaration.EARLY_INIT) != 0;
    }

    private static <T> double zzb(T t, long j) {
        return ((Double) zzma.zzf(t, j)).doubleValue();
    }

    private static <T> float zzc(T t, long j) {
        return ((Float) zzma.zzf(t, j)).floatValue();
    }

    private static <T> int zzd(T t, long j) {
        return ((Integer) zzma.zzf(t, j)).intValue();
    }

    private static <T> long zze(T t, long j) {
        return ((Long) zzma.zzf(t, j)).longValue();
    }

    private static <T> boolean zzf(T t, long j) {
        return ((Boolean) zzma.zzf(t, j)).booleanValue();
    }

    private final boolean zzc(T t, T t2, int i) {
        return zza((Object) t, i) == zza((Object) t2, i);
    }

    private final boolean zza(T t, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zza((Object) t, i);
        }
        return (i3 & i4) != 0;
    }

    private final boolean zza(T t, int i) {
        int iZze = zze(i);
        long j = iZze & 1048575;
        if (j != 1048575) {
            return (zzma.zza(t, j) & (1 << (iZze >>> 20))) != 0;
        }
        int iZzd = zzd(i);
        long j2 = iZzd & 1048575;
        switch ((iZzd & 267386880) >>> 20) {
            case 0:
                return zzma.zze(t, j2) != 0.0d;
            case 1:
                return zzma.zzd(t, j2) != 0.0f;
            case 2:
                return zzma.zzb(t, j2) != 0;
            case 3:
                return zzma.zzb(t, j2) != 0;
            case 4:
                return zzma.zza(t, j2) != 0;
            case 5:
                return zzma.zzb(t, j2) != 0;
            case 6:
                return zzma.zza(t, j2) != 0;
            case 7:
                return zzma.zzc(t, j2);
            case 8:
                Object objZzf = zzma.zzf(t, j2);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzht) {
                    return !zzht.zza.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzma.zzf(t, j2) != null;
            case 10:
                return !zzht.zza.equals(zzma.zzf(t, j2));
            case 11:
                return zzma.zza(t, j2) != 0;
            case 12:
                return zzma.zza(t, j2) != 0;
            case 13:
                return zzma.zza(t, j2) != 0;
            case 14:
                return zzma.zzb(t, j2) != 0;
            case 15:
                return zzma.zza(t, j2) != 0;
            case 16:
                return zzma.zzb(t, j2) != 0;
            case 17:
                return zzma.zzf(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final void zzb(T t, int i) {
        int iZze = zze(i);
        long j = 1048575 & iZze;
        if (j == 1048575) {
            return;
        }
        zzma.zza((Object) t, j, (1 << (iZze >>> 20)) | zzma.zza(t, j));
    }

    private final boolean zza(T t, int i, int i2) {
        return zzma.zza(t, (long) (zze(i2) & 1048575)) == i;
    }

    private final void zzb(T t, int i, int i2) {
        zzma.zza((Object) t, zze(i2) & 1048575, i);
    }

    private final int zzg(int i) {
        if (i >= this.zze && i <= this.zzf) {
            return zzb(i, 0);
        }
        return -1;
    }

    private final int zza(int i, int i2) {
        if (i >= this.zze && i <= this.zzf) {
            return zzb(i, i2);
        }
        return -1;
    }

    private final int zzb(int i, int i2) {
        int length = (this.zzc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }
}
