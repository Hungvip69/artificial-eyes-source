package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzge;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzha extends zzfu<zzha> implements Cloneable {
    public long zzbjf = 0;
    public long zzbjg = 0;
    private long zzbjh = 0;
    private String tag = "";
    public int zzbji = 0;
    private String zzbjj = "";
    private int zzbjk = 0;
    private boolean zzbjl = false;
    private zzhb[] zzbjm = zzhb.zzge();
    private byte[] zzbjn = zzgb.zzse;
    private zzge.zzd zzbjo = null;
    public byte[] zzbjp = zzgb.zzse;
    private String zzbjq = "";
    private String zzbjr = "";
    private zzgy zzbjs = null;
    private String zzbjt = "";
    public long zzbju = 180000;
    private zzgz zzbjv = null;
    public byte[] zzbjw = zzgb.zzse;
    private String zzbjx = "";
    private int zzbjy = 0;
    private int[] zzbjz = zzgb.zzrx;
    private long zzbka = 0;
    private zzge.zzs zzbkb = null;
    public boolean zzbkc = false;

    public zzha() {
        this.zzrj = null;
        this.zzrs = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* JADX INFO: renamed from: zzgd, reason: merged with bridge method [inline-methods] */
    public final zzha clone() {
        try {
            zzha zzhaVar = (zzha) super.clone();
            if (this.zzbjm != null && this.zzbjm.length > 0) {
                zzhaVar.zzbjm = new zzhb[this.zzbjm.length];
                for (int i = 0; i < this.zzbjm.length; i++) {
                    if (this.zzbjm[i] != null) {
                        zzhaVar.zzbjm[i] = (zzhb) this.zzbjm[i].clone();
                    }
                }
            }
            if (this.zzbjo != null) {
                zzhaVar.zzbjo = this.zzbjo;
            }
            if (this.zzbjs != null) {
                zzhaVar.zzbjs = (zzgy) this.zzbjs.clone();
            }
            if (this.zzbjv != null) {
                zzhaVar.zzbjv = (zzgz) this.zzbjv.clone();
            }
            if (this.zzbjz != null && this.zzbjz.length > 0) {
                zzhaVar.zzbjz = (int[]) this.zzbjz.clone();
            }
            if (this.zzbkb != null) {
                zzhaVar.zzbkb = this.zzbkb;
            }
            return zzhaVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzha)) {
            return false;
        }
        zzha zzhaVar = (zzha) obj;
        if (this.zzbjf != zzhaVar.zzbjf || this.zzbjg != zzhaVar.zzbjg) {
            return false;
        }
        if (this.tag == null) {
            if (zzhaVar.tag != null) {
                return false;
            }
        } else if (!this.tag.equals(zzhaVar.tag)) {
            return false;
        }
        if (this.zzbji != zzhaVar.zzbji) {
            return false;
        }
        if (this.zzbjj == null) {
            if (zzhaVar.zzbjj != null) {
                return false;
            }
        } else if (!this.zzbjj.equals(zzhaVar.zzbjj)) {
            return false;
        }
        if (!zzfy.equals(this.zzbjm, zzhaVar.zzbjm) || !Arrays.equals(this.zzbjn, zzhaVar.zzbjn)) {
            return false;
        }
        if (this.zzbjo == null) {
            if (zzhaVar.zzbjo != null) {
                return false;
            }
        } else if (!this.zzbjo.equals(zzhaVar.zzbjo)) {
            return false;
        }
        if (!Arrays.equals(this.zzbjp, zzhaVar.zzbjp)) {
            return false;
        }
        if (this.zzbjq == null) {
            if (zzhaVar.zzbjq != null) {
                return false;
            }
        } else if (!this.zzbjq.equals(zzhaVar.zzbjq)) {
            return false;
        }
        if (this.zzbjr == null) {
            if (zzhaVar.zzbjr != null) {
                return false;
            }
        } else if (!this.zzbjr.equals(zzhaVar.zzbjr)) {
            return false;
        }
        if (this.zzbjs == null) {
            if (zzhaVar.zzbjs != null) {
                return false;
            }
        } else if (!this.zzbjs.equals(zzhaVar.zzbjs)) {
            return false;
        }
        if (this.zzbjt == null) {
            if (zzhaVar.zzbjt != null) {
                return false;
            }
        } else if (!this.zzbjt.equals(zzhaVar.zzbjt)) {
            return false;
        }
        if (this.zzbju != zzhaVar.zzbju) {
            return false;
        }
        if (this.zzbjv == null) {
            if (zzhaVar.zzbjv != null) {
                return false;
            }
        } else if (!this.zzbjv.equals(zzhaVar.zzbjv)) {
            return false;
        }
        if (!Arrays.equals(this.zzbjw, zzhaVar.zzbjw)) {
            return false;
        }
        if (this.zzbjx == null) {
            if (zzhaVar.zzbjx != null) {
                return false;
            }
        } else if (!this.zzbjx.equals(zzhaVar.zzbjx)) {
            return false;
        }
        if (!zzfy.equals(this.zzbjz, zzhaVar.zzbjz)) {
            return false;
        }
        if (this.zzbkb == null) {
            if (zzhaVar.zzbkb != null) {
                return false;
            }
        } else if (!this.zzbkb.equals(zzhaVar.zzbkb)) {
            return false;
        }
        if (this.zzbkc != zzhaVar.zzbkc) {
            return false;
        }
        return (this.zzrj == null || this.zzrj.isEmpty()) ? zzhaVar.zzrj == null || zzhaVar.zzrj.isEmpty() : this.zzrj.equals(zzhaVar.zzrj);
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = ((((((((((((((((getClass().getName().hashCode() + 527) * 31) + ((int) (this.zzbjf ^ (this.zzbjf >>> 32)))) * 31) + ((int) (this.zzbjg ^ (this.zzbjg >>> 32)))) * 31 * 31) + (this.tag == null ? 0 : this.tag.hashCode())) * 31) + this.zzbji) * 31) + (this.zzbjj == null ? 0 : this.zzbjj.hashCode())) * 31 * 31) + 1237) * 31) + zzfy.hashCode(this.zzbjm)) * 31) + Arrays.hashCode(this.zzbjn);
        zzge.zzd zzdVar = this.zzbjo;
        int iHashCode3 = (((((((iHashCode2 * 31) + (zzdVar == null ? 0 : zzdVar.hashCode())) * 31) + Arrays.hashCode(this.zzbjp)) * 31) + (this.zzbjq == null ? 0 : this.zzbjq.hashCode())) * 31) + (this.zzbjr == null ? 0 : this.zzbjr.hashCode());
        zzgy zzgyVar = this.zzbjs;
        int iHashCode4 = (((((iHashCode3 * 31) + (zzgyVar == null ? 0 : zzgyVar.hashCode())) * 31) + (this.zzbjt == null ? 0 : this.zzbjt.hashCode())) * 31) + ((int) (this.zzbju ^ (this.zzbju >>> 32)));
        zzgz zzgzVar = this.zzbjv;
        int iHashCode5 = ((((((((iHashCode4 * 31) + (zzgzVar == null ? 0 : zzgzVar.hashCode())) * 31) + Arrays.hashCode(this.zzbjw)) * 31) + (this.zzbjx == null ? 0 : this.zzbjx.hashCode())) * 31 * 31) + zzfy.hashCode(this.zzbjz)) * 31;
        zzge.zzs zzsVar = this.zzbkb;
        int iHashCode6 = ((((iHashCode5 * 31) + (zzsVar == null ? 0 : zzsVar.hashCode())) * 31) + (this.zzbkc ? 1231 : 1237)) * 31;
        if (this.zzrj != null && !this.zzrj.isEmpty()) {
            iHashCode = this.zzrj.hashCode();
        }
        return iHashCode6 + iHashCode;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final void zza(zzfs zzfsVar) throws IOException {
        if (this.zzbjf != 0) {
            zzfsVar.zzi(1, this.zzbjf);
        }
        if (this.tag != null && !this.tag.equals("")) {
            zzfsVar.zza(2, this.tag);
        }
        if (this.zzbjm != null && this.zzbjm.length > 0) {
            for (int i = 0; i < this.zzbjm.length; i++) {
                zzhb zzhbVar = this.zzbjm[i];
                if (zzhbVar != null) {
                    zzfsVar.zza(3, zzhbVar);
                }
            }
        }
        if (!Arrays.equals(this.zzbjn, zzgb.zzse)) {
            zzfsVar.zza(4, this.zzbjn);
        }
        if (!Arrays.equals(this.zzbjp, zzgb.zzse)) {
            zzfsVar.zza(6, this.zzbjp);
        }
        if (this.zzbjs != null) {
            zzfsVar.zza(7, this.zzbjs);
        }
        if (this.zzbjq != null && !this.zzbjq.equals("")) {
            zzfsVar.zza(8, this.zzbjq);
        }
        if (this.zzbjo != null) {
            zzfsVar.zze(9, this.zzbjo);
        }
        if (this.zzbji != 0) {
            zzfsVar.zzc(11, this.zzbji);
        }
        if (this.zzbjr != null && !this.zzbjr.equals("")) {
            zzfsVar.zza(13, this.zzbjr);
        }
        if (this.zzbjt != null && !this.zzbjt.equals("")) {
            zzfsVar.zza(14, this.zzbjt);
        }
        if (this.zzbju != 180000) {
            long j = this.zzbju;
            zzfsVar.zzb(15, 0);
            zzfsVar.zzn(zzfs.zzj(j));
        }
        if (this.zzbjv != null) {
            zzfsVar.zza(16, this.zzbjv);
        }
        if (this.zzbjg != 0) {
            zzfsVar.zzi(17, this.zzbjg);
        }
        if (!Arrays.equals(this.zzbjw, zzgb.zzse)) {
            zzfsVar.zza(18, this.zzbjw);
        }
        if (this.zzbjz != null && this.zzbjz.length > 0) {
            for (int i2 = 0; i2 < this.zzbjz.length; i2++) {
                zzfsVar.zzc(20, this.zzbjz[i2]);
            }
        }
        if (this.zzbkb != null) {
            zzfsVar.zze(23, this.zzbkb);
        }
        if (this.zzbjx != null && !this.zzbjx.equals("")) {
            zzfsVar.zza(24, this.zzbjx);
        }
        if (this.zzbkc) {
            zzfsVar.zzb(25, this.zzbkc);
        }
        if (this.zzbjj != null && !this.zzbjj.equals("")) {
            zzfsVar.zza(26, this.zzbjj);
        }
        super.zza(zzfsVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    protected final int zzen() {
        int iZzen = super.zzen();
        if (this.zzbjf != 0) {
            iZzen += zzfs.zzd(1, this.zzbjf);
        }
        if (this.tag != null && !this.tag.equals("")) {
            iZzen += zzfs.zzb(2, this.tag);
        }
        if (this.zzbjm != null && this.zzbjm.length > 0) {
            for (int i = 0; i < this.zzbjm.length; i++) {
                zzhb zzhbVar = this.zzbjm[i];
                if (zzhbVar != null) {
                    iZzen += zzfs.zzb(3, zzhbVar);
                }
            }
        }
        if (!Arrays.equals(this.zzbjn, zzgb.zzse)) {
            iZzen += zzfs.zzb(4, this.zzbjn);
        }
        if (!Arrays.equals(this.zzbjp, zzgb.zzse)) {
            iZzen += zzfs.zzb(6, this.zzbjp);
        }
        if (this.zzbjs != null) {
            iZzen += zzfs.zzb(7, this.zzbjs);
        }
        if (this.zzbjq != null && !this.zzbjq.equals("")) {
            iZzen += zzfs.zzb(8, this.zzbjq);
        }
        if (this.zzbjo != null) {
            iZzen += zzbn.zzc(9, this.zzbjo);
        }
        if (this.zzbji != 0) {
            iZzen += zzfs.zzr(11) + zzfs.zzs(this.zzbji);
        }
        if (this.zzbjr != null && !this.zzbjr.equals("")) {
            iZzen += zzfs.zzb(13, this.zzbjr);
        }
        if (this.zzbjt != null && !this.zzbjt.equals("")) {
            iZzen += zzfs.zzb(14, this.zzbjt);
        }
        if (this.zzbju != 180000) {
            iZzen += zzfs.zzr(15) + zzfs.zzo(zzfs.zzj(this.zzbju));
        }
        if (this.zzbjv != null) {
            iZzen += zzfs.zzb(16, this.zzbjv);
        }
        if (this.zzbjg != 0) {
            iZzen += zzfs.zzd(17, this.zzbjg);
        }
        if (!Arrays.equals(this.zzbjw, zzgb.zzse)) {
            iZzen += zzfs.zzb(18, this.zzbjw);
        }
        if (this.zzbjz != null && this.zzbjz.length > 0) {
            int iZzs = 0;
            for (int i2 = 0; i2 < this.zzbjz.length; i2++) {
                iZzs += zzfs.zzs(this.zzbjz[i2]);
            }
            iZzen = iZzen + iZzs + (this.zzbjz.length * 2);
        }
        if (this.zzbkb != null) {
            iZzen += zzbn.zzc(23, this.zzbkb);
        }
        if (this.zzbjx != null && !this.zzbjx.equals("")) {
            iZzen += zzfs.zzb(24, this.zzbjx);
        }
        if (this.zzbkc) {
            iZzen += zzfs.zzr(25) + 1;
        }
        return (this.zzbjj == null || this.zzbjj.equals("")) ? iZzen : iZzen + zzfs.zzb(26, this.zzbjj);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu
    /* JADX INFO: renamed from: zzeo */
    public final /* synthetic */ zzfu clone() throws CloneNotSupportedException {
        return (zzha) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* JADX INFO: renamed from: zzep */
    public final /* synthetic */ zzfz clone() throws CloneNotSupportedException {
        return (zzha) clone();
    }
}
