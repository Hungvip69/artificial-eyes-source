.class public Lcom/google/appinventor/components/runtime/util/ExponentialRegression;
.super Lcom/google/appinventor/components/runtime/util/OlsTrendLine;
.source "ExponentialRegression.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 32
    .local p1, "x":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local p2, "y":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-super {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;->compute(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 33
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "x^2"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "slope"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 35
    .local v1, "m":D
    const-string v3, "intercept"

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 36
    .local v3, "i":D
    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "a"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "b"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-object v0
.end method

.method public computePoints(Ljava/util/Map;FFII)[F
    .locals 14
    .param p2, "xMin"    # F
    .param p3, "xMax"    # F
    .param p4, "viewWidth"    # I
    .param p5, "steps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;FFII)[F"
        }
    .end annotation

    .line 44
    .local p1, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p1

    move/from16 v1, p5

    const-string v2, "a"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 45
    const/4 v2, 0x0

    new-array v2, v2, [F

    return-object v2

    .line 47
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 48
    .local v2, "a":D
    const-string v4, "b"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 49
    .local v4, "b":D
    mul-int/lit8 v6, v1, 0x4

    new-array v6, v6, [F

    .line 50
    .local v6, "result":[F
    const/high16 v7, -0x800000    # Float.NEGATIVE_INFINITY

    .line 51
    .local v7, "lastX":F
    const/high16 v8, -0x800000    # Float.NEGATIVE_INFINITY

    .line 52
    .local v8, "lastY":F
    const/4 v9, 0x1

    .line 53
    .local v9, "first":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v1, :cond_2

    .line 54
    if-eqz v9, :cond_1

    .line 55
    const/4 v9, 0x0

    .line 56
    int-to-float v11, v10

    sub-float v12, p3, p2

    mul-float v11, v11, v12

    int-to-float v12, v1

    div-float/2addr v11, v12

    add-float v7, p2, v11

    .line 57
    float-to-double v11, v7

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double v11, v11, v2

    double-to-float v8, v11

    .line 59
    :cond_1
    mul-int/lit8 v11, v10, 0x4

    aput v7, v6, v11

    .line 60
    mul-int/lit8 v11, v10, 0x4

    add-int/lit8 v11, v11, 0x1

    aput v8, v6, v11

    .line 61
    add-int/lit8 v11, v10, 0x1

    int-to-float v11, v11

    sub-float v12, p3, p2

    mul-float v11, v11, v12

    int-to-float v12, v1

    div-float/2addr v11, v12

    add-float v11, p2, v11

    .line 62
    .local v11, "newX":F
    float-to-double v12, v11

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double v12, v12, v2

    double-to-float v12, v12

    .line 63
    .local v12, "newY":F
    mul-int/lit8 v13, v10, 0x4

    add-int/lit8 v13, v13, 0x2

    aput v11, v6, v13

    .line 64
    mul-int/lit8 v13, v10, 0x4

    add-int/lit8 v13, v13, 0x3

    aput v12, v6, v13

    .line 65
    move v7, v11

    .line 66
    move v8, v12

    .line 53
    .end local v11    # "newX":F
    .end local v12    # "newY":F
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 68
    .end local v10    # "i":I
    :cond_2
    return-object v6
.end method

.method protected logY()Z
    .locals 1

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method protected size()I
    .locals 1

    .line 27
    const/4 v0, 0x2

    return v0
.end method

.method protected xVector(D)[D
    .locals 4
    .param p1, "x"    # D

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    return-object v0
.end method
