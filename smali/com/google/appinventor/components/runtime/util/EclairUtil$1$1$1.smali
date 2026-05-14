.class Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1$1;
.super Ljava/lang/Object;
.source "EclairUtil.java"

# interfaces
.implements Landroid/webkit/GeolocationPermissions$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->onGranted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;

    .line 107
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1$1;->this$1:Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "allow"    # Z
    .param p3, "remember"    # Z

    .line 110
    if-eqz p2, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1$1;->this$1:Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->this$0:Lcom/google/appinventor/components/runtime/util/EclairUtil$1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/EclairUtil$1;->-$$Nest$fputaskedPermission(Lcom/google/appinventor/components/runtime/util/EclairUtil$1;Z)V

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1$1;->this$1:Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->val$request:Landroid/webkit/PermissionRequest;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1$1;->this$1:Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1$1;->this$1:Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/EclairUtil$1$1;->val$request:Landroid/webkit/PermissionRequest;

    invoke-virtual {v0}, Landroid/webkit/PermissionRequest;->deny()V

    .line 116
    :goto_0
    return-void
.end method
