package com.google.appinventor.components.runtime.errors;

import com.google.appinventor.components.annotations.SimpleObject;

/* JADX INFO: loaded from: classes.dex */
@SimpleObject
public class AssertionFailure extends RuntimeError {
    public AssertionFailure() {
    }

    public AssertionFailure(String msg) {
        super(msg);
    }
}
