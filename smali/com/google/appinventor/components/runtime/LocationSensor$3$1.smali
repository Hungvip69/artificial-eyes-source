.class Lcom/google/appinventor/components/runtime/LocationSensor$3$1;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "LocationSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LocationSensor$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/LocationSensor$3;


# direct methods
.method varargs constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor$3;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/LocationSensor$3;
    .param p2, "source"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "permissions"    # [Ljava/lang/String;

    .line 756
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$3$1;->this$1:Lcom/google/appinventor/components/runtime/LocationSensor$3;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGranted()V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$3$1;->this$1:Lcom/google/appinventor/components/runtime/LocationSensor$3;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LocationSensor$3;->val$me:Lcom/google/appinventor/components/runtime/LocationSensor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/LocationSensor;Z)V

    .line 760
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$3$1;->this$1:Lcom/google/appinventor/components/runtime/LocationSensor$3;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LocationSensor$3;->val$me:Lcom/google/appinventor/components/runtime/LocationSensor;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$3$1;->this$1:Lcom/google/appinventor/components/runtime/LocationSensor$3;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor$3;->val$caller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 761
    invoke-static {}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Permission Granted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    return-void
.end method
