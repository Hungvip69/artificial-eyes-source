.class public Lcom/google/appinventor/components/runtime/LocationSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "LocationSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/RealTimeDataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component providing location information, including longitude, latitude, altitude (if supported by the device), speed (if supported by the device), and address.  This can also perform \"geocoding\", converting a given address (not necessarily the current one) to a latitude (with the <code>LatitudeFromAddress</code> method) and a longitude (with the <code>LongitudeFromAddress</code> method).</p>\n<p>In order to function, the component must have its <code>Enabled</code> property set to True, and the device must have location sensing enabled through wireless networks or GPS satellites (if outdoors).</p>\nLocation information might not be immediately available when an app starts.  You\'ll have to wait a short time for a location provider to be found and used, or wait for the LocationChanged event"
    iconName = "images/locationSensor.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.ACCESS_FINE_LOCATION,android.permission.ACCESS_COARSE_LOCATION,android.permission.ACCESS_MOCK_LOCATION,android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;,
        Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;",
        "Lcom/google/appinventor/components/runtime/Component;",
        "Lcom/google/appinventor/components/runtime/OnStopListener;",
        "Lcom/google/appinventor/components/runtime/OnResumeListener;",
        "Lcom/google/appinventor/components/runtime/Deleteable;",
        "Lcom/google/appinventor/components/runtime/RealTimeDataSource<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final UNKNOWN_VALUE:I


# instance fields
.field private allProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private altitude:D

.field private final androidUIHandler:Landroid/os/Handler;

.field private dataSourceObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private distanceInterval:I

.field private enabled:Z

.field private geocoder:Landroid/location/Geocoder;

.field private final handler:Landroid/os/Handler;

.field private hasAltitude:Z

.field private hasLocationData:Z

.field private havePermission:Z

.field private initialized:Z

.field private lastLocation:Landroid/location/Location;

.field private latitude:D

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;",
            ">;"
        }
    .end annotation
.end field

.field private listening:Z

.field private final locationCriteria:Landroid/location/Criteria;

.field private final locationManager:Landroid/location/LocationManager;

.field private locationProvider:Landroid/location/LocationProvider;

.field private longitude:D

.field private myLocationListener:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

.field private providerLocked:Z

.field private providerName:Ljava/lang/String;

.field private speed:F

.field private timeInterval:I


