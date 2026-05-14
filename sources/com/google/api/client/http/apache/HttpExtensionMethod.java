package com.google.api.client.http.apache;

import com.google.api.client.util.Preconditions;
import java.net.URI;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;

/* JADX INFO: loaded from: classes2.dex */
final class HttpExtensionMethod extends HttpEntityEnclosingRequestBase {
    private final String methodName;

    public HttpExtensionMethod(String methodName, String uri) {
        this.methodName = (String) Preconditions.checkNotNull(methodName);
        setURI(URI.create(uri));
    }

    @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return this.methodName;
    }
}
