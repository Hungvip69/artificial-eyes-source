package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.openidconnect.IdToken;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.webtoken.JsonWebSignature;
import com.google.api.client.util.Key;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GoogleIdToken extends IdToken {
    public static GoogleIdToken parse(JsonFactory jsonFactory, String idTokenString) throws IOException {
        JsonWebSignature jws = JsonWebSignature.parser(jsonFactory).setPayloadClass(Payload.class).parse(idTokenString);
        return new GoogleIdToken(jws.getHeader(), (Payload) jws.getPayload(), jws.getSignatureBytes(), jws.getSignedContentBytes());
    }

    public GoogleIdToken(JsonWebSignature.Header header, Payload payload, byte[] signatureBytes, byte[] signedContentBytes) {
        super(header, payload, signatureBytes, signedContentBytes);
    }

    public boolean verify(GoogleIdTokenVerifier verifier) throws GeneralSecurityException, IOException {
        return verifier.verify(this);
    }

    @Override // com.google.api.client.auth.openidconnect.IdToken, com.google.api.client.json.webtoken.JsonWebToken
    public Payload getPayload() {
        return (Payload) super.getPayload();
    }

    public static class Payload extends IdToken.Payload {

        @Key("email")
        private String email;

        @Key("email_verified")
        private Object emailVerified;

        @Key("hd")
        private String hostedDomain;

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public /* bridge */ /* synthetic */ IdToken.Payload setMethodsReferences(List list) {
            return setMethodsReferences((List<String>) list);
        }

        @Deprecated
        public String getUserId() {
            return getSubject();
        }

        @Deprecated
        public Payload setUserId(String userId) {
            return setSubject(userId);
        }

        @Deprecated
        public String getIssuee() {
            return getAuthorizedParty();
        }

        @Deprecated
        public Payload setIssuee(String issuee) {
            return setAuthorizedParty(issuee);
        }

        public String getHostedDomain() {
            return this.hostedDomain;
        }

        public Payload setHostedDomain(String hostedDomain) {
            this.hostedDomain = hostedDomain;
            return this;
        }

        public String getEmail() {
            return this.email;
        }

        public Payload setEmail(String email) {
            this.email = email;
            return this;
        }

        public Boolean getEmailVerified() {
            if (this.emailVerified == null) {
                return null;
            }
            if (this.emailVerified instanceof Boolean) {
                return (Boolean) this.emailVerified;
            }
            return Boolean.valueOf((String) this.emailVerified);
        }

        public Payload setEmailVerified(Boolean emailVerified) {
            this.emailVerified = emailVerified;
            return this;
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public Payload setAuthorizationTimeSeconds(Long authorizationTimeSeconds) {
            return (Payload) super.setAuthorizationTimeSeconds(authorizationTimeSeconds);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public Payload setAuthorizedParty(String authorizedParty) {
            return (Payload) super.setAuthorizedParty(authorizedParty);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public Payload setNonce(String nonce) {
            return (Payload) super.setNonce(nonce);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public Payload setAccessTokenHash(String accessTokenHash) {
            return (Payload) super.setAccessTokenHash(accessTokenHash);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public Payload setClassReference(String classReference) {
            return (Payload) super.setClassReference(classReference);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload
        public Payload setMethodsReferences(List<String> methodsReferences) {
            return (Payload) super.setMethodsReferences(methodsReferences);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setExpirationTimeSeconds(Long expirationTimeSeconds) {
            return (Payload) super.setExpirationTimeSeconds(expirationTimeSeconds);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setNotBeforeTimeSeconds(Long notBeforeTimeSeconds) {
            return (Payload) super.setNotBeforeTimeSeconds(notBeforeTimeSeconds);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setIssuedAtTimeSeconds(Long issuedAtTimeSeconds) {
            return (Payload) super.setIssuedAtTimeSeconds(issuedAtTimeSeconds);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setIssuer(String issuer) {
            return (Payload) super.setIssuer(issuer);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setAudience(Object audience) {
            return (Payload) super.setAudience(audience);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setJwtId(String jwtId) {
            return (Payload) super.setJwtId(jwtId);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setType(String type) {
            return (Payload) super.setType(type);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setSubject(String subject) {
            return (Payload) super.setSubject(subject);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload, com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
        public Payload set(String fieldName, Object value) {
            return (Payload) super.set(fieldName, value);
        }

        @Override // com.google.api.client.auth.openidconnect.IdToken.Payload, com.google.api.client.json.webtoken.JsonWebToken.Payload, com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
        public Payload clone() {
            return (Payload) super.clone();
        }
    }
}
