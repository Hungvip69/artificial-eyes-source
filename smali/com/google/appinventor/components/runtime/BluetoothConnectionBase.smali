.class public abstract Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "BluetoothConnectionBase.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field protected final adapter:Landroid/bluetooth/BluetoothAdapter;

.field private final bluetoothConnectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private byteOrder:Ljava/nio/ByteOrder;

.field private delimiter:B

.field protected disconnectOnError:Z

.field private encoding:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field protected final logTag:Ljava/lang/String;

.field private outputStream:Ljava/io/OutputStream;

.field protected secure:Z

.field private socket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "logTag"    # Ljava/lang/String;

    .line 67
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 69
    return-void
.end method

.method private constructor <init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    .locals 2
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "logTag"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    .line 73
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    .line 75
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/SUtil;->getAdapter(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 77
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->HighByteFirst(Z)V

    .line 78
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->CharacterEncoding(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->DelimiterByte(I)V

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Secure(Z)V

    .line 81
    return-void
.end method

.method protected constructor <init>(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .line 87
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0, v0, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;-><init>(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 88
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 89
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 90
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 91
    return-void
.end method

.method private fireAfterConnectEvent()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;

    .line 113
    .local v1, "listener":Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;
    invoke-interface {v1, p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;->afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    .line 114
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;
    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method private fireBeforeDisconnectEvent()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;

    .line 119
    .local v1, "listener":Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;
    invoke-interface {v1, p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;->beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    .line 120
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;
    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method private prepareToDie()V
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    .line 851
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 853
    :cond_0
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether Bluetooth is available on the device"
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public BluetoothError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The BluetoothError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    .line 133
    return-void
.end method

.method public BytesAvailableToReceive()I
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an estimate of the number of bytes that can be received without blocking"
    .end annotation

    .line 560
    const-string v0, "BytesAvailableToReceive"

    .line 561
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 562
    const/16 v1, 0x203

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 564
    return v2

    .line 568
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 569
    :catch_0
    move-exception v1

    .line 570
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO Exception during Getting Receive Availability "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v3, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 574
    :cond_1
    nop

    .line 575
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    .line 574
    const/16 v3, 0x205

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 576
    return v2
.end method

.method public CharacterEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public CharacterEncoding(Ljava/lang/String;)V
    .locals 4
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "UTF-8"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 274
    :try_start_0
    const-string v0, "check"

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 275
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "CharacterEncoding"

    const/16 v3, 0x207

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 280
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-void
.end method

.method public DelimiterByte()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 320
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B

    return v0
.end method

.method public DelimiterByte(I)V
    .locals 6
    .param p1, "number"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 301
    const-string v0, "DelimiterByte"

    .line 302
    .local v0, "functionName":Ljava/lang/String;
    move v1, p1

    .line 303
    .local v1, "n":I
    int-to-byte v2, v1

    .line 304
    .local v2, "b":B
    shr-int/lit8 v1, v1, 0x8

    .line 305
    if-eqz v1, :cond_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 306
    nop

    .line 307
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 306
    const/16 v3, 0x1ff

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 308
    return-void

    .line 310
    :cond_0
    iput-byte v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B

    .line 311
    return-void
.end method

.method public final Disconnect()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Disconnect from the connected Bluetooth device."
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->fireBeforeDisconnectEvent()V

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    const-string v2, "Disconnected from Bluetooth device."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while disconnecting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 187
    :cond_0
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 188
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 189
    return-void
.end method

.method protected DisconnectOnError()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    return v0
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether Bluetooth is enabled"
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->adapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    return v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public HighByteFirst(Z)V
    .locals 1
    .param p1, "highByteFirst"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 262
    if-eqz p1, :cond_0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    .line 263
    return-void
.end method

.method public HighByteFirst()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Initialize()V
    .locals 0

    .line 127
    return-void
.end method

.method public IsConnected()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "On devices with API level 14 (LEVEL_ICE_CREAM_SANDWICH) or higher, this property returned is accurate. But on old devices with API level lower than 14, it may not return the current state of connection(e.g., it might be disconnected but you may not know until you attempt to read/write the socket."
    .end annotation

    .line 200
    nop

    .line 201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ReceiveSigned1ByteNumber()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 1-byte number from the connected Bluetooth device."
    .end annotation

    .line 611
    const-string v0, "ReceiveSigned1ByteNumber"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 612
    .local v0, "bytes":[B
    array-length v2, v0

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    .line 613
    return v3

    .line 616
    :cond_0
    aget-byte v1, v0, v3

    return v1
.end method

.method public ReceiveSigned2ByteNumber()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 2-byte number from the connected Bluetooth device."
    .end annotation

    .line 639
    const-string v0, "ReceiveSigned2ByteNumber"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 640
    .local v0, "bytes":[B
    array-length v2, v0

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    .line 641
    return v3

    .line 644
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    .line 645
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    return v1

    .line 647
    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v4

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    return v1
.end method

.method public ReceiveSigned4ByteNumber()J
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a signed 4-byte number from the connected Bluetooth device."
    .end annotation

    .line 675
    const-string v0, "ReceiveSigned4ByteNumber"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 676
    .local v0, "bytes":[B
    array-length v2, v0

    if-eq v2, v1, :cond_0

    .line 677
    const-wide/16 v1, 0x0

    return-wide v1

    .line 680
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_1

    .line 681
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, v0, v6

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    int-to-long v1, v1

    return-wide v1

    .line 686
    :cond_1
    aget-byte v1, v0, v6

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    aget-byte v2, v0, v3

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    int-to-long v1, v1

    return-wide v1
.end method

.method public ReceiveSignedBytes(I)Ljava/util/List;
    .locals 5
    .param p1, "numberOfBytes"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive multiple signed byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 731
    const-string v0, "ReceiveSignedBytes"

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 732
    .local v0, "bytes":[B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 734
    aget-byte v3, v0, v2

    .line 735
    .local v3, "n":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    .end local v3    # "n":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 737
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public ReceiveText(I)Ljava/lang/String;
    .locals 6
    .param p1, "numberOfBytes"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive text from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .line 591
    const-string v0, "ReceiveText"

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 593
    .local v0, "bytes":[B
    if-gez p1, :cond_0

    .line 595
    :try_start_0
    new-instance v1, Ljava/lang/String;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v1

    .line 597
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 599
    :catch_0
    move-exception v1

    .line 600
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnsupportedEncodingException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public ReceiveUnsigned1ByteNumber()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive an unsigned 1-byte number from the connected Bluetooth device."
    .end annotation

    .line 625
    const-string v0, "ReceiveUnsigned1ByteNumber"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 626
    .local v0, "bytes":[B
    array-length v2, v0

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    .line 627
    return v3

    .line 630
    :cond_0
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public ReceiveUnsigned2ByteNumber()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a unsigned 2-byte number from the connected Bluetooth device."
    .end annotation

    .line 657
    const-string v0, "ReceiveUnsigned2ByteNumber"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 658
    .local v0, "bytes":[B
    array-length v2, v0

    const/4 v3, 0x0

    if-eq v2, v1, :cond_0

    .line 659
    return v3

    .line 662
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    .line 663
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    return v1

    .line 665
    :cond_1
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    return v1
.end method

.method public ReceiveUnsigned4ByteNumber()J
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive a unsigned 4-byte number from the connected Bluetooth device."
    .end annotation

    .line 699
    const-string v0, "ReceiveUnsigned4ByteNumber"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 700
    .local v0, "bytes":[B
    array-length v2, v0

    if-eq v2, v1, :cond_0

    .line 701
    const-wide/16 v1, 0x0

    return-wide v1

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x18

    const/4 v4, 0x3

    const/16 v5, 0x10

    const/4 v6, 0x2

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0xff

    if-ne v1, v2, :cond_1

    .line 705
    aget-byte v1, v0, v4

    int-to-long v1, v1

    and-long/2addr v1, v10

    aget-byte v4, v0, v6

    int-to-long v12, v4

    and-long/2addr v12, v10

    shl-long v6, v12, v7

    or-long/2addr v1, v6

    aget-byte v4, v0, v8

    int-to-long v6, v4

    and-long/2addr v6, v10

    shl-long v4, v6, v5

    or-long/2addr v1, v4

    aget-byte v4, v0, v9

    int-to-long v4, v4

    and-long/2addr v4, v10

    shl-long v3, v4, v3

    or-long/2addr v1, v3

    return-wide v1

    .line 710
    :cond_1
    aget-byte v1, v0, v9

    int-to-long v1, v1

    and-long/2addr v1, v10

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long/2addr v8, v10

    shl-long v7, v8, v7

    or-long/2addr v1, v7

    aget-byte v6, v0, v6

    int-to-long v6, v6

    and-long/2addr v6, v10

    shl-long v5, v6, v5

    or-long/2addr v1, v5

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v10

    shl-long v3, v4, v3

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public ReceiveUnsignedBytes(I)Ljava/util/List;
    .locals 5
    .param p1, "numberOfBytes"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Receive multiple unsigned byte values from the connected Bluetooth device. If numberOfBytes is less than 0, read until a delimiter byte value is received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 754
    const-string v0, "ReceiveUnsignedBytes"

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->read(Ljava/lang/String;I)[B

    move-result-object v0

    .line 755
    .local v0, "bytes":[B
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 757
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    .line 758
    .local v3, "n":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    .end local v3    # "n":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 760
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public Secure(Z)V
    .locals 0
    .param p1, "secure"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 235
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->secure:Z

    .line 236
    return-void
.end method

.method public Secure()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to invoke SSP (Simple Secure Pairing), which is supported on devices with Bluetooth v2.1 or higher. When working with embedded Bluetooth devices, this property may need to be set to False. For Android 2.0-2.2, this property setting will be ignored."
    .end annotation

    .line 223
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->secure:Z

    return v0
.end method

.method public Send1ByteNumber(Ljava/lang/String;)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 1-byte number to the connected Bluetooth device."
    .end annotation

    .line 356
    const-string v0, "Send1ByteNumber"

    .line 359
    .local v0, "functionName":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .local v3, "n":I
    nop

    .line 365
    int-to-byte v4, v3

    .line 366
    .local v4, "b":B
    shr-int/lit8 v3, v3, 0x8

    .line 367
    if-eqz v3, :cond_0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 368
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/16 v1, 0x1ff

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 370
    return-void

    .line 372
    :cond_0
    invoke-virtual {p0, v0, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;B)V

    .line 373
    return-void

    .line 360
    .end local v3    # "n":I
    .end local v4    # "b":B
    :catch_0
    move-exception v3

    .line 361
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/16 v1, 0x1fe

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 363
    return-void
.end method

.method public Send2ByteNumber(Ljava/lang/String;)V
    .locals 8
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 2-byte number to the connected Bluetooth device."
    .end annotation

    .line 387
    const-string v0, "Send2ByteNumber"

    .line 390
    .local v0, "functionName":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .local v3, "n":I
    nop

    .line 396
    const/4 v4, 0x2

    new-array v5, v4, [B

    .line 397
    .local v5, "bytes":[B
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v6, v7, :cond_0

    .line 398
    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 399
    shr-int/lit8 v3, v3, 0x8

    .line 400
    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    goto :goto_0

    .line 402
    :cond_0
    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 403
    shr-int/lit8 v3, v3, 0x8

    .line 404
    and-int/lit16 v6, v3, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 406
    :goto_0
    shr-int/lit8 v3, v3, 0x8

    .line 407
    if-eqz v3, :cond_1

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 408
    nop

    .line 409
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object v6, v4, v2

    .line 408
    const/16 v1, 0x200

    invoke-virtual {p0, v0, v1, v4}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 410
    return-void

    .line 412
    :cond_1
    invoke-virtual {p0, v0, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    .line 413
    return-void

    .line 391
    .end local v3    # "n":I
    .end local v5    # "bytes":[B
    :catch_0
    move-exception v3

    .line 392
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/16 v1, 0x1fe

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 394
    return-void
.end method

.method public Send4ByteNumber(Ljava/lang/String;)V
    .locals 14
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a 4-byte number to the connected Bluetooth device."
    .end annotation

    .line 427
    const-string v0, "Send4ByteNumber"

    .line 430
    .local v0, "functionName":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .local v3, "n":J
    nop

    .line 436
    const/4 v5, 0x4

    new-array v6, v5, [B

    .line 437
    .local v6, "bytes":[B
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/16 v11, 0x8

    const-wide/16 v12, 0xff

    if-ne v7, v8, :cond_0

    .line 438
    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v9

    .line 439
    shr-long/2addr v3, v11

    .line 440
    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v10

    .line 441
    shr-long/2addr v3, v11

    .line 442
    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v2

    .line 443
    shr-long/2addr v3, v11

    .line 444
    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v1

    goto :goto_0

    .line 446
    :cond_0
    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v1

    .line 447
    shr-long/2addr v3, v11

    .line 448
    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v2

    .line 449
    shr-long/2addr v3, v11

    .line 450
    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v10

    .line 451
    shr-long/2addr v3, v11

    .line 452
    and-long v7, v3, v12

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v6, v9

    .line 454
    :goto_0
    shr-long/2addr v3, v11

    .line 455
    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-eqz v9, :cond_1

    const-wide/16 v7, -0x1

    cmp-long v9, v3, v7

    if-eqz v9, :cond_1

    .line 456
    nop

    .line 457
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p1, v7, v1

    aput-object v5, v7, v2

    .line 456
    const/16 v1, 0x200

    invoke-virtual {p0, v0, v1, v7}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 458
    return-void

    .line 460
    :cond_1
    invoke-virtual {p0, v0, v6}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    .line 461
    return-void

    .line 431
    .end local v3    # "n":J
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v3

    .line 432
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/16 v1, 0x1fe

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 434
    return-void
.end method

.method public SendBytes(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 10
    .param p1, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a list of byte values to the connected Bluetooth device."
    .end annotation

    .line 475
    const-string v0, "SendBytes"

    .line 476
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 477
    .local v1, "array":[Ljava/lang/Object;
    array-length v2, v1

    new-array v2, v2, [B

    .line 478
    .local v2, "bytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 481
    aget-object v4, v1, v3

    .line 482
    .local v4, "element":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 485
    .local v5, "s":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .local v8, "n":I
    nop

    .line 491
    and-int/lit16 v9, v8, 0xff

    int-to-byte v9, v9

    aput-byte v9, v2, v3

    .line 492
    shr-int/lit8 v8, v8, 0x8

    .line 493
    if-eqz v8, :cond_0

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 494
    add-int/lit8 v9, v3, 0x1

    .line 495
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v9, v7, v6

    .line 494
    const/16 v6, 0x202

    invoke-virtual {p0, v0, v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 496
    return-void

    .line 478
    .end local v4    # "element":Ljava/lang/Object;
    .end local v5    # "s":Ljava/lang/String;
    .end local v8    # "n":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 486
    .restart local v4    # "element":Ljava/lang/Object;
    .restart local v5    # "s":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 487
    .local v8, "e":Ljava/lang/NumberFormatException;
    add-int/lit8 v9, v3, 0x1

    .line 488
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v9, v7, v6

    .line 487
    const/16 v6, 0x201

    invoke-virtual {p0, v0, v6, v7}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 489
    return-void

    .line 499
    .end local v3    # "i":I
    .end local v4    # "element":Ljava/lang/Object;
    .end local v5    # "s":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    .line 500
    return-void
.end method

.method public SendText(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send text to the connected Bluetooth device."
    .end annotation

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .local v0, "bytes":[B
    goto :goto_0

    .line 333
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnsupportedEncodingException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    move-object v0, v1

    .line 337
    .local v0, "bytes":[B
    :goto_0
    const-string v1, "SendText"

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->write(Ljava/lang/String;[B)V

    .line 338
    return-void
.end method

.method addBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method protected varargs bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "errorNumber"    # I
    .param p3, "messageArgs"    # [Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 846
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->prepareToDie()V

    .line 847
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 839
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->prepareToDie()V

    .line 840
    return-void
.end method

.method protected final read(Ljava/lang/String;I)[B
    .locals 11
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "numberOfBytes"    # I

    .line 774
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 775
    const/16 v0, 0x203

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 777
    new-array v0, v1, [B

    return-object v0

    .line 780
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 782
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x206

    const/4 v3, 0x1

    const/16 v4, 0x205

    const/4 v5, -0x1

    const-string v6, "IO Exception during Reading "

    if-ltz p2, :cond_4

    .line 784
    new-array v7, p2, [B

    .line 785
    .local v7, "bytes":[B
    const/4 v8, 0x0

    .line 786
    .local v8, "totalBytesRead":I
    :goto_0
    if-ge v8, p2, :cond_3

    .line 788
    :try_start_0
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    array-length v10, v7

    sub-int/2addr v10, v8

    invoke-virtual {v9, v7, v8, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    .line 789
    .local v9, "numBytesRead":I
    if-ne v9, v5, :cond_1

    .line 790
    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v2, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    goto :goto_1

    .line 794
    :cond_1
    add-int/2addr v8, v9

    .line 803
    .end local v9    # "numBytesRead":I
    goto :goto_0

    .line 795
    :catch_0
    move-exception v2

    .line 796
    .local v2, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v5, :cond_2

    .line 798
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 800
    :cond_2
    nop

    .line 801
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 800
    invoke-virtual {p0, p1, v4, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 802
    nop

    .line 805
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    invoke-virtual {v0, v7, v1, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 806
    .end local v7    # "bytes":[B
    .end local v8    # "totalBytesRead":I
    goto :goto_3

    .line 810
    :cond_4
    :goto_2
    :try_start_1
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 811
    .local v7, "value":I
    if-ne v7, v5, :cond_5

    .line 812
    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v2, v5}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 814
    goto :goto_3

    .line 816
    :cond_5
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 817
    iget-byte v8, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->delimiter:B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v7, v8, :cond_6

    .line 818
    goto :goto_3

    .line 828
    .end local v7    # "value":I
    :cond_6
    goto :goto_2

    .line 820
    :catch_1
    move-exception v2

    .line 821
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v5, :cond_7

    .line 823
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 825
    :cond_7
    nop

    .line 826
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 825
    invoke-virtual {p0, p1, v4, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 827
    nop

    .line 832
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method removeBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method protected final setConnection(Landroid/bluetooth/BluetoothSocket;)V
    .locals 2
    .param p1, "bluetoothSocket"    # Landroid/bluetooth/BluetoothSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 167
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->inputStream:Ljava/io/InputStream;

    .line 168
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    .line 169
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->fireAfterConnectEvent()V

    .line 170
    return-void
.end method

.method protected write(Ljava/lang/String;B)V
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "b"    # B

    .line 509
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 510
    const/16 v0, 0x203

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 512
    return-void

    .line 516
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write(I)V

    .line 517
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO Exception during Writing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v2, :cond_1

    .line 521
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 523
    :cond_1
    nop

    .line 524
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 523
    const/16 v1, 0x204

    invoke-virtual {p0, p1, v1, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 526
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method protected write(Ljava/lang/String;[B)V
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .line 535
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->IsConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 536
    const/16 v0, 0x203

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 538
    return-void

    .line 542
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 543
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->logTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO Exception during Writing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->disconnectOnError:Z

    if-eqz v2, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->Disconnect()V

    .line 549
    :cond_1
    nop

    .line 550
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 549
    const/16 v1, 0x204

    invoke-virtual {p0, p1, v1, v3}, Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;->bluetoothError(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 552
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
