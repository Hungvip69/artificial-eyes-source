package com.google.api.client.googleapis.services;

import com.google.api.client.googleapis.GoogleUtils;
import com.google.api.client.googleapis.MethodOverride;
import com.google.api.client.googleapis.batch.BatchCallback;
import com.google.api.client.googleapis.batch.BatchRequest;
import com.google.api.client.googleapis.media.MediaHttpDownloader;
import com.google.api.client.googleapis.media.MediaHttpUploader;
import com.google.api.client.http.AbstractInputStreamContent;
import com.google.api.client.http.EmptyContent;
import com.google.api.client.http.GZipEncoding;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpContent;
import com.google.api.client.http.HttpHeaders;
import com.google.api.client.http.HttpMethods;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestFactory;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpResponseException;
import com.google.api.client.http.HttpResponseInterceptor;
import com.google.api.client.http.UriTemplate;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Preconditions;
import com.google.common.base.StandardSystemProperty;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractGoogleClientRequest<T> extends GenericData {
    private static final String API_VERSION_HEADER = "X-Goog-Api-Client";
    public static final String USER_AGENT_SUFFIX = "Google-API-Java-Client";
    private final AbstractGoogleClient abstractGoogleClient;
    private boolean disableGZipContent;
    private MediaHttpDownloader downloader;
    private final HttpContent httpContent;
    private HttpHeaders lastResponseHeaders;
    private String lastStatusMessage;
    private final String requestMethod;
    private Class<T> responseClass;
    private boolean returnRawInputStream;
    private MediaHttpUploader uploader;
    private final String uriTemplate;
    private HttpHeaders requestHeaders = new HttpHeaders();
    private int lastStatusCode = -1;

    protected AbstractGoogleClientRequest(AbstractGoogleClient abstractGoogleClient, String requestMethod, String uriTemplate, HttpContent httpContent, Class<T> responseClass) {
        this.responseClass = (Class) Preconditions.checkNotNull(responseClass);
        this.abstractGoogleClient = (AbstractGoogleClient) Preconditions.checkNotNull(abstractGoogleClient);
        this.requestMethod = (String) Preconditions.checkNotNull(requestMethod);
        this.uriTemplate = (String) Preconditions.checkNotNull(uriTemplate);
        this.httpContent = httpContent;
        String applicationName = abstractGoogleClient.getApplicationName();
        if (applicationName != null) {
            this.requestHeaders.setUserAgent(applicationName + " " + USER_AGENT_SUFFIX);
        } else {
            this.requestHeaders.setUserAgent(USER_AGENT_SUFFIX);
        }
        this.requestHeaders.set(API_VERSION_HEADER, (Object) ApiClientVersion.getDefault().build(abstractGoogleClient.getClass().getSimpleName()));
    }

    static class ApiClientVersion {
        private static final ApiClientVersion DEFAULT_VERSION = new ApiClientVersion();
        private final String headerTemplate;

        ApiClientVersion() {
            this(getJavaVersion(), StandardSystemProperty.OS_NAME.value(), StandardSystemProperty.OS_VERSION.value(), GoogleUtils.VERSION);
        }

        ApiClientVersion(String javaVersion, String osName, String osVersion, String clientVersion) {
            StringBuilder sb = new StringBuilder("java/");
            sb.append(formatSemver(javaVersion));
            sb.append(" http-google-%s/");
            sb.append(formatSemver(clientVersion));
            if (osName != null && osVersion != null) {
                sb.append(" ");
                sb.append(formatName(osName));
                sb.append("/");
                sb.append(formatSemver(osVersion));
            }
            this.headerTemplate = sb.toString();
        }

        String build(String clientName) {
            return String.format(this.headerTemplate, formatName(clientName));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static ApiClientVersion getDefault() {
            return DEFAULT_VERSION;
        }

        private static String getJavaVersion() {
            String version = System.getProperty("java.version");
            if (version == null) {
                return null;
            }
            String formatted = formatSemver(version, null);
            if (formatted != null) {
                return formatted;
            }
            Matcher m = Pattern.compile("^(\\d+)[^\\d]?").matcher(version);
            if (!m.find()) {
                return null;
            }
            return m.group(1) + ".0.0";
        }

        private static String formatName(String name) {
            return name.toLowerCase().replaceAll("[^\\w\\d\\-]", "-");
        }

        private static String formatSemver(String version) {
            return formatSemver(version, version);
        }

        private static String formatSemver(String version, String defaultValue) {
            if (version == null) {
                return null;
            }
            Matcher m = Pattern.compile("(\\d+\\.\\d+\\.\\d+).*").matcher(version);
            if (m.find()) {
                return m.group(1);
            }
            return defaultValue;
        }
    }

    public final boolean getDisableGZipContent() {
        return this.disableGZipContent;
    }

    public final boolean getReturnRawInputSteam() {
        return this.returnRawInputStream;
    }

    public AbstractGoogleClientRequest<T> setDisableGZipContent(boolean disableGZipContent) {
        this.disableGZipContent = disableGZipContent;
        return this;
    }

    public AbstractGoogleClientRequest<T> setReturnRawInputStream(boolean returnRawInputStream) {
        this.returnRawInputStream = returnRawInputStream;
        return this;
    }

    public final String getRequestMethod() {
        return this.requestMethod;
    }

    public final String getUriTemplate() {
        return this.uriTemplate;
    }

    public final HttpContent getHttpContent() {
        return this.httpContent;
    }

    public AbstractGoogleClient getAbstractGoogleClient() {
        return this.abstractGoogleClient;
    }

    public final HttpHeaders getRequestHeaders() {
        return this.requestHeaders;
    }

    public AbstractGoogleClientRequest<T> setRequestHeaders(HttpHeaders headers) {
        this.requestHeaders = headers;
        return this;
    }

    public final HttpHeaders getLastResponseHeaders() {
        return this.lastResponseHeaders;
    }

    public final int getLastStatusCode() {
        return this.lastStatusCode;
    }

    public final String getLastStatusMessage() {
        return this.lastStatusMessage;
    }

    public final Class<T> getResponseClass() {
        return this.responseClass;
    }

    public final MediaHttpUploader getMediaHttpUploader() {
        return this.uploader;
    }

    protected final void initializeMediaUpload(AbstractInputStreamContent mediaContent) {
        HttpRequestFactory requestFactory = this.abstractGoogleClient.getRequestFactory();
        this.uploader = new MediaHttpUploader(mediaContent, requestFactory.getTransport(), requestFactory.getInitializer());
        this.uploader.setInitiationRequestMethod(this.requestMethod);
        if (this.httpContent != null) {
            this.uploader.setMetadata(this.httpContent);
        }
    }

    public final MediaHttpDownloader getMediaHttpDownloader() {
        return this.downloader;
    }

    protected final void initializeMediaDownload() {
        HttpRequestFactory requestFactory = this.abstractGoogleClient.getRequestFactory();
        this.downloader = new MediaHttpDownloader(requestFactory.getTransport(), requestFactory.getInitializer());
    }

    public GenericUrl buildHttpRequestUrl() {
        return new GenericUrl(UriTemplate.expand(this.abstractGoogleClient.getBaseUrl(), this.uriTemplate, this, true));
    }

    public HttpRequest buildHttpRequest() throws IOException {
        return buildHttpRequest(false);
    }

    protected HttpRequest buildHttpRequestUsingHead() throws IOException {
        return buildHttpRequest(true);
    }

    private HttpRequest buildHttpRequest(boolean usingHead) throws IOException {
        boolean z = true;
        Preconditions.checkArgument(this.uploader == null);
        if (usingHead && !this.requestMethod.equals(HttpMethods.GET)) {
            z = false;
        }
        Preconditions.checkArgument(z);
        String requestMethodToUse = usingHead ? HttpMethods.HEAD : this.requestMethod;
        final HttpRequest httpRequest = getAbstractGoogleClient().getRequestFactory().buildRequest(requestMethodToUse, buildHttpRequestUrl(), this.httpContent);
        new MethodOverride().intercept(httpRequest);
        httpRequest.setParser(getAbstractGoogleClient().getObjectParser());
        if (this.httpContent == null && (this.requestMethod.equals(HttpMethods.POST) || this.requestMethod.equals(HttpMethods.PUT) || this.requestMethod.equals(HttpMethods.PATCH))) {
            httpRequest.setContent(new EmptyContent());
        }
        httpRequest.getHeaders().putAll(this.requestHeaders);
        if (!this.disableGZipContent) {
            httpRequest.setEncoding(new GZipEncoding());
        }
        httpRequest.setResponseReturnRawInputStream(this.returnRawInputStream);
        final HttpResponseInterceptor responseInterceptor = httpRequest.getResponseInterceptor();
        httpRequest.setResponseInterceptor(new HttpResponseInterceptor() { // from class: com.google.api.client.googleapis.services.AbstractGoogleClientRequest.1
            @Override // com.google.api.client.http.HttpResponseInterceptor
            public void interceptResponse(HttpResponse response) throws IOException {
                if (responseInterceptor != null) {
                    responseInterceptor.interceptResponse(response);
                }
                if (!response.isSuccessStatusCode() && httpRequest.getThrowExceptionOnExecuteError()) {
                    throw AbstractGoogleClientRequest.this.newExceptionOnError(response);
                }
            }
        });
        return httpRequest;
    }

    public HttpResponse executeUnparsed() throws IOException {
        return executeUnparsed(false);
    }

    protected HttpResponse executeMedia() throws IOException {
        set("alt", (Object) "media");
        return executeUnparsed();
    }

    protected HttpResponse executeUsingHead() throws Throwable {
        Preconditions.checkArgument(this.uploader == null);
        HttpResponse response = executeUnparsed(true);
        response.ignore();
        return response;
    }

    private HttpResponse executeUnparsed(boolean usingHead) throws Throwable {
        HttpResponse response;
        if (this.uploader == null) {
            response = buildHttpRequest(usingHead).execute();
        } else {
            GenericUrl httpRequestUrl = buildHttpRequestUrl();
            HttpRequest httpRequest = getAbstractGoogleClient().getRequestFactory().buildRequest(this.requestMethod, httpRequestUrl, this.httpContent);
            boolean throwExceptionOnExecuteError = httpRequest.getThrowExceptionOnExecuteError();
            HttpResponse response2 = this.uploader.setInitiationHeaders(this.requestHeaders).setDisableGZipContent(this.disableGZipContent).upload(httpRequestUrl);
            response2.getRequest().setParser(getAbstractGoogleClient().getObjectParser());
            if (throwExceptionOnExecuteError && !response2.isSuccessStatusCode()) {
                throw newExceptionOnError(response2);
            }
            response = response2;
        }
        this.lastResponseHeaders = response.getHeaders();
        this.lastStatusCode = response.getStatusCode();
        this.lastStatusMessage = response.getStatusMessage();
        return response;
    }

    protected IOException newExceptionOnError(HttpResponse response) {
        return new HttpResponseException(response);
    }

    public T execute() throws IOException {
        return (T) executeUnparsed().parseAs((Class) this.responseClass);
    }

    public InputStream executeAsInputStream() throws IOException {
        return executeUnparsed().getContent();
    }

    protected InputStream executeMediaAsInputStream() throws IOException {
        return executeMedia().getContent();
    }

    public void executeAndDownloadTo(OutputStream outputStream) throws IOException {
        executeUnparsed().download(outputStream);
    }

    protected void executeMediaAndDownloadTo(OutputStream outputStream) throws Throwable {
        if (this.downloader == null) {
            executeMedia().download(outputStream);
        } else {
            this.downloader.download(buildHttpRequestUrl(), this.requestHeaders, outputStream);
        }
    }

    public final <E> void queue(BatchRequest batchRequest, Class<E> errorClass, BatchCallback<T, E> callback) throws IOException {
        Preconditions.checkArgument(this.uploader == null, "Batching media requests is not supported");
        batchRequest.queue(buildHttpRequest(), getResponseClass(), errorClass, callback);
    }

    @Override // com.google.api.client.util.GenericData
    public AbstractGoogleClientRequest<T> set(String fieldName, Object value) {
        return (AbstractGoogleClientRequest) super.set(fieldName, value);
    }

    protected final void checkRequiredParameter(Object value, String name) {
        Preconditions.checkArgument(this.abstractGoogleClient.getSuppressRequiredParameterChecks() || value != null, "Required parameter %s must be specified", name);
    }
}
