.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;
.implements Lorg/osmdroid/events/MapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;,
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapTileProviderBasic;,
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;,
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;,
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;,
        Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;
    }
.end annotation


# static fields
.field private static final ANCHOR_HORIZONTAL:[F

.field private static final ANCHOR_VERTICAL:[F

.field private static final OSM_ROAD_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

.field private static final SPECIFIED_FILL:J = 0x1L

.field private static final SPECIFIED_FILL_OPACITY:J = 0x4L

.field private static final SPECIFIED_STROKE:J = 0x8L

.field private static final SPECIFIED_STROKE_OPACITY:J = 0x10L

.field private static final SPECIFIED_STROKE_WIDTH:J = 0x20L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private caches:Z

.field private compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

.field private containerView:Landroid/widget/RelativeLayout;

.field private customUrl:Ljava/lang/String;

.field private defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

.field private defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

.field private eventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private featureOverlays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            "Lorg/osmdroid/views/overlay/OverlayWithIW;",
            ">;"
        }
    .end annotation
.end field

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private hiddenFeatureCollections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;",
            ">;"
        }
    .end annotation
.end field

.field private hiddenFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;"
        }
    .end annotation
.end field

.field private lastAzimuth:F

.field private final locationProvider:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

.field private ready:Z

.field private rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

.field private scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

.field private tileType:Lcom/google/appinventor/components/common/MapType;

.field private touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

.field private final userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

.field private view:Lorg/osmdroid/views/MapView;

.field private zoomControlEnabled:Z

.field private zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

