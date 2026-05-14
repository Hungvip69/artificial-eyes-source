package com.google.api.client.googleapis.media;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpHeaders;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestFactory;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.util.Preconditions;
import com.google.common.base.MoreObjects;
import com.google.common.io.ByteStreams;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class MediaHttpDownloader {
    public static final int MAXIMUM_CHUNK_SIZE = 33554432;
    private long bytesDownloaded;
    private long mediaContentLength;
    private MediaHttpDownloaderProgressListener progressListener;
    private final HttpRequestFactory requestFactory;
    private final HttpTransport transport;
    private boolean directDownloadEnabled = false;
    private int chunkSize = 33554432;
    private DownloadState downloadState = DownloadState.NOT_STARTED;
    private long lastBytePos = -1;

    public enum DownloadState {
        NOT_STARTED,
        MEDIA_IN_PROGRESS,
        MEDIA_COMPLETE
    }

    public MediaHttpDownloader(HttpTransport transport, HttpRequestInitializer httpRequestInitializer) {
        this.transport = (HttpTransport) Preconditions.checkNotNull(transport);
        this.requestFactory = httpRequestInitializer == null ? transport.createRequestFactory() : transport.createRequestFactory(httpRequestInitializer);
    }

    public void download(GenericUrl requestUrl, OutputStream outputStream) throws Throwable {
        download(requestUrl, null, outputStream);
    }

    public void download(GenericUrl requestUrl, HttpHeaders requestHeaders, OutputStream outputStream) throws Throwable {
        Preconditions.checkArgument(this.downloadState == DownloadState.NOT_STARTED);
        requestUrl.put("alt", "media");
        if (this.directDownloadEnabled) {
            updateStateAndNotifyListener(DownloadState.MEDIA_IN_PROGRESS);
            HttpResponse response = executeCurrentRequest(this.lastBytePos, requestUrl, requestHeaders, outputStream);
            this.mediaContentLength = ((Long) MoreObjects.firstNonNull(response.getHeaders().getContentLength(), Long.valueOf(this.mediaContentLength))).longValue();
            this.bytesDownloaded = this.mediaContentLength;
            updateStateAndNotifyListener(DownloadState.MEDIA_COMPLETE);
            return;
        }
        while (true) {
            long currentRequestLastBytePos = (this.bytesDownloaded + ((long) this.chunkSize)) - 1;
            if (this.lastBytePos != -1) {
                currentRequestLastBytePos = Math.min(this.lastBytePos, currentRequestLastBytePos);
            }
            HttpResponse response2 = executeCurrentRequest(currentRequestLastBytePos, requestUrl, requestHeaders, outputStream);
            String contentRange = response2.getHeaders().getContentRange();
            long nextByteIndex = getNextByteIndex(contentRange);
            setMediaContentLength(contentRange);
            if (this.lastBytePos != -1 && this.lastBytePos <= nextByteIndex) {
                this.bytesDownloaded = this.lastBytePos;
                updateStateAndNotifyListener(DownloadState.MEDIA_COMPLETE);
                return;
            } else if (this.mediaContentLength <= nextByteIndex) {
                this.bytesDownloaded = this.mediaContentLength;
                updateStateAndNotifyListener(DownloadState.MEDIA_COMPLETE);
                return;
            } else {
                this.bytesDownloaded = nextByteIndex;
                updateStateAndNotifyListener(DownloadState.MEDIA_IN_PROGRESS);
            }
        }
    }

    private HttpResponse executeCurrentRequest(long currentRequestLastBytePos, GenericUrl requestUrl, HttpHeaders requestHeaders, OutputStream outputStream) throws Throwable {
        HttpRequest request = this.requestFactory.buildGetRequest(requestUrl);
        if (requestHeaders != null) {
            request.getHeaders().putAll(requestHeaders);
        }
        if (this.bytesDownloaded != 0 || currentRequestLastBytePos != -1) {
            StringBuilder rangeHeader = new StringBuilder();
            rangeHeader.append("bytes=").append(this.bytesDownloaded).append("-");
            if (currentRequestLastBytePos != -1) {
                rangeHeader.append(currentRequestLastBytePos);
            }
            request.getHeaders().setRange(rangeHeader.toString());
        }
        HttpResponse response = request.execute();
        try {
            ByteStreams.copy(response.getContent(), outputStream);
            return response;
        } finally {
            response.disconnect();
        }
    }

    private long getNextByteIndex(String rangeHeader) {
        if (rangeHeader == null) {
            return 0L;
        }
        return Long.parseLong(rangeHeader.substring(rangeHeader.indexOf(45) + 1, rangeHeader.indexOf(47))) + 1;
    }

    public MediaHttpDownloader setBytesDownloaded(long bytesDownloaded) {
        Preconditions.checkArgument(bytesDownloaded >= 0);
        this.bytesDownloaded = bytesDownloaded;
        return this;
    }

    public MediaHttpDownloader setContentRange(long firstBytePos, long lastBytePos) {
        Preconditions.checkArgument(lastBytePos >= firstBytePos);
        setBytesDownloaded(firstBytePos);
        this.lastBytePos = lastBytePos;
        return this;
    }

    @Deprecated
    public MediaHttpDownloader setContentRange(long firstBytePos, int lastBytePos) {
        return setContentRange(firstBytePos, lastBytePos);
    }

    private void setMediaContentLength(String rangeHeader) {
        if (rangeHeader != null && this.mediaContentLength == 0) {
            this.mediaContentLength = Long.parseLong(rangeHeader.substring(rangeHeader.indexOf(47) + 1));
        }
    }

    public boolean isDirectDownloadEnabled() {
        return this.directDownloadEnabled;
    }

    public MediaHttpDownloader setDirectDownloadEnabled(boolean directDownloadEnabled) {
        this.directDownloadEnabled = directDownloadEnabled;
        return this;
    }

    public MediaHttpDownloader setProgressListener(MediaHttpDownloaderProgressListener progressListener) {
        this.progressListener = progressListener;
        return this;
    }

    public MediaHttpDownloaderProgressListener getProgressListener() {
        return this.progressListener;
    }

    public HttpTransport getTransport() {
        return this.transport;
    }

    public MediaHttpDownloader setChunkSize(int chunkSize) {
        Preconditions.checkArgument(chunkSize > 0 && chunkSize <= 33554432);
        this.chunkSize = chunkSize;
        return this;
    }

    public int getChunkSize() {
        return this.chunkSize;
    }

    public long getNumBytesDownloaded() {
        return this.bytesDownloaded;
    }

    public long getLastBytePosition() {
        return this.lastBytePos;
    }

    private void updateStateAndNotifyListener(DownloadState downloadState) throws IOException {
        this.downloadState = downloadState;
        if (this.progressListener != null) {
            this.progressListener.progressChanged(this);
        }
    }

    public DownloadState getDownloadState() {
        return this.downloadState;
    }

    public double getProgress() {
        if (this.mediaContentLength == 0) {
            return 0.0d;
        }
        double d = this.bytesDownloaded;
        double d2 = this.mediaContentLength;
        Double.isNaN(d);
        Double.isNaN(d2);
        return d / d2;
    }
}
