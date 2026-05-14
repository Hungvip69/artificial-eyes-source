.class public Lcom/google/appinventor/components/runtime/Rectangle;
.super Lcom/google/appinventor/components/runtime/PolygonBase;
.source "Rectangle.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Rectangles are polygons with fixed latitudes and longitudes for the north, south, east, and west boundaries. Moving a vertex of the Rectangle updates the appropriate edges accordingly."
    iconName = "images/rectangle.png"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private east:D

.field private north:D

.field private south:D

.field private west:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/google/appinventor/components/runtime/Rectangle$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/Rectangle$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Rectangle;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .line 97
    sget-object v0, Lcom/google/appinventor/components/runtime/Rectangle;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PolygonBase;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->east:D

    .line 45
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->west:D

    .line 46
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->north:D

    .line 47
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->south:D

    .line 98
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 99
    return-void
.end method


# virtual methods
.method public Bounds()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the bounding box of the Rectangle in the format ((North West) (South East))."
    .end annotation

    .line 240
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->north:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->west:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Double;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    .line 241
    .local v1, "nw":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-wide v5, p0, Lcom/google/appinventor/components/runtime/Rectangle;->south:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v5, p0, Lcom/google/appinventor/components/runtime/Rectangle;->east:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Double;

    aput-object v3, v6, v4

    aput-object v5, v6, v0

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    .line 242
    .local v3, "se":Lcom/google/appinventor/components/runtime/util/YailList;
    new-array v2, v2, [Lcom/google/appinventor/components/runtime/util/YailList;

    aput-object v1, v2, v4

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Center()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the center of the Rectangle as a list of the form (Latitude Longitude)."
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->asYailList(Lorg/osmdroid/api/IGeoPoint;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public EastLongitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 142
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->east:D

    return-wide v0
.end method

.method public EastLongitude(D)V
    .locals 1
    .param p1, "east"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The east edge of the rectangle, in decimal degrees east of the prime meridian."
    .end annotation

    .line 131
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->east:D

    .line 132
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 134
    return-void
.end method

.method public NorthLatitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 168
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->north:D

    return-wide v0
.end method

.method public NorthLatitude(D)V
    .locals 1
    .param p1, "north"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The north edge of the rectangle, in decimal degrees north of the equator."
    .end annotation

    .line 157
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->north:D

    .line 158
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 160
    return-void
.end method

.method public SetCenter(DD)V
    .locals 11
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the Rectangle so that it is centered on the given latitude and longitude while attempting to maintain the width and height of the Rectangle as measured from the center to the edges."
    .end annotation

    .line 257
    const-wide v0, -0x3fa9800000000000L    # -90.0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0xd4d

    const-string v6, "SetCenter"

    cmpg-double v7, p1, v0

    if-ltz v7, :cond_3

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v7, p1, v0

    if-lez v7, :cond_0

    goto/16 :goto_1

    .line 261
    :cond_0
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v7, p3, v0

    if-ltz v7, :cond_2

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v7, p3, v0

    if-lez v7, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    .line 266
    .local v0, "currentCenter":Lorg/osmdroid/util/GeoPoint;
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Rectangle;->north:D

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 267
    .local v1, "northPoint":Lorg/osmdroid/util/GeoPoint;
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/Rectangle;->south:D

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 268
    .local v2, "southPoint":Lorg/osmdroid/util/GeoPoint;
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/Rectangle;->east:D

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 269
    .local v3, "eastPoint":Lorg/osmdroid/util/GeoPoint;
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/appinventor/components/runtime/Rectangle;->west:D

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 270
    .local v4, "westPoint":Lorg/osmdroid/util/GeoPoint;
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    .line 271
    .local v5, "latExtent2":D
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v9

    div-double/2addr v9, v7

    .line 272
    .local v9, "longExtent2":D
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    .line 273
    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v7

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/appinventor/components/runtime/Rectangle;->north:D

    .line 274
    const/high16 v7, 0x43340000    # 180.0f

    invoke-virtual {v0, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v7

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/appinventor/components/runtime/Rectangle;->south:D

    .line 275
    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {v0, v9, v10, v7}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v7

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/appinventor/components/runtime/Rectangle;->east:D

    .line 276
    const/high16 v7, 0x43870000    # 270.0f

    invoke-virtual {v0, v9, v10, v7}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v7

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/appinventor/components/runtime/Rectangle;->west:D

    .line 277
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 278
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v7

    invoke-interface {v7, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 279
    return-void

    .line 262
    .end local v0    # "currentCenter":Lorg/osmdroid/util/GeoPoint;
    .end local v1    # "northPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v2    # "southPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v3    # "eastPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v4    # "westPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v5    # "latExtent2":D
    .end local v9    # "longExtent2":D
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object v7, v4, v2

    invoke-virtual {v0, p0, v6, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 263
    return-void

    .line 258
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object v7, v4, v2

    invoke-virtual {v0, p0, v6, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public SouthLatitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 194
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->south:D

    return-wide v0
.end method

.method public SouthLatitude(D)V
    .locals 1
    .param p1, "south"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The south edge of the rectangle, in decimal degrees north of the equator."
    .end annotation

    .line 183
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->south:D

    .line 184
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 186
    return-void
.end method

.method public Type()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the type of the feature. For rectangles, this returns MapFeature.Rectangle (\"Rectangle\")."
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->TypeAbstract()Lcom/google/appinventor/components/common/MapFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/MapFeature;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TypeAbstract()Lcom/google/appinventor/components/common/MapFeature;
    .locals 1

    .line 116
    sget-object v0, Lcom/google/appinventor/components/common/MapFeature;->Rectangle:Lcom/google/appinventor/components/common/MapFeature;

    return-object v0
.end method

.method public WestLongitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 220
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->west:D

    return-wide v0
.end method

.method public WestLongitude(D)V
    .locals 1
    .param p1, "west"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The west edge of the rectangle, in decimal degrees east of the equator."
    .end annotation

    .line 209
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->west:D

    .line 210
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 212
    return-void
.end method

.method public varargs accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 283
    .local p1, "visitor":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;, "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<TT;>;"
    invoke-interface {p1, p0, p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected computeGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 8

    .line 288
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->north:D

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Rectangle;->east:D

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Rectangle;->south:D

    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/Rectangle;->west:D

    invoke-static/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(DDDD)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public updateBounds(DDDD)V
    .locals 0
    .param p1, "north"    # D
    .param p3, "west"    # D
    .param p5, "south"    # D
    .param p7, "east"    # D

    .line 293
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->north:D

    .line 294
    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/Rectangle;->west:D

    .line 295
    iput-wide p5, p0, Lcom/google/appinventor/components/runtime/Rectangle;->south:D

    .line 296
    iput-wide p7, p0, Lcom/google/appinventor/components/runtime/Rectangle;->east:D

    .line 297
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 298
    return-void
.end method