.field private zoomEnabled:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetcompass(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lorg/osmdroid/views/overlay/compass/CompassOverlay;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteventListeners(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetform(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetready(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetview(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lorg/osmdroid/views/MapView;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputready(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDefaultMarkerDrawable(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getDefaultMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetMarkerDrawable(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 108
    const-class v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    .line 109
    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/String;

    const-string v1, "https://a.tile.openstreetmap.org/"

    const/4 v2, 0x0

    aput-object v1, v7, v2

    const-string v1, "https://b.tile.openstreetmap.org/"

    const/4 v2, 0x1

    aput-object v1, v7, v2

    const-string v1, "https://c.tile.openstreetmap.org/"

    const/4 v2, 0x2

    aput-object v1, v7, v2

    const-string v8, "\u00a9 OpenStreetMap contributors"

    const-string v2, "OSM-Road"

    const/4 v3, 0x1

    const/16 v4, 0x14

    const/16 v5, 0x100

    const-string v6, ".png"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->OSM_ROAD_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 156
    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ANCHOR_HORIZONTAL:[F

    .line 157
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ANCHOR_VERTICAL:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x7fc00000    # Float.NaN
        0x0
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x7fc00000    # Float.NaN
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 5
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    .line 133
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    .line 134
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    .line 136
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    .line 137
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    .line 138
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    .line 140
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    .line 141
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->lastAzimuth:F

    .line 147
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatureCollections:Ljava/util/Set;

    .line 154
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatures:Ljava/util/Set;

    .line 330
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;->setUserAgentValue(Ljava/lang/String;)V

    .line 331
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "osmdroid"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 332
    .local v1, "osmdroid":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    :cond_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/osmdroid/config/IConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    .line 334
    new-instance v2, Ljava/io/File;

    const-string v4, "tiles"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 335
    .local v2, "osmdroidTiles":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 336
    :cond_1
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/osmdroid/config/IConfigurationProvider;->setOsmdroidTileCache(Ljava/io/File;)V

    .line 337
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->caches:Z

    .line 340
    .end local v2    # "osmdroidTiles":Ljava/io/File;
    :cond_2
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 341
    new-instance v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay-IA;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    .line 342
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createCustomMapView(Landroid/content/Context;)Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    .line 343
    new-instance v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

    invoke-direct {v2, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter-IA;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->locationProvider:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

    .line 344
    new-instance v0, Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v2}, Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    .line 345
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/MapView;->setTilesScaledToDpi(Z)V

    .line 346
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p0}, Lorg/osmdroid/views/MapView;->setMapListener(Lorg/osmdroid/events/MapListener;)V

    .line 347
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    new-instance v2, Lorg/osmdroid/views/overlay/CopyrightOverlay;

    invoke-direct {v2, p1}, Lorg/osmdroid/views/overlay/CopyrightOverlay;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    invoke-interface {v0, v2}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)V

    invoke-virtual {v0, v2}, Lorg/osmdroid/views/MapView;->addOnTapListener(Lorg/osmdroid/views/MapView$OnTapListener;)V

    .line 364
    new-instance v0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v2}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    .line 365
    new-instance v0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->locationProvider:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v2, v4}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;-><init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    .line 366
    new-instance v0, Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v2}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    .line 367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignBottom(Z)V

    .line 368
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignRight(Z)V

    .line 369
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->disableScaleBar()V

    .line 370
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-interface {v0, v2}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    .line 373
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 374
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 376
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->setVisibility(I)V

    .line 377
    return-void
.end method

.method private configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .param p2, "polygon"    # Lorg/osmdroid/views/overlay/Polygon;

    .line 726
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {p2, v0}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 747
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    invoke-virtual {p2, v0}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 797
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Visible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    goto :goto_0

    .line 800
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    .line 802
    :goto_0
    return-void
.end method

.method private createNativeCircle(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)Lorg/osmdroid/views/overlay/Polygon;
    .locals 6
    .param p1, "aiCircle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .line 1238
    new-instance v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1239
    .local v0, "osmPolygon":Lorg/osmdroid/views/overlay/Polygon;
    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createPolygon(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 1240
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Latitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsCircle(Lorg/osmdroid/util/GeoPoint;D)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 1241
    return-object v0
.end method

.method private createNativeMarker(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 6
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Lorg/osmdroid/views/overlay/Marker;",
            ">;)V"
        }
    .end annotation

    .line 1186
    .local p2, "callback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/osmdroid/views/overlay/Marker;>;"
    new-instance v0, Lorg/osmdroid/views/overlay/Marker;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/Marker;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 1187
    .local v0, "osmMarker":Lorg/osmdroid/views/overlay/Marker;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Draggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setDraggable(Z)V

    .line 1189
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setTitle(Ljava/lang/String;)V

    .line 1190
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setSnippet(Ljava/lang/String;)V

    .line 1191
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Latitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 1192
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    .line 1193
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$14;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 1205
    return-void
.end method

.method private createNativePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;
    .locals 2
    .param p1, "aiPolygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .line 1230
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;-><init>()V

    .line 1231
    .local v0, "osmPolygon":Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;
    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createPolygon(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 1232
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->setMultiPoints(Ljava/util/List;)V

    .line 1233
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->setMultiHoles(Ljava/util/List;)V

    .line 1234
    return-object v0
.end method

.method private createNativePolyline(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)Lorg/osmdroid/views/overlay/Polyline;
    .locals 2
    .param p1, "aiLineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .line 1208
    new-instance v0, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    .line 1209
    .local v0, "osmLine":Lorg/osmdroid/views/overlay/Polyline;
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->Draggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setDraggable(Z)V

    .line 1210
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setTitle(Ljava/lang/String;)V

    .line 1211
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->Description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setSnippet(Ljava/lang/String;)V

    .line 1212
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 1213
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->StrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 1214
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->StrokeWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    .line 1215
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 1216
    return-object v0
.end method

.method private createNativeRectangle(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)Lorg/osmdroid/views/overlay/Polygon;
    .locals 10
    .param p1, "aiRectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .line 1245
    new-instance v9, Lorg/osmdroid/util/BoundingBox;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v3

    .line 1246
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v5

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 1247
    .local v0, "bbox":Lorg/osmdroid/util/BoundingBox;
    new-instance v1, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v1}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1248
    .local v1, "osmPolygon":Lorg/osmdroid/views/overlay/Polygon;
    invoke-direct {p0, v1, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createPolygon(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 1249
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsRect(Lorg/osmdroid/util/BoundingBox;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 1250
    return-object v1
.end method

.method private createPolygon(Lorg/osmdroid/views/overlay/Polygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1
    .param p1, "osmPolygon"    # Lorg/osmdroid/views/overlay/Polygon;
    .param p2, "aiFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 1220
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Draggable()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1221
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setTitle(Ljava/lang/String;)V

    .line 1222
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Description()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setSnippet(Ljava/lang/String;)V

    .line 1223
    move-object v0, p2

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 1224
    move-object v0, p2

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1225
    move-object v0, p2

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1226
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultInfoWindow:Lorg/osmdroid/views/overlay/infowindow/OverlayInfoWindow;

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/Polygon;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 1227
    return-void
.end method

.method private static getBestGuessHeight(Lcom/caverock/androidsvg/SVG$Svg;)F
    .locals 1
    .param p0, "svg"    # Lcom/caverock/androidsvg/SVG$Svg;

    .line 1114
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v0

    return v0

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_1

    .line 1117
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    return v0

    .line 1119
    :cond_1
    const/high16 v0, 0x42480000    # 50.0f

    return v0
.end method

.method private static getBestGuessWidth(Lcom/caverock/androidsvg/SVG$Svg;)F
    .locals 1
    .param p0, "svg"    # Lcom/caverock/androidsvg/SVG$Svg;

    .line 1104
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v0

    return v0

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    return v0

    .line 1109
    :cond_1
    const/high16 v0, 0x41f00000    # 30.0f

    return v0
.end method

.method private getCustomTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 9

    .line 457
    new-instance v8, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$2;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->customUrl:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v7, v1

    const-string v2, "Custom"

    const/4 v3, 0x1

    const/16 v4, 0x14

    const/16 v5, 0x100

    const-string v6, ""

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$2;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    .line 466
    .local v0, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    return-object v0
.end method

.method private getDefaultMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .line 1100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rasterizeSVG(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/caverock/androidsvg/SVG;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 2
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 1025
    .local p2, "callback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/Drawable;>;"
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "assetPath":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ".svg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1029
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawableRaster(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    goto :goto_1

    .line 1027
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawableVector(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 1031
    :goto_1
    return-void
.end method

.method private getMarkerDrawableRaster(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 5
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 1084
    .local p2, "callback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/Drawable;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result v2

    .line 1085
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result v3

    new-instance v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;

    invoke-direct {v4, p0, p2, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$13;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 1084
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;IILcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 1097
    return-void
.end method

.method private getMarkerDrawableVector(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 6
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 1035
    .local p2, "callback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Landroid/graphics/drawable/Drawable;>;"
    const/4 v0, 0x0

    .line 1036
    .local v0, "markerSvg":Lcom/caverock/androidsvg/SVG;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    const-string v2, "Unable to read Marker asset"

    const-string v3, "Invalid SVG in Marker asset"

    if-nez v1, :cond_1

    .line 1038
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "marker.svg"

    invoke-static {v1, v4}, Lcom/caverock/androidsvg/SVG;->getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;
    :try_end_0
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1041
    :catch_0
    move-exception v1

    .line 1042
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1039
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1040
    .local v1, "e":Lcom/caverock/androidsvg/SVGParseException;
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v4, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    .end local v1    # "e":Lcom/caverock/androidsvg/SVGParseException;
    :goto_0
    nop

    .line 1044
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 1045
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to load SVG from assets"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1048
    :cond_1
    :goto_2
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v1

    .line 1049
    .local v1, "markerAsset":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 1051
    :try_start_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v4}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/caverock/androidsvg/SVG;->getFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/caverock/androidsvg/SVG;

    move-result-object v4
    :try_end_1
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v4

    .line 1056
    :goto_3
    goto :goto_4

    .line 1054
    :catch_2
    move-exception v4

    .line 1055
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v5, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1052
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 1053
    .local v4, "e":Lcom/caverock/androidsvg/SVGParseException;
    sget-object v5, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v5, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Lcom/caverock/androidsvg/SVGParseException;
    goto :goto_3

    .line 1057
    :goto_4
    if-nez v0, :cond_2

    .line 1059
    const/4 v4, 0x0

    .line 1061
    .local v4, "is":Ljava/io/InputStream;
    :try_start_2
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v5, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->openMedia(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    move-object v4, v5

    .line 1062
    invoke-static {v4}, Lcom/caverock/androidsvg/SVG;->getFromInputStream(Ljava/io/InputStream;)Lcom/caverock/androidsvg/SVG;

    move-result-object v2
    :try_end_2
    .catch Lcom/caverock/androidsvg/SVGParseException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    .line 1068
    nop

    :goto_5
    sget-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 1069
    goto :goto_7

    .line 1068
    :catchall_0
    move-exception v2

    goto :goto_6

    .line 1065
    :catch_4
    move-exception v3

    .line 1066
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v5, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v5, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1068
    nop

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 1063
    :catch_5
    move-exception v2

    .line 1064
    .local v2, "e":Lcom/caverock/androidsvg/SVGParseException;
    sget-object v5, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1068
    nop

    .end local v2    # "e":Lcom/caverock/androidsvg/SVGParseException;
    goto :goto_5

    :goto_6
    sget-object v3, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 1069
    throw v2

    .line 1072
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_2
    :goto_7
    if-nez v0, :cond_3

    .line 1073
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->defaultMarkerSVG:Lcom/caverock/androidsvg/SVG;

    .line 1076
    :cond_3
    :try_start_4
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rasterizeSVG(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/caverock/androidsvg/SVG;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 1079
    goto :goto_8

    .line 1077
    :catch_6
    move-exception v2

    .line 1078
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V

    .line 1080
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_8
    return-void
.end method

.method private rasterizeSVG(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/caverock/androidsvg/SVG;)Landroid/graphics/drawable/Drawable;
    .locals 22
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p2, "markerSvg"    # Lcom/caverock/androidsvg/SVG;

    .line 1124
    invoke-virtual/range {p2 .. p2}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v0

    .line 1125
    .local v0, "svg":Lcom/caverock/androidsvg/SVG$Svg;
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1126
    .local v2, "density":F
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getBestGuessHeight(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v3

    goto :goto_0

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result v3

    int-to-float v3, v3

    .line 1127
    .local v3, "height":F
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result v4

    if-gtz v4, :cond_1

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getBestGuessWidth(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v4

    goto :goto_1

    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result v4

    int-to-float v4, v4

    .line 1128
    .local v4, "width":F
    :goto_1
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getBestGuessHeight(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v5

    div-float v5, v3, v5

    .line 1129
    .local v5, "scaleH":F
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getBestGuessWidth(Lcom/caverock/androidsvg/SVG$Svg;)F

    move-result v6

    div-float v6, v4, v6

    .line 1130
    .local v6, "scaleW":F
    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 1133
    .local v7, "scale":F
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 1134
    .local v8, "fillPaint":Landroid/graphics/Paint;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 1135
    .local v9, "strokePaint":Landroid/graphics/Paint;
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->FillColor()I

    move-result v10

    invoke-static {v8, v10}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 1136
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->StrokeColor()I

    move-result v10

    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 1137
    new-instance v10, Lcom/caverock/androidsvg/SVG$Length;

    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->StrokeWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v7

    invoke-direct {v10, v11}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    .line 1138
    .local v10, "strokeWidth":Lcom/caverock/androidsvg/SVG$Length;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Svg;->getChildren()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1139
    .local v12, "element":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v13, v12, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;

    if-eqz v13, :cond_6

    .line 1140
    move-object v13, v12

    check-cast v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;

    .line 1141
    .local v13, "path":Lcom/caverock/androidsvg/SVG$SvgConditionalElement;
    iget-object v14, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    new-instance v15, Lcom/caverock/androidsvg/SVG$Colour;

    move-object/from16 v16, v0

    .end local v0    # "svg":Lcom/caverock/androidsvg/SVG$Svg;
    .local v16, "svg":Lcom/caverock/androidsvg/SVG$Svg;
    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-direct {v15, v0}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    iput-object v15, v14, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1142
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    iput-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 1143
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    new-instance v14, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v15

    invoke-direct {v14, v15}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    iput-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1144
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    iput-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 1145
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v10, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 1146
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    const-wide/16 v14, 0x3d

    iput-wide v14, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1147
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v0, :cond_7

    .line 1148
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v14, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v18, 0x1

    and-long v14, v14, v18

    const-wide/16 v20, 0x0

    cmp-long v0, v14, v20

    if-nez v0, :cond_2

    .line 1149
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    new-instance v14, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v15

    invoke-direct {v14, v15}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    iput-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1150
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v14, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long v14, v14, v18

    iput-wide v14, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1152
    :cond_2
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v14, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v18, 0x4

    and-long v14, v14, v18

    cmp-long v0, v14, v20

    if-nez v0, :cond_3

    .line 1153
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    iput-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 1154
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v14, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long v14, v14, v18

    iput-wide v14, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1156
    :cond_3
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v14, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v18, 0x8

    and-long v14, v14, v18

    cmp-long v0, v14, v20

    if-nez v0, :cond_4

    .line 1157
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    new-instance v14, Lcom/caverock/androidsvg/SVG$Colour;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getColor()I

    move-result v15

    invoke-direct {v14, v15}, Lcom/caverock/androidsvg/SVG$Colour;-><init>(I)V

    iput-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1158
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v14, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long v14, v14, v18

    iput-wide v14, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1160
    :cond_4
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v14, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v18, 0x10

    and-long v14, v14, v18

    cmp-long v0, v14, v20

    if-nez v0, :cond_5

    .line 1161
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getAlpha()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    iput-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 1162
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v14, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long v14, v14, v18

    iput-wide v14, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1164
    :cond_5
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v14, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    const-wide/16 v17, 0x20

    and-long v14, v14, v17

    cmp-long v0, v14, v20

    if-nez v0, :cond_7

    .line 1165
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v10, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 1166
    iget-object v0, v13, Lcom/caverock/androidsvg/SVG$SvgConditionalElement;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-wide v14, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    or-long v14, v14, v17

    iput-wide v14, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    goto :goto_3

    .line 1139
    .end local v13    # "path":Lcom/caverock/androidsvg/SVG$SvgConditionalElement;
    .end local v16    # "svg":Lcom/caverock/androidsvg/SVG$Svg;
    .restart local v0    # "svg":Lcom/caverock/androidsvg/SVG$Svg;
    :cond_6
    move-object/from16 v16, v0

    .line 1170
    .end local v0    # "svg":Lcom/caverock/androidsvg/SVG$Svg;
    .end local v12    # "element":Lcom/caverock/androidsvg/SVG$SvgObject;
    .restart local v16    # "svg":Lcom/caverock/androidsvg/SVG$Svg;
    :cond_7
    :goto_3
    move-object/from16 v0, v16

    goto/16 :goto_2

    .line 1173
    .end local v16    # "svg":Lcom/caverock/androidsvg/SVG$Svg;
    .restart local v0    # "svg":Lcom/caverock/androidsvg/SVG$Svg;
    :cond_8
    move-object/from16 v16, v0

    .end local v0    # "svg":Lcom/caverock/androidsvg/SVG$Svg;
    .restart local v16    # "svg":Lcom/caverock/androidsvg/SVG$Svg;
    invoke-virtual/range {p2 .. p2}, Lcom/caverock/androidsvg/SVG;->renderToPicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 1174
    .local v0, "picture":Landroid/graphics/Picture;
    new-instance v11, Landroid/graphics/Picture;

    invoke-direct {v11}, Landroid/graphics/Picture;-><init>()V

    .line 1175
    .local v11, "scaledPicture":Landroid/graphics/Picture;
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->StrokeWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    mul-float v12, v12, v13

    add-float/2addr v12, v4

    mul-float v12, v12, v2

    float-to-int v12, v12

    .line 1176
    invoke-interface/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->StrokeWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float v14, v14, v13

    add-float/2addr v14, v3

    mul-float v14, v14, v2

    float-to-int v13, v14

    .line 1175
    invoke-virtual {v11, v12, v13}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v12

    .line 1177
    .local v12, "canvas":Landroid/graphics/Canvas;
    mul-float v13, v2, v6

    mul-float v14, v2, v5

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1178
    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v13

    invoke-virtual {v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue()F

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1179
    invoke-virtual {v0, v12}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 1180
    invoke-virtual {v11}, Landroid/graphics/Picture;->endRecording()V

    .line 1181
    new-instance v13, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {v13, v11}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    return-object v13
.end method


# virtual methods
.method public addEventListener(Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 601
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 602
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    const-string v2, "MapReady"

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ready:Z

    .line 604
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onReady(Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;)V

    .line 606
    :cond_1
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .locals 1
    .param p1, "aiCircle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .line 811
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativeCircle(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)Lorg/osmdroid/views/overlay/Polygon;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V

    .line 812
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 2
    .param p1, "aiPolyline"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .line 673
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativePolyline(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)Lorg/osmdroid/views/overlay/Polyline;

    move-result-object v0

    .line 674
    .local v0, "polyline":Lorg/osmdroid/views/overlay/Polyline;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$5;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$5;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setOnClickListener(Lorg/osmdroid/views/overlay/Polyline$OnClickListener;)V

    .line 695
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$6;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$6;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setOnDragListener(Lorg/osmdroid/views/overlay/Polyline$OnDragListener;)V

    .line 718
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->Visible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    goto :goto_0

    .line 721
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    .line 723
    :goto_0
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 1
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .line 610
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativeMarker(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 669
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 1
    .param p1, "aiPolygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .line 806
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V

    .line 807
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .locals 1
    .param p1, "aiRectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .line 816
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->createNativeRectangle(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)Lorg/osmdroid/views/overlay/Polygon;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V

    .line 817
    return-void
.end method

.method createCustomMapView(Landroid/content/Context;)Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 323
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapTileProviderBasic;

    sget-object v2, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    new-instance v3, Lorg/osmdroid/tileprovider/modules/TileWriter;

    invoke-direct {v3}, Lorg/osmdroid/tileprovider/modules/TileWriter;-><init>()V

    invoke-direct {v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapTileProviderBasic;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapView;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    return-object v0
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getCustomUrl()Ljava/lang/String;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->customUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLocationListener()Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    .locals 1

    .line 1366
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->locationProvider:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$AppInventorLocationSensorAdapter;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMapType()Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;
    .locals 2

    .line 433
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->tileType:Lcom/google/appinventor/components/common/MapType;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/MapType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMapTypeAbstract()Lcom/google/appinventor/components/common/MapType;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->tileType:Lcom/google/appinventor/components/common/MapType;

    return-object v0
.end method

.method public getOverlayCount()I
    .locals 2

    .line 1371
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1372
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    return v0
.end method

.method public getScaleUnits()Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;
    .locals 2

    .line 1413
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getUnitsOfMeasure()Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1419
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Somehow we have an unallowed unit system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1417
    :pswitch_0
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->METRIC:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    return-object v0

    .line 1415
    :pswitch_1
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->IMPERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getScaleUnitsAbstract()Lcom/google/appinventor/components/common/ScaleUnits;
    .locals 2

    .line 1440
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->getUnitsOfMeasure()Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1446
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Somehow we have an unallowed unit system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1444
    :pswitch_0
    sget-object v0, Lcom/google/appinventor/components/common/ScaleUnits;->Metric:Lcom/google/appinventor/components/common/ScaleUnits;

    return-object v0

    .line 1442
    :pswitch_1
    sget-object v0, Lcom/google/appinventor/components/common/ScaleUnits;->Imperial:Lcom/google/appinventor/components/common/ScaleUnits;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getZoom()I
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public hideFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 1267
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    .line 1268
    return-void
.end method

.method public hideInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 1326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 1327
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->closeInfoWindow()V

    .line 1328
    return-void
.end method

.method protected hideOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V
    .locals 1
    .param p1, "overlay"    # Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 1271
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    .line 1272
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1273
    return-void
.end method

.method public isCompassEnabled()Z
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->isCompassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFeatureCollectionVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;)Z
    .locals 1
    .param p1, "collection"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;

    .line 1283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatureCollections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isFeatureVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)Z
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 1277
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 1278
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/osmdroid/views/overlay/OverlayManager;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInfoboxVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)Z
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 1332
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 1333
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->isInfoWindowOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPanEnabled()Z
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->-$$Nest$fgetscrollEnabled(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;)Z

    move-result v0

    return v0
.end method

.method public isRotationEnabled()Z
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScaleVisible()Z
    .locals 1

    .line 1393
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowUserEnabled()Z
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZoomControlEnabled()Z
    .locals 1

    .line 538
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControlEnabled:Z

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .line 420
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomEnabled:Z

    return v0
.end method

.method public onScroll(Lorg/osmdroid/events/ScrollEvent;)Z
    .locals 2
    .param p1, "event"    # Lorg/osmdroid/events/ScrollEvent;

    .line 1349
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 1350
    .local v1, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onBoundsChanged()V

    .line 1351
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_0

    .line 1352
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onZoom(Lorg/osmdroid/events/ZoomEvent;)Z
    .locals 2
    .param p1, "event"    # Lorg/osmdroid/events/ZoomEvent;

    .line 1357
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->updateButtons()V

    .line 1358
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->eventListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 1359
    .local v1, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onZoom()V

    .line 1360
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_0

    .line 1361
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public panTo(DDID)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "zoom"    # I
    .param p6, "seconds"    # D

    .line 590
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 591
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    int-to-double v1, p5

    invoke-interface {v0, v1, v2}, Lorg/osmdroid/api/IMapController;->zoomTo(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 593
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 594
    const-wide v1, 0x408f400000000000L    # 1000.0

    mul-double v1, v1, p6

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 597
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "aiFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 821
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    .line 822
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    return-void
.end method

.method public setBoundingBox(Lorg/osmdroid/util/BoundingBox;)V
    .locals 5
    .param p1, "bbox"    # Lorg/osmdroid/util/BoundingBox;

    .line 1343
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 1344
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/osmdroid/api/IMapController;->zoomToSpan(DD)V

    .line 1345
    return-void
.end method

.method public setCenter(DD)V
    .locals 2
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 396
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 397
    return-void
.end method

.method public setCompassEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 495
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;-><init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    .line 497
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$3;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 505
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    if-eqz v0, :cond_3

    .line 508
    if-eqz p1, :cond_2

    .line 509
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->getOrientationProvider()Lorg/osmdroid/views/overlay/compass/IOrientationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->enableCompass()Z

    goto :goto_0

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    new-instance v1, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/osmdroid/views/overlay/compass/InternalCompassOrientationProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->enableCompass(Lorg/osmdroid/views/overlay/compass/IOrientationProvider;)Z

    .line 514
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->lastAzimuth:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->onOrientationChanged(FLorg/osmdroid/views/overlay/compass/IOrientationProvider;)V

    goto :goto_1

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->getOrientation()F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->lastAzimuth:F

    .line 517
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->compass:Lorg/osmdroid/views/overlay/compass/CompassOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/compass/CompassOverlay;->disableCompass()V

    .line 520
    :cond_3
    :goto_1
    return-void
.end method

.method public setCustomUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->customUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    new-instance v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;-><init>()V

    .line 448
    .local v0, "sqlTileWriter":Lorg/osmdroid/tileprovider/modules/SqlTileWriter;
    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->purgeCache()Z

    move-result v1

    .line 450
    .local v1, "isCleared":Z
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v2

    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->clearTileCache()V

    .line 452
    .end local v0    # "sqlTileWriter":Lorg/osmdroid/tileprovider/modules/SqlTileWriter;
    .end local v1    # "isCleared":Z
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->customUrl:Ljava/lang/String;

    .line 453
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getCustomTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 454
    return-void
.end method

.method public setFeatureCollectionVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;Z)V
    .locals 3
    .param p1, "collection"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;
    .param p2, "visible"    # Z

    .line 1288
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatureCollections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatureCollections:Ljava/util/Set;

    .line 1289
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1291
    :cond_1
    return-void

    .line 1293
    :cond_2
    if-eqz p2, :cond_5

    .line 1294
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatureCollections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1295
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 1296
    .local v1, "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatures:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1297
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Visible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1298
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->showFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 1300
    .end local v1    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    :cond_3
    goto :goto_0

    :cond_4
    goto :goto_2

    .line 1302
    :cond_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatureCollections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1303
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 1304
    .restart local v1    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatures:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1305
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hideFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 1306
    .end local v1    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    goto :goto_1

    .line 1308
    :cond_6
    :goto_2
    return-void
.end method

.method public setMapType(Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;)V
    .locals 1
    .param p1, "type"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    .line 425
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/MapType;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/MapType;

    move-result-object v0

    .line 426
    .local v0, "mapType":Lcom/google/appinventor/components/common/MapType;
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->setMapTypeAbstract(Lcom/google/appinventor/components/common/MapType;)V

    .line 429
    :cond_0
    return-void
.end method

.method public setMapTypeAbstract(Lcom/google/appinventor/components/common/MapType;)V
    .locals 2
    .param p1, "type"    # Lcom/google/appinventor/components/common/MapType;

    .line 471
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->tileType:Lcom/google/appinventor/components/common/MapType;

    .line 472
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$com$google$appinventor$components$common$MapType:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/MapType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 483
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getCustomTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    goto :goto_0

    .line 480
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_TOPO:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 481
    goto :goto_0

    .line 477
    :pswitch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->USGS_SAT:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 478
    goto :goto_0

    .line 474
    :pswitch_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->OSM_ROAD_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 475
    nop

    .line 486
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPanEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 580
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->touch:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->-$$Nest$fputscrollEnabled(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;Z)V

    .line 581
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "Rotation"    # F

    .line 1377
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/MapView;->setMapOrientation(F)V

    .line 1378
    return-void
.end method

.method public setRotationEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 560
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    if-nez v0, :cond_0

    .line 561
    new-instance v0, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    if-eqz v0, :cond_2

    .line 564
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;->setEnabled(Z)V

    .line 565
    if-eqz p1, :cond_1

    .line 566
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->rotation:Lorg/osmdroid/views/overlay/gestures/RotationGestureOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    .line 571
    :cond_2
    :goto_0
    return-void
.end method

.method public setScaleUnits(Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;)V
    .locals 3
    .param p1, "units"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    .line 1398
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unallowable unit system: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1403
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    sget-object v1, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V

    .line 1404
    goto :goto_0

    .line 1400
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    sget-object v1, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V

    .line 1401
    nop

    .line 1408
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1409
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setScaleUnitsAbstract(Lcom/google/appinventor/components/common/ScaleUnits;)V
    .locals 2
    .param p1, "units"    # Lcom/google/appinventor/components/common/ScaleUnits;

    .line 1425
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$com$google$appinventor$components$common$ScaleUnits:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/ScaleUnits;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1430
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    sget-object v1, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V

    .line 1431
    goto :goto_0

    .line 1427
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    sget-object v1, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setUnitsOfMeasure(Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;)V

    .line 1428
    nop

    .line 1435
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1436
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setScaleVisible(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 1387
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->scaleBar:Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setEnabled(Z)V

    .line 1388
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1389
    return-void
.end method

.method public setShowUserEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 543
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setEnabled(Z)V

    .line 544
    if-eqz p1, :cond_0

    .line 545
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation()Z

    .line 546
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    .line 549
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->userLocation:Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    .line 551
    :goto_0
    return-void
.end method

.method public setZoom(I)V
    .locals 3
    .param p1, "zoom"    # I

    .line 401
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    int-to-double v1, p1

    invoke-interface {v0, v1, v2}, Lorg/osmdroid/api/IMapController;->setZoom(D)D

    .line 402
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->updateButtons()V

    .line 403
    return-void
.end method

.method public setZoomControlEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 529
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControlEnabled:Z

    if-eq v0, p1, :cond_1

    .line 530
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControls:Lcom/google/appinventor/components/runtime/view/ZoomControlView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->setVisibility(I)V

    .line 531
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomControlEnabled:Z

    .line 532
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->containerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 534
    :cond_1
    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 414
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->zoomEnabled:Z

    .line 415
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/MapView;->setMultiTouchControls(Z)V

    .line 416
    return-void
.end method

.method public showFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 1255
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->hiddenFeatures:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V

    .line 1258
    :cond_0
    return-void
.end method

.method public showInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 3
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 1312
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 1313
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    instance-of v1, v0, Lorg/osmdroid/views/overlay/Marker;

    if-eqz v1, :cond_0

    .line 1314
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/OverlayWithIW;->showInfoWindow()V

    goto :goto_0

    .line 1315
    :cond_0
    instance-of v1, v0, Lorg/osmdroid/views/overlay/Polyline;

    if-eqz v1, :cond_1

    .line 1316
    move-object v1, v0

    check-cast v1, Lorg/osmdroid/views/overlay/Polyline;

    .line 1317
    .local v1, "polyOverlay":Lorg/osmdroid/views/overlay/Polyline;
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/Polyline;->showInfoWindow(Lorg/osmdroid/util/GeoPoint;)V

    .line 1318
    .end local v1    # "polyOverlay":Lorg/osmdroid/views/overlay/Polyline;
    goto :goto_0

    .line 1319
    :cond_1
    move-object v1, v0

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1320
    .local v1, "polyOverlay":Lorg/osmdroid/views/overlay/Polygon;
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/Polygon;->showInfoWindow(Lorg/osmdroid/util/GeoPoint;)V

    .line 1322
    .end local v1    # "polyOverlay":Lorg/osmdroid/views/overlay/Polygon;
    :goto_0
    return-void
.end method

.method protected showOverlay(Lorg/osmdroid/views/overlay/OverlayWithIW;)V
    .locals 1
    .param p1, "overlay"    # Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 1261
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    .line 1262
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1263
    return-void
.end method

.method public updateFeatureDraggable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "aiFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 977
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 978
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    if-eqz v0, :cond_0

    .line 979
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Draggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setDraggable(Z)V

    .line 981
    :cond_0
    return-void
.end method

.method public updateFeatureFill(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V
    .locals 2
    .param p1, "aiFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    .line 888
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 889
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    if-nez v0, :cond_0

    .line 890
    return-void

    .line 892
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$9;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->accept(Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;)V

    .line 921
    return-void
.end method

.method public updateFeatureHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 2
    .param p1, "aiPolygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .line 856
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    .line 857
    .local v0, "polygon":Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;
    if-eqz v0, :cond_0

    .line 858
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->setMultiHoles(Ljava/util/List;)V

    .line 859
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 861
    :cond_0
    return-void
.end method

.method public updateFeatureImage(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 2
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .line 985
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Marker;

    .line 986
    .local v0, "marker":Lorg/osmdroid/views/overlay/Marker;
    if-nez v0, :cond_0

    .line 987
    return-void

    .line 989
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$11;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$11;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 1001
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .locals 5
    .param p1, "aiCircle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .line 865
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Latitude()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Longitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 866
    .local v0, "center":Lorg/osmdroid/util/GeoPoint;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 867
    .local v1, "polygon":Lorg/osmdroid/views/overlay/Polygon;
    if-eqz v1, :cond_0

    .line 868
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsCircle(Lorg/osmdroid/util/GeoPoint;D)Ljava/util/ArrayList;

    move-result-object v2

    .line 869
    .local v2, "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 870
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 872
    .end local v2    # "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_0
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 2
    .param p1, "aiPolyline"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .line 838
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polyline;

    .line 839
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Polyline;
    if-eqz v0, :cond_0

    .line 840
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    .line 841
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 843
    :cond_0
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 6
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .line 827
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Marker;

    .line 828
    .local v0, "marker":Lorg/osmdroid/views/overlay/Marker;
    if-eqz v0, :cond_0

    .line 829
    sget-object v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ANCHOR_HORIZONTAL:[F

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorHorizontal()I

    move-result v2

    aget v1, v1, v2

    sget-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->ANCHOR_VERTICAL:[F

    .line 830
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorVertical()I

    move-result v3

    aget v2, v2, v3

    .line 829
    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/overlay/Marker;->setAnchor(FF)V

    .line 831
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Latitude()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Longitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Marker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    .line 832
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 834
    :cond_0
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 2
    .param p1, "aiPolygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .line 847
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    .line 848
    .local v0, "polygon":Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;
    if-eqz v0, :cond_0

    .line 849
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->setMultiPoints(Ljava/util/List;)V

    .line 850
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 852
    :cond_0
    return-void
.end method

.method public updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .locals 11
    .param p1, "aiRectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .line 877
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    .line 878
    .local v0, "polygon":Lorg/osmdroid/views/overlay/Polygon;
    if-eqz v0, :cond_0

    .line 879
    new-instance v10, Lorg/osmdroid/util/BoundingBox;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v2

    .line 880
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v6

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v8

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 879
    invoke-static {v10}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsRect(Lorg/osmdroid/util/BoundingBox;)Ljava/util/ArrayList;

    move-result-object v1

    .line 881
    .local v1, "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 882
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->view:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 884
    .end local v1    # "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    :cond_0
    return-void
.end method

.method public updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 2
    .param p1, "aiMarker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .line 1005
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Marker;

    .line 1006
    .local v0, "marker":Lorg/osmdroid/views/overlay/Marker;
    if-nez v0, :cond_0

    .line 1007
    return-void

    .line 1009
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$12;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$12;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getMarkerDrawable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 1021
    return-void
.end method

.method public updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V
    .locals 2
    .param p1, "aiFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    .line 925
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 926
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    if-nez v0, :cond_0

    .line 927
    return-void

    .line 929
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->accept(Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;)V

    .line 964
    return-void
.end method

.method public updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "aiFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 968
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->featureOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayWithIW;

    .line 969
    .local v0, "overlay":Lorg/osmdroid/views/overlay/OverlayWithIW;
    if-eqz v0, :cond_0

    .line 970
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setTitle(Ljava/lang/String;)V

    .line 971
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/OverlayWithIW;->setSnippet(Ljava/lang/String;)V

    .line 973
    :cond_0
    return-void
.end method
