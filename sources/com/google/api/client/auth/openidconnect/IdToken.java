package com.google.api.client.auth.openidconnect;

import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.webtoken.JsonWebSignature;
import com.google.api.client.json.webtoken.JsonWebToken;
import com.google.api.client.util.Key;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class IdToken extends JsonWebSignature {
    public IdToken(JsonWebSignature.Header header, Payload payload, byte[] signatureBytes, byte[] signedContentBytes) {
        super(header, payload, signatureBytes, signedContentBytes);
    }

    @Override // com.google.api.client.json.webtoken.JsonWebToken
    public Payload getPayload() {
        return (Payload) super.getPayload();
    }

    public final boolean verifyIssuer(String expectedIssuer) {
        return verifyIssuer(Collections.singleton(expectedIssuer));
    }

    public final boolean verifyIssuer(Collection<String> expectedIssuer) {
        return expectedIssuer.contains(getPayload().getIssuer());
    }

    public final boolean verifyAudience(Collection<String> trustedClientIds) {
        Collection<String> audience = getPayload().getAudienceAsList();
        if (audience.isEmpty()) {
            return false;
        }
        return trustedClientIds.containsAll(audience);
    }

    public final boolean verifyTime(long currentTimeMillis, long acceptableTimeSkewSeconds) {
        return verifyExpirationTime(currentTimeMillis, acceptableTimeSkewSeconds) && verifyIssuedAtTime(currentTimeMillis, acceptableTimeSkewSeconds);
    }

    public final boolean verifyExpirationTime(long currentTimeMillis, long acceptableTimeSkewSeconds) {
        return currentTimeMillis <= (getPayload().getExpirationTimeSeconds().longValue() + acceptableTimeSkewSeconds) * 1000;
    }

    public final boolean verifyIssuedAtTime(long currentTimeMillis, long acceptableTimeSkewSeconds) {
        return currentTimeMillis >= (getPayload().getIssuedAtTimeSeconds().longValue() - acceptableTimeSkewSeconds) * 1000;
    }

    public static IdToken parse(JsonFactory jsonFactory, String idTokenString) throws IOException {
        JsonWebSignature jws = JsonWebSignature.parser(jsonFactory).setPayloadClass(Payload.class).parse(idTokenString);
        return new IdToken(jws.getHeader(), (Payload) jws.getPayload(), jws.getSignatureBytes(), jws.getSignedContentBytes());
    }

    public static class Payload extends JsonWebToken.Payload {

        @Key("at_hash")
        private String accessTokenHash;

        @Key("auth_time")
        private Long authorizationTimeSeconds;

        @Key("azp")
        private String authorizedParty;

        @Key("acr")
        private String classReference;

        @Key("amr")
        private List<String> methodsReferences;

        @Key
        private String nonce;

        public final Long getAuthorizationTimeSeconds() {
            return this.authorizationTimeSeconds;
        }

        public Payload setAuthorizationTimeSeconds(Long authorizationTimeSeconds) {
            this.authorizationTimeSeconds = authorizationTimeSeconds;
            return this;
        }

        public final String getAuthorizedParty() {
            return this.authorizedParty;
        }

        public Payload setAuthorizedParty(String authorizedParty) {
            this.authorizedParty = authorizedParty;
            return this;
        }

        public final String getNonce() {
            return this.nonce;
        }

        public Payload setNonce(String nonce) {
            this.nonce = nonce;
            return this;
        }

        public final String getAccessTokenHash() {
            return this.accessTokenHash;
        }

        public Payload setAccessTokenHash(String accessTokenHash) {
            this.accessTokenHash = accessTokenHash;
            return this;
        }

        public final String getClassReference() {
            return this.classReference;
        }

        public Payload setClassReference(String classReference) {
            this.classReference = classReference;
            return this;
        }

        public final List<String> getMethodsReferences() {
            return this.methodsReferences;
        }

        public Payload setMethodsReferences(List<String> methodsReferences) {
            this.methodsReferences = methodsReferences;
            return this;
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setExpirationTimeSeconds(Long expirationTimeSeconds) {
            return (Payload) super.setExpirationTimeSeconds(expirationTimeSeconds);
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setNotBeforeTimeSeconds(Long notBeforeTimeSeconds) {
            return (Payload) super.setNotBeforeTimeSeconds(notBeforeTimeSeconds);
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setIssuedAtTimeSeconds(Long issuedAtTimeSeconds) {
            return (Payload) super.setIssuedAtTimeSeconds(issuedAtTimeSeconds);
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setIssuer(String issuer) {
            return (Payload) super.setIssuer(issuer);
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setAudience(Object audience) {
            return (Payload) super.setAudience(audience);
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setJwtId(String jwtId) {
            return (Payload) super.setJwtId(jwtId);
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setType(String type) {
            return (Payload) super.setType(type);
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload
        public Payload setSubject(String subject) {
            return (Payload) super.setSubject(subject);
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload, com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData
        public Payload set(String fieldName, Object value) {
            return (Payload) super.set(fieldName, value);
        }

        @Override // com.google.api.client.json.webtoken.JsonWebToken.Payload, com.google.api.client.json.GenericJson, com.google.api.client.util.GenericData, java.util.AbstractMap
        public Payload clone() {
            return (Payload) super.clone();
        }
    }
}
