.class public Lcom/google/appinventor/components/runtime/NxtDrive;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.source "NxtDrive.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a LEGO MINDSTORMS NXT robot, with functions that can move and turn the robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private driveMotorPorts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/common/NxtMotorPort;",
            ">;"
        }
    .end annotation
.end field

.field private driveMotors:Ljava/lang/String;

.field private stopBeforeDisconnect:Z

.field private wheelDiameter:D


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 55
    const-string v0, "NxtDrive"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 57
    const-string v0, "CB"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDrive;->DriveMotors(Ljava/lang/String;)V

    .line 58
    const v0, 0x408a3d71    # 4.32f

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDrive;->WheelDiameter(F)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtDrive;->StopBeforeDisconnect(Z)V

    .line 60
    return-void
.end method

.method private move(Ljava/lang/String;IJ)V
    .locals 13
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "power"    # I
    .param p3, "tachoLimit"    # J

    .line 175
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDrive;->checkBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    return-void

    .line 179
    :cond_0
    move-object v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/google/appinventor/components/common/NxtMotorPort;

    .line 180
    .local v12, "port":Lcom/google/appinventor/components/common/NxtMotorPort;
    sget-object v5, Lcom/google/appinventor/components/common/NxtMotorMode;->On:Lcom/google/appinventor/components/common/NxtMotorMode;

    sget-object v6, Lcom/google/appinventor/components/common/NxtRegulationMode;->Speed:Lcom/google/appinventor/components/common/NxtRegulationMode;

    const/4 v7, 0x0

    sget-object v8, Lcom/google/appinventor/components/common/NxtRunState;->Running:Lcom/google/appinventor/components/common/NxtRunState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, v12

    move v4, p2

    move-wide/from16 v9, p3

    invoke-virtual/range {v1 .. v10}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V

    .line 182
    .end local v12    # "port":Lcom/google/appinventor/components/common/NxtMotorPort;
    goto :goto_0

    .line 183
    :cond_1
    return-void
.end method

.method private turnIndefinitely(Ljava/lang/String;III)V
    .locals 11
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "power"    # I
    .param p3, "forwardMotorIndex"    # I
    .param p4, "reverseMotorIndex"    # I

    .line 212
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtDrive;->checkBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/appinventor/components/common/NxtMotorPort;

    sget-object v5, Lcom/google/appinventor/components/common/NxtMotorMode;->On:Lcom/google/appinventor/components/common/NxtMotorMode;

    sget-object v6, Lcom/google/appinventor/components/common/NxtRegulationMode;->Speed:Lcom/google/appinventor/components/common/NxtRegulationMode;

    sget-object v8, Lcom/google/appinventor/components/common/NxtRunState;->Running:Lcom/google/appinventor/components/common/NxtRunState;

    const-wide/16 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v1 .. v10}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V

    .line 218
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/appinventor/components/common/NxtMotorPort;

    neg-int v4, p2

    sget-object v5, Lcom/google/appinventor/components/common/NxtMotorMode;->On:Lcom/google/appinventor/components/common/NxtMotorMode;

    sget-object v6, Lcom/google/appinventor/components/common/NxtRegulationMode;->Speed:Lcom/google/appinventor/components/common/NxtRegulationMode;

    sget-object v8, Lcom/google/appinventor/components/common/NxtRunState;->Running:Lcom/google/appinventor/components/common/NxtRunState;

    invoke-virtual/range {v1 .. v10}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V

    .line 220
    return-void
.end method


# virtual methods
.method public DriveMotors()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The motor ports that are used for driving: the left wheel\'s motor port followed by the right wheel\'s motor port."
        userVisible = false
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotors:Ljava/lang/String;

    return-object v0
.end method

