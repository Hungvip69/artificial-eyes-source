.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4$1;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/Marker$OnMarkerClickListener;


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

    .line 618
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "marker"    # Lorg/osmdroid/views/overlay/Marker;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 621
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

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

    .line 622
    .local v1, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 623
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->EnableInfobox()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Marker;->showInfoWindow()V

    .line 627
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onMarkerLongPress(Lorg/osmdroid/views/overlay/Marker;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "marker"    # Lorg/osmdroid/views/overlay/Marker;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 631
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

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

    .line 632
    .local v1, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$4;->val$aiMarker:Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureLongPress(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 633
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_0

    .line 634
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
