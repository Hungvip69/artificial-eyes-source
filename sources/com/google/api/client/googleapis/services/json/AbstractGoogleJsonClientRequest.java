package com.google.api.client.googleapis.services.json;

import com.google.api.client.googleapis.batch.BatchRequest;
import com.google.api.client.googleapis.batch.json.JsonBatchCallback;
import com.google.api.client.googleapis.json.GoogleJsonErrorContainer;
import com.google.api.client.googleapis.json.GoogleJsonResponseException;
import com.google.api.client.googleapis.services.AbstractGoogleClientRequest;
import com.google.api.client.http.HttpHeaders;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.json.JsonHttpContent;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractGoogleJsonClientRequest<T> extends AbstractGoogleClientRequest<T> {
    private final Object jsonContent;

    /* JADX WARN: Illegal instructions before constructor call */
    protected AbstractGoogleJsonClientRequest(AbstractGoogleJsonClient abstractGoogleJsonClient, String requestMethod, String uriTemplate, Object jsonContent, Class<T> responseClass) {
        JsonHttpContent wrapperKey;
        if (jsonContent == null) {
            wrapperKey = null;
        } else {
            wrapperKey = new JsonHttpContent(abstractGoogleJsonClient.getJsonFactory(), jsonContent).setWrapperKey(abstractGoogleJsonClient.getObjectParser().getWrapperKeys().isEmpty() ? null : "data");
        }
        super(abstractGoogleJsonClient, requestMethod, uriTemplate, wrapperKey, responseClass);
        this.jsonContent = jsonContent;
    }

    @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
    public AbstractGoogleJsonClient getAbstractGoogleClient() {
        return (AbstractGoogleJsonClient) super.getAbstractGoogleClient();
    }

    @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
    public AbstractGoogleJsonClientRequest<T> setDisableGZipContent(boolean disableGZipContent) {
        return (AbstractGoogleJsonClientRequest) super.setDisableGZipContent(disableGZipContent);
    }

    @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
    public AbstractGoogleJsonClientRequest<T> setRequestHeaders(HttpHeaders headers) {
        return (AbstractGoogleJsonClientRequest) super.setRequestHeaders(headers);
    }

    public final void queue(BatchRequest batchRequest, JsonBatchCallback<T> callback) throws IOException {
        super.queue(batchRequest, GoogleJsonErrorContainer.class, callback);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest
    public GoogleJsonResponseException newExceptionOnError(HttpResponse response) {
        return GoogleJsonResponseException.from(getAbstractGoogleClient().getJsonFactory(), response);
    }

    public Object getJsonContent() {
        return this.jsonContent;
    }

    @Override // com.google.api.client.googleapis.services.AbstractGoogleClientRequest, com.google.api.client.util.GenericData
    public AbstractGoogleJsonClientRequest<T> set(String fieldName, Object value) {
        return (AbstractGoogleJsonClientRequest) super.set(fieldName, value);
    }
}
