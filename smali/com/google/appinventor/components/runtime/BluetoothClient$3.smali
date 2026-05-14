.class Lcom/google/appinventor/components/runtime/BluetoothClient$3;
.super Ljava/lang/Object;
.source "BluetoothClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BluetoothClient;->startBluetoothDataPolling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/BluetoothClient;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/BluetoothClient;

    .line 446
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient$3;->this$0:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient$3;->this$0:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->getDataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "value":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothClient$3;->this$0:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2, v1, v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 458
    :cond_0
    return-void
.end method
