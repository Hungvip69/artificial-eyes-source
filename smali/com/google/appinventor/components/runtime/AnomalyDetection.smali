.class public final Lcom/google/appinventor/components/runtime/AnomalyDetection;
.super Lcom/google/appinventor/components/runtime/DataCollection;
.source "AnomalyDetection.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DATASCIENCE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that contains anomaly detection models"
    iconName = "images/anomaly.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/DataCollection<",
        "Lcom/google/appinventor/components/runtime/ComponentContainer;",
        "Lcom/google/appinventor/components/runtime/DataModel<",
        "*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 39
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/DataCollection;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 40
    return-void
.end method

.method public static getAnomalyIndex(Lcom/google/appinventor/components/runtime/util/YailList;)D
    .locals 4
    .param p0, "anomaly"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 169
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/LList;

    .line 171
    .local v0, "anomalyValue":Lgnu/lists/LList;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/AnomalyDetection;->castToDouble(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 172
    .local v1, "anomalyNr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2

    .line 174
    .end local v0    # "anomalyValue":Lgnu/lists/LList;
    .end local v1    # "anomalyNr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must have equal X and Y data points"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ChangeDataSource(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;)V
    .locals 0
    .param p2, "keyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/DataSource<",
            "TK;TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 230
    .local p1, "source":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<TK;TV;>;"
    return-void
.end method

.method public CleanData(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    .locals 11
    .param p1, "anomaly"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "xList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "yList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Given a single anomaly and the x and y values of your data. This block will return the x and y value pairs of your data without the anomaly"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .line 134
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/LList;

    .line 135
    .local v0, "xValues":Lgnu/lists/LList;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/AnomalyDetection;->castToDouble(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 137
    .local v1, "xData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/LList;

    .line 138
    .local v2, "yValues":Lgnu/lists/LList;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/AnomalyDetection;->castToDouble(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 140
    .local v3, "yData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 143
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/AnomalyDetection;->getAnomalyIndex(Lcom/google/appinventor/components/runtime/util/YailList;)D

    move-result-wide v4

    double-to-int v4, v4

    .line 148
    .local v4, "index":I
    add-int/lit8 v5, v4, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 149
    add-int/lit8 v5, v4, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 151
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v5, "cleanData":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 154
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 155
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Double;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v7, 0x1

    aput-object v8, v9, v7

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 158
    .end local v6    # "i":I
    :cond_0
    return-object v5

    .line 144
    .end local v4    # "index":I
    .end local v5    # "cleanData":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "List must have at least one element"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 141
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Must have equal X and Y data points"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v4

    :goto_2
    goto :goto_1
.end method

.method public Clear()V
    .locals 0

    .line 226
    return-void
.end method

.method public DataFileXColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .line 190
    return-void
.end method

.method public DataFileYColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .line 202
    return-void
.end method

.method public DataSourceKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 214
    return-void
.end method

.method public DetectAnomalies(Lcom/google/appinventor/components/runtime/util/YailList;D)Ljava/util/List;
    .locals 17
    .param p1, "dataList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "threshold"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Z-Score Anomaly Detection: checks each data point\'s Z-scoreagainst the given threshold if a data point\'s Z-score is greater than the threshold, the data point is labeled as anomaly and returned in a list of pairs (anomaly index, anomaly value)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            "D)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "anomalies":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/LList;

    .line 58
    .local v1, "dataListValues":Lgnu/lists/LList;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/AnomalyDetection;->castToDouble(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 61
    .local v2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    const-wide/16 v3, 0x0

    .line 62
    .local v3, "sum":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 63
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v3, v6

    .line 62
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 65
    .end local v5    # "i":I
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double v5, v3, v5

    .line 67
    .local v5, "mean":D
    const-wide/16 v7, 0x0

    .line 68
    .local v7, "variance":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 69
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    sub-double/2addr v10, v5

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v7, v10

    .line 68
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 71
    .end local v9    # "i":I
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    .line 73
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 76
    .local v9, "sd":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 78
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    sub-double/2addr v12, v5

    div-double/2addr v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    .line 79
    .local v12, "zScore":D
    cmpl-double v14, v12, p2

    if-lez v14, :cond_2

    .line 80
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Number;

    add-int/lit8 v15, v11, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    const/16 v16, 0x1

    aput-object v15, v14, v16

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v12    # "zScore":D
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 83
    .end local v11    # "i":I
    :cond_3
    return-object v0
.end method

.method public DetectAnomaliesInChartData(Lcom/google/appinventor/components/runtime/ChartData2D;D)Ljava/util/List;
    .locals 19
    .param p1, "chartData"    # Lcom/google/appinventor/components/runtime/ChartData2D;
    .param p2, "threshold"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/ChartData2D;",
            "D)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "*>;>;"
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/ChartData2D;->getDataValue(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const-wide/16 v2, 0x0

    .line 98
    .local v2, "sum":D
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/Entry;

    .line 99
    .local v5, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v6

    .line 100
    .end local v5    # "entry":Lcom/github/mikephil/charting/data/Entry;
    goto :goto_0

    .line 101
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, v2, v4

    .line 102
    .local v4, "mean":D
    const-wide/16 v6, 0x0

    .line 103
    .local v6, "variance":D
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/Entry;

    .line 104
    .local v9, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v10, v4

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v6, v10

    .line 105
    .end local v9    # "entry":Lcom/github/mikephil/charting/data/Entry;
    goto :goto_1

    .line 106
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    .line 107
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 108
    .local v8, "sd":D
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v10, "anomalies":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/mikephil/charting/data/Entry;

    .line 110
    .local v12, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v13, v4

    div-double/2addr v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    .line 111
    .local v13, "zScore":D
    cmpl-double v15, v13, p2

    if-lez v15, :cond_2

    .line 112
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    move-object/from16 v17, v0

    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    .local v17, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Float;

    const/16 v18, 0x0

    aput-object v15, v0, v18

    const/4 v15, 0x1

    aput-object v16, v0, v15

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 111
    .end local v17    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    .restart local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    :cond_2
    move-object/from16 v17, v0

    .line 114
    .end local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    .end local v12    # "entry":Lcom/github/mikephil/charting/data/Entry;
    .end local v13    # "zScore":D
    .restart local v17    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    :goto_3
    move-object/from16 v0, v17

    goto :goto_2

    .line 115
    .end local v17    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    .restart local v0    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/Entry;>;"
    :cond_3
    return-object v10
.end method

.method public ElementsFromPairs(Ljava/lang/String;)V
    .locals 0
    .param p1, "elements"    # Ljava/lang/String;

    .line 182
    return-void
.end method

.method public GetAllEntries()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1

    .line 248
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetEntriesWithXValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .param p1, "x"    # Ljava/lang/String;

    .line 238
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetEntriesWithYValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .param p1, "y"    # Ljava/lang/String;

    .line 243
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public ImportFromCloudDB(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V
    .locals 0
    .param p1, "cloudDB"    # Lcom/google/appinventor/components/runtime/CloudDB;
    .param p2, "tag"    # Ljava/lang/String;

    .line 257
    return-void
.end method

.method public ImportFromDataFile(Lcom/google/appinventor/components/runtime/DataFile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dataFile"    # Lcom/google/appinventor/components/runtime/DataFile;
    .param p2, "xValueColumn"    # Ljava/lang/String;
    .param p3, "yValueColumn"    # Ljava/lang/String;

    .line 262
    return-void
.end method

.method public ImportFromList(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0
    .param p1, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 222
    return-void
.end method

.method public ImportFromSpreadsheet(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "spreadsheet"    # Lcom/google/appinventor/components/runtime/Spreadsheet;
    .param p2, "xColumn"    # Ljava/lang/String;
    .param p3, "yColumn"    # Ljava/lang/String;
    .param p4, "useHeaders"    # Z

    .line 267
    return-void
.end method

.method public ImportFromTinyDB(Lcom/google/appinventor/components/runtime/TinyDB;Ljava/lang/String;)V
    .locals 0
    .param p1, "tinyDB"    # Lcom/google/appinventor/components/runtime/TinyDB;
    .param p2, "tag"    # Ljava/lang/String;

    .line 253
    return-void
.end method

.method public ImportFromWeb(Lcom/google/appinventor/components/runtime/Web;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "web"    # Lcom/google/appinventor/components/runtime/Web;
    .param p2, "xValueColumn"    # Ljava/lang/String;
    .param p3, "yValueColumn"    # Ljava/lang/String;

    .line 271
    return-void
.end method

.method public RemoveDataSource()V
    .locals 0

    .line 234
    return-void
.end method

.method public Source(Lcom/google/appinventor/components/runtime/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/DataSource<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 218
    .local p1, "dataSource":Lcom/google/appinventor/components/runtime/DataSource;, "Lcom/google/appinventor/components/runtime/DataSource<TK;TV;>;"
    return-void
.end method

.method public SpreadsheetUseHeaders(Z)V
    .locals 0
    .param p1, "useHeaders"    # Z

    .line 186
    return-void
.end method

.method public SpreadsheetXColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .line 198
    return-void
.end method

.method public SpreadsheetYColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .line 210
    return-void
.end method

.method public WebXColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .line 194
    return-void
.end method

.method public WebYColumn(Ljava/lang/String;)V
    .locals 0
    .param p1, "column"    # Ljava/lang/String;

    .line 206
    return-void
.end method

.method public onDataChange()V
    .locals 0

    .line 276
    return-void
.end method
