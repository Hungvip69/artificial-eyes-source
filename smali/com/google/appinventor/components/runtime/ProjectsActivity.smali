.class public final Lcom/google/appinventor/components/runtime/ProjectsActivity;
.super Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;
.source "ProjectsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;
    }
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 98
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    new-instance v0, Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;

    invoke-direct {v0, p0, p0}, Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;-><init>(Lcom/google/appinventor/components/runtime/ProjectsActivity;Landroid/content/Context;)V

    .line 100
    .local v0, "android":Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ProjectsActivity;->handler:Landroid/os/Handler;

    .line 101
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ProjectsActivity;->webview:Landroid/webkit/WebView;

    .line 102
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ProjectsActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 103
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 104
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 105
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ProjectsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "database"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "databasePath":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ProjectsActivity;->webview:Landroid/webkit/WebView;

    new-instance v4, Lcom/google/appinventor/components/runtime/ProjectsActivity$1;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/ProjectsActivity$1;-><init>(Lcom/google/appinventor/components/runtime/ProjectsActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 117
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ProjectsActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ProjectsActivity;->setContentView(Landroid/view/View;)V

    .line 122
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ProjectsActivity;->webview:Landroid/webkit/WebView;

    const-string v4, "Android"

    invoke-virtual {v3, v0, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ProjectsActivity;->webview:Landroid/webkit/WebView;

    const-string v4, "file:///android_asset/projects.html"

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 124
    return-void
.end method
