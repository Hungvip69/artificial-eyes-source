package com.google.api.client.auth.oauth2;

import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public class BrowserClientRequestUrl extends AuthorizationRequestUrl {
    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public /* bridge */ /* synthetic */ AuthorizationRequestUrl setResponseTypes(Collection collection) {
        return setResponseTypes((Collection<String>) collection);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public /* bridge */ /* synthetic */ AuthorizationRequestUrl setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }

    public BrowserClientRequestUrl(String encodedAuthorizationServerUrl, String clientId) {
        super(encodedAuthorizationServerUrl, clientId, Collections.singleton("token"));
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public BrowserClientRequestUrl setResponseTypes(Collection<String> responseTypes) {
        return (BrowserClientRequestUrl) super.setResponseTypes(responseTypes);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public BrowserClientRequestUrl setRedirectUri(String redirectUri) {
        return (BrowserClientRequestUrl) super.setRedirectUri(redirectUri);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public BrowserClientRequestUrl setScopes(Collection<String> scopes) {
        return (BrowserClientRequestUrl) super.setScopes(scopes);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public BrowserClientRequestUrl setClientId(String clientId) {
        return (BrowserClientRequestUrl) super.setClientId(clientId);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public BrowserClientRequestUrl setState(String state) {
        return (BrowserClientRequestUrl) super.setState(state);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl, com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData
    public BrowserClientRequestUrl set(String fieldName, Object value) {
        return (BrowserClientRequestUrl) super.set(fieldName, value);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl, com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData, java.util.AbstractMap
    public BrowserClientRequestUrl clone() {
        return (BrowserClientRequestUrl) super.clone();
    }
}
