.class public Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.source "NxtUltrasonicSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to an ultrasonic sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_OF_RANGE:I = 0x1e

.field private static final DEFAULT_SENSOR_PORT:Ljava/lang/String; = "4"

.field private static final DEFAULT_TOP_OF_RANGE:I = 0x5a


# instance fields
.field private aboveRangeEventEnabled:Z

.field private belowRangeEventEnabled:Z

.field private bottomOfRange:I

.field private handler:Landroid/os/Handler;

.field private previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

.field private final sensorReader:Ljava/lang/Runnable;

.field private topOfRange:I

.field private withinRangeEventEnabled:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetaboveRangeEventEnabled(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->aboveRangeEventEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbelowRangeEventEnabled(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->belowRangeEventEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbottomOfRange(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->bottomOfRange:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviousState(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsensorReader(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopOfRange(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->topOfRange:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwithinRangeEventEnabled(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->withinRangeEventEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputpreviousState(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDistanceValue(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->getDistanceValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misHandlerNeeded(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 58
    const-string v0, "NxtUltrasonicSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    .line 60
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .line 61
    new-instance v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    .line 96
    const-string v0, "4"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->SensorPort(Ljava/lang/String;)V

    .line 97
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->BottomOfRange(I)V

    .line 98
    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->TopOfRange(I)V

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->BelowRangeEventEnabled(Z)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->WithinRangeEventEnabled(Z)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->AboveRangeEventEnabled(Z)V

    .line 102
    return-void
.end method

.method private configureUltrasonicSensor(Ljava/lang/String;)V
    .locals 5
    .param p1, "functionName"    # Ljava/lang/String;

    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 113
    .local v0, "data":[B
    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 114
    const/4 v3, 0x1

    const/16 v4, 0x41

    aput-byte v4, v0, v3

    .line 115
    aput-byte v2, v0, v2

    .line 116
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsWrite(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;[BI)V

    .line 117
    return-void
.end method

.method private getDistanceValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 8
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

    .line 149
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 150
    .local v1, "data":[B
    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 151
    const/16 v0, 0x42

    const/4 v3, 0x1

    aput-byte v0, v1, v3

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsWrite(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;[BI)V

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_2

    .line 156
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v4}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsGetStatus(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)I

    move-result v4

    .line 157
    .local v4, "countAvailableBytes":I
    if-lez v4, :cond_1

    .line 159
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v5}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->lsRead(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B

    move-result-object v5

    .line 160
    .local v5, "returnPackage":[B
    if-eqz v5, :cond_2

    .line 161
    const/4 v6, 0x4

    invoke-virtual {p0, v5, v6}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->getUBYTEValueFromBytes([BI)I

    move-result v6

    .line 162
    .local v6, "value":I
    if-ltz v6, :cond_0

    const/16 v7, 0xfe

    if-gt v6, v7, :cond_0

    .line 163
    new-instance v2, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v3, v7}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    return-object v2

    .line 165
    .end local v6    # "value":I
    :cond_0
    goto :goto_1

    .line 155
    .end local v4    # "countAvailableBytes":I
    .end local v5    # "returnPackage":[B
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "i":I
    :cond_2
    :goto_1
    new-instance v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    return-object v0
.end method

.method private isHandlerNeeded()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->belowRangeEventEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->withinRangeEventEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->aboveRangeEventEnabled:Z

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
        description = "Distance has gone above the range."
    .end annotation

    .line 328
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AboveRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 329
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

    .line 312
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v0

    .line 314
    .local v0, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->aboveRangeEventEnabled:Z

    .line 316
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v1

    .line 317
    .local v1, "handlerIsNeeded":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 318
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 320
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 321
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .line 322
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    :cond_1
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the distance goes above the TopOfRange."
    .end annotation

    .line 302
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method public BelowRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Distance has gone below the range."
    .end annotation

    .line 254
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BelowRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 255
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

    .line 238
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v0

    .line 240
    .local v0, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->belowRangeEventEnabled:Z

    .line 242
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v1

    .line 243
    .local v1, "handlerIsNeeded":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 244
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 247
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .line 248
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    :cond_1
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the distance goes below the BottomOfRange."
    .end annotation

    .line 228
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 182
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->bottomOfRange:I

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 1
    .param p1, "bottomOfRange"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 193
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->bottomOfRange:I

    .line 194
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .line 195
    return-void
.end method

.method public GetDistance()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current distance in centimeters as a value between 0 and 254, or -1 if the distance can not be read."
    .end annotation

    .line 133
    const-string v0, "GetDistance"

    .line 134
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 135
    return v2

    .line 138
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->getDistanceValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v1

    .line 139
    .local v1, "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    iget-boolean v3, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v3, :cond_1

    .line 140
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 144
    :cond_1
    return v2
.end method

.method public SensorPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "sensorPortLetter"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4"
        editorType = "lego_nxt_sensor_port"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 127
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->setSensorPort(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 205
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->topOfRange:I

    return v0
.end method

.method public TopOfRange(I)V
    .locals 1
    .param p1, "topOfRange"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "90"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 216
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->topOfRange:I

    .line 217
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .line 218
    return-void
.end method

.method public WithinRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Distance has gone within the range."
    .end annotation

    .line 291
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WithinRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 292
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

    .line 275
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v0

    .line 277
    .local v0, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->withinRangeEventEnabled:Z

    .line 279
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->isHandlerNeeded()Z

    move-result v1

    .line 280
    .local v1, "handlerIsNeeded":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 281
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 284
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor$State;

    .line 285
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    :cond_1
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the distance goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .line 265
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3
    .param p1, "functionName"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->Digital12C9V:Lcom/google/appinventor/components/common/NxtSensorType;

    sget-object v2, Lcom/google/appinventor/components/common/NxtSensorMode;->Raw:Lcom/google/appinventor/components/common/NxtSensorMode;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->setInputMode(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;Lcom/google/appinventor/components/common/NxtSensorType;Lcom/google/appinventor/components/common/NxtSensorMode;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->configureUltrasonicSensor(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onDelete()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtUltrasonicSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 340
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    .line 341
    return-void
.end method
