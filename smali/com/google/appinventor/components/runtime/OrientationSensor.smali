.class public Lcom/google/appinventor/components/runtime/OrientationSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "OrientationSensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/RealTimeDataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component providing information about the device\'s physical orientation in three dimensions: <ul> <li> <strong>Roll</strong>: 0 degrees when the device is level, increases to      90 degrees as the device is tilted up on its left side, and      decreases to -90 degrees when the device is tilted up on its right side.      </li> <li> <strong>Pitch</strong>: 0 degrees when the device is level, up to      90 degrees as the device is tilted so its top is pointing down,      up to 180 degrees as it gets turned over.  Similarly, as the device      is tilted so its bottom points down, pitch decreases to -90      degrees, then further decreases to -180 degrees as it gets turned all the way      over.</li> <li> <strong>Azimuth</strong>: 0 degrees when the top of the device is      pointing north, 90 degrees when it is pointing east, 180 degrees      when it is pointing south, 270 degrees when it is pointing west,      etc.</li></ul>     These measurements assume that the device itself is not moving.</p>"
    iconName = "images/orientationsensor.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;",
        "Landroid/hardware/SensorEventListener;",
        "Lcom/google/appinventor/components/runtime/Deleteable;",
        "Lcom/google/appinventor/components/runtime/OnPauseListener;",
        "Lcom/google/appinventor/components/runtime/OnResumeListener;",
        "Lcom/google/appinventor/components/runtime/RealTimeDataSource<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field private static final AZIMUTH:I = 0x0

.field private static final DIMENSIONS:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "OrientationSensor"

.field private static final PITCH:I = 0x1

.field private static final ROLL:I = 0x2


# instance fields
.field private final accelerometerSensor:Landroid/hardware/Sensor;

