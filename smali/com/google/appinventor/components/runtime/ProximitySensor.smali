.class public Lcom/google/appinventor/components/runtime/ProximitySensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ProximitySensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/RealTimeDataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component that can measures the proximity of an object in cm relative to the view screen of a device. This sensor is typically used to determine whether a handset is being held up to a persons ear; i.e. lets you determine how far away an object is from a device. Many devices return the absolute distance, in cm, but some return only near and far values. In this case, the sensor usually reports its maximum range value in the far state and a lesser value in the near state.</p>"
    iconName = "images/proximitysensor.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;",
        "Lcom/google/appinventor/components/runtime/OnStopListener;",
        "Lcom/google/appinventor/components/runtime/OnResumeListener;",
        "Lcom/google/appinventor/components/runtime/SensorComponent;",
        "Lcom/google/appinventor/components/runtime/OnPauseListener;",
        "Landroid/hardware/SensorEventListener;",
        "Lcom/google/appinventor/components/runtime/Deleteable;",
        "Lcom/google/appinventor/components/runtime/RealTimeDataSource<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataSourceObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private distance:F

.field private enabled:Z

.field private keepRunningWhenOnPause:Z

.field private final proximitySensor:Landroid/hardware/Sensor;

.field private final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 78
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->dataSourceObservers:Ljava/util/Set;

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    .line 84
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 85
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    .line 86
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->startListening()V

    .line 87
    return-void
.end method

.method private startListening()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 137
    return-void
.end method

.method private stopListening()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 144
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports whether or not the device has a proximity sensor."
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 100
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public Distance()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the distance from the object to the device"
    .end annotation

    .line 261
    iget v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

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
        description = "If enabled, then device will listen for changes in proximity."
    .end annotation

    .line 198
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-ne v0, p1, :cond_0

    .line 199
    return-void

    .line 202
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    .line 203
    if-eqz p1, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->startListening()V

    goto :goto_0

    .line 206
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    .line 208
    :goto_0
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 184
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    return v0
.end method

.method public KeepRunningWhenOnPause(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true, it will keep sensing for proximity changes even when the app is not visible"
    .end annotation

    .line 232
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->keepRunningWhenOnPause:Z

    .line 233
    return-void
.end method

.method public KeepRunningWhenOnPause()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 217
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->keepRunningWhenOnPause:Z

    return v0
.end method

.method public MaximumRange()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports the Maximum Range of the device\'s ProximitySensor"
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    return v0
.end method

.method public ProximityChanged(F)V
    .locals 3
    .param p1, "distance"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when distance (in cm) of the object to the device changes."
    .end annotation

    .line 243
    iput p1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

    .line 247
    const-string v0, "distance"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/ProximitySensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    iget v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "ProximityChanged"

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method public addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 277
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public getDataValue(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 302
    const-string v0, "distance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 305
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ProximitySensor;->getDataValue(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic notifyDataObservers(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ProximitySensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 289
    .local v1, "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onReceiveValue(Lcom/google/appinventor/components/runtime/RealTimeDataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    .end local v1    # "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    goto :goto_0

    .line 291
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 273
    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    .line 122
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->keepRunningWhenOnPause:Z

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    .line 129
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->startListening()V

    .line 108
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 154
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 156
    .local v0, "values":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

    .line 157
    iget v1, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->distance:F

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ProximitySensor;->ProximityChanged(F)V

    .line 159
    .end local v0    # "values":[F
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProximitySensor;->stopListening()V

    .line 115
    :cond_0
    return-void
.end method

.method public removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 282
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProximitySensor;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method
