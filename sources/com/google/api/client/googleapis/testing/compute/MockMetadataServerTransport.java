package com.google.api.client.googleapis.testing.compute;

import com.google.api.client.googleapis.auth.oauth2.OAuth2Utils;
import com.google.api.client.http.LowLevelHttpRequest;
import com.google.api.client.http.LowLevelHttpResponse;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.Json;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.client.testing.http.MockHttpTransport;
import com.google.api.client.testing.http.MockLowLevelHttpRequest;
import com.google.api.client.testing.http.MockLowLevelHttpResponse;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class MockMetadataServerTransport extends MockHttpTransport {
    String accessToken;
    Integer tokenRequestStatusCode;
    private static final String METADATA_SERVER_URL = OAuth2Utils.getMetadataServerUrl();
    private static final String METADATA_TOKEN_SERVER_URL = METADATA_SERVER_URL + "/computeMetadata/v1/instance/service-accounts/default/token";
    static final JsonFactory JSON_FACTORY = new JacksonFactory();

    public MockMetadataServerTransport(String accessToken) {
        this.accessToken = accessToken;
    }

    public void setTokenRequestStatusCode(Integer tokenRequestStatusCode) {
        this.tokenRequestStatusCode = tokenRequestStatusCode;
    }

    @Override // com.google.api.client.testing.http.MockHttpTransport, com.google.api.client.http.HttpTransport
    public LowLevelHttpRequest buildRequest(String method, String url) throws IOException {
        if (url.equals(METADATA_TOKEN_SERVER_URL)) {
            MockLowLevelHttpRequest request = new MockLowLevelHttpRequest(url) { // from class: com.google.api.client.googleapis.testing.compute.MockMetadataServerTransport.1
                @Override // com.google.api.client.testing.http.MockLowLevelHttpRequest, com.google.api.client.http.LowLevelHttpRequest
                public LowLevelHttpResponse execute() throws IOException {
                    if (MockMetadataServerTransport.this.tokenRequestStatusCode != null) {
                        MockLowLevelHttpResponse response = new MockLowLevelHttpResponse().setStatusCode(MockMetadataServerTransport.this.tokenRequestStatusCode.intValue()).setContent("Token Fetch Error");
                        return response;
                    }
                    String metadataRequestHeader = getFirstHeaderValue("Metadata-Flavor");
                    if (!"Google".equals(metadataRequestHeader)) {
                        throw new IOException("Metadata request header not found.");
                    }
                    GenericJson refreshContents = new GenericJson();
                    refreshContents.setFactory(MockMetadataServerTransport.JSON_FACTORY);
                    refreshContents.put("access_token", (Object) MockMetadataServerTransport.this.accessToken);
                    refreshContents.put("expires_in", (Object) 3600000);
                    refreshContents.put("token_type", (Object) "Bearer");
                    String refreshText = refreshContents.toPrettyString();
                    MockLowLevelHttpResponse response2 = new MockLowLevelHttpResponse().setContentType(Json.MEDIA_TYPE).setContent(refreshText);
                    return response2;
                }
            };
            return request;
        }
        if (url.equals(METADATA_SERVER_URL)) {
            MockLowLevelHttpRequest request2 = new MockLowLevelHttpRequest(url) { // from class: com.google.api.client.googleapis.testing.compute.MockMetadataServerTransport.2
                @Override // com.google.api.client.testing.http.MockLowLevelHttpRequest, com.google.api.client.http.LowLevelHttpRequest
                public LowLevelHttpResponse execute() {
                    MockLowLevelHttpResponse response = new MockLowLevelHttpResponse();
                    response.addHeader("Metadata-Flavor", "Google");
                    return response;
                }
            };
            return request2;
        }
        return super.buildRequest(method, url);
    }
}
