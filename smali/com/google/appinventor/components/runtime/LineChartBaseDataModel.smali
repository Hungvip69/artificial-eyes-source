.class public abstract Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;
.super Lcom/google/appinventor/components/runtime/PointChartDataModel;
.source "LineChartBaseDataModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/google/appinventor/components/runtime/LineChartViewBase<",
        "TV;>;>",
        "Lcom/google/appinventor/components/runtime/PointChartDataModel<",
        "Lcom/github/mikephil/charting/data/Entry;",
        "Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;",
        "Lcom/github/mikephil/charting/data/LineData;",
        "Lcom/github/mikephil/charting/charts/LineChart;",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/github/mikephil/charting/data/LineData;Lcom/google/appinventor/components/runtime/LineChartViewBase;)V
    .locals 3
    .param p1, "data"    # Lcom/github/mikephil/charting/data/LineData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/LineData;",
            "TV;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;, "Lcom/google/appinventor/components/runtime/LineChartBaseDataModel<TV;>;"
    .local p2, "view":Lcom/google/appinventor/components/runtime/LineChartViewBase;, "TV;"
    new-instance v0, Lcom/github/mikephil/charting/data/LineDataSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;-><init>(Lcom/github/mikephil/charting/data/LineData;Lcom/google/appinventor/components/runtime/LineChartViewBase;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 41
    return-void
.end method

.method protected constructor <init>(Lcom/github/mikephil/charting/data/LineData;Lcom/google/appinventor/components/runtime/LineChartViewBase;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V
    .locals 1
    .param p1, "data"    # Lcom/github/mikephil/charting/data/LineData;
    .param p3, "dataset"    # Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mikephil/charting/data/LineData;",
            "TV;",
            "Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;",
            ")V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;, "Lcom/google/appinventor/components/runtime/LineChartBaseDataModel<TV;>;"
    .local p2, "view":Lcom/google/appinventor/components/runtime/LineChartViewBase;, "TV;"
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/PointChartDataModel;-><init>(Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;Lcom/google/appinventor/components/runtime/PointChartView;)V

    .line 45
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 46
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v0, p3}, Lcom/github/mikephil/charting/data/LineData;->addDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 47
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->setDefaultStylingProperties()V

    .line 48
    return-void
.end method


# virtual methods
.method public addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 5
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 52
    .local p0, "this":Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;, "Lcom/google/appinventor/components/runtime/LineChartBaseDataModel<TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 54
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v0, :cond_2

    .line 66
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->entries:Ljava/util/List;

    new-instance v2, Lcom/github/mikephil/charting/utils/EntryXComparator;

    invoke-direct {v2}, Lcom/github/mikephil/charting/utils/EntryXComparator;-><init>()V

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 71
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 73
    neg-int v2, v1

    add-int/lit8 v2, v2, -0x1

    .end local v1    # "index":I
    .local v2, "index":I
    goto :goto_1

    .line 76
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 81
    .local v2, "entryCount":I
    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->entries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v3

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v2    # "entryCount":I
    :cond_1
    move v2, v1

    .end local v1    # "index":I
    .local v2, "index":I
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->entries:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 88
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v1, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleColors()Ljava/util/List;

    move-result-object v1

    .line 89
    .local v1, "defaultColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v3, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 90
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v3, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v3, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColors(Ljava/util/List;)V

    .line 92
    .end local v1    # "defaultColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "index":I
    :cond_2
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "argb"    # I

    .line 96
    .local p0, "this":Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;, "Lcom/google/appinventor/components/runtime/LineChartBaseDataModel<TV;>;"
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/PointChartDataModel;->setColor(I)V

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/LineDataSet;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 100
    :cond_0
    return-void
.end method

.method public setColors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p0, "this":Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;, "Lcom/google/appinventor/components/runtime/LineChartBaseDataModel<TV;>;"
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/PointChartDataModel;->setColors(Ljava/util/List;)V

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/LineDataSet;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColors(Ljava/util/List;)V

    .line 108
    :cond_0
    return-void
.end method

.method protected setDefaultStylingProperties()V
    .locals 2

    .line 112
    .local p0, "this":Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;, "Lcom/google/appinventor/components/runtime/LineChartBaseDataModel<TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/LineDataSet;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/LineDataSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 115
    :cond_0
    return-void
.end method

.method public setLineType(Lcom/google/appinventor/components/common/LineType;)V
    .locals 3
    .param p1, "type"    # Lcom/google/appinventor/components/common/LineType;

    .line 123
    .local p0, "this":Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;, "Lcom/google/appinventor/components/runtime/LineChartBaseDataModel<TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/LineDataSet;

    if-nez v0, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel$1;->$SwitchMap$com$google$appinventor$components$common$LineType:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/LineType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown line type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/LineDataSet;

    sget-object v1, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->STEPPED:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 137
    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/LineDataSet;

    sget-object v1, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 133
    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/LineDataSet;

    sget-object v1, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->LINEAR:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 129
    nop

    .line 142
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
