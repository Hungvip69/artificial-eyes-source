package com.google.api.client.http;

import com.google.api.client.util.Charsets;
import com.google.api.client.util.IOUtils;
import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractHttpContent implements HttpContent {
    private long computedLength;
    private HttpMediaType mediaType;

    protected AbstractHttpContent(String mediaType) {
        this(mediaType == null ? null : new HttpMediaType(mediaType));
    }

    protected AbstractHttpContent(HttpMediaType mediaType) {
        this.computedLength = -1L;
        this.mediaType = mediaType;
    }

    @Override // com.google.api.client.http.HttpContent
    public long getLength() throws IOException {
        if (this.computedLength == -1) {
            this.computedLength = computeLength();
        }
        return this.computedLength;
    }

    public final HttpMediaType getMediaType() {
        return this.mediaType;
    }

    public AbstractHttpContent setMediaType(HttpMediaType mediaType) {
        this.mediaType = mediaType;
        return this;
    }

    protected final Charset getCharset() {
        if (this.mediaType == null || this.mediaType.getCharsetParameter() == null) {
            return Charsets.ISO_8859_1;
        }
        return this.mediaType.getCharsetParameter();
    }

    @Override // com.google.api.client.http.HttpContent
    public String getType() {
        if (this.mediaType == null) {
            return null;
        }
        return this.mediaType.build();
    }

    protected long computeLength() throws IOException {
        return computeLength(this);
    }

    @Override // com.google.api.client.http.HttpContent
    public boolean retrySupported() {
        return true;
    }

    public static long computeLength(HttpContent content) throws IOException {
        if (!content.retrySupported()) {
            return -1L;
        }
        return IOUtils.computeLength(content);
    }
}
