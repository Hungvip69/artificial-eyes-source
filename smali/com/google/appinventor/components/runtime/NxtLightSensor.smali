.class public Lcom/google/appinventor/components/runtime/NxtLightSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.source "NxtLightSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a light sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtLightSensor$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_OF_RANGE:I = 0x100

.field private static final DEFAULT_SENSOR_PORT:Ljava/lang/String; = "3"

.field private static final DEFAULT_TOP_OF_RANGE:I = 0x2ff


# instance fields
.field private aboveRangeEventEnabled:Z

.field private belowRangeEventEnabled:Z

.field private bottomOfRange:I

.field private generateLight:Z

.field private handler:Landroid/os/Handler;

.field private previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

.field private final sensorReader:Ljava/lang/Runnable;

.field private topOfRange:I

.field private withinRangeEventEnabled:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetaboveRangeEventEnabled(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->aboveRangeEventEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbelowRangeEventEnabled(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->belowRangeEventEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbottomOfRange(Lcom/google/appinventor/components/runtime/NxtLightSensor;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bottomOfRange:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviousState(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Lcom/google/appinventor/components/runtime/NxtLightSensor$State;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsensorReader(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopOfRange(Lcom/google/appinventor/components/runtime/NxtLightSensor;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->topOfRange:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwithinRangeEventEnabled(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->withinRangeEventEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputpreviousState(Lcom/google/appinventor/components/runtime/NxtLightSensor;Lcom/google/appinventor/components/runtime/NxtLightSensor$State;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLightValue(Lcom/google/appinventor/components/runtime/NxtLightSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misHandlerNeeded(Lcom/google/appinventor/components/runtime/NxtLightSensor;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 59
    const-string v0, "NxtLightSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    .line 61
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 62
    new-instance v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtLightSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    .line 97
    const-string v0, "3"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->SensorPort(Ljava/lang/String;)V

    .line 98
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->BottomOfRange(I)V

    .line 99
    const/16 v0, 0x2ff

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->TopOfRange(I)V

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->BelowRangeEventEnabled(Z)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->WithinRangeEventEnabled(Z)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->AboveRangeEventEnabled(Z)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->GenerateLight(Z)V

    .line 104
    return-void
.end method

.method private getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->getInputValues(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B

    move-result-object v0

    .line 165
    .local v0, "returnPackage":[B
    if-eqz v0, :cond_0

    .line 166
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->getBooleanValueFromBytes([BI)Z

    move-result v1

    .line 167
    .local v1, "valid":Z
    if-eqz v1, :cond_0

    .line 168
    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->getUWORDValueFromBytes([BI)I

    move-result v2

    .line 169
    .local v2, "normalizedValue":I
    new-instance v3, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    return-object v3

    .line 174
    .end local v1    # "valid":Z
    .end local v2    # "normalizedValue":I
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    return-object v1
.end method

.method private isHandlerNeeded()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->belowRangeEventEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->withinRangeEventEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->aboveRangeEventEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public AboveRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone above the range."
    .end annotation

    .line 331
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AboveRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 332
    return-void
.end method

.method public AboveRangeEventEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 315
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v0

    .line 317
    .local v0, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->aboveRangeEventEnabled:Z

    .line 319
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v1

    .line 320
    .local v1, "handlerIsNeeded":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 321
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 323
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 324
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 325
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    :cond_1
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the light level goes above the TopOfRange."
    .end annotation

    .line 305
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method public BelowRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone below the range."
    .end annotation

    .line 257
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BelowRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 258
    return-void
.end method

.method public BelowRangeEventEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 241
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v0

    .line 243
    .local v0, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->belowRangeEventEnabled:Z

    .line 245
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v1

    .line 246
    .local v1, "handlerIsNeeded":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 247
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 250
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 251
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    :cond_1
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the light level goes below the BottomOfRange."
    .end annotation

    .line 231
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 185
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bottomOfRange:I

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 1
    .param p1, "bottomOfRange"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "256"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 196
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bottomOfRange:I

    .line 197
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 198
    return-void
.end method

.method public GenerateLight(Z)V
    .locals 1
    .param p1, "generateLight"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 140
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->generateLight:Z

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "GenerateLight"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->initializeSensor(Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method

.method public GenerateLight()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the light sensor should generate light."
    .end annotation

    .line 130
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->generateLight:Z

    return v0
.end method

.method public GetLightLevel()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current light level as a value between 0 and 1023, or -1 if the light level can not be read."
    .end annotation

    .line 149
    const-string v0, "GetLightLevel"

    .line 150
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 151
    return v2

    .line 154
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v1

    .line 155
    .local v1, "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    iget-boolean v3, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v3, :cond_1

    .line 156
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 160
    :cond_1
    return v2
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->setSensorPort(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 208
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->topOfRange:I

    return v0
.end method

.method public TopOfRange(I)V
    .locals 1
    .param p1, "topOfRange"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "767"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 219
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->topOfRange:I

    .line 220
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 221
    return-void
.end method

.method public WithinRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone within the range."
    .end annotation

    .line 294
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WithinRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 295
    return-void
.end method

.method public WithinRangeEventEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 278
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v0

    .line 280
    .local v0, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->withinRangeEventEnabled:Z

    .line 282
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->isHandlerNeeded()Z

    move-result v1

    .line 283
    .local v1, "handlerIsNeeded":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 284
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 286
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 287
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtLightSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtLightSensor$State;

    .line 288
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    :cond_1
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the light level goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .line 268
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3
    .param p1, "functionName"    # Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    .line 109
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->generateLight:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->LightOn:Lcom/google/appinventor/components/common/NxtSensorType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->LightOff:Lcom/google/appinventor/components/common/NxtSensorType;

    :goto_0
    sget-object v2, Lcom/google/appinventor/components/common/NxtSensorMode;->Percentage:Lcom/google/appinventor/components/common/NxtSensorMode;

    .line 108
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtLightSensor;->setInputMode(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;Lcom/google/appinventor/components/common/NxtSensorType;Lcom/google/appinventor/components/common/NxtSensorMode;)V

    .line 111
    return-void
.end method

.method public onDelete()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtLightSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 343
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    .line 344
    return-void
.end method
