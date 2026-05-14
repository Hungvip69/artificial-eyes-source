.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/Polygon$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

.field final synthetic val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .line 747
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 3
    .param p1, "polygon"    # Lorg/osmdroid/views/overlay/Polygon;

    .line 757
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

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

    .line 758
    .local v1, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 759
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_0

    .line 760
    :cond_0
    return-void
.end method

.method public onDragEnd(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 19
    .param p1, "polygon"    # Lorg/osmdroid/views/overlay/Polygon;

    .line 764
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    instance-of v1, v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    if-eqz v1, :cond_2

    .line 765
    const-wide/16 v1, 0x0

    .local v1, "latitude":D
    const-wide/16 v3, 0x0

    .line 766
    .local v3, "longitude":D
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 768
    .local v5, "count":I
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/osmdroid/util/GeoPoint;

    .line 769
    .local v7, "p":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    add-double/2addr v1, v8

    .line 770
    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    add-double/2addr v3, v8

    .line 771
    .end local v7    # "p":Lorg/osmdroid/util/GeoPoint;
    goto :goto_0

    .line 772
    :cond_0
    if-lez v5, :cond_1

    .line 773
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    check-cast v6, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    int-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double v7, v1, v7

    int-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double v9, v3, v9

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->updateCenter(DD)V

    goto :goto_1

    .line 775
    :cond_1
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    check-cast v6, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    const-wide/16 v7, 0x0

    invoke-interface {v6, v7, v8, v7, v8}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->updateCenter(DD)V

    .line 777
    .end local v1    # "latitude":D
    .end local v3    # "longitude":D
    .end local v5    # "count":I
    :goto_1
    goto/16 :goto_3

    :cond_2
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    instance-of v1, v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    if-eqz v1, :cond_4

    .line 778
    const-wide v1, -0x3fa9800000000000L    # -90.0

    .local v1, "north":D
    const-wide v3, -0x3f99800000000000L    # -180.0

    .local v3, "east":D
    const-wide v5, 0x4066800000000000L    # 180.0

    .local v5, "west":D
    const-wide v7, 0x4056800000000000L    # 90.0

    .line 779
    .local v7, "south":D
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/osmdroid/util/GeoPoint;

    .line 780
    .local v10, "p":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v11

    .line 781
    .local v11, "lat":D
    invoke-virtual {v10}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v13

    .line 782
    .local v13, "lng":D
    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 783
    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    .line 784
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 785
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 786
    .end local v10    # "p":Lorg/osmdroid/util/GeoPoint;
    .end local v11    # "lat":D
    .end local v13    # "lng":D
    goto :goto_2

    .line 787
    :cond_3
    iget-object v9, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-object v10, v9

    check-cast v10, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    move-wide v11, v1

    move-wide v13, v5

    move-wide v15, v7

    move-wide/from16 v17, v3

    invoke-interface/range {v10 .. v18}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->updateBounds(DDDD)V

    .line 788
    .end local v1    # "north":D
    .end local v3    # "east":D
    .end local v5    # "west":D
    .end local v7    # "south":D
    goto :goto_3

    .line 789
    :cond_4
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    move-object/from16 v2, p1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->getMultiPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->updatePoints(Ljava/util/List;)V

    .line 790
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    move-object/from16 v2, p1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->getMultiHoles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->updateHolePoints(Ljava/util/List;)V

    .line 792
    :goto_3
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->-$$Nest$fgeteventListeners(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 793
    .local v2, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-interface {v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 794
    .end local v2    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_4

    .line 795
    :cond_5
    return-void
.end method

.method public onDragStart(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 3
    .param p1, "polygon"    # Lorg/osmdroid/views/overlay/Polygon;

    .line 750
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

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

    .line 751
    .local v1, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$8;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 752
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_0

    .line 753
    :cond_0
    return-void
.end method
