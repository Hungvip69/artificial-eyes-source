package com.google.android.gms.internal.vision;

import android.content.Context;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
/* JADX INFO: loaded from: classes.dex */
final class zzav extends zzbr {
    private final Context zza;
    private final zzdf<zzcy<zzbe>> zzb;

    zzav(Context context, @Nullable zzdf<zzcy<zzbe>> zzdfVar) {
        if (context == null) {
            throw new NullPointerException("Null context");
        }
        this.zza = context;
        this.zzb = zzdfVar;
    }

    @Override // com.google.android.gms.internal.vision.zzbr
    final Context zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.vision.zzbr
    @Nullable
    final zzdf<zzcy<zzbe>> zzb() {
        return this.zzb;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.zza);
        String strValueOf2 = String.valueOf(this.zzb);
        return new StringBuilder(String.valueOf(strValueOf).length() + 46 + String.valueOf(strValueOf2).length()).append("FlagsContext{context=").append(strValueOf).append(", hermeticFileOverrides=").append(strValueOf2).append("}").toString();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbr)) {
            return false;
        }
        zzbr zzbrVar = (zzbr) obj;
        return this.zza.equals(zzbrVar.zza()) && (this.zzb != null ? this.zzb.equals(zzbrVar.zzb()) : zzbrVar.zzb() == null);
    }

    public final int hashCode() {
        return ((this.zza.hashCode() ^ 1000003) * 1000003) ^ (this.zzb == null ? 0 : this.zzb.hashCode());
    }
}
