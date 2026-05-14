.class public final Lcom/google/appinventor/components/runtime/util/GeometryUtil;
.super Ljava/lang/Object;
.source "GeometryUtil.java"


# static fields
.field public static final EARTH_RADIUS:D = 6378137.0

.field private static final FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

.field public static final ONE_DEG_IN_METERS:D = 111319.49079327358

.field public static final WEB_MERCATOR_SRID:I = 0x10e6


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    new-instance v1, Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/PrecisionModel;-><init>()V

    const/16 v2, 0x10e6

    invoke-direct {v0, v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static asYailList(Lorg/osmdroid/api/IGeoPoint;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .param p0, "point"    # Lorg/osmdroid/api/IGeoPoint;

    .line 81
    invoke-interface {p0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public static bearingTo(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)D
    .locals 2
    .param p0, "from"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "to"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .line 400
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 2
    .param p0, "from"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "to"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .line 435
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 2
    .param p0, "from"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "to"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .line 423
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 2
    .param p0, "from"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "to"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .line 427
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 2
    .param p0, "from"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "to"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .line 431
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 2
    .param p0, "from"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "to"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .line 419
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 2
    .param p0, "from"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "to"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .line 405
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 2
    .param p0, "from"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "to"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .line 410
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 2
    .param p0, "from"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "to"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .line 415
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static coerceToDouble(Ljava/lang/Object;)D
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 53
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    return-wide v1
.end method

.method public static coerceToPoint(Ljava/lang/Object;Ljava/lang/Object;)Lorg/osmdroid/util/GeoPoint;
    .locals 7
    .param p0, "lat"    # Ljava/lang/Object;
    .param p1, "lng"    # Ljava/lang/Object;

    .line 65
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 66
    .local v0, "latitude":D
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v2

    .line 67
    .local v2, "longitude":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_3

    .line 69
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_2

    .line 71
    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v6, v0, v4

    if-ltz v6, :cond_1

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v6, v0, v4

    if-gtz v6, :cond_1

    .line 73
    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v6, v2, v4

    if-ltz v6, :cond_0

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v6, v2, v4

    if-gtz v6, :cond_0

    .line 76
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v4

    .line 74
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Longitude must be between -180 and 180."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 72
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Latitude must be between -90 and 90."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 70
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Longitude must be a numeric."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 68
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Latitude must be a numeric."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static createGeometry(DDDD)Lorg/locationtech/jts/geom/Geometry;
    .locals 4
    .param p0, "north"    # D
    .param p2, "east"    # D
    .param p4, "south"    # D
    .param p6, "west"    # D

    .line 129
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/locationtech/jts/geom/Coordinate;

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2, p2, p3, p0, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2, p2, p3, p4, p5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2, p6, p7, p4, p5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2, p6, p7, p0, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2, p2, p3, p0, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v0

    return-object v0
.end method

.method public static createGeometry(Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/locationtech/jts/geom/Geometry;"
        }
    .end annotation

    .line 125
    .local p0, "line":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsToCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    return-object v0
.end method

.method public static createGeometry(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;)",
            "Lorg/locationtech/jts/geom/Geometry;"
        }
    .end annotation

    .line 139
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    .local p1, "holes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    if-eqz p0, :cond_7

    .line 142
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "holes must either be null or the same length as points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/locationtech/jts/geom/Polygon;

    .line 146
    .local v0, "polygons":[Lorg/locationtech/jts/geom/Polygon;
    const/4 v1, 0x0

    .line 147
    .local v1, "i":I
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 152
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 153
    .local v2, "ip":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 154
    .local v3, "jp":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 155
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->ringToPolygon(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v5

    aput-object v5, v0, v1

    move v1, v4

    goto :goto_1

    .line 148
    .end local v2    # "ip":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    .end local v3    # "jp":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 149
    .local v3, "ring":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .restart local v4    # "i":I
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->ringToPolygon(Ljava/util/List;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v5

    aput-object v5, v0, v1

    .line 150
    .end local v3    # "ring":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    move v1, v4

    goto :goto_3

    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_4
    nop

    .line 158
    :cond_5
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    aget-object v2, v0, v2

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v2, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPolygon([Lorg/locationtech/jts/geom/Polygon;)Lorg/locationtech/jts/geom/MultiPolygon;

    move-result-object v2

    :goto_4
    return-object v2

    .line 140
    .end local v0    # "polygons":[Lorg/locationtech/jts/geom/Polygon;
    .end local v1    # "i":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "points must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public static createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "point"    # Lorg/osmdroid/util/GeoPoint;

    .line 121
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointToCoordinate(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    return-object v0
.end method

.method public static distanceBetween(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)D
    .locals 2
    .param p0, "marker1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "marker2"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .line 246
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getLocation()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getLocation()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetween(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lorg/osmdroid/util/GeoPoint;)D
    .locals 2
    .param p0, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .line 242
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getLocation()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D
    .locals 22
    .param p0, "a"    # Lorg/osmdroid/api/IGeoPoint;
    .param p1, "b"    # Lorg/osmdroid/api/IGeoPoint;

    .line 230
    invoke-interface/range {p0 .. p0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 231
    .local v0, "lat1":D
    invoke-interface/range {p0 .. p0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 232
    .local v2, "lng1":D
    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 233
    .local v4, "lat2":D
    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 234
    .local v6, "lng2":D
    sub-double v8, v4, v0

    .line 235
    .local v8, "dLat":D
    sub-double v10, v6, v2

    .line 236
    .local v10, "dLng":D
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v14, v8, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    div-double v18, v10, v12

    move-wide/from16 v20, v0

    .end local v0    # "lat1":D
    .local v20, "lat1":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v16, v16, v0

    add-double v14, v14, v16

    .line 237
    .local v14, "cordlen":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v14

    move-wide/from16 v18, v2

    .end local v2    # "lng1":D
    .local v18, "lng1":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double v0, v0, v12

    .line 238
    .local v0, "angle":D
    const-wide v2, 0x415854a640000000L    # 6378137.0

    mul-double v2, v2, v0

    return-wide v2
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 2
    .param p0, "circle1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
    .param p1, "circle2"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .line 384
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 2
    .param p0, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .line 388
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lorg/osmdroid/util/GeoPoint;)D
    .locals 2
    .param p0, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .line 380
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 2
    .param p0, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .line 356
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 2
    .param p0, "lineString1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "lineString2"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .line 348
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 2
    .param p0, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .line 352
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 2
    .param p0, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .line 360
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lorg/osmdroid/util/GeoPoint;)D
    .locals 2
    .param p0, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .line 344
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 2
    .param p0, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .line 336
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 2
    .param p0, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .line 328
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 2
    .param p0, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .line 332
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 2
    .param p0, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .line 340
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 2
    .param p0, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .line 372
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 2
    .param p0, "polygon1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p1, "polygon2"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .line 368
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 2
    .param p0, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .line 376
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lorg/osmdroid/util/GeoPoint;)D
    .locals 2
    .param p0, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .line 364
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 2
    .param p0, "rectangle1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;
    .param p1, "rectangle2"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .line 396
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lorg/osmdroid/util/GeoPoint;)D
    .locals 2
    .param p0, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .line 392
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 5
    .param p0, "circle1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
    .param p1, "circle2"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .line 310
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 311
    .local v0, "d":D
    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 5
    .param p0, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .line 315
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double v0, v0, v2

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 316
    .local v0, "d":D
    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lorg/osmdroid/util/GeoPoint;)D
    .locals 5
    .param p0, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .line 305
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 306
    .local v0, "d":D
    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 5
    .param p0, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .line 279
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double v0, v0, v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 280
    .local v0, "d":D
    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 4
    .param p0, "lineString1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "lineString2"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .line 271
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 4
    .param p0, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .line 275
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 4
    .param p0, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .line 284
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lorg/osmdroid/util/GeoPoint;)D
    .locals 4
    .param p0, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .line 267
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 5
    .param p0, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .line 258
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result v0

    int-to-double v0, v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    .line 259
    .local v0, "d":D
    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 4
    .param p0, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .line 250
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 4
    .param p0, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .line 254
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 4
    .param p0, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .line 263
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 5
    .param p0, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .line 296
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double v0, v0, v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 297
    .local v0, "d":D
    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    return-wide v2
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 4
    .param p0, "polygon1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p1, "polygon2"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .line 292
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 4
    .param p0, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .line 301
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lorg/osmdroid/util/GeoPoint;)D
    .locals 4
    .param p0, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .line 288
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 4
    .param p0, "rectangle1"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;
    .param p1, "rectangle2"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .line 324
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lorg/osmdroid/util/GeoPoint;)D
    .locals 4
    .param p0, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;
    .param p1, "point"    # Lorg/osmdroid/util/GeoPoint;

    .line 320
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static geoPointToCoordinate(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 5
    .param p0, "p"    # Lorg/osmdroid/util/GeoPoint;

    .line 226
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    return-object v0
.end method

.method public static geoPointsToLinearRing(Ljava/util/List;)Lorg/locationtech/jts/geom/LinearRing;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/locationtech/jts/geom/LinearRing;"
        }
    .end annotation

    .line 208
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsToCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v0

    return-object v0
.end method

.method public static getCentroid(Ljava/util/List;Ljava/util/List;)Lorg/osmdroid/util/GeoPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;)",
            "Lorg/osmdroid/util/GeoPoint;"
        }
    .end annotation

    .line 187
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    .local p1, "holes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getCentroid()Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->jtsPointToGeoPoint(Lorg/locationtech/jts/geom/Point;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public static getMidpoint(Ljava/util/List;)Lorg/osmdroid/util/GeoPoint;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/osmdroid/util/GeoPoint;"
        }
    .end annotation

    .line 162
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0

    .line 165
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 166
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    return-object v0

    .line 168
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsToCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    .line 169
    .local v0, "ls":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getCentroid()Lorg/locationtech/jts/geom/Point;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->jtsPointToGeoPoint(Lorg/locationtech/jts/geom/Point;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    return-object v1
.end method

.method public static isMultiPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z
    .locals 4
    .param p0, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 567
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 568
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v3, "list"

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 567
    :goto_0
    return v0
.end method

.method public static isPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z
    .locals 5
    .param p0, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 546
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 547
    return v2

    .line 550
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-class v3, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v4, "list"

    invoke-static {v1, v3, v4}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Lorg/osmdroid/util/GeoPoint;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    return v0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    return v2
.end method

.method public static isValidLatitude(D)Z
    .locals 3
    .param p0, "latitude"    # D

    .line 445
    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v0, p0

    if-gtz v2, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidLongitude(D)Z
    .locals 3
    .param p0, "longitude"    # D

    .line 455
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v0, p0

    if-gtz v2, :cond_0

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static jtsPointToGeoPoint(Lorg/locationtech/jts/geom/Point;)Lorg/osmdroid/util/GeoPoint;
    .locals 5
    .param p0, "p"    # Lorg/locationtech/jts/geom/Point;

    .line 222
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->getY()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->getX()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method public static multiPolygonFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    .locals 5
    .param p0, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v0, "multipolygon":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 503
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v4, "list"

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 506
    :cond_0
    return-object v0
.end method

.method public static multiPolygonHolesFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    .locals 6
    .param p0, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;"
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v0, "holes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 512
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v2, 0x1

    .line 514
    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 515
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-class v4, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v5, "list"

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 516
    .local v3, "yailHoles":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    nop

    .end local v3    # "yailHoles":Lcom/google/appinventor/components/runtime/util/YailList;
    add-int/lit8 v2, v2, 0x1

    .line 518
    goto :goto_0

    .line 521
    :cond_0
    nop

    .line 522
    return-object v0

    .line 519
    :catch_0
    move-exception v3

    .line 520
    .local v3, "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/errors/IterationError;->fromError(ILcom/google/appinventor/components/runtime/errors/DispatchableError;)Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-result-object v4

    goto :goto_2

    :goto_1
    throw v4

    :goto_2
    goto :goto_1
.end method

.method public static multiPolygonHolesToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    .line 528
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 530
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 531
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static multiPolygonToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 481
    return-object v0

    .line 482
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_1

    .line 483
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->polygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 485
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 486
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->polygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static multiPolygonToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)",
            "Lcom/google/appinventor/components/runtime/util/YailList;"
        }
    .end annotation

    .line 493
    .local p0, "multipolygon":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 494
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 495
    .local v2, "polygon":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    .end local v2    # "polygon":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    goto :goto_0

    .line 497
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method public static pointFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Lorg/osmdroid/util/GeoPoint;
    .locals 7
    .param p0, "point"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 93
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lt v0, v1, :cond_0

    .line 98
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToPoint(Ljava/lang/Object;Ljava/lang/Object;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    aput-object v6, v3, v4

    const/16 v2, 0xd4d

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v1

    .line 94
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    aput-object v5, v3, v4

    const/16 v1, 0xd51

    invoke-direct {v0, v1, v3}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v0
.end method

.method public static pointsFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    .locals 6
    .param p0, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, "newPoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 107
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v2, 0x1

    .line 108
    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-class v4, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v5, "list"

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    add-int/lit8 v2, v2, 0x1

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v3

    .line 114
    .local v3, "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/errors/IterationError;->fromError(ILcom/google/appinventor/components/runtime/errors/DispatchableError;)Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-result-object v4

    throw v4

    .line 117
    .end local v3    # "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    :cond_0
    return-object v0
.end method

.method public static pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/YailList;"
        }
    .end annotation

    .line 85
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<+Lorg/osmdroid/api/IGeoPoint;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/api/IGeoPoint;

    .line 87
    .local v2, "point":Lorg/osmdroid/api/IGeoPoint;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->asYailList(Lorg/osmdroid/api/IGeoPoint;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v2    # "point":Lorg/osmdroid/api/IGeoPoint;
    goto :goto_0

    .line 89
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method public static pointsToCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)[",
            "Lorg/locationtech/jts/geom/Coordinate;"
        }
    .end annotation

    .line 195
    .local p0, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/osmdroid/util/GeoPoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 196
    .local v1, "closed":Z
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    xor-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Lorg/locationtech/jts/geom/Coordinate;

    .line 197
    .local v2, "coordinates":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v3, 0x0

    .line 198
    .local v3, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    .line 199
    .local v5, "p":Lorg/osmdroid/util/GeoPoint;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointToCoordinate(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    aput-object v7, v2, v3

    .line 200
    .end local v5    # "p":Lorg/osmdroid/util/GeoPoint;
    move v3, v6

    goto :goto_0

    .line 201
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_0
    if-nez v1, :cond_1

    .line 202
    aget-object v0, v2, v0

    aput-object v0, v2, v3

    .line 204
    :cond_1
    return-object v2
.end method

.method public static polygonToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 18
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 460
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_3

    .line 464
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 465
    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    .line 466
    .local v5, "point":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 469
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 470
    new-instance v6, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v7

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 472
    :cond_0
    new-instance v6, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v12

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v14

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v16

    move-object v11, v6

    invoke-direct/range {v11 .. v17}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    .end local v5    # "point":Lorg/json/JSONArray;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    .restart local v5    # "point":Lorg/json/JSONArray;
    :cond_1
    new-instance v3, Lorg/json/JSONException;

    const-string v4, "Invalid number of dimensions in polygon, expected 2."

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 464
    .end local v5    # "point":Lorg/json/JSONArray;
    :cond_2
    move-object/from16 v2, p0

    .line 475
    .end local v1    # "i":I
    return-object v0

    .line 461
    :cond_3
    move-object/from16 v2, p0

    new-instance v1, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Too few points in Polygon, expected 3."

    aput-object v5, v4, v3

    const/16 v3, 0xd4c

    invoke-direct {v1, v3, v4}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public static ringToPolygon(Ljava/util/List;)Lorg/locationtech/jts/geom/Polygon;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/locationtech/jts/geom/Polygon;"
        }
    .end annotation

    .line 191
    .local p0, "ring":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointsToLinearRing(Ljava/util/List;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v0

    return-object v0
.end method

.method public static ringToPolygon(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Polygon;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)",
            "Lorg/locationtech/jts/geom/Polygon;"
        }
    .end annotation

    .line 212
    .local p0, "ring":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .local p1, "holes":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointsToLinearRing(Ljava/util/List;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v0

    .line 213
    .local v0, "shell":Lorg/locationtech/jts/geom/LinearRing;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/locationtech/jts/geom/LinearRing;

    .line 214
    .local v1, "holeRings":[Lorg/locationtech/jts/geom/LinearRing;
    const/4 v2, 0x0

    .line 215
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 216
    .local v4, "h":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointsToLinearRing(Ljava/util/List;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v6

    aput-object v6, v1, v2

    .line 217
    .end local v4    # "h":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    move v2, v5

    goto :goto_0

    .line 218
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_0
    sget-object v3, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->FACTORY:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v3, v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v3

    return-object v3
.end method
