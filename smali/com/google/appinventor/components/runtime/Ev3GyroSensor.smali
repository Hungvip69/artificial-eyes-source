.class public Lcom/google/appinventor/components/runtime/Ev3GyroSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.source "Ev3GyroSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a gyro sensor on a LEGO MINDSTORMS EV3 robot."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DELAY_MILLISECONDS:I = 0x32

.field private static final SENSOR_TYPE:I = 0x20


# instance fields
.field private eventHandler:Landroid/os/Handler;

.field private mode:Lcom/google/appinventor/components/common/GyroSensorMode;

.field private previousValue:D

.field private sensorValueChangedEventEnabled:Z

.field private final sensorValueChecker:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgeteventHandler(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->eventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmode(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Lcom/google/appinventor/components/common/GyroSensorMode;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:Lcom/google/appinventor/components/common/GyroSensorMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviousValue(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)D
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->previousValue:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputpreviousValue(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;D)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->previousValue:D

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSensorValue(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;Ljava/lang/String;)D
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->getSensorValue(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 53
    const-string v0, "Ev3GyroSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/google/appinventor/components/common/GyroSensorMode;->Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:Lcom/google/appinventor/components/common/GyroSensorMode;

    .line 46
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->previousValue:D

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorValueChangedEventEnabled:Z

    .line 55
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->eventHandler:Landroid/os/Handler;

    .line 56
    new-instance v1, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorValueChecker:Ljava/lang/Runnable;

    .line 81
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->eventHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    sget-object v1, Lcom/google/appinventor/components/common/GyroSensorMode;->Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->ModeAbstract(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->SensorValueChangedEventEnabled(Z)V

    .line 85
    return-void
.end method

.method private getSensorValue(Ljava/lang/String;)D
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;

    .line 187
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorPortNumber:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:Lcom/google/appinventor/components/common/GyroSensorMode;

    .line 191
    invoke-virtual {v0}, Lcom/google/appinventor/components/common/GyroSensorMode;->toInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 187
    const/4 v2, 0x0

    const/16 v4, 0x20

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->readInputSI(Ljava/lang/String;IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method private setMode(Lcom/google/appinventor/components/common/GyroSensorMode;)V
    .locals 2
    .param p1, "newMode"    # Lcom/google/appinventor/components/common/GyroSensorMode;

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:Lcom/google/appinventor/components/common/GyroSensorMode;

    if-eq p1, v0, :cond_0

    .line 196
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->previousValue:D

    .line 199
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:Lcom/google/appinventor/components/common/GyroSensorMode;

    .line 200
    return-void
.end method


# virtual methods
.method public GetSensorValue()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current angle or rotation speed based on current mode, or -1 if the value cannot be read from sensor."
    .end annotation

    .line 94
    const-string v0, ""

    .line 95
    .local v0, "functionName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->getSensorValue(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1
.end method

.method public Mode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The sensor mode can be a text constant of either \"rate\" or \"angle\", which correspond to SetAngleMode or SetRateMode respectively."
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:Lcom/google/appinventor/components/common/GyroSensorMode;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/GyroSensorMode;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Mode(Ljava/lang/String;)V
    .locals 5
    .param p1, "modeName"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/GyroSensorMode;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "angle"
        editorType = "lego_ev3_gyro_sensor_mode"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 106
    invoke-static {p1}, Lcom/google/appinventor/components/common/GyroSensorMode;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/GyroSensorMode;

    move-result-object v0

    .line 107
    .local v0, "gyroMode":Lcom/google/appinventor/components/common/GyroSensorMode;
    if-nez v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Mode"

    const/16 v4, 0xc1f

    invoke-virtual {v1, p0, v3, v4, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 110
    return-void

    .line 112
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->setMode(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    .line 113
    return-void
.end method

.method public ModeAbstract()Lcom/google/appinventor/components/common/GyroSensorMode;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:Lcom/google/appinventor/components/common/GyroSensorMode;

    return-object v0
.end method

.method public ModeAbstract(Lcom/google/appinventor/components/common/GyroSensorMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/google/appinventor/components/common/GyroSensorMode;

    .line 120
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->setMode(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    .line 121
    return-void
.end method

.method public SensorValueChanged(D)V
    .locals 3
    .param p1, "sensorValue"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called then the sensor value changed."
    .end annotation

    .line 183
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "SensorValueChanged"

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method public SensorValueChangedEventEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 175
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorValueChangedEventEnabled:Z

    .line 176
    return-void
.end method

.method public SensorValueChangedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the SensorValueChanged event should fire when the sensor value changed."
    .end annotation

    .line 165
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->sensorValueChangedEventEnabled:Z

    return v0
.end method

.method public SetAngleMode()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measures the orientation of the sensor."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    sget-object v0, Lcom/google/appinventor/components/common/GyroSensorMode;->Angle:Lcom/google/appinventor/components/common/GyroSensorMode;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->setMode(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    .line 148
    return-void
.end method

.method public SetRateMode()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measures the angular velocity of the sensor."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    sget-object v0, Lcom/google/appinventor/components/common/GyroSensorMode;->Rate:Lcom/google/appinventor/components/common/GyroSensorMode;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->setMode(Lcom/google/appinventor/components/common/GyroSensorMode;)V

    .line 157
    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 205
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->onDelete()V

    .line 206
    return-void
.end method
