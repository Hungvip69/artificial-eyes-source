.class public abstract Lcom/google/appinventor/components/runtime/util/OlsTrendLine;
.super Ljava/lang/Object;
.source "OlsTrendLine.java"

# interfaces
.implements Lcom/google/appinventor/components/common/TrendlineCalculator;


# static fields
.field private static final DEBUG:Z = false

.field private static final SIGNIFICANCE:D = 1.0E14


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static round(D)D
    .locals 4
    .param p0, "value"    # D

    .line 107
    const-wide v0, 0x42d6bcc41e900000L    # 1.0E14

    mul-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public compute(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 9
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

    .line 61
    .local p1, "x":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .local p2, "y":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[D

    .line 68
    .local v0, "xData":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 70
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;->xVector(D)[D

    move-result-object v2

    aput-object v2, v0, v1

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [D

    .line 73
    .local v1, "yData":[D
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;->logY()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    .line 76
    .local v4, "value":Ljava/lang/Double;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    aput-wide v6, v1, v2

    .line 77
    .end local v4    # "value":Ljava/lang/Double;
    move v2, v5

    goto :goto_1

    .line 78
    .end local v5    # "i":I
    :cond_1
    goto :goto_3

    .line 79
    :cond_2
    const/4 v2, 0x0

    .line 80
    .restart local v2    # "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    .line 81
    .restart local v4    # "value":Ljava/lang/Double;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v1, v2

    .line 82
    .end local v4    # "value":Ljava/lang/Double;
    move v2, v5

    goto :goto_2

    .line 88
    .end local v5    # "i":I
    :cond_3
    :goto_3
    new-instance v2, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;

    invoke-direct {v2}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;-><init>()V

    .line 89
    .local v2, "ols":Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->setNoIntercept(Z)V

    .line 90
    invoke-virtual {v2, v1, v0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->newSampleData([D[[D)V

    .line 91
    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->estimateRegressionParameters()[D

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/math3/linear/MatrixUtils;->createColumnRealMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    .line 96
    .local v4, "coef":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v5, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    invoke-interface {v4, v6, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;->round(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-string v8, "intercept"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-interface {v4, v3, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;->round(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v7, "slope"

    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;->size()I

    move-result v3

    const/4 v7, 0x2

    if-le v3, v7, :cond_4

    .line 100
    invoke-interface {v4, v7, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/OlsTrendLine;->round(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v6, "x^2"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_4
    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateRSquared()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v6, "r^2"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-object v5

    .line 65
    .end local v0    # "xData":[[D
    .end local v1    # "yData":[D
    .end local v2    # "ols":Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;
    .end local v4    # "coef":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v5    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must have equal X and Y data points"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "List must have at least one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method protected abstract logY()Z
.end method

.method protected abstract size()I
.end method

.method protected abstract xVector(D)[D
.end method
