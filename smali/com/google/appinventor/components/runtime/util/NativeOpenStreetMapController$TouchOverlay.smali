.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "NativeOpenStreetMapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchOverlay"
.end annotation


# instance fields
.field private scrollEnabled:Z

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;


# direct methods
.method static bridge synthetic -$$Nest$fgetscrollEnabled(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->scrollEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputscrollEnabled(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->scrollEnabled:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 238
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->scrollEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 0
    .param p1, "arg0"    # Landroid/graphics/Canvas;
    .param p2, "arg1"    # Lorg/osmdroid/views/MapView;
    .param p3, "arg2"    # Z

    .line 241
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F
    .param p5, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 245
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->scrollEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 7
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 255
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    .line 256
    .local v0, "p":Lorg/osmdroid/api/IGeoPoint;
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v1

    .line 257
    .local v1, "lat":D
    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v3

    .line 258
    .local v3, "lng":D
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->-$$Nest$fgeteventListeners(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 259
    .local v6, "l":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    invoke-interface {v6, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onLongPress(DD)V

    .line 260
    .end local v6    # "l":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_0

    .line 261
    :cond_0
    const/4 v5, 0x0

    return v5
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F
    .param p5, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 250
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$TouchOverlay;->scrollEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
