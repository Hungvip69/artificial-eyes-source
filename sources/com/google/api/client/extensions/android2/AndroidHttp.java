package com.google.api.client.extensions.android2;

import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.apache.ApacheHttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;

/* JADX INFO: loaded from: classes.dex */
public class AndroidHttp {
    private static final int GINGERBREAD = 9;

    public static HttpTransport newCompatibleTransport() {
        return isGingerbreadOrHigher() ? new NetHttpTransport() : new ApacheHttpTransport();
    }

    public static boolean isGingerbreadOrHigher() {
        return true;
    }
}
