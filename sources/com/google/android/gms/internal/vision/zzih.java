package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
/* JADX INFO: loaded from: classes2.dex */
final class zzih extends zzif {
    private final byte[] zzd;
    private final boolean zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;

    private zzih(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzk = Integer.MAX_VALUE;
        this.zzd = bArr;
        this.zzf = i2 + i;
        this.zzh = i;
        this.zzi = this.zzh;
        this.zze = z;
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final int zza() throws IOException {
        if (zzt()) {
            this.zzj = 0;
            return 0;
        }
        this.zzj = zzv();
        if ((this.zzj >>> 3) == 0) {
            throw zzjk.zzd();
        }
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final void zza(int i) throws zzjk {
        if (this.zzj != i) {
            throw zzjk.zze();
        }
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final boolean zzb(int i) throws IOException {
        int iZza;
        int i2 = 0;
        switch (i & 7) {
            case 0:
                if (this.zzf - this.zzh >= 10) {
                    while (i2 < 10) {
                        byte[] bArr = this.zzd;
                        int i3 = this.zzh;
                        this.zzh = i3 + 1;
                        if (bArr[i3] < 0) {
                            i2++;
                        }
                    }
                    throw zzjk.zzc();
                }
                while (i2 < 10) {
                    if (zzaa() < 0) {
                        i2++;
                    }
                }
                throw zzjk.zzc();
                return true;
            case 1:
                zzf(8);
                return true;
            case 2:
                zzf(zzv());
                return true;
            case 3:
                break;
            case 4:
                return false;
            case 5:
                zzf(4);
                return true;
            default:
                throw zzjk.zzf();
        }
        do {
            iZza = zza();
            if (iZza != 0) {
            }
            zza(((i >>> 3) << 3) | 4);
            return true;
        } while (zzb(iZza));
        zza(((i >>> 3) << 3) | 4);
        return true;
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final double zzb() throws IOException {
        return Double.longBitsToDouble(zzy());
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final float zzc() throws IOException {
        return Float.intBitsToFloat(zzx());
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final long zzd() throws IOException {
        return zzw();
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final long zze() throws IOException {
        return zzw();
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final int zzf() throws IOException {
        return zzv();
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final long zzg() throws IOException {
        return zzy();
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final int zzh() throws IOException {
        return zzx();
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final boolean zzi() throws IOException {
        return zzw() != 0;
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final String zzj() throws IOException {
        int iZzv = zzv();
        if (iZzv > 0 && iZzv <= this.zzf - this.zzh) {
            String str = new String(this.zzd, this.zzh, iZzv, zzjf.zza);
            this.zzh += iZzv;
            return str;
        }
        if (iZzv == 0) {
            return "";
        }
        if (iZzv < 0) {
            throw zzjk.zzb();
        }
        throw zzjk.zza();
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final String zzk() throws IOException {
        int iZzv = zzv();
        if (iZzv > 0 && iZzv <= this.zzf - this.zzh) {
            String strZzb = zzmd.zzb(this.zzd, this.zzh, iZzv);
            this.zzh += iZzv;
            return strZzb;
        }
        if (iZzv == 0) {
            return "";
        }
        if (iZzv <= 0) {
            throw zzjk.zzb();
        }
        throw zzjk.zza();
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final zzht zzl() throws IOException {
        byte[] bArrCopyOfRange;
        int iZzv = zzv();
        if (iZzv > 0 && iZzv <= this.zzf - this.zzh) {
            zzht zzhtVarZza = zzht.zza(this.zzd, this.zzh, iZzv);
            this.zzh += iZzv;
            return zzhtVarZza;
        }
        if (iZzv == 0) {
            return zzht.zza;
        }
        if (iZzv > 0 && iZzv <= this.zzf - this.zzh) {
            int i = this.zzh;
            this.zzh += iZzv;
            bArrCopyOfRange = Arrays.copyOfRange(this.zzd, i, this.zzh);
        } else if (iZzv <= 0) {
            if (iZzv == 0) {
                bArrCopyOfRange = zzjf.zzb;
            } else {
                throw zzjk.zzb();
            }
        } else {
            throw zzjk.zza();
        }
        return zzht.zza(bArrCopyOfRange);
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final int zzm() throws IOException {
        return zzv();
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final int zzn() throws IOException {
        return zzv();
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final int zzo() throws IOException {
        return zzx();
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final long zzp() throws IOException {
        return zzy();
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final int zzq() throws IOException {
        return zze(zzv());
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final long zzr() throws IOException {
        return zza(zzw());
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0068, code lost:
    
        if (r1[r2] >= 0) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006b A[PHI: r2
      0x006b: PHI (r2v7 int) = (r2v6 int), (r2v9 int), (r2v11 int) binds: [B:20:0x004a, B:24:0x0056, B:28:0x0062] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int zzv() throws java.io.IOException {
        /*
            r5 = this;
            int r0 = r5.zzh
            int r1 = r5.zzf
            if (r1 == r0) goto L6f
            byte[] r1 = r5.zzd
            int r2 = r0 + 1
            r0 = r1[r0]
            if (r0 < 0) goto L11
            r5.zzh = r2
            return r0
        L11:
            int r3 = r5.zzf
            int r3 = r3 - r2
            r4 = 9
            if (r3 < r4) goto L6f
            int r3 = r2 + 1
            r2 = r1[r2]
            int r2 = r2 << 7
            r0 = r0 ^ r2
            if (r0 >= 0) goto L24
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L6c
        L24:
            int r2 = r3 + 1
            r3 = r1[r3]
            int r3 = r3 << 14
            r0 = r0 ^ r3
            if (r0 < 0) goto L31
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            r3 = r2
            goto L6c
        L31:
            int r3 = r2 + 1
            r2 = r1[r2]
            int r2 = r2 << 21
            r0 = r0 ^ r2
            if (r0 >= 0) goto L3f
            r1 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r1
            goto L6c
        L3f:
            int r2 = r3 + 1
            r3 = r1[r3]
            int r4 = r3 << 28
            r0 = r0 ^ r4
            r4 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r4
            if (r3 >= 0) goto L6b
            int r3 = r2 + 1
            r2 = r1[r2]
            if (r2 >= 0) goto L6c
            int r2 = r3 + 1
            r3 = r1[r3]
            if (r3 >= 0) goto L6b
            int r3 = r2 + 1
            r2 = r1[r2]
            if (r2 >= 0) goto L6c
            int r2 = r3 + 1
            r3 = r1[r3]
            if (r3 >= 0) goto L6b
            int r3 = r2 + 1
            r1 = r1[r2]
            if (r1 < 0) goto L6f
            goto L6c
        L6b:
            r3 = r2
        L6c:
            r5.zzh = r3
            return r0
        L6f:
            long r0 = r5.zzs()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzih.zzv():int");
    }

    private final long zzw() throws IOException {
        long j;
        int i = this.zzh;
        if (this.zzf != i) {
            byte[] bArr = this.zzd;
            int i2 = i + 1;
            byte b = bArr[i];
            if (b >= 0) {
                this.zzh = i2;
                return b;
            }
            if (this.zzf - i2 >= 9) {
                int i3 = i2 + 1;
                int i4 = b ^ (bArr[i2] << 7);
                if (i4 < 0) {
                    j = i4 ^ (-128);
                } else {
                    int i5 = i3 + 1;
                    int i6 = i4 ^ (bArr[i3] << 14);
                    if (i6 >= 0) {
                        j = i6 ^ 16256;
                        i3 = i5;
                    } else {
                        i3 = i5 + 1;
                        int i7 = i6 ^ (bArr[i5] << 21);
                        if (i7 < 0) {
                            j = i7 ^ (-2080896);
                        } else {
                            long j2 = i7;
                            int i8 = i3 + 1;
                            long j3 = (((long) bArr[i3]) << 28) ^ j2;
                            if (j3 >= 0) {
                                i3 = i8;
                                j = j3 ^ 266354560;
                            } else {
                                int i9 = i8 + 1;
                                long j4 = j3 ^ (((long) bArr[i8]) << 35);
                                if (j4 < 0) {
                                    j = (-34093383808L) ^ j4;
                                    i3 = i9;
                                } else {
                                    int i10 = i9 + 1;
                                    long j5 = j4 ^ (((long) bArr[i9]) << 42);
                                    if (j5 >= 0) {
                                        i3 = i10;
                                        j = j5 ^ 4363953127296L;
                                    } else {
                                        int i11 = i10 + 1;
                                        long j6 = j5 ^ (((long) bArr[i10]) << 49);
                                        if (j6 < 0) {
                                            j = (-558586000294016L) ^ j6;
                                            i3 = i11;
                                        } else {
                                            int i12 = i11 + 1;
                                            long j7 = (j6 ^ (((long) bArr[i11]) << 56)) ^ 71499008037633920L;
                                            if (j7 >= 0) {
                                                i3 = i12;
                                                j = j7;
                                            } else {
                                                int i13 = i12 + 1;
                                                if (bArr[i12] >= 0) {
                                                    j = j7;
                                                    i3 = i13;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                this.zzh = i3;
                return j;
            }
        }
        return zzs();
    }

    @Override // com.google.android.gms.internal.vision.zzif
    final long zzs() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bZzaa = zzaa();
            j |= ((long) (bZzaa & 127)) << i;
            if ((bZzaa & 128) == 0) {
                return j;
            }
        }
        throw zzjk.zzc();
    }

    private final int zzx() throws IOException {
        int i = this.zzh;
        if (this.zzf - i < 4) {
            throw zzjk.zza();
        }
        byte[] bArr = this.zzd;
        this.zzh = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    private final long zzy() throws IOException {
        int i = this.zzh;
        if (this.zzf - i < 8) {
            throw zzjk.zza();
        }
        byte[] bArr = this.zzd;
        this.zzh = i + 8;
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final int zzc(int i) throws zzjk {
        if (i < 0) {
            throw zzjk.zzb();
        }
        int iZzu = i + zzu();
        int i2 = this.zzk;
        if (iZzu > i2) {
            throw zzjk.zza();
        }
        this.zzk = iZzu;
        zzz();
        return i2;
    }

    private final void zzz() {
        this.zzf += this.zzg;
        int i = this.zzf - this.zzi;
        if (i > this.zzk) {
            this.zzg = i - this.zzk;
            this.zzf -= this.zzg;
        } else {
            this.zzg = 0;
        }
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final void zzd(int i) {
        this.zzk = i;
        zzz();
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final boolean zzt() throws IOException {
        return this.zzh == this.zzf;
    }

    @Override // com.google.android.gms.internal.vision.zzif
    public final int zzu() {
        return this.zzh - this.zzi;
    }

    private final byte zzaa() throws IOException {
        if (this.zzh == this.zzf) {
            throw zzjk.zza();
        }
        byte[] bArr = this.zzd;
        int i = this.zzh;
        this.zzh = i + 1;
        return bArr[i];
    }

    private final void zzf(int i) throws IOException {
        if (i >= 0 && i <= this.zzf - this.zzh) {
            this.zzh += i;
        } else {
            if (i < 0) {
                throw zzjk.zzb();
            }
            throw zzjk.zza();
        }
    }
}
