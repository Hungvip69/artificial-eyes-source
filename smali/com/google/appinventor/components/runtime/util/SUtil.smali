.class public Lcom/google/appinventor/components/runtime/util/SUtil;
.super Ljava/lang/Object;
.source "SUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdapter(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 157
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 158
    .local v0, "manager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    return-object v1

    .line 160
    .end local v0    # "manager":Landroid/bluetooth/BluetoothManager;
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    return-object v0
.end method

.method private static performRequest(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 9
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "source"    # Lcom/google/appinventor/components/runtime/Component;
    .param p2, "caller"    # Ljava/lang/String;
    .param p4, "continuation"    # Lcom/google/appinventor/components/runtime/PermissionResultHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/Form;",
            "Lcom/google/appinventor/components/runtime/Component;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/appinventor/components/runtime/PermissionResultHandler;",
            ")Z"
        }
    .end annotation

    .line 166
    .local p3, "permsNeeded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 167
    .local v0, "ready":Z
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 168
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 170
    goto :goto_1

    .line 172
    .end local v2    # "permission":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 173
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 174
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 175
    .local v1, "permissions":[Ljava/lang/String;
    new-instance v8, Lcom/google/appinventor/components/runtime/util/SUtil$1;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/util/SUtil$1;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;Ljava/util/List;)V

    invoke-virtual {p0, v8}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 182
    .end local v1    # "permissions":[Ljava/lang/String;
    :cond_2
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public static requestPermissionsForAdvertising(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/BluetoothServer;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 1
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "server"    # Lcom/google/appinventor/components/runtime/BluetoothServer;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "continuation"    # Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    .line 106
    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/SUtil;->requestPermissionsForS(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result v0

    return v0
.end method

.method public static requestPermissionsForConnecting(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/BluetoothClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 1
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "client"    # Lcom/google/appinventor/components/runtime/BluetoothClient;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "continuation"    # Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    .line 88
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/SUtil;->requestPermissionsForS(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result v0

    return v0
.end method

.method public static requestPermissionsForS(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 2
    .param p0, "sdk31Permission"    # Ljava/lang/String;
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "source"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "continuation"    # Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/SUtil;->requestPermissionsForS([Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result v0

    return v0
.end method

.method public static requestPermissionsForS([Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 3
    .param p0, "sdk31Permissions"    # [Ljava/lang/String;
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "source"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "continuation"    # Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v0, "permsNeeded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    .line 141
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_0
    const-string v1, "android.permission.BLUETOOTH"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :goto_0
    invoke-static {p1, p2, p3, v0, p4}, Lcom/google/appinventor/components/runtime/util/SUtil;->performRequest(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result v1

    return v1
.end method

.method public static requestPermissionsForScanning(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/BluetoothClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z
    .locals 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "client"    # Lcom/google/appinventor/components/runtime/BluetoothClient;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "continuation"    # Lcom/google/appinventor/components/runtime/PermissionResultHandler;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v0, "permsNeeded":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    .line 61
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    const-string v1, "android.permission.BLUETOOTH"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->NoLocationNeeded()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Form;->doesAppDeclarePermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1
    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/appinventor/components/runtime/util/SUtil;->performRequest(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result v1

    return v1
.end method
