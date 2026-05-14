package com.google.appinventor.components.runtime.util;

import android.util.Log;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.ReplForm;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes.dex */
public class ProjectManager {
    private static String projectId;
    private static String projectName;
    private static Form form = ReplForm.getActiveForm();
    private static String preamble = "(begin (require <com.google.youngandroid.runtime>) (process-repl-input -2 (begin (clear-current-form) ";
    private static String preamble1 = "(begin (require <com.google.youngandroid.runtime>) (process-repl-input -2 (begin  ";
    private static String postamble = "(call-Initialize-of-components-library))))";
    private static final String LOG_TAG = ProjectManager.class.getSimpleName();
    private static String previousScreen = "";

    private ProjectManager() {
    }

    public static void setProjectInfo(String projectId2, String projectName2) {
        projectId = projectId2;
        projectName = projectName2;
    }

    public static void evalScreenYail(String screenName) {
        String yail;
        try {
            File projectsDir = form.getApplicationContext().getExternalFilesDir("assets/__projects__");
            File projectFile = new File(projectsDir, projectName);
            ZipFile zipFile = new ZipFile(projectFile);
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                ZipEntry entry = entries.nextElement();
                String entryName = entry.getName();
                if (entryName.endsWith(screenName + ".yail")) {
                    InputStream input = zipFile.getInputStream(entry);
                    String yail2 = convertInputStreamToString(input);
                    int index = yail2.indexOf("(require <com.google.youngandroid.runtime>)");
                    int index1 = yail2.indexOf(";;; ");
                    String init_yail = yail2.substring(index + 43, index1);
                    String yail3 = yail2.substring(index1);
                    if (screenName.equals("Screen1")) {
                        yail = preamble1 + "(clear-current-form) (set-form-name \"" + screenName + "\") (clear-init-thunks) " + yail3 + postamble;
                    } else {
                        yail = preamble1 + "(clear-current-form) (set-form-name \"" + screenName + "\") (rename-component \"Screen1\" \"" + screenName + "\")  (clear-init-thunks) " + yail3 + postamble;
                    }
                    previousScreen = screenName;
                    Log.d(LOG_TAG, "Yail: " + yail);
                    ((ReplForm) form).evalScheme(yail);
                    String init_yail2 = preamble1 + init_yail + postamble;
                    Log.d(LOG_TAG, "Init_Yail: " + init_yail2);
                    ((ReplForm) form).evalScheme(init_yail2);
                }
            }
        } catch (IOException e) {
            Log.e(LOG_TAG, "IOException in evalScreenYail", e);
        }
    }

    public static void loadAssets() {
        File projectsDir;
        try {
            ArrayList<String> extensions = new ArrayList<>();
            File projectsDir2 = form.getApplicationContext().getExternalFilesDir("assets/__projects__");
            File projectFile = new File(projectsDir2, projectName);
            ZipFile zipFile = new ZipFile(projectFile);
            Form form2 = Form.getActiveForm();
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                ZipEntry entry = entries.nextElement();
                String entryName = entry.getName();
                if (!entryName.startsWith(PropertyTypeConstants.PROPERTY_TYPE_ASSET)) {
                    projectsDir = projectsDir2;
                } else {
                    Log.d(LOG_TAG, "loadAssets: assetName = " + entryName);
                    byte[] buffer = new byte[10240];
                    ByteArrayOutputStream array = new ByteArrayOutputStream();
                    InputStream inputStream = zipFile.getInputStream(entry);
                    while (true) {
                        int length = inputStream.read(buffer);
                        if (length == -1) {
                            break;
                        } else {
                            array.write(buffer, 0, length);
                        }
                    }
                    AssetFetcher.UpdateLibraryAsset(entryName, array.toByteArray());
                    if (entryName.endsWith("extension.properties")) {
                        Log.d(LOG_TAG, "Found Extension: " + entryName);
                        String extensionName = getSegmentBySlash(entryName, -2);
                        projectsDir = projectsDir2;
                        Log.d(LOG_TAG, "Found Extension (truncated): " + extensionName);
                        if (extensionName != null) {
                            Log.d(LOG_TAG, "Adding extension: " + extensionName);
                            extensions.add(extensionName);
                        }
                    } else {
                        projectsDir = projectsDir2;
                    }
                }
                projectsDir2 = projectsDir;
            }
            if (!extensions.isEmpty()) {
                ((ReplForm) form2).loadComponents(extensions);
            }
        } catch (Exception e) {
            Log.e(LOG_TAG, "Exception in loadAssets", e);
        }
    }

    public static void deleteProject(String projectName2) {
        File projectsDir = form.getApplicationContext().getExternalFilesDir("assets/__projects__");
        File projectFile = new File(projectsDir, projectName2);
        projectFile.delete();
    }

    private static String convertInputStreamToString(InputStream inputStream) throws IOException {
        ByteArrayOutputStream result = new ByteArrayOutputStream();
        byte[] buffer = new byte[1024];
        while (true) {
            int length = inputStream.read(buffer);
            if (length != -1) {
                result.write(buffer, 0, length);
            } else {
                return result.toString(StandardCharsets.UTF_8.name());
            }
        }
    }

    public static String getSegmentBySlash(String input, int index) {
        if (input == null || input.isEmpty()) {
            return null;
        }
        String[] parts = input.split("/");
        if (index < 0) {
            index += parts.length;
        }
        if (index < 0 || index >= parts.length) {
            return null;
        }
        return parts[index];
    }
}
