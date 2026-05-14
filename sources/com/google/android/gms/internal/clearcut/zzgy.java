package com.google.android.gms.internal.clearcut;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgy extends zzfu<zzgy> implements Cloneable {
    private String[] zzbiw = zzgb.zzsc;
    private String[] zzbix = zzgb.zzsc;
    private int[] zzbiy = zzgb.zzrx;
    private long[] zzbiz = zzgb.zzry;
    private long[] zzbja = zzgb.zzry;

    public zzgy() {
        this.zzrj = null;
        this.zzrs = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* JADX INFO: renamed from: zzgb, reason: merged with bridge method [inline-methods] */
    public final zzgy clone() {
        try {
            zzgy zzgyVar = (zzgy) super.clone();
            if (this.zzbiw != null && this.zzbiw.length > 0) {
                zzgyVar.zzbiw = (String[]) this.zzbiw.clone();
            }
            if (this.zzbix != null && this.zzbix.length > 0) {
                zzgyVar.zzbix = (String[]) this.zzbix.clone();
            }
            if (this.zzbiy != null && this.zzbiy.length > 0) {
                zzgyVar.zzbiy = (int[]) this.zzbiy.clone();
            }
            if (this.zzbiz != null && this.zzbiz.length > 0) {
                zzgyVar.zzbiz = (long[]) this.zzbiz.clone();
            }
            if (this.zzbja != null && this.zzbja.length > 0) {
                zzgyVar.zzbja = (long[]) this.zzbja.clone();
            }
            return zzgyVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgy)) {
            return false;
        }
        zzgy zzgyVar = (zzgy) obj;
        if (zzfy.equals(this.zzbiw, zzgyVar.zzbiw) && zzfy.equals(this.zzbix, zzgyVar.zzbix) && zzfy.equals(this.zzbiy, zzgyVar.zzbiy) && zzfy.equals(this.zzbiz, zzgyVar.zzbiz) && zzfy.equals(this.zzbja, zzgyVar.zzbja)) {
            return (this.zzrj == null || this.zzrj.isEmpty()) ? zzgyVar.zzrj == null || zzgyVar.zzrj.isEmpty() : this.zzrj.equals(zzgyVar.zzrj);
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((((((getClass().getName().hashCode() + 527) * 31) + zzfy.hashCode(this.zzbiw)) * 31) + zzfy.hashCode(this.zzbix)) * 31) + zzfy.hashCode(this.zzbiy)) * 31) + zzfy.hashCode(this.zzbiz)) * 31) + zzfy.hashCode(this.zzbja)) * 31) + ((this.zzrj == null || this.zzrj.isEmpty()) ? 0 : this.zzrj.hashCode());
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final void zza(zzfs zzfsVar) throws IOException {
        if (this.zzbiw != null && this.zzbiw.length > 0) {
            for (int i = 0; i < this.zzbiw.length; i++) {
                String str = this.zzbiw[i];
                if (str != null) {
                    zzfsVar.zza(1, str);
                }
            }
        }
        if (this.zzbix != null && this.zzbix.length > 0) {
            for (int i2 = 0; i2 < this.zzbix.length; i2++) {
                String str2 = this.zzbix[i2];
                if (str2 != null) {
                    zzfsVar.zza(2, str2);
                }
            }
        }
        if (this.zzbiy != null && this.zzbiy.length > 0) {
            for (int i3 = 0; i3 < this.zzbiy.length; i3++) {
                zzfsVar.zzc(3, this.zzbiy[i3]);
            }
        }
        if (this.zzbiz != null && this.zzbiz.length > 0) {
            for (int i4 = 0; i4 < this.zzbiz.length; i4++) {
                zzfsVar.zzi(4, this.zzbiz[i4]);
            }
        }
        if (this.zzbja != null && this.zzbja.length > 0) {
            for (int i5 = 0; i5 < this.zzbja.length; i5++) {
                zzfsVar.zzi(5, this.zzbja[i5]);
            }
        }
        super.zza(zzfsVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    protected final int zzen() {
        int iZzen = super.zzen();
        if (this.zzbiw != null && this.zzbiw.length > 0) {
            int iZzh = 0;
            int i = 0;
            for (int i2 = 0; i2 < this.zzbiw.length; i2++) {
                String str = this.zzbiw[i2];
                if (str != null) {
                    i++;
                    iZzh += zzfs.zzh(str);
                }
            }
            iZzen = iZzen + iZzh + (i * 1);
        }
        if (this.zzbix != null && this.zzbix.length > 0) {
            int iZzh2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < this.zzbix.length; i4++) {
                String str2 = this.zzbix[i4];
                if (str2 != null) {
                    i3++;
                    iZzh2 += zzfs.zzh(str2);
                }
            }
            iZzen = iZzen + iZzh2 + (i3 * 1);
        }
        if (this.zzbiy != null && this.zzbiy.length > 0) {
            int iZzs = 0;
            for (int i5 = 0; i5 < this.zzbiy.length; i5++) {
                iZzs += zzfs.zzs(this.zzbiy[i5]);
            }
            iZzen = iZzen + iZzs + (this.zzbiy.length * 1);
        }
        if (this.zzbiz != null && this.zzbiz.length > 0) {
            int iZzo = 0;
            for (int i6 = 0; i6 < this.zzbiz.length; i6++) {
                iZzo += zzfs.zzo(this.zzbiz[i6]);
            }
            iZzen = iZzen + iZzo + (this.zzbiz.length * 1);
        }
        if (this.zzbja == null || this.zzbja.length <= 0) {
            return iZzen;
        }
        int iZzo2 = 0;
        for (int i7 = 0; i7 < this.zzbja.length; i7++) {
            iZzo2 += zzfs.zzo(this.zzbja[i7]);
        }
        return iZzen + iZzo2 + (this.zzbja.length * 1);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu
    /* JADX INFO: renamed from: zzeo */
    public final /* synthetic */ zzfu clone() throws CloneNotSupportedException {
        return (zzgy) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* JADX INFO: renamed from: zzep */
    public final /* synthetic */ zzfz clone() throws CloneNotSupportedException {
        return (zzgy) clone();
    }
}
