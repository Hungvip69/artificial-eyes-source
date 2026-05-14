.class public final Lcom/google/appinventor/components/runtime/WebViewActivity;
.super Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;
.source "WebViewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, "webview":Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 40
    new-instance v1, Lcom/google/appinventor/components/runtime/WebViewActivity$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/WebViewActivity$1;-><init>(Lcom/google/appinventor/components/runtime/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/WebViewActivity;->setContentView(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 60
    .local v1, "uriIntent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 62
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "scheme":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "host":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got intent with URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", scheme="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", host="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WebView"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 68
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v4    # "host":Ljava/lang/String;
    :cond_0
    return-void
.end method
