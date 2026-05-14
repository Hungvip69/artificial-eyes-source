package com.google.api.client.auth.oauth;

/* JADX INFO: loaded from: classes2.dex */
public class OAuthGetTemporaryToken extends AbstractOAuthGetToken {
    public String callback;

    public OAuthGetTemporaryToken(String authorizationServerUrl) {
        super(authorizationServerUrl);
    }

    @Override // com.google.api.client.auth.oauth.AbstractOAuthGetToken
    public OAuthParameters createParameters() {
        OAuthParameters result = super.createParameters();
        result.callback = this.callback;
        return result;
    }
}
