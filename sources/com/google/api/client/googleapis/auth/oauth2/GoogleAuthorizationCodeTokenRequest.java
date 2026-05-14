package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest;
import com.google.api.client.auth.oauth2.ClientParametersAuthentication;
import com.google.api.client.auth.oauth2.TokenRequest;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.util.Preconditions;
import java.io.IOException;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class GoogleAuthorizationCodeTokenRequest extends AuthorizationCodeTokenRequest {
    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ AuthorizationCodeTokenRequest setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public /* bridge */ /* synthetic */ TokenRequest setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }

    public GoogleAuthorizationCodeTokenRequest(HttpTransport transport, JsonFactory jsonFactory, String clientId, String clientSecret, String code, String redirectUri) {
        this(transport, jsonFactory, GoogleOAuthConstants.TOKEN_SERVER_URL, clientId, clientSecret, code, redirectUri);
    }

    public GoogleAuthorizationCodeTokenRequest(HttpTransport transport, JsonFactory jsonFactory, String tokenServerEncodedUrl, String clientId, String clientSecret, String code, String redirectUri) {
        super(transport, jsonFactory, new GenericUrl(tokenServerEncodedUrl), code);
        setClientAuthentication((HttpExecuteInterceptor) new ClientParametersAuthentication(clientId, clientSecret));
        setRedirectUri(redirectUri);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public GoogleAuthorizationCodeTokenRequest setRequestInitializer(HttpRequestInitializer requestInitializer) {
        return (GoogleAuthorizationCodeTokenRequest) super.setRequestInitializer(requestInitializer);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public GoogleAuthorizationCodeTokenRequest setTokenServerUrl(GenericUrl tokenServerUrl) {
        return (GoogleAuthorizationCodeTokenRequest) super.setTokenServerUrl(tokenServerUrl);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public GoogleAuthorizationCodeTokenRequest setScopes(Collection<String> scopes) {
        return (GoogleAuthorizationCodeTokenRequest) super.setScopes(scopes);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public GoogleAuthorizationCodeTokenRequest setGrantType(String grantType) {
        return (GoogleAuthorizationCodeTokenRequest) super.setGrantType(grantType);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest, com.google.api.client.auth.oauth2.TokenRequest
    public GoogleAuthorizationCodeTokenRequest setClientAuthentication(HttpExecuteInterceptor clientAuthentication) {
        Preconditions.checkNotNull(clientAuthentication);
        return (GoogleAuthorizationCodeTokenRequest) super.setClientAuthentication(clientAuthentication);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest
    public GoogleAuthorizationCodeTokenRequest setCode(String code) {
        return (GoogleAuthorizationCodeTokenRequest) super.setCode(code);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest
    public GoogleAuthorizationCodeTokenRequest setRedirectUri(String redirectUri) {
        Preconditions.checkNotNull(redirectUri);
        return (GoogleAuthorizationCodeTokenRequest) super.setRedirectUri(redirectUri);
    }

    @Override // com.google.api.client.auth.oauth2.TokenRequest
    public GoogleTokenResponse execute() throws IOException {
        return (GoogleTokenResponse) executeUnparsed().parseAs(GoogleTokenResponse.class);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeTokenRequest, com.google.api.client.auth.oauth2.TokenRequest, com.google.api.client.util.GenericData
    public GoogleAuthorizationCodeTokenRequest set(String fieldName, Object value) {
        return (GoogleAuthorizationCodeTokenRequest) super.set(fieldName, value);
    }
}
