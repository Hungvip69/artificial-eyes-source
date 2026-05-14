.class public Lcom/google/appinventor/components/runtime/NxtColorSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;
.source "NxtColorSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a color sensor on a LEGO MINDSTORMS NXT robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_OF_RANGE:I = 0x100

.field private static final DEFAULT_SENSOR_PORT:Ljava/lang/String; = "3"

.field private static final DEFAULT_TOP_OF_RANGE:I = 0x2ff

.field private static final mapColorToSensorType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/NxtSensorType;",
            ">;"
        }
    .end annotation
.end field

.field private static final mapSensorValueToColor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aboveRangeEventEnabled:Z

.field private belowRangeEventEnabled:Z

.field private bottomOfRange:I

.field private colorChangedEventEnabled:Z

.field private detectColor:Z

.field private generateColor:I

.field private handler:Landroid/os/Handler;

.field private previousColor:I

.field private previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

.field private final sensorReader:Ljava/lang/Runnable;

.field private topOfRange:I

.field private withinRangeEventEnabled:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetaboveRangeEventEnabled(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->aboveRangeEventEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbelowRangeEventEnabled(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->belowRangeEventEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbottomOfRange(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bottomOfRange:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdetectColor(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviousColor(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviousState(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Lcom/google/appinventor/components/runtime/NxtColorSensor$State;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsensorReader(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopOfRange(Lcom/google/appinventor/components/runtime/NxtColorSensor;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->topOfRange:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwithinRangeEventEnabled(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->withinRangeEventEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputpreviousColor(Lcom/google/appinventor/components/runtime/NxtColorSensor;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousColor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreviousState(Lcom/google/appinventor/components/runtime/NxtColorSensor;Lcom/google/appinventor/components/runtime/NxtColorSensor$State;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetColorValue(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getColorValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLightValue(Lcom/google/appinventor/components/runtime/NxtColorSensor;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misHandlerNeeded(Lcom/google/appinventor/components/runtime/NxtColorSensor;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    .line 54
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    const/high16 v1, -0x10000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/NxtSensorType;->ColorRed:Lcom/google/appinventor/components/common/NxtSensorType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    const v2, -0xff0100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/google/appinventor/components/common/NxtSensorType;->ColorGreen:Lcom/google/appinventor/components/common/NxtSensorType;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    const v3, -0xffff01

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/google/appinventor/components/common/NxtSensorType;->ColorBlue:Lcom/google/appinventor/components/common/NxtSensorType;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    const v4, 0xffffff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/google/appinventor/components/common/NxtSensorType;->ColorNone:Lcom/google/appinventor/components/common/NxtSensorType;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    .line 60
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/high16 v5, -0x1000000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, -0x100

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 89
    const-string v0, "NxtColorSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    .line 91
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .line 92
    const v0, 0xffffff

    iput v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousColor:I

    .line 93
    new-instance v1, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor$1;-><init>(Lcom/google/appinventor/components/runtime/NxtColorSensor;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    .line 144
    const-string v1, "3"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->SensorPort(Ljava/lang/String;)V

    .line 147
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->DetectColor(Z)V

    .line 148
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->ColorChangedEventEnabled(Z)V

    .line 151
    const/16 v2, 0x100

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->BottomOfRange(I)V

    .line 152
    const/16 v2, 0x2ff

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->TopOfRange(I)V

    .line 153
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->BelowRangeEventEnabled(Z)V

    .line 154
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->WithinRangeEventEnabled(Z)V

    .line 155
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->AboveRangeEventEnabled(Z)V

    .line 156
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->GenerateColor(I)V

    .line 157
    return-void
.end method

.method private getColorValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;
    .locals 7
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

    .line 254
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getInputValues(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B

    move-result-object v0

    .line 255
    .local v0, "returnPackage":[B
    if-eqz v0, :cond_0

    .line 256
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getBooleanValueFromBytes([BI)Z

    move-result v1

    .line 257
    .local v1, "valid":Z
    if-eqz v1, :cond_0

    .line 258
    const/16 v2, 0xc

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getSWORDValueFromBytes([BI)I

    move-result v2

    .line 259
    .local v2, "scaledValue":I
    sget-object v3, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    sget-object v3, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapSensorValueToColor:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 261
    .local v3, "color":I
    new-instance v4, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v5, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    return-object v4

    .line 267
    .end local v1    # "valid":Z
    .end local v2    # "scaledValue":I
    .end local v3    # "color":I
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    return-object v1
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

    .line 334
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getInputValues(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)[B

    move-result-object v0

    .line 335
    .local v0, "returnPackage":[B
    if-eqz v0, :cond_0

    .line 336
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getBooleanValueFromBytes([BI)Z

    move-result v1

    .line 337
    .local v1, "valid":Z
    if-eqz v1, :cond_0

    .line 338
    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getUWORDValueFromBytes([BI)I

    move-result v2

    .line 339
    .local v2, "normalizedValue":I
    new-instance v3, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;-><init>(ZLjava/lang/Object;)V

    return-object v3

    .line 344
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

    .line 550
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    if-eqz v0, :cond_0

    .line 551
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->colorChangedEventEnabled:Z

    return v0

    .line 553
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->belowRangeEventEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->withinRangeEventEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->aboveRangeEventEnabled:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public AboveRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone above the range. The AboveRange event will not occur if the DetectColor property is set to True or if the AboveRangeEventEnabled property is set to False."
    .end annotation

    .line 510
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AboveRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 511
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

    .line 492
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v0

    .line 494
    .local v0, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->aboveRangeEventEnabled:Z

    .line 496
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v1

    .line 497
    .local v1, "handlerIsNeeded":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 498
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 500
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 501
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .line 502
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 504
    :cond_1
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the DetectColor property is set to False and the light level goes above the TopOfRange."
    .end annotation

    .line 482
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method public BelowRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone below the range. The BelowRange event will not occur if the DetectColor property is set to True or if the BelowRangeEventEnabled property is set to False."
    .end annotation

    .line 429
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BelowRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 430
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

    .line 411
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v0

    .line 413
    .local v0, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->belowRangeEventEnabled:Z

    .line 415
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v1

    .line 416
    .local v1, "handlerIsNeeded":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 417
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 419
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 420
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .line 421
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    :cond_1
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the DetectColor property is set to False and the light level goes below the BottomOfRange."
    .end annotation

    .line 401
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 355
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bottomOfRange:I

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

    .line 366
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bottomOfRange:I

    .line 367
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .line 368
    return-void
.end method

.method public ColorChanged(I)V
    .locals 3
    .param p1, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Detected color has changed. The ColorChanged event will not occur if the DetectColor property is set to False or if the ColorChangedEventEnabled property is set to False."
    .end annotation

    .line 306
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "ColorChanged"

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 307
    return-void
.end method

.method public ColorChangedEventEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 288
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v0

    .line 290
    .local v0, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->colorChangedEventEnabled:Z

    .line 292
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v1

    .line 293
    .local v1, "handlerIsNeeded":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 294
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 296
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 297
    const v2, 0xffffff

    iput v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousColor:I

    .line 298
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    :cond_1
    return-void
.end method

.method public ColorChangedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the ColorChanged event should fire when the DetectColor property is set to True and the detected color changes."
    .end annotation

    .line 278
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->colorChangedEventEnabled:Z

    return v0
.end method

.method public DetectColor(Z)V
    .locals 4
    .param p1, "detectColor"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 211
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v0

    .line 213
    .local v0, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    .line 214
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "DetectColor"

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->initializeSensor(Ljava/lang/String;)V

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v1

    .line 219
    .local v1, "handlerIsNeeded":Z
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 220
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 222
    :cond_1
    const v2, 0xffffff

    iput v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousColor:I

    .line 223
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .line 224
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 225
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    :cond_2
    return-void
.end method

.method public DetectColor()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the sensor should detect color or light. True indicates that the sensor should detect color; False indicates that the sensor should detect light. If the DetectColor property is set to True, the BelowRange, WithinRange, and AboveRange events will not occur and the sensor will not generate color. If the DetectColor property is set to False, the ColorChanged event will not occur."
    .end annotation

    .line 199
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    return v0
.end method

.method public GenerateColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color that should generated by the sensor. Only None, Red, Green, or Blue are valid values. The sensor will not generate color when the DetectColor property is set to True."
    .end annotation

    .line 524
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->generateColor:I

    return v0
.end method

.method public GenerateColor(I)V
    .locals 4
    .param p1, "generateColor"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "lego_nxt_generated_color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 537
    const-string v0, "GenerateColor"

    .line 538
    .local v0, "functionName":Ljava/lang/String;
    sget-object v1, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->generateColor:I

    .line 540
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->initializeSensor(Ljava/lang/String;)V

    goto :goto_0

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x1a3

    invoke-virtual {v1, p0, v0, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 547
    :cond_1
    :goto_0
    return-void
.end method

.method public GetColor()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current detected color, or the color None if the color can not be read or if the DetectColor property is set to False."
    .end annotation

    .line 234
    const-string v0, "GetColor"

    .line 235
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    const v2, 0xffffff

    if-nez v1, :cond_0

    .line 236
    return v2

    .line 238
    :cond_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    if-nez v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x1a1

    invoke-virtual {v1, p0, v0, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 241
    return v2

    .line 244
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getColorValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v1

    .line 245
    .local v1, "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    iget-boolean v3, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v3, :cond_2

    .line 246
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 250
    :cond_2
    return v2
.end method

.method public GetLightLevel()I
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current light level as a value between 0 and 1023, or -1 if the light level can not be read or if the DetectColor property is set to True."
    .end annotation

    .line 314
    const-string v0, "GetLightLevel"

    .line 315
    .local v0, "functionName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->checkBluetooth(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 316
    return v2

    .line 318
    :cond_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    if-eqz v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x1a2

    invoke-virtual {v1, p0, v0, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 321
    return v2

    .line 324
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->getLightValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;

    move-result-object v1

    .line 325
    .local v1, "sensorValue":Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;, "Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue<Ljava/lang/Integer;>;"
    iget-boolean v3, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->valid:Z

    if-eqz v3, :cond_2

    .line 326
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor$SensorValue;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 330
    :cond_2
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

    .line 176
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->setSensorPort(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 378
    iget v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->topOfRange:I

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

    .line 389
    iput p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->topOfRange:I

    .line 390
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .line 391
    return-void
.end method

.method public WithinRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone within the range. The WithinRange event will not occur if the DetectColor property is set to True or if the WithinRangeEventEnabled property is set to False."
    .end annotation

    .line 471
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WithinRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 472
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

    .line 453
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v0

    .line 455
    .local v0, "handlerWasNeeded":Z
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->withinRangeEventEnabled:Z

    .line 457
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->isHandlerNeeded()Z

    move-result v1

    .line 458
    .local v1, "handlerIsNeeded":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 459
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 461
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 462
    sget-object v2, Lcom/google/appinventor/components/runtime/NxtColorSensor$State;->UNKNOWN:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->previousState:Lcom/google/appinventor/components/runtime/NxtColorSensor$State;

    .line 463
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 465
    :cond_1
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the DetectColor property is set to False and the light level goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .line 442
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method protected initializeSensor(Ljava/lang/String;)V
    .locals 3
    .param p1, "functionName"    # Ljava/lang/String;

    .line 161
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->detectColor:Z

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->ColorFull:Lcom/google/appinventor/components/common/NxtSensorType;

    goto :goto_0

    .line 163
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->mapColorToSensorType:Ljava/util/Map;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->generateColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/NxtSensorType;

    :goto_0
    nop

    .line 164
    .local v0, "sensorType":Lcom/google/appinventor/components/common/NxtSensorType;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    sget-object v2, Lcom/google/appinventor/components/common/NxtSensorMode;->Raw:Lcom/google/appinventor/components/common/NxtSensorMode;

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->setInputMode(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;Lcom/google/appinventor/components/common/NxtSensorType;Lcom/google/appinventor/components/common/NxtSensorMode;)V

    .line 165
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->port:Lcom/google/appinventor/components/common/NxtSensorPort;

    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/NxtColorSensor;->resetInputScaledValue(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtSensorPort;)V

    .line 166
    return-void
.end method

.method public onDelete()V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NxtColorSensor;->sensorReader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 562
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtSensor;->onDelete()V

    .line 563
    return-void
.end method
