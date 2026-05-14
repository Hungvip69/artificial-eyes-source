package com.google.appinventor.components.annotations;

import com.google.appinventor.components.annotations.androidmanifest.ReceiverElement;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
@Target({ElementType.TYPE, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface UsesBroadcastReceivers {
    ReceiverElement[] receivers();
}