.method public DriveMotors(Ljava/lang/String;)V
    .locals 7
    .param p1, "motorPortLetters"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "CB"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotors:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "ch":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/appinventor/components/common/NxtMotorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtMotorPort;

    move-result-object v2

    .line 95
    .local v2, "port":Lcom/google/appinventor/components/common/NxtMotorPort;
    if-nez v2, :cond_0

    .line 96
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string v5, "DriveMotors"

    const/16 v6, 0x197

    invoke-virtual {v3, p0, v5, v6, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 98
    goto :goto_1

    .line 100
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v1    # "ch":Ljava/lang/String;
    .end local v2    # "port":Lcom/google/appinventor/components/common/NxtMotorPort;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public MoveBackward(ID)V
    .locals 6
    .param p1, "power"    # I
    .param p2, "distance"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot backward the given distance, with the specified percentage of maximum power, by powering both drive motors backward."
    .end annotation

    .line 169
    const-wide v0, 0x4076800000000000L    # 360.0

    mul-double v0, v0, p2

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->wheelDiameter:D

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    double-to-long v0, v0

    .line 171
    .local v0, "tachoLimit":J
    const-string v2, "MoveBackward"

    neg-int v3, p1

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDrive;->move(Ljava/lang/String;IJ)V

    .line 172
    return-void
.end method

.method public MoveBackwardIndefinitely(I)V
    .locals 4
    .param p1, "power"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot backward indefinitely, with the specified percentage of maximum power, by powering both drive motors backward."
    .end annotation

    .line 155
    neg-int v0, p1

    const-wide/16 v1, 0x0

    const-string v3, "MoveBackwardIndefinitely"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDrive;->move(Ljava/lang/String;IJ)V

    .line 156
    return-void
.end method

.method public MoveForward(ID)V
    .locals 6
    .param p1, "power"    # I
    .param p2, "distance"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot forward the given distance, with the specified percentage of maximum power, by powering both drive motors forward."
    .end annotation

    .line 161
    const-wide v0, 0x4076800000000000L    # 360.0

    mul-double v0, v0, p2

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->wheelDiameter:D

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    double-to-long v0, v0

    .line 163
    .local v0, "tachoLimit":J
    const-string v2, "MoveForward"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/google/appinventor/components/runtime/NxtDrive;->move(Ljava/lang/String;IJ)V

    .line 164
    return-void
.end method

.method public MoveForwardIndefinitely(I)V
    .locals 3
    .param p1, "power"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot forward indefinitely, with the specified percentage of maximum power, by powering both drive motors forward."
    .end annotation

    .line 149
    const-string v0, "MoveForwardIndefinitely"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDrive;->move(Ljava/lang/String;IJ)V

    .line 150
    return-void
.end method

.method public Stop()V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop the drive motors of the robot."
    .end annotation

    .line 229
    const-string v10, "Stop"

    .line 230
    .local v10, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/google/appinventor/components/runtime/NxtDrive;->checkBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/google/appinventor/components/common/NxtMotorPort;

    .line 235
    .local v12, "port":Lcom/google/appinventor/components/common/NxtMotorPort;
    sget-object v4, Lcom/google/appinventor/components/common/NxtMotorMode;->Brake:Lcom/google/appinventor/components/common/NxtMotorMode;

    sget-object v5, Lcom/google/appinventor/components/common/NxtRegulationMode;->Disabled:Lcom/google/appinventor/components/common/NxtRegulationMode;

    sget-object v7, Lcom/google/appinventor/components/common/NxtRunState;->Disabled:Lcom/google/appinventor/components/common/NxtRunState;

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v10

    move-object v2, v12

    invoke-virtual/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V

    .line 237
    .end local v12    # "port":Lcom/google/appinventor/components/common/NxtMotorPort;
    goto :goto_0

    .line 238
    :cond_1
    return-void
.end method

.method public StopBeforeDisconnect(Z)V
    .locals 0
    .param p1, "stopBeforeDisconnect"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 143
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->stopBeforeDisconnect:Z

    .line 144
    return-void
.end method

.method public StopBeforeDisconnect()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to stop the drive motors before disconnecting."
    .end annotation

    .line 131
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->stopBeforeDisconnect:Z

    return v0
.end method

.method public TurnClockwiseIndefinitely(I)V
    .locals 4
    .param p1, "power"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turn the robot clockwise indefinitely, with the specified percentage of maximum power, by powering the left drive motor forward and the right drive motor backward."
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 190
    .local v0, "numDriveMotors":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 191
    const/4 v1, 0x0

    .line 192
    .local v1, "forwardMotorIndex":I
    add-int/lit8 v2, v0, -0x1

    .line 193
    .local v2, "backwardMotorIndex":I
    const-string v3, "TurnClockwiseIndefinitely"

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDrive;->turnIndefinitely(Ljava/lang/String;III)V

    .line 195
    .end local v1    # "forwardMotorIndex":I
    .end local v2    # "backwardMotorIndex":I
    :cond_0
    return-void
.end method

.method public TurnCounterClockwiseIndefinitely(I)V
    .locals 4
    .param p1, "power"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turn the robot counterclockwise indefinitely, with the specified percentage of maximum power, by powering the right drive motor forward and the left drive motor backward."
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 202
    .local v0, "numDriveMotors":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 203
    add-int/lit8 v1, v0, -0x1

    .line 204
    .local v1, "forwardMotorIndex":I
    const/4 v2, 0x0

    .line 205
    .local v2, "backwardMotorIndex":I
    const-string v3, "TurnCounterClockwiseIndefinitely"

    invoke-direct {p0, v3, p1, v1, v2}, Lcom/google/appinventor/components/runtime/NxtDrive;->turnIndefinitely(Ljava/lang/String;III)V

    .line 208
    .end local v1    # "forwardMotorIndex":I
    .end local v2    # "backwardMotorIndex":I
    :cond_0
    return-void
.end method

.method public WheelDiameter()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The diameter of the wheels used for driving."
        userVisible = false
    .end annotation

    .line 110
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->wheelDiameter:D

    double-to-float v0, v0

    return v0
.end method

.method public WheelDiameter(F)V
    .locals 2
    .param p1, "wheelDiameter"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4.32"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 122
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->wheelDiameter:D

    .line 123
    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 12
    .param p1, "bluetoothConnection"    # Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;

    .line 64
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->stopBeforeDisconnect:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtDrive;->driveMotorPorts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/common/NxtMotorPort;

    .line 66
    .local v1, "port":Lcom/google/appinventor/components/common/NxtMotorPort;
    sget-object v6, Lcom/google/appinventor/components/common/NxtMotorMode;->Brake:Lcom/google/appinventor/components/common/NxtMotorMode;

    sget-object v7, Lcom/google/appinventor/components/common/NxtRegulationMode;->Disabled:Lcom/google/appinventor/components/common/NxtRegulationMode;

    sget-object v9, Lcom/google/appinventor/components/common/NxtRunState;->Disabled:Lcom/google/appinventor/components/common/NxtRunState;

    const-wide/16 v10, 0x0

    const-string v3, "Disconnect"

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, v1

    invoke-virtual/range {v2 .. v11}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V

    .line 68
    .end local v1    # "port":Lcom/google/appinventor/components/common/NxtMotorPort;
    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method
