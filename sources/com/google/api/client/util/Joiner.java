package com.google.api.client.util;

/* JADX INFO: loaded from: classes2.dex */
public final class Joiner {
    private final com.google.common.base.Joiner wrapped;

    public static Joiner on(char separator) {
        return new Joiner(com.google.common.base.Joiner.on(separator));
    }

    private Joiner(com.google.common.base.Joiner wrapped) {
        this.wrapped = wrapped;
    }

    public final String join(Iterable<?> parts) {
        return this.wrapped.join(parts);
    }
}
