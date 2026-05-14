package com.google.android.gms.phenotype;

import android.net.Uri;
import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes2.dex */
public final class Phenotype {
    private static final Api.ClientKey<com.google.android.gms.internal.phenotype.zze> CLIENT_KEY = new Api.ClientKey<>();
    private static final Api.AbstractClientBuilder<com.google.android.gms.internal.phenotype.zze, Api.ApiOptions.NoOptions> CLIENT_BUILDER = new zzl();

    @Deprecated
    private static final Api<Api.ApiOptions.NoOptions> API = new Api<>("Phenotype.API", CLIENT_BUILDER, CLIENT_KEY);

    @Deprecated
    private static final zzm zzaj = new com.google.android.gms.internal.phenotype.zzd();

    private Phenotype() {
    }

    public static Uri getContentProviderUri(String str) {
        String strValueOf = String.valueOf(Uri.encode(str));
        return Uri.parse(strValueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(strValueOf) : new String("content://com.google.android.gms.phenotype/"));
    }
}
