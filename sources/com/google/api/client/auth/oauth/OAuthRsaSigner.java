package com.google.api.client.auth.oauth;

import com.google.api.client.util.Base64;
import com.google.api.client.util.SecurityUtils;
import com.google.api.client.util.StringUtils;
import java.security.GeneralSecurityException;
import java.security.PrivateKey;
import java.security.Signature;

/* JADX INFO: loaded from: classes2.dex */
public final class OAuthRsaSigner implements OAuthSigner {
    public PrivateKey privateKey;

    @Override // com.google.api.client.auth.oauth.OAuthSigner
    public String getSignatureMethod() {
        return "RSA-SHA1";
    }

    @Override // com.google.api.client.auth.oauth.OAuthSigner
    public String computeSignature(String signatureBaseString) throws GeneralSecurityException {
        Signature signer = SecurityUtils.getSha1WithRsaSignatureAlgorithm();
        byte[] data = StringUtils.getBytesUtf8(signatureBaseString);
        return Base64.encodeBase64String(SecurityUtils.sign(signer, this.privateKey, data));
    }
}
