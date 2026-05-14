package com.google.api.client.auth.oauth2;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class ClientCredentialsTokenRequest extends TokenRequest {
    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ TokenRequest setResponseClass(Class cls) {
        return setResponseClass((Class<? extends TokenResponse>) cls);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ TokenRequest setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }

    public ClientCredentialsTokenRequest(HttpTransport transport, JsonFactory jsonFactory, GenericUrl tokenServerUrl) {
        super(transport, jsonFactory, tokenServerUrl, "client_credentials");
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public ClientCredentialsTokenRequest setRequestInitializer(HttpRequestInitializer requestInitializer) {
        return (ClientCredentialsTokenRequest) super.setRequestInitializer(requestInitializer);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public ClientCredentialsTokenRequest setTokenServerUrl(GenericUrl tokenServerUrl) {
        return (ClientCredentialsTokenRequest) super.setTokenServerUrl(tokenServerUrl);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public ClientCredentialsTokenRequest setScopes(Collection<String> scopes) {
        return (ClientCredentialsTokenRequest) super.setScopes(scopes);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public ClientCredentialsTokenRequest setGrantType(String grantType) {
        return (ClientCredentialsTokenRequest) super.setGrantType(grantType);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public ClientCredentialsTokenRequest setClientAuthentication(HttpExecuteInterceptor clientAuthentication) {
        return (ClientCredentialsTokenRequest) super.setClientAuthentication(clientAuthentication);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest, com.google.api.client.util.GenericData
    public ClientCredentialsTokenRequest set(String fieldName, Object value) {
        return (ClientCredentialsTokenRequest) super.set(fieldName, value);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public ClientCredentialsTokenRequest setResponseClass(Class<? extends TokenResponse> responseClass) {
        return (ClientCredentialsTokenRequest) super.setResponseClass(responseClass);
    }
}
