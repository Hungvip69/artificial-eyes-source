package com.google.api.client.http.javanet;

import com.google.api.client.http.HttpMethods;
import com.google.api.client.http.LowLevelHttpRequest;
import com.google.api.client.http.LowLevelHttpResponse;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.StreamingContent;
import com.google.common.net.HttpHeaders;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
final class NetHttpRequest extends LowLevelHttpRequest {
    private static final OutputWriter DEFAULT_CONNECTION_WRITER = new DefaultOutputWriter();
    private final HttpURLConnection connection;
    private int writeTimeout = 0;

    interface OutputWriter {
        void write(OutputStream outputStream, StreamingContent streamingContent) throws IOException;
    }

    NetHttpRequest(HttpURLConnection connection) {
        this.connection = connection;
        connection.setInstanceFollowRedirects(false);
    }

    @Override // com.google.api.client.http.LowLevelHttpRequest
    public void addHeader(String name, String value) {
        this.connection.addRequestProperty(name, value);
    }

    String getRequestProperty(String name) {
        return this.connection.getRequestProperty(name);
    }

    @Override // com.google.api.client.http.LowLevelHttpRequest
    public void setTimeout(int connectTimeout, int readTimeout) {
        this.connection.setReadTimeout(readTimeout);
        this.connection.setConnectTimeout(connectTimeout);
    }

    @Override // com.google.api.client.http.LowLevelHttpRequest
    public void setWriteTimeout(int writeTimeout) throws IOException {
        this.writeTimeout = writeTimeout;
    }

    static class DefaultOutputWriter implements OutputWriter {
        DefaultOutputWriter() {
        }

        @Override // com.google.api.client.http.javanet.NetHttpRequest.OutputWriter
        public void write(OutputStream outputStream, StreamingContent content) throws IOException {
            content.writeTo(outputStream);
        }
    }

    @Override // com.google.api.client.http.LowLevelHttpRequest
    public LowLevelHttpResponse execute() throws IOException {
        return execute(DEFAULT_CONNECTION_WRITER);
    }

    LowLevelHttpResponse execute(OutputWriter outputWriter) throws IOException {
        HttpURLConnection connection = this.connection;
        if (getStreamingContent() != null) {
            String contentType = getContentType();
            if (contentType != null) {
                addHeader(HttpHeaders.CONTENT_TYPE, contentType);
            }
            String contentEncoding = getContentEncoding();
            if (contentEncoding != null) {
                addHeader(HttpHeaders.CONTENT_ENCODING, contentEncoding);
            }
            long contentLength = getContentLength();
            if (contentLength >= 0) {
                connection.setRequestProperty(HttpHeaders.CONTENT_LENGTH, Long.toString(contentLength));
            }
            String requestMethod = connection.getRequestMethod();
            if (HttpMethods.POST.equals(requestMethod) || HttpMethods.PUT.equals(requestMethod)) {
                connection.setDoOutput(true);
                if (contentLength >= 0 && contentLength <= 2147483647L) {
                    connection.setFixedLengthStreamingMode((int) contentLength);
                } else {
                    connection.setChunkedStreamingMode(0);
                }
                OutputStream out = connection.getOutputStream();
                try {
                    try {
                        writeContentToOutputStream(outputWriter, out);
                        try {
                            out.close();
                        } catch (IOException exception) {
                            if (0 == 0) {
                                throw exception;
                            }
                        }
                    } catch (IOException e) {
                        if (!hasResponse(connection)) {
                            throw e;
                        }
                        try {
                            out.close();
                        } catch (IOException exception2) {
                            if (1 == 0) {
                                throw exception2;
                            }
                        }
                    }
                } catch (Throwable exception3) {
                    try {
                        out.close();
                    } catch (IOException exception4) {
                        if (1 == 0) {
                            throw exception4;
                        }
                    }
                    throw exception3;
                }
            } else {
                Preconditions.checkArgument(contentLength == 0, "%s with non-zero content length is not supported", requestMethod);
            }
        }
        boolean successfulConnection = null;
        try {
            connection.connect();
            NetHttpResponse response = new NetHttpResponse(connection);
            successfulConnection = true;
            return response;
        } finally {
            if (successfulConnection == null) {
                connection.disconnect();
            }
        }
    }

    private boolean hasResponse(HttpURLConnection connection) {
        try {
            return connection.getResponseCode() > 0;
        } catch (IOException e) {
            return false;
        }
    }

    private void writeContentToOutputStream(final OutputWriter outputWriter, final OutputStream out) throws IOException {
        if (this.writeTimeout == 0) {
            outputWriter.write(out, getStreamingContent());
            return;
        }
        final StreamingContent content = getStreamingContent();
        Callable<Boolean> writeContent = new Callable<Boolean>() { // from class: com.google.api.client.http.javanet.NetHttpRequest.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Boolean call() throws IOException {
                outputWriter.write(out, content);
                return Boolean.TRUE;
            }
        };
        ExecutorService executor = Executors.newSingleThreadExecutor();
        Future<Boolean> future = executor.submit(new FutureTask(writeContent), null);
        executor.shutdown();
        try {
            future.get(this.writeTimeout, TimeUnit.MILLISECONDS);
            if (!executor.isTerminated()) {
                executor.shutdown();
            }
        } catch (InterruptedException e) {
            throw new IOException("Socket write interrupted", e);
        } catch (ExecutionException e2) {
            throw new IOException("Exception in socket write", e2);
        } catch (TimeoutException e3) {
            throw new IOException("Socket write timed out", e3);
        }
    }
}
