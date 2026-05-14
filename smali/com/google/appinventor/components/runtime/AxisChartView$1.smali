.class Lcom/google/appinventor/components/runtime/AxisChartView$1;
.super Lcom/github/mikephil/charting/formatter/ValueFormatter;
.source "AxisChartView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AxisChartView;->initializeDefaultSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AxisChartView;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AxisChartView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/AxisChartView;

    .line 74
    .local p0, "this":Lcom/google/appinventor/components/runtime/AxisChartView$1;, "Lcom/google/appinventor/components/runtime/AxisChartView$1;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AxisChartView$1;->this$0:Lcom/google/appinventor/components/runtime/AxisChartView;

    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # F

    .line 78
    .local p0, "this":Lcom/google/appinventor/components/runtime/AxisChartView$1;, "Lcom/google/appinventor/components/runtime/AxisChartView$1;"
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 87
    .local v0, "integerValue":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AxisChartView$1;->this$0:Lcom/google/appinventor/components/runtime/AxisChartView;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/AxisChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v1, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/mikephil/charting/components/XAxis;->getAxisMinimum()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 91
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AxisChartView$1;->this$0:Lcom/google/appinventor/components/runtime/AxisChartView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/AxisChartView;->-$$Nest$fgetaxisLabels(Lcom/google/appinventor/components/runtime/AxisChartView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AxisChartView$1;->this$0:Lcom/google/appinventor/components/runtime/AxisChartView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/AxisChartView;->-$$Nest$fgetaxisLabels(Lcom/google/appinventor/components/runtime/AxisChartView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AxisChartView$1;->this$0:Lcom/google/appinventor/components/runtime/AxisChartView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/AxisChartView;->-$$Nest$fgetvalueType(Lcom/google/appinventor/components/runtime/AxisChartView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 99
    float-to-int v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AxisChartView$1;->this$0:Lcom/google/appinventor/components/runtime/AxisChartView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/AxisChartView;->-$$Nest$fgetvalueType(Lcom/google/appinventor/components/runtime/AxisChartView;)I

    move-result v1

    const/4 v2, 0x2

    const/high16 v3, -0x3d4c0000    # -90.0f

    if-ne v1, v2, :cond_2

    .line 102
    new-instance v1, Ljava/util/Date;

    float-to-long v4, p1

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 103
    .local v1, "mDate":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, "dateFormat":Ljava/text/DateFormat;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/AxisChartView$1;->this$0:Lcom/google/appinventor/components/runtime/AxisChartView;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AxisChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelRotationAngle(F)V

    .line 105
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 106
    .end local v1    # "mDate":Ljava/util/Date;
    .end local v2    # "dateFormat":Ljava/text/DateFormat;
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AxisChartView$1;->this$0:Lcom/google/appinventor/components/runtime/AxisChartView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/AxisChartView;->-$$Nest$fgetvalueType(Lcom/google/appinventor/components/runtime/AxisChartView;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 108
    new-instance v1, Ljava/util/Date;

    float-to-long v4, p1

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 109
    .restart local v1    # "mDate":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm:ss"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 110
    .restart local v2    # "dateFormat":Ljava/text/DateFormat;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/AxisChartView$1;->this$0:Lcom/google/appinventor/components/runtime/AxisChartView;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/AxisChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarLineChartBase;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelRotationAngle(F)V

    .line 111
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 113
    .end local v1    # "mDate":Ljava/util/Date;
    .end local v2    # "dateFormat":Ljava/text/DateFormat;
    :cond_3
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
