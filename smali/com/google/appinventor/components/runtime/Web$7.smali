.class Lcom/google/appinventor/components/runtime/Web$7;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "Web.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic val$httpVerb:Ljava/lang/String;

.field final synthetic val$me:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$neededPermissions:Ljava/util/List;

.field final synthetic val$postData:[B

.field final synthetic val$postFile:Ljava/lang/String;

.field final synthetic val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;


# direct methods
.method varargs constructor <init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Web;
    .param p2, "source"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "permissions"    # [Ljava/lang/String;

    .line 1215
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$7;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$neededPermissions:Ljava/util/List;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$me:Lcom/google/appinventor/components/runtime/Web;

    iput-object p7, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iput-object p8, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$postData:[B

    iput-object p9, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$postFile:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$httpVerb:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$method:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGranted()V
    .locals 3

    .line 1218
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$neededPermissions:Ljava/util/List;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$me:Lcom/google/appinventor/components/runtime/Web;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Web;->-$$Nest$fputhaveReadPermission(Lcom/google/appinventor/components/runtime/Web;Z)V

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$neededPermissions:Ljava/util/List;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1222
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$7;->val$me:Lcom/google/appinventor/components/runtime/Web;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Web;->-$$Nest$fputhaveWritePermission(Lcom/google/appinventor/components/runtime/Web;Z)V

    .line 1226
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/Web$7$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Web$7$1;-><init>(Lcom/google/appinventor/components/runtime/Web$7;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1232
    return-void
.end method
