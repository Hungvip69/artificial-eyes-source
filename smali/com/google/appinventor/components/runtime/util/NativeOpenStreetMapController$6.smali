.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$6;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/Polyline$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

.field final synthetic val$aiPolyline:Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .line 695
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$6;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$6;->val$aiPolyline:Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Lorg/osmdroid/views/overlay/Polyline;)V
    .locals 3
    .param p1, "polyline"    # Lorg/osmdroid/views/overlay/Polyline;

    .line 705
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$6;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

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

    .line 706
    .local v1, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$6;->val$aiPolyline:Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 707
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_0

    .line 708
    :cond_0
    return-void
.end method

.method public onDragEnd(Lorg/osmdroid/views/overlay/Polyline;)V
    .locals 3
    .param p1, "polyline"    # Lorg/osmdroid/views/overlay/Polyline;

    .line 712
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$6;->val$aiPolyline:Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polyline;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->updatePoints(Ljava/util/List;)V

    .line 713
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$6;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

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

    .line 714
    .local v1, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$6;->val$aiPolyline:Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 715
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_0

    .line 716
    :cond_0
    return-void
.end method

.method public onDragStart(Lorg/osmdroid/views/overlay/Polyline;)V
    .locals 3
    .param p1, "polyline"    # Lorg/osmdroid/views/overlay/Polyline;

    .line 698
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$6;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

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

    .line 699
    .local v1, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$6;->val$aiPolyline:Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 700
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_0

    .line 701
    :cond_0
    return-void
.end method
