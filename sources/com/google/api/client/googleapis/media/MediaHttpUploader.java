package com.google.api.client.googleapis.media;

import com.google.api.client.googleapis.MethodOverride;
import com.google.api.client.http.AbstractInputStreamContent;
import com.google.api.client.http.ByteArrayContent;
import com.google.api.client.http.EmptyContent;
import com.google.api.client.http.GZipEncoding;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpContent;
import com.google.api.client.http.HttpHeaders;
import com.google.api.client.http.HttpMethods;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestFactory;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.InputStreamContent;
import com.google.api.client.http.MultipartContent;
import com.google.api.client.util.ByteStreams;
import com.google.api.client.util.Preconditions;
import com.google.api.client.util.Sleeper;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class MediaHttpUploader {
    public static final String CONTENT_LENGTH_HEADER = "X-Upload-Content-Length";
    public static final String CONTENT_TYPE_HEADER = "X-Upload-Content-Type";
    public static final int DEFAULT_CHUNK_SIZE = 10485760;
    private static final int KB = 1024;
    static final int MB = 1048576;
    public static final int MINIMUM_CHUNK_SIZE = 262144;
    private Byte cachedByte;
    private InputStream contentInputStream;
    private int currentChunkLength;
    private HttpRequest currentRequest;
    private byte[] currentRequestContentBuffer;
    private boolean directUploadEnabled;
    private boolean disableGZipContent;
    private boolean isMediaContentLengthCalculated;
    private final AbstractInputStreamContent mediaContent;
    private long mediaContentLength;
    private HttpContent metadata;
    private MediaHttpUploaderProgressListener progressListener;
    private final HttpRequestFactory requestFactory;
    private long totalBytesClientSent;
    private long totalBytesServerReceived;
    private final HttpTransport transport;
    private UploadState uploadState = UploadState.NOT_STARTED;
    private String initiationRequestMethod = HttpMethods.POST;
    private HttpHeaders initiationHeaders = new HttpHeaders();
    String mediaContentLengthStr = "*";
    private int chunkSize = DEFAULT_CHUNK_SIZE;
    Sleeper sleeper = Sleeper.DEFAULT;

    public enum UploadState {
        NOT_STARTED,
        INITIATION_STARTED,
        INITIATION_COMPLETE,
        MEDIA_IN_PROGRESS,
        MEDIA_COMPLETE
    }

    public MediaHttpUploader(AbstractInputStreamContent mediaContent, HttpTransport transport, HttpRequestInitializer httpRequestInitializer) {
        this.mediaContent = (AbstractInputStreamContent) Preconditions.checkNotNull(mediaContent);
        this.transport = (HttpTransport) Preconditions.checkNotNull(transport);
        this.requestFactory = httpRequestInitializer == null ? transport.createRequestFactory() : transport.createRequestFactory(httpRequestInitializer);
    }

    public HttpResponse upload(GenericUrl initiationRequestUrl) throws IOException {
        Preconditions.checkArgument(this.uploadState == UploadState.NOT_STARTED);
        if (this.directUploadEnabled) {
            return directUpload(initiationRequestUrl);
        }
        return resumableUpload(initiationRequestUrl);
    }

    private HttpResponse directUpload(GenericUrl initiationRequestUrl) throws Throwable {
        updateStateAndNotifyListener(UploadState.MEDIA_IN_PROGRESS);
        HttpContent content = this.mediaContent;
        if (this.metadata != null) {
            content = new MultipartContent().setContentParts(Arrays.asList(this.metadata, this.mediaContent));
            initiationRequestUrl.put("uploadType", "multipart");
        } else {
            initiationRequestUrl.put("uploadType", "media");
        }
        HttpRequest request = this.requestFactory.buildRequest(this.initiationRequestMethod, initiationRequestUrl, content);
        request.getHeaders().putAll(this.initiationHeaders);
        HttpResponse response = executeCurrentRequest(request);
        boolean responseProcessed = false;
        try {
            if (isMediaLengthKnown()) {
                this.totalBytesServerReceived = getMediaContentLength();
            }
            updateStateAndNotifyListener(UploadState.MEDIA_COMPLETE);
            responseProcessed = true;
            return response;
        } finally {
            if (!responseProcessed) {
                response.disconnect();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00ed A[Catch: all -> 0x0139, TRY_LEAVE, TryCatch #3 {all -> 0x0139, blocks: (B:17:0x007e, B:29:0x00a9, B:39:0x00c6, B:43:0x00d6, B:45:0x00ed), top: B:83:0x007e }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0132 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x003e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.google.api.client.http.HttpResponse resumableUpload(com.google.api.client.http.GenericUrl r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 329
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.googleapis.media.MediaHttpUploader.resumableUpload(com.google.api.client.http.GenericUrl):com.google.api.client.http.HttpResponse");
    }

    private boolean isMediaLengthKnown() throws IOException {
        return getMediaContentLength() >= 0;
    }

    private long getMediaContentLength() throws IOException {
        if (!this.isMediaContentLengthCalculated) {
            this.mediaContentLength = this.mediaContent.getLength();
            this.isMediaContentLengthCalculated = true;
        }
        return this.mediaContentLength;
    }

    private HttpResponse executeUploadInitiation(GenericUrl initiationRequestUrl) throws Throwable {
        updateStateAndNotifyListener(UploadState.INITIATION_STARTED);
        initiationRequestUrl.put("uploadType", "resumable");
        HttpContent content = this.metadata == null ? new EmptyContent() : this.metadata;
        HttpRequest request = this.requestFactory.buildRequest(this.initiationRequestMethod, initiationRequestUrl, content);
        this.initiationHeaders.set(CONTENT_TYPE_HEADER, (Object) this.mediaContent.getType());
        if (isMediaLengthKnown()) {
            this.initiationHeaders.set(CONTENT_LENGTH_HEADER, (Object) Long.valueOf(getMediaContentLength()));
        }
        request.getHeaders().putAll(this.initiationHeaders);
        HttpResponse response = executeCurrentRequest(request);
        boolean notificationCompleted = false;
        try {
            updateStateAndNotifyListener(UploadState.INITIATION_COMPLETE);
            notificationCompleted = true;
            return response;
        } finally {
            if (!notificationCompleted) {
                response.disconnect();
            }
        }
    }

    private HttpResponse executeCurrentRequestWithoutGZip(HttpRequest request) throws Throwable {
        new MethodOverride().intercept(request);
        request.setThrowExceptionOnExecuteError(false);
        HttpResponse response = request.execute();
        return response;
    }

    private HttpResponse executeCurrentRequest(HttpRequest request) throws Throwable {
        if (!this.disableGZipContent && !(request.getContent() instanceof EmptyContent)) {
            request.setEncoding(new GZipEncoding());
        }
        HttpResponse response = executeCurrentRequestWithoutGZip(request);
        return response;
    }

    private ContentChunk buildContentChunk() throws IOException {
        int blockSize;
        int bytesAllowedToRead;
        AbstractInputStreamContent contentChunk;
        String contentRange;
        if (isMediaLengthKnown()) {
            blockSize = (int) Math.min(this.chunkSize, getMediaContentLength() - this.totalBytesServerReceived);
        } else {
            blockSize = this.chunkSize;
        }
        int actualBlockSize = blockSize;
        if (isMediaLengthKnown()) {
            this.contentInputStream.mark(blockSize);
            InputStream limitInputStream = ByteStreams.limit(this.contentInputStream, blockSize);
            contentChunk = new InputStreamContent(this.mediaContent.getType(), limitInputStream).setRetrySupported(true).setLength(blockSize).setCloseInputStream(false);
            this.mediaContentLengthStr = String.valueOf(getMediaContentLength());
        } else {
            int copyBytes = 0;
            if (this.currentRequestContentBuffer == null) {
                bytesAllowedToRead = this.cachedByte == null ? blockSize + 1 : blockSize;
                this.currentRequestContentBuffer = new byte[blockSize + 1];
                if (this.cachedByte != null) {
                    this.currentRequestContentBuffer[0] = this.cachedByte.byteValue();
                }
            } else {
                copyBytes = (int) (this.totalBytesClientSent - this.totalBytesServerReceived);
                System.arraycopy(this.currentRequestContentBuffer, this.currentChunkLength - copyBytes, this.currentRequestContentBuffer, 0, copyBytes);
                if (this.cachedByte != null) {
                    this.currentRequestContentBuffer[copyBytes] = this.cachedByte.byteValue();
                }
                bytesAllowedToRead = blockSize - copyBytes;
            }
            int actualBytesRead = ByteStreams.read(this.contentInputStream, this.currentRequestContentBuffer, (blockSize + 1) - bytesAllowedToRead, bytesAllowedToRead);
            if (actualBytesRead < bytesAllowedToRead) {
                int actualBlockSize2 = Math.max(0, actualBytesRead) + copyBytes;
                if (this.cachedByte != null) {
                    actualBlockSize2++;
                    this.cachedByte = null;
                }
                if (this.mediaContentLengthStr.equals("*")) {
                    this.mediaContentLengthStr = String.valueOf(this.totalBytesServerReceived + ((long) actualBlockSize2));
                }
                actualBlockSize = actualBlockSize2;
            } else {
                this.cachedByte = Byte.valueOf(this.currentRequestContentBuffer[blockSize]);
            }
            contentChunk = new ByteArrayContent(this.mediaContent.getType(), this.currentRequestContentBuffer, 0, actualBlockSize);
            this.totalBytesClientSent = this.totalBytesServerReceived + ((long) actualBlockSize);
        }
        this.currentChunkLength = actualBlockSize;
        if (actualBlockSize == 0) {
            contentRange = "bytes */" + this.mediaContentLengthStr;
        } else {
            contentRange = "bytes " + this.totalBytesServerReceived + "-" + ((this.totalBytesServerReceived + ((long) actualBlockSize)) - 1) + "/" + this.mediaContentLengthStr;
        }
        return new ContentChunk(contentChunk, contentRange);
    }

    private static class ContentChunk {
        private final AbstractInputStreamContent content;
        private final String contentRange;

        ContentChunk(AbstractInputStreamContent content, String contentRange) {
            this.content = content;
            this.contentRange = contentRange;
        }

        AbstractInputStreamContent getContent() {
            return this.content;
        }

        String getContentRange() {
            return this.contentRange;
        }
    }

    void serverErrorCallback() throws IOException {
        Preconditions.checkNotNull(this.currentRequest, "The current request should not be null");
        this.currentRequest.setContent(new EmptyContent());
        this.currentRequest.getHeaders().setContentRange("bytes */" + this.mediaContentLengthStr);
    }

    private long getNextByteIndex(String rangeHeader) {
        if (rangeHeader == null) {
            return 0L;
        }
        return Long.parseLong(rangeHeader.substring(rangeHeader.indexOf(45) + 1)) + 1;
    }

    public HttpContent getMetadata() {
        return this.metadata;
    }

    public MediaHttpUploader setMetadata(HttpContent metadata) {
        this.metadata = metadata;
        return this;
    }

    public HttpContent getMediaContent() {
        return this.mediaContent;
    }

    public HttpTransport getTransport() {
        return this.transport;
    }

    public MediaHttpUploader setDirectUploadEnabled(boolean directUploadEnabled) {
        this.directUploadEnabled = directUploadEnabled;
        return this;
    }

    public boolean isDirectUploadEnabled() {
        return this.directUploadEnabled;
    }

    public MediaHttpUploader setProgressListener(MediaHttpUploaderProgressListener progressListener) {
        this.progressListener = progressListener;
        return this;
    }

    public MediaHttpUploaderProgressListener getProgressListener() {
        return this.progressListener;
    }

    public MediaHttpUploader setChunkSize(int chunkSize) {
        Preconditions.checkArgument(chunkSize > 0 && chunkSize % 262144 == 0, "chunkSize must be a positive multiple of 262144.");
        this.chunkSize = chunkSize;
        return this;
    }

    public int getChunkSize() {
        return this.chunkSize;
    }

    public boolean getDisableGZipContent() {
        return this.disableGZipContent;
    }

    public MediaHttpUploader setDisableGZipContent(boolean disableGZipContent) {
        this.disableGZipContent = disableGZipContent;
        return this;
    }

    public Sleeper getSleeper() {
        return this.sleeper;
    }

    public MediaHttpUploader setSleeper(Sleeper sleeper) {
        this.sleeper = sleeper;
        return this;
    }

    public String getInitiationRequestMethod() {
        return this.initiationRequestMethod;
    }

    public MediaHttpUploader setInitiationRequestMethod(String initiationRequestMethod) {
        Preconditions.checkArgument(initiationRequestMethod.equals(HttpMethods.POST) || initiationRequestMethod.equals(HttpMethods.PUT) || initiationRequestMethod.equals(HttpMethods.PATCH));
        this.initiationRequestMethod = initiationRequestMethod;
        return this;
    }

    public MediaHttpUploader setInitiationHeaders(HttpHeaders initiationHeaders) {
        this.initiationHeaders = initiationHeaders;
        return this;
    }

    public HttpHeaders getInitiationHeaders() {
        return this.initiationHeaders;
    }

    public long getNumBytesUploaded() {
        return this.totalBytesServerReceived;
    }

    private void updateStateAndNotifyListener(UploadState uploadState) throws IOException {
        this.uploadState = uploadState;
        if (this.progressListener != null) {
            this.progressListener.progressChanged(this);
        }
    }

    public UploadState getUploadState() {
        return this.uploadState;
    }

    public double getProgress() throws IOException {
        Preconditions.checkArgument(isMediaLengthKnown(), "Cannot call getProgress() if the specified AbstractInputStreamContent has no content length. Use  getNumBytesUploaded() to denote progress instead.");
        if (getMediaContentLength() == 0) {
            return 0.0d;
        }
        double d = this.totalBytesServerReceived;
        double mediaContentLength = getMediaContentLength();
        Double.isNaN(d);
        Double.isNaN(mediaContentLength);
        return d / mediaContentLength;
    }
}
