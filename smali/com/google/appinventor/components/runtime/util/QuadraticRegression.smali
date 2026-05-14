.class public Lcom/google/appinventor/components/runtime/util/QuadraticRegression;
.super Lcom/google/appinventor/components/runtime/util/OlsTrendLine;
.source "QuadraticRegression.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 19
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

    .line 34
    .local p1, "x":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local p2, "y":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-super/range {p0 .. p2}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;->compute(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 35
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "intercept"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Yintercept"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "x^2"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 37
    .local v3, "a":D
    const-string v1, "slope"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 38
    .local v5, "b":D
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 39
    .local v1, "c":D
    mul-double v7, v5, v5

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    mul-double v9, v9, v3

    mul-double v9, v9, v1

    sub-double/2addr v7, v9

    .line 40
    .local v7, "discriminant":D
    const-string v9, "Xintercepts"

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/16 v12, 0x0

    cmpl-double v14, v7, v12

    if-lez v14, :cond_0

    .line 41
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v12, "intercepts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    .line 43
    .local v13, "sqrtDiscriminant":D
    move-wide v15, v1

    .end local v1    # "c":D
    .local v15, "c":D
    neg-double v1, v5

    add-double/2addr v1, v13

    mul-double v17, v3, v10

    div-double v1, v1, v17

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    neg-double v1, v5

    sub-double/2addr v1, v13

    mul-double v10, v10, v3

    div-double/2addr v1, v10

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-interface {v0, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .end local v12    # "intercepts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v13    # "sqrtDiscriminant":D
    goto :goto_0

    .end local v15    # "c":D
    .restart local v1    # "c":D
    :cond_0
    move-wide v15, v1

    .end local v1    # "c":D
    .restart local v15    # "c":D
    cmpl-double v1, v7, v12

    if-nez v1, :cond_1

    .line 47
    neg-double v1, v5

    mul-double v10, v10, v3

    div-double/2addr v1, v10

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_1
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :goto_0
    return-object v0
.end method

.method public computePoints(Ljava/util/Map;FFII)[F
    .locals 17
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

    .line 57
    .local p1, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move/from16 v1, p5

    const-string v2, "x^2"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 58
    const/4 v2, 0x0

    new-array v2, v2, [F

    return-object v2

    .line 60
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 61
    .local v2, "a":D
    const-string v4, "slope"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 62
    .local v4, "b":D
    const-string v6, "Yintercept"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 63
    .local v6, "c":D
    mul-int/lit8 v8, v1, 0x4

    new-array v8, v8, [F

    .line 64
    .local v8, "result":[F
    const/high16 v9, -0x800000    # Float.NEGATIVE_INFINITY

    .line 65
    .local v9, "lastX":F
    const/high16 v10, -0x800000    # Float.NEGATIVE_INFINITY

    .line 66
    .local v10, "lastY":F
    const/4 v11, 0x1

    .line 67
    .local v11, "first":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v1, :cond_2

    .line 68
    if-eqz v11, :cond_1

    .line 69
    const/4 v11, 0x0

    .line 70
    int-to-float v13, v12

    sub-float v14, p3, p2

    mul-float v13, v13, v14

    int-to-float v14, v1

    div-float/2addr v13, v14

    add-float v9, p2, v13

    .line 71
    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v2

    add-double/2addr v13, v4

    move v15, v10

    move/from16 v16, v11

    .end local v10    # "lastY":F
    .end local v11    # "first":Z
    .local v15, "lastY":F
    .local v16, "first":Z
    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v10

    add-double/2addr v13, v6

    double-to-float v10, v13

    move/from16 v11, v16

    .end local v15    # "lastY":F
    .restart local v10    # "lastY":F
    goto :goto_1

    .line 68
    .end local v16    # "first":Z
    .restart local v11    # "first":Z
    :cond_1
    move v15, v10

    .line 73
    :goto_1
    mul-int/lit8 v13, v12, 0x4

    aput v9, v8, v13

    .line 74
    mul-int/lit8 v13, v12, 0x4

    add-int/lit8 v13, v13, 0x1

    aput v10, v8, v13

    .line 75
    add-int/lit8 v13, v12, 0x1

    int-to-float v13, v13

    sub-float v14, p3, p2

    mul-float v13, v13, v14

    int-to-float v14, v1

    div-float/2addr v13, v14

    add-float v13, p2, v13

    .line 76
    .local v13, "newX":F
    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v2

    add-double/2addr v14, v4

    float-to-double v0, v13

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v0

    add-double/2addr v14, v6

    double-to-float v0, v14

    .line 77
    .local v0, "newY":F
    mul-int/lit8 v1, v12, 0x4

    add-int/lit8 v1, v1, 0x2

    aput v13, v8, v1

    .line 78
    mul-int/lit8 v1, v12, 0x4

    add-int/lit8 v1, v1, 0x3

    aput v0, v8, v1

    .line 79
    move v9, v13

    .line 80
    move v10, v0

    .line 67
    .end local v0    # "newY":F
    .end local v13    # "newX":F
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p5

    goto :goto_0

    .line 82
    .end local v12    # "i":I
    :cond_2
    return-object v8
.end method

.method protected logY()Z
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method protected size()I
    .locals 1

    .line 29
    const/4 v0, 0x3

    return v0
.end method

.method protected xVector(D)[D
    .locals 6
    .param p1, "x"    # D

    .line 15
    mul-double v0, p1, p1

    const/4 v2, 0x3

    new-array v2, v2, [D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    const/4 v3, 0x1

    aput-wide p1, v2, v3

    const/4 v3, 0x2

    aput-wide v0, v2, v3

    return-object v2
.end method
