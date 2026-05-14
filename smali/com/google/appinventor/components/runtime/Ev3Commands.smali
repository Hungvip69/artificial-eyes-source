.class public Lcom/google/appinventor/components/runtime/Ev3Commands;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "Ev3Commands.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a low-level interface to a LEGO MINDSTORMS EV3 robot, with functions to send system or direct commands to EV3 robots."
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

    .line 41
    const-string v0, "Ev3Commands"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public GetBatteryCurrent()D
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the battery current."
    .end annotation

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "functionName":Ljava/lang/String;
    nop

    .line 99
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 100
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    new-array v11, v2, [Ljava/lang/Object;

    aput-object v3, v11, v4

    aput-object v5, v11, v1

    .line 94
    const/16 v6, -0x7f

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v10, "cg"

    invoke-static/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v3

    .line 101
    .local v3, "command":[B
    invoke-virtual {p0, v0, v3, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v1

    .line 102
    .local v1, "reply":[B
    if-eqz v1, :cond_0

    array-length v5, v1

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    aget-byte v5, v1, v4

    if-ne v5, v2, :cond_0

    .line 103
    const-string v2, "xf"

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v2

    .line 104
    .local v2, "values":[Ljava/lang/Object;
    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    return-wide v4

    .line 106
    .end local v2    # "values":[Ljava/lang/Object;
    :cond_0
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    return-wide v4
.end method

.method public GetBatteryVoltage()D
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the battery voltage."
    .end annotation

    .line 71
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "functionName":Ljava/lang/String;
    nop

    .line 77
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 78
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x2

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v2, v11, v3

    aput-object v4, v11, v1

    .line 72
    const/16 v6, -0x7f

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v10, "cg"

    invoke-static/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v2

    .line 79
    .local v2, "command":[B
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v1

    .line 80
    .local v1, "reply":[B
    if-eqz v1, :cond_0

    array-length v4, v1

    const/4 v6, 0x5

    if-ne v4, v6, :cond_0

    aget-byte v4, v1, v3

    if-ne v4, v5, :cond_0

    .line 81
    const-string v4, "xf"

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v4

    .line 82
    .local v4, "values":[Ljava/lang/Object;
    aget-object v3, v4, v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v5, v3

    return-wide v5

    .line 84
    .end local v4    # "values":[Ljava/lang/Object;
    :cond_0
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    return-wide v3
.end method

.method public GetFirmwareBuild()Ljava/lang/String;
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the firmware build on EV3."
    .end annotation

    .line 189
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "functionName":Ljava/lang/String;
    nop

    .line 195
    const/16 v2, 0x7f

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 196
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x2

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v2, v11, v3

    aput-object v4, v11, v1

    .line 190
    const/16 v6, -0x7f

    const/4 v7, 0x1

    const/16 v8, 0x64

    const/4 v9, 0x0

    const-string v10, "cg"

    invoke-static/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v2

    .line 197
    .local v2, "command":[B
    invoke-virtual {p0, v0, v2, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v1

    .line 199
    .local v1, "reply":[B
    if-eqz v1, :cond_0

    aget-byte v4, v1, v3

    if-ne v4, v5, :cond_0

    .line 200
    const-string v4, "xS"

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v4

    .line 201
    .local v4, "value":[Ljava/lang/Object;
    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 203
    .end local v4    # "value":[Ljava/lang/Object;
    :cond_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3Commands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0xc1e

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v0, v5, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 204
    const/4 v3, 0x0

    return-object v3
.end method

.method public GetFirmwareVersion()Ljava/lang/String;
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the firmware version on EV3."
    .end annotation

    .line 164
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "functionName":Ljava/lang/String;
    nop

    .line 170
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 171
    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    .line 172
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x3

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v2, v12, v4

    aput-object v3, v12, v1

    const/4 v2, 0x2

    aput-object v5, v12, v2

    .line 165
    const/16 v7, -0x7f

    const/4 v8, 0x1

    const/16 v9, 0x64

    const/4 v10, 0x0

    const-string v11, "ccg"

    invoke-static/range {v7 .. v12}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v3

    .line 173
    .local v3, "command":[B
    invoke-virtual {p0, v0, v3, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v1

    .line 175
    .local v1, "reply":[B
    if-eqz v1, :cond_0

    aget-byte v5, v1, v4

    if-ne v5, v2, :cond_0

    .line 176
    const-string v2, "xS"

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v2

    .line 177
    .local v2, "value":[Ljava/lang/Object;
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 179
    .end local v2    # "value":[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Commands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0xc1e

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v0, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 180
    const/4 v2, 0x0

    return-object v2
.end method

.method public GetHardwareVersion()Ljava/lang/String;
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the hardware version of EV3."
    .end annotation

    .line 213
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "functionName":Ljava/lang/String;
    nop

    .line 219
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 220
    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    .line 221
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x3

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v2, v12, v4

    aput-object v3, v12, v1

    const/4 v2, 0x2

    aput-object v5, v12, v2

    .line 214
    const/16 v7, -0x7f

    const/4 v8, 0x1

    const/16 v9, 0x64

    const/4 v10, 0x0

    const-string v11, "ccg"

    invoke-static/range {v7 .. v12}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v3

    .line 222
    .local v3, "command":[B
    invoke-virtual {p0, v0, v3, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v1

    .line 224
    .local v1, "reply":[B
    if-eqz v1, :cond_0

    aget-byte v5, v1, v4

    if-ne v5, v2, :cond_0

    .line 225
    const-string v2, "xS"

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v2

    .line 226
    .local v2, "value":[Ljava/lang/Object;
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 228
    .end local v2    # "value":[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Commands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0xc1e

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v0, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 229
    const/4 v2, 0x0

    return-object v2
.end method

.method public GetOSBuild()Ljava/lang/String;
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the OS build on EV3."
    .end annotation

    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "functionName":Ljava/lang/String;
    nop

    .line 145
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 146
    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    .line 147
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x3

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v2, v12, v4

    aput-object v3, v12, v1

    const/4 v2, 0x2

    aput-object v5, v12, v2

    .line 140
    const/4 v7, 0x3

    const/4 v8, 0x1

    const/16 v9, 0x64

    const/4 v10, 0x0

    const-string v11, "ccg"

    invoke-static/range {v7 .. v12}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v3

    .line 148
    .local v3, "command":[B
    invoke-virtual {p0, v0, v3, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v1

    .line 150
    .local v1, "reply":[B
    if-eqz v1, :cond_0

    aget-byte v5, v1, v4

    if-ne v5, v2, :cond_0

    .line 151
    const-string v2, "xS"

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v2

    .line 152
    .local v2, "value":[Ljava/lang/Object;
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 154
    .end local v2    # "value":[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Commands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0xc1e

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v0, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 155
    const/4 v2, 0x0

    return-object v2
.end method

.method public GetOSVersion()Ljava/lang/String;
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the OS version on EV3."
    .end annotation

    .line 115
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "functionName":Ljava/lang/String;
    nop

    .line 121
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 122
    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    .line 123
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    new-array v12, v2, [Ljava/lang/Object;

    aput-object v3, v12, v5

    aput-object v4, v12, v1

    const/4 v2, 0x2

    aput-object v6, v12, v2

    .line 116
    const/16 v7, -0x7f

    const/4 v8, 0x1

    const/16 v9, 0x64

    const/4 v10, 0x0

    const-string v11, "ccg"

    invoke-static/range {v7 .. v12}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v3

    .line 124
    .local v3, "command":[B
    invoke-virtual {p0, v0, v3, v1}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v1

    .line 125
    .local v1, "reply":[B
    if-eqz v1, :cond_0

    aget-byte v4, v1, v5

    if-ne v4, v2, :cond_0

    .line 126
    const-string v2, "xS"

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, "value":[Ljava/lang/Object;
    aget-object v4, v2, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 129
    .end local v2    # "value":[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3Commands;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0xc1e

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v0, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 130
    const/4 v2, 0x0

    return-object v2
.end method

.method public KeepAlive(I)V
    .locals 10
    .param p1, "minutes"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Keep the EV3 brick from shutdown for a period of time."
    .end annotation

    .line 49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "functionName":Ljava/lang/String;
    const/4 v2, 0x0

    if-ltz p1, :cond_1

    const/16 v3, 0xff

    if-le p1, v3, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    int-to-byte v3, p1

    .line 61
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v3, v9, v2

    .line 56
    const/16 v4, -0x70

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "c"

    invoke-static/range {v4 .. v9}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v1

    .line 62
    .local v1, "command":[B
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Ev3Commands;->sendCommand(Ljava/lang/String;[BZ)[B

    .line 64
    return-void

    .line 52
    .end local v1    # "command":[B
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3Commands;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const/16 v2, 0xc1f

    invoke-virtual {v3, p0, v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 53
    return-void
.end method
