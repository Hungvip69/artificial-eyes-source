.class public final Lcom/google/appinventor/components/runtime/BluetoothClient;
.super Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;
.source "BluetoothClient.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/RealTimeDataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Bluetooth client component"
    iconName = "images/bluetooth.png"
    nonVisible = true
    version = 0x8
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.BLUETOOTH",
        "android.permission.BLUETOOTH_ADMIN",
        "android.permission.BLUETOOTH_CONNECT",
        "android.permission.BLUETOOTH_SCAN"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;",
        "Lcom/google/appinventor/components/runtime/RealTimeDataSource<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final RUNTIME_PERMISSIONS:[Ljava/lang/String;

.field private static final SPP_UUID:Ljava/lang/String; = "00001101-0000-1000-8000-00805F9B34FB"


# instance fields
.field private acceptableDeviceClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final attachedComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation
.end field

.field private dataPollService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final dataSourceObservers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private noLocationNeeded:Z

.field private pollingRate:I


# direct methods
.method static bridge synthetic -$$Nest$mconnect(Lcom/google/appinventor/components/runtime/BluetoothClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/BluetoothClient;->RUNTIME_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 93
    const-string v0, "BluetoothClient"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataSourceObservers:Ljava/util/HashSet;

    .line 86
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->pollingRate:I

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->noLocationNeeded:Z

    .line 94
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->DisconnectOnError(Z)V

    .line 95
    return-void
.end method

.method private connect(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->secure:Z

    if-nez v0, :cond_0

    .line 423
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .local v0, "socket":Landroid/bluetooth/BluetoothSocket;
    goto :goto_0

    .line 425
    .end local v0    # "socket":Landroid/bluetooth/BluetoothSocket;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    .line 427
    .restart local v0    # "socket":Landroid/bluetooth/BluetoothSocket;
    :goto_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 428
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->setConnection(Landroid/bluetooth/BluetoothSocket;)V

    .line 429
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->logTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connected to Bluetooth device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void
.end method

.method private connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "uuidString"    # Ljava/lang/String;

    .line 348
    move-object v0, p2

    .line 349
    .local v0, "finalAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/BluetoothClient$2;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/google/appinventor/components/runtime/BluetoothClient$2;-><init>(Lcom/google/appinventor/components/runtime/BluetoothClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p0, p1, v2}, Lcom/google/appinventor/components/runtime/util/SUtil;->requestPermissionsForConnecting(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/BluetoothClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 356
    return v2

    .line 359
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 360
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x1f5

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, p1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 362
    return v2

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 366
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x1f6

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, p1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 368
    return v2

    .line 373
    :cond_2
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 374
    .local v1, "firstSpace":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 375
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 378
    :cond_3
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 379
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x1f7

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, p1, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 381
    return v2

    .line 384
    :cond_4
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 385
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_5

    .line 386
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x1f8

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, p0, p1, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 388
    return v2

    .line 391
    :cond_5
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->isDeviceClassAcceptable(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 392
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x1f9

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, p0, p1, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 394
    return v2

    .line 399
    :cond_6
    const/4 v4, 0x1

    :try_start_0
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 404
    .local v5, "uuid":Ljava/util/UUID;
    nop

    .line 406
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->Disconnect()V

    .line 409
    :try_start_1
    invoke-direct {p0, v3, v5}, Lcom/google/appinventor/components/runtime/BluetoothClient;->connect(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 410
    return v4

    .line 411
    :catch_0
    move-exception v4

    .line 412
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->Disconnect()V

    .line 413
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v7, 0x1fb

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v6, p0, p1, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 415
    return v2

    .line 400
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "uuid":Ljava/util/UUID;
    :catch_1
    move-exception v5

    .line 401
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v2

    const/16 v7, 0x1fa

    invoke-virtual {v6, p0, p1, v7, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 403
    return v2
.end method

.method private isDeviceClassAcceptable(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 297
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x1

    return v0

    .line 302
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 303
    .local v0, "clazz":Landroid/bluetooth/BluetoothClass;
    if-nez v0, :cond_1

    .line 305
    const/4 v1, 0x0

    return v1

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private startBluetoothDataPolling()V
    .locals 8

    .line 443
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataPollService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 446
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataPollService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/google/appinventor/components/runtime/BluetoothClient$3;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient$3;-><init>(Lcom/google/appinventor/components/runtime/BluetoothClient;)V

    iget v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->pollingRate:I

    int-to-long v5, v0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 460
    return-void
.end method


# virtual methods
.method public AddressesAndNames()Ljava/util/List;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The addresses and names of paired Bluetooth devices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    .line 219
    sget-object v0, Lcom/google/appinventor/components/runtime/BluetoothClient;->RUNTIME_PERMISSIONS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 220
    .local v3, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4, v3}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 219
    .end local v3    # "permission":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .restart local v3    # "permission":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/BluetoothClient$1;

    const-string v2, "AddressesAndNames"

    sget-object v4, Lcom/google/appinventor/components/runtime/BluetoothClient;->RUNTIME_PERMISSIONS:[Ljava/lang/String;

    invoke-direct {v1, p0, p0, v2, v4}, Lcom/google/appinventor/components/runtime/BluetoothClient$1;-><init>(Lcom/google/appinventor/components/runtime/BluetoothClient;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 228
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw v0

    .line 233
    .end local v3    # "permission":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v0, "addressesAndNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_2

    .line 236
    return-object v0

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 240
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->isDeviceClassAcceptable(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 241
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    goto :goto_1

    .line 245
    :cond_4
    return-object v0
.end method

.method public Connect(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Connect to the Bluetooth device with the specified address and the Serial Port Profile (SPP). Returns true if the connection was successful."
    .end annotation

    .line 320
    const-string v0, "Connect"

    const-string v1, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public ConnectWithUUID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Connect to the Bluetooth device with the specified address and UUID. Returns true if the connection was successful."
    .end annotation

    .line 333
    const-string v0, "ConnectWithUUID"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public DisconnectOnError(Z)V
    .locals 0
    .param p1, "disconnectOnError"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 118
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->disconnectOnError:Z

    .line 119
    return-void
.end method

.method public DisconnectOnError()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Disconnects BluetoothClient automatically when an error occurs."
    .end annotation

    .line 104
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->disconnectOnError:Z

    return v0
.end method

.method public IsDevicePaired(Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks whether the Bluetooth device with the specified address is paired."
    .end annotation

    .line 168
    const-string v0, "IsDevicePaired"

    .line 169
    .local v0, "functionName":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x1f5

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 172
    return v2

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x1f6

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 178
    return v2

    .line 183
    :cond_1
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 184
    .local v1, "firstSpace":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 185
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 188
    :cond_2
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 189
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x1f7

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v0, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 191
    return v2

    .line 194
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 195
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public NoLocationNeeded(Z)V
    .locals 0
    .param p1, "setting"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        constraints = {
            .subannotation Lcom/google/appinventor/components/annotations/PermissionConstraint;
                name = "android.permission.BLUETOOTH_SCAN"
                usesPermissionFlags = "neverForLocation"
            .end subannotation
        }
    .end annotation

    .line 283
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->noLocationNeeded:Z

    .line 284
    return-void
.end method

.method public NoLocationNeeded()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 288
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->noLocationNeeded:Z

    return v0
.end method

.method public PollingRate()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 268
    iget v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->pollingRate:I

    return v0
.end method

.method public PollingRate(I)V
    .locals 1
    .param p1, "rate"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 258
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->pollingRate:I

    .line 259
    return-void
.end method

.method public declared-synchronized addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    monitor-enter p0

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataPollService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->startBluetoothDataPolling()V

    .line 471
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/BluetoothClient;
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataSourceObservers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    monitor-exit p0

    return-void

    .line 465
    .end local p1    # "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method attachComponent(Lcom/google/appinventor/components/runtime/Component;Ljava/util/Set;)Z
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/Component;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 122
    .local p2, "acceptableDeviceClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    if-nez p2, :cond_0

    .line 125
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    goto :goto_1

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 132
    if-eqz p2, :cond_5

    .line 133
    return v1

    .line 136
    :cond_2
    if-nez p2, :cond_3

    .line 137
    return v1

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 140
    return v1

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 143
    return v1

    .line 148
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method detachComponent(Lcom/google/appinventor/components/runtime/Component;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachedComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->acceptableDeviceClasses:Ljava/util/Set;

    .line 157
    :cond_0
    return-void
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->getDataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDataValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 498
    const-string v0, ""

    .line 501
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->BytesAvailableToReceive()I

    move-result v1

    .line 506
    .local v1, "bytesReceivable":I
    if-lez v1, :cond_0

    .line 508
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->ReceiveText(I)Ljava/lang/String;

    move-result-object v0

    .line 512
    .end local v1    # "bytesReceivable":I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic notifyDataObservers(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 491
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataSourceObservers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 492
    .local v1, "observer":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onReceiveValue(Lcom/google/appinventor/components/runtime/RealTimeDataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 493
    .end local v1    # "observer":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    goto :goto_0

    .line 494
    :cond_0
    return-void
.end method

.method public declared-synchronized removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    monitor-enter p0

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataSourceObservers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 483
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataSourceObservers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataPollService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothClient;->dataPollService:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/BluetoothClient;
    :cond_0
    monitor-exit p0

    return-void

    .line 475
    .end local p1    # "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
