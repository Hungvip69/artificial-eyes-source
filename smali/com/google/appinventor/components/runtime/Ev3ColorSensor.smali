.class public Lcom/google/appinventor/components/runtime/Ev3ColorSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.source "Ev3ColorSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a color sensor on a LEGO MINDSTORMS EV3 robot."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_OF_RANGE:I = 0x1e

.field private static final DEFAULT_TOP_OF_RANGE:I = 0x3c

.field private static final DELAY_MILLISECONDS:I = 0x32

.field private static final SENSOR_TYPE:I = 0x1d


# instance fields
.field private aboveRangeEventEnabled:Z

.field private belowRangeEventEnabled:Z

.field private bottomOfRange:I

.field private colorChangedEventEnabled:Z

.field private eventHandler:Landroid/os/Handler;

.field private mode:Lcom/google/appinventor/components/common/ColorSensorMode;

.field private previousColor:I

.field private previousLightLevel:I

.field private final sensorValueChecker:Ljava/lang/Runnable;

.field private topOfRange:I

.field private withinRangeEventEnabled:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetaboveRangeEventEnabled(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->aboveRangeEventEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbelowRangeEventEnabled(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->belowRangeEventEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbottomOfRange(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bottomOfRange:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcolorChangedEventEnabled(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->colorChangedEventEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeteventHandler(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->eventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmode(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Lcom/google/appinventor/components/common/ColorSensorMode;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviousColor(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviousLightLevel(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettopOfRange(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->topOfRange:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwithinRangeEventEnabled(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->withinRangeEventEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputpreviousColor(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousColor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreviousLightLevel(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSensorValue(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->getSensorValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtoColorName(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->toColorName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 62
    const-string v0, "Ev3ColorSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->Reflected:Lcom/google/appinventor/components/common/ColorSensorMode;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousColor:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->eventHandler:Landroid/os/Handler;

    .line 65
    new-instance v1, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->sensorValueChecker:Ljava/lang/Runnable;

    .line 110
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->eventHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->TopOfRange(I)V

    .line 113
    const/16 v1, 0x1e

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->BottomOfRange(I)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->BelowRangeEventEnabled(Z)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->AboveRangeEventEnabled(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->WithinRangeEventEnabled(Z)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->ColorChangedEventEnabled(Z)V

    .line 118
    sget-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->Reflected:Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->ModeAbstract(Lcom/google/appinventor/components/common/ColorSensorMode;)V

    .line 119
    return-void
.end method

.method private getSensorValue(Ljava/lang/String;)I
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;

    .line 313
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->sensorPortNumber:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    .line 317
    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ColorSensorMode;->toInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 313
    const/4 v2, 0x0

    const/16 v4, 0x1d

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->readInputPercentage(Ljava/lang/String;IIII)I

    move-result v0

    .line 319
    .local v0, "level":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    sget-object v2, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    if-eq v1, v2, :cond_0

    .line 320
    return v0

    .line 324
    :cond_0
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 342
    return v1

    .line 340
    :sswitch_0
    const/4 v1, 0x7

    return v1

    .line 338
    :sswitch_1
    const/4 v1, 0x6

    return v1

    .line 336
    :sswitch_2
    const/4 v1, 0x5

    return v1

    .line 334
    :sswitch_3
    const/4 v1, 0x4

    return v1

    .line 332
    :sswitch_4
    const/4 v1, 0x3

    return v1

    .line 330
    :sswitch_5
    const/4 v1, 0x2

    return v1

    .line 328
    :sswitch_6
    const/4 v1, 0x1

    return v1

    .line 326
    :sswitch_7
    return v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0xc -> :sswitch_6
        0x19 -> :sswitch_5
        0x25 -> :sswitch_4
        0x32 -> :sswitch_3
        0x3e -> :sswitch_2
        0x4b -> :sswitch_1
        0x57 -> :sswitch_0
    .end sparse-switch
.end method

.method private setMode(Lcom/google/appinventor/components/common/ColorSensorMode;)V
    .locals 1
    .param p1, "newMode"    # Lcom/google/appinventor/components/common/ColorSensorMode;

    .line 450
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousColor:I

    .line 451
    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I

    .line 452
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    .line 453
    return-void
.end method

.method private toColorName(I)Ljava/lang/String;
    .locals 3
    .param p1, "colorCode"    # I

    .line 347
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    sget-object v1, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    const-string v2, "No Color"

    if-eq v0, v1, :cond_0

    .line 348
    return-object v2

    .line 351
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 369
    return-object v2

    .line 367
    :pswitch_0
    const-string v0, "Brown"

    return-object v0

    .line 365
    :pswitch_1
    const-string v0, "White"

    return-object v0

    .line 363
    :pswitch_2
    const-string v0, "Red"

    return-object v0

    .line 361
    :pswitch_3
    const-string v0, "Yellow"

    return-object v0

    .line 359
    :pswitch_4
    const-string v0, "Green"

    return-object v0

    .line 357
    :pswitch_5
    const-string v0, "Blue"

    return-object v0

    .line 355
    :pswitch_6
    const-string v0, "Black"

    return-object v0

    .line 353
    :pswitch_7
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public AboveRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone above the range."
    .end annotation

    .line 277
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AboveRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public AboveRangeEventEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 272
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->aboveRangeEventEnabled:Z

    .line 273
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the light level goes above the TopOfRange."
    .end annotation

    .line 261
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method public BelowRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone below the range."
    .end annotation

    .line 223
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BelowRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method public BelowRangeEventEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 218
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->belowRangeEventEnabled:Z

    .line 219
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the light level goes below the BottomOfRange."
    .end annotation

    .line 207
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 163
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bottomOfRange:I

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 0
    .param p1, "bottomOfRange"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 174
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bottomOfRange:I

    .line 175
    return-void
.end method

.method public ColorChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "colorCode"    # I
    .param p2, "colorName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected color has changed. The ColorChanged event will occur if the Mode property is set to \"color\" and the ColorChangedEventEnabled property is set to True."
    .end annotation

    .line 309
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const-string v0, "ColorChanged"

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method public ColorChangedEventEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 299
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->colorChangedEventEnabled:Z

    .line 300
    return-void
.end method

.method public ColorChangedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the ColorChanged event should fire when the Mode property is set to \"color\" and the detected color changes."
    .end annotation

    .line 288
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->colorChangedEventEnabled:Z

    return v0
.end method

.method public GetColorCode()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It returns the color code from 0 to 7 corresponding to no color, black, blue, green, yellow, red, white and brown."
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    sget-object v1, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    if-eq v0, v1, :cond_0

    .line 139
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_0
    const-string v0, "GetColorCode"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->getSensorValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public GetColorName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the color name in one of \"No Color\", \"Black\", \"Blue\", \"Green\", \"Yellow\", \"Red\", \"White\", \"Brown\"."
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    sget-object v1, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    if-eq v0, v1, :cond_0

    .line 150
    const-string v0, "No Color"

    return-object v0

    .line 152
    :cond_0
    const-string v0, "GetColorName"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->getSensorValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->toColorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetLightLevel()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It returns the light level in percentage, or -1 when the light level cannot be read."
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    sget-object v1, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    if-ne v0, v1, :cond_0

    .line 128
    const/4 v0, -0x1

    return v0

    .line 130
    :cond_0
    const-string v0, "GetLightLevel"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->getSensorValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public Mode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the current sensor mode."
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ColorSensorMode;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Mode(Ljava/lang/String;)V
    .locals 5
    .param p1, "modeName"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ColorSensorMode;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "reflected"
        editorType = "lego_ev3_color_sensor_mode"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 381
    invoke-static {p1}, Lcom/google/appinventor/components/common/ColorSensorMode;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ColorSensorMode;

    move-result-object v0

    .line 382
    .local v0, "mode":Lcom/google/appinventor/components/common/ColorSensorMode;
    if-nez v0, :cond_0

    .line 383
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Mode"

    const/16 v4, 0xc1f

    invoke-virtual {v1, p0, v3, v4, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 385
    return-void

    .line 387
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->setMode(Lcom/google/appinventor/components/common/ColorSensorMode;)V

    .line 388
    return-void
.end method

.method public ModeAbstract()Lcom/google/appinventor/components/common/ColorSensorMode;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:Lcom/google/appinventor/components/common/ColorSensorMode;

    return-object v0
.end method

.method public ModeAbstract(Lcom/google/appinventor/components/common/ColorSensorMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/google/appinventor/components/common/ColorSensorMode;

    .line 395
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->setMode(Lcom/google/appinventor/components/common/ColorSensorMode;)V

    .line 396
    return-void
.end method

.method public SetAmbientMode()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the sensor read the light level without reflected light."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 443
    sget-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->Ambient:Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->setMode(Lcom/google/appinventor/components/common/ColorSensorMode;)V

    .line 444
    return-void
.end method

.method public SetColorMode()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enter the color detection mode."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 425
    sget-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->Color:Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->setMode(Lcom/google/appinventor/components/common/ColorSensorMode;)V

    .line 426
    return-void
.end method

.method public SetReflectedMode()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the sensor read the light level with reflected light."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 434
    sget-object v0, Lcom/google/appinventor/components/common/ColorSensorMode;->Reflected:Lcom/google/appinventor/components/common/ColorSensorMode;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->setMode(Lcom/google/appinventor/components/common/ColorSensorMode;)V

    .line 435
    return-void
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 185
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->topOfRange:I

    return v0
.end method

.method public TopOfRange(I)V
    .locals 0
    .param p1, "topOfRange"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "60"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 196
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->topOfRange:I

    .line 197
    return-void
.end method

.method public WithinRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone within the range."
    .end annotation

    .line 250
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WithinRange"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public WithinRangeEventEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 245
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->withinRangeEventEnabled:Z

    .line 246
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the light level goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .line 234
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method public onDelete()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 459
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->onDelete()V

    .line 460
    return-void
.end method
