package com.google.appinventor.components.runtime;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebStorage;
import android.webkit.WebView;
import com.google.appinventor.components.runtime.util.ProjectManager;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public final class ProjectsActivity extends AppInventorCompatActivity {
    Handler handler;
    WebView webview;

    public class JavaInterface {
        Context mContext;

        public JavaInterface(Context context) {
            this.mContext = context;
        }

        @JavascriptInterface
        public String listProjects() {
            java.io.File projectsDir = ProjectsActivity.this.getApplicationContext().getExternalFilesDir("assets/__projects__");
            Log.d("ProjectsActivity", "projectsDir = " + projectsDir.getPath());
            String[] files = projectsDir.list();
            JSONArray retval = new JSONArray();
            for (String file : files) {
                retval.put(file);
            }
            return retval.toString();
        }

        @JavascriptInterface
        public void loadProject(String projectName) {
            Form form = Form.getActiveForm();
            ((ReplForm) form).setInAppLibrary();
            ProjectManager.setProjectInfo(Component.TYPEFACE_DEFAULT, projectName);
            ProjectManager.loadAssets();
            ProjectManager.evalScreenYail("Screen1");
            finished();
        }

        @JavascriptInterface
        public void finished() {
            ProjectsActivity.this.handler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.ProjectsActivity.JavaInterface.1
                @Override // java.lang.Runnable
                public void run() {
                    ProjectsActivity.this.webview.destroy();
                    ProjectsActivity.this.finish();
                }
            });
        }

        @JavascriptInterface
        public void deleteProject(String projectName) {
            ProjectManager.deleteProject(projectName);
        }
    }

    @Override // com.google.appinventor.components.runtime.AppInventorCompatActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        JavaInterface android2 = new JavaInterface(this);
        this.handler = new Handler();
        this.webview = new WebView(this);
        WebSettings webSettings = this.webview.getSettings();
        webSettings.setJavaScriptEnabled(true);
        webSettings.setDatabaseEnabled(true);
        webSettings.setDomStorageEnabled(true);
        String databasePath = getApplicationContext().getDir("database", 0).getPath();
        webSettings.setDatabasePath(databasePath);
        this.webview.setWebChromeClient(new WebChromeClient() { // from class: com.google.appinventor.components.runtime.ProjectsActivity.1
            @Override // android.webkit.WebChromeClient
            public void onExceededDatabaseQuota(String url, String databaseIdentifier, long currentQuota, long estimatedSize, long totalUsedQuota, WebStorage.QuotaUpdater quotaUpdater) {
                quotaUpdater.updateQuota(5242880L);
            }
        });
        setContentView(this.webview);
        this.webview.addJavascriptInterface(android2, "Android");
        this.webview.loadUrl("file:///android_asset/projects.html");
    }
}
