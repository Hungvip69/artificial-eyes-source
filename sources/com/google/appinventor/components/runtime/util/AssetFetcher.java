package com.google.appinventor.components.runtime.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.Notifier;
import com.google.appinventor.components.runtime.ReplForm;
import com.google.appinventor.components.runtime.errors.YailRuntimeError;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public class AssetFetcher {
    private static Context context = ReplForm.getActiveForm();
    private static HashDatabase db = new HashDatabase(context);
    private static final String LOG_TAG = AssetFetcher.class.getSimpleName();
    private static ExecutorService background = Executors.newSingleThreadExecutor();
    private static volatile boolean inError = false;
    private static final Object semaphore = new Object();

    private AssetFetcher() {
    }

    public static void fetchAssets(final String cookieValue, final String projectId, final String uri, final String asset) {
        background.submit(new Runnable() { // from class: com.google.appinventor.components.runtime.util.AssetFetcher.1
            @Override // java.lang.Runnable
            public void run() {
                String fileName = uri + "/ode/download/file/" + projectId + "/" + asset;
                if (AssetFetcher.getFile(fileName, cookieValue, asset, 0) != null) {
                    RetValManager.assetTransferred(asset);
                }
            }
        });
    }

    public static void fetchCachedProject(final String cookieValue, final String projectId, final String uri, final String projectName) {
        background.submit(new Runnable() { // from class: com.google.appinventor.components.runtime.util.AssetFetcher.2
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                String fileName = uri + "/ode/download/project-cached/" + projectId;
                AssetFetcher.getFile(fileName, cookieValue, "assets/__projects__/" + projectName, 0);
                final Form form = Form.getActiveForm();
                form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.util.AssetFetcher.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        new Notifier(form).ShowAlert("Project " + projectName + " Saved");
                    }
                });
            }
        });
    }

    public static void upgradeCompanion(final String cookieValue, final String inputUri) {
        background.submit(new Runnable() { // from class: com.google.appinventor.components.runtime.util.AssetFetcher.3
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                String[] parts = inputUri.split("/", 0);
                String asset = parts[parts.length - 1];
                File assetFile = AssetFetcher.getFile(inputUri, cookieValue, asset, 0);
                if (assetFile != null) {
                    try {
                        Form form = Form.getActiveForm();
                        Intent intent = new Intent("android.intent.action.VIEW");
                        Uri packageuri = NougatUtil.getPackageUri(form, assetFile);
                        intent.setDataAndType(packageuri, "application/vnd.android.package-archive");
                        intent.setFlags(1);
                        form.startActivity(intent);
                    } catch (Exception e) {
                        Log.e(AssetFetcher.LOG_TAG, "ERROR_UNABLE_TO_GET", e);
                        RetValManager.sendError("Unable to Install new Companion Package.");
                    }
                }
            }
        });
    }

    public static void loadExtensions(String jsonString) {
        Log.d(LOG_TAG, "loadExtensions called jsonString = " + jsonString);
        try {
            ReplForm form = (ReplForm) Form.getActiveForm();
            JSONArray array = new JSONArray(jsonString);
            List<String> extensionsToLoad = new ArrayList<>();
            if (array.length() == 0) {
                Log.d(LOG_TAG, "loadExtensions: No Extensions");
                RetValManager.extensionsLoaded();
                return;
            }
            for (int i = 0; i < array.length(); i++) {
                String extensionName = array.optString(i);
                if (extensionName != null) {
                    Log.d(LOG_TAG, "loadExtensions, extensionName = " + extensionName);
                    extensionsToLoad.add(extensionName);
                } else {
                    Log.e(LOG_TAG, "extensionName was null");
                    return;
                }
            }
            try {
                form.loadComponents(extensionsToLoad);
                RetValManager.extensionsLoaded();
            } catch (Exception e) {
                Log.e(LOG_TAG, "Error in form.loadComponents", e);
                RetValManager.sendError("Unable to load extensions." + e);
            }
        } catch (JSONException e2) {
            Log.e(LOG_TAG, "JSON Exception parsing extension string", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 18, insn: 0x02d5: MOVE (r12 I:??[OBJECT, ARRAY]) = (r18 I:??[OBJECT, ARRAY] A[D('fileHash' java.lang.String)]), block:B:129:0x02d5 */
    /* JADX WARN: Not initialized variable reg: 18, insn: 0x02de: MOVE (r12 I:??[OBJECT, ARRAY]) = (r18 I:??[OBJECT, ARRAY] A[D('fileHash' java.lang.String)]), block:B:131:0x02de */
    /* JADX WARN: Not initialized variable reg: 19, insn: 0x02d7: MOVE (r11 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r19 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('responseCode' int)]), block:B:129:0x02d5 */
    /* JADX WARN: Not initialized variable reg: 19, insn: 0x02e0: MOVE (r11 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r19 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('responseCode' int)]), block:B:131:0x02de */
    /* JADX WARN: Not initialized variable reg: 20, insn: 0x02d9: MOVE (r13 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r20 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('error' boolean)]), block:B:129:0x02d5 */
    /* JADX WARN: Not initialized variable reg: 20, insn: 0x02e2: MOVE (r13 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r20 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY] A[D('error' boolean)]), block:B:131:0x02de */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0248 A[Catch: all -> 0x02d4, Exception -> 0x02dd, TryCatch #16 {Exception -> 0x02dd, all -> 0x02d4, blocks: (B:126:0x02bb, B:127:0x02d3, B:75:0x017d, B:78:0x0195, B:79:0x01b3, B:97:0x01f0, B:100:0x0208, B:108:0x0243, B:110:0x0248, B:112:0x026c, B:113:0x028a, B:116:0x028e), top: B:203:0x011e }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01e3 A[Catch: all -> 0x0230, Exception -> 0x0239, TRY_LEAVE, TryCatch #17 {Exception -> 0x0239, all -> 0x0230, blocks: (B:73:0x0176, B:93:0x01de, B:95:0x01e3), top: B:196:0x015e }] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v27 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r20v12 */
    /* JADX WARN: Type inference failed for: r20v13 */
    /* JADX WARN: Type inference failed for: r20v14 */
    /* JADX WARN: Type inference failed for: r20v15 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.io.File getFile(final java.lang.String r22, java.lang.String r23, java.lang.String r24, int r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 912
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.util.AssetFetcher.getFile(java.lang.String, java.lang.String, java.lang.String, int):java.io.File");
    }

    public static void UpdateLibraryAsset(String assetName, byte[] assetContent) {
        try {
            Form form = Form.getActiveForm();
            File outFile = getDestinationFile(form, assetName);
            File parentOutFile = outFile.getParentFile();
            if (parentOutFile == null || (!parentOutFile.exists() && !parentOutFile.mkdirs())) {
                throw new IOException("Unable to create assets directory " + parentOutFile);
            }
            String destinationFilename = assetName;
            if (assetName.endsWith("/classes.jar")) {
                destinationFilename = assetName.substring(0, assetName.lastIndexOf("/") + 1) + outFile.getName();
            }
            boolean makeReadonly = Build.VERSION.SDK_INT >= 34 && assetName.contains("/external_comps/") && assetName.endsWith("/classes.jar");
            if (!outFile.canWrite()) {
                outFile.setWritable(true);
            }
            BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(outFile), 4096);
            out.write(assetContent, 0, assetContent.length);
            out.flush();
            if (makeReadonly) {
                outFile.setReadOnly();
            }
            HashFile file = db.getHashFile(destinationFilename);
            if (file != null) {
                db.deleteOne(file);
            }
        } catch (Exception e) {
            Log.e(LOG_TAG, "Error Updating Library Assets", e);
        }
    }

    private static File getDestinationFile(Form form, String asset) {
        String filename;
        if (asset.contains("/external_comps/") && Build.VERSION.SDK_INT >= 34) {
            File dest = new File(form.getCacheDir(), asset.substring("assets/".length()));
            File parent = dest.getParentFile();
            if (parent == null) {
                throw new IllegalStateException("Unable to determine parent directory for " + dest);
            }
            if (!parent.exists() && !parent.mkdirs()) {
                throw new YailRuntimeError("Unable to create directory " + parent, "Extensions");
            }
            if (asset.endsWith("/classes.jar")) {
                filename = parent.getName() + ".jar";
            } else {
                String[] parts = asset.split("/");
                filename = parts[parts.length - 1];
            }
            return new File(parent, filename);
        }
        return new File(QUtil.getReplAssetPath(form, true), asset.substring("assets/".length()));
    }

    private static String byteArray2Hex(byte[] hash) {
        Formatter formatter = new Formatter();
        for (byte b : hash) {
            formatter.format("%02x", Byte.valueOf(b));
        }
        return formatter.toString();
    }
}
