.class public Lcom/google/appinventor/components/runtime/util/EclairUtil;
.super Ljava/lang/Object;
.source "EclairUtil.java"


# direct methods
.method static bridge synthetic -$$Nest$smshowPermissionDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->showPermissionDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static clearWebViewGeoLoc()V
    .locals 1

    .line 147
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    .line 148
    .local v0, "permissions":Landroid/webkit/GeolocationPermissions;
    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 149
    return-void
.end method

.method public static disableSuggestions(Landroid/widget/EditText;)V
    .locals 2
    .param p0, "textview"    # Landroid/widget/EditText;

    .line 164
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 165
    return-void
.end method

.method public static getInstallerPackageName(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "pname"    # Ljava/lang/String;
    .param p1, "form"    # Landroid/app/Activity;

    .line 152
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static overridePendingTransitions(Landroid/app/Activity;II)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "enterAnim"    # I
    .param p2, "exitAnim"    # I

    .line 49
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 50
    return-void
.end method

.method public static setupWebViewGeoLoc(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/WebView;Landroid/app/Activity;)V
    .locals 2
    .param p0, "caller"    # Lcom/google/appinventor/components/runtime/WebViewer;
    .param p1, "webview"    # Landroid/webkit/WebView;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 61
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 63
    new-instance v0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;

    invoke-direct {v0, p0, p2}, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 135
    return-void
.end method

.method private static showPermissionDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "item"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .line 169
    move-object v0, p1

    .line 170
    .local v0, "theOrigin":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 171
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    const-string v2, "Permission Request"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 172
    const-string v2, "file://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    const-string p1, "This Application"

    .line 174
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " would like to access your "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 175
    new-instance v2, Lcom/google/appinventor/components/runtime/util/EclairUtil$2;

    invoke-direct {v2, p3, v0}, Lcom/google/appinventor/components/runtime/util/EclairUtil$2;-><init>(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    const/4 v3, -0x1

    const-string v4, "Allow"

    invoke-virtual {v1, v3, v4, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 181
    new-instance v2, Lcom/google/appinventor/components/runtime/util/EclairUtil$3;

    invoke-direct {v2, p3, v0}, Lcom/google/appinventor/components/runtime/util/EclairUtil$3;-><init>(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    const/4 v3, -0x2

    const-string v4, "Refuse"

    invoke-virtual {v1, v3, v4, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 187
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 188
    return-void
.end method
