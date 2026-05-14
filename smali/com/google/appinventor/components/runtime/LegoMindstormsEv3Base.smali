.class public Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "LegoMindstormsEv3Base.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final TOY_ROBOT:I = 0x804


# instance fields
.field protected bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

.field protected commandCount:I

.field protected final logTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 39
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->logTag:Ljava/lang/String;

    .line 40
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "logTag"    # Ljava/lang/String;

    .line 33
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 34
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->logTag:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public BluetoothClient()Lcom/google/appinventor/components/runtime/BluetoothClient;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The BluetoothClient component that should be used for communication."
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    return-object v0
.end method

.method public BluetoothClient(Lcom/google/appinventor/components/runtime/BluetoothClient;)V
    .locals 2
    .param p1, "bluetoothClient"    # Lcom/google/appinventor/components/runtime/BluetoothClient;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "BluetoothClient"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->removeBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->detachComponent(Lcom/google/appinventor/components/runtime/Component;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    .line 62
    :cond_0
    if-eqz p1, :cond_1

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const/16 v1, 0x804

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachComponent(Lcom/google/appinventor/components/runtime/Component;Ljava/util/Set;)Z

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->addBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    .line 71
    :cond_1
    return-void
.end method

.method public afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 0
    .param p1, "bluetoothConnection"    # Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;

    .line 214
    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 0
    .param p1, "bluetoothConnection"    # Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;

    .line 219
    return-void
.end method

.method protected final bitFieldToMotorPortLetters(I)Ljava/lang/String;
    .locals 3
    .param p1, "bitField"    # I

    .line 191
    if-ltz p1, :cond_4

    const/16 v0, 0xf

    if-gt p1, v0, :cond_4

    .line 194
    const-string v0, ""

    .line 196
    .local v0, "portLetters":Ljava/lang/String;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "D"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_3
    return-object v0

    .line 192
    .end local v0    # "portLetters":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bit field number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final isBluetoothConnected(Ljava/lang/String;)Z
    .locals 4
    .param p1, "functionName"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1c

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 76
    return v1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xc1d

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 81
    return v1

    .line 84
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected final motorPortLettersToBitField(Ljava/lang/String;)I
    .locals 9
    .param p1, "letters"    # Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const-string v2, "\""

    const-string v3, "Malformed motor port letters \""

    if-gt v0, v1, :cond_5

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "portABit":I
    const/4 v1, 0x0

    .line 151
    .local v1, "portBBit":I
    const/4 v4, 0x0

    .line 152
    .local v4, "portCBit":I
    const/4 v5, 0x0

    .line 154
    .local v5, "portDBit":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 156
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 183
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 177
    :pswitch_0
    if-nez v5, :cond_0

    .line 179
    const/16 v5, 0x8

    .line 180
    goto :goto_1

    .line 178
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 171
    :pswitch_1
    if-nez v4, :cond_1

    .line 173
    const/4 v4, 0x4

    .line 174
    goto :goto_1

    .line 172
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 165
    :pswitch_2
    if-nez v1, :cond_2

    .line 167
    const/4 v1, 0x2

    .line 168
    goto :goto_1

    .line 166
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 159
    :pswitch_3
    if-nez v0, :cond_3

    .line 161
    const/4 v0, 0x1

    .line 162
    nop

    .line 154
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 160
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 187
    .end local v6    # "i":I
    :cond_4
    or-int v2, v0, v1

    or-int/2addr v2, v4

    or-int/2addr v2, v5

    return v2

    .line 147
    .end local v0    # "portABit":I
    .end local v1    # "portBBit":I
    .end local v4    # "portCBit":I
    .end local v5    # "portDBit":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDelete()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->removeBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V

    .line 226
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->detachComponent(Lcom/google/appinventor/components/runtime/Component;)V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    .line 229
    :cond_0
    return-void
.end method

.method protected final portNumberToSensorPortLetter(I)Ljava/lang/String;
    .locals 3
    .param p1, "portNumber"    # I

    .line 139
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 142
    add-int/lit8 v0, p1, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid port number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final sendCommand(Ljava/lang/String;[BZ)[B
    .locals 9
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "command"    # [B
    .param p3, "doReceiveReply"    # Z

    .line 89
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->isBluetoothConnected(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 90
    return-object v1

    .line 93
    :cond_0
    array-length v0, p2

    const/4 v2, 0x2

    add-int/2addr v0, v2

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iget v3, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->commandCount:I

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v3, v4, v0

    const-string v3, "hh"

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->pack(Ljava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v4

    .line 94
    .local v4, "header":[B
    iget v6, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->commandCount:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->commandCount:I

    .line 96
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v6, p1, v4}, Lcom/google/appinventor/components/runtime/BluetoothClient;->write(Ljava/lang/String;[B)V

    .line 97
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v6, p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->write(Ljava/lang/String;[B)V

    .line 100
    if-eqz p3, :cond_3

    .line 101
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const/4 v7, 0x4

    invoke-virtual {v6, p1, v7}, Lcom/google/appinventor/components/runtime/BluetoothClient;->read(Ljava/lang/String;I)[B

    move-result-object v4

    .line 103
    array-length v6, v4

    const/16 v8, 0xc1e

    if-ne v6, v7, :cond_2

    .line 104
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v3

    .line 105
    .local v3, "decodedHeader":[Ljava/lang/Object;
    aget-object v6, v3, v5

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    sub-int/2addr v6, v2

    .line 106
    .local v6, "replySize":I
    aget-object v0, v3, v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 107
    .local v0, "replyCount":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v2, p1, v6}, Lcom/google/appinventor/components/runtime/BluetoothClient;->read(Ljava/lang/String;I)[B

    move-result-object v2

    .line 109
    .local v2, "reply":[B
    array-length v7, v2

    if-ne v7, v6, :cond_1

    .line 110
    return-object v2

    .line 113
    :cond_1
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v7, p0, p1, v8, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 114
    return-object v1

    .line 119
    .end local v0    # "replyCount":I
    .end local v2    # "reply":[B
    .end local v3    # "decodedHeader":[Ljava/lang/Object;
    .end local v6    # "replySize":I
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v8, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 120
    return-object v1

    .line 122
    :cond_3
    return-object v1
.end method

.method protected final sensorPortLetterToPortNumber(Ljava/lang/String;)I
    .locals 5
    .param p1, "letter"    # Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "\" is not a valid sensor port letter"

    const-string v3, "String \""

    if-ne v0, v1, :cond_1

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x31

    .line 132
    .local v0, "portNumber":I
    if-ltz v0, :cond_0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 135
    return v0

    .line 133
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    .end local v0    # "portNumber":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
