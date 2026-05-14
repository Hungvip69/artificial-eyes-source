package com.google.api.client.googleapis.services.json;

import com.google.api.client.googleapis.services.AbstractGoogleClientRequest;
import com.google.api.client.googleapis.services.CommonGoogleClientRequestInitializer;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class CommonGoogleJsonClientRequestInitializer extends CommonGoogleClientRequestInitializer {
    @Deprecated
    public CommonGoogleJsonClientRequestInitializer() {
    }

    @Deprecated
    public CommonGoogleJsonClientRequestInitializer(String key) {
        super(key);
    }

    @Deprecated
    public CommonGoogleJsonClientRequestInitializer(String key, String userIp) {
        super(key, userIp);
    }

    @Override // com.google.api.client.googleapis.services.CommonGoogleClientRequestInitializer, com.google.api.client.googleapis.services.GoogleClientRequestInitializer
    public final void initialize(AbstractGoogleClientRequest<?> request) throws IOException {
        super.initialize(request);
        initializeJsonRequest((AbstractGoogleJsonClientRequest) request);
    }

    protected void initializeJsonRequest(AbstractGoogleJsonClientRequest<?> request) throws IOException {
    }

    public static class Builder extends CommonGoogleClientRequestInitializer.Builder {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.api.client.googleapis.services.CommonGoogleClientRequestInitializer.Builder
        public Builder self() {
            return this;
        }
    }
}
