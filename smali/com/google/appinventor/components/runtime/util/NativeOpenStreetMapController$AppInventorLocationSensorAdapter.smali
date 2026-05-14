.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;
.implements Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppInventorLocationSensorAdapter"
.end annotation


# instance fields
.field private consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

.field private enabled:Z

.field private lastLocation:Landroid/location/Location;

.field private source:Lcom/google/appinventor/components/runtime/LocationSensor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 234
    return-void
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->lastLocation:Landroid/location/Location;

    return-object v0
.end method

.method public onDistanceIntervalChanged(I)V
    .locals 0
    .param p1, "distance"    # I

    .line 186
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .line 190
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->lastLocation:Landroid/location/Location;

    .line 191
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    invoke-interface {v0, p1, p0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;->onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    .line 194
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 206
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 202
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 198
    return-void
.end method

.method public onTimeIntervalChanged(I)V
    .locals 0
    .param p1, "time"    # I

    .line 182
    return-void
.end method

.method public setSource(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .locals 2
    .param p1, "source"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-ne v0, p1, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 174
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 178
    :cond_2
    return-void
.end method

.method public startLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;)Z
    .locals 2
    .param p1, "consumer"    # Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 210
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->consumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 213
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    .line 215
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    return v0
.end method

.method public stopLocationProvider()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->source:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 223
    :cond_0
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;->enabled:Z

    .line 224
    return-void
.end method
