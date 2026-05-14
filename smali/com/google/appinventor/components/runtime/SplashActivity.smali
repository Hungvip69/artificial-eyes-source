.class public final Lcom/google/appinventor/components/runtime/SplashActivity;
.super Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;
    }
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 95
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    new-instance v0, Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;

    invoke-direct {v0, p0, p0}, Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;-><init>(Lcom/google/appinventor/components/runtime/SplashActivity;Landroid/content/Context;)V

    .line 97
    .local v0, "android":Lcom/google/appinventor/components/runtime/SplashActivity$JavaInterface;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SplashActivity;->handler:Landroid/os/Handler;

    .line 98
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/SplashActivity;->webview:Landroid/webkit/WebView;

    .line 99
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SplashActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 100
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 101
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 102
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "database"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "databasePath":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SplashActivity;->webview:Landroid/webkit/WebView;

    new-instance v4, Lcom/google/appinventor/components/runtime/SplashActivity$1;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/SplashActivity$1;-><init>(Lcom/google/appinventor/components/runtime/SplashActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 132
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SplashActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/SplashActivity;->setContentView(Landroid/view/View;)V

    .line 137
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SplashActivity;->webview:Landroid/webkit/WebView;

    const-string v4, "Android"

    invoke-virtual {v3, v0, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SplashActivity;->webview:Landroid/webkit/WebView;

    const-string v4, "file:///android_asset/splash.html"

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 145
    aget-object v1, p2, v0

    .line 146
    .local v1, "permission":Ljava/lang/String;
    aget v2, p3, v0

    .line 147
    .local v2, "grantResult":I
    const/4 v3, 0x0

    .line 148
    .local v3, "granted":Z
    if-nez v2, :cond_0

    .line 149
    const/4 v3, 0x1

    .line 151
    :cond_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/SplashActivity;->webview:Landroid/webkit/WebView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "javascript:permresult(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 144
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "grantResult":I
    .end local v3    # "granted":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