.field private final accels:[F

.field private accelsFilled:Z

.field private accuracy:I

.field private azimuth:F

.field private dataSourceObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private enabled:Z

.field private final inclinationMatrix:[F

.field private listening:Z

.field private final magneticFieldSensor:Landroid/hardware/Sensor;

.field private final mags:[F

.field private magsFilled:Z

.field private pitch:F

.field private roll:F

.field private final rotationMatrix:[F

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private final values:[F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 128
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 105
    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accels:[F

    .line 106
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->mags:[F

    .line 115
    const/16 v1, 0x9

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->rotationMatrix:[F

    .line 116
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->inclinationMatrix:[F

    .line 117
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->values:[F

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->dataSourceObservers:Ljava/util/Set;

    .line 131
    nop

    .line 132
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->magneticFieldSensor:Landroid/hardware/Sensor;

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 141
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/OrientationSensor;->Enabled(Z)V

    .line 142
    return-void
.end method

.method static computeAngle(FF)F
    .locals 4
    .param p0, "pitch"    # F
    .param p1, "roll"    # F

    .line 305
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    float-to-double v2, p1

    .line 307
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    neg-double v2, v2

    .line 305
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private getScreenRotation()I
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 350
    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 351
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 352
    .local v0, "display":Landroid/view/Display;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 353
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FroyoUtil;->getRotation(Landroid/view/Display;)I

    move-result v1

    return v1

    .line 355
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    return v1
.end method

.method private startListening()V
    .locals 3

    .line 145
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->listening:Z

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->magneticFieldSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->listening:Z

    .line 152
    :cond_0
    return-void
.end method

.method private stopListening()V
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->listening:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->listening:Z

    .line 160
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelsFilled:Z

    .line 161
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->magsFilled:Z

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method public Angle()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 285
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/OrientationSensor;->computeAngle(FF)F

    move-result v0

    return v0
.end method

.method public Available()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 201
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 200
    :goto_0
    return v1
.end method

.method public Azimuth()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 266
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->azimuth:F

    return v0
.end method

.method public Enabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 226
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    if-eq v0, p1, :cond_1

    .line 227
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    .line 228
    if-eqz p1, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->startListening()V

    goto :goto_0

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->stopListening()V

    .line 234
    :cond_1
    :goto_0
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 212
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    return v0
.end method

.method public Magnitude()F
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 331
    const/16 v0, 0x5a

    .line 332
    .local v0, "MAX_VALUE":I
    iget v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 333
    .local v3, "npitch":D
    iget v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 334
    .local v1, "nroll":D
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v5

    double-to-float v5, v7

    return v5
.end method

.method public OrientationChanged(FFF)V
    .locals 5
    .param p1, "azimuth"    # F
    .param p2, "pitch"    # F
    .param p3, "roll"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the orientation has changed."
    .end annotation

    .line 183
    const-string v0, "azimuth"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/OrientationSensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    const-string v0, "pitch"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/OrientationSensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    const-string v0, "roll"

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/OrientationSensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "OrientationChanged"

    invoke-static {p0, v0, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public Pitch()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 244
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    return v0
.end method

.method public Roll()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 255
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    return v0
.end method

.method public addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 469
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 470
    return-void
.end method

.method public getDataValue(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 498
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "pitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "roll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "azimuth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 509
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 506
    :pswitch_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 503
    :pswitch_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 500
    :pswitch_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->azimuth:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1e995a94 -> :sswitch_2
        0x35807d -> :sswitch_1
        0x65bc340 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/OrientationSensor;->getDataValue(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic notifyDataObservers(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/OrientationSensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 480
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 481
    .local v1, "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onReceiveValue(Lcom/google/appinventor/components/runtime/RealTimeDataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    .end local v1    # "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    goto :goto_0

    .line 483
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 444
    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 450
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->stopListening()V

    .line 451
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 456
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->stopListening()V

    .line 457
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 462
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->startListening()V

    .line 465
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 369
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 373
    .local v0, "eventType":I
    const-string v1, "OrientationSensor"

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected sensor type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void

    .line 384
    :pswitch_0
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->mags:[F

    invoke-static {v5, v4, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->magsFilled:Z

    .line 386
    goto :goto_0

    .line 376
    :pswitch_1
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accels:[F

    invoke-static {v5, v4, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelsFilled:Z

    .line 379
    iget v2, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accuracy:I

    .line 380
    nop

    .line 394
    :goto_0
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accelsFilled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->magsFilled:Z

    if-eqz v2, :cond_0

    .line 395
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->rotationMatrix:[F

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->inclinationMatrix:[F

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->accels:[F

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->mags:[F

    invoke-static {v2, v5, v6, v7}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 399
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->rotationMatrix:[F

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->values:[F

    invoke-static {v2, v5}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 402
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->values:[F

    aget v2, v2, v4

    float-to-double v4, v2

    .line 403
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 402
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->normalizeAzimuth(F)F

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->azimuth:F

    .line 404
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->values:[F

    aget v2, v2, v3

    float-to-double v2, v2

    .line 405
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 404
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->normalizePitch(F)F

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    .line 408
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    float-to-double v2, v2

    .line 409
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    neg-double v2, v2

    double-to-float v2, v2

    .line 408
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/OrientationSensorUtil;->normalizeRoll(F)F

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    .line 412
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/OrientationSensor;->getScreenRotation()I

    move-result v2

    .line 413
    .local v2, "rotation":I
    packed-switch v2, :pswitch_data_1

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal value for getScreenRotation(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 425
    :pswitch_2
    iget v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    .line 426
    .local v1, "temp":F
    iget v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    iput v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    .line 427
    iput v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    .line 428
    goto :goto_1

    .line 422
    .end local v1    # "temp":F
    :pswitch_3
    iget v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    neg-float v1, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    .line 423
    goto :goto_1

    .line 417
    :pswitch_4
    iget v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    neg-float v1, v1

    .line 418
    .restart local v1    # "temp":F
    iget v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    neg-float v3, v3

    iput v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    .line 419
    iput v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    .line 420
    goto :goto_1

    .line 415
    .end local v1    # "temp":F
    :pswitch_5
    nop

    .line 436
    :goto_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->azimuth:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->pitch:F

    iget v4, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->roll:F

    invoke-virtual {p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/OrientationSensor;->OrientationChanged(FFF)V

    .line 439
    .end local v0    # "eventType":I
    .end local v2    # "rotation":I
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 474
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/OrientationSensor;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 475
    return-void
.end method
