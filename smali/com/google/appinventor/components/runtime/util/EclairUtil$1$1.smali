.class Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "EclairUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/EclairUtil$1;

.field final synthetic val$request:Landroid/webkit/PermissionRequest;


# direct methods
.method varargs constructor <init>(Lcom/google/appinventor/components/runtime/util/EclairUtil$1;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;Landroid/webkit/PermissionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/EclairUtil$1;
    .param p2, "source"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "permissions"    # [Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->this$0:Lcom/google/appinventor/components/runtime/util/EclairUtil$1;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDenied([Ljava/lang/String;)V
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v0}, Landroid/webkit/PermissionRequest;->deny()V

    .line 126
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;->onDenied([Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public onGranted()V
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->this$0:Lcom/google/appinventor/components/runtime/util/EclairUtil$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->val$caller:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/WebViewer;->PromptforPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->this$0:Lcom/google/appinventor/components/runtime/util/EclairUtil$1;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->-$$Nest$fgetaskedPermission(Lcom/google/appinventor/components/runtime/util/EclairUtil$1;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->this$0:Lcom/google/appinventor/components/runtime/util/EclairUtil$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1$1;-><init>(Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;)V

    const-string v3, "camera and/or microphone"

    invoke-static {v0, v1, v3, v2}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->-$$Nest$smshowPermissionDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->val$request:Landroid/webkit/PermissionRequest;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void
.end method
