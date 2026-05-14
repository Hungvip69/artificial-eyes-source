package com.google.api.client.testing.http.javanet;

import com.google.api.client.util.Preconditions;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class MockHttpURLConnection extends HttpURLConnection {
    private boolean doOutputCalled;
    private InputStream errorStream;
    private Map<String, List<String>> headers;
    private InputStream inputStream;
    private OutputStream outputStream;

    @Deprecated
    public static final byte[] INPUT_BUF = new byte[1];

    @Deprecated
    public static final byte[] ERROR_BUF = new byte[5];

    public MockHttpURLConnection(URL u) {
        super(u);
        this.outputStream = new ByteArrayOutputStream(0);
        this.inputStream = null;
        this.errorStream = null;
        this.headers = new LinkedHashMap();
    }

    @Override // java.net.HttpURLConnection
    public void disconnect() {
    }

    @Override // java.net.HttpURLConnection
    public boolean usingProxy() {
        return false;
    }

    @Override // java.net.URLConnection
    public void connect() throws IOException {
    }

    @Override // java.net.HttpURLConnection
    public int getResponseCode() throws IOException {
        return this.responseCode;
    }

    @Override // java.net.URLConnection
    public void setDoOutput(boolean dooutput) {
        this.doOutputCalled = true;
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() throws IOException {
        if (this.outputStream != null) {
            return this.outputStream;
        }
        return super.getOutputStream();
    }

    public final boolean doOutputCalled() {
        return this.doOutputCalled;
    }

    public MockHttpURLConnection setOutputStream(OutputStream outputStream) {
        this.outputStream = outputStream;
        return this;
    }

    public MockHttpURLConnection setResponseCode(int responseCode) {
        Preconditions.checkArgument(responseCode >= -1);
        this.responseCode = responseCode;
        return this;
    }

    public MockHttpURLConnection addHeader(String name, String value) {
        Preconditions.checkNotNull(name);
        Preconditions.checkNotNull(value);
        if (this.headers.containsKey(name)) {
            this.headers.get(name).add(value);
        } else {
            List<String> values = new ArrayList<>();
            values.add(value);
            this.headers.put(name, values);
        }
        return this;
    }

    public MockHttpURLConnection setInputStream(InputStream is) {
        Preconditions.checkNotNull(is);
        if (this.inputStream == null) {
            this.inputStream = is;
        }
        return this;
    }

    public MockHttpURLConnection setErrorStream(InputStream is) {
        Preconditions.checkNotNull(is);
        if (this.errorStream == null) {
            this.errorStream = is;
        }
        return this;
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() throws IOException {
        if (this.responseCode < 400) {
            return this.inputStream;
        }
        throw new IOException();
    }

    @Override // java.net.HttpURLConnection
    public InputStream getErrorStream() {
        return this.errorStream;
    }

    @Override // java.net.URLConnection
    public Map<String, List<String>> getHeaderFields() {
        return this.headers;
    }

    @Override // java.net.URLConnection
    public String getHeaderField(String name) {
        List<String> values = this.headers.get(name);
        if (values == null) {
            return null;
        }
        return values.get(0);
    }

    public int getChunkLength() {
        return this.chunkLength;
    }
}
