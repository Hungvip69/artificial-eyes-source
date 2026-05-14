package com.google.appinventor.components.runtime.util;

import android.os.AsyncTask;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public final class MultiThreadUtil {
    private MultiThreadUtil() {
    }

    public static class MultiThreadException extends RuntimeException {
        public static final long serialVersionUID = 0;

        public MultiThreadException(String msg, Throwable cause) {
            super(msg, cause);
        }
    }

    public static void runInNewThread(final YailProcedure procedure, final YailProcedure callback) {
        AsyncTask<Object, Object, Object> task = new AsyncTask<Object, Object, Object>() { // from class: com.google.appinventor.components.runtime.util.MultiThreadUtil.1
            @Override // android.os.AsyncTask
            protected Object doInBackground(Object... args) {
                return procedure.call(new Object[0]);
            }

            @Override // android.os.AsyncTask
            protected void onPostExecute(Object result) {
                callback.call(result);
            }
        };
        try {
            task.execute(new Object[0]);
        } catch (RuntimeException e) {
            if (e.getCause().getCause() != null) {
                Throwable exceptionInProcedure = e.getCause().getCause();
                if (exceptionInProcedure.getClass().getName() == "android.view.ViewRootImpl$CalledFromWrongThreadException") {
                    throw new MultiThreadException("Can not operate views in background task", e);
                }
                throw new MultiThreadException("Multi-Thread Exception:" + exceptionInProcedure.getClass().getName(), e);
            }
            throw new MultiThreadException("Multi-Thread Exception:" + e.getCause().getClass().getName(), e);
        }
    }

    public static void runAfterPeriod(long millis, final YailProcedure procedure) {
        new Handler().postDelayed(new Runnable() { // from class: com.google.appinventor.components.runtime.util.MultiThreadUtil.2
            @Override // java.lang.Runnable
            public void run() {
                procedure.call(new Object[0]);
            }
        }, millis);
    }
}
