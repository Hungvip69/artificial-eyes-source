package com.google.api.client.googleapis.auth.oauth2;

import com.google.api.client.auth.oauth2.BearerToken;
import com.google.api.client.auth.oauth2.ClientParametersAuthentication;
import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.auth.oauth2.CredentialRefreshListener;
import com.google.api.client.auth.oauth2.TokenRequest;
import com.google.api.client.auth.oauth2.TokenResponse;
import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
import com.google.api.client.googleapis.util.Utils;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonObjectParser;
import com.google.api.client.json.webtoken.JsonWebSignature;
import com.google.api.client.json.webtoken.JsonWebToken;
import com.google.api.client.util.Clock;
import com.google.api.client.util.Joiner;
import com.google.api.client.util.PemReader;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.SecurityUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class GoogleCredential extends Credential {
    static final String SERVICE_ACCOUNT_FILE_TYPE = "service_account";
    static final String USER_FILE_TYPE = "authorized_user";
    private static DefaultCredentialProvider defaultCredentialProvider = new DefaultCredentialProvider();
    private String serviceAccountId;
    private PrivateKey serviceAccountPrivateKey;
    private String serviceAccountPrivateKeyId;
    private String serviceAccountProjectId;
    private Collection<String> serviceAccountScopes;
    private String serviceAccountUser;

    public static GoogleCredential getApplicationDefault() throws IOException {
        return getApplicationDefault(Utils.getDefaultTransport(), Utils.getDefaultJsonFactory());
    }

    public static GoogleCredential getApplicationDefault(HttpTransport transport, JsonFactory jsonFactory) throws IOException {
        Preconditions.checkNotNull(transport);
        Preconditions.checkNotNull(jsonFactory);
        return defaultCredentialProvider.getDefaultCredential(transport, jsonFactory);
    }

    public static GoogleCredential fromStream(InputStream credentialStream) throws IOException {
        return fromStream(credentialStream, Utils.getDefaultTransport(), Utils.getDefaultJsonFactory());
    }

    public static GoogleCredential fromStream(InputStream credentialStream, HttpTransport transport, JsonFactory jsonFactory) throws IOException {
        Preconditions.checkNotNull(credentialStream);
        Preconditions.checkNotNull(transport);
        Preconditions.checkNotNull(jsonFactory);
        JsonObjectParser parser = new JsonObjectParser(jsonFactory);
        GenericJson fileContents = (GenericJson) parser.parseAndClose(credentialStream, OAuth2Utils.UTF_8, GenericJson.class);
        String fileType = (String) fileContents.get("type");
        if (fileType == null) {
            throw new IOException("Error reading credentials from stream, 'type' field not specified.");
        }
        if (USER_FILE_TYPE.equals(fileType)) {
            return fromStreamUser(fileContents, transport, jsonFactory);
        }
        if (SERVICE_ACCOUNT_FILE_TYPE.equals(fileType)) {
            return fromStreamServiceAccount(fileContents, transport, jsonFactory);
        }
        throw new IOException(String.format("Error reading credentials from stream, 'type' value '%s' not recognized. Expecting '%s' or '%s'.", fileType, USER_FILE_TYPE, SERVICE_ACCOUNT_FILE_TYPE));
    }

    public GoogleCredential() {
        this(new Builder());
    }

    protected GoogleCredential(Builder builder) {
        Collection<String> collectionUnmodifiableCollection;
        super(builder);
        if (builder.serviceAccountPrivateKey == null) {
            Preconditions.checkArgument(builder.serviceAccountId == null && builder.serviceAccountScopes == null && builder.serviceAccountUser == null);
            return;
        }
        this.serviceAccountId = (String) Preconditions.checkNotNull(builder.serviceAccountId);
        this.serviceAccountProjectId = builder.serviceAccountProjectId;
        if (builder.serviceAccountScopes == null) {
            collectionUnmodifiableCollection = Collections.emptyList();
        } else {
            collectionUnmodifiableCollection = Collections.unmodifiableCollection(builder.serviceAccountScopes);
        }
        this.serviceAccountScopes = collectionUnmodifiableCollection;
        this.serviceAccountPrivateKey = builder.serviceAccountPrivateKey;
        this.serviceAccountPrivateKeyId = builder.serviceAccountPrivateKeyId;
        this.serviceAccountUser = builder.serviceAccountUser;
    }

    @Override // com.google.api.client.auth.oauth2.Credential
    public GoogleCredential setAccessToken(String accessToken) {
        return (GoogleCredential) super.setAccessToken(accessToken);
    }

    @Override // com.google.api.client.auth.oauth2.Credential
    public GoogleCredential setRefreshToken(String refreshToken) {
        if (refreshToken != null) {
            Preconditions.checkArgument((getJsonFactory() == null || getTransport() == null || getClientAuthentication() == null) ? false : true, "Please use the Builder and call setJsonFactory, setTransport and setClientSecrets");
        }
        return (GoogleCredential) super.setRefreshToken(refreshToken);
    }

    @Override // com.google.api.client.auth.oauth2.Credential
    public GoogleCredential setExpirationTimeMilliseconds(Long expirationTimeMilliseconds) {
        return (GoogleCredential) super.setExpirationTimeMilliseconds(expirationTimeMilliseconds);
    }

    @Override // com.google.api.client.auth.oauth2.Credential
    public GoogleCredential setExpiresInSeconds(Long expiresIn) {
        return (GoogleCredential) super.setExpiresInSeconds(expiresIn);
    }

    @Override // com.google.api.client.auth.oauth2.Credential
    public GoogleCredential setFromTokenResponse(TokenResponse tokenResponse) {
        return (GoogleCredential) super.setFromTokenResponse(tokenResponse);
    }

    @Override // com.google.api.client.auth.oauth2.Credential
    protected TokenResponse executeRefreshToken() throws IOException {
        if (this.serviceAccountPrivateKey == null) {
            return super.executeRefreshToken();
        }
        JsonWebSignature.Header header = new JsonWebSignature.Header();
        header.setAlgorithm("RS256");
        header.setType("JWT");
        header.setKeyId(this.serviceAccountPrivateKeyId);
        JsonWebToken.Payload payload = new JsonWebToken.Payload();
        long currentTime = getClock().currentTimeMillis();
        payload.setIssuer(this.serviceAccountId);
        payload.setAudience(getTokenServerEncodedUrl());
        payload.setIssuedAtTimeSeconds(Long.valueOf(currentTime / 1000));
        payload.setExpirationTimeSeconds(Long.valueOf((currentTime / 1000) + 3600));
        payload.setSubject(this.serviceAccountUser);
        payload.put("scope", (Object) Joiner.on(' ').join(this.serviceAccountScopes));
        try {
            String assertion = JsonWebSignature.signUsingRsaSha256(this.serviceAccountPrivateKey, getJsonFactory(), header, payload);
            TokenRequest request = new TokenRequest(getTransport(), getJsonFactory(), new GenericUrl(getTokenServerEncodedUrl()), "urn:ietf:params:oauth:grant-type:jwt-bearer");
            request.put("assertion", (Object) assertion);
            return request.execute();
        } catch (GeneralSecurityException exception) {
            IOException e = new IOException();
            e.initCause(exception);
            throw e;
        }
    }

    public final String getServiceAccountId() {
        return this.serviceAccountId;
    }

    public final String getServiceAccountProjectId() {
        return this.serviceAccountProjectId;
    }

    public final Collection<String> getServiceAccountScopes() {
        return this.serviceAccountScopes;
    }

    public final String getServiceAccountScopesAsString() {
        if (this.serviceAccountScopes == null) {
            return null;
        }
        return Joiner.on(' ').join(this.serviceAccountScopes);
    }

    public final PrivateKey getServiceAccountPrivateKey() {
        return this.serviceAccountPrivateKey;
    }

    public final String getServiceAccountPrivateKeyId() {
        return this.serviceAccountPrivateKeyId;
    }

    public final String getServiceAccountUser() {
        return this.serviceAccountUser;
    }

    public boolean createScopedRequired() {
        if (this.serviceAccountPrivateKey == null) {
            return false;
        }
        return this.serviceAccountScopes == null || this.serviceAccountScopes.isEmpty();
    }

    public GoogleCredential createScoped(Collection<String> scopes) {
        if (this.serviceAccountPrivateKey == null) {
            return this;
        }
        return toBuilder().setServiceAccountScopes(scopes).build();
    }

    public GoogleCredential createDelegated(String user) {
        if (this.serviceAccountPrivateKey == null) {
            return this;
        }
        return toBuilder().setServiceAccountUser(user).build();
    }

    public Builder toBuilder() {
        Builder builder = new Builder().setServiceAccountPrivateKey(this.serviceAccountPrivateKey).setServiceAccountPrivateKeyId(this.serviceAccountPrivateKeyId).setServiceAccountId(this.serviceAccountId).setServiceAccountProjectId(this.serviceAccountProjectId).setServiceAccountUser(this.serviceAccountUser).setServiceAccountScopes(this.serviceAccountScopes).setTokenServerEncodedUrl(getTokenServerEncodedUrl()).setTransport(getTransport()).setJsonFactory(getJsonFactory()).setClock(getClock());
        builder.setClientAuthentication(getClientAuthentication());
        return builder;
    }

    public static class Builder extends Credential.Builder {
        String serviceAccountId;
        PrivateKey serviceAccountPrivateKey;
        String serviceAccountPrivateKeyId;
        String serviceAccountProjectId;
        Collection<String> serviceAccountScopes;
        String serviceAccountUser;

        @Override // com.google.api.client.auth.oauth2.Credential.Builder
        public /* bridge */ /* synthetic */ Credential.Builder setRefreshListeners(Collection collection) {
            return setRefreshListeners((Collection<CredentialRefreshListener>) collection);
        }

        public Builder() {
            super(BearerToken.authorizationHeaderAccessMethod());
            setTokenServerEncodedUrl(GoogleOAuthConstants.TOKEN_SERVER_URL);
        }

        @Override // com.google.api.client.auth.oauth2.Credential.Builder
        public GoogleCredential build() {
            return new GoogleCredential(this);
        }

        @Override // com.google.api.client.auth.oauth2.Credential.Builder
        public Builder setTransport(HttpTransport transport) {
            return (Builder) super.setTransport(transport);
        }

        @Override // com.google.api.client.auth.oauth2.Credential.Builder
        public Builder setJsonFactory(JsonFactory jsonFactory) {
            return (Builder) super.setJsonFactory(jsonFactory);
        }

        @Override // com.google.api.client.auth.oauth2.Credential.Builder
        public Builder setClock(Clock clock) {
            return (Builder) super.setClock(clock);
        }

        public Builder setClientSecrets(String clientId, String clientSecret) {
            setClientAuthentication((HttpExecuteInterceptor) new ClientParametersAuthentication(clientId, clientSecret));
            return this;
        }

        public Builder setClientSecrets(GoogleClientSecrets clientSecrets) {
            GoogleClientSecrets.Details details = clientSecrets.getDetails();
            setClientAuthentication((HttpExecuteInterceptor) new ClientParametersAuthentication(details.getClientId(), details.getClientSecret()));
            return this;
        }

        public final String getServiceAccountId() {
            return this.serviceAccountId;
        }

        public Builder setServiceAccountId(String serviceAccountId) {
            this.serviceAccountId = serviceAccountId;
            return this;
        }

        public final String getServiceAccountProjectId() {
            return this.serviceAccountProjectId;
        }

        public Builder setServiceAccountProjectId(String serviceAccountProjectId) {
            this.serviceAccountProjectId = serviceAccountProjectId;
            return this;
        }

        public final Collection<String> getServiceAccountScopes() {
            return this.serviceAccountScopes;
        }

        public Builder setServiceAccountScopes(Collection<String> serviceAccountScopes) {
            this.serviceAccountScopes = serviceAccountScopes;
            return this;
        }

        public final PrivateKey getServiceAccountPrivateKey() {
            return this.serviceAccountPrivateKey;
        }

        public Builder setServiceAccountPrivateKey(PrivateKey serviceAccountPrivateKey) {
            this.serviceAccountPrivateKey = serviceAccountPrivateKey;
            return this;
        }

        public final String getServiceAccountPrivateKeyId() {
            return this.serviceAccountPrivateKeyId;
        }

        public Builder setServiceAccountPrivateKeyId(String serviceAccountPrivateKeyId) {
            this.serviceAccountPrivateKeyId = serviceAccountPrivateKeyId;
            return this;
        }

        public Builder setServiceAccountPrivateKeyFromP12File(File p12File) throws GeneralSecurityException, IOException {
            setServiceAccountPrivateKeyFromP12File(new FileInputStream(p12File));
            return this;
        }

        public Builder setServiceAccountPrivateKeyFromP12File(InputStream p12FileInputStream) throws GeneralSecurityException, IOException {
            this.serviceAccountPrivateKey = SecurityUtils.loadPrivateKeyFromKeyStore(SecurityUtils.getPkcs12KeyStore(), p12FileInputStream, "notasecret", "privatekey", "notasecret");
            return this;
        }

        public Builder setServiceAccountPrivateKeyFromPemFile(File pemFile) throws GeneralSecurityException, IOException {
            byte[] bytes = PemReader.readFirstSectionAndClose(new FileReader(pemFile), "PRIVATE KEY").getBase64DecodedBytes();
            this.serviceAccountPrivateKey = SecurityUtils.getRsaKeyFactory().generatePrivate(new PKCS8EncodedKeySpec(bytes));
            return this;
        }

        public final String getServiceAccountUser() {
            return this.serviceAccountUser;
        }

        public Builder setServiceAccountUser(String serviceAccountUser) {
            this.serviceAccountUser = serviceAccountUser;
            return this;
        }

        @Override // com.google.api.client.auth.oauth2.Credential.Builder
        public Builder setRequestInitializer(HttpRequestInitializer requestInitializer) {
            return (Builder) super.setRequestInitializer(requestInitializer);
        }

        @Override // com.google.api.client.auth.oauth2.Credential.Builder
        public Builder addRefreshListener(CredentialRefreshListener refreshListener) {
            return (Builder) super.addRefreshListener(refreshListener);
        }

        @Override // com.google.api.client.auth.oauth2.Credential.Builder
        public Builder setRefreshListeners(Collection<CredentialRefreshListener> refreshListeners) {
            return (Builder) super.setRefreshListeners(refreshListeners);
        }

        @Override // com.google.api.client.auth.oauth2.Credential.Builder
        public Builder setTokenServerUrl(GenericUrl tokenServerUrl) {
            return (Builder) super.setTokenServerUrl(tokenServerUrl);
        }

        @Override // com.google.api.client.auth.oauth2.Credential.Builder
        public Builder setTokenServerEncodedUrl(String tokenServerEncodedUrl) {
            return (Builder) super.setTokenServerEncodedUrl(tokenServerEncodedUrl);
        }

        @Override // com.google.api.client.auth.oauth2.Credential.Builder
        public Builder setClientAuthentication(HttpExecuteInterceptor clientAuthentication) {
            return (Builder) super.setClientAuthentication(clientAuthentication);
        }
    }

    private static GoogleCredential fromStreamUser(GenericJson fileContents, HttpTransport transport, JsonFactory jsonFactory) throws IOException {
        String clientId = (String) fileContents.get("client_id");
        String clientSecret = (String) fileContents.get("client_secret");
        String refreshToken = (String) fileContents.get("refresh_token");
        if (clientId == null || clientSecret == null || refreshToken == null) {
            throw new IOException("Error reading user credential from stream,  expecting 'client_id', 'client_secret' and 'refresh_token'.");
        }
        GoogleCredential credential = new Builder().setClientSecrets(clientId, clientSecret).setTransport(transport).setJsonFactory(jsonFactory).build();
        credential.setRefreshToken(refreshToken);
        credential.refreshToken();
        return credential;
    }

    private static GoogleCredential fromStreamServiceAccount(GenericJson fileContents, HttpTransport transport, JsonFactory jsonFactory) throws IOException {
        String clientId = (String) fileContents.get("client_id");
        String clientEmail = (String) fileContents.get("client_email");
        String privateKeyPem = (String) fileContents.get("private_key");
        String privateKeyId = (String) fileContents.get("private_key_id");
        if (clientId == null || clientEmail == null || privateKeyPem == null || privateKeyId == null) {
            throw new IOException("Error reading service account credential from stream, expecting  'client_id', 'client_email', 'private_key' and 'private_key_id'.");
        }
        PrivateKey privateKey = privateKeyFromPkcs8(privateKeyPem);
        Collection<String> emptyScopes = Collections.emptyList();
        Builder credentialBuilder = new Builder().setTransport(transport).setJsonFactory(jsonFactory).setServiceAccountId(clientEmail).setServiceAccountScopes(emptyScopes).setServiceAccountPrivateKey(privateKey).setServiceAccountPrivateKeyId(privateKeyId);
        String tokenUri = (String) fileContents.get("token_uri");
        if (tokenUri != null) {
            credentialBuilder.setTokenServerEncodedUrl(tokenUri);
        }
        String projectId = (String) fileContents.get("project_id");
        if (projectId != null) {
            credentialBuilder.setServiceAccountProjectId(projectId);
        }
        return credentialBuilder.build();
    }

    private static PrivateKey privateKeyFromPkcs8(String privateKeyPem) throws IOException {
        Exception unexpectedException;
        Reader reader = new StringReader(privateKeyPem);
        PemReader.Section section = PemReader.readFirstSectionAndClose(reader, "PRIVATE KEY");
        if (section == null) {
            throw new IOException("Invalid PKCS8 data.");
        }
        byte[] bytes = section.getBase64DecodedBytes();
        PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec(bytes);
        try {
            KeyFactory keyFactory = SecurityUtils.getRsaKeyFactory();
            PrivateKey privateKey = keyFactory.generatePrivate(keySpec);
            return privateKey;
        } catch (NoSuchAlgorithmException exception) {
            unexpectedException = exception;
            throw ((IOException) OAuth2Utils.exceptionWithCause(new IOException("Unexpected exception reading PKCS data"), unexpectedException));
        } catch (InvalidKeySpecException exception2) {
            unexpectedException = exception2;
            throw ((IOException) OAuth2Utils.exceptionWithCause(new IOException("Unexpected exception reading PKCS data"), unexpectedException));
        }
    }
}
