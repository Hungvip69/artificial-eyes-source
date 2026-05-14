package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.oauth2.AuthorizationRequestUrl;
import com.google.api.client.auth.oauth2.BrowserClientRequestUrl;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class GoogleBrowserClientRequestUrl extends BrowserClientRequestUrl {

    @Key("approval_prompt")
    private String approvalPrompt;

    @Override // com.google.api.client.auth.oauth2.BrowserClientRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public /* bridge */ /* synthetic */ AuthorizationRequestUrl setResponseTypes(Collection collection) {
        return setResponseTypes((Collection<String>) collection);
    }

    @Override // com.google.api.client.auth.oauth2.BrowserClientRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public /* bridge */ /* synthetic */ BrowserClientRequestUrl setResponseTypes(Collection collection) {
        return setResponseTypes((Collection<String>) collection);
    }

    @Override // com.google.api.client.auth.oauth2.BrowserClientRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public /* bridge */ /* synthetic */ AuthorizationRequestUrl setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }

    @Override // com.google.api.client.auth.oauth2.BrowserClientRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public /* bridge */ /* synthetic */ BrowserClientRequestUrl setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }

    public GoogleBrowserClientRequestUrl(String clientId, String redirectUri, Collection<String> scopes) {
        super(GoogleOAuthConstants.AUTHORIZATION_SERVER_URL, clientId);
        setRedirectUri(redirectUri);
        setScopes(scopes);
    }

    public GoogleBrowserClientRequestUrl(GoogleClientSecrets clientSecrets, String redirectUri, Collection<String> scopes) {
        this(clientSecrets.getDetails().getClientId(), redirectUri, scopes);
    }

    public final String getApprovalPrompt() {
        return this.approvalPrompt;
    }

    public GoogleBrowserClientRequestUrl setApprovalPrompt(String approvalPrompt) {
        this.approvalPrompt = approvalPrompt;
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.BrowserClientRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public GoogleBrowserClientRequestUrl setResponseTypes(Collection<String> responseTypes) {
        return (GoogleBrowserClientRequestUrl) super.setResponseTypes(responseTypes);
    }

    @Override // com.google.api.client.auth.oauth2.BrowserClientRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public GoogleBrowserClientRequestUrl setRedirectUri(String redirectUri) {
        return (GoogleBrowserClientRequestUrl) super.setRedirectUri(redirectUri);
    }

    @Override // com.google.api.client.auth.oauth2.BrowserClientRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public GoogleBrowserClientRequestUrl setScopes(Collection<String> scopes) {
        Preconditions.checkArgument(scopes.iterator().hasNext());
        return (GoogleBrowserClientRequestUrl) super.setScopes(scopes);
    }

    @Override // com.google.api.client.auth.oauth2.BrowserClientRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public GoogleBrowserClientRequestUrl setClientId(String clientId) {
        return (GoogleBrowserClientRequestUrl) super.setClientId(clientId);
    }

    @Override // com.google.api.client.auth.oauth2.BrowserClientRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public GoogleBrowserClientRequestUrl setState(String state) {
        return (GoogleBrowserClientRequestUrl) super.setState(state);
    }

    @Override // com.google.api.client.auth.oauth2.BrowserClientRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl, com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData
    public GoogleBrowserClientRequestUrl set(String fieldName, Object value) {
        return (GoogleBrowserClientRequestUrl) super.set(fieldName, value);
    }

    @Override // com.google.api.client.auth.oauth2.BrowserClientRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl, com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData, java.util.AbstractMap
    public GoogleBrowserClientRequestUrl clone() {
        return (GoogleBrowserClientRequestUrl) super.clone();
    }
}
