package com.google.appinventor.components.runtime.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.webkit.GeolocationPermissions;
import android.webkit.PermissionRequest;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.EditText;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.WebViewer;
import com.google.common.net.HttpHeaders;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class EclairUtil {
    private EclairUtil() {
    }

    public static void overridePendingTransitions(Activity activity, int enterAnim, int exitAnim) {
        activity.overridePendingTransition(enterAnim, exitAnim);
    }

    public static void setupWebViewGeoLoc(WebViewer caller, WebView webview, Activity activity) {
        webview.getSettings().setGeolocationDatabasePath(activity.getFilesDir().getAbsolutePath());
        webview.getSettings().setDatabaseEnabled(true);
        webview.setWebChromeClient(new AnonymousClass1(caller, activity));
    }

    /* JADX INFO: renamed from: com.google.appinventor.components.runtime.util.EclairUtil$1, reason: invalid class name */
    class AnonymousClass1 extends WebChromeClient {
        private boolean askedPermission = false;
        final /* synthetic */ Activity val$activity;
        final /* synthetic */ WebViewer val$caller;

        AnonymousClass1(WebViewer webViewer, Activity activity) {
            this.val$caller = webViewer;
            this.val$activity = activity;
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(String origin, GeolocationPermissions.Callback callback) {
            if (!this.val$caller.PromptforPermission()) {
                callback.invoke(origin, true, true);
            } else {
                EclairUtil.showPermissionDialog(this.val$activity, origin, "location", callback);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onPermissionRequest(final PermissionRequest request) {
            List<String> permissionsNeeded = new ArrayList<>();
            for (String resource : request.getResources()) {
                if (resource.equals("android.webkit.resource.VIDEO_CAPTURE")) {
                    if (!this.val$caller.UsesCamera()) {
                        request.deny();
                        return;
                    }
                    permissionsNeeded.add("android.permission.CAMERA");
                } else if (resource.equals("android.webkit.resource.AUDIO_CAPTURE")) {
                    if (!this.val$caller.UsesMicrophone()) {
                        request.deny();
                        return;
                    }
                    permissionsNeeded.add("android.permission.RECORD_AUDIO");
                } else {
                    request.deny();
                    return;
                }
            }
            if (this.val$activity instanceof Form) {
                Form form = (Form) this.val$activity;
                form.askPermission(new BulkPermissionRequest(this.val$caller, "WebView Permission Request", (String[]) permissionsNeeded.toArray(new String[0])) { // from class: com.google.appinventor.components.runtime.util.EclairUtil.1.1
                    @Override // com.google.appinventor.components.runtime.util.BulkPermissionRequest
                    public void onGranted() {
                        if (AnonymousClass1.this.val$caller.PromptforPermission() && !AnonymousClass1.this.askedPermission) {
                            EclairUtil.showPermissionDialog(AnonymousClass1.this.val$activity, request.getOrigin().getHost(), "camera and/or microphone", new GeolocationPermissions.Callback() { // from class: com.google.appinventor.components.runtime.util.EclairUtil.1.1.1
                                @Override // android.webkit.GeolocationPermissions.Callback
                                public void invoke(String origin, boolean allow, boolean remember) {
                                    if (allow) {
                                        AnonymousClass1.this.askedPermission = true;
                                        request.grant(request.getResources());
                                    } else {
                                        request.deny();
                                    }
                                }
                            });
                        } else {
                            request.grant(request.getResources());
                        }
                    }

                    @Override // com.google.appinventor.components.runtime.util.BulkPermissionRequest
                    public void onDenied(String[] permissions) {
                        request.deny();
                        super.onDenied(permissions);
                    }
                });
                return;
            }
            request.deny();
        }
    }

    public static void clearWebViewGeoLoc() {
        GeolocationPermissions permissions = GeolocationPermissions.getInstance();
        permissions.clearAll();
    }

    public static String getInstallerPackageName(String pname, Activity form) {
        return form.getPackageManager().getInstallerPackageName(pname);
    }

    public static void disableSuggestions(EditText textview) {
        textview.setInputType(textview.getInputType() | 524288);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void showPermissionDialog(Activity activity, final String origin, String item, final GeolocationPermissions.Callback callback) {
        AlertDialog alertDialog = new AlertDialog.Builder(activity).create();
        alertDialog.setTitle("Permission Request");
        if (origin.equals("file://")) {
            origin = "This Application";
        }
        alertDialog.setMessage(origin + " would like to access your " + item + ".");
        alertDialog.setButton(-1, HttpHeaders.ALLOW, new DialogInterface.OnClickListener() { // from class: com.google.appinventor.components.runtime.util.EclairUtil.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                callback.invoke(origin, true, true);
            }
        });
        alertDialog.setButton(-2, "Refuse", new DialogInterface.OnClickListener() { // from class: com.google.appinventor.components.runtime.util.EclairUtil.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                callback.invoke(origin, false, true);
            }
        });
        alertDialog.show();
    }
}
