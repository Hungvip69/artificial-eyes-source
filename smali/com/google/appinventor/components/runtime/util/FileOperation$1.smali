.class Lcom/google/appinventor/components/runtime/util/FileOperation$1;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "FileOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/FileOperation;


# direct methods
.method varargs constructor <init>(Lcom/google/appinventor/components/runtime/util/FileOperation;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/FileOperation;
    .param p2, "source"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "permissions"    # [Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGranted()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 106
    return-void
.end method
