package com.google.appinventor.components.common;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public enum LayoutType implements OptionList<Integer> {
    MainText(0),
    MainText_DetailText_Vertical(1),
    MainText_DetailText_Horizontal(2),
    Image_MainText(3),
    Image_MainText_DetailText_Vertical(4),
    ImageTop_MainText_DetailText(5);

    private static final Map<Integer, LayoutType> lookup = new HashMap();
    private final int layout;

    static {
        for (LayoutType value : values()) {
            lookup.put(value.toUnderlyingValue(), value);
        }
    }

    LayoutType(int value) {
        this.layout = value;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.appinventor.components.common.OptionList
    public Integer toUnderlyingValue() {
        return Integer.valueOf(this.layout);
    }

    public static LayoutType fromUnderlyingValue(Integer value) {
        return lookup.get(value);
    }
}
