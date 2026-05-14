package com.google.api.client.googleapis.batch;

import com.google.api.client.googleapis.batch.BatchRequest;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpContent;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpStatusCodes;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.HttpUnsuccessfulResponseHandler;
import com.google.api.client.http.LowLevelHttpRequest;
import com.google.api.client.http.LowLevelHttpResponse;
import com.google.api.client.testing.http.HttpTesting;
import com.google.api.client.util.ByteStreams;
import com.google.appinventor.components.runtime.repackaged.org.json.HTTP;
import com.google.common.net.HttpHeaders;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class BatchUnparsedResponse {
    private final String boundary;
    private final InputStream inputStream;
    private final List<BatchRequest.RequestInfo<?, ?>> requestInfos;
    private final boolean retryAllowed;
    boolean hasNext = true;
    List<BatchRequest.RequestInfo<?, ?>> unsuccessfulRequestInfos = new ArrayList();
    private int contentId = 0;

    BatchUnparsedResponse(InputStream inputStream, String boundary, List<BatchRequest.RequestInfo<?, ?>> requestInfos, boolean retryAllowed) throws IOException {
        this.boundary = boundary;
        this.requestInfos = requestInfos;
        this.retryAllowed = retryAllowed;
        this.inputStream = inputStream;
        checkForFinalBoundary(readLine());
    }

    void parseNextResponse() throws IOException {
        String line;
        String line2;
        InputStream body;
        String line3;
        this.contentId++;
        do {
            line = readLine();
            if (line == null) {
                break;
            }
        } while (!line.equals(""));
        String statusLine = readLine();
        String[] statusParts = statusLine.split(" ");
        int statusCode = Integer.parseInt(statusParts[1]);
        List<String> headerNames = new ArrayList<>();
        List<String> headerValues = new ArrayList<>();
        long contentLength = -1;
        while (true) {
            String line4 = readLine();
            line2 = line4;
            if (line4 == null || line2.equals("")) {
                break;
            }
            String[] headerParts = line2.split(": ", 2);
            String headerName = headerParts[0];
            String headerValue = headerParts[1];
            headerNames.add(headerName);
            headerValues.add(headerValue);
            if (HttpHeaders.CONTENT_LENGTH.equalsIgnoreCase(headerName.trim())) {
                contentLength = Long.parseLong(headerValue);
            }
        }
        if (contentLength != -1) {
            body = new FilterInputStream(ByteStreams.limit(this.inputStream, contentLength)) { // from class: com.google.api.client.googleapis.batch.BatchUnparsedResponse.1
                @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                }
            };
        } else {
            ByteArrayOutputStream buffer = new ByteArrayOutputStream();
            while (true) {
                line3 = readRawLine();
                if (line3 == null || line3.startsWith(this.boundary)) {
                    break;
                } else {
                    buffer.write(line3.getBytes("ISO-8859-1"));
                }
            }
            body = trimCrlf(buffer.toByteArray());
            line2 = trimCrlf(line3);
        }
        HttpResponse response = getFakeResponse(statusCode, body, headerNames, headerValues);
        parseAndCallback(this.requestInfos.get(this.contentId - 1), statusCode, response);
        while (true) {
            if (body.skip(contentLength) <= 0 && body.read() == -1) {
                break;
            }
        }
        if (contentLength != -1) {
            line2 = readLine();
        }
        while (line2 != null && line2.length() == 0) {
            line2 = readLine();
        }
        checkForFinalBoundary(line2);
    }

    private <T, E> void parseAndCallback(BatchRequest.RequestInfo<T, E> requestInfo, int i, HttpResponse httpResponse) throws IOException {
        BatchCallback<T, E> batchCallback = requestInfo.callback;
        com.google.api.client.http.HttpHeaders headers = httpResponse.getHeaders();
        HttpUnsuccessfulResponseHandler unsuccessfulResponseHandler = requestInfo.request.getUnsuccessfulResponseHandler();
        if (HttpStatusCodes.isSuccess(i)) {
            if (batchCallback == null) {
                return;
            }
            batchCallback.onSuccess((T) getParsedDataClass(requestInfo.dataClass, httpResponse, requestInfo), headers);
            return;
        }
        HttpContent content = requestInfo.request.getContent();
        boolean z = this.retryAllowed && (content == null || content.retrySupported());
        boolean zHandleResponse = false;
        boolean z2 = false;
        if (unsuccessfulResponseHandler != null) {
            zHandleResponse = unsuccessfulResponseHandler.handleResponse(requestInfo.request, httpResponse, z);
        }
        if (!zHandleResponse && requestInfo.request.handleRedirect(httpResponse.getStatusCode(), httpResponse.getHeaders())) {
            z2 = true;
        }
        if (z && (zHandleResponse || z2)) {
            this.unsuccessfulRequestInfos.add(requestInfo);
        } else {
            if (batchCallback == null) {
                return;
            }
            batchCallback.onFailure((E) getParsedDataClass(requestInfo.errorClass, httpResponse, requestInfo), headers);
        }
    }

    private <A, T, E> A getParsedDataClass(Class<A> cls, HttpResponse httpResponse, BatchRequest.RequestInfo<T, E> requestInfo) throws IOException {
        if (cls == Void.class) {
            return null;
        }
        return (A) requestInfo.request.getParser().parseAndClose(httpResponse.getContent(), httpResponse.getContentCharset(), (Class) cls);
    }

    private HttpResponse getFakeResponse(int statusCode, InputStream partContent, List<String> headerNames, List<String> headerValues) throws IOException {
        HttpRequest request = new FakeResponseHttpTransport(statusCode, partContent, headerNames, headerValues).createRequestFactory().buildPostRequest(new GenericUrl(HttpTesting.SIMPLE_URL), null);
        request.setLoggingEnabled(false);
        request.setThrowExceptionOnExecuteError(false);
        return request.execute();
    }

    private String readRawLine() throws IOException {
        int b = this.inputStream.read();
        if (b == -1) {
            return null;
        }
        StringBuilder buffer = new StringBuilder();
        while (b != -1) {
            buffer.append((char) b);
            if (b == 10) {
                break;
            }
            b = this.inputStream.read();
        }
        return buffer.toString();
    }

    private String readLine() throws IOException {
        return trimCrlf(readRawLine());
    }

    private static String trimCrlf(String input) {
        if (input.endsWith(HTTP.CRLF)) {
            return input.substring(0, input.length() - 2);
        }
        if (input.endsWith("\n")) {
            return input.substring(0, input.length() - 1);
        }
        return input;
    }

    private static InputStream trimCrlf(byte[] bytes) {
        int length = bytes.length;
        if (length > 0 && bytes[length - 1] == 10) {
            length--;
        }
        if (length > 0 && bytes[length - 1] == 13) {
            length--;
        }
        return new ByteArrayInputStream(bytes, 0, length);
    }

    private void checkForFinalBoundary(String boundaryLine) throws IOException {
        if (boundaryLine.equals(this.boundary + "--")) {
            this.hasNext = false;
            this.inputStream.close();
        }
    }

    private static class FakeResponseHttpTransport extends HttpTransport {
        private List<String> headerNames;
        private List<String> headerValues;
        private InputStream partContent;
        private int statusCode;

        FakeResponseHttpTransport(int statusCode, InputStream partContent, List<String> headerNames, List<String> headerValues) {
            this.statusCode = statusCode;
            this.partContent = partContent;
            this.headerNames = headerNames;
            this.headerValues = headerValues;
        }

        @Override // com.google.api.client.http.HttpTransport
        protected LowLevelHttpRequest buildRequest(String method, String url) {
            return new FakeLowLevelHttpRequest(this.partContent, this.statusCode, this.headerNames, this.headerValues);
        }
    }

    private static class FakeLowLevelHttpRequest extends LowLevelHttpRequest {
        private List<String> headerNames;
        private List<String> headerValues;
        private InputStream partContent;
        private int statusCode;

        FakeLowLevelHttpRequest(InputStream partContent, int statusCode, List<String> headerNames, List<String> headerValues) {
            this.partContent = partContent;
            this.statusCode = statusCode;
            this.headerNames = headerNames;
            this.headerValues = headerValues;
        }

        @Override // com.google.api.client.http.LowLevelHttpRequest
        public void addHeader(String name, String value) {
        }

        @Override // com.google.api.client.http.LowLevelHttpRequest
        public LowLevelHttpResponse execute() {
            FakeLowLevelHttpResponse response = new FakeLowLevelHttpResponse(this.partContent, this.statusCode, this.headerNames, this.headerValues);
            return response;
        }
    }

    private static class FakeLowLevelHttpResponse extends LowLevelHttpResponse {
        private List<String> headerNames;
        private List<String> headerValues;
        private InputStream partContent;
        private int statusCode;

        FakeLowLevelHttpResponse(InputStream partContent, int statusCode, List<String> headerNames, List<String> headerValues) {
            this.headerNames = new ArrayList();
            this.headerValues = new ArrayList();
            this.partContent = partContent;
            this.statusCode = statusCode;
            this.headerNames = headerNames;
            this.headerValues = headerValues;
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public InputStream getContent() {
            return this.partContent;
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public int getStatusCode() {
            return this.statusCode;
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public String getContentEncoding() {
            return null;
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public long getContentLength() {
            return 0L;
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public String getContentType() {
            return null;
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public String getStatusLine() {
            return null;
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public String getReasonPhrase() {
            return null;
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public int getHeaderCount() {
            return this.headerNames.size();
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public String getHeaderName(int index) {
            return this.headerNames.get(index);
        }

        @Override // com.google.api.client.http.LowLevelHttpResponse
        public String getHeaderValue(int index) {
            return this.headerValues.get(index);
        }
    }
}
