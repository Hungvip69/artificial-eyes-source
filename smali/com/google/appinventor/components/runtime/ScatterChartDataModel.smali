.class public Lcom/google/appinventor/components/runtime/ScatterChartDataModel;
.super Lcom/google/appinventor/components/runtime/PointChartDataModel;
.source "ScatterChartDataModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/PointChartDataModel<",
        "Lcom/github/mikephil/charting/data/Entry;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;",
        "Lcom/github/mikephil/charting/data/ScatterData;",
        "Lcom/github/mikephil/charting/charts/ScatterChart;",
        "Lcom/google/appinventor/components/runtime/ScatterChartView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/data/ScatterData;Lcom/google/appinventor/components/runtime/ScatterChartView;)V
    .locals 3
    .param p1, "data"    # Lcom/github/mikephil/charting/data/ScatterData;
    .param p2, "view"    # Lcom/google/appinventor/components/runtime/ScatterChartView;

    .line 36
    new-instance v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/ScatterDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;-><init>(Lcom/github/mikephil/charting/data/ScatterData;Lcom/google/appinventor/components/runtime/ScatterChartView;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;)V

    .line 37
    return-void
.end method

.method protected constructor <init>(Lcom/github/mikephil/charting/data/ScatterData;Lcom/google/appinventor/components/runtime/ScatterChartView;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;)V
    .locals 1
    .param p1, "data"    # Lcom/github/mikephil/charting/data/ScatterData;
    .param p2, "view"    # Lcom/google/appinventor/components/runtime/ScatterChartView;
    .param p3, "dataset"    # Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/PointChartDataModel;-><init>(Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;Lcom/google/appinventor/components/runtime/PointChartView;)V

    .line 42
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 43
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/ScatterData;

    invoke-virtual {v0, p3}, Lcom/github/mikephil/charting/data/ScatterData;->addDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->setDefaultStylingProperties()V

    .line 45
    return-void
.end method


# virtual methods
.method public addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 5
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 53
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v0, :cond_2

    .line 65
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->entries:Ljava/util/List;

    new-instance v2, Lcom/github/mikephil/charting/utils/EntryXComparator;

    invoke-direct {v2}, Lcom/github/mikephil/charting/utils/EntryXComparator;-><init>()V

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 70
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 72
    neg-int v2, v1

    add-int/lit8 v2, v2, -0x1

    .end local v1    # "index":I
    .local v2, "index":I
    goto :goto_1

    .line 75
    .end local v2    # "index":I
    .restart local v1    # "index":I
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 80
    .local v2, "entryCount":I
    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v3

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "entryCount":I
    :cond_1
    move v2, v1

    .end local v1    # "index":I
    .local v2, "index":I
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 87
    .end local v2    # "index":I
    :cond_2
    return-void
.end method

.method protected setDefaultStylingProperties()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CIRCLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    .line 94
    :cond_0
    return-void
.end method

.method public setPointShape(Lcom/google/appinventor/components/common/PointStyle;)V
    .locals 3
    .param p1, "shape"    # Lcom/google/appinventor/components/common/PointStyle;

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel$1;->$SwitchMap$com$google$appinventor$components$common$PointStyle:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/PointStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown shape type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->X:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    .line 124
    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CROSS:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    .line 120
    goto :goto_0

    .line 115
    :pswitch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->TRIANGLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    .line 116
    goto :goto_0

    .line 111
    :pswitch_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->SQUARE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    .line 112
    goto :goto_0

    .line 107
    :pswitch_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CIRCLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    .line 108
    nop

    .line 129
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
