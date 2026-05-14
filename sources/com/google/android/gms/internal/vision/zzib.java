package com.google.android.gms.internal.vision;

/* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
/* JADX INFO: loaded from: classes2.dex */
final class zzib {
    private final zzii zza;
    private final byte[] zzb;

    private zzib(int i) {
        this.zzb = new byte[i];
        this.zza = zzii.zza(this.zzb);
    }

    public final zzht zza() {
        this.zza.zzb();
        return new zzid(this.zzb);
    }

    public final zzii zzb() {
        return this.zza;
    }

    /* synthetic */ zzib(int i, zzhs zzhsVar) {
        this(i);
    }
}
