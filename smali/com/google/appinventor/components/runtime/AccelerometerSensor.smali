.class public Lcom/google/appinventor/components/runtime/AccelerometerSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "AccelerometerSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/RealTimeDataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that can detect shaking and measure acceleration approximately in three dimensions using SI units (m/s<sup>2</sup>).  The components are: <ul>\n<li> <strong>xAccel</strong>: 0 when the phone is at rest on a flat      surface, positive when the phone is tilted to the right (i.e.,      its left side is raised), and negative when the phone is tilted      to the left (i.e., its right size is raised).</li>\n <li> <strong>yAccel</strong>: 0 when the phone is at rest on a flat      surface, positive when its bottom is raised, and negative when      its top is raised. </li>\n <li> <strong>zAccel</strong>: Equal to -9.8 (earth\'s gravity in meters per      second per second when the device is at rest parallel to the ground      with the display facing up,      0 when perpendicular to the ground, and +9.8 when facing down.       The value can also be affected by accelerating it with or against      gravity. </li></ul>"
    iconName = "images/accelerometersensor.png"
    nonVisible = true
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;",
        "Lcom/google/appinventor/components/runtime/OnPauseListener;",
        "Lcom/google/appinventor/components/runtime/OnResumeListener;",
        "Lcom/google/appinventor/components/runtime/SensorComponent;",
        "Landroid/hardware/SensorEventListener;",
        "Lcom/google/appinventor/components/runtime/Deleteable;",
        "Lcom/google/appinventor/components/runtime/RealTimeDataSource<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AccelerometerSensor"

.field private static final SENSOR_CACHE_SIZE:I = 0xa

.field private static final moderateShakeThreshold:D = 13.0

.field private static final strongShakeThreshold:D = 20.0

.field private static final weakShakeThreshold:D = 5.0


# instance fields
.field private final X_CACHE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Y_CACHE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final Z_CACHE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private accelerometerSensor:Landroid/hardware/Sensor;

.field private accuracy:I

.field private final androidUIHandler:Landroid/os/Handler;

.field private final dataSourceObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile deviceDefaultOrientation:I

.field private enabled:Z

.field private legacyMode:Z

.field private minimumInterval:I

.field private final resources:Landroid/content/res/Resources;

.field private sensitivity:Lcom/google/appinventor/components/common/Sensitivity;

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private timeLastShook:J

.field private final windowManager:Landroid/view/WindowManager;

.field private xAccel:F

.field private yAccel:F

.field private zAccel:F


