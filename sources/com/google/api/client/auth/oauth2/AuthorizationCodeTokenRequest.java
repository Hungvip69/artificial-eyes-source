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
public class AuthorizationCodeTokenRequest extends TokenRequest {

    @Key
    private String code;

    @Key("redirect_uri")
    private String redirectUri;

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ TokenRequest setResponseClass(Class cls) {
        return setResponseClass((Class<? extends TokenResponse>) cls);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ TokenRequest setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }

    public AuthorizationCodeTokenRequest(HttpTransport transport, JsonFactory jsonFactory, GenericUrl tokenServerUrl, String code) {
        super(transport, jsonFactory, tokenServerUrl, "authorization_code");
        setCode(code);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public AuthorizationCodeTokenRequest setRequestInitializer(HttpRequestInitializer requestInitializer) {
        return (AuthorizationCodeTokenRequest) super.setRequestInitializer(requestInitializer);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public AuthorizationCodeTokenRequest setTokenServerUrl(GenericUrl tokenServerUrl) {
        return (AuthorizationCodeTokenRequest) super.setTokenServerUrl(tokenServerUrl);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public AuthorizationCodeTokenRequest setScopes(Collection<String> scopes) {
        return (AuthorizationCodeTokenRequest) super.setScopes(scopes);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public AuthorizationCodeTokenRequest setGrantType(String grantType) {
        return (AuthorizationCodeTokenRequest) super.setGrantType(grantType);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public AuthorizationCodeTokenRequest setClientAuthentication(HttpExecuteInterceptor clientAuthentication) {
        return (AuthorizationCodeTokenRequest) super.setClientAuthentication(clientAuthentication);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public AuthorizationCodeTokenRequest setResponseClass(Class<? extends TokenResponse> responseClass) {
        return (AuthorizationCodeTokenRequest) super.setResponseClass(responseClass);
    }

    public final String getCode() {
        return this.code;
    }

    public AuthorizationCodeTokenRequest setCode(String code) {
        this.code = (String) Preconditions.checkNotNull(code);
        return this;
    }

    public final String getRedirectUri() {
        return this.redirectUri;
    }

    public AuthorizationCodeTokenRequest setRedirectUri(String redirectUri) {
        this.redirectUri = redirectUri;
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest, com.google.api.client.util.GenericData
    public AuthorizationCodeTokenRequest set(String fieldName, Object value) {
        return (AuthorizationCodeTokenRequest) super.set(fieldName, value);
    }
}
