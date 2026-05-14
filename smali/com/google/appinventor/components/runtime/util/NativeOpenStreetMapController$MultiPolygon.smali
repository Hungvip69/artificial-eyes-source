.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;
.super Lorg/osmdroid/views/overlay/Polygon;
.source "NativeOpenStreetMapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiPolygon"
.end annotation


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/Polygon;",
            ">;"
        }
    .end annotation
.end field

.field private clickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

.field private dragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

.field private draggable:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1450
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public contains(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1607
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1608
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->contains(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1609
    const/4 v0, 0x1

    return v0

    .line 1611
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    :cond_0
    goto :goto_0

    .line 1612
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "b"    # Z

    .line 1466
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1467
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polygon;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    .line 1468
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_0

    .line 1469
    :cond_0
    return-void
.end method

.method public finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 2
    .param p1, "start"    # Landroid/view/MotionEvent;
    .param p2, "end"    # Landroid/view/MotionEvent;
    .param p3, "view"    # Lorg/osmdroid/views/MapView;

    .line 1646
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1647
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polygon;->finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1648
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_0

    .line 1649
    :cond_0
    return-void
.end method

.method public getMultiHoles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;"
        }
    .end annotation

    .line 1505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1506
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/Polygon;

    .line 1507
    .local v2, "p":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/Polygon;->getHoles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1508
    .end local v2    # "p":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_0

    .line 1509
    :cond_0
    return-object v0
.end method

.method public getMultiPoints()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation

    .line 1472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1473
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/Polygon;

    .line 1474
    .local v2, "p":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1475
    .end local v2    # "p":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_0

    .line 1476
    :cond_0
    return-object v0
.end method

.method public moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "start"    # Landroid/view/MotionEvent;
    .param p3, "view"    # Lorg/osmdroid/views/MapView;

    .line 1639
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1640
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/Polygon;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1641
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_0

    .line 1642
    :cond_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 1617
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->contains(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1618
    .local v0, "touched":Z
    if-eqz v0, :cond_2

    .line 1619
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mDraggable:Z

    if-eqz v1, :cond_1

    .line 1620
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mIsDragged:Z

    .line 1621
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->closeInfoWindow()V

    .line 1622
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mDragStartPoint:Landroid/view/MotionEvent;

    .line 1623
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz v1, :cond_0

    .line 1624
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-interface {v1, p0}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDragStart(Lorg/osmdroid/views/overlay/Polygon;)V

    .line 1626
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    goto :goto_0

    .line 1627
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    if-eqz v1, :cond_2

    .line 1628
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .line 1629
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 1630
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 1629
    invoke-virtual {v2, v3, v4}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    .line 1628
    invoke-interface {v1, p0, p2, v2}, Lorg/osmdroid/views/overlay/Polygon$OnClickListener;->onLongClick(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    .line 1633
    :cond_2
    :goto_0
    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 1597
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1598
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Polygon;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1599
    const/4 v0, 0x1

    return v0

    .line 1601
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    :cond_0
    goto :goto_0

    .line 1602
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 1653
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mDraggable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mIsDragged:Z

    if-eqz v0, :cond_3

    .line 1654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1655
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mIsDragged:Z

    .line 1656
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->finishMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1657
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-interface {v0, p0}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDragEnd(Lorg/osmdroid/views/overlay/Polygon;)V

    .line 1660
    :cond_0
    return v2

    .line 1661
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 1662
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mDragStartPoint:Landroid/view/MotionEvent;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->moveToEventPosition(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 1663
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    if-eqz v0, :cond_2

    .line 1664
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->mOnDragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-interface {v0, p0}, Lorg/osmdroid/views/overlay/Polygon$OnDragListener;->onDrag(Lorg/osmdroid/views/overlay/Polygon;)V

    .line 1666
    :cond_2
    return v2

    .line 1669
    :cond_3
    return v1
.end method

.method public setDraggable(Z)V
    .locals 2
    .param p1, "draggable"    # Z

    .line 1530
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1531
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->draggable:Z

    .line 1532
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1533
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1534
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_0

    .line 1535
    :cond_0
    return-void
.end method

.method public setFillColor(I)V
    .locals 2
    .param p1, "fillColor"    # I

    .line 1573
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1574
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1575
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1576
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_0

    .line 1577
    :cond_0
    return-void
.end method

.method public setMultiHoles(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1513
    .local p1, "holes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1517
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1520
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1521
    .local v0, "polygonIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/osmdroid/views/overlay/Polygon;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1522
    .local v1, "holeIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1523
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/Polygon;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setHoles(Ljava/util/List;)V

    goto :goto_0

    .line 1518
    .end local v0    # "polygonIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/osmdroid/views/overlay/Polygon;>;"
    .end local v1    # "holeIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Holes and points are not of the same arity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1514
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1515
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/osmdroid/views/overlay/Polygon;->setHoles(Ljava/util/List;)V

    .line 1516
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_2

    :cond_3
    nop

    .line 1526
    :cond_4
    return-void
.end method

.method public setMultiPoints(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)V"
        }
    .end annotation

    .line 1480
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1481
    .local v0, "polygonIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/osmdroid/views/overlay/Polygon;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1482
    .local v1, "pointIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1483
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/Polygon;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    goto :goto_0

    .line 1485
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1486
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1487
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1489
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1490
    new-instance v2, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v2}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    .line 1491
    .local v2, "p":Lorg/osmdroid/views/overlay/Polygon;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    .line 1492
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->getStrokeColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 1493
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->getFillColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setFillColor(I)V

    .line 1494
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->getStrokeWidth()F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1495
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->getInfoWindow()Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    .line 1496
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->draggable:Z

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setDraggable(Z)V

    .line 1497
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->clickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 1498
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->dragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 1499
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1500
    .end local v2    # "p":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_2

    .line 1501
    :cond_2
    return-void
.end method

.method public setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .line 1539
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 1540
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->clickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .line 1541
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1542
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V

    .line 1543
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_0

    .line 1544
    :cond_0
    return-void
.end method

.method public setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    .line 1548
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 1549
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->dragListener:Lorg/osmdroid/views/overlay/Polygon$OnDragListener;

    .line 1550
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1551
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setOnDragListener(Lorg/osmdroid/views/overlay/Polygon$OnDragListener;)V

    .line 1552
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_0

    .line 1553
    :cond_0
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 2
    .param p1, "snippet"    # Ljava/lang/String;

    .line 1589
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setSnippet(Ljava/lang/String;)V

    .line 1590
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1591
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setSnippet(Ljava/lang/String;)V

    .line 1592
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_0

    .line 1593
    :cond_0
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2
    .param p1, "strokeColor"    # I

    .line 1565
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 1566
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1567
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 1568
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_0

    .line 1569
    :cond_0
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .param p1, "strokeWidth"    # F

    .line 1557
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1558
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1559
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 1560
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_0

    .line 1561
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .line 1581
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Polygon;->setTitle(Ljava/lang/String;)V

    .line 1582
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Polygon;

    .line 1583
    .local v1, "child":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Polygon;->setTitle(Ljava/lang/String;)V

    .line 1584
    .end local v1    # "child":Lorg/osmdroid/views/overlay/Polygon;
    goto :goto_0

    .line 1585
    :cond_0
    return-void
.end method

.method public showInfoWindow()V
    .locals 2

    .line 1459
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->children:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polygon;->showInfoWindow()V

    .line 1462
    :cond_0
    return-void
.end method
