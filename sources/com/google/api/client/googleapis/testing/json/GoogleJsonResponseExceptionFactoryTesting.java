package com.google.api.client.googleapis.testing.json;

import com.google.api.client.googleapis.json.GoogleJsonResponseException;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.testing.http.HttpTesting;
import com.google.api.client.testing.http.MockHttpTransport;
import com.google.api.client.testing.http.MockLowLevelHttpResponse;

/* JADX INFO: loaded from: classes2.dex */
public final class GoogleJsonResponseExceptionFactoryTesting {
    public static GoogleJsonResponseException newMock(JsonFactory jsonFactory, int httpCode, String reasonPhrase) throws Throwable {
        MockLowLevelHttpResponse otherServiceUnavaiableLowLevelResponse = new MockLowLevelHttpResponse().setStatusCode(httpCode).setReasonPhrase(reasonPhrase);
        MockHttpTransport otherTransport = new MockHttpTransport.Builder().setLowLevelHttpResponse(otherServiceUnavaiableLowLevelResponse).build();
        HttpRequest otherRequest = otherTransport.createRequestFactory().buildGetRequest(HttpTesting.SIMPLE_GENERIC_URL);
        otherRequest.setThrowExceptionOnExecuteError(false);
        HttpResponse otherServiceUnavailableResponse = otherRequest.execute();
        return GoogleJsonResponseException.from(jsonFactory, otherServiceUnavailableResponse);
    }
}
