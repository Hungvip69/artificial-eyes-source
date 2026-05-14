package com.google.api.client.googleapis.batch;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpHeaders;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestFactory;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.MultipartContent;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Sleeper;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public final class BatchRequest {
    private static final String GLOBAL_BATCH_ENDPOINT = "https://www.googleapis.com/batch";
    private static final String GLOBAL_BATCH_ENDPOINT_WARNING = "You are using the global batch endpoint which will soon be shut down. Please instantiate your BatchRequest via your service client's `batch(HttpRequestInitializer)` method. For an example, please see https://github.com/googleapis/google-api-java-client#batching.";
    private static final Logger LOGGER = Logger.getLogger(BatchRequest.class.getName());
    private final HttpRequestFactory requestFactory;
    private GenericUrl batchUrl = new GenericUrl(GLOBAL_BATCH_ENDPOINT);
    List<RequestInfo<?, ?>> requestInfos = new ArrayList();
    private Sleeper sleeper = Sleeper.DEFAULT;

    static class RequestInfo<T, E> {
        final BatchCallback<T, E> callback;
        final Class<T> dataClass;
        final Class<E> errorClass;
        final HttpRequest request;

        RequestInfo(BatchCallback<T, E> callback, Class<T> dataClass, Class<E> errorClass, HttpRequest request) {
            this.callback = callback;
            this.dataClass = dataClass;
            this.errorClass = errorClass;
            this.request = request;
        }
    }

    @Deprecated
    public BatchRequest(HttpTransport transport, HttpRequestInitializer httpRequestInitializer) {
        this.requestFactory = httpRequestInitializer == null ? transport.createRequestFactory() : transport.createRequestFactory(httpRequestInitializer);
    }

    public BatchRequest setBatchUrl(GenericUrl batchUrl) {
        this.batchUrl = batchUrl;
        return this;
    }

    public GenericUrl getBatchUrl() {
        return this.batchUrl;
    }

    public Sleeper getSleeper() {
        return this.sleeper;
    }

    public BatchRequest setSleeper(Sleeper sleeper) {
        this.sleeper = (Sleeper) Preconditions.checkNotNull(sleeper);
        return this;
    }

    public <T, E> BatchRequest queue(HttpRequest httpRequest, Class<T> dataClass, Class<E> errorClass, BatchCallback<T, E> callback) throws IOException {
        Preconditions.checkNotNull(httpRequest);
        Preconditions.checkNotNull(callback);
        Preconditions.checkNotNull(dataClass);
        Preconditions.checkNotNull(errorClass);
        this.requestInfos.add(new RequestInfo<>(callback, dataClass, errorClass, httpRequest));
        return this;
    }

    public int size() {
        return this.requestInfos.size();
    }

    public void execute() throws Throwable {
        boolean retryAllowed;
        Preconditions.checkState(!this.requestInfos.isEmpty());
        if (GLOBAL_BATCH_ENDPOINT.equals(this.batchUrl.toString())) {
            LOGGER.log(Level.WARNING, GLOBAL_BATCH_ENDPOINT_WARNING);
        }
        HttpRequest batchRequest = this.requestFactory.buildPostRequest(this.batchUrl, null);
        HttpExecuteInterceptor originalInterceptor = batchRequest.getInterceptor();
        batchRequest.setInterceptor(new BatchInterceptor(originalInterceptor));
        int retriesRemaining = batchRequest.getNumberOfRetries();
        do {
            retryAllowed = retriesRemaining > 0;
            MultipartContent batchContent = new MultipartContent();
            batchContent.getMediaType().setSubType("mixed");
            int contentId = 1;
            for (RequestInfo<?, ?> requestInfo : this.requestInfos) {
                batchContent.addPart(new MultipartContent.Part(new HttpHeaders().setAcceptEncoding(null).set("Content-ID", (Object) Integer.valueOf(contentId)), new HttpRequestContent(requestInfo.request)));
                contentId++;
            }
            batchRequest.setContent(batchContent);
            HttpResponse response = batchRequest.execute();
            try {
                String boundary = "--" + response.getMediaType().getParameter("boundary");
                InputStream contentStream = response.getContent();
                BatchUnparsedResponse batchResponse = new BatchUnparsedResponse(contentStream, boundary, this.requestInfos, retryAllowed);
                while (batchResponse.hasNext) {
                    batchResponse.parseNextResponse();
                }
                response.disconnect();
                List<RequestInfo<?, ?>> unsuccessfulRequestInfos = batchResponse.unsuccessfulRequestInfos;
                if (unsuccessfulRequestInfos.isEmpty()) {
                    break;
                }
                this.requestInfos = unsuccessfulRequestInfos;
                retriesRemaining--;
            } catch (Throwable th) {
                response.disconnect();
                throw th;
            }
        } while (retryAllowed);
        this.requestInfos.clear();
    }

    class BatchInterceptor implements HttpExecuteInterceptor {
        private HttpExecuteInterceptor originalInterceptor;

        BatchInterceptor(HttpExecuteInterceptor originalInterceptor) {
            this.originalInterceptor = originalInterceptor;
        }

        @Override // com.google.api.client.http.HttpExecuteInterceptor
        public void intercept(HttpRequest batchRequest) throws IOException {
            if (this.originalInterceptor != null) {
                this.originalInterceptor.intercept(batchRequest);
            }
            for (RequestInfo<?, ?> requestInfo : BatchRequest.this.requestInfos) {
                HttpExecuteInterceptor interceptor = requestInfo.request.getInterceptor();
                if (interceptor != null) {
                    interceptor.intercept(requestInfo.request);
                }
            }
        }
    }
}
