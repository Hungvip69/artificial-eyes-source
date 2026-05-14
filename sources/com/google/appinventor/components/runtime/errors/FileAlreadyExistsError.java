package com.google.appinventor.components.runtime.errors;

import com.google.appinventor.components.annotations.SimpleObject;

/* JADX INFO: loaded from: classes.dex */
@SimpleObject
public class FileAlreadyExistsError extends RuntimeError {
    public FileAlreadyExistsError(String message) {
        super(message);
    }
}
