package com.google.api.client.testing.http;

import com.google.api.client.http.HttpContent;
import com.google.api.client.util.Preconditions;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class MockHttpContent implements HttpContent {
    private String type;
    private long length = -1;
    private byte[] content = new byte[0];

    @Override // com.google.api.client.http.HttpContent
    public long getLength() throws IOException {
        return this.length;
    }

    @Override // com.google.api.client.http.HttpContent
    public String getType() {
        return this.type;
    }

    @Override // com.google.api.client.http.HttpContent, com.google.api.client.util.StreamingContent
    public void writeTo(OutputStream out) throws IOException {
        out.write(this.content);
        out.flush();
    }

    @Override // com.google.api.client.http.HttpContent
    public boolean retrySupported() {
        return true;
    }

    public final byte[] getContent() {
        return this.content;
    }

    public MockHttpContent setContent(byte[] content) {
        this.content = (byte[]) Preconditions.checkNotNull(content);
        return this;
    }

    public MockHttpContent setLength(long length) {
        Preconditions.checkArgument(length >= -1);
        this.length = length;
        return this;
    }

    public MockHttpContent setType(String type) {
        this.type = type;
        return this;
    }
}
