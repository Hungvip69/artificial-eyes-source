package com.google.appinventor.components.annotations.androidmanifest;

/* JADX INFO: loaded from: classes.dex */
public @interface IntentFilterElement {
    ActionElement[] actionElements();

    CategoryElement[] categoryElements() default {};

    DataElement[] dataElements() default {};

    String icon() default "";

    String label() default "";

    String order() default "";

    String priority() default "";
}
