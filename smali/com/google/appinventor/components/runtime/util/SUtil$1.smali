.class Lcom/google/appinventor/components/runtime/util/SUtil$1;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "SUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/SUtil;->performRequest(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$continuation:Lcom/google/appinventor/components/runtime/PermissionResultHandler;

.field final synthetic val$permsNeeded:Ljava/util/List;


# direct methods
.method varargs constructor <init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;Ljava/util/List;)V
    .locals 0
    .param p1, "source"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "permissions"    # [Ljava/lang/String;

    .line 175
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/SUtil$1;->val$continuation:Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/util/SUtil$1;->val$permsNeeded:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGranted()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/SUtil$1;->val$continuation:Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/SUtil$1;->val$permsNeeded:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/appinventor/components/runtime/PermissionResultHandler;->HandlePermissionResponse(Ljava/lang/String;Z)V

    .line 179
    return-void
.end method
