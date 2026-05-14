package androidx.appcompat.widget;

import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import androidx.appcompat.graphics.drawable.DrawableWrapper;
import androidx.core.graphics.drawable.WrappedDrawable;

/* JADX INFO: loaded from: classes.dex */
public class DrawableUtils {
    public static final Rect INSETS_NONE = new Rect();
    private static final String TAG = "DrawableUtils";
    private static final String VECTOR_DRAWABLE_CLAZZ_NAME = "android.graphics.drawable.VectorDrawable";
    private static Class<?> sInsetsClazz;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                sInsetsClazz = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException e) {
            }
        }
    }

    private DrawableUtils() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Rect getOpticalBounds(android.graphics.drawable.Drawable r10) {
        /*
            java.lang.Class<?> r0 = androidx.appcompat.widget.DrawableUtils.sInsetsClazz
            if (r0 == 0) goto L91
            android.graphics.drawable.Drawable r0 = androidx.core.graphics.drawable.DrawableCompat.unwrap(r10)     // Catch: java.lang.Exception -> L89
            r10 = r0
            java.lang.Class r0 = r10.getClass()     // Catch: java.lang.Exception -> L89
            java.lang.String r1 = "getOpticalInsets"
            r2 = 0
            java.lang.Class[] r3 = new java.lang.Class[r2]     // Catch: java.lang.Exception -> L89
            java.lang.reflect.Method r0 = r0.getMethod(r1, r3)     // Catch: java.lang.Exception -> L89
            java.lang.Object[] r1 = new java.lang.Object[r2]     // Catch: java.lang.Exception -> L89
            java.lang.Object r1 = r0.invoke(r10, r1)     // Catch: java.lang.Exception -> L89
            if (r1 == 0) goto L88
            android.graphics.Rect r3 = new android.graphics.Rect     // Catch: java.lang.Exception -> L89
            r3.<init>()     // Catch: java.lang.Exception -> L89
            java.lang.Class<?> r4 = androidx.appcompat.widget.DrawableUtils.sInsetsClazz     // Catch: java.lang.Exception -> L89
            java.lang.reflect.Field[] r4 = r4.getFields()     // Catch: java.lang.Exception -> L89
            int r5 = r4.length     // Catch: java.lang.Exception -> L89
            r6 = 0
        L2b:
            if (r6 >= r5) goto L87
            r7 = r4[r6]     // Catch: java.lang.Exception -> L89
            java.lang.String r8 = r7.getName()     // Catch: java.lang.Exception -> L89
            int r9 = r8.hashCode()     // Catch: java.lang.Exception -> L89
            switch(r9) {
                case -1383228885: goto L59;
                case 115029: goto L4f;
                case 3317767: goto L45;
                case 108511772: goto L3b;
                default: goto L3a;
            }     // Catch: java.lang.Exception -> L89
        L3a:
            goto L63
        L3b:
            java.lang.String r9 = "right"
            boolean r8 = r8.equals(r9)     // Catch: java.lang.Exception -> L89
            if (r8 == 0) goto L3a
            r8 = 2
            goto L64
        L45:
            java.lang.String r9 = "left"
            boolean r8 = r8.equals(r9)     // Catch: java.lang.Exception -> L89
            if (r8 == 0) goto L3a
            r8 = 0
            goto L64
        L4f:
            java.lang.String r9 = "top"
            boolean r8 = r8.equals(r9)     // Catch: java.lang.Exception -> L89
            if (r8 == 0) goto L3a
            r8 = 1
            goto L64
        L59:
            java.lang.String r9 = "bottom"
            boolean r8 = r8.equals(r9)     // Catch: java.lang.Exception -> L89
            if (r8 == 0) goto L3a
            r8 = 3
            goto L64
        L63:
            r8 = -1
        L64:
            switch(r8) {
                case 0: goto L7d;
                case 1: goto L76;
                case 2: goto L6f;
                case 3: goto L68;
                default: goto L67;
            }     // Catch: java.lang.Exception -> L89
        L67:
            goto L84
        L68:
            int r8 = r7.getInt(r1)     // Catch: java.lang.Exception -> L89
            r3.bottom = r8     // Catch: java.lang.Exception -> L89
            goto L84
        L6f:
            int r8 = r7.getInt(r1)     // Catch: java.lang.Exception -> L89
            r3.right = r8     // Catch: java.lang.Exception -> L89
            goto L84
        L76:
            int r8 = r7.getInt(r1)     // Catch: java.lang.Exception -> L89
            r3.top = r8     // Catch: java.lang.Exception -> L89
            goto L84
        L7d:
            int r8 = r7.getInt(r1)     // Catch: java.lang.Exception -> L89
            r3.left = r8     // Catch: java.lang.Exception -> L89
        L84:
            int r6 = r6 + 1
            goto L2b
        L87:
            return r3
        L88:
            goto L91
        L89:
            r0 = move-exception
            java.lang.String r1 = "DrawableUtils"
            java.lang.String r2 = "Couldn't obtain the optical insets. Ignoring."
            android.util.Log.e(r1, r2)
        L91:
            android.graphics.Rect r0 = androidx.appcompat.widget.DrawableUtils.INSETS_NONE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.DrawableUtils.getOpticalBounds(android.graphics.drawable.Drawable):android.graphics.Rect");
    }

    static void fixDrawable(Drawable drawable) {
        if (Build.VERSION.SDK_INT == 21 && VECTOR_DRAWABLE_CLAZZ_NAME.equals(drawable.getClass().getName())) {
            fixVectorDrawableTinting(drawable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean canSafelyMutateDrawable(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof InsetDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof GradientDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 17 && (drawable instanceof LayerDrawable)) {
            return false;
        }
        if (!(drawable instanceof DrawableContainer)) {
            if (drawable instanceof WrappedDrawable) {
                return canSafelyMutateDrawable(((WrappedDrawable) drawable).getWrappedDrawable());
            }
            if (drawable instanceof DrawableWrapper) {
                return canSafelyMutateDrawable(((DrawableWrapper) drawable).getWrappedDrawable());
            }
            if (drawable instanceof ScaleDrawable) {
                return canSafelyMutateDrawable(((ScaleDrawable) drawable).getDrawable());
            }
            return true;
        }
        Drawable.ConstantState state = drawable.getConstantState();
        if (state instanceof DrawableContainer.DrawableContainerState) {
            DrawableContainer.DrawableContainerState containerState = (DrawableContainer.DrawableContainerState) state;
            for (Drawable child : containerState.getChildren()) {
                if (!canSafelyMutateDrawable(child)) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    private static void fixVectorDrawableTinting(Drawable drawable) {
        int[] originalState = drawable.getState();
        if (originalState == null || originalState.length == 0) {
            drawable.setState(ThemeUtils.CHECKED_STATE_SET);
        } else {
            drawable.setState(ThemeUtils.EMPTY_STATE_SET);
        }
        drawable.setState(originalState);
    }

    public static PorterDuff.Mode parseTintMode(int value, PorterDuff.Mode defaultMode) {
        switch (value) {
            case 3:
                return PorterDuff.Mode.SRC_OVER;
            case 5:
                return PorterDuff.Mode.SRC_IN;
            case 9:
                return PorterDuff.Mode.SRC_ATOP;
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return defaultMode;
        }
    }
}
