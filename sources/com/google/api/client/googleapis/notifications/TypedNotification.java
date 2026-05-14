package com.google.api.client.googleapis.notifications;

/* JADX INFO: loaded from: classes2.dex */
public class TypedNotification<T> extends AbstractNotification {
    private T content;

    public TypedNotification(long messageNumber, String resourceState, String resourceId, String resourceUri, String channelId) {
        super(messageNumber, resourceState, resourceId, resourceUri, channelId);
    }

    public TypedNotification(UnparsedNotification sourceNotification) {
        super(sourceNotification);
    }

    public final T getContent() {
        return this.content;
    }

    public TypedNotification<T> setContent(T content) {
        this.content = content;
        return this;
    }

    @Override // com.google.api.client.googleapis.notifications.AbstractNotification
    public TypedNotification<T> setMessageNumber(long messageNumber) {
        return (TypedNotification) super.setMessageNumber(messageNumber);
    }

    @Override // com.google.api.client.googleapis.notifications.AbstractNotification
    public TypedNotification<T> setResourceState(String resourceState) {
        return (TypedNotification) super.setResourceState(resourceState);
    }

    @Override // com.google.api.client.googleapis.notifications.AbstractNotification
    public TypedNotification<T> setResourceId(String resourceId) {
        return (TypedNotification) super.setResourceId(resourceId);
    }

    @Override // com.google.api.client.googleapis.notifications.AbstractNotification
    public TypedNotification<T> setResourceUri(String resourceUri) {
        return (TypedNotification) super.setResourceUri(resourceUri);
    }

    @Override // com.google.api.client.googleapis.notifications.AbstractNotification
    public TypedNotification<T> setChannelId(String channelId) {
        return (TypedNotification) super.setChannelId(channelId);
    }

    @Override // com.google.api.client.googleapis.notifications.AbstractNotification
    public TypedNotification<T> setChannelExpiration(String channelExpiration) {
        return (TypedNotification) super.setChannelExpiration(channelExpiration);
    }

    @Override // com.google.api.client.googleapis.notifications.AbstractNotification
    public TypedNotification<T> setChannelToken(String channelToken) {
        return (TypedNotification) super.setChannelToken(channelToken);
    }

    @Override // com.google.api.client.googleapis.notifications.AbstractNotification
    public TypedNotification<T> setChanged(String changed) {
        return (TypedNotification) super.setChanged(changed);
    }

    @Override // com.google.api.client.googleapis.notifications.AbstractNotification
    public String toString() {
        return super.toStringHelper().add("content", this.content).toString();
    }
}
