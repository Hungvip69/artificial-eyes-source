package com.google.appinventor.components.runtime.util;

import android.os.Build;
import com.google.appinventor.components.common.FileScope;
import com.google.appinventor.components.runtime.Form;

/* JADX INFO: loaded from: classes.dex */
public class RUtil {
    public static boolean needsFilePermission(Form form, String path, FileScope fileScope) {
        if (fileScope == null) {
            if (path.startsWith("//")) {
                return false;
            }
            return (path.startsWith("/") || path.startsWith("file:")) && FileUtil.isExternalStorageUri(form, path) && !FileUtil.isAppSpecificExternalUri(form, path);
        }
        switch (fileScope) {
            case App:
                if (Build.VERSION.SDK_INT < 19) {
                }
                break;
            case Asset:
                if (!form.isRepl() || Build.VERSION.SDK_INT >= 19) {
                }
                break;
        }
        return false;
    }
}
