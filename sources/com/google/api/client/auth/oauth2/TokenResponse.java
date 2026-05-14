package com.google.api.client.auth.oauth2;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;
import com.google.api.client.util.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public class TokenResponse extends GenericJson {

    @Key("access_token")
    private String accessToken;

    @Key("expires_in")
    private Long expiresInSeconds;

    @Key("refresh_token")
    private String refreshToken;

    @Key
    private String scope;

    @Key("token_type")
    private String tokenType;

    public String getAccessToken() {
        return this.accessToken;
    }

    public TokenResponse setAccessToken(String accessToken) {
        this.accessToken = (String) Preconditions.checkNotNull(accessToken);
        return this;
    }

    public String getTokenType() {
        return this.tokenType;
    }

    public TokenResponse setTokenType(String tokenType) {
        this.tokenType = (String) Preconditions.checkNotNull(tokenType);
        return this;
    }

    public Long getExpiresInSeconds() {
        return this.expiresInSeconds;
    }

    public TokenResponse setExpiresInSeconds(Long expiresInSeconds) {
        this.expiresInSeconds = expiresInSeconds;
        return this;
    }

    public String getRefreshToken() {
        return this.refreshToken;
    }

    public TokenResponse setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
        return this;
    }

    public String getScope() {
        return this.scope;
    }

    public TokenResponse setScope(String scope) {
        this.scope = scope;
        return this;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
    public TokenResponse set(String fieldName, Object value) {
        return (TokenResponse) super.set(fieldName, value);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
    public TokenResponse clone() {
        return (TokenResponse) super.clone();
    }
}
