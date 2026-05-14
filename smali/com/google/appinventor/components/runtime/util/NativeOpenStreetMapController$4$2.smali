.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4$2;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/Marker$OnMarkerDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;->onSuccess(Lorg/osmdroid/views/overlay/Marker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

    .line 637
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4$2;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerDrag(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 3
    .param p1, "marker"    # Lorg/osmdroid/views/overlay/Marker;

    .line 640
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4$2;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->-$$Nest$fgeteventListeners(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 641
    .local v1, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4$2;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 642
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_0

    .line 643
    :cond_0
    return-void
.end method

.method public onMarkerDragEnd(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 6
    .param p1, "marker"    # Lorg/osmdroid/views/overlay/Marker;

    .line 647
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->getPosition()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    .line 648
    .local v0, "point":Lorg/osmdroid/api/IGeoPoint;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4$2;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->updateLocation(DD)V

    .line 649
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4$2;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->-$$Nest$fgeteventListeners(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 650
    .local v2, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4$2;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 651
    .end local v2    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_0

    .line 652
    :cond_0
    return-void
.end method

.method public onMarkerDragStart(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 3
    .param p1, "marker"    # Lorg/osmdroid/views/overlay/Marker;

    .line 656
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4$2;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->-$$Nest$fgeteventListeners(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 657
    .local v1, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4$2;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 658
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_0

    .line 659
    :cond_0
    return-void
.end method
