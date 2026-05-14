.class public Lcom/google/appinventor/components/runtime/util/LogarithmicRegression;
.super Lcom/google/appinventor/components/runtime/util/OlsTrendLine;
.source "LogarithmicRegression.java"


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
    const-string v5, "a"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v5, "b"

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-object v0
.end method

.method public computePoints(Ljava/util/Map;FFII)[F
    .locals 15
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
    move-object/from16 v0, p1

    move/from16 v1, p5

    const-string v2, "b"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 45
    new-array v2, v4, [F

    return-object v2

    .line 47
    :cond_0
    const/4 v3, 0x0

    cmpg-float v5, p3, v3

    if-gtz v5, :cond_1

    .line 48
    new-array v2, v4, [F

    return-object v2

    .line 50
    :cond_1
    cmpg-float v3, p2, v3

    if-gtz v3, :cond_2

    .line 51
    add-int/lit8 v3, v1, 0x1

    int-to-float v3, v3

    div-float v3, p3, v3

    const v4, 0x38d1b717    # 1.0E-4f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .end local p2    # "xMin":F
    .local v3, "xMin":F
    goto :goto_0

    .line 50
    .end local v3    # "xMin":F
    .restart local p2    # "xMin":F
    :cond_2
    move/from16 v3, p2

    .line 53
    .end local p2    # "xMin":F
    .restart local v3    # "xMin":F
    :goto_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 54
    .local v4, "m":D
    const-string v2, "a"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 55
    .local v6, "b":D
    mul-int/lit8 v2, v1, 0x4

    new-array v2, v2, [F

    .line 56
    .local v2, "result":[F
    const/high16 v8, -0x800000    # Float.NEGATIVE_INFINITY

    .line 57
    .local v8, "lastX":F
    const/high16 v9, -0x800000    # Float.NEGATIVE_INFINITY

    .line 58
    .local v9, "lastY":F
    const/4 v10, 0x1

    .line 59
    .local v10, "first":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v1, :cond_4

    .line 60
    if-eqz v10, :cond_3

    .line 61
    const/4 v10, 0x0

    .line 62
    int-to-float v12, v11

    sub-float v13, p3, v3

    mul-float v12, v12, v13

    int-to-float v13, v1

    div-float/2addr v12, v13

    add-float v8, v3, v12

    .line 63
    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    mul-double v12, v12, v4

    add-double/2addr v12, v6

    double-to-float v9, v12

    .line 65
    :cond_3
    mul-int/lit8 v12, v11, 0x4

    aput v8, v2, v12

    .line 66
    mul-int/lit8 v12, v11, 0x4

    add-int/lit8 v12, v12, 0x1

    aput v9, v2, v12

    .line 67
    add-int/lit8 v12, v11, 0x1

    int-to-float v12, v12

    sub-float v13, p3, v3

    mul-float v12, v12, v13

    int-to-float v13, v1

    div-float/2addr v12, v13

    add-float/2addr v12, v3

    .line 68
    .local v12, "newX":F
    float-to-double v13, v12

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    mul-double v13, v13, v4

    add-double/2addr v13, v6

    double-to-float v13, v13

    .line 69
    .local v13, "newY":F
    mul-int/lit8 v14, v11, 0x4

    add-int/lit8 v14, v14, 0x2

    aput v12, v2, v14

    .line 70
    mul-int/lit8 v14, v11, 0x4

    add-int/lit8 v14, v14, 0x3

    aput v13, v2, v14

    .line 71
    move v8, v12

    .line 72
    move v9, v13

    .line 59
    .end local v12    # "newX":F
    .end local v13    # "newY":F
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 74
    .end local v11    # "i":I
    :cond_4
    return-object v2
.end method

.method protected logY()Z
    .locals 1

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method protected size()I
    .locals 1

    .line 27
    const/4 v0, 0x2

    return v0
.end method

.method protected xVector(D)[D
    .locals 6
    .param p1, "x"    # D

    .line 14
    nop

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const/4 v2, 0x2

    new-array v2, v2, [D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    const/4 v3, 0x1

    aput-wide v0, v2, v3

    .line 14
    return-object v2
.end method
