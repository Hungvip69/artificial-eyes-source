.class public Lcom/google/appinventor/components/common/LinearRegression;
.super Ljava/lang/Object;
.source "LinearRegression.java"

# interfaces
.implements Lcom/google/appinventor/components/common/TrendlineCalculator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 34
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

    .line 23
    .local p1, "x":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local p2, "y":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 26
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 29
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 31
    .local v2, "n":I
    const-wide/16 v3, 0x0

    .line 32
    .local v3, "sumx":D
    const-wide/16 v5, 0x0

    .line 33
    .local v5, "sumy":D
    const-wide/16 v7, 0x0

    .line 34
    .local v7, "sumXY":D
    const-wide/16 v9, 0x0

    .line 35
    .local v9, "squareSumX":D
    const-wide/16 v11, 0x0

    .line 36
    .local v11, "squareSumY":D
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v2, :cond_0

    .line 37
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    add-double/2addr v3, v14

    .line 38
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v7, v14

    .line 39
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    add-double/2addr v5, v14

    .line 40
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v9, v14

    .line 41
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v11, v14

    .line 36
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 43
    .end local v13    # "i":I
    :cond_0
    int-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double v13, v3, v13

    .line 44
    .local v13, "xmean":D
    move-wide v15, v11

    .end local v11    # "squareSumY":D
    .local v15, "squareSumY":D
    int-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double v11, v5, v11

    .line 46
    .local v11, "ymean":D
    const-wide/16 v17, 0x0

    .line 47
    .local v17, "xxmean":D
    const-wide/16 v19, 0x0

    .line 48
    .local v19, "xymean":D
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v21

    .line 49
    .local v22, "predictions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/16 v21, 0x0

    move-wide/from16 v23, v15

    move/from16 v15, v21

    .local v15, "i":I
    .local v23, "squareSumY":D
    :goto_1
    if-ge v15, v2, :cond_1

    .line 50
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v25

    sub-double v25, v25, v13

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v27

    sub-double v27, v27, v13

    mul-double v25, v25, v27

    add-double v17, v17, v25

    .line 51
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v25

    sub-double v25, v25, v13

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v27

    sub-double v27, v27, v11

    mul-double v25, v25, v27

    add-double v19, v19, v25

    .line 49
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 53
    .end local v15    # "i":I
    :cond_1
    div-double v15, v19, v17

    .line 54
    .local v15, "slope":D
    mul-double v25, v15, v13

    sub-double v0, v11, v25

    .line 56
    .local v0, "intercept":D
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Double;

    .line 57
    .local v25, "value":Ljava/lang/Double;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    mul-double v26, v26, v15

    add-double v26, v26, v0

    .line 58
    .local v26, "prediction":D
    move-wide/from16 v28, v11

    .end local v11    # "ymean":D
    .local v28, "ymean":D
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    move-object/from16 v12, v22

    .end local v22    # "predictions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local v12, "predictions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v25    # "value":Ljava/lang/Double;
    .end local v26    # "prediction":D
    move-wide/from16 v11, v28

    goto :goto_2

    .line 62
    .end local v12    # "predictions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v28    # "ymean":D
    .restart local v11    # "ymean":D
    .restart local v22    # "predictions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :cond_2
    move-wide/from16 v28, v11

    move-object/from16 v12, v22

    .end local v11    # "ymean":D
    .end local v22    # "predictions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v12    # "predictions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v28    # "ymean":D
    move-wide/from16 v21, v13

    .end local v13    # "xmean":D
    .local v21, "xmean":D
    int-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v7

    mul-double v25, v3, v5

    sub-double v13, v13, v25

    move-wide/from16 v25, v7

    .end local v7    # "sumXY":D
    .local v25, "sumXY":D
    int-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    mul-double v30, v3, v3

    sub-double v7, v7, v30

    move-wide/from16 v30, v3

    .end local v3    # "sumx":D
    .local v30, "sumx":D
    int-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v23

    mul-double v32, v5, v5

    sub-double v3, v3, v32

    mul-double v7, v7, v3

    .line 63
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v13, v3

    .line 65
    .local v13, "corr":D
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v3, "resultDic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "slope"

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v4, "Yintercept"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v4, "correlation coefficient"

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v4, "predictions"

    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-wide/16 v7, 0x0

    cmpl-double v4, v15, v7

    if-nez v4, :cond_3

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    goto :goto_3

    :cond_3
    neg-double v7, v0

    div-double/2addr v7, v15

    :goto_3
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v7, "Xintercepts"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    mul-double v7, v13, v13

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v7, "r^2"

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-object v3

    .line 27
    .end local v0    # "intercept":D
    .end local v2    # "n":I
    .end local v3    # "resultDic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "sumy":D
    .end local v9    # "squareSumX":D
    .end local v12    # "predictions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v13    # "corr":D
    .end local v15    # "slope":D
    .end local v17    # "xxmean":D
    .end local v19    # "xymean":D
    .end local v21    # "xmean":D
    .end local v23    # "squareSumY":D
    .end local v25    # "sumXY":D
    .end local v28    # "ymean":D
    .end local v30    # "sumx":D
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must have equal X and Y data points"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "List must have at least one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public computePoints(Ljava/util/Map;FFII)[F
    .locals 8
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

    .line 79
    .local p1, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "slope"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 80
    new-array v0, v2, [F

    return-object v0

    .line 82
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 83
    .local v0, "m":D
    const-string v3, "Yintercept"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 84
    .local v3, "b":D
    float-to-double v5, p2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v0

    add-double/2addr v5, v3

    double-to-float v5, v5

    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v0

    add-double/2addr v6, v3

    double-to-float v6, v6

    const/4 v7, 0x4

    new-array v7, v7, [F

    aput p2, v7, v2

    const/4 v2, 0x1

    aput v5, v7, v2

    const/4 v2, 0x2

    aput p3, v7, v2

    const/4 v2, 0x3

    aput v6, v7, v2

    return-object v7
.end method
