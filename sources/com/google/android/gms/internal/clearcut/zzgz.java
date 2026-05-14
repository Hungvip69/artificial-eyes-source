package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgz extends zzfu<zzgz> implements Cloneable {
    private byte[] zzbjb = zzgb.zzse;
    private String zzbjc = "";
    private byte[][] zzbjd = zzgb.zzsd;
    private boolean zzbje = false;

    public zzgz() {
        this.zzrj = null;
        this.zzrs = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* JADX INFO: renamed from: zzgc, reason: merged with bridge method [inline-methods] */
    public final zzgz clone() {
        try {
            zzgz zzgzVar = (zzgz) super.clone();
            if (this.zzbjd != null && this.zzbjd.length > 0) {
                zzgzVar.zzbjd = (byte[][]) this.zzbjd.clone();
            }
            return zzgzVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgz)) {
            return false;
        }
        zzgz zzgzVar = (zzgz) obj;
        if (!Arrays.equals(this.zzbjb, zzgzVar.zzbjb)) {
            return false;
        }
        if (this.zzbjc == null) {
            if (zzgzVar.zzbjc != null) {
                return false;
            }
        } else if (!this.zzbjc.equals(zzgzVar.zzbjc)) {
            return false;
        }
        if (zzfy.zza(this.zzbjd, zzgzVar.zzbjd)) {
            return (this.zzrj == null || this.zzrj.isEmpty()) ? zzgzVar.zzrj == null || zzgzVar.zzrj.isEmpty() : this.zzrj.equals(zzgzVar.zzrj);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = 0;
        int iHashCode2 = (((((((((getClass().getName().hashCode() + 527) * 31) + Arrays.hashCode(this.zzbjb)) * 31) + (this.zzbjc == null ? 0 : this.zzbjc.hashCode())) * 31) + zzfy.zza(this.zzbjd)) * 31) + 1237) * 31;
        if (this.zzrj != null && !this.zzrj.isEmpty()) {
            iHashCode = this.zzrj.hashCode();
        }
        return iHashCode2 + iHashCode;
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    public final void zza(zzfs zzfsVar) throws IOException {
        if (!Arrays.equals(this.zzbjb, zzgb.zzse)) {
            zzfsVar.zza(1, this.zzbjb);
        }
        if (this.zzbjd != null && this.zzbjd.length > 0) {
            for (int i = 0; i < this.zzbjd.length; i++) {
                byte[] bArr = this.zzbjd[i];
                if (bArr != null) {
                    zzfsVar.zza(2, bArr);
                }
            }
        }
        if (this.zzbjc != null && !this.zzbjc.equals("")) {
            zzfsVar.zza(4, this.zzbjc);
        }
        super.zza(zzfsVar);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    protected final int zzen() {
        int iZzen = super.zzen();
        if (!Arrays.equals(this.zzbjb, zzgb.zzse)) {
            iZzen += zzfs.zzb(1, this.zzbjb);
        }
        if (this.zzbjd != null && this.zzbjd.length > 0) {
            int iZzh = 0;
            int i = 0;
            for (int i2 = 0; i2 < this.zzbjd.length; i2++) {
                byte[] bArr = this.zzbjd[i2];
                if (bArr != null) {
                    i++;
                    iZzh += zzfs.zzh(bArr);
                }
            }
            iZzen = iZzen + iZzh + (i * 1);
        }
        return (this.zzbjc == null || this.zzbjc.equals("")) ? iZzen : iZzen + zzfs.zzb(4, this.zzbjc);
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu
    /* JADX INFO: renamed from: zzeo */
    public final /* synthetic */ zzfu clone() throws CloneNotSupportedException {
        return (zzgz) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.zzfu, com.google.android.gms.internal.clearcut.zzfz
    /* JADX INFO: renamed from: zzep */
    public final /* synthetic */ zzfz clone() throws CloneNotSupportedException {
        return (zzgz) clone();
    }
}
