package com.google.api.client.googleapis.notifications;

import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class UnparsedNotification extends AbstractNotification {
    private InputStream contentStream;
    private String contentType;

    public UnparsedNotification(long messageNumber, String resourceState, String resourceId, String resourceUri, String channelId) {
        super(messageNumber, resourceState, resourceId, resourceUri, channelId);
    }

    public final String getContentType() {
        return this.contentType;
    }

    public UnparsedNotification setContentType(String contentType) {
        this.contentType = contentType;
        return this;
    }

    public final InputStream getContentStream() {
        return this.contentStream;
    }

    public UnparsedNotification setContentStream(InputStream contentStream) {
        this.contentStream = contentStream;
        return this;
    }

    @Override // com.google.api.client.googleapis.notifications.AbstractNotification
    public UnparsedNotification setMessageNumber(long messageNumber) {
        return (UnparsedNotification) super.setMessageNumber(messageNumber);
    }

    @Override // com.google.api.client.googleapis.notifications.AbstractNotification
    public UnparsedNotification setResourceState(String resourceState) {
        return (UnparsedNotification) super.setResourceState(resourceState);
    }

    @Override // com.google.api.client.googleapis.notifications.AbstractNotification
    public UnparsedNotification setResourceId(String resourceId) {
        return (UnparsedNotification) super.setResourceId(resourceId);
    }

    @Override // com.google.api.client.googleapis.notifications.AbstractNotification
    public UnparsedNotification setResourceUri(String resourceUri) {
        return (UnparsedNotification) super.setResourceUri(resourceUri);
    }

    @Override // com.google.api.client.googleapis.notifications.AbstractNotification
    public UnparsedNotification setChannelId(String channelId) {
        return (UnparsedNotification) super.setChannelId(channelId);
    }

    @Override // com.google.api.client.googleapis.notifications.AbstractNotification
    public UnparsedNotification setChannelExpiration(String channelExpiration) {
        return (UnparsedNotification) super.setChannelExpiration(channelExpiration);
    }

    @Override // com.google.api.client.googleapis.notifications.AbstractNotification
    public UnparsedNotification setChannelToken(String channelToken) {
        return (UnparsedNotification) super.setChannelToken(channelToken);
    }

    @Override // com.google.api.client.googleapis.notifications.AbstractNotification
    public UnparsedNotification setChanged(String changed) {
        return (UnparsedNotification) super.setChanged(changed);
    }

    @Override // com.google.api.client.googleapis.notifications.AbstractNotification
    public String toString() {
        return super.toStringHelper().add("contentType", this.contentType).toString();
    }
}
