package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkq<T> implements zzlc<T> {
    private final zzkk zza;
    private final zzlu<?, ?> zzb;
    private final boolean zzc;
    private final zziq<?> zzd;

    private zzkq(zzlu<?, ?> zzluVar, zziq<?> zziqVar, zzkk zzkkVar) {
        this.zzb = zzluVar;
        this.zzc = zziqVar.zza(zzkkVar);
        this.zzd = zziqVar;
        this.zza = zzkkVar;
    }

    static <T> zzkq<T> zza(zzlu<?, ?> zzluVar, zziq<?> zziqVar, zzkk zzkkVar) {
        return new zzkq<>(zzluVar, zziqVar, zzkkVar);
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final T zza() {
        return (T) this.zza.zzq().zze();
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final boolean zza(T t, T t2) {
        if (!this.zzb.zzb(t).equals(this.zzb.zzb(t2))) {
            return false;
        }
        if (this.zzc) {
            return this.zzd.zza(t).equals(this.zzd.zza(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final int zza(T t) {
        int iHashCode = this.zzb.zzb(t).hashCode();
        if (this.zzc) {
            return (iHashCode * 53) + this.zzd.zza(t).hashCode();
        }
        return iHashCode;
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final void zzb(T t, T t2) {
        zzle.zza(this.zzb, t, t2);
        if (this.zzc) {
            zzle.zza(this.zzd, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final void zza(T t, zzmr zzmrVar) throws IOException {
        Iterator itZzd = this.zzd.zza(t).zzd();
        while (itZzd.hasNext()) {
            Map.Entry entry = (Map.Entry) itZzd.next();
            zziw zziwVar = (zziw) entry.getKey();
            if (zziwVar.zzc() != zzmo.MESSAGE || zziwVar.zzd() || zziwVar.zze()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof zzjr) {
                zzmrVar.zza(zziwVar.zza(), (Object) ((zzjr) entry).zza().zzc());
            } else {
                zzmrVar.zza(zziwVar.zza(), entry.getValue());
            }
        }
        zzlu<?, ?> zzluVar = this.zzb;
        zzluVar.zzb(zzluVar.zzb(t), zzmrVar);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x007b. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c4 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.vision.zzlc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(T r10, byte[] r11, int r12, int r13, com.google.android.gms.internal.vision.zzhn r14) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzkq.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.vision.zzhn):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x008a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[LOOP:0: B:47:0x000c->B:55:?, LOOP_END, SYNTHETIC] */
    @Override // com.google.android.gms.internal.vision.zzlc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zza(T r11, com.google.android.gms.internal.vision.zzld r12, com.google.android.gms.internal.vision.zzio r13) throws java.io.IOException {
        /*
            r10 = this;
            com.google.android.gms.internal.vision.zzlu<?, ?> r0 = r10.zzb
            com.google.android.gms.internal.vision.zziq<?> r1 = r10.zzd
            java.lang.Object r2 = r0.zzc(r11)
            com.google.android.gms.internal.vision.zziu r3 = r1.zzb(r11)
        Lc:
            int r4 = r12.zza()     // Catch: java.lang.Throwable -> L93
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 != r5) goto L19
            r0.zzb(r11, r2)
            return
        L19:
            int r4 = r12.zzb()     // Catch: java.lang.Throwable -> L93
            r6 = 11
            if (r4 == r6) goto L40
        L23:
            r5 = r4 & 7
            r6 = 2
            if (r5 != r6) goto L3b
            com.google.android.gms.internal.vision.zzkk r5 = r10.zza     // Catch: java.lang.Throwable -> L93
            int r4 = r4 >>> 3
            java.lang.Object r4 = r1.zza(r13, r5, r4)     // Catch: java.lang.Throwable -> L93
            if (r4 == 0) goto L36
            r1.zza(r12, r4, r13, r3)     // Catch: java.lang.Throwable -> L93
            goto L87
        L36:
            boolean r4 = r0.zza(r2, r12)     // Catch: java.lang.Throwable -> L93
            goto L88
        L3b:
            boolean r4 = r12.zzc()     // Catch: java.lang.Throwable -> L93
            goto L88
        L40:
            r4 = 0
            r6 = 0
            r6 = r4
            r7 = 0
        L46:
            int r8 = r12.zza()     // Catch: java.lang.Throwable -> L93
            if (r8 == r5) goto L74
            int r8 = r12.zzb()     // Catch: java.lang.Throwable -> L93
            r9 = 16
            if (r8 != r9) goto L5f
            int r7 = r12.zzo()     // Catch: java.lang.Throwable -> L93
            com.google.android.gms.internal.vision.zzkk r4 = r10.zza     // Catch: java.lang.Throwable -> L93
            java.lang.Object r4 = r1.zza(r13, r4, r7)     // Catch: java.lang.Throwable -> L93
            goto L46
        L5f:
            r9 = 26
            if (r8 != r9) goto L6e
            if (r4 == 0) goto L69
            r1.zza(r12, r4, r13, r3)     // Catch: java.lang.Throwable -> L93
            goto L46
        L69:
            com.google.android.gms.internal.vision.zzht r6 = r12.zzn()     // Catch: java.lang.Throwable -> L93
            goto L46
        L6e:
            boolean r8 = r12.zzc()     // Catch: java.lang.Throwable -> L93
            if (r8 != 0) goto L46
        L74:
            int r5 = r12.zzb()     // Catch: java.lang.Throwable -> L93
            r8 = 12
            if (r5 != r8) goto L8e
            if (r6 == 0) goto L87
            if (r4 == 0) goto L84
            r1.zza(r6, r4, r13, r3)     // Catch: java.lang.Throwable -> L93
            goto L87
        L84:
            r0.zza(r2, r7, r6)     // Catch: java.lang.Throwable -> L93
        L87:
            r4 = 1
        L88:
            if (r4 != 0) goto Lc
            r0.zzb(r11, r2)
            return
        L8e:
            com.google.android.gms.internal.vision.zzjk r12 = com.google.android.gms.internal.vision.zzjk.zze()     // Catch: java.lang.Throwable -> L93
            throw r12     // Catch: java.lang.Throwable -> L93
        L93:
            r12 = move-exception
            r0.zzb(r11, r2)
            goto L99
        L98:
            throw r12
        L99:
            goto L98
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzkq.zza(java.lang.Object, com.google.android.gms.internal.vision.zzld, com.google.android.gms.internal.vision.zzio):void");
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final void zzc(T t) {
        this.zzb.zzd(t);
        this.zzd.zzc(t);
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final boolean zzd(T t) {
        return this.zzd.zza(t).zzf();
    }

    @Override // com.google.android.gms.internal.vision.zzlc
    public final int zzb(T t) {
        zzlu<?, ?> zzluVar = this.zzb;
        int iZze = zzluVar.zze(zzluVar.zzb(t)) + 0;
        if (this.zzc) {
            return iZze + this.zzd.zza(t).zzg();
        }
        return iZze;
    }
}
