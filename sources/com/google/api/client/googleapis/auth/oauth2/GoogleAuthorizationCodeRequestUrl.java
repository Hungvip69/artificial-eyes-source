package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.oauth2.AuthorizationCodeRequestUrl;
import com.google.api.client.auth.oauth2.AuthorizationRequestUrl;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class GoogleAuthorizationCodeRequestUrl extends AuthorizationCodeRequestUrl {

    @Key("access_type")
    private String accessType;

    @Key("approval_prompt")
    private String approvalPrompt;

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public /* bridge */ /* synthetic */ AuthorizationCodeRequestUrl setResponseTypes(Collection collection) {
        return setResponseTypes((Collection<String>) collection);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public /* bridge */ /* synthetic */ AuthorizationRequestUrl setResponseTypes(Collection collection) {
        return setResponseTypes((Collection<String>) collection);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public /* bridge */ /* synthetic */ AuthorizationCodeRequestUrl setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public /* bridge */ /* synthetic */ AuthorizationRequestUrl setScopes(Collection collection) {
        return setScopes((Collection<String>) collection);
    }

    public GoogleAuthorizationCodeRequestUrl(String clientId, String redirectUri, Collection<String> scopes) {
        this(GoogleOAuthConstants.AUTHORIZATION_SERVER_URL, clientId, redirectUri, scopes);
    }

    public GoogleAuthorizationCodeRequestUrl(String authorizationServerEncodedUrl, String clientId, String redirectUri, Collection<String> scopes) {
        super(authorizationServerEncodedUrl, clientId);
        setRedirectUri(redirectUri);
        setScopes(scopes);
    }

    public GoogleAuthorizationCodeRequestUrl(GoogleClientSecrets clientSecrets, String redirectUri, Collection<String> scopes) {
        this(clientSecrets.getDetails().getClientId(), redirectUri, scopes);
    }

    public final String getApprovalPrompt() {
        return this.approvalPrompt;
    }

    public GoogleAuthorizationCodeRequestUrl setApprovalPrompt(String approvalPrompt) {
        this.approvalPrompt = approvalPrompt;
        return this;
    }

    public final String getAccessType() {
        return this.accessType;
    }

    public GoogleAuthorizationCodeRequestUrl setAccessType(String accessType) {
        this.accessType = accessType;
        return this;
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public GoogleAuthorizationCodeRequestUrl setResponseTypes(Collection<String> responseTypes) {
        return (GoogleAuthorizationCodeRequestUrl) super.setResponseTypes(responseTypes);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public GoogleAuthorizationCodeRequestUrl setRedirectUri(String redirectUri) {
        Preconditions.checkNotNull(redirectUri);
        return (GoogleAuthorizationCodeRequestUrl) super.setRedirectUri(redirectUri);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public GoogleAuthorizationCodeRequestUrl setScopes(Collection<String> scopes) {
        Preconditions.checkArgument(scopes.iterator().hasNext());
        return (GoogleAuthorizationCodeRequestUrl) super.setScopes(scopes);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public GoogleAuthorizationCodeRequestUrl setClientId(String clientId) {
        return (GoogleAuthorizationCodeRequestUrl) super.setClientId(clientId);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl
    public GoogleAuthorizationCodeRequestUrl setState(String state) {
        return (GoogleAuthorizationCodeRequestUrl) super.setState(state);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl, com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData
    public GoogleAuthorizationCodeRequestUrl set(String fieldName, Object value) {
        return (GoogleAuthorizationCodeRequestUrl) super.set(fieldName, value);
    }

    @Override // com.google.api.client.auth.oauth2.AuthorizationCodeRequestUrl, com.google.api.client.auth.oauth2.AuthorizationRequestUrl, com.google.api.client.http.GenericUrl, com.google.api.client.util.GenericData, java.util.AbstractMap
    public GoogleAuthorizationCodeRequestUrl clone() {
        return (GoogleAuthorizationCodeRequestUrl) super.clone();
    }
}
