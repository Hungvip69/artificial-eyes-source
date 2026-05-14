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
public class PasswordTokenRequest extends TokenRequest {

    @Key
    private String password;

    @Key
    private String username;

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ TokenRequest setResponseClass(Class cls) {
        return setResponseClass((Class<? extends TokenResponse>) cls);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ TokenRequest setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }

    public PasswordTokenRequest(HttpTransport transport, JsonFactory jsonFactory, GenericUrl tokenServerUrl, String username, String password) {
        super(transport, jsonFactory, tokenServerUrl, "password");
        setUsername(username);
        setPassword(password);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public PasswordTokenRequest setRequestInitializer(HttpRequestInitializer requestInitializer) {
        return (PasswordTokenRequest) super.setRequestInitializer(requestInitializer);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public PasswordTokenRequest setTokenServerUrl(GenericUrl tokenServerUrl) {
        return (PasswordTokenRequest) super.setTokenServerUrl(tokenServerUrl);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public PasswordTokenRequest setScopes(Collection<String> scopes) {
        return (PasswordTokenRequest) super.setScopes(scopes);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public PasswordTokenRequest setGrantType(String grantType) {
        return (PasswordTokenRequest) super.setGrantType(grantType);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public PasswordTokenRequest setClientAuthentication(HttpExecuteInterceptor clientAuthentication) {
        return (PasswordTokenRequest) super.setClientAuthentication(clientAuthentication);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public PasswordTokenRequest setResponseClass(Class<? extends TokenResponse> responseClass) {
        return (PasswordTokenRequest) super.setResponseClass(responseClass);
    }

    public final String getUsername() {
        return this.username;
    }

    public PasswordTokenRequest setUsername(String username) {
        this.username = (String) Preconditions.checkNotNull(username);
        return this;
    }

    public final String getPassword() {
        return this.password;
    }

    public PasswordTokenRequest setPassword(String password) {
        this.password = (String) Preconditions.checkNotNull(password);
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest, com.google.api.client.util.GenericData
    public PasswordTokenRequest set(String fieldName, Object value) {
        return (PasswordTokenRequest) super.set(fieldName, value);
    }
}
