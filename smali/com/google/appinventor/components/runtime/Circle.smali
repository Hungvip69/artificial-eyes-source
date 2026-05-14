.class public Lcom/google/appinventor/components/runtime/Circle;
.super Lcom/google/appinventor/components/runtime/PolygonBase;
.source "Circle.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Circle"
    iconName = "images/circle.png"
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
.field private center:Lorg/osmdroid/util/GeoPoint;

.field private latitude:D

.field private longitude:D

.field private radius:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/google/appinventor/components/runtime/Circle$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/Circle$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Circle;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .line 120
    sget-object v0, Lcom/google/appinventor/components/runtime/Circle;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PolygonBase;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    .line 55
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->center:Lorg/osmdroid/util/GeoPoint;

    .line 121
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 122
    return-void
.end method


# virtual methods
.method public Latitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the center of the circle."
    .end annotation

    .line 186
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Circle;->latitude:D

    return-wide v0
.end method

.method public Latitude(D)V
    .locals 4
    .param p1, "latitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "latitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 166
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Circle;->latitude:D

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->center:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 169
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->clearGeometry()V

    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    .line 173
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 172
    const-string v1, "Latitude"

    const/16 v3, 0xd55

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 175
    :goto_0
    return-void
.end method

.method public Longitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the center of the circle."
    .end annotation

    .line 214
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Circle;->longitude:D

    return-wide v0
.end method

.method public Longitude(D)V
    .locals 4
    .param p1, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "longitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 194
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Circle;->longitude:D

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->center:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 197
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->clearGeometry()V

    .line 198
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    .line 201
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 200
    const-string v1, "Longitude"

    const/16 v3, 0xd56

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 203
    :goto_0
    return-void
.end method

.method public Radius()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The radius of the circle in meters."
    .end annotation

    .line 158
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Circle;->radius:D

    return-wide v0
.end method

.method public Radius(D)V
    .locals 1
    .param p1, "radius"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 146
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Circle;->radius:D

    .line 147
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->clearGeometry()V

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    .line 149
    return-void
.end method

.method public SetLocation(DD)V
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the center of the Circle."
    .end annotation

    .line 226
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "SetLocation"

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    .line 228
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    .line 227
    const/16 v1, 0xd55

    invoke-interface {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-static {p3, p4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    .line 231
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    .line 230
    const/16 v1, 0xd56

    invoke-interface {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    :cond_1
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Circle;->latitude:D

    .line 234
    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/Circle;->longitude:D

    .line 235
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->center:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->center:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p3, p4}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 237
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->clearGeometry()V

    .line 238
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    .line 240
    :goto_0
    return-void
.end method

.method public Type()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the type of the feature. For Circles, this returns MapFeature.Circle (\"Circle\")."
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->TypeAbstract()Lcom/google/appinventor/components/common/MapFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/MapFeature;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TypeAbstract()Lcom/google/appinventor/components/common/MapFeature;
    .locals 1

    .line 138
    sget-object v0, Lcom/google/appinventor/components/common/MapFeature;->Circle:Lcom/google/appinventor/components/common/MapFeature;

    return-object v0
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

    .line 244
    .local p1, "visitor":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;, "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<TT;>;"
    invoke-interface {p1, p0, p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected computeGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Circle;->center:Lorg/osmdroid/util/GeoPoint;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public updateCenter(DD)V
    .locals 0
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 254
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Circle;->latitude:D

    .line 255
    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/Circle;->longitude:D

    .line 256
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Circle;->clearGeometry()V

    .line 257
    return-void
.end method
