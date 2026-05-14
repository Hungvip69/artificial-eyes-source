.class Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;
.super Ljava/lang/Object;
.source "LocationSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

.field final synthetic val$argAltitude:D

.field final synthetic val$argLatitude:D

.field final synthetic val$argLongitude:D

.field final synthetic val$argSpeed:F

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;DDDFLandroid/location/Location;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    .line 126
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->this$1:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    iput-wide p2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->val$argLatitude:D

    iput-wide p4, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->val$argLongitude:D

    iput-wide p6, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->val$argAltitude:D

    iput p8, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->val$argSpeed:F

    iput-object p9, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->this$1:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->val$argLatitude:D

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->val$argLongitude:D

    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->val$argAltitude:D

    iget v8, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->val$argSpeed:F

    invoke-virtual/range {v1 .. v8}, Lcom/google/appinventor/components/runtime/LocationSensor;->LocationChanged(DDDF)V

    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->this$1:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->-$$Nest$fgetlisteners(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .line 131
    .local v1, "listener":Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->val$location:Landroid/location/Location;

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->onLocationChanged(Landroid/location/Location;)V

    .line 132
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method
