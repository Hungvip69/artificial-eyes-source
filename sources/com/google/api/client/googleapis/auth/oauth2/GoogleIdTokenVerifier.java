package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.openidconnect.IdToken;
import com.google.api.client.auth.openidconnect.IdTokenVerifier;
import com.google.api.client.googleapis.auth.oauth2.GooglePublicKeysManager;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.util.Clock;
import com.google.api.client.util.Preconditions;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GoogleIdTokenVerifier extends IdTokenVerifier {
    private final GooglePublicKeysManager publicKeys;

    public GoogleIdTokenVerifier(HttpTransport transport, JsonFactory jsonFactory) {
        this(new Builder(transport, jsonFactory));
    }

    public GoogleIdTokenVerifier(GooglePublicKeysManager publicKeys) {
        this(new Builder(publicKeys));
    }

    protected GoogleIdTokenVerifier(Builder builder) {
        super(builder);
        this.publicKeys = builder.publicKeys;
    }

    public final GooglePublicKeysManager getPublicKeysManager() {
        return this.publicKeys;
    }

    public final HttpTransport getTransport() {
        return this.publicKeys.getTransport();
    }

    public final JsonFactory getJsonFactory() {
        return this.publicKeys.getJsonFactory();
    }

    @Deprecated
    public final String getPublicCertsEncodedUrl() {
        return this.publicKeys.getPublicCertsEncodedUrl();
    }

    @Deprecated
    public final List<PublicKey> getPublicKeys() throws GeneralSecurityException, IOException {
        return this.publicKeys.getPublicKeys();
    }

    @Deprecated
    public final long getExpirationTimeMilliseconds() {
        return this.publicKeys.getExpirationTimeMilliseconds();
    }

    public boolean verify(GoogleIdToken googleIdToken) throws GeneralSecurityException, IOException {
        if (!super.verify((IdToken) googleIdToken)) {
            return false;
        }
        for (PublicKey publicKey : this.publicKeys.getPublicKeys()) {
            if (googleIdToken.verifySignature(publicKey)) {
                return true;
            }
        }
        return false;
    }

    public GoogleIdToken verify(String idTokenString) throws GeneralSecurityException, IOException {
        GoogleIdToken idToken = GoogleIdToken.parse(getJsonFactory(), idTokenString);
        if (verify(idToken)) {
            return idToken;
        }
        return null;
    }

    @Deprecated
    public GoogleIdTokenVerifier loadPublicCerts() throws GeneralSecurityException, IOException {
        this.publicKeys.refresh();
        return this;
    }

    public static class Builder extends IdTokenVerifier.Builder {
        GooglePublicKeysManager publicKeys;

        @Override // com.google.api.client.auth.openidconnect.IdTokenVerifier.Builder
        public /* bridge */ /* synthetic */ IdTokenVerifier.Builder setAudience(Collection collection) {
            return setAudience((Collection<String>) collection);
        }

        @Override // com.google.api.client.auth.openidconnect.IdTokenVerifier.Builder
        public /* bridge */ /* synthetic */ IdTokenVerifier.Builder setIssuers(Collection collection) {
            return setIssuers((Collection<String>) collection);
        }

        public Builder(HttpTransport transport, JsonFactory jsonFactory) {
            this(new GooglePublicKeysManager(transport, jsonFactory));
        }

        public Builder(GooglePublicKeysManager publicKeys) {
            this.publicKeys = (GooglePublicKeysManager) Preconditions.checkNotNull(publicKeys);
            setIssuers((Collection<String>) Arrays.asList("accounts.google.com", "https://accounts.google.com"));
        }

        @Override // com.google.api.client.auth.openidconnect.IdTokenVerifier.Builder
        public GoogleIdTokenVerifier build() {
            return new GoogleIdTokenVerifier(this);
        }

        public final GooglePublicKeysManager getPublicCerts() {
            return this.publicKeys;
        }

        public final HttpTransport getTransport() {
            return this.publicKeys.getTransport();
        }

        public final JsonFactory getJsonFactory() {
            return this.publicKeys.getJsonFactory();
        }

        @Deprecated
        public final String getPublicCertsEncodedUrl() {
            return this.publicKeys.getPublicCertsEncodedUrl();
        }

        @Deprecated
        public Builder setPublicCertsEncodedUrl(String publicKeysEncodedUrl) {
            this.publicKeys = new GooglePublicKeysManager.Builder(getTransport(), getJsonFactory()).setPublicCertsEncodedUrl(publicKeysEncodedUrl).setClock(this.publicKeys.getClock()).build();
            return this;
        }

        @Override // com.google.api.client.auth.openidconnect.IdTokenVerifier.Builder
        public Builder setIssuer(String issuer) {
            return (Builder) super.setIssuer(issuer);
        }

        @Override // com.google.api.client.auth.openidconnect.IdTokenVerifier.Builder
        public Builder setIssuers(Collection<String> issuers) {
            return (Builder) super.setIssuers(issuers);
        }

        @Override // com.google.api.client.auth.openidconnect.IdTokenVerifier.Builder
        public Builder setAudience(Collection<String> audience) {
            return (Builder) super.setAudience(audience);
        }

        @Override // com.google.api.client.auth.openidconnect.IdTokenVerifier.Builder
        public Builder setAcceptableTimeSkewSeconds(long acceptableTimeSkewSeconds) {
            return (Builder) super.setAcceptableTimeSkewSeconds(acceptableTimeSkewSeconds);
        }

        @Override // com.google.api.client.auth.openidconnect.IdTokenVerifier.Builder
        public Builder setClock(Clock clock) {
            return (Builder) super.setClock(clock);
        }
    }
}
