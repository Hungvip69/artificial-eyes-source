.class final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;
.super Ljava/lang/Object;
.source "GeoJSONUtil.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FeatureWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final out:Ljava/io/PrintStream;


# direct methods
.method private constructor <init>(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    .line 532
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/PrintStream;Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;-><init>(Ljava/io/PrintStream;)V

    return-void
.end method

.method private static hasAltitude(Lorg/osmdroid/util/GeoPoint;)Z
    .locals 4
    .param p0, "point"    # Lorg/osmdroid/util/GeoPoint;

    .line 758
    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private writeColorProperty(Ljava/lang/String;I)V
    .locals 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 561
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, ",\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\":\"&H"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 564
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "unpadded":Ljava/lang/String;
    const/16 v1, 0x8

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 566
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 565
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 568
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 569
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method private writeLineGeometry(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 2
    .param p1, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .line 625
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\"geometry\":{\"type\":\"LineString\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 626
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    .line 627
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method private writeMultipolygonGeometryNoHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 7
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .line 631
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\"geometry\":{\"type\":\"MultiPolygon\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 632
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 633
    .local v0, "pointIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 634
    .local v1, "holePointIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    const/4 v2, 0x1

    .line 635
    .local v2, "first":Z
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 636
    const-string v3, ","

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 637
    :cond_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 638
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    .line 639
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 640
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 641
    .local v5, "holePoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 642
    invoke-direct {p0, v5}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    .line 643
    .end local v5    # "holePoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    goto :goto_1

    .line 645
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 646
    const/4 v2, 0x0

    goto :goto_0

    .line 648
    :cond_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v4, "]}"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method private writePointGeometry(Lorg/osmdroid/util/GeoPoint;)V
    .locals 4
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .line 573
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\"geometry\":{\"type\":\"Point\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->print(D)V

    .line 575
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintStream;->print(D)V

    .line 577
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->hasAltitude(Lorg/osmdroid/util/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->print(D)V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method private writePoints(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .line 608
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    const/4 v0, 0x1

    .line 609
    .local v0, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    .line 610
    .local v2, "p":Lorg/osmdroid/util/GeoPoint;
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(C)V

    .line 611
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 612
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->print(D)V

    .line 613
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 614
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/io/PrintStream;->print(D)V

    .line 615
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->hasAltitude(Lorg/osmdroid/util/GeoPoint;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 616
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 617
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->print(D)V

    .line 619
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 620
    const/4 v0, 0x0

    .line 621
    .end local v2    # "p":Lorg/osmdroid/util/GeoPoint;
    goto :goto_0

    .line 622
    :cond_2
    return-void
.end method

.method private writePolygonGeometry(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 2
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .line 664
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 665
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeMultipolygonGeometryNoHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    goto :goto_0

    .line 667
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePolygonGeometryNoHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 669
    :goto_0
    return-void
.end method

.method private writePolygonGeometryNoHoles(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 4
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .line 652
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\"geometry\":{\"type\":\"Polygon\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 653
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    .line 654
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 656
    .local v1, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 657
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePoints(Ljava/util/List;)V

    .line 658
    .end local v1    # "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    goto :goto_0

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method private writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    .line 603
    const-string v0, "fill"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillColor()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeColorProperty(Ljava/lang/String;I)V

    .line 604
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillOpacity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "fill-opacity"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 605
    return-void
.end method

.method private writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    .line 597
    const-string v0, "stroke"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeColorProperty(Ljava/lang/String;I)V

    .line 598
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeOpacity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "stroke-opacity"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 599
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "stroke-width"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 600
    return-void
.end method

.method private writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 589
    const-string v0, "description"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Description()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Draggable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "draggable"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 591
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->EnableInfobox()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "infobox"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    const-string v0, "title"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Title()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Visible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "visible"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 594
    return-void
.end method

.method private writePropertiesHeader(Ljava/lang/String;)V
    .locals 3
    .param p1, "runtimeType"    # Ljava/lang/String;

    .line 585
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",\"properties\":{\"$Type\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method private writeProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 542
    :try_start_0
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v2, ",\""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v2, "\":"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    .end local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to serialize the value of \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" as JSON"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeoJSONUtil"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private writeProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 553
    if-eqz p2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 557
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 558
    return-void

    .line 555
    :cond_1
    :goto_0
    return-void
.end method

.method private writeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 535
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\"type\":\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 538
    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 526
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 526
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 526
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 526
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 526
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 719
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 720
    const-string v0, "Feature"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 722
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePointGeometry(Lorg/osmdroid/util/GeoPoint;)V

    .line 723
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 724
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 725
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 726
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 727
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 728
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 692
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 693
    const-string v0, "Feature"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 695
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeLineGeometry(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    .line 696
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 697
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 698
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 699
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 700
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 673
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 674
    const-string v0, "Feature"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 676
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePointGeometry(Lorg/osmdroid/util/GeoPoint;)V

    .line 677
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 678
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 679
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 680
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 681
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorHorizontal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "anchorHorizontal"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorVertical()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "anchorVertical"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 683
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "height"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    const-string v0, "image"

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "width"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 686
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 687
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 705
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 706
    const-string v0, "Feature"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 708
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePolygonGeometry(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 709
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 710
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 711
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 712
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 713
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 714
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Void;
    .locals 9
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 733
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 734
    const-string v0, "Feature"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeType(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, ",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "],"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writePropertiesHeader(Ljava/lang/String;)V

    .line 742
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 743
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 744
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperties(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 745
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "NorthLatitude"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 746
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "WestLongitude"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 747
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "SouthLatitude"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 748
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "EastLongitude"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->writeProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 749
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;->out:Ljava/io/PrintStream;

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 750
    const/4 v0, 0x0

    return-object v0
.end method
