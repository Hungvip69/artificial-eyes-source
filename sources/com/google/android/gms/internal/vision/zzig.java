package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
/* JADX INFO: loaded from: classes2.dex */
final class zzig implements zzld {
    private final zzif zza;
    private int zzb;
    private int zzc;
    private int zzd = 0;

    public static zzig zza(zzif zzifVar) {
        return zzifVar.zzc != null ? zzifVar.zzc : new zzig(zzifVar);
    }

    private zzig(zzif zzifVar) {
        this.zza = (zzif) zzjf.zza(zzifVar, "input");
        this.zza.zzc = this;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final int zza() throws IOException {
        if (this.zzd != 0) {
            this.zzb = this.zzd;
            this.zzd = 0;
        } else {
            this.zzb = this.zza.zza();
        }
        if (this.zzb == 0 || this.zzb == this.zzc) {
            return Integer.MAX_VALUE;
        }
        return this.zzb >>> 3;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final boolean zzc() throws IOException {
        if (this.zza.zzt() || this.zzb == this.zzc) {
            return false;
        }
        return this.zza.zzb(this.zzb);
    }

    private final void zza(int i) throws IOException {
        if ((this.zzb & 7) != i) {
            throw zzjk.zzf();
        }
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final double zzd() throws IOException {
        zza(1);
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final float zze() throws IOException {
        zza(5);
        return this.zza.zzc();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final long zzf() throws IOException {
        zza(0);
        return this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final long zzg() throws IOException {
        zza(0);
        return this.zza.zze();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final int zzh() throws IOException {
        zza(0);
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final long zzi() throws IOException {
        zza(1);
        return this.zza.zzg();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final int zzj() throws IOException {
        zza(5);
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final boolean zzk() throws IOException {
        zza(0);
        return this.zza.zzi();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final String zzl() throws IOException {
        zza(2);
        return this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final String zzm() throws IOException {
        zza(2);
        return this.zza.zzk();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final <T> T zza(Class<T> cls, zzio zzioVar) throws IOException {
        zza(2);
        return (T) zzc(zzky.zza().zza((Class) cls), zzioVar);
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final <T> T zza(zzlc<T> zzlcVar, zzio zzioVar) throws IOException {
        zza(2);
        return (T) zzc(zzlcVar, zzioVar);
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final <T> T zzb(Class<T> cls, zzio zzioVar) throws IOException {
        zza(3);
        return (T) zzd(zzky.zza().zza((Class) cls), zzioVar);
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final <T> T zzb(zzlc<T> zzlcVar, zzio zzioVar) throws IOException {
        zza(3);
        return (T) zzd(zzlcVar, zzioVar);
    }

    private final <T> T zzc(zzlc<T> zzlcVar, zzio zzioVar) throws IOException {
        int iZzm = this.zza.zzm();
        if (this.zza.zza >= this.zza.zzb) {
            throw new zzjk("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int iZzc = this.zza.zzc(iZzm);
        T tZza = zzlcVar.zza();
        this.zza.zza++;
        zzlcVar.zza(tZza, this, zzioVar);
        zzlcVar.zzc(tZza);
        this.zza.zza(0);
        zzif zzifVar = this.zza;
        zzifVar.zza--;
        this.zza.zzd(iZzc);
        return tZza;
    }

    private final <T> T zzd(zzlc<T> zzlcVar, zzio zzioVar) throws IOException {
        int i = this.zzc;
        this.zzc = ((this.zzb >>> 3) << 3) | 4;
        try {
            T tZza = zzlcVar.zza();
            zzlcVar.zza(tZza, this, zzioVar);
            zzlcVar.zzc(tZza);
            if (this.zzb != this.zzc) {
                throw zzjk.zzg();
            }
            return tZza;
        } finally {
            this.zzc = i;
        }
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final zzht zzn() throws IOException {
        zza(2);
        return this.zza.zzl();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final int zzo() throws IOException {
        zza(0);
        return this.zza.zzm();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final int zzp() throws IOException {
        zza(0);
        return this.zza.zzn();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final int zzq() throws IOException {
        zza(5);
        return this.zza.zzo();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final long zzr() throws IOException {
        zza(1);
        return this.zza.zzp();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final int zzs() throws IOException {
        zza(0);
        return this.zza.zzq();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final long zzt() throws IOException {
        zza(0);
        return this.zza.zzr();
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zza(List<Double> list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzin) {
            zzin zzinVar = (zzin) list;
            switch (this.zzb & 7) {
                case 1:
                    break;
                case 2:
                    int iZzm = this.zza.zzm();
                    zzb(iZzm);
                    int iZzu = this.zza.zzu() + iZzm;
                    do {
                        zzinVar.zza(this.zza.zzb());
                    } while (this.zza.zzu() < iZzu);
                    return;
                default:
                    throw zzjk.zzf();
            }
            do {
                zzinVar.zza(this.zza.zzb());
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZza2 = this.zza.zza();
                }
            } while (iZza2 == this.zzb);
            this.zzd = iZza2;
            return;
        }
        switch (this.zzb & 7) {
            case 1:
                break;
            case 2:
                int iZzm2 = this.zza.zzm();
                zzb(iZzm2);
                int iZzu2 = this.zza.zzu() + iZzm2;
                do {
                    list.add(Double.valueOf(this.zza.zzb()));
                } while (this.zza.zzu() < iZzu2);
                return;
            default:
                throw zzjk.zzf();
        }
        do {
            list.add(Double.valueOf(this.zza.zzb()));
            if (this.zza.zzt()) {
                return;
            } else {
                iZza = this.zza.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzb(List<Float> list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzja) {
            zzja zzjaVar = (zzja) list;
            switch (this.zzb & 7) {
                case 2:
                    int iZzm = this.zza.zzm();
                    zzc(iZzm);
                    int iZzu = this.zza.zzu() + iZzm;
                    do {
                        zzjaVar.zza(this.zza.zzc());
                    } while (this.zza.zzu() < iZzu);
                    return;
                case 5:
                    break;
                default:
                    throw zzjk.zzf();
            }
            do {
                zzjaVar.zza(this.zza.zzc());
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZza2 = this.zza.zza();
                }
            } while (iZza2 == this.zzb);
            this.zzd = iZza2;
            return;
        }
        switch (this.zzb & 7) {
            case 2:
                int iZzm2 = this.zza.zzm();
                zzc(iZzm2);
                int iZzu2 = this.zza.zzu() + iZzm2;
                do {
                    list.add(Float.valueOf(this.zza.zzc()));
                } while (this.zza.zzu() < iZzu2);
                return;
            case 5:
                break;
            default:
                throw zzjk.zzf();
        }
        do {
            list.add(Float.valueOf(this.zza.zzc()));
            if (this.zza.zzt()) {
                return;
            } else {
                iZza = this.zza.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzc(List<Long> list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzjy) {
            zzjy zzjyVar = (zzjy) list;
            switch (this.zzb & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzjk.zzf();
                case 2:
                    int iZzu = this.zza.zzu() + this.zza.zzm();
                    do {
                        zzjyVar.zza(this.zza.zzd());
                    } while (this.zza.zzu() < iZzu);
                    zzd(iZzu);
                    return;
            }
            do {
                zzjyVar.zza(this.zza.zzd());
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZza2 = this.zza.zza();
                }
            } while (iZza2 == this.zzb);
            this.zzd = iZza2;
            return;
        }
        switch (this.zzb & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzjk.zzf();
            case 2:
                int iZzu2 = this.zza.zzu() + this.zza.zzm();
                do {
                    list.add(Long.valueOf(this.zza.zzd()));
                } while (this.zza.zzu() < iZzu2);
                zzd(iZzu2);
                return;
        }
        do {
            list.add(Long.valueOf(this.zza.zzd()));
            if (this.zza.zzt()) {
                return;
            } else {
                iZza = this.zza.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzd(List<Long> list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzjy) {
            zzjy zzjyVar = (zzjy) list;
            switch (this.zzb & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzjk.zzf();
                case 2:
                    int iZzu = this.zza.zzu() + this.zza.zzm();
                    do {
                        zzjyVar.zza(this.zza.zze());
                    } while (this.zza.zzu() < iZzu);
                    zzd(iZzu);
                    return;
            }
            do {
                zzjyVar.zza(this.zza.zze());
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZza2 = this.zza.zza();
                }
            } while (iZza2 == this.zzb);
            this.zzd = iZza2;
            return;
        }
        switch (this.zzb & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzjk.zzf();
            case 2:
                int iZzu2 = this.zza.zzu() + this.zza.zzm();
                do {
                    list.add(Long.valueOf(this.zza.zze()));
                } while (this.zza.zzu() < iZzu2);
                zzd(iZzu2);
                return;
        }
        do {
            list.add(Long.valueOf(this.zza.zze()));
            if (this.zza.zzt()) {
                return;
            } else {
                iZza = this.zza.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zze(List<Integer> list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzjd) {
            zzjd zzjdVar = (zzjd) list;
            switch (this.zzb & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzjk.zzf();
                case 2:
                    int iZzu = this.zza.zzu() + this.zza.zzm();
                    do {
                        zzjdVar.zzc(this.zza.zzf());
                    } while (this.zza.zzu() < iZzu);
                    zzd(iZzu);
                    return;
            }
            do {
                zzjdVar.zzc(this.zza.zzf());
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZza2 = this.zza.zza();
                }
            } while (iZza2 == this.zzb);
            this.zzd = iZza2;
            return;
        }
        switch (this.zzb & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzjk.zzf();
            case 2:
                int iZzu2 = this.zza.zzu() + this.zza.zzm();
                do {
                    list.add(Integer.valueOf(this.zza.zzf()));
                } while (this.zza.zzu() < iZzu2);
                zzd(iZzu2);
                return;
        }
        do {
            list.add(Integer.valueOf(this.zza.zzf()));
            if (this.zza.zzt()) {
                return;
            } else {
                iZza = this.zza.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzf(List<Long> list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzjy) {
            zzjy zzjyVar = (zzjy) list;
            switch (this.zzb & 7) {
                case 1:
                    break;
                case 2:
                    int iZzm = this.zza.zzm();
                    zzb(iZzm);
                    int iZzu = this.zza.zzu() + iZzm;
                    do {
                        zzjyVar.zza(this.zza.zzg());
                    } while (this.zza.zzu() < iZzu);
                    return;
                default:
                    throw zzjk.zzf();
            }
            do {
                zzjyVar.zza(this.zza.zzg());
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZza2 = this.zza.zza();
                }
            } while (iZza2 == this.zzb);
            this.zzd = iZza2;
            return;
        }
        switch (this.zzb & 7) {
            case 1:
                break;
            case 2:
                int iZzm2 = this.zza.zzm();
                zzb(iZzm2);
                int iZzu2 = this.zza.zzu() + iZzm2;
                do {
                    list.add(Long.valueOf(this.zza.zzg()));
                } while (this.zza.zzu() < iZzu2);
                return;
            default:
                throw zzjk.zzf();
        }
        do {
            list.add(Long.valueOf(this.zza.zzg()));
            if (this.zza.zzt()) {
                return;
            } else {
                iZza = this.zza.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzg(List<Integer> list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzjd) {
            zzjd zzjdVar = (zzjd) list;
            switch (this.zzb & 7) {
                case 2:
                    int iZzm = this.zza.zzm();
                    zzc(iZzm);
                    int iZzu = this.zza.zzu() + iZzm;
                    do {
                        zzjdVar.zzc(this.zza.zzh());
                    } while (this.zza.zzu() < iZzu);
                    return;
                case 5:
                    break;
                default:
                    throw zzjk.zzf();
            }
            do {
                zzjdVar.zzc(this.zza.zzh());
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZza2 = this.zza.zza();
                }
            } while (iZza2 == this.zzb);
            this.zzd = iZza2;
            return;
        }
        switch (this.zzb & 7) {
            case 2:
                int iZzm2 = this.zza.zzm();
                zzc(iZzm2);
                int iZzu2 = this.zza.zzu() + iZzm2;
                do {
                    list.add(Integer.valueOf(this.zza.zzh()));
                } while (this.zza.zzu() < iZzu2);
                return;
            case 5:
                break;
            default:
                throw zzjk.zzf();
        }
        do {
            list.add(Integer.valueOf(this.zza.zzh()));
            if (this.zza.zzt()) {
                return;
            } else {
                iZza = this.zza.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzh(List<Boolean> list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzhr) {
            zzhr zzhrVar = (zzhr) list;
            switch (this.zzb & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzjk.zzf();
                case 2:
                    int iZzu = this.zza.zzu() + this.zza.zzm();
                    do {
                        zzhrVar.zza(this.zza.zzi());
                    } while (this.zza.zzu() < iZzu);
                    zzd(iZzu);
                    return;
            }
            do {
                zzhrVar.zza(this.zza.zzi());
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZza2 = this.zza.zza();
                }
            } while (iZza2 == this.zzb);
            this.zzd = iZza2;
            return;
        }
        switch (this.zzb & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzjk.zzf();
            case 2:
                int iZzu2 = this.zza.zzu() + this.zza.zzm();
                do {
                    list.add(Boolean.valueOf(this.zza.zzi()));
                } while (this.zza.zzu() < iZzu2);
                zzd(iZzu2);
                return;
        }
        do {
            list.add(Boolean.valueOf(this.zza.zzi()));
            if (this.zza.zzt()) {
                return;
            } else {
                iZza = this.zza.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
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
        int iZza;
        int iZza2;
        if ((this.zzb & 7) != 2) {
            throw zzjk.zzf();
        }
        if ((list instanceof zzjv) && !z) {
            zzjv zzjvVar = (zzjv) list;
            do {
                zzjvVar.zza(zzn());
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZza2 = this.zza.zza();
                }
            } while (iZza2 == this.zzb);
            this.zzd = iZza2;
            return;
        }
        do {
            list.add(z ? zzm() : zzl());
            if (this.zza.zzt()) {
                return;
            } else {
                iZza = this.zza.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.vision.zzld
    public final <T> void zza(List<T> list, zzlc<T> zzlcVar, zzio zzioVar) throws IOException {
        int iZza;
        if ((this.zzb & 7) != 2) {
            throw zzjk.zzf();
        }
        int i = this.zzb;
        do {
            list.add(zzc(zzlcVar, zzioVar));
            if (this.zza.zzt() || this.zzd != 0) {
                return;
            } else {
                iZza = this.zza.zza();
            }
        } while (iZza == i);
        this.zzd = iZza;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.vision.zzld
    public final <T> void zzb(List<T> list, zzlc<T> zzlcVar, zzio zzioVar) throws IOException {
        int iZza;
        if ((this.zzb & 7) != 3) {
            throw zzjk.zzf();
        }
        int i = this.zzb;
        do {
            list.add(zzd(zzlcVar, zzioVar));
            if (this.zza.zzt() || this.zzd != 0) {
                return;
            } else {
                iZza = this.zza.zza();
            }
        } while (iZza == i);
        this.zzd = iZza;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzk(List<zzht> list) throws IOException {
        int iZza;
        if ((this.zzb & 7) != 2) {
            throw zzjk.zzf();
        }
        do {
            list.add(zzn());
            if (this.zza.zzt()) {
                return;
            } else {
                iZza = this.zza.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzl(List<Integer> list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzjd) {
            zzjd zzjdVar = (zzjd) list;
            switch (this.zzb & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzjk.zzf();
                case 2:
                    int iZzu = this.zza.zzu() + this.zza.zzm();
                    do {
                        zzjdVar.zzc(this.zza.zzm());
                    } while (this.zza.zzu() < iZzu);
                    zzd(iZzu);
                    return;
            }
            do {
                zzjdVar.zzc(this.zza.zzm());
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZza2 = this.zza.zza();
                }
            } while (iZza2 == this.zzb);
            this.zzd = iZza2;
            return;
        }
        switch (this.zzb & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzjk.zzf();
            case 2:
                int iZzu2 = this.zza.zzu() + this.zza.zzm();
                do {
                    list.add(Integer.valueOf(this.zza.zzm()));
                } while (this.zza.zzu() < iZzu2);
                zzd(iZzu2);
                return;
        }
        do {
            list.add(Integer.valueOf(this.zza.zzm()));
            if (this.zza.zzt()) {
                return;
            } else {
                iZza = this.zza.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzm(List<Integer> list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzjd) {
            zzjd zzjdVar = (zzjd) list;
            switch (this.zzb & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzjk.zzf();
                case 2:
                    int iZzu = this.zza.zzu() + this.zza.zzm();
                    do {
                        zzjdVar.zzc(this.zza.zzn());
                    } while (this.zza.zzu() < iZzu);
                    zzd(iZzu);
                    return;
            }
            do {
                zzjdVar.zzc(this.zza.zzn());
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZza2 = this.zza.zza();
                }
            } while (iZza2 == this.zzb);
            this.zzd = iZza2;
            return;
        }
        switch (this.zzb & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzjk.zzf();
            case 2:
                int iZzu2 = this.zza.zzu() + this.zza.zzm();
                do {
                    list.add(Integer.valueOf(this.zza.zzn()));
                } while (this.zza.zzu() < iZzu2);
                zzd(iZzu2);
                return;
        }
        do {
            list.add(Integer.valueOf(this.zza.zzn()));
            if (this.zza.zzt()) {
                return;
            } else {
                iZza = this.zza.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzn(List<Integer> list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzjd) {
            zzjd zzjdVar = (zzjd) list;
            switch (this.zzb & 7) {
                case 2:
                    int iZzm = this.zza.zzm();
                    zzc(iZzm);
                    int iZzu = this.zza.zzu() + iZzm;
                    do {
                        zzjdVar.zzc(this.zza.zzo());
                    } while (this.zza.zzu() < iZzu);
                    return;
                case 5:
                    break;
                default:
                    throw zzjk.zzf();
            }
            do {
                zzjdVar.zzc(this.zza.zzo());
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZza2 = this.zza.zza();
                }
            } while (iZza2 == this.zzb);
            this.zzd = iZza2;
            return;
        }
        switch (this.zzb & 7) {
            case 2:
                int iZzm2 = this.zza.zzm();
                zzc(iZzm2);
                int iZzu2 = this.zza.zzu() + iZzm2;
                do {
                    list.add(Integer.valueOf(this.zza.zzo()));
                } while (this.zza.zzu() < iZzu2);
                return;
            case 5:
                break;
            default:
                throw zzjk.zzf();
        }
        do {
            list.add(Integer.valueOf(this.zza.zzo()));
            if (this.zza.zzt()) {
                return;
            } else {
                iZza = this.zza.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzo(List<Long> list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzjy) {
            zzjy zzjyVar = (zzjy) list;
            switch (this.zzb & 7) {
                case 1:
                    break;
                case 2:
                    int iZzm = this.zza.zzm();
                    zzb(iZzm);
                    int iZzu = this.zza.zzu() + iZzm;
                    do {
                        zzjyVar.zza(this.zza.zzp());
                    } while (this.zza.zzu() < iZzu);
                    return;
                default:
                    throw zzjk.zzf();
            }
            do {
                zzjyVar.zza(this.zza.zzp());
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZza2 = this.zza.zza();
                }
            } while (iZza2 == this.zzb);
            this.zzd = iZza2;
            return;
        }
        switch (this.zzb & 7) {
            case 1:
                break;
            case 2:
                int iZzm2 = this.zza.zzm();
                zzb(iZzm2);
                int iZzu2 = this.zza.zzu() + iZzm2;
                do {
                    list.add(Long.valueOf(this.zza.zzp()));
                } while (this.zza.zzu() < iZzu2);
                return;
            default:
                throw zzjk.zzf();
        }
        do {
            list.add(Long.valueOf(this.zza.zzp()));
            if (this.zza.zzt()) {
                return;
            } else {
                iZza = this.zza.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzp(List<Integer> list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzjd) {
            zzjd zzjdVar = (zzjd) list;
            switch (this.zzb & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzjk.zzf();
                case 2:
                    int iZzu = this.zza.zzu() + this.zza.zzm();
                    do {
                        zzjdVar.zzc(this.zza.zzq());
                    } while (this.zza.zzu() < iZzu);
                    zzd(iZzu);
                    return;
            }
            do {
                zzjdVar.zzc(this.zza.zzq());
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZza2 = this.zza.zza();
                }
            } while (iZza2 == this.zzb);
            this.zzd = iZza2;
            return;
        }
        switch (this.zzb & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzjk.zzf();
            case 2:
                int iZzu2 = this.zza.zzu() + this.zza.zzm();
                do {
                    list.add(Integer.valueOf(this.zza.zzq()));
                } while (this.zza.zzu() < iZzu2);
                zzd(iZzu2);
                return;
        }
        do {
            list.add(Integer.valueOf(this.zza.zzq()));
            if (this.zza.zzt()) {
                return;
            } else {
                iZza = this.zza.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
    }

    @Override // com.google.android.gms.internal.vision.zzld
    public final void zzq(List<Long> list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzjy) {
            zzjy zzjyVar = (zzjy) list;
            switch (this.zzb & 7) {
                case 0:
                    break;
                case 1:
                default:
                    throw zzjk.zzf();
                case 2:
                    int iZzu = this.zza.zzu() + this.zza.zzm();
                    do {
                        zzjyVar.zza(this.zza.zzr());
                    } while (this.zza.zzu() < iZzu);
                    zzd(iZzu);
                    return;
            }
            do {
                zzjyVar.zza(this.zza.zzr());
                if (this.zza.zzt()) {
                    return;
                } else {
                    iZza2 = this.zza.zza();
                }
            } while (iZza2 == this.zzb);
            this.zzd = iZza2;
            return;
        }
        switch (this.zzb & 7) {
            case 0:
                break;
            case 1:
            default:
                throw zzjk.zzf();
            case 2:
                int iZzu2 = this.zza.zzu() + this.zza.zzm();
                do {
                    list.add(Long.valueOf(this.zza.zzr()));
                } while (this.zza.zzu() < iZzu2);
                zzd(iZzu2);
                return;
        }
        do {
            list.add(Long.valueOf(this.zza.zzr()));
            if (this.zza.zzt()) {
                return;
            } else {
                iZza = this.zza.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
    }

    private static void zzb(int i) throws IOException {
        if ((i & 7) != 0) {
            throw zzjk.zzg();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005c, code lost:
    
        r7.put(r1, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0064, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.vision.zzld
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final <K, V> void zza(java.util.Map<K, V> r7, com.google.android.gms.internal.vision.zzkf<K, V> r8, com.google.android.gms.internal.vision.zzio r9) throws java.io.IOException {
        /*
            r6 = this;
            r0 = 2
            r6.zza(r0)
            com.google.android.gms.internal.vision.zzif r0 = r6.zza
            int r0 = r0.zzm()
            com.google.android.gms.internal.vision.zzif r1 = r6.zza
            int r0 = r1.zzc(r0)
            K r1 = r8.zzb
            V r2 = r8.zzd
        L14:
            int r3 = r6.zza()     // Catch: java.lang.Throwable -> L65
            r4 = 2147483647(0x7fffffff, float:NaN)
            if (r3 == r4) goto L5c
            com.google.android.gms.internal.vision.zzif r4 = r6.zza     // Catch: java.lang.Throwable -> L65
            boolean r4 = r4.zzt()     // Catch: java.lang.Throwable -> L65
            if (r4 != 0) goto L5c
            java.lang.String r4 = "Unable to parse map entry."
            switch(r3) {
                case 1: goto L3c;
                case 2: goto L2f;
                default: goto L2a;
            }
        L2a:
            boolean r3 = r6.zzc()     // Catch: com.google.android.gms.internal.vision.zzjn -> L44 java.lang.Throwable -> L65
            goto L46
        L2f:
            com.google.android.gms.internal.vision.zzml r3 = r8.zzc     // Catch: com.google.android.gms.internal.vision.zzjn -> L44 java.lang.Throwable -> L65
            V r5 = r8.zzd     // Catch: com.google.android.gms.internal.vision.zzjn -> L44 java.lang.Throwable -> L65
            java.lang.Class r5 = r5.getClass()     // Catch: com.google.android.gms.internal.vision.zzjn -> L44 java.lang.Throwable -> L65
            java.lang.Object r2 = r6.zza(r3, r5, r9)     // Catch: com.google.android.gms.internal.vision.zzjn -> L44 java.lang.Throwable -> L65
            goto L14
        L3c:
            com.google.android.gms.internal.vision.zzml r3 = r8.zza     // Catch: com.google.android.gms.internal.vision.zzjn -> L44 java.lang.Throwable -> L65
            r5 = 0
            java.lang.Object r1 = r6.zza(r3, r5, r5)     // Catch: com.google.android.gms.internal.vision.zzjn -> L44 java.lang.Throwable -> L65
            goto L14
        L44:
            r3 = move-exception
            goto L4f
        L46:
            if (r3 == 0) goto L49
            goto L14
        L49:
            com.google.android.gms.internal.vision.zzjk r3 = new com.google.android.gms.internal.vision.zzjk     // Catch: com.google.android.gms.internal.vision.zzjn -> L44 java.lang.Throwable -> L65
            r3.<init>(r4)     // Catch: com.google.android.gms.internal.vision.zzjn -> L44 java.lang.Throwable -> L65
            throw r3     // Catch: com.google.android.gms.internal.vision.zzjn -> L44 java.lang.Throwable -> L65
        L4f:
            boolean r3 = r6.zzc()     // Catch: java.lang.Throwable -> L65
            if (r3 == 0) goto L56
            goto L14
        L56:
            com.google.android.gms.internal.vision.zzjk r7 = new com.google.android.gms.internal.vision.zzjk     // Catch: java.lang.Throwable -> L65
            r7.<init>(r4)     // Catch: java.lang.Throwable -> L65
            throw r7     // Catch: java.lang.Throwable -> L65
        L5c:
            r7.put(r1, r2)     // Catch: java.lang.Throwable -> L65
            com.google.android.gms.internal.vision.zzif r7 = r6.zza
            r7.zzd(r0)
            return
        L65:
            r7 = move-exception
            com.google.android.gms.internal.vision.zzif r8 = r6.zza
            r8.zzd(r0)
            goto L6d
        L6c:
            throw r7
        L6d:
            goto L6c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzig.zza(java.util.Map, com.google.android.gms.internal.vision.zzkf, com.google.android.gms.internal.vision.zzio):void");
    }

    private final Object zza(zzml zzmlVar, Class<?> cls, zzio zzioVar) throws IOException {
        switch (zzij.zza[zzmlVar.ordinal()]) {
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
                return zzm();
            case 16:
                return Integer.valueOf(zzo());
            case 17:
                return Long.valueOf(zzf());
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private static void zzc(int i) throws IOException {
        if ((i & 3) != 0) {
            throw zzjk.zzg();
        }
    }

    private final void zzd(int i) throws IOException {
        if (this.zza.zzu() != i) {
            throw zzjk.zza();
        }
    }
}
