package com.google.appinventor.components.runtime.util;

import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpUriRequest;

/* JADX INFO: loaded from: classes.dex */
public interface IClientLoginHelper {
    HttpResponse execute(HttpUriRequest httpUriRequest) throws IOException;

    void forgetAccountName();

    String getAuthToken() throws ClientProtocolException;
}
