package com.google.api.client.util;

/* JADX INFO: loaded from: classes2.dex */
public final class Preconditions {
    public static void checkArgument(boolean expression) {
        com.google.common.base.Preconditions.checkArgument(expression);
    }

    public static void checkArgument(boolean expression, Object errorMessage) {
        com.google.common.base.Preconditions.checkArgument(expression, errorMessage);
    }

    public static void checkArgument(boolean expression, String errorMessageTemplate, Object... errorMessageArgs) {
        com.google.common.base.Preconditions.checkArgument(expression, errorMessageTemplate, errorMessageArgs);
    }

    public static void checkState(boolean expression) {
        com.google.common.base.Preconditions.checkState(expression);
    }

    public static void checkState(boolean expression, Object errorMessage) {
        com.google.common.base.Preconditions.checkState(expression, errorMessage);
    }

    public static void checkState(boolean expression, String errorMessageTemplate, Object... errorMessageArgs) {
        com.google.common.base.Preconditions.checkState(expression, errorMessageTemplate, errorMessageArgs);
    }

    public static <T> T checkNotNull(T t) {
        return (T) com.google.common.base.Preconditions.checkNotNull(t);
    }

    public static <T> T checkNotNull(T t, Object obj) {
        return (T) com.google.common.base.Preconditions.checkNotNull(t, obj);
    }

    public static <T> T checkNotNull(T t, String str, Object... objArr) {
        return (T) com.google.common.base.Preconditions.checkNotNull((Object) t, str, objArr);
    }

    private Preconditions() {
    }
}
