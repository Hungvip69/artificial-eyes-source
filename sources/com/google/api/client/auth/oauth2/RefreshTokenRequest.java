package com.google.api.client.auth.oauth2;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class RefreshTokenRequest extends TokenRequest {

    @Key("refresh_token")
    private String refreshToken;

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ TokenRequest setResponseClass(Class cls) {
        return setResponseClass((Class<? extends TokenResponse>) cls);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ TokenRequest setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }

    public RefreshTokenRequest(HttpTransport transport, JsonFactory jsonFactory, GenericUrl tokenServerUrl, String refreshToken) {
        super(transport, jsonFactory, tokenServerUrl, "refresh_token");
        setRefreshToken(refreshToken);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public RefreshTokenRequest setRequestInitializer(HttpRequestInitializer requestInitializer) {
        return (RefreshTokenRequest) super.setRequestInitializer(requestInitializer);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public RefreshTokenRequest setTokenServerUrl(GenericUrl tokenServerUrl) {
        return (RefreshTokenRequest) super.setTokenServerUrl(tokenServerUrl);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public RefreshTokenRequest setScopes(Collection<String> scopes) {
        return (RefreshTokenRequest) super.setScopes(scopes);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public RefreshTokenRequest setGrantType(String grantType) {
        return (RefreshTokenRequest) super.setGrantType(grantType);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public RefreshTokenRequest setClientAuthentication(HttpExecuteInterceptor clientAuthentication) {
        return (RefreshTokenRequest) super.setClientAuthentication(clientAuthentication);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public RefreshTokenRequest setResponseClass(Class<? extends TokenResponse> responseClass) {
        return (RefreshTokenRequest) super.setResponseClass(responseClass);
    }

    public final String getRefreshToken() {
        return this.refreshToken;
    }

    public RefreshTokenRequest setRefreshToken(String refreshToken) {
        this.refreshToken = (String) Preconditions.checkNotNull(refreshToken);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest, com.google.api.client.util.GenericData
    public RefreshTokenRequest set(String fieldName, Object value) {
        return (RefreshTokenRequest) super.set(fieldName, value);
    }
}
