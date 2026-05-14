package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.oauth2.TokenResponse;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class GoogleTokenResponse extends TokenResponse {

    @Key("id_token")
    private String idToken;

    @Override // com.google.api.client.auth.oauth2.TokenResponse
    public GoogleTokenResponse setAccessToken(String accessToken) {
        return (GoogleTokenResponse) super.setAccessToken(accessToken);
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse
    public GoogleTokenResponse setTokenType(String tokenType) {
        return (GoogleTokenResponse) super.setTokenType(tokenType);
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse
    public GoogleTokenResponse setExpiresInSeconds(Long expiresIn) {
        return (GoogleTokenResponse) super.setExpiresInSeconds(expiresIn);
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse
    public GoogleTokenResponse setRefreshToken(String refreshToken) {
        return (GoogleTokenResponse) super.setRefreshToken(refreshToken);
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse
    public GoogleTokenResponse setScope(String scope) {
        return (GoogleTokenResponse) super.setScope(scope);
    }

    public final String getIdToken() {
        return this.idToken;
    }

    public GoogleTokenResponse setIdToken(String idToken) {
        this.idToken = (String) Preconditions.checkNotNull(idToken);
        return this;
    }

    public GoogleIdToken parseIdToken() throws IOException {
        return GoogleIdToken.parse(getFactory(), getIdToken());
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse, com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public GoogleTokenResponse set(String fieldName, Object value) {
        return (GoogleTokenResponse) super.set(fieldName, value);
    }

    @Override // com.google.api.client.auth.oauth2.TokenResponse, com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public GoogleTokenResponse clone() {
        return (GoogleTokenResponse) super.clone();
    }
}
