.class public Lcom/google/appinventor/components/runtime/ScatterChartView;
.super Lcom/google/appinventor/components/runtime/PointChartView;
.source "ScatterChartView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/PointChartView<",
        "Lcom/github/mikephil/charting/data/Entry;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;",
        "Lcom/github/mikephil/charting/data/ScatterData;",
        "Lcom/github/mikephil/charting/charts/ScatterChart;",
        "Lcom/google/appinventor/components/runtime/ScatterChartView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .locals 5
    .param p1, "chartComponent"    # Lcom/google/appinventor/components/runtime/Chart;

    .line 27
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/PointChartView;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    .line 29
    new-instance v0, Lcom/github/mikephil/charting/charts/ScatterChart;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ScatterChartView;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/charts/ScatterChart;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    .line 30
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/ScatterChart;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/ScatterWithTrendlineRenderer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ScatterChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/ScatterChart;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ScatterChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/ScatterChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/ScatterChart;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ScatterChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/ScatterChart;

    .line 31
    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/ScatterChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/ScatterWithTrendlineRenderer;-><init>(Lcom/github/mikephil/charting/charts/ScatterChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 30
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/ScatterChart;->setRenderer(Lcom/github/mikephil/charting/renderer/DataRenderer;)V

    .line 33
    new-instance v0, Lcom/github/mikephil/charting/data/ScatterData;

    invoke-direct {v0}, Lcom/github/mikephil/charting/data/ScatterData;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartView;->data:Lcom/github/mikephil/charting/data/ChartData;

    .line 34
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ScatterChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/ScatterChart;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ScatterChartView;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/ScatterData;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/ScatterChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScatterChartView;->initializeDefaultSettings()V

    .line 37
    return-void
.end method


# virtual methods
.method public createChartModel()Lcom/google/appinventor/components/runtime/ChartDataModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/appinventor/components/runtime/ChartDataModel<",
            "Lcom/github/mikephil/charting/data/Entry;",
            "Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;",
            "Lcom/github/mikephil/charting/data/ScatterData;",
            "Lcom/github/mikephil/charting/charts/ScatterChart;",
            "Lcom/google/appinventor/components/runtime/ScatterChartView;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ScatterChartView;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/ScatterData;

    invoke-direct {v0, v1, p0}, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;-><init>(Lcom/github/mikephil/charting/data/ScatterData;Lcom/google/appinventor/components/runtime/ScatterChartView;)V

    return-object v0
.end method
