.class Lcom/google/appinventor/components/runtime/BluetoothServer$2$1;
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


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BluetoothServer$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    .line 143
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$1;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$1;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/BluetoothServer;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$1;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->this$0:Lcom/google/appinventor/components/runtime/BluetoothServer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer$2$1;->this$1:Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/BluetoothServer$2;->val$functionName:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x1fd

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 147
    return-void
.end method
