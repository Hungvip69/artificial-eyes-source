.class public final Lcom/google/appinventor/components/runtime/ChartData2D;
.super Lcom/google/appinventor/components/runtime/ChartDataBase;
.source "ChartData2D.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CHARTS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that holds (x, y)-coordinate based data"
    iconName = "images/web.png"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$mresetHighlightAtIndex(Lcom/google/appinventor/components/runtime/ChartData2D;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ChartData2D;->resetHighlightAtIndex(I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .locals 0
    .param p1, "chartContainer"    # Lcom/google/appinventor/components/runtime/Chart;

    .line 48
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataBase;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    .line 49
    return-void
.end method

.method private resetHighlightAtIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 285
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    instance-of v0, v0, Lcom/github/mikephil/charting/data/LineDataSet;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleColors()Ljava/util/List;

    move-result-object v0

    .line 287
    .local v0, "defaultColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 289
    .end local v0    # "defaultColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public AddEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "x"    # Ljava/lang/String;
    .param p2, "y"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 68
    .local v0, "isDone":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/appinventor/components/runtime/ChartData2D$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/ChartData2D$1;-><init>(Lcom/google/appinventor/components/runtime/ChartData2D;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :cond_0
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 100
    .end local v0    # "isDone":Ljava/util/concurrent/atomic/AtomicBoolean;
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public DoesEntryExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "x"    # Ljava/lang/String;
    .param p2, "y"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks whether an (x, y) entry exists in the Coordinate Data.Returns true if the Entry exists, and false otherwise."
    .end annotation

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/ChartData2D$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/ChartData2D$3;-><init>(Lcom/google/appinventor/components/runtime/ChartData2D;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    return v0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v0    # "e":Ljava/lang/InterruptedException;
    nop

    .line 188
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public DrawLineOfBestFit(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 8
    .param p1, "xList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "yList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws the corresponding line of best fit on the graph"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/LList;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ChartData2D;->castToDouble(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 201
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/LList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ChartData2D;->castToDouble(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 200
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Regression;->computeLineOfBestFit(Ljava/util/List;Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v0

    .line 202
    const-string v1, "predictions"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 203
    .local v0, "predictions":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v1, "predictionPairs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 205
    .local v2, "xValues":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 206
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v5

    const/4 v4, 0x1

    aput-object v6, v7, v4

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    .end local v3    # "i":I
    :cond_0
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    .line 209
    .local v3, "predictionPairsList":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v4, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v4, v3}, Lcom/google/appinventor/components/runtime/ChartDataModel;->importFromList(Ljava/util/List;)V

    .line 210
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v4, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v4

    instance-of v4, v4, Lcom/github/mikephil/charting/data/LineDataSet;

    if-eqz v4, :cond_1

    .line 211
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v4, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 212
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v4, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartData2D;->onDataChange()V

    .line 215
    return-void
.end method

.method public HighlightDataPoints(Lcom/google/appinventor/components/runtime/util/YailList;I)V
    .locals 15
    .param p1, "dataPoints"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Highlights data points of choice on the Chart in the color of choice. This block expects a list of data points, each data point is an index, value pair"
    .end annotation

    .line 237
    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/LList;

    .line 238
    .local v1, "dataPointsList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/YailList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 239
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v2, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getEntries()Ljava/util/List;

    move-result-object v2

    .line 240
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v3, "anomalyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Double;Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;>;"
    const/4 v4, 0x0

    .line 242
    .local v4, "i":I
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v5, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getEntries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/Entry;

    .line 243
    .local v6, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 244
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    new-instance v8, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;-><init>(Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager-IA;)V

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_0
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;->xValues:Ljava/util/Set;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;->indexes:Ljava/util/Set;

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "i":I
    .local v8, "i":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v6    # "entry":Lcom/github/mikephil/charting/data/Entry;
    move v4, v8

    goto :goto_0

    .line 249
    .end local v8    # "i":I
    .restart local v4    # "i":I
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 250
    .local v5, "highlights":[I
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v6, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v6

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColor()I

    move-result v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 252
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 253
    .local v7, "dataPoint":Ljava/lang/Object;
    instance-of v8, v7, Lcom/google/appinventor/components/runtime/util/YailList;

    if-nez v8, :cond_2

    .line 254
    goto :goto_1

    .line 256
    :cond_2
    move-object v8, v7

    check-cast v8, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    .line 257
    .local v8, "y":Ljava/lang/Number;
    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;

    .line 258
    .local v10, "anomalyManager":Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;
    if-nez v10, :cond_3

    .line 259
    goto :goto_1

    .line 261
    :cond_3
    move-object v11, v7

    check-cast v11, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    .line 262
    .local v11, "x":Ljava/lang/Number;
    iget-object v12, v10, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;->xValues:Ljava/util/Set;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v12, v10, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;->indexes:Ljava/util/Set;

    .line 263
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v13

    sub-int/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v12, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 264
    :cond_4
    iget-object v9, v10, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;->indexes:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 265
    .local v12, "index":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput p2, v5, v13

    .line 266
    .end local v12    # "index":Ljava/lang/Integer;
    goto :goto_2

    .line 268
    .end local v7    # "dataPoint":Ljava/lang/Object;
    .end local v8    # "y":Ljava/lang/Number;
    .end local v10    # "anomalyManager":Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;
    .end local v11    # "x":Ljava/lang/Number;
    :cond_5
    goto :goto_1

    .line 269
    :cond_6
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v6, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v6, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColors([I)V

    .line 270
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartData2D;->onDataChange()V

    .line 271
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "anomalyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Double;Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;>;"
    .end local v4    # "i":I
    .end local v5    # "highlights":[I
    nop

    .line 274
    return-void

    .line 272
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Anomalies list is Empty. Nothing to highlight!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method public RemoveEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "x"    # Ljava/lang/String;
    .param p2, "y"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 118
    .local v0, "isDone":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/appinventor/components/runtime/ChartData2D$2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/ChartData2D$2;-><init>(Lcom/google/appinventor/components/runtime/ChartData2D;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :cond_0
    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 155
    .end local v0    # "isDone":Ljava/util/concurrent/atomic/AtomicBoolean;
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getYValues()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v0, "yValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v1, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    .line 279
    .local v2, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v2    # "entry":Lcom/github/mikephil/charting/data/Entry;
    goto :goto_0

    .line 281
    :cond_0
    return-object v0
.end method
