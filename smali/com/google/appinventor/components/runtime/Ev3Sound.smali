.class public Lcom/google/appinventor/components/runtime/Ev3Sound;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "Ev3Sound.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to sound functionalities on LEGO MINDSTORMS EV3 robot."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 40
    const-string v0, "Ev3Sound"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public PlayTone(III)V
    .locals 18
    .param p1, "volume"    # I
    .param p2, "frequency"    # I
    .param p3, "milliseconds"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the robot play a tone."
    .end annotation

    .line 48
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "functionName":Ljava/lang/String;
    const/4 v6, 0x0

    if-ltz v1, :cond_1

    const/16 v7, 0x64

    if-gt v1, v7, :cond_1

    const/16 v7, 0xfa

    if-lt v2, v7, :cond_1

    const/16 v7, 0x2710

    if-gt v2, v7, :cond_1

    if-ltz v3, :cond_1

    const v7, 0xffff

    if-le v3, v7, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    nop

    .line 60
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    int-to-byte v8, v1

    .line 61
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    int-to-short v9, v2

    .line 62
    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    int-to-short v10, v3

    .line 63
    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v6

    aput-object v8, v11, v5

    const/4 v6, 0x2

    aput-object v9, v11, v6

    const/4 v6, 0x3

    aput-object v10, v11, v6

    .line 55
    const/16 v12, -0x6c

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "cccc"

    move-object/from16 v17, v11

    invoke-static/range {v12 .. v17}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 64
    .local v6, "command":[B
    invoke-virtual {v0, v4, v6, v5}, Lcom/google/appinventor/components/runtime/Ev3Sound;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 65
    return-void

    .line 51
    .end local v6    # "command":[B
    :cond_1
    :goto_0
    iget-object v7, v0, Lcom/google/appinventor/components/runtime/Ev3Sound;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v6

    const/16 v6, 0xc1f

    invoke-virtual {v7, v0, v4, v6, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public StopSound()V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop any sound on the robot."
    .end annotation

    .line 72
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "functionName":Ljava/lang/String;
    nop

    .line 78
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v3, v9, v2

    .line 73
    const/16 v4, -0x6c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "c"

    invoke-static/range {v4 .. v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v1

    .line 79
    .local v1, "command":[B
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Ev3Sound;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 80
    return-void
.end method
