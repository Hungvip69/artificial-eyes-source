package com.google.api.client.http;

import com.google.api.client.util.Charsets;
import com.google.api.client.util.IOUtils;
import com.google.api.client.util.LoggingInputStream;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.StringUtils;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes.dex */
public final class HttpResponse {
    private static final String CONTENT_ENCODING_GZIP = "gzip";
    private static final String CONTENT_ENCODING_XGZIP = "x-gzip";
    private InputStream content;
    private final String contentEncoding;
    private int contentLoggingLimit;
    private boolean contentRead;
    private final String contentType;
    private boolean loggingEnabled;
    private final HttpMediaType mediaType;
    private final HttpRequest request;
    LowLevelHttpResponse response;
    private final boolean returnRawInputStream;
    private final int statusCode;
    private final String statusMessage;

    HttpResponse(HttpRequest request, LowLevelHttpResponse response) throws IOException {
        this.request = request;
        this.returnRawInputStream = request.getResponseReturnRawInputStream();
        this.contentLoggingLimit = request.getContentLoggingLimit();
        this.loggingEnabled = request.isLoggingEnabled();
        this.response = response;
        this.contentEncoding = response.getContentEncoding();
        int code = response.getStatusCode();
        boolean loggable = false;
        this.statusCode = code < 0 ? 0 : code;
        String message = response.getReasonPhrase();
        this.statusMessage = message;
        Logger logger = HttpTransport.LOGGER;
        if (this.loggingEnabled && logger.isLoggable(Level.CONFIG)) {
            loggable = true;
        }
        StringBuilder logbuf = null;
        if (loggable) {
            logbuf = new StringBuilder();
            logbuf.append("-------------- RESPONSE --------------").append(StringUtils.LINE_SEPARATOR);
            String statusLine = response.getStatusLine();
            if (statusLine != null) {
                logbuf.append(statusLine);
            } else {
                logbuf.append(this.statusCode);
                if (message != null) {
                    logbuf.append(' ').append(message);
                }
            }
            logbuf.append(StringUtils.LINE_SEPARATOR);
        }
        request.getResponseHeaders().fromHttpResponse(response, loggable ? logbuf : null);
        String contentType = response.getContentType();
        contentType = contentType == null ? request.getResponseHeaders().getContentType() : contentType;
        this.contentType = contentType;
        this.mediaType = parseMediaType(contentType);
        if (loggable) {
            logger.config(logbuf.toString());
        }
    }

    private static HttpMediaType parseMediaType(String contentType) {
        if (contentType == null) {
            return null;
        }
        try {
            return new HttpMediaType(contentType);
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

    public int getContentLoggingLimit() {
        return this.contentLoggingLimit;
    }

    public HttpResponse setContentLoggingLimit(int contentLoggingLimit) {
        Preconditions.checkArgument(contentLoggingLimit >= 0, "The content logging limit must be non-negative.");
        this.contentLoggingLimit = contentLoggingLimit;
        return this;
    }

    public boolean isLoggingEnabled() {
        return this.loggingEnabled;
    }

    public HttpResponse setLoggingEnabled(boolean loggingEnabled) {
        this.loggingEnabled = loggingEnabled;
        return this;
    }

    public String getContentEncoding() {
        return this.contentEncoding;
    }

    public String getContentType() {
        return this.contentType;
    }

    public HttpMediaType getMediaType() {
        return this.mediaType;
    }

    public HttpHeaders getHeaders() {
        return this.request.getResponseHeaders();
    }

    public boolean isSuccessStatusCode() {
        return HttpStatusCodes.isSuccess(this.statusCode);
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public String getStatusMessage() {
        return this.statusMessage;
    }

    public HttpTransport getTransport() {
        return this.request.getTransport();
    }

    public HttpRequest getRequest() {
        return this.request;
    }

    public InputStream getContent() throws IOException {
        if (!this.contentRead) {
            InputStream lowLevelResponseContent = this.response.getContent();
            if (lowLevelResponseContent != null) {
                try {
                    if (!this.returnRawInputStream && this.contentEncoding != null) {
                        String oontentencoding = this.contentEncoding.trim().toLowerCase(Locale.ENGLISH);
                        if (CONTENT_ENCODING_GZIP.equals(oontentencoding) || CONTENT_ENCODING_XGZIP.equals(oontentencoding)) {
                            lowLevelResponseContent = new GZIPInputStream(new ConsumingInputStream(lowLevelResponseContent));
                        }
                    }
                    Logger logger = HttpTransport.LOGGER;
                    if (this.loggingEnabled && logger.isLoggable(Level.CONFIG)) {
                        lowLevelResponseContent = new LoggingInputStream(lowLevelResponseContent, logger, Level.CONFIG, this.contentLoggingLimit);
                    }
                    this.content = lowLevelResponseContent;
                } catch (EOFException e) {
                    if (0 == 0) {
                    }
                    this.contentRead = true;
                } catch (Throwable th) {
                    if (0 == 0) {
                        lowLevelResponseContent.close();
                    }
                    throw th;
                }
                if (1 == 0) {
                    lowLevelResponseContent.close();
                }
            }
            this.contentRead = true;
        }
        return this.content;
    }

    public void download(OutputStream outputStream) throws IOException {
        InputStream inputStream = getContent();
        IOUtils.copy(inputStream, outputStream);
    }

    public void ignore() throws IOException {
        InputStream content = getContent();
        if (content != null) {
            content.close();
        }
    }

    public void disconnect() throws IOException {
        ignore();
        this.response.disconnect();
    }

    public <T> T parseAs(Class<T> cls) throws IOException {
        if (!hasMessageBody()) {
            return null;
        }
        return (T) this.request.getParser().parseAndClose(getContent(), getContentCharset(), (Class) cls);
    }

    private boolean hasMessageBody() throws IOException {
        int statusCode = getStatusCode();
        if (!getRequest().getRequestMethod().equals(HttpMethods.HEAD) && statusCode / 100 != 1 && statusCode != 204 && statusCode != 304) {
            return true;
        }
        ignore();
        return false;
    }

    public Object parseAs(Type dataType) throws IOException {
        if (!hasMessageBody()) {
            return null;
        }
        return this.request.getParser().parseAndClose(getContent(), getContentCharset(), dataType);
    }

    public String parseAsString() throws IOException {
        InputStream content = getContent();
        if (content == null) {
            return "";
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        IOUtils.copy(content, out);
        return out.toString(getContentCharset().name());
    }

    public Charset getContentCharset() {
        if (this.mediaType == null || this.mediaType.getCharsetParameter() == null) {
            return Charsets.ISO_8859_1;
        }
        return this.mediaType.getCharsetParameter();
    }
}
