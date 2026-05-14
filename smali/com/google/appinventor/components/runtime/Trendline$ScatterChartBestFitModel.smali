.class Lcom/google/appinventor/components/runtime/Trendline$ScatterChartBestFitModel;
.super Lcom/google/appinventor/components/runtime/ScatterChartDataModel;
.source "Trendline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Trendline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScatterChartBestFitModel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Trendline;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Trendline;)V
    .locals 3

    .line 656
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Trendline$ScatterChartBestFitModel;->this$0:Lcom/google/appinventor/components/runtime/Trendline;

    .line 657
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Trendline;->-$$Nest$fgetcontainer(Lcom/google/appinventor/components/runtime/Trendline;)Lcom/google/appinventor/components/runtime/Chart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Chart;->getChartView()Lcom/google/appinventor/components/runtime/ChartView;

    move-result-object v0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartView;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/ScatterData;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Trendline;->-$$Nest$fgetcontainer(Lcom/google/appinventor/components/runtime/Trendline;)Lcom/google/appinventor/components/runtime/Chart;

    move-result-object v1

    .line 658
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Chart;->getChartView()Lcom/google/appinventor/components/runtime/ChartView;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/ScatterChartView;

    new-instance v2, Lcom/google/appinventor/components/runtime/Trendline$ScatterChartBestFitDataSet;

    invoke-direct {v2, p1}, Lcom/google/appinventor/components/runtime/Trendline$ScatterChartBestFitDataSet;-><init>(Lcom/google/appinventor/components/runtime/Trendline;)V

    .line 657
    invoke-direct {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;-><init>(Lcom/github/mikephil/charting/data/ScatterData;Lcom/google/appinventor/components/runtime/ScatterChartView;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;)V

    .line 660
    return-void
.end method
