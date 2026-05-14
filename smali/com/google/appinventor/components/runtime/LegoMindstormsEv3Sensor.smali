.class public Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;
.source "LegoMindstormsEv3Sensor.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field protected static final DEFAULT_SENSOR_PORT:Ljava/lang/String; = "1"


# instance fields
.field protected sensorPortNumber:I


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "logTag"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Base;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 30
    const-string v0, "1"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->SensorPort(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public SensorPort()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The sensor port that the sensor is connected to."
        userVisible = false
    .end annotation

    .line 37
    iget v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sensorPortNumber:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->portNumberToSensorPortLetter(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 1
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "lego_ev3_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 48
    const-string v0, "SensorPort"

    .line 49
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->setSensorPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method protected final readInputPercentage(Ljava/lang/String;IIII)I
    .locals 22
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "no"    # I
    .param p4, "type"    # I
    .param p5, "mode"    # I

    .line 66
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p5

    if-ltz v0, :cond_1

    const/4 v3, 0x3

    if-gt v0, v3, :cond_1

    if-ltz v1, :cond_1

    if-gt v1, v3, :cond_1

    const/4 v4, -0x1

    if-lt v2, v4, :cond_1

    const/4 v5, 0x7

    if-gt v2, v5, :cond_1

    .line 69
    nop

    .line 74
    const/16 v6, 0x1b

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    int-to-byte v7, v0

    .line 75
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    int-to-byte v8, v1

    .line 76
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    move/from16 v9, p4

    int-to-byte v10, v9

    .line 77
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    int-to-byte v11, v2

    .line 78
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    .line 79
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    .line 80
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v14

    aput-object v7, v5, v12

    const/4 v6, 0x2

    aput-object v8, v5, v6

    aput-object v10, v5, v3

    const/4 v3, 0x4

    aput-object v11, v5, v3

    const/4 v3, 0x5

    aput-object v13, v5, v3

    const/4 v3, 0x6

    aput-object v15, v5, v3

    .line 69
    const/16 v16, -0x67

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-string v20, "ccccccg"

    move-object/from16 v21, v5

    invoke-static/range {v16 .. v21}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v3

    .line 82
    .local v3, "command":[B
    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-virtual {v5, v7, v3, v12}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v8

    .line 83
    .local v8, "reply":[B
    if-eqz v8, :cond_0

    array-length v10, v8

    if-ne v10, v6, :cond_0

    aget-byte v10, v8, v14

    if-ne v10, v6, :cond_0

    .line 84
    aget-byte v4, v8, v12

    return v4

    .line 86
    :cond_0
    return v4

    .line 66
    .end local v3    # "command":[B
    .end local v8    # "reply":[B
    :cond_1
    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move/from16 v9, p4

    .line 67
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method protected final readInputSI(Ljava/lang/String;IIII)D
    .locals 23
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "layer"    # I
    .param p3, "no"    # I
    .param p4, "type"    # I
    .param p5, "mode"    # I

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p5

    if-ltz v2, :cond_1

    const/4 v5, 0x3

    if-gt v2, v5, :cond_1

    if-ltz v3, :cond_1

    if-gt v3, v5, :cond_1

    const/4 v6, -0x1

    if-lt v4, v6, :cond_1

    const/4 v6, 0x7

    if-gt v4, v6, :cond_1

    .line 97
    nop

    .line 102
    const/16 v7, 0x1d

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    int-to-byte v8, v2

    .line 103
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    int-to-byte v9, v3

    .line 104
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    move/from16 v10, p4

    int-to-byte v11, v10

    .line 105
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    int-to-byte v12, v4

    .line 106
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    .line 107
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    .line 108
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v7, v6, v15

    aput-object v8, v6, v13

    const/4 v7, 0x2

    aput-object v9, v6, v7

    aput-object v11, v6, v5

    const/4 v5, 0x4

    aput-object v12, v6, v5

    const/4 v5, 0x5

    aput-object v14, v6, v5

    const/4 v8, 0x6

    aput-object v16, v6, v8

    .line 97
    const/16 v17, -0x67

    const/16 v18, 0x1

    const/16 v19, 0x4

    const/16 v20, 0x0

    const-string v21, "ccccccg"

    move-object/from16 v22, v6

    invoke-static/range {v17 .. v22}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B

    move-result-object v6

    .line 110
    .local v6, "command":[B
    invoke-virtual {v0, v1, v6, v13}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sendCommand(Ljava/lang/String;[BZ)[B

    move-result-object v8

    .line 112
    .local v8, "reply":[B
    if-eqz v8, :cond_0

    array-length v9, v8

    if-ne v9, v5, :cond_0

    aget-byte v5, v8, v15

    if-ne v5, v7, :cond_0

    .line 113
    const-string v5, "xf"

    invoke-static {v5, v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->unpack(Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v5

    .line 114
    .local v5, "values":[Ljava/lang/Object;
    aget-object v7, v5, v15

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v11, v7

    return-wide v11

    .line 117
    .end local v5    # "values":[Ljava/lang/Object;
    :cond_0
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v7, 0xc1e

    new-array v9, v15, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v1, v7, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 118
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    return-wide v11

    .line 95
    .end local v6    # "command":[B
    .end local v8    # "reply":[B
    :cond_1
    move/from16 v10, p4

    .line 96
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method

.method protected final setSensorPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "sensorPortLetter"    # Ljava/lang/String;

    .line 54
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sensorPortLetterToPortNumber(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->sensorPortNumber:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    nop

    .line 59
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/16 v3, 0xc21

    invoke-virtual {v1, p0, p1, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 57
    return-void
.end method
