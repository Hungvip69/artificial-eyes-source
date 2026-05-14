.class public abstract Lcom/google/appinventor/components/runtime/PointChartDataModel;
.super Lcom/google/appinventor/components/runtime/Chart2DDataModel;
.source "PointChartDataModel.java"


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
        "Lcom/google/appinventor/components/runtime/Chart2DDataModel<",
        "TE;TT;TD;TC;TV;>;"
    }
.end annotation


# static fields
.field private static final DATE_PATTERN:Ljava/lang/String; = "^[0-3]?[0-9]/[0-3]?[0-9]/(?:[0-9]{2})?[0-9]{2}$"

.field private static final TIME_PATTERN:Ljava/lang/String; = "([01]?[0-9]|2[0-3]):[0-5][0-9]:[0-6][0-9]"


# direct methods
.method protected constructor <init>(Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;Lcom/google/appinventor/components/runtime/PointChartView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TV;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lcom/google/appinventor/components/runtime/PointChartDataModel;, "Lcom/google/appinventor/components/runtime/PointChartDataModel<TE;TT;TD;TC;TV;>;"
    .local p1, "data":Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;, "TD;"
    .local p2, "view":Lcom/google/appinventor/components/runtime/PointChartView;, "TV;"
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Chart2DDataModel;-><init>(Lcom/github/mikephil/charting/data/ChartData;Lcom/google/appinventor/components/runtime/ChartView;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;
    .locals 11
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 63
    .local p0, "this":Lcom/google/appinventor/components/runtime/PointChartDataModel;, "Lcom/google/appinventor/components/runtime/PointChartDataModel<TE;TT;TD;TC;TV;>;"
    const-string v0, "GetEntryFromTuple"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "xValue":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 69
    .local v5, "yValue":Ljava/lang/String;
    :try_start_1
    const-string v6, "^[0-3]?[0-9]/[0-3]?[0-9]/(?:[0-9]{2})?[0-9]{2}$"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 70
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "dd/MM/yyyy"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 71
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 72
    .local v7, "date":Ljava/util/Date;
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    long-to-float v6, v8

    .line 73
    .end local v7    # "date":Ljava/util/Date;
    .local v6, "x":F
    goto :goto_0

    .line 74
    .end local v6    # "x":F
    :cond_0
    const-string v6, "([01]?[0-9]|2[0-3]):[0-5][0-9]:[0-6][0-9]"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 75
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "HH:mm:ss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 76
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 77
    .restart local v7    # "date":Ljava/util/Date;
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    long-to-float v6, v8

    .line 78
    .end local v7    # "date":Ljava/util/Date;
    .local v6, "x":F
    goto :goto_0

    .line 80
    .end local v6    # "x":F
    :cond_1
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 82
    .restart local v6    # "x":F
    :goto_0
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 84
    .local v7, "y":F
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    invoke-direct {v8, v6, v7}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v8

    .line 91
    .end local v6    # "x":F
    .end local v7    # "y":F
    :catch_0
    move-exception v6

    .line 92
    .local v6, "e":Ljava/text/ParseException;
    :try_start_2
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "tuple":Lcom/google/appinventor/components/runtime/util/YailList;
    throw v7

    .line 85
    .end local v6    # "e":Ljava/text/ParseException;
    .restart local p1    # "tuple":Lcom/google/appinventor/components/runtime/util/YailList;
    :catch_1
    move-exception v6

    .line 87
    .local v6, "e":Ljava/lang/NumberFormatException;
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/PointChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v7, Lcom/google/appinventor/components/runtime/PointChartView;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/PointChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v7

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/PointChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v8, Lcom/google/appinventor/components/runtime/PointChartView;

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/PointChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v4, v9, v3

    aput-object v5, v9, v2

    const/16 v10, 0x1005

    invoke-virtual {v7, v8, v0, v10, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 93
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 98
    .end local v4    # "xValue":Ljava/lang/String;
    .end local v5    # "yValue":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 99
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/PointChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v5, Lcom/google/appinventor/components/runtime/PointChartView;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/PointChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/PointChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v6, Lcom/google/appinventor/components/runtime/PointChartView;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/PointChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    .line 102
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PointChartDataModel;->getTupleSize()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v7, v1, v3

    aput-object v8, v1, v2

    .line 99
    const/16 v2, 0x1007

    invoke-virtual {v5, v6, v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2

    .line 94
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PointChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v2, Lcom/google/appinventor/components/runtime/PointChartView;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/PointChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/PointChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v4, Lcom/google/appinventor/components/runtime/PointChartView;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/PointChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    const/16 v5, 0x1006

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v0, v5, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 103
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_1
    nop

    .line 105
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method
