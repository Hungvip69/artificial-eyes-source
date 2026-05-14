package com.google.api.client.auth.oauth;

/* JADX INFO: loaded from: classes2.dex */
public class OAuthGetAccessToken extends AbstractOAuthGetToken {
    public String temporaryToken;
    public String verifier;

    public OAuthGetAccessToken(String authorizationServerUrl) {
        super(authorizationServerUrl);
    }

    @Override // com.google.api.client.auth.oauth.AbstractOAuthGetToken
    public OAuthParameters createParameters() {
        OAuthParameters result = super.createParameters();
        result.token = this.temporaryToken;
        result.verifier = this.verifier;
        return result;
    }
}
