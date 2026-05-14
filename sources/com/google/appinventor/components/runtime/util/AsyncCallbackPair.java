package com.google.appinventor.components.runtime.util;

/* JADX INFO: loaded from: classes.dex */
public interface AsyncCallbackPair<T> {
    void onFailure(String str);

    void onSuccess(T t);
}