# direct methods
.method static bridge synthetic -$$Nest$fgetallProviders(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaltitude(Lcom/google/appinventor/components/runtime/LocationSensor;)D
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/LocationSensor;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetenabled(Lcom/google/appinventor/components/runtime/LocationSensor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlatitude(Lcom/google/appinventor/components/runtime/LocationSensor;)D
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlisteners(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listeners:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlongitude(Lcom/google/appinventor/components/runtime/LocationSensor;)D
    .locals 2

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetproviderName(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspeed(Lcom/google/appinventor/components/runtime/LocationSensor;)F
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->speed:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputaltitude(Lcom/google/appinventor/components/runtime/LocationSensor;D)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhasAltitude(Lcom/google/appinventor/components/runtime/LocationSensor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasAltitude:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhasLocationData(Lcom/google/appinventor/components/runtime/LocationSensor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasLocationData:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/LocationSensor;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->havePermission:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastLocation(Lcom/google/appinventor/components/runtime/LocationSensor;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->lastLocation:Landroid/location/Location;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlatitude(Lcom/google/appinventor/components/runtime/LocationSensor;D)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlongitude(Lcom/google/appinventor/components/runtime/LocationSensor;D)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    return-void
.end method

.method static bridge synthetic -$$Nest$fputspeed(Lcom/google/appinventor/components/runtime/LocationSensor;F)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->speed:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopListening(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 237
    const-class v0, Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 245
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    .line 246
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "enabled"    # Z

    .line 255
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->dataSourceObservers:Ljava/util/Set;

    .line 196
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listeners:Ljava/util/Set;

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    .line 202
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    .line 210
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    .line 220
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    .line 221
    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    .line 222
    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D

    .line 223
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->speed:F

    .line 224
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasLocationData:Z

    .line 225
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasAltitude:Z

    .line 228
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->androidUIHandler:Landroid/os/Handler;

    .line 234
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    .line 236
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->havePermission:Z

    .line 256
    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    .line 257
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->handler:Landroid/os/Handler;

    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 263
    const v0, 0xea60

    iput v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->timeInterval:I

    .line 264
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->distanceInterval:I

    .line 267
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    .line 268
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/location/Geocoder;

    invoke-direct {v1, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->geocoder:Landroid/location/Geocoder;

    .line 269
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    .line 270
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationCriteria:Landroid/location/Criteria;

    .line 271
    new-instance v1, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener-IA;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->myLocationListener:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    .line 272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    .line 274
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 275
    return-void
.end method

.method private empty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 857
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

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

.method private startProvider(Ljava/lang/String;)Z
    .locals 8
    .param p1, "providerName"    # Ljava/lang/String;

    .line 793
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    .line 794
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    .line 795
    .local v0, "tLocationProvider":Landroid/location/LocationProvider;
    if-nez v0, :cond_0

    .line 796
    sget-object v1, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProvider("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") returned null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 v1, 0x0

    return v1

    .line 799
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    .line 800
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    .line 801
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    iget v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->timeInterval:I

    int-to-long v4, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->distanceInterval:I

    int-to-float v6, v1

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->myLocationListener:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 803
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    .line 804
    return v1
.end method

.method private stopListening()V
    .locals 2

    .line 815
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->myLocationListener:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    .line 818
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    .line 820
    :cond_0
    return-void
.end method


# virtual methods
.method public Accuracy()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The most recent measure of accuracy, in meters.  If no value is available, 0 will be returned."
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->lastLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->lastLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationProvider:Landroid/location/LocationProvider;

    invoke-virtual {v0}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 534
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public Altitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The most recently available altitude value, in meters.  If no value is available, 0 will be returned."
    .end annotation

    .line 512
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D

    return-wide v0
.end method

.method public AvailableProviders()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 734
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    return-object v0
.end method

.method public CurrentAddress()Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Provides a textual representation of the current address or \"No address available\"."
    .end annotation

    .line 581
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasLocationData:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_4

    .line 585
    :cond_1
    :try_start_0
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->addressFromLatLong(DD)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 586
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_3

    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_3

    instance-of v1, v0, Ljava/lang/IndexOutOfBoundsException;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 596
    :cond_2
    sget-object v1, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    .line 597
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected exception thrown by getting current address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 596
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 593
    :cond_3
    :goto_0
    sget-object v1, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown by getting current address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    const-string v0, "No address available"

    return-object v0
.end method

.method public DistanceInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the minimum distance interval, in meters, that the sensor will try to use for sending out location updates. For example, if this is set to 5, then the sensor will fire a LocationChanged event only after 5 meters have been traversed. However, the sensor does not guarantee that an update will be received at exactly the distance interval. It may take more than 5 meters to fire an event, for instance."
    .end annotation

    .line 450
    iget v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->distanceInterval:I

    return v0
.end method

.method public DistanceInterval(I)V
    .locals 3
    .param p1, "interval"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "sensor_dist_interval"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 417
    if-ltz p1, :cond_3

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 420
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->distanceInterval:I

    .line 423
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_1

    .line 424
    const-string v0, "DistanceInterval"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .line 428
    .local v1, "listener":Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    iget v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->distanceInterval:I

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->onDistanceIntervalChanged(I)V

    .line 429
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    goto :goto_0

    .line 430
    :cond_2
    return-void

    .line 418
    :cond_3
    :goto_1
    return-void
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

    .line 557
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    .line 558
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    if-nez v0, :cond_0

    .line 559
    return-void

    .line 561
    :cond_0
    if-nez p1, :cond_1

    .line 562
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    goto :goto_0

    .line 564
    :cond_1
    const-string v0, "Enabled"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 566
    :goto_0
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 544
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    return v0
.end method

.method public Geocode(Ljava/lang/String;)V
    .locals 13
    .param p1, "address"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Converts an address into a latitude and longitude through the GotLocationFromAddress event."
    .end annotation

    .line 690
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->LatitudeFromAddress(Ljava/lang/String;)D

    move-result-wide v7

    .line 691
    .local v7, "latitude":D
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->LongitudeFromAddress(Ljava/lang/String;)D

    move-result-wide v9

    .line 692
    .local v9, "longitude":D
    iget-object v11, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v12, Lcom/google/appinventor/components/runtime/LocationSensor$1;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-wide v3, v7

    move-wide v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/LocationSensor$1;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;Ljava/lang/String;DD)V

    invoke-virtual {v11, v12}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 697
    return-void
.end method

.method public GotAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Reports the address in response to a ReverseGeocode request."
    .end annotation

    .line 725
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "GotAddress"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 726
    return-void
.end method

.method public GotLocationFromAddress(Ljava/lang/String;DD)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Reports the latitude and longitude in response to a Geocode request."
    .end annotation

    .line 701
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v0, "GotLocationFromAddress"

    invoke-static {p0, v0, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 702
    return-void
.end method

.method public HasAccuracy()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 475
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Accuracy()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public HasAltitude()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 467
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasAltitude:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public HasLongitudeLatitude()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 459
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hasLocationData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Initialize()V
    .locals 1

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    .line 280
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 281
    return-void
.end method

.method public Latitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 495
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    return-wide v0
.end method

.method public LatitudeFromAddress(Ljava/lang/String;)D
    .locals 5
    .param p1, "locationName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Derives latitude of given address"
    .end annotation

    .line 654
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->getAddress(Ljava/lang/String;)Landroid/location/Address;

    move-result-object v0

    .line 655
    .local v0, "address":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 656
    .end local v0    # "address":Landroid/location/Address;
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "LatitudeFromAddress"

    const/16 v4, 0x65

    invoke-virtual {v1, p0, v3, v4, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 659
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public LocationChanged(DDDF)V
    .locals 6
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D
    .param p7, "speed"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a new location has been detected."
    .end annotation

    .line 291
    const-string v0, "latitude"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    const-string v0, "longitude"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    const-string v0, "altitude"

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    const-string v0, "speed"

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const-string v0, "LocationChanged"

    invoke-static {p0, v0, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method public Longitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 485
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    return-wide v0
.end method

.method public LongitudeFromAddress(Ljava/lang/String;)D
    .locals 5
    .param p1, "locationName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Derives longitude of given address"
    .end annotation

    .line 673
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->getAddress(Ljava/lang/String;)Landroid/location/Address;

    move-result-object v0

    .line 674
    .local v0, "address":Landroid/location/Address;
    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 675
    .end local v0    # "address":Landroid/location/Address;
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "LongitudeFromAddress"

    const/16 v4, 0x66

    invoke-virtual {v1, p0, v3, v4, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 678
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public ProviderLocked(Z)V
    .locals 0
    .param p1, "lock"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 364
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    .line 365
    return-void
.end method

.method public ProviderLocked()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 346
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    return v0
.end method

.method public ProviderName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 319
    const-string v0, "NO PROVIDER"

    return-object v0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    return-object v0
.end method

.method public ProviderName(Ljava/lang/String;)V
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    .line 337
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->startProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    return-void

    .line 340
    :cond_0
    const-string v0, "ProviderName"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public RefreshProvider(Ljava/lang/String;)V
    .locals 5
    .param p1, "caller"    # Ljava/lang/String;

    .line 748
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    if-nez v0, :cond_0

    return-void

    .line 749
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    .line 750
    move-object v0, p0

    .line 751
    .local v0, "me":Lcom/google/appinventor/components/runtime/LocationSensor;
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->havePermission:Z

    if-nez v1, :cond_1

    .line 753
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/LocationSensor$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor$3;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;Lcom/google/appinventor/components/runtime/LocationSensor;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 768
    :cond_1
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->empty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 769
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->startProvider(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    .line 770
    return-void

    .line 772
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    .line 773
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->locationCriteria:Landroid/location/Criteria;

    invoke-virtual {v1, v3, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "bProviderName":Ljava/lang/String;
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 775
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 778
    :cond_3
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->allProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 779
    .local v3, "providerN":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/LocationSensor;->startProvider(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    .line 780
    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listening:Z

    if-eqz v4, :cond_5

    .line 781
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerLocked:Z

    if-nez v2, :cond_4

    .line 782
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->providerName:Ljava/lang/String;

    .line 784
    :cond_4
    return-void

    .line 786
    .end local v3    # "providerN":Ljava/lang/String;
    :cond_5
    goto :goto_0

    .line 787
    :cond_6
    return-void
.end method

.method public ReverseGeocode(DD)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Determines the address associated with the given latitude and  and reports it through the GotAddress event."
    .end annotation

    .line 713
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    .line 714
    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    .line 715
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->CurrentAddress()Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/LocationSensor$2;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor$2;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 721
    return-void
.end method

.method public StatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 305
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 306
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "StatusChanged"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 308
    :cond_0
    return-void
.end method

.method public TimeInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the minimum time interval, in milliseconds, that the sensor will try to use for sending out location updates. However, location updates will only be received when the location of the phone actually changes, and use of the specified time interval is not guaranteed. For example, if 1000 is used as the time interval, location updates will never be fired sooner than 1000ms, but they may be fired anytime after."
    .end annotation

    .line 407
    iget v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->timeInterval:I

    return v0
.end method

.method public TimeInterval(I)V
    .locals 3
    .param p1, "interval"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "60000"
        editorType = "sensor_time_interval"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 374
    if-ltz p1, :cond_3

    const v0, 0xf4240

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 377
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->timeInterval:I

    .line 380
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_1

    .line 381
    const-string v0, "TimeInterval"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .line 385
    .local v1, "listener":Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    iget v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->timeInterval:I

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->onTimeIntervalChanged(I)V

    .line 386
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    goto :goto_0

    .line 387
    :cond_2
    return-void

    .line 375
    :cond_3
    :goto_1
    return-void
.end method

.method public addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 862
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 863
    return-void
.end method

.method public addListener(Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .line 847
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->setSource(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 848
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 849
    return-void
.end method

.method public addressFromLatLong(DD)Ljava/lang/String;
    .locals 6
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->geocoder:Landroid/location/Geocoder;

    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 614
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 615
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    .line 616
    .local v1, "address":Landroid/location/Address;
    if-eqz v1, :cond_1

    .line 617
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 619
    invoke-virtual {v1, v3}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 622
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 625
    .end local v1    # "address":Landroid/location/Address;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Address with latitude "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and longitutde "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAddress(Ljava/lang/String;)Landroid/location/Address;
    .locals 5
    .param p1, "locationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->geocoder:Landroid/location/Geocoder;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 637
    .local v0, "addressObjs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    sget-object v1, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "latitude addressObjs size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    return-object v1

    .line 639
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDataValue(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 892
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "altitude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "speed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 906
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 903
    :pswitch_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->speed:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 900
    :pswitch_1
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->altitude:D

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 897
    :pswitch_2
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->longitude:D

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 894
    :pswitch_3
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->latitude:D

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x55d45394 -> :sswitch_3
        0x6890047 -> :sswitch_2
        0x83009af -> :sswitch_1
        0x79634aa2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->getDataValue(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic notifyDataObservers(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LocationSensor;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 873
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 874
    .local v1, "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onReceiveValue(Lcom/google/appinventor/components/runtime/RealTimeDataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 875
    .end local v1    # "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    goto :goto_0

    .line 876
    :cond_0
    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 843
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    .line 844
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 827
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    .line 828
    const-string v0, "onResume"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 830
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 836
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    .line 837
    return-void
.end method

.method public removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 867
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->dataSourceObservers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 868
    return-void
.end method

.method public removeListener(Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .line 852
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 853
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->setSource(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 854
    return-void
.end method
