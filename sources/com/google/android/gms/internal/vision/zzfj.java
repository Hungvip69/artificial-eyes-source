package com.google.android.gms.internal.vision;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfj extends zzfd {
    zzfj() {
    }

    @Override // com.google.android.gms.internal.vision.zzfd
    public final void zza(Throwable th, Throwable th2) throws IllegalAccessException, InvocationTargetException {
        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
    }

    @Override // com.google.android.gms.internal.vision.zzfd
    public final void zza(Throwable th) {
        th.printStackTrace();
    }
}
