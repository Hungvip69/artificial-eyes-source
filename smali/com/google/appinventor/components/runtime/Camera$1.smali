.class Lcom/google/appinventor/components/runtime/Camera$1;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Camera;->TakePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Camera;


# direct methods
.method varargs constructor <init>(Lcom/google/appinventor/components/runtime/Camera;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Camera;
    .param p2, "source"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "permissions"    # [Ljava/lang/String;

    .line 156
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Camera$1;->this$0:Lcom/google/appinventor/components/runtime/Camera;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGranted()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera$1;->this$0:Lcom/google/appinventor/components/runtime/Camera;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Camera;->-$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/Camera;Z)V

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camera$1;->this$0:Lcom/google/appinventor/components/runtime/Camera;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Camera;->TakePicture()V

    .line 161
    return-void
.end method
