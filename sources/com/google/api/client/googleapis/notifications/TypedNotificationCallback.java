package com.google.api.client.googleapis.notifications;

import com.google.api.client.http.HttpMediaType;
import com.google.api.client.util.ObjectParser;
import com.google.api.client.util.Preconditions;
import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TypedNotificationCallback<T> implements UnparsedNotificationCallback {
    private static final long serialVersionUID = 1;

    protected abstract Class<T> getDataClass() throws IOException;

    protected abstract ObjectParser getObjectParser() throws IOException;

    protected abstract void onNotification(StoredChannel storedChannel, TypedNotification<T> typedNotification) throws IOException;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.api.client.googleapis.notifications.UnparsedNotificationCallback
    public final void onNotification(StoredChannel storedChannel, UnparsedNotification notification) throws IOException {
        TypedNotification typedNotification = new TypedNotification(notification);
        String contentType = notification.getContentType();
        if (contentType != null) {
            Charset charset = new HttpMediaType(contentType).getCharsetParameter();
            Class<T> dataClass = (Class) Preconditions.checkNotNull(getDataClass());
            typedNotification.setContent(getObjectParser().parseAndClose(notification.getContentStream(), charset, (Class) dataClass));
        }
        onNotification(storedChannel, typedNotification);
    }
}
