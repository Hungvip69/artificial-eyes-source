.class public final Lcom/google/appinventor/components/runtime/BluetoothServer;
.super Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;
.source "BluetoothServer.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Bluetooth server component"
    iconName = "images/bluetooth.png"
    nonVisible = true
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.BLUETOOTH",
        "android.permission.BLUETOOTH_ADMIN",
        "android.permission.BLUETOOTH_ADVERTISE"
    }
.end annotation


# static fields
.field private static final SPP_UUID:Ljava/lang/String; = "00001101-0000-1000-8000-00805F9B34FB"


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field private final arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/bluetooth/BluetoothServerSocket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/BluetoothServer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetarBluetoothServerSocket(Lcom/google/appinventor/components/runtime/BluetoothServer;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maccept(Lcom/google/appinventor/components/runtime/BluetoothServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/BluetoothServer;->accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 65
    const-string v0, "BluetoothServer"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->androidUIHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    .line 68
    return-void
.end method

.method private accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uuidString"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/BluetoothServer$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/BluetoothServer$1;-><init>(Lcom/google/appinventor/components/runtime/BluetoothServer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/SUtil;->requestPermissionsForAdvertising(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/BluetoothServer;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x1f5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 100
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x1f6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 106
    return-void

    .line 111
    :cond_2
    :try_start_0
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    .local v0, "uuid":Ljava/util/UUID;
    nop

    .line 120
    :try_start_1
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->secure:Z

    if-nez v2, :cond_3

    .line 122
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p2, v0}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v2

    .local v2, "socket":Landroid/bluetooth/BluetoothServerSocket;
    goto :goto_0

    .line 124
    .end local v2    # "socket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_3
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, p2, v0}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v2

    .line 126
    .restart local v2    # "socket":Landroid/bluetooth/BluetoothServerSocket;
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    .end local v2    # "socket":Landroid/bluetooth/BluetoothServerSocket;
    nop

    .line 133
    new-instance v1, Lcom/google/appinventor/components/runtime/BluetoothServer$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/BluetoothServer$2;-><init>(Lcom/google/appinventor/components/runtime/BluetoothServer;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 176
    return-void

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x1fc

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, p0, p1, v4, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 130
    return-void

    .line 112
    .end local v0    # "uuid":Ljava/util/UUID;
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v1

    const/16 v1, 0x1fa

    invoke-virtual {v2, p0, p1, v1, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 115
    return-void
.end method


# virtual methods
.method public AcceptConnection(Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Accept an incoming connection with the Serial Port Profile (SPP)."
    .end annotation

    .line 76
    const-string v0, "AcceptConnection"

    const-string v1, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/BluetoothServer;->accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public AcceptConnectionWithUUID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Accept an incoming connection with a specific UUID."
    .end annotation

    .line 84
    const-string v0, "AcceptConnectionWithUUID"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothServer;->accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public ConnectionAccepted()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a bluetooth connection has been accepted."
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->logTag:Ljava/lang/String;

    const-string v1, "Successfullly accepted bluetooth connection."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ConnectionAccepted"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public final IsAccepting()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public StopAccepting()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop accepting an incoming connection."
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->arBluetoothServerSocket:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothServerSocket;

    .line 193
    .local v0, "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    if-eqz v0, :cond_0

    .line 195
    :try_start_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothServer;->logTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while closing bluetooth server socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method
