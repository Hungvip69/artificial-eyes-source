.class Lcom/google/appinventor/components/runtime/BluetoothClient$1;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "BluetoothClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BluetoothClient;->AddressesAndNames()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/BluetoothClient;


# direct methods
.method varargs constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothClient;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/BluetoothClient;
    .param p2, "source"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "permissions"    # [Ljava/lang/String;

    .line 222
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient$1;->this$0:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGranted()V
    .locals 0

    .line 226
    return-void
.end method
