package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.SimpleObject;

/* JADX INFO: loaded from: classes.dex */
@SimpleObject
public abstract class AndroidNonvisibleComponent implements Component {
    protected String componentName;
    protected final Form form;

    protected AndroidNonvisibleComponent(Form form) {
        this.form = form;
    }

    @Override // com.google.appinventor.components.runtime.Component
    public HandlesEventDispatching getDispatchDelegate() {
        return this.form;
    }

    @Override // com.google.appinventor.components.runtime.Component
    public void setComponentName(String componentName) {
        this.componentName = componentName;
    }
}
