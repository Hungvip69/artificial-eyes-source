.class public Lcom/google/appinventor/components/runtime/AreaChartDataModel;
.super Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;
.source "AreaChartDataModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/LineChartBaseDataModel<",
        "Lcom/google/appinventor/components/runtime/AreaChartView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/data/LineData;Lcom/google/appinventor/components/runtime/AreaChartView;)V
    .locals 0
    .param p1, "data"    # Lcom/github/mikephil/charting/data/LineData;
    .param p2, "view"    # Lcom/google/appinventor/components/runtime/AreaChartView;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;-><init>(Lcom/github/mikephil/charting/data/LineData;Lcom/google/appinventor/components/runtime/LineChartViewBase;)V

    .line 27
    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 1
    .param p1, "argb"    # I

    .line 31
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->setColor(I)V

    .line 32
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AreaChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/LineDataSet;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AreaChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 35
    :cond_0
    return-void
.end method

.method public setColors(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->setColors(Ljava/util/List;)V

    .line 43
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AreaChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/LineDataSet;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AreaChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/LineDataSet;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 48
    :cond_0
    return-void
.end method

.method protected setDefaultStylingProperties()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->setDefaultStylingProperties()V

    .line 53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AreaChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->setDrawFilled(Z)V

    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AreaChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/LineDataSet;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AreaChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/LineDataSet;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillAlpha(I)V

    .line 58
    :cond_0
    return-void
.end method
