package com.google.android.gms.common.images;

import appinventor.ai_quachtanhung124.artificial_eyes.R;

/* JADX INFO: loaded from: classes2.dex */
public final class Size {
    private final int zane;
    private final int zanf;

    public Size(int i, int i2) {
        this.zane = i;
        this.zanf = i2;
    }

    public final int getWidth() {
        return this.zane;
    }

    public final int getHeight() {
        return this.zanf;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Size)) {
            return false;
        }
        Size size = (Size) obj;
        if (this.zane != size.zane || this.zanf != size.zanf) {
            return false;
        }
        return true;
    }

    public final String toString() {
        int i = this.zane;
        return new StringBuilder(23).append(i).append("x").append(this.zanf).toString();
    }

    private static NumberFormatException zah(String str) {
        throw new NumberFormatException(new StringBuilder(String.valueOf(str).length() + 16).append("Invalid Size: \"").append(str).append("\"").toString());
    }

    public static Size parseSize(String str) throws NumberFormatException {
        if (str == null) {
            throw new IllegalArgumentException("string must not be null");
        }
        int iIndexOf = str.indexOf(42);
        if (iIndexOf < 0) {
            iIndexOf = str.indexOf(R.styleable.AppCompatTheme_viewInflaterClass);
        }
        if (iIndexOf < 0) {
            throw zah(str);
        }
        try {
            return new Size(Integer.parseInt(str.substring(0, iIndexOf)), Integer.parseInt(str.substring(iIndexOf + 1)));
        } catch (NumberFormatException e) {
            throw zah(str);
        }
    }

    public final int hashCode() {
        return this.zanf ^ ((this.zane << 16) | (this.zane >>> 16));
    }
}
