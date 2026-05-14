.class Lcom/google/appinventor/components/runtime/Form$15;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$form:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$permission:Ljava/lang/String;

.field final synthetic val$responseRequestor:Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Form;

    .line 2917
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$15;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Form$15;->val$permission:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Form$15;->val$responseRequestor:Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Form$15;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2920
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$15;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetpermissionRandom(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Random;

    move-result-object v0

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 2921
    .local v0, "nonce":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$15;->val$permission:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "askPermission: permission = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Form"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$15;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->-$$Nest$fgetpermissionHandlers(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form$15;->val$responseRequestor:Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2924
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$15;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$15;->val$permission:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 2926
    return-void
.end method
