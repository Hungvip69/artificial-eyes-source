package com.google.api.client.testing.http;

import com.google.api.client.http.LowLevelHttpResponse;
import com.google.api.client.testing.util.TestableByteArrayInputStream;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.StringUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MockLowLevelHttpResponse extends LowLevelHttpResponse {
    private InputStream content;
    private String contentEncoding;
    private String contentType;
    private boolean isDisconnected;
    private String reasonPhrase;
    private int statusCode = 200;
    private List<String> headerNames = new ArrayList();
    private List<String> headerValues = new ArrayList();
    private long contentLength = -1;

    public MockLowLevelHttpResponse addHeader(String str, String str2) {
        this.headerNames.add((String) Preconditions.checkNotNull(str));
        this.headerValues.add((String) Preconditions.checkNotNull(str2));
        return this;
    }

    public MockLowLevelHttpResponse setContent(String stringContent) {
        if (stringContent == null) {
            return setZeroContent();
        }
        return setContent(StringUtils.getBytesUtf8(stringContent));
    }

    public MockLowLevelHttpResponse setContent(byte[] byteContent) {
        if (byteContent == null) {
            return setZeroContent();
        }
        this.content = new TestableByteArrayInputStream(byteContent);
        setContentLength(byteContent.length);
        return this;
    }

    public MockLowLevelHttpResponse setZeroContent() {
        this.content = null;
        setContentLength(0L);
        return this;
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public InputStream getContent() throws IOException {
        return this.content;
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public String getContentEncoding() {
        return this.contentEncoding;
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public long getContentLength() {
        return this.contentLength;
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public final String getContentType() {
        return this.contentType;
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

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public String getReasonPhrase() {
        return this.reasonPhrase;
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public int getStatusCode() {
        return this.statusCode;
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public String getStatusLine() {
        StringBuilder buf = new StringBuilder();
        buf.append(this.statusCode);
        if (this.reasonPhrase != null) {
            buf.append(this.reasonPhrase);
        }
        return buf.toString();
    }

    public final List<String> getHeaderNames() {
        return this.headerNames;
    }

    public MockLowLevelHttpResponse setHeaderNames(List<String> headerNames) {
        this.headerNames = (List) Preconditions.checkNotNull(headerNames);
        return this;
    }

    public final List<String> getHeaderValues() {
        return this.headerValues;
    }

    public MockLowLevelHttpResponse setHeaderValues(List<String> headerValues) {
        this.headerValues = (List) Preconditions.checkNotNull(headerValues);
        return this;
    }

    public MockLowLevelHttpResponse setContent(InputStream content) {
        this.content = content;
        return this;
    }

    public MockLowLevelHttpResponse setContentType(String contentType) {
        this.contentType = contentType;
        return this;
    }

    public MockLowLevelHttpResponse setContentEncoding(String contentEncoding) {
        this.contentEncoding = contentEncoding;
        return this;
    }

    public MockLowLevelHttpResponse setContentLength(long contentLength) {
        this.contentLength = contentLength;
        Preconditions.checkArgument(contentLength >= -1);
        return this;
    }

    public MockLowLevelHttpResponse setStatusCode(int statusCode) {
        this.statusCode = statusCode;
        return this;
    }

    public MockLowLevelHttpResponse setReasonPhrase(String reasonPhrase) {
        this.reasonPhrase = reasonPhrase;
        return this;
    }

    @Override // com.google.api.client.http.LowLevelHttpResponse
    public void disconnect() throws IOException {
        this.isDisconnected = true;
        super.disconnect();
    }

    public boolean isDisconnected() {
        return this.isDisconnected;
    }
}
