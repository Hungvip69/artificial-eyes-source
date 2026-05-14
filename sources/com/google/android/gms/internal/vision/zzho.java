package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
/* JADX INFO: loaded from: classes2.dex */
final class zzho extends zzhm {
    private final boolean zza;
    private final byte[] zzb;
    private int zzc;
    private final int zzd;
    private int zze;
    private int zzf;
    private int zzg;

    public zzho(ByteBuffer byteBuffer, boolean z) {
        super(null);
        this.zza = true;
        this.zzb = byteBuffer.array();
        int iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
        this.zzc = iArrayOffset;
        this.zzd = iArrayOffset;
        this.zze = byteBuffer.arrayOffset() + byteBuffer.limit();
    }

    private final boolean zzu() {
        return this.zzc == this.zze;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final int zza() throws IOException {
        if (zzu()) {
            return Integer.MAX_VALUE;
        }
        this.zzf = zzv();
        if (this.zzf == this.zzg) {
            return Integer.MAX_VALUE;
        }
        return this.zzf >>> 3;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final int zzb() {
        return this.zzf;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x007a  */
    @Override // com.google.android.gms.internal.vision.zzld
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzc() throws java.io.IOException {
        /*
            r7 = this;
            boolean r0 = r7.zzu()
            r1 = 0
            if (r0 != 0) goto L89
            int r0 = r7.zzf
            int r2 = r7.zzg
            if (r0 != r2) goto Lf
            goto L89
        Lf:
            int r0 = r7.zzf
            r0 = r0 & 7
            r2 = 4
            r3 = 1
            switch(r0) {
                case 0: goto L58;
                case 1: goto L52;
                case 2: goto L4a;
                case 3: goto L21;
                case 4: goto L18;
                case 5: goto L1d;
                default: goto L18;
            }
        L18:
            com.google.android.gms.internal.vision.zzjn r0 = com.google.android.gms.internal.vision.zzjk.zzf()
            throw r0
        L1d:
            r7.zza(r2)
            return r3
        L21:
            int r0 = r7.zzg
            int r1 = r7.zzf
            int r1 = r1 >>> 3
            int r1 = r1 << 3
            r1 = r1 | r2
            r7.zzg = r1
        L2d:
            int r1 = r7.zza()
            r2 = 2147483647(0x7fffffff, float:NaN)
            if (r1 == r2) goto L3c
            boolean r1 = r7.zzc()
            if (r1 != 0) goto L2d
        L3c:
            int r1 = r7.zzf
            int r2 = r7.zzg
            if (r1 != r2) goto L45
            r7.zzg = r0
            return r3
        L45:
            com.google.android.gms.internal.vision.zzjk r0 = com.google.android.gms.internal.vision.zzjk.zzg()
            throw r0
        L4a:
            int r0 = r7.zzv()
            r7.zza(r0)
            return r3
        L52:
            r0 = 8
            r7.zza(r0)
            return r3
        L58:
            int r0 = r7.zze
            int r2 = r7.zzc
            int r0 = r0 - r2
            r2 = 10
            if (r0 < r2) goto L76
            byte[] r0 = r7.zzb
            int r4 = r7.zzc
            r5 = 0
        L67:
            if (r5 >= r2) goto L76
            int r6 = r4 + 1
            r4 = r0[r4]
            if (r4 < 0) goto L72
            r7.zzc = r6
            goto L83
        L72:
            int r5 = r5 + 1
            r4 = r6
            goto L67
        L76:
        L78:
            if (r1 >= r2) goto L84
            byte r0 = r7.zzy()
            if (r0 >= 0) goto L83
            int r1 = r1 + 1
            goto L78
        L83:
            return r3
        L84:
            com.google.android.gms.internal.vision.zzjk r0 = com.google.android.gms.internal.vision.zzjk.zzc()
            throw r0
        L89:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzho.zzc():boolean");
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final double zzd() throws IOException {
        zzc(1);
        return Double.longBitsToDouble(zzaa());
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final float zze() throws IOException {
        zzc(5);
        return Float.intBitsToFloat(zzz());
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final long zzf() throws IOException {
        zzc(0);
        return zzw();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final long zzg() throws IOException {
        zzc(0);
        return zzw();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final int zzh() throws IOException {
        zzc(0);
        return zzv();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final long zzi() throws IOException {
        zzc(1);
        return zzaa();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final int zzj() throws IOException {
        zzc(5);
        return zzz();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final boolean zzk() throws IOException {
        zzc(0);
        return zzv() != 0;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final String zzl() throws IOException {
        return zza(false);
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final String zzm() throws IOException {
        return zza(true);
    }

    private final String zza(boolean z) throws IOException {
        zzc(2);
        int iZzv = zzv();
        if (iZzv == 0) {
            return "";
        }
        zzb(iZzv);
        if (z && !zzmd.zza(this.zzb, this.zzc, this.zzc + iZzv)) {
            throw zzjk.zzh();
        }
        String str = new String(this.zzb, this.zzc, iZzv, zzjf.zza);
        this.zzc += iZzv;
        return str;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final <T> T zza(Class<T> cls, zzio zzioVar) throws IOException {
        zzc(2);
        return (T) zzc(zzky.zza().zza((Class) cls), zzioVar);
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final <T> T zza(zzlc<T> zzlcVar, zzio zzioVar) throws IOException {
        zzc(2);
        return (T) zzc(zzlcVar, zzioVar);
    }

    private final <T> T zzc(zzlc<T> zzlcVar, zzio zzioVar) throws IOException {
        int iZzv = zzv();
        zzb(iZzv);
        int i = this.zze;
        int i2 = this.zzc + iZzv;
        this.zze = i2;
        try {
            T tZza = zzlcVar.zza();
            zzlcVar.zza(tZza, this, zzioVar);
            zzlcVar.zzc(tZza);
            if (this.zzc != i2) {
                throw zzjk.zzg();
            }
            return tZza;
        } finally {
            this.zze = i;
        }
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final <T> T zzb(Class<T> cls, zzio zzioVar) throws IOException {
        zzc(3);
        return (T) zzd(zzky.zza().zza((Class) cls), zzioVar);
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final <T> T zzb(zzlc<T> zzlcVar, zzio zzioVar) throws IOException {
        zzc(3);
        return (T) zzd(zzlcVar, zzioVar);
    }

    private final <T> T zzd(zzlc<T> zzlcVar, zzio zzioVar) throws IOException {
        int i = this.zzg;
        this.zzg = ((this.zzf >>> 3) << 3) | 4;
        try {
            T tZza = zzlcVar.zza();
            zzlcVar.zza(tZza, this, zzioVar);
            zzlcVar.zzc(tZza);
            if (this.zzf != this.zzg) {
                throw zzjk.zzg();
            }
            return tZza;
        } finally {
            this.zzg = i;
        }
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final zzht zzn() throws IOException {
        zzht zzhtVarZza;
        zzc(2);
        int iZzv = zzv();
        if (iZzv == 0) {
            return zzht.zza;
        }
        zzb(iZzv);
        if (this.zza) {
            zzhtVarZza = zzht.zzb(this.zzb, this.zzc, iZzv);
        } else {
            zzhtVarZza = zzht.zza(this.zzb, this.zzc, iZzv);
        }
        this.zzc += iZzv;
        return zzhtVarZza;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final int zzo() throws IOException {
        zzc(0);
        return zzv();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final int zzp() throws IOException {
        zzc(0);
        return zzv();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final int zzq() throws IOException {
        zzc(5);
        return zzz();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final long zzr() throws IOException {
        zzc(1);
        return zzaa();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final int zzs() throws IOException {
        zzc(0);
        return zzif.zze(zzv());
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final long zzt() throws IOException {
        zzc(0);
        return zzif.zza(zzw());
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zza(List<Double> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzin) {
            zzin zzinVar = (zzin) list;
            switch (this.zzf & 7) {
                case 1:
                    break;
                case 2:
                    int iZzv = zzv();
                    zzd(iZzv);
                    int i3 = this.zzc + iZzv;
                    while (this.zzc < i3) {
                        zzinVar.zza(Double.longBitsToDouble(zzac()));
                    }
                    return;
                default:
                    throw zzjk.zzf();
            }
            do {
                zzinVar.zza(zzd());
                if (zzu()) {
                    return;
                } else {
                    i2 = this.zzc;
                }
            } while (zzv() == this.zzf);
            this.zzc = i2;
            return;
        }
        switch (this.zzf & 7) {
            case 1:
                break;
            case 2:
                int iZzv2 = zzv();
                zzd(iZzv2);
                int i4 = this.zzc + iZzv2;
                while (this.zzc < i4) {
                    list.add(Double.valueOf(Double.longBitsToDouble(zzac())));
                }
                return;
            default:
                throw zzjk.zzf();
        }
        do {
            list.add(Double.valueOf(zzd()));
            if (zzu()) {
                return;
            } else {
                i = this.zzc;
            }
        } while (zzv() == this.zzf);
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzb(List<Float> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzja) {
            zzja zzjaVar = (zzja) list;
            switch (this.zzf & 7) {
                case 2:
                    int iZzv = zzv();
                    zze(iZzv);
                    int i3 = this.zzc + iZzv;
                    while (this.zzc < i3) {
                        zzjaVar.zza(Float.intBitsToFloat(zzab()));
                    }
                    return;
                case 5:
                    break;
                default:
                    throw zzjk.zzf();
            }
            do {
                zzjaVar.zza(zze());
                if (zzu()) {
                    return;
                } else {
                    i2 = this.zzc;
                }
            } while (zzv() == this.zzf);
            this.zzc = i2;
            return;
        }
        switch (this.zzf & 7) {
            case 2:
                int iZzv2 = zzv();
                zze(iZzv2);
                int i4 = this.zzc + iZzv2;
                while (this.zzc < i4) {
                    list.add(Float.valueOf(Float.intBitsToFloat(zzab())));
                }
                return;
            case 5:
                break;
            default:
                throw zzjk.zzf();
        }
        do {
            list.add(Float.valueOf(zze()));
            if (zzu()) {
                return;
            } else {
                i = this.zzc;
            }
        } while (zzv() == this.zzf);
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzc(List<Long> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzjy) {
            zzjy zzjyVar = (zzjy) list;
            switch (this.zzf & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzjk.zzf();
                case 2:
                    int iZzv = this.zzc + zzv();
                    while (this.zzc < iZzv) {
                        zzjyVar.zza(zzw());
                    }
                    zzf(iZzv);
                    return;
            }
            do {
                zzjyVar.zza(zzf());
                if (zzu()) {
                    return;
                } else {
                    i2 = this.zzc;
                }
            } while (zzv() == this.zzf);
            this.zzc = i2;
            return;
        }
        switch (this.zzf & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzjk.zzf();
            case 2:
                int iZzv2 = this.zzc + zzv();
                while (this.zzc < iZzv2) {
                    list.add(Long.valueOf(zzw()));
                }
                zzf(iZzv2);
                return;
        }
        do {
            list.add(Long.valueOf(zzf()));
            if (zzu()) {
                return;
            } else {
                i = this.zzc;
            }
        } while (zzv() == this.zzf);
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzd(List<Long> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzjy) {
            zzjy zzjyVar = (zzjy) list;
            switch (this.zzf & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzjk.zzf();
                case 2:
                    int iZzv = this.zzc + zzv();
                    while (this.zzc < iZzv) {
                        zzjyVar.zza(zzw());
                    }
                    zzf(iZzv);
                    return;
            }
            do {
                zzjyVar.zza(zzg());
                if (zzu()) {
                    return;
                } else {
                    i2 = this.zzc;
                }
            } while (zzv() == this.zzf);
            this.zzc = i2;
            return;
        }
        switch (this.zzf & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzjk.zzf();
            case 2:
                int iZzv2 = this.zzc + zzv();
                while (this.zzc < iZzv2) {
                    list.add(Long.valueOf(zzw()));
                }
                zzf(iZzv2);
                return;
        }
        do {
            list.add(Long.valueOf(zzg()));
            if (zzu()) {
                return;
            } else {
                i = this.zzc;
            }
        } while (zzv() == this.zzf);
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zze(List<Integer> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzjd) {
            zzjd zzjdVar = (zzjd) list;
            switch (this.zzf & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzjk.zzf();
                case 2:
                    int iZzv = this.zzc + zzv();
                    while (this.zzc < iZzv) {
                        zzjdVar.zzc(zzv());
                    }
                    zzf(iZzv);
                    return;
            }
            do {
                zzjdVar.zzc(zzh());
                if (zzu()) {
                    return;
                } else {
                    i2 = this.zzc;
                }
            } while (zzv() == this.zzf);
            this.zzc = i2;
            return;
        }
        switch (this.zzf & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzjk.zzf();
            case 2:
                int iZzv2 = this.zzc + zzv();
                while (this.zzc < iZzv2) {
                    list.add(Integer.valueOf(zzv()));
                }
                zzf(iZzv2);
                return;
        }
        do {
            list.add(Integer.valueOf(zzh()));
            if (zzu()) {
                return;
            } else {
                i = this.zzc;
            }
        } while (zzv() == this.zzf);
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzf(List<Long> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzjy) {
            zzjy zzjyVar = (zzjy) list;
            switch (this.zzf & 7) {
                case 1:
                    break;
                case 2:
                    int iZzv = zzv();
                    zzd(iZzv);
                    int i3 = this.zzc + iZzv;
                    while (this.zzc < i3) {
                        zzjyVar.zza(zzac());
                    }
                    return;
                default:
                    throw zzjk.zzf();
            }
            do {
                zzjyVar.zza(zzi());
                if (zzu()) {
                    return;
                } else {
                    i2 = this.zzc;
                }
            } while (zzv() == this.zzf);
            this.zzc = i2;
            return;
        }
        switch (this.zzf & 7) {
            case 1:
                break;
            case 2:
                int iZzv2 = zzv();
                zzd(iZzv2);
                int i4 = this.zzc + iZzv2;
                while (this.zzc < i4) {
                    list.add(Long.valueOf(zzac()));
                }
                return;
            default:
                throw zzjk.zzf();
        }
        do {
            list.add(Long.valueOf(zzi()));
            if (zzu()) {
                return;
            } else {
                i = this.zzc;
            }
        } while (zzv() == this.zzf);
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzg(List<Integer> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzjd) {
            zzjd zzjdVar = (zzjd) list;
            switch (this.zzf & 7) {
                case 2:
                    int iZzv = zzv();
                    zze(iZzv);
                    int i3 = this.zzc + iZzv;
                    while (this.zzc < i3) {
                        zzjdVar.zzc(zzab());
                    }
                    return;
                case 5:
                    break;
                default:
                    throw zzjk.zzf();
            }
            do {
                zzjdVar.zzc(zzj());
                if (zzu()) {
                    return;
                } else {
                    i2 = this.zzc;
                }
            } while (zzv() == this.zzf);
            this.zzc = i2;
            return;
        }
        switch (this.zzf & 7) {
            case 2:
                int iZzv2 = zzv();
                zze(iZzv2);
                int i4 = this.zzc + iZzv2;
                while (this.zzc < i4) {
                    list.add(Integer.valueOf(zzab()));
                }
                return;
            case 5:
                break;
            default:
                throw zzjk.zzf();
        }
        do {
            list.add(Integer.valueOf(zzj()));
            if (zzu()) {
                return;
            } else {
                i = this.zzc;
            }
        } while (zzv() == this.zzf);
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzh(List<Boolean> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzhr) {
            zzhr zzhrVar = (zzhr) list;
            switch (this.zzf & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzjk.zzf();
                case 2:
                    int iZzv = this.zzc + zzv();
                    while (this.zzc < iZzv) {
                        zzhrVar.zza(zzv() != 0);
                    }
                    zzf(iZzv);
                    return;
            }
            do {
                zzhrVar.zza(zzk());
                if (zzu()) {
                    return;
                } else {
                    i2 = this.zzc;
                }
            } while (zzv() == this.zzf);
            this.zzc = i2;
            return;
        }
        switch (this.zzf & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzjk.zzf();
            case 2:
                int iZzv2 = this.zzc + zzv();
                while (this.zzc < iZzv2) {
                    list.add(Boolean.valueOf(zzv() != 0));
                }
                zzf(iZzv2);
                return;
        }
        do {
            list.add(Boolean.valueOf(zzk()));
            if (zzu()) {
                return;
            } else {
                i = this.zzc;
            }
        } while (zzv() == this.zzf);
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzi(List<String> list) throws IOException {
        zza(list, false);
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzj(List<String> list) throws IOException {
        zza(list, true);
    }

    private final void zza(List<String> list, boolean z) throws IOException {
        int i;
        int i2;
        if ((this.zzf & 7) != 2) {
            throw zzjk.zzf();
        }
        if ((list instanceof zzjv) && !z) {
            zzjv zzjvVar = (zzjv) list;
            do {
                zzjvVar.zza(zzn());
                if (zzu()) {
                    return;
                } else {
                    i2 = this.zzc;
                }
            } while (zzv() == this.zzf);
            this.zzc = i2;
            return;
        }
        do {
            list.add(zza(z));
            if (zzu()) {
                return;
            } else {
                i = this.zzc;
            }
        } while (zzv() == this.zzf);
        this.zzc = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.vision.zzld
    public final <T> void zza(List<T> list, zzlc<T> zzlcVar, zzio zzioVar) throws IOException {
        int i;
        if ((this.zzf & 7) != 2) {
            throw zzjk.zzf();
        }
        int i2 = this.zzf;
        do {
            list.add(zzc(zzlcVar, zzioVar));
            if (zzu()) {
                return;
            } else {
                i = this.zzc;
            }
        } while (zzv() == i2);
        this.zzc = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.vision.zzld
    public final <T> void zzb(List<T> list, zzlc<T> zzlcVar, zzio zzioVar) throws IOException {
        int i;
        if ((this.zzf & 7) != 3) {
            throw zzjk.zzf();
        }
        int i2 = this.zzf;
        do {
            list.add(zzd(zzlcVar, zzioVar));
            if (zzu()) {
                return;
            } else {
                i = this.zzc;
            }
        } while (zzv() == i2);
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzk(List<zzht> list) throws IOException {
        int i;
        if ((this.zzf & 7) != 2) {
            throw zzjk.zzf();
        }
        do {
            list.add(zzn());
            if (zzu()) {
                return;
            } else {
                i = this.zzc;
            }
        } while (zzv() == this.zzf);
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzl(List<Integer> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzjd) {
            zzjd zzjdVar = (zzjd) list;
            switch (this.zzf & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzjk.zzf();
                case 2:
                    int iZzv = this.zzc + zzv();
                    while (this.zzc < iZzv) {
                        zzjdVar.zzc(zzv());
                    }
                    return;
            }
            do {
                zzjdVar.zzc(zzo());
                if (zzu()) {
                    return;
                } else {
                    i2 = this.zzc;
                }
            } while (zzv() == this.zzf);
            this.zzc = i2;
            return;
        }
        switch (this.zzf & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzjk.zzf();
            case 2:
                int iZzv2 = this.zzc + zzv();
                while (this.zzc < iZzv2) {
                    list.add(Integer.valueOf(zzv()));
                }
                return;
        }
        do {
            list.add(Integer.valueOf(zzo()));
            if (zzu()) {
                return;
            } else {
                i = this.zzc;
            }
        } while (zzv() == this.zzf);
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzm(List<Integer> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzjd) {
            zzjd zzjdVar = (zzjd) list;
            switch (this.zzf & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzjk.zzf();
                case 2:
                    int iZzv = this.zzc + zzv();
                    while (this.zzc < iZzv) {
                        zzjdVar.zzc(zzv());
                    }
                    return;
            }
            do {
                zzjdVar.zzc(zzp());
                if (zzu()) {
                    return;
                } else {
                    i2 = this.zzc;
                }
            } while (zzv() == this.zzf);
            this.zzc = i2;
            return;
        }
        switch (this.zzf & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzjk.zzf();
            case 2:
                int iZzv2 = this.zzc + zzv();
                while (this.zzc < iZzv2) {
                    list.add(Integer.valueOf(zzv()));
                }
                return;
        }
        do {
            list.add(Integer.valueOf(zzp()));
            if (zzu()) {
                return;
            } else {
                i = this.zzc;
            }
        } while (zzv() == this.zzf);
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzn(List<Integer> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzjd) {
            zzjd zzjdVar = (zzjd) list;
            switch (this.zzf & 7) {
                case 2:
                    int iZzv = zzv();
                    zze(iZzv);
                    int i3 = this.zzc + iZzv;
                    while (this.zzc < i3) {
                        zzjdVar.zzc(zzab());
                    }
                    return;
                case 5:
                    break;
                default:
                    throw zzjk.zzf();
            }
            do {
                zzjdVar.zzc(zzq());
                if (zzu()) {
                    return;
                } else {
                    i2 = this.zzc;
                }
            } while (zzv() == this.zzf);
            this.zzc = i2;
            return;
        }
        switch (this.zzf & 7) {
            case 2:
                int iZzv2 = zzv();
                zze(iZzv2);
                int i4 = this.zzc + iZzv2;
                while (this.zzc < i4) {
                    list.add(Integer.valueOf(zzab()));
                }
                return;
            case 5:
                break;
            default:
                throw zzjk.zzf();
        }
        do {
            list.add(Integer.valueOf(zzq()));
            if (zzu()) {
                return;
            } else {
                i = this.zzc;
            }
        } while (zzv() == this.zzf);
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzo(List<Long> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzjy) {
            zzjy zzjyVar = (zzjy) list;
            switch (this.zzf & 7) {
                case 1:
                    break;
                case 2:
                    int iZzv = zzv();
                    zzd(iZzv);
                    int i3 = this.zzc + iZzv;
                    while (this.zzc < i3) {
                        zzjyVar.zza(zzac());
                    }
                    return;
                default:
                    throw zzjk.zzf();
            }
            do {
                zzjyVar.zza(zzr());
                if (zzu()) {
                    return;
                } else {
                    i2 = this.zzc;
                }
            } while (zzv() == this.zzf);
            this.zzc = i2;
            return;
        }
        switch (this.zzf & 7) {
            case 1:
                break;
            case 2:
                int iZzv2 = zzv();
                zzd(iZzv2);
                int i4 = this.zzc + iZzv2;
                while (this.zzc < i4) {
                    list.add(Long.valueOf(zzac()));
                }
                return;
            default:
                throw zzjk.zzf();
        }
        do {
            list.add(Long.valueOf(zzr()));
            if (zzu()) {
                return;
            } else {
                i = this.zzc;
            }
        } while (zzv() == this.zzf);
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzp(List<Integer> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzjd) {
            zzjd zzjdVar = (zzjd) list;
            switch (this.zzf & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzjk.zzf();
                case 2:
                    int iZzv = this.zzc + zzv();
                    while (this.zzc < iZzv) {
                        zzjdVar.zzc(zzif.zze(zzv()));
                    }
                    return;
            }
            do {
                zzjdVar.zzc(zzs());
                if (zzu()) {
                    return;
                } else {
                    i2 = this.zzc;
                }
            } while (zzv() == this.zzf);
            this.zzc = i2;
            return;
        }
        switch (this.zzf & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzjk.zzf();
            case 2:
                int iZzv2 = this.zzc + zzv();
                while (this.zzc < iZzv2) {
                    list.add(Integer.valueOf(zzif.zze(zzv())));
                }
                return;
        }
        do {
            list.add(Integer.valueOf(zzs()));
            if (zzu()) {
                return;
            } else {
                i = this.zzc;
            }
        } while (zzv() == this.zzf);
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzq(List<Long> list) throws IOException {
        int i;
        int i2;
        if (list instanceof zzjy) {
            zzjy zzjyVar = (zzjy) list;
            switch (this.zzf & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzjk.zzf();
                case 2:
                    int iZzv = this.zzc + zzv();
                    while (this.zzc < iZzv) {
                        zzjyVar.zza(zzif.zza(zzw()));
                    }
                    return;
            }
            do {
                zzjyVar.zza(zzt());
                if (zzu()) {
                    return;
                } else {
                    i2 = this.zzc;
                }
            } while (zzv() == this.zzf);
            this.zzc = i2;
            return;
        }
        switch (this.zzf & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzjk.zzf();
            case 2:
                int iZzv2 = this.zzc + zzv();
                while (this.zzc < iZzv2) {
                    list.add(Long.valueOf(zzif.zza(zzw())));
                }
                return;
        }
        do {
            list.add(Long.valueOf(zzt()));
            if (zzu()) {
                return;
            } else {
                i = this.zzc;
            }
        } while (zzv() == this.zzf);
        this.zzc = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.vision.zzld
    public final <K, V> void zza(Map<K, V> map, zzkf<K, V> zzkfVar, zzio zzioVar) throws IOException {
        Object objZza;
        Object objZza2;
        zzc(2);
        int iZzv = zzv();
        zzb(iZzv);
        int i = this.zze;
        this.zze = this.zzc + iZzv;
        try {
            objZza = zzkfVar.zzb;
            objZza2 = zzkfVar.zzd;
        } finally {
        }
        while (true) {
            int iZza = zza();
            if (iZza != Integer.MAX_VALUE) {
                switch (iZza) {
                    case 1:
                        objZza = zza(zzkfVar.zza, (Class<?>) null, (zzio) null);
                        continue;
                    case 2:
                        objZza2 = zza(zzkfVar.zzc, zzkfVar.zzd.getClass(), zzioVar);
                        continue;
                    default:
                        try {
                            if (!zzc()) {
                                throw new zzjk("Unable to parse map entry.");
                            }
                            continue;
                        } catch (zzjn e) {
                            if (!zzc()) {
                                throw new zzjk("Unable to parse map entry.");
                            }
                        }
                }
                this.zze = i;
            }
            map.put(objZza, objZza2);
            return;
        }
    }

    private final Object zza(zzml zzmlVar, Class<?> cls, zzio zzioVar) throws IOException {
        switch (zzhp.zza[zzmlVar.ordinal()]) {
            case 1:
                return Boolean.valueOf(zzk());
            case 2:
                return zzn();
            case 3:
                return Double.valueOf(zzd());
            case 4:
                return Integer.valueOf(zzp());
            case 5:
                return Integer.valueOf(zzj());
            case 6:
                return Long.valueOf(zzi());
            case 7:
                return Float.valueOf(zze());
            case 8:
                return Integer.valueOf(zzh());
            case 9:
                return Long.valueOf(zzg());
            case 10:
                return zza(cls, zzioVar);
            case 11:
                return Integer.valueOf(zzq());
            case 12:
                return Long.valueOf(zzr());
            case 13:
                return Integer.valueOf(zzs());
            case 14:
                return Long.valueOf(zzt());
            case 15:
                return zza(true);
            case 16:
                return Integer.valueOf(zzo());
            case 17:
                return Long.valueOf(zzf());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x008a A[PHI: r2
      0x008a: PHI (r2v4 int) = (r2v3 int), (r2v5 int), (r2v6 int) binds: [B:22:0x005a, B:26:0x006a, B:30:0x007a] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int zzv() throws java.io.IOException {
        /*
            r4 = this;
            int r0 = r4.zzc
            int r1 = r4.zze
            int r2 = r4.zzc
            if (r1 == r2) goto L8e
            byte[] r1 = r4.zzb
            int r2 = r0 + 1
            r0 = r1[r0]
            if (r0 < 0) goto L13
            r4.zzc = r2
            return r0
        L13:
            int r1 = r4.zze
            int r1 = r1 - r2
            r3 = 9
            if (r1 >= r3) goto L20
            long r0 = r4.zzx()
            int r1 = (int) r0
            return r1
        L20:
            byte[] r1 = r4.zzb
            int r3 = r2 + 1
            r1 = r1[r2]
            int r1 = r1 << 7
            r0 = r0 ^ r1
            if (r0 >= 0) goto L2e
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L8b
        L2e:
            byte[] r1 = r4.zzb
            int r2 = r3 + 1
            r1 = r1[r3]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L3d
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
            r3 = r2
            goto L8b
        L3d:
            byte[] r1 = r4.zzb
            int r3 = r2 + 1
            r1 = r1[r2]
            int r1 = r1 << 21
            r0 = r0 ^ r1
            if (r0 >= 0) goto L4d
            r1 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r1
            goto L8b
        L4d:
            byte[] r1 = r4.zzb
            int r2 = r3 + 1
            r1 = r1[r3]
            int r3 = r1 << 28
            r0 = r0 ^ r3
            r3 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r3
            if (r1 >= 0) goto L8a
            byte[] r1 = r4.zzb
            int r3 = r2 + 1
            r1 = r1[r2]
            if (r1 >= 0) goto L8b
            byte[] r1 = r4.zzb
            int r2 = r3 + 1
            r1 = r1[r3]
            if (r1 >= 0) goto L8a
            byte[] r1 = r4.zzb
            int r3 = r2 + 1
            r1 = r1[r2]
            if (r1 >= 0) goto L8b
            byte[] r1 = r4.zzb
            int r2 = r3 + 1
            r1 = r1[r3]
            if (r1 >= 0) goto L8a
            byte[] r1 = r4.zzb
            int r3 = r2 + 1
            r1 = r1[r2]
            if (r1 < 0) goto L85
            goto L8b
        L85:
            com.google.android.gms.internal.vision.zzjk r0 = com.google.android.gms.internal.vision.zzjk.zzc()
            throw r0
        L8a:
            r3 = r2
        L8b:
            r4.zzc = r3
            return r0
        L8e:
            com.google.android.gms.internal.vision.zzjk r0 = com.google.android.gms.internal.vision.zzjk.zza()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzho.zzv():int");
    }

    private final long zzw() throws IOException {
        long j;
        int i = this.zzc;
        if (this.zze == i) {
            throw zzjk.zza();
        }
        byte[] bArr = this.zzb;
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            this.zzc = i2;
            return b;
        }
        if (this.zze - i2 < 9) {
            return zzx();
        }
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
                                        if (bArr[i12] < 0) {
                                            throw zzjk.zzc();
                                        }
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
        this.zzc = i3;
        return j;
    }

    private final long zzx() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bZzy = zzy();
            j |= ((long) (bZzy & 127)) << i;
            if ((bZzy & 128) == 0) {
                return j;
            }
        }
        throw zzjk.zzc();
    }

    private final byte zzy() throws IOException {
        if (this.zzc == this.zze) {
            throw zzjk.zza();
        }
        byte[] bArr = this.zzb;
        int i = this.zzc;
        this.zzc = i + 1;
        return bArr[i];
    }

    private final int zzz() throws IOException {
        zzb(4);
        return zzab();
    }

    private final long zzaa() throws IOException {
        zzb(8);
        return zzac();
    }

    private final int zzab() {
        int i = this.zzc;
        byte[] bArr = this.zzb;
        this.zzc = i + 4;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    private final long zzac() {
        int i = this.zzc;
        byte[] bArr = this.zzb;
        this.zzc = i + 8;
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    private final void zza(int i) throws IOException {
        zzb(i);
        this.zzc += i;
    }

    private final void zzb(int i) throws IOException {
        if (i < 0 || i > this.zze - this.zzc) {
            throw zzjk.zza();
        }
    }

    private final void zzc(int i) throws IOException {
        if ((this.zzf & 7) != i) {
            throw zzjk.zzf();
        }
    }

    private final void zzd(int i) throws IOException {
        zzb(i);
        if ((i & 7) != 0) {
            throw zzjk.zzg();
        }
    }

    private final void zze(int i) throws IOException {
        zzb(i);
        if ((i & 3) != 0) {
            throw zzjk.zzg();
        }
    }

    private final void zzf(int i) throws IOException {
        if (this.zzc != i) {
            throw zzjk.zza();
        }
    }
}
