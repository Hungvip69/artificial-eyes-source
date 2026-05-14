package com.google.api.client.http;

import com.google.api.client.util.Preconditions;
import com.google.api.client.util.StreamingContent;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class HttpEncodingStreamingContent implements StreamingContent {
    private final StreamingContent content;
    private final HttpEncoding encoding;

    public HttpEncodingStreamingContent(StreamingContent content, HttpEncoding encoding) {
        this.content = (StreamingContent) Preconditions.checkNotNull(content);
        this.encoding = (HttpEncoding) Preconditions.checkNotNull(encoding);
    }

    @Override // com.google.api.client.util.StreamingContent
    public void writeTo(OutputStream out) throws IOException {
        this.encoding.encode(this.content, out);
    }

    public StreamingContent getContent() {
        return this.content;
    }

    public HttpEncoding getEncoding() {
        return this.encoding;
    }
}
