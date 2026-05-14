.class Lcom/google/appinventor/components/runtime/util/EclairUtil$1;
.super Landroid/webkit/WebChromeClient;
.source "EclairUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/EclairUtil;->setupWebViewGeoLoc(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/WebView;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private askedPermission:Z

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$caller:Lcom/google/appinventor/components/runtime/WebViewer;


# direct methods
.method static bridge synthetic -$$Nest$fgetaskedPermission(Lcom/google/appinventor/components/runtime/util/EclairUtil$1;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->askedPermission:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputaskedPermission(Lcom/google/appinventor/components/runtime/util/EclairUtil$1;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->askedPermission:Z

    return-void
.end method

.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/app/Activity;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->val$caller:Lcom/google/appinventor/components/runtime/WebViewer;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 64
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->askedPermission:Z

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->val$caller:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/WebViewer;->PromptforPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x1

    invoke-interface {p2, p1, v0, v0}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 71
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->val$activity:Landroid/app/Activity;

    const-string v1, "location"

    invoke-static {v0, p1, v1, p2}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->-$$Nest$smshowPermissionDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 74
    return-void
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 10
    .param p1, "request"    # Landroid/webkit/PermissionRequest;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "permissionsNeeded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 80
    .local v5, "resource":Ljava/lang/String;
    const-string v6, "android.webkit.resource.VIDEO_CAPTURE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->val$caller:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/WebViewer;->UsesCamera()Z

    move-result v6

    if-nez v6, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    .line 84
    return-void

    .line 86
    :cond_0
    const-string v6, "android.permission.CAMERA"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    :cond_1
    const-string v6, "android.webkit.resource.AUDIO_CAPTURE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 88
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->val$caller:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/WebViewer;->UsesMicrophone()Z

    move-result v6

    if-nez v6, :cond_2

    .line 90
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    .line 91
    return-void

    .line 93
    :cond_2
    const-string v6, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v5    # "resource":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 96
    .restart local v5    # "resource":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    .line 97
    return-void

    .line 101
    .end local v5    # "resource":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->val$activity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/google/appinventor/components/runtime/Form;

    if-eqz v1, :cond_5

    .line 102
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->val$activity:Landroid/app/Activity;

    check-cast v1, Lcom/google/appinventor/components/runtime/Form;

    .line 103
    .local v1, "form":Lcom/google/appinventor/components/runtime/Form;
    new-instance v2, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->val$caller:Lcom/google/appinventor/components/runtime/WebViewer;

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, [Ljava/lang/String;

    const-string v7, "WebView Permission Request"

    move-object v4, v2

    move-object v5, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;-><init>(Lcom/google/appinventor/components/runtime/util/EclairUtil$1;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;Landroid/webkit/PermissionRequest;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 129
    .end local v1    # "form":Lcom/google/appinventor/components/runtime/Form;
    goto :goto_2

    .line 131
    :cond_5
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->deny()V

    .line 133
    :goto_2
    return-void
.end method
