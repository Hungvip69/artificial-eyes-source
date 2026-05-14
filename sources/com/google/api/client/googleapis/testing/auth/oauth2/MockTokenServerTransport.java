package com.google.api.client.googleapis.testing.auth.oauth2;

import com.google.api.client.googleapis.auth.oauth2.GoogleOAuthConstants;
import com.google.api.client.googleapis.testing.TestUtils;
import com.google.api.client.http.LowLevelHttpRequest;
import com.google.api.client.http.LowLevelHttpResponse;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.Json;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.client.json.webtoken.JsonWebSignature;
import com.google.api.client.testing.http.MockHttpTransport;
import com.google.api.client.testing.http.MockLowLevelHttpRequest;
import com.google.api.client.testing.http.MockLowLevelHttpResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class MockTokenServerTransport extends MockHttpTransport {
    static final String EXPECTED_GRANT_TYPE = "urn:ietf:params:oauth:grant-type:jwt-bearer";
    private static final String LEGACY_TOKEN_SERVER_URL = "https://accounts.google.com/o/oauth2/token";
    Map<String, String> clients;
    Map<String, String> refreshTokens;
    Map<String, String> serviceAccounts;
    final String tokenServerUrl;
    private static final Logger LOGGER = Logger.getLogger(MockTokenServerTransport.class.getName());
    static final JsonFactory JSON_FACTORY = new JacksonFactory();

    public MockTokenServerTransport() {
        this(GoogleOAuthConstants.TOKEN_SERVER_URL);
    }

    public MockTokenServerTransport(String tokenServerUrl) {
        this.serviceAccounts = new HashMap();
        this.clients = new HashMap();
        this.refreshTokens = new HashMap();
        this.tokenServerUrl = tokenServerUrl;
    }

    public void addServiceAccount(String email, String accessToken) {
        this.serviceAccounts.put(email, accessToken);
    }

    public void addClient(String clientId, String clientSecret) {
        this.clients.put(clientId, clientSecret);
    }

    public void addRefreshToken(String refreshToken, String accessTokenToReturn) {
        this.refreshTokens.put(refreshToken, accessTokenToReturn);
    }

    @Override // com.google.api.client.testing.http.MockHttpTransport, com.google.api.client.http.HttpTransport
    public LowLevelHttpRequest buildRequest(String method, String url) throws IOException {
        if (url.equals(this.tokenServerUrl)) {
            return buildTokenRequest(url);
        }
        if (url.equals(LEGACY_TOKEN_SERVER_URL)) {
            LOGGER.warning("Your configured token_uri is using a legacy endpoint. You may want to redownload your credentials.");
            return buildTokenRequest(url);
        }
        return super.buildRequest(method, url);
    }

    private MockLowLevelHttpRequest buildTokenRequest(String url) {
        return new MockLowLevelHttpRequest(url) { // from class: com.google.api.client.googleapis.testing.auth.oauth2.MockTokenServerTransport.1
            @Override // com.google.api.client.testing.http.MockLowLevelHttpRequest, com.google.api.client.http.LowLevelHttpRequest
            public LowLevelHttpResponse execute() throws IOException {
                String accessToken;
                String content = getContentAsString();
                Map<String, String> query = TestUtils.parseQuery(content);
                String foundId = query.get("client_id");
                if (foundId != null) {
                    if (!MockTokenServerTransport.this.clients.containsKey(foundId)) {
                        throw new IOException("Client ID not found.");
                    }
                    String foundSecret = query.get("client_secret");
                    String expectedSecret = MockTokenServerTransport.this.clients.get(foundId);
                    if (foundSecret == null || !foundSecret.equals(expectedSecret)) {
                        throw new IOException("Client secret not found.");
                    }
                    String foundRefresh = query.get("refresh_token");
                    if (!MockTokenServerTransport.this.refreshTokens.containsKey(foundRefresh)) {
                        throw new IOException("Refresh Token not found.");
                    }
                    String accessToken2 = MockTokenServerTransport.this.refreshTokens.get(foundRefresh);
                    accessToken = accessToken2;
                } else if (query.containsKey("grant_type")) {
                    String grantType = query.get("grant_type");
                    if (!MockTokenServerTransport.EXPECTED_GRANT_TYPE.equals(grantType)) {
                        throw new IOException("Unexpected Grant Type.");
                    }
                    String assertion = query.get("assertion");
                    JsonWebSignature signature = JsonWebSignature.parse(MockTokenServerTransport.JSON_FACTORY, assertion);
                    String foundEmail = signature.getPayload().getIssuer();
                    if (!MockTokenServerTransport.this.serviceAccounts.containsKey(foundEmail)) {
                        throw new IOException("Service Account Email not found as issuer.");
                    }
                    String accessToken3 = MockTokenServerTransport.this.serviceAccounts.get(foundEmail);
                    accessToken = accessToken3;
                    String foundScopes = (String) signature.getPayload().get("scope");
                    if (foundScopes == null || foundScopes.length() == 0) {
                        throw new IOException("Scopes not found.");
                    }
                } else {
                    throw new IOException("Unknown token type.");
                }
                GenericJson refreshContents = new GenericJson();
                refreshContents.setFactory(MockTokenServerTransport.JSON_FACTORY);
                refreshContents.put("access_token", (Object) accessToken);
                refreshContents.put("expires_in", (Object) 3600);
                refreshContents.put("token_type", (Object) "Bearer");
                String refreshText = refreshContents.toPrettyString();
                MockLowLevelHttpResponse response = new MockLowLevelHttpResponse().setContentType(Json.MEDIA_TYPE).setContent(refreshText);
                return response;
            }
        };
    }
}
