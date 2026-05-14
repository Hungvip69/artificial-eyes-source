package com.google.api.client.auth.oauth2;

import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public class AuthorizationCodeRequestUrl extends AuthorizationRequestUrl {
    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public /* bridge */ /* synthetic */ AuthorizationRequestUrl setResponseTypes(Collection collection) {
        return setResponseTypes((Collection<String>) collection);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public /* bridge */ /* synthetic */ AuthorizationRequestUrl setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }

    public AuthorizationCodeRequestUrl(String authorizationServerEncodedUrl, String clientId) {
        super(authorizationServerEncodedUrl, clientId, Collections.singleton("code"));
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public AuthorizationCodeRequestUrl setResponseTypes(Collection<String> responseTypes) {
        return (AuthorizationCodeRequestUrl) super.setResponseTypes(responseTypes);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public AuthorizationCodeRequestUrl setRedirectUri(String redirectUri) {
        return (AuthorizationCodeRequestUrl) super.setRedirectUri(redirectUri);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public AuthorizationCodeRequestUrl setScopes(Collection<String> scopes) {
        return (AuthorizationCodeRequestUrl) super.setScopes(scopes);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public AuthorizationCodeRequestUrl setClientId(String clientId) {
        return (AuthorizationCodeRequestUrl) super.setClientId(clientId);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public AuthorizationCodeRequestUrl setState(String state) {
        return (AuthorizationCodeRequestUrl) super.setState(state);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl, com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData
    public AuthorizationCodeRequestUrl set(String fieldName, Object value) {
        return (AuthorizationCodeRequestUrl) super.set(fieldName, value);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationRequestUrl, com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData, java.util.AbstractMap
    public AuthorizationCodeRequestUrl clone() {
        return (AuthorizationCodeRequestUrl) super.clone();
    }
}
