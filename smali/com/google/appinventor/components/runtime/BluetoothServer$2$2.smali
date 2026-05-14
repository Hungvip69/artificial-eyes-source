.class Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;
.super Ljava/lang/Object;
.source "BluetoothServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BluetoothServer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$2;

.field final synthetic val$bluetoothSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothServer$2;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    .line 159
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;->val$bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;->val$bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothServer;->setConnection(Landroid/bluetooth/BluetoothSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    nop

    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothServer;->ConnectionAccepted()V

    .line 171
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothServer;->Disconnect()V

    .line 165
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothServer;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$2;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->val$functionName:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x1fd

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 167
    return-void
.end method
