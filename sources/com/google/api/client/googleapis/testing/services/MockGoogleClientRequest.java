package com.google.api.client.googleapis.testing.services;

import com.google.api.client.googleapis.services.AbstractGoogleClient;
import com.google.api.client.googleapis.services.AbstractGoogleClientRequest;
import com.google.api.client.http.HttpContent;
import com.google.api.client.http.HttpHeaders;

/* JADX INFO: loaded from: classes2.dex */
public class MockGoogleClientRequest<T> extends AbstractGoogleClientRequest<T> {
    public MockGoogleClientRequest(AbstractGoogleClient client, String method, String uriTemplate, HttpContent content, Class<T> responseClass) {
        super(client, method, uriTemplate, content, responseClass);
    }

    @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
    public MockGoogleClientRequest<T> setDisableGZipContent(boolean disableGZipContent) {
        return (MockGoogleClientRequest) super.setDisableGZipContent(disableGZipContent);
    }

    @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
    public MockGoogleClientRequest<T> setRequestHeaders(HttpHeaders headers) {
        return (MockGoogleClientRequest) super.setRequestHeaders(headers);
    }

    @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
    public MockGoogleClientRequest<T> set(String fieldName, Object value) {
        return (MockGoogleClientRequest) super.set(fieldName, value);
    }
}
