.class public Lcom/google/appinventor/components/runtime/BarChartView;
.super Lcom/google/appinventor/components/runtime/AxisChartView;
.source "BarChartView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/AxisChartView<",
        "Lcom/github/mikephil/charting/data/BarEntry;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
        "Lcom/github/mikephil/charting/data/BarData;",
        "Lcom/github/mikephil/charting/charts/BarChart;",
        "Lcom/google/appinventor/components/runtime/BarChartView;",
        ">;"
    }
.end annotation


# static fields
.field private static final GROUP_SPACE:F = 0.08f

.field private static final START_X_VALUE:F


# instance fields
.field private barSpace:F

.field private barWidth:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .locals 2
    .param p1, "chartComponent"    # Lcom/google/appinventor/components/runtime/Chart;

    .line 44
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AxisChartView;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/BarChartView;->barSpace:F

    .line 34
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/google/appinventor/components/runtime/BarChartView;->barWidth:F

    .line 47
    new-instance v0, Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarChartView;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    .line 50
    new-instance v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v0}, Lcom/github/mikephil/charting/data/BarData;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartView;->data:Lcom/github/mikephil/charting/data/ChartData;

    .line 51
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarChartView;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BarChartView;->initializeDefaultSettings()V

    .line 54
    return-void
.end method

.method private recalculateBarSpaceAndWidth()V
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v0

    .line 88
    .local v0, "dataSetCount":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 95
    const v2, 0x3f6b851f    # 0.92f

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 96
    .local v2, "x":F
    const v3, 0x3dcccccd    # 0.1f

    mul-float v3, v3, v2

    iput v3, p0, Lcom/google/appinventor/components/runtime/BarChartView;->barSpace:F

    .line 97
    const v3, 0x3f666666    # 0.9f

    mul-float v3, v3, v2

    iput v3, p0, Lcom/google/appinventor/components/runtime/BarChartView;->barWidth:F

    .line 100
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BarChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BarData;

    iget v4, p0, Lcom/google/appinventor/components/runtime/BarChartView;->barWidth:F

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    .line 106
    .end local v2    # "x":F
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BarChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/github/mikephil/charting/components/XAxis;->setCenterAxisLabels(Z)V

    .line 110
    :cond_1
    return-void
.end method

.method private regroupBars()V
    .locals 7

    .line 157
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v0

    .line 161
    .local v0, "dataSetCount":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarChart;

    iget v2, p0, Lcom/google/appinventor/components/runtime/BarChartView;->barSpace:F

    const/4 v3, 0x0

    const v4, 0x3da3d70a    # 0.08f

    invoke-virtual {v1, v3, v4, v2}, Lcom/github/mikephil/charting/charts/BarChart;->groupBars(FFF)V

    .line 167
    const/4 v1, 0x0

    .line 169
    .local v1, "maxEntries":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BarChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getDataSets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 170
    .local v5, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 171
    .end local v5    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    goto :goto_0

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BarChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMinimum(F)V

    .line 179
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BarChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v2

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BarChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v5, Lcom/github/mikephil/charting/charts/BarChart;

    .line 180
    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BarData;

    iget v6, p0, Lcom/google/appinventor/components/runtime/BarChartView;->barSpace:F

    invoke-virtual {v5, v4, v6}, Lcom/github/mikephil/charting/data/BarData;->getGroupWidth(FF)F

    move-result v4

    int-to-float v5, v1

    mul-float v4, v4, v5

    add-float/2addr v4, v3

    .line 179
    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    .line 182
    .end local v1    # "maxEntries":I
    :cond_1
    return-void
.end method


# virtual methods
.method public createChartModel()Lcom/google/appinventor/components/runtime/ChartDataModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/appinventor/components/runtime/ChartDataModel<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
            "Lcom/github/mikephil/charting/data/BarData;",
            "Lcom/github/mikephil/charting/charts/BarChart;",
            "Lcom/google/appinventor/components/runtime/BarChartView;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/google/appinventor/components/runtime/BarChartDataModel;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarChartView;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v0, v1, p0}, Lcom/google/appinventor/components/runtime/BarChartDataModel;-><init>(Lcom/github/mikephil/charting/data/BarData;Lcom/google/appinventor/components/runtime/BarChartView;)V

    .line 70
    .local v0, "model":Lcom/google/appinventor/components/runtime/BarChartDataModel;
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BarChartView;->recalculateBarSpaceAndWidth()V

    .line 73
    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    return-object v0
.end method

.method protected initializeDefaultSettings()V
    .locals 3

    .line 114
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AxisChartView;->initializeDefaultSettings()V

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    .line 123
    return-void
.end method

.method protected refresh(Lcom/google/appinventor/components/runtime/ChartDataModel;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/ChartDataModel<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
            "Lcom/github/mikephil/charting/data/BarData;",
            "Lcom/github/mikephil/charting/charts/BarChart;",
            "Lcom/google/appinventor/components/runtime/BarChartView;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p1, "model":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<Lcom/github/mikephil/charting/data/BarEntry;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;Lcom/github/mikephil/charting/data/BarData;Lcom/github/mikephil/charting/charts/BarChart;Lcom/google/appinventor/components/runtime/BarChartView;>;"
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 131
    .local v0, "dataset":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    instance-of v1, v0, Lcom/github/mikephil/charting/data/BarDataSet;

    if-eqz v1, :cond_0

    .line 132
    move-object v1, v0

    check-cast v1, Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {v1, p2}, Lcom/github/mikephil/charting/data/BarDataSet;->setValues(Ljava/util/List;)V

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BarChartView;->regroupBars()V

    .line 140
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarData;->notifyDataChanged()V

    .line 144
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->notifyDataSetChanged()V

    .line 148
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 149
    return-void
.end method
