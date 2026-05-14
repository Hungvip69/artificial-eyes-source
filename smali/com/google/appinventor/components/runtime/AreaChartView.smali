.class public Lcom/google/appinventor/components/runtime/AreaChartView;
.super Lcom/google/appinventor/components/runtime/LineChartViewBase;
.source "AreaChartView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/LineChartViewBase<",
        "Lcom/google/appinventor/components/runtime/AreaChartView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .locals 2
    .param p1, "chartComponent"    # Lcom/google/appinventor/components/runtime/Chart;

    .line 26
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LineChartViewBase;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    .line 30
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AreaChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setHardwareAccelerationEnabled(Z)V

    .line 31
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
            "Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;",
            "Lcom/github/mikephil/charting/data/LineData;",
            "Lcom/github/mikephil/charting/charts/LineChart;",
            "Lcom/google/appinventor/components/runtime/AreaChartView;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/google/appinventor/components/runtime/AreaChartDataModel;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AreaChartView;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {v0, v1, p0}, Lcom/google/appinventor/components/runtime/AreaChartDataModel;-><init>(Lcom/github/mikephil/charting/data/LineData;Lcom/google/appinventor/components/runtime/AreaChartView;)V

    return-object v0
.end method
