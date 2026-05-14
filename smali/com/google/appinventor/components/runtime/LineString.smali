.class public Lcom/google/appinventor/components/runtime/LineString;
.super Lcom/google/appinventor/components/runtime/MapFeatureBase;
.source "LineString.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "LineString is a component for drawing an open, continuous sequence of lines on a Map. To add new points to a LineString in the designer, drag the midpoint of any segment away from the line to introduce a new vertex. Move a vertex by clicking and dragging the vertex to a new location. Clicking on a vertex will delete the vertex, unless only two remain."
    iconName = "images/linestring.png"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

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
.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/google/appinventor/components/runtime/LineString;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/LineString;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/google/appinventor/components/runtime/LineString$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/LineString$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/LineString;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .line 104
    sget-object v0, Lcom/google/appinventor/components/runtime/LineString;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/MapFeatureBase;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LineString;->points:Ljava/util/List;

    .line 105
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LineString;->StrokeWidth(I)V

    .line 106
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 107
    return-void
.end method


# virtual methods
.method public Points()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A list of latitude and longitude pairs that represent the line segments of the polyline."
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineString;->points:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Points(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 5
    .param p1, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 142
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "Points"

    if-ge v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineString;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 143
    const/16 v1, 0xd49

    invoke-virtual {v0, p0, v2, v1, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LineString;->points:Ljava/util/List;

    .line 148
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LineString;->clearGeometry()V

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineString;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LineString;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    .line 152
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v4

    .line 151
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 155
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    :goto_0
    return-void
.end method

.method public PointsFromString(Ljava/lang/String;)V
    .locals 20
    .param p1, "points"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 166
    move-object/from16 v1, p0

    const-string v2, "PointsFromString"

    const-string v3, "PointsFromString"

    .line 168
    .local v3, "functionName":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v6, Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 170
    .local v6, "array":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_5

    .line 174
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 175
    .local v8, "length":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_4

    .line 176
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v11

    .line 177
    .local v11, "point":Lorg/json/JSONArray;
    if-eqz v11, :cond_3

    .line 180
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lt v12, v9, :cond_2

    .line 184
    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v11, v4, v12, v13}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    .line 185
    .local v14, "latitude":D
    invoke-virtual {v11, v5, v12, v13}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v12

    .line 186
    .local v12, "longitude":D
    invoke-static {v14, v15}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 189
    invoke-static {v12, v13}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 193
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v4, v14, v15, v12, v13}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    nop

    .end local v11    # "point":Lorg/json/JSONArray;
    .end local v12    # "longitude":D
    .end local v14    # "latitude":D
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    goto :goto_0

    .line 190
    .restart local v11    # "point":Lorg/json/JSONArray;
    .restart local v12    # "longitude":D
    .restart local v14    # "latitude":D
    :cond_0
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    .line 191
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v17, v9, v16

    aput-object v18, v9, v5

    const/16 v5, 0xd5b

    invoke-direct {v4, v5, v9}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    .end local v3    # "functionName":Ljava/lang/String;
    .end local p1    # "points":Ljava/lang/String;
    throw v4

    .line 187
    .restart local v3    # "functionName":Ljava/lang/String;
    .restart local p1    # "points":Ljava/lang/String;
    :cond_1
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    .line 188
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v9, v16

    const/4 v5, 0x1

    aput-object v19, v9, v5

    const/16 v5, 0xd5a

    invoke-direct {v4, v5, v9}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    .end local v3    # "functionName":Ljava/lang/String;
    .end local p1    # "points":Ljava/lang/String;
    throw v4

    .line 181
    .end local v12    # "longitude":D
    .end local v14    # "latitude":D
    .restart local v3    # "functionName":Ljava/lang/String;
    .restart local p1    # "points":Ljava/lang/String;
    :cond_2
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 182
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const/4 v5, 0x1

    aput-object v9, v12, v5

    const/16 v5, 0xd4b

    invoke-direct {v4, v5, v12}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    .end local v3    # "functionName":Ljava/lang/String;
    .end local p1    # "points":Ljava/lang/String;
    throw v4

    .line 178
    .restart local v3    # "functionName":Ljava/lang/String;
    .restart local p1    # "points":Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 179
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const/4 v5, 0x1

    aput-object v9, v12, v5

    const/16 v5, 0xd5c

    invoke-direct {v4, v5, v12}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    .end local v3    # "functionName":Ljava/lang/String;
    .end local p1    # "points":Ljava/lang/String;
    throw v4

    .line 195
    .end local v10    # "i":I
    .end local v11    # "point":Lorg/json/JSONArray;
    .restart local v3    # "functionName":Ljava/lang/String;
    .restart local p1    # "points":Ljava/lang/String;
    :cond_4
    iput-object v0, v1, Lcom/google/appinventor/components/runtime/LineString;->points:Ljava/util/List;

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/LineString;->clearGeometry()V

    .line 197
    iget-object v4, v1, Lcom/google/appinventor/components/runtime/LineString;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    .end local v0    # "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .end local v6    # "array":Lorg/json/JSONArray;
    .end local v8    # "length":I
    goto :goto_3

    .line 172
    .restart local v0    # "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .restart local v6    # "array":Lorg/json/JSONArray;
    :cond_5
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v9, v8

    const/16 v5, 0xd49

    invoke-direct {v4, v5, v9}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    .end local v3    # "functionName":Ljava/lang/String;
    .end local p1    # "points":Ljava/lang/String;
    throw v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    .end local v0    # "geopoints":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .end local v6    # "array":Lorg/json/JSONArray;
    .restart local v3    # "functionName":Ljava/lang/String;
    .restart local p1    # "points":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 198
    :catch_1
    move-exception v0

    goto :goto_2

    .line 201
    :catch_2
    move-exception v0

    move-object/from16 v7, p1

    .line 202
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    :goto_1
    iget-object v4, v1, Lcom/google/appinventor/components/runtime/LineString;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v1, v2, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_4

    .line 198
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    :catch_3
    move-exception v0

    move-object/from16 v7, p1

    .line 199
    .local v0, "e":Lorg/json/JSONException;
    :goto_2
    sget-object v4, Lcom/google/appinventor/components/runtime/LineString;->TAG:Ljava/lang/String;

    const-string v5, "Malformed string to LineString.PointsFromString"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    iget-object v4, v1, Lcom/google/appinventor/components/runtime/LineString;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    const/16 v5, 0xd4a

    invoke-virtual {v4, v1, v2, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 203
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    nop

    .line 204
    :goto_4
    return-void
.end method

.method public StrokeWidth(I)V
    .locals 0
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 214
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->StrokeWidth(I)V

    .line 215
    return-void
.end method

.method public Type()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the type of the map feature. For LineString, this returns MapFeature.LineString (\"LineString\")."
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LineString;->TypeAbstract()Lcom/google/appinventor/components/common/MapFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/MapFeature;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TypeAbstract()Lcom/google/appinventor/components/common/MapFeature;
    .locals 1

    .line 124
    sget-object v0, Lcom/google/appinventor/components/common/MapFeature;->LineString:Lcom/google/appinventor/components/common/MapFeature;

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

    .line 224
    .local p1, "visitor":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;, "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<TT;>;"
    invoke-interface {p1, p0, p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected computeGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineString;->points:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineString;->points:Ljava/util/List;

    return-object v0
.end method

.method public updatePoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .line 234
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LineString;->points:Ljava/util/List;

    .line 235
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LineString;->clearGeometry()V

    .line 236
    return-void
.end method
