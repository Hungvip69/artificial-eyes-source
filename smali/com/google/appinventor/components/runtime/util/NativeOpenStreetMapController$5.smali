.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$5;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/Polyline$OnClickListener;


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

    .line 675
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$5;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$5;->val$aiPolyline:Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
    .locals 3
    .param p1, "arg0"    # Lorg/osmdroid/views/overlay/Polyline;
    .param p2, "arg1"    # Lorg/osmdroid/views/MapView;
    .param p3, "arg2"    # Lorg/osmdroid/util/GeoPoint;

    .line 678
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$5;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

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

    .line 679
    .local v1, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$5;->val$aiPolyline:Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 680
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$5;->val$aiPolyline:Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->EnableInfobox()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    invoke-virtual {p1, p3}, Lorg/osmdroid/views/overlay/Polyline;->showInfoWindow(Lorg/osmdroid/util/GeoPoint;)V

    .line 684
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onLongClick(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
    .locals 3
    .param p1, "arg0"    # Lorg/osmdroid/views/overlay/Polyline;
    .param p2, "arg1"    # Lorg/osmdroid/views/MapView;
    .param p3, "arg2"    # Lorg/osmdroid/util/GeoPoint;

    .line 689
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$5;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

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

    .line 690
    .local v1, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$5;->val$aiPolyline:Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureLongPress(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 691
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_0

    .line 692
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
