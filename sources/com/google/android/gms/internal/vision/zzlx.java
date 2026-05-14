package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzlx {
    private static final zzlx zza = new zzlx(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    public static zzlx zza() {
        return zza;
    }

    static zzlx zzb() {
        return new zzlx();
    }

    static zzlx zza(zzlx zzlxVar, zzlx zzlxVar2) {
        int i = zzlxVar.zzb + zzlxVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzlxVar.zzc, i);
        System.arraycopy(zzlxVar2.zzc, 0, iArrCopyOf, zzlxVar.zzb, zzlxVar2.zzb);
        Object[] objArrCopyOf = Arrays.copyOf(zzlxVar.zzd, i);
        System.arraycopy(zzlxVar2.zzd, 0, objArrCopyOf, zzlxVar.zzb, zzlxVar2.zzb);
        return new zzlx(i, iArrCopyOf, objArrCopyOf, true);
    }

    private zzlx() {
        this(0, new int[8], new Object[8], true);
    }

    private zzlx(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public final void zzc() {
        this.zzf = false;
    }

    final void zza(zzmr zzmrVar) throws IOException {
        if (zzmrVar.zza() == zzmq.zzb) {
            for (int i = this.zzb - 1; i >= 0; i--) {
                zzmrVar.zza(this.zzc[i] >>> 3, this.zzd[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzmrVar.zza(this.zzc[i2] >>> 3, this.zzd[i2]);
        }
    }

    public final void zzb(zzmr zzmrVar) throws IOException {
        if (this.zzb == 0) {
            return;
        }
        if (zzmrVar.zza() == zzmq.zza) {
            for (int i = 0; i < this.zzb; i++) {
                zza(this.zzc[i], this.zzd[i], zzmrVar);
            }
            return;
        }
        for (int i2 = this.zzb - 1; i2 >= 0; i2--) {
            zza(this.zzc[i2], this.zzd[i2], zzmrVar);
        }
    }

    private static void zza(int i, Object obj, zzmr zzmrVar) throws IOException {
        int i2 = i >>> 3;
        switch (i & 7) {
            case 0:
                zzmrVar.zza(i2, ((Long) obj).longValue());
                return;
            case 1:
                zzmrVar.zzd(i2, ((Long) obj).longValue());
                return;
            case 2:
                zzmrVar.zza(i2, (zzht) obj);
                return;
            case 3:
                if (zzmrVar.zza() == zzmq.zza) {
                    zzmrVar.zza(i2);
                    ((zzlx) obj).zzb(zzmrVar);
                    zzmrVar.zzb(i2);
                    return;
                } else {
                    zzmrVar.zzb(i2);
                    ((zzlx) obj).zzb(zzmrVar);
                    zzmrVar.zza(i2);
                    return;
                }
            case 4:
            default:
                throw new RuntimeException(zzjk.zzf());
            case 5:
                zzmrVar.zzd(i2, ((Integer) obj).intValue());
                return;
        }
    }

    public final int zzd() {
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int iZzd = 0;
        for (int i2 = 0; i2 < this.zzb; i2++) {
            iZzd += zzii.zzd(this.zzc[i2] >>> 3, (zzht) this.zzd[i2]);
        }
        this.zze = iZzd;
        return iZzd;
    }

    public final int zze() {
        int iZze;
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzb; i3++) {
            int i4 = this.zzc[i3];
            int i5 = i4 >>> 3;
            switch (i4 & 7) {
                case 0:
                    iZze = zzii.zze(i5, ((Long) this.zzd[i3]).longValue());
                    break;
                case 1:
                    iZze = zzii.zzg(i5, ((Long) this.zzd[i3]).longValue());
                    break;
                case 2:
                    iZze = zzii.zzc(i5, (zzht) this.zzd[i3]);
                    break;
                case 3:
                    iZze = (zzii.zze(i5) << 1) + ((zzlx) this.zzd[i3]).zze();
                    break;
                case 4:
                default:
                    throw new IllegalStateException(zzjk.zzf());
                case 5:
                    iZze = zzii.zzi(i5, ((Integer) this.zzd[i3]).intValue());
                    break;
            }
            i2 += iZze;
        }
        this.zze = i2;
        return i2;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzlx)) {
            return false;
        }
        zzlx zzlxVar = (zzlx) obj;
        if (this.zzb == zzlxVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzlxVar.zzc;
            int i = this.zzb;
            int i2 = 0;
            while (true) {
                if (i2 < i) {
                    if (iArr[i2] != iArr2[i2]) {
                        z = false;
                        break;
                    }
                    i2++;
                } else {
                    z = true;
                    break;
                }
            }
            if (z) {
                Object[] objArr = this.zzd;
                Object[] objArr2 = zzlxVar.zzd;
                int i3 = this.zzb;
                int i4 = 0;
                while (true) {
                    if (i4 < i3) {
                        if (!objArr[i4].equals(objArr2[i4])) {
                            z2 = false;
                            break;
                        }
                        i4++;
                    } else {
                        z2 = true;
                        break;
                    }
                }
                if (z2) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = (this.zzb + 527) * 31;
        int[] iArr = this.zzc;
        int i2 = this.zzb;
        int iHashCode = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        int i5 = (i + i3) * 31;
        Object[] objArr = this.zzd;
        int i6 = this.zzb;
        for (int i7 = 0; i7 < i6; i7++) {
            iHashCode = (iHashCode * 31) + objArr[i7].hashCode();
        }
        return i5 + iHashCode;
    }

    final void zza(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzkp.zza(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    final void zza(int i, Object obj) {
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
        if (this.zzb == this.zzc.length) {
            int i2 = this.zzb + (this.zzb < 4 ? 8 : this.zzb >> 1);
            this.zzc = Arrays.copyOf(this.zzc, i2);
            this.zzd = Arrays.copyOf(this.zzd, i2);
        }
        this.zzc[this.zzb] = i;
        this.zzd[this.zzb] = obj;
        this.zzb++;
    }
}
