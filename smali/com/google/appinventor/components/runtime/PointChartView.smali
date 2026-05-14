.class public abstract Lcom/google/appinventor/components/runtime/PointChartView;
.super Lcom/google/appinventor/components/runtime/AxisChartView;
.source "PointChartView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/github/mikephil/charting/data/Entry;",
        "T::",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet<",
        "TE;>;D:",
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData<",
        "TT;>;C:",
        "Lcom/github/mikephil/charting/charts/BarLineChartBase<",
        "TD;>;V:",
        "Lcom/google/appinventor/components/runtime/PointChartView<",
        "TE;TT;TD;TC;TV;>;>",
        "Lcom/google/appinventor/components/runtime/AxisChartView<",
        "TE;TT;TD;TC;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .locals 0
    .param p1, "chartComponent"    # Lcom/google/appinventor/components/runtime/Chart;

    .line 39
    .local p0, "this":Lcom/google/appinventor/components/runtime/PointChartView;, "Lcom/google/appinventor/components/runtime/PointChartView<TE;TT;TD;TC;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AxisChartView;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 54
    .local p0, "this":Lcom/google/appinventor/components/runtime/PointChartView;, "Lcom/google/appinventor/components/runtime/PointChartView<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PointChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    return-object v0
.end method

.method protected initializeDefaultSettings()V
    .locals 3

    .line 44
    .local p0, "this":Lcom/google/appinventor/components/runtime/PointChartView;, "Lcom/google/appinventor/components/runtime/PointChartView<TE;TT;TD;TC;TV;>;"
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AxisChartView;->initializeDefaultSettings()V

    .line 48
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PointChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    return-void
.end method

.method public setAxesTextColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 63
    .local p0, "this":Lcom/google/appinventor/components/runtime/PointChartView;, "Lcom/google/appinventor/components/runtime/PointChartView<TE;TT;TD;TC;TV;>;"
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the color is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PointChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PointChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PointChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->invalidate()V

    .line 67
    return-void
.end method
