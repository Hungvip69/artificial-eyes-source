package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.oauth2.ClientParametersAuthentication;
import com.google.api.client.auth.oauth2.RefreshTokenRequest;
import com.google.api.client.auth.oauth2.TokenRequest;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import java.io.IOException;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class GoogleRefreshTokenRequest extends RefreshTokenRequest {
    @Override // com.google.api.client.auth.oauth2.RefreshTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ RefreshTokenRequest setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }

    @Override // com.google.api.client.auth.oauth2.RefreshTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ TokenRequest setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }

    public GoogleRefreshTokenRequest(HttpTransport transport, JsonFactory jsonFactory, String refreshToken, String clientId, String clientSecret) {
        super(transport, jsonFactory, new GenericUrl(GoogleOAuthConstants.TOKEN_SERVER_URL), refreshToken);
        setClientAuthentication((HttpExecuteInterceptor) new ClientParametersAuthentication(clientId, clientSecret));
    }

    @Override // com.google.api.client.auth.oauth2.RefreshTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public GoogleRefreshTokenRequest setRequestInitializer(HttpRequestInitializer requestInitializer) {
        return (GoogleRefreshTokenRequest) super.setRequestInitializer(requestInitializer);
    }

    @Override // com.google.api.client.auth.oauth2.RefreshTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public GoogleRefreshTokenRequest setTokenServerUrl(GenericUrl tokenServerUrl) {
        return (GoogleRefreshTokenRequest) super.setTokenServerUrl(tokenServerUrl);
    }

    @Override // com.google.api.client.auth.oauth2.RefreshTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public GoogleRefreshTokenRequest setScopes(Collection<String> scopes) {
        return (GoogleRefreshTokenRequest) super.setScopes(scopes);
    }

    @Override // com.google.api.client.auth.oauth2.RefreshTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public GoogleRefreshTokenRequest setGrantType(String grantType) {
        return (GoogleRefreshTokenRequest) super.setGrantType(grantType);
    }

    @Override // com.google.api.client.auth.oauth2.RefreshTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public GoogleRefreshTokenRequest setClientAuthentication(HttpExecuteInterceptor clientAuthentication) {
        return (GoogleRefreshTokenRequest) super.setClientAuthentication(clientAuthentication);
    }

    @Override // com.google.api.client.auth.oauth2.RefreshTokenRequest
    public GoogleRefreshTokenRequest setRefreshToken(String refreshToken) {
        return (GoogleRefreshTokenRequest) super.setRefreshToken(refreshToken);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public GoogleTokenResponse execute() throws IOException {
        return (GoogleTokenResponse) executeUnparsed().parseAs(GoogleTokenResponse.class);
    }

    @Override // com.google.api.client.auth.oauth2.RefreshTokenRequest, com.google.api.client.auth.oauth2.TokenRequest, com.google.api.client.util.GenericData
    public GoogleRefreshTokenRequest set(String fieldName, Object value) {
        return (GoogleRefreshTokenRequest) super.set(fieldName, value);
    }
}
