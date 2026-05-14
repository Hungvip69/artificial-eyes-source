package com.google.appinventor.components.common;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public enum ListOrientation implements OptionList<Integer> {
    Vertical(0),
    Horizontal(1);

    private static final Map<Integer, ListOrientation> lookup = new HashMap();
    private final int orientation;

    static {
        for (ListOrientation value : values()) {
            lookup.put(value.toUnderlyingValue(), value);
        }
    }

    ListOrientation(int value) {
        this.orientation = value;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return Integer.valueOf(this.orientation);
    }

    public static ListOrientation fromUnderlyingValue(Integer value) {
        return lookup.get(value);
    }

    public static ListOrientation fromUnderlyingValue(String value) {
        return fromUnderlyingValue(Integer.valueOf(Integer.parseInt(value)));
    }
}