# direct methods
.method static bridge synthetic -$$Nest$fgetdeviceDefaultOrientation(Lcom/google/appinventor/components/runtime/AccelerometerSensor;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->deviceDefaultOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputdeviceDefaultOrientation(Lcom/google/appinventor/components/runtime/AccelerometerSensor;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->deviceDefaultOrientation:I

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 154
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->X_CACHE:Ljava/util/Queue;

    .line 111
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Y_CACHE:Ljava/util/Queue;

    .line 112
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Z_CACHE:Ljava/util/Queue;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->legacyMode:Z

    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->dataSourceObservers:Ljava/util/Set;

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    .line 159
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->resources:Landroid/content/res/Resources;

    .line 160
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->windowManager:Landroid/view/WindowManager;

    .line 161
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 162
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    .line 163
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->androidUIHandler:Landroid/os/Handler;

    .line 164
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->startListening()V

    .line 165
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->MinimumInterval(I)V

    .line 166
    sget-object v0, Lcom/google/appinventor/components/common/Sensitivity;->Moderate:Lcom/google/appinventor/components/common/Sensitivity;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->SensitivityAbstract(Lcom/google/appinventor/components/common/Sensitivity;)V

    .line 167
    return-void
.end method

.method private addToSensorCache(Ljava/util/Queue;F)V
    .locals 2
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .line 430
    .local p1, "cache":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Float;>;"
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 431
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 433
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 434
    return-void
.end method

.method private isShaking(Ljava/util/Queue;F)Z
    .locals 11
    .param p2, "currentValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Float;",
            ">;F)Z"
        }
    .end annotation

    .line 442
    .local p1, "cache":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Float;>;"
    const/4 v0, 0x0

    .line 443
    .local v0, "average":F
    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 444
    .local v2, "value":F
    add-float/2addr v0, v2

    .line 445
    .end local v2    # "value":F
    goto :goto_0

    .line 446
    :cond_0
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 447
    sub-float v1, v0, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 449
    .local v1, "delta":F
    sget-object v2, Lcom/google/appinventor/components/runtime/AccelerometerSensor$2;->$SwitchMap$com$google$appinventor$components$common$Sensitivity:[I

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensitivity:Lcom/google/appinventor/components/common/Sensitivity;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/Sensitivity;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-wide/high16 v3, 0x402a000000000000L    # 13.0

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v2, :pswitch_data_0

    .line 457
    return v8

    .line 455
    :pswitch_0
    float-to-double v5, v1

    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    cmpl-double v2, v5, v9

    if-lez v2, :cond_1

    float-to-double v5, v1

    cmpg-double v2, v5, v3

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    return v7

    .line 453
    :pswitch_1
    float-to-double v9, v1

    cmpl-double v2, v9, v3

    if-lez v2, :cond_2

    float-to-double v2, v1

    cmpg-double v4, v2, v5

    if-gez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    return v7

    .line 451
    :pswitch_2
    float-to-double v2, v1

    cmpl-double v4, v2, v5

    if-lez v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startListening()V
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;-><init>(Lcom/google/appinventor/components/runtime/AccelerometerSensor;)V

    const-wide/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 359
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->accelerometerSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 360
    return-void
.end method

.method private stopListening()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 365
    return-void
.end method


# virtual methods
.method public AccelerationChanged(FFF)V
    .locals 7
    .param p1, "xAccel"    # F
    .param p2, "yAccel"    # F
    .param p3, "zAccel"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 259
    iput p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    .line 260
    iput p2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    .line 261
    iput p3, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->zAccel:F

    .line 263
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->X_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->addToSensorCache(Ljava/util/Queue;F)V

    .line 264
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Y_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->addToSensorCache(Ljava/util/Queue;F)V

    .line 265
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Z_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v0, p3}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->addToSensorCache(Ljava/util/Queue;F)V

    .line 268
    const-string v0, "X"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    const-string v0, "Y"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    const-string v0, "Z"

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 276
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->X_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v2, p1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->isShaking(Ljava/util/Queue;F)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Y_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v2, p2}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->isShaking(Ljava/util/Queue;F)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Z_CACHE:Ljava/util/Queue;

    invoke-direct {p0, v2, p3}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->isShaking(Ljava/util/Queue;F)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->timeLastShook:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->timeLastShook:J

    iget v4, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->minimumInterval:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 278
    :cond_1
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->timeLastShook:J

    .line 279
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->Shaking()V

    .line 282
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const/4 v2, 0x2

    aput-object v4, v5, v2

    const-string v2, "AccelerationChanged"

    invoke-static {p0, v2, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method public Available()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns whether the accelerometer is available on the device."
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 328
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
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

    .line 379
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-ne v0, p1, :cond_0

    .line 380
    return-void

    .line 382
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    .line 383
    if-eqz p1, :cond_1

    .line 384
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->startListening()V

    goto :goto_0

    .line 386
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->stopListening()V

    .line 388
    :goto_0
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 341
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    return v0
.end method

.method public LegacyMode(Z)V
    .locals 0
    .param p1, "legacyMode"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Prior to the release that added this property the AccelerometerSensor component passed through sensor values directly as received from the Android system. However these values do not compensate for tablets that default to Landscape mode, requiring the MIT App Inventor programmer to compensate. However compensating would result in incorrect results in Portrait mode devices such as phones. We now detect Landscape mode tablets and perform the compensation. However if your project is already compensating for the change, you will now get incorrect results. Although our preferred solution is for you to update your project, you can also just set this property to \u201ctrue\u201d and our compensation code will be deactivated. Note: We recommend that you update your project as we may remove this property in a future release."
        userVisible = false
    .end annotation

    .line 479
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->legacyMode:Z

    .line 480
    return-void
.end method

.method public LegacyMode()Z
    .locals 1

    .line 483
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->legacyMode:Z

    return v0
.end method

.method public MinimumInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The minimum interval, in milliseconds, between phone shakes"
    .end annotation

    .line 181
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->minimumInterval:I

    return v0
.end method

.method public MinimumInterval(I)V
    .locals 0
    .param p1, "interval"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "400"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 195
    iput p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->minimumInterval:I

    .line 196
    return-void
.end method

.method public Sensitivity()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how sensitive the accelerometer is. The choices are: 1 = weak, 2 = moderate,  3 = strong."
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensitivity:Lcom/google/appinventor/components/common/Sensitivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/Sensitivity;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public Sensitivity(I)V
    .locals 5
    .param p1, "sensitivity"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Sensitivity;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "accelerometer_sensitivity"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/Sensitivity;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/Sensitivity;

    move-result-object v0

    .line 246
    .local v0, "level":Lcom/google/appinventor/components/common/Sensitivity;
    if-nez v0, :cond_0

    .line 247
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 248
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 247
    const-string v2, "Sensitivity"

    const/16 v4, 0x76d

    invoke-virtual {v1, p0, v2, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 249
    return-void

    .line 251
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->SensitivityAbstract(Lcom/google/appinventor/components/common/Sensitivity;)V

    .line 252
    return-void
.end method

.method public SensitivityAbstract()Lcom/google/appinventor/components/common/Sensitivity;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensitivity:Lcom/google/appinventor/components/common/Sensitivity;

    return-object v0
.end method

.method public SensitivityAbstract(Lcom/google/appinventor/components/common/Sensitivity;)V
    .locals 0
    .param p1, "sensitivity"    # Lcom/google/appinventor/components/common/Sensitivity;

    .line 228
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->sensitivity:Lcom/google/appinventor/components/common/Sensitivity;

    .line 229
    return-void
.end method

.method public Shaking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 314
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Shaking"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 315
    return-void
.end method

.method public XAccel()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 399
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    return v0
.end method

.method public YAccel()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 411
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    return v0
.end method

.method public ZAccel()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 423
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->zAccel:F

    return v0
.end method

.method public addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 541
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 542
    return-void
.end method

.method public getDataValue(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 572
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v0, "Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_1
    const-string v0, "Y"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    const-string v0, "X"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 583
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 580
    :pswitch_3
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->zAccel:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 577
    :pswitch_4
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 574
    :pswitch_5
    iget v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->getDataValue(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceDefaultOrientation()I
    .locals 6

    .line 286
    nop

    .line 291
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 292
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 294
    .local v1, "rotation":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccelerometerSensor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config.orientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v2, 0x2

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v2, :cond_4

    :cond_1
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    :cond_2
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v3, :cond_3

    goto :goto_0

    .line 305
    :cond_3
    return v3

    .line 303
    :cond_4
    :goto_0
    return v2
.end method

.method public bridge synthetic notifyDataObservers(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 552
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 553
    .local v1, "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onReceiveValue(Lcom/google/appinventor/components/runtime/RealTimeDataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 554
    .end local v1    # "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    goto :goto_0

    .line 555
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 510
    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 534
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 535
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->stopListening()V

    .line 537
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 525
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->stopListening()V

    .line 528
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 516
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 517
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->startListening()V

    .line 519
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 489
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->enabled:Z

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 493
    .local v0, "values":[F
    iget v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->deviceDefaultOrientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->legacyMode:Z

    if-nez v1, :cond_0

    .line 495
    aget v1, v0, v2

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    .line 496
    aget v1, v0, v3

    neg-float v1, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    goto :goto_0

    .line 498
    :cond_0
    aget v1, v0, v3

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    .line 499
    aget v1, v0, v2

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    .line 501
    :goto_0
    aget v1, v0, v4

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->zAccel:F

    .line 502
    iget v1, p1, Landroid/hardware/SensorEvent;->accuracy:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->accuracy:I

    .line 503
    iget v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->xAccel:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->yAccel:F

    iget v3, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->zAccel:F

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->AccelerationChanged(FFF)V

    .line 505
    .end local v0    # "values":[F
    :cond_1
    return-void
.end method

.method public removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 546
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 547
    return-void
.end method
