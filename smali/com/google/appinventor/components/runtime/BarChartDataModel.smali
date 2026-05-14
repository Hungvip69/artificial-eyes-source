.class public Lcom/google/appinventor/components/runtime/BarChartDataModel;
.super Lcom/google/appinventor/components/runtime/Chart2DDataModel;
.source "BarChartDataModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/Chart2DDataModel<",
        "Lcom/github/mikephil/charting/data/BarEntry;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
        "Lcom/github/mikephil/charting/data/BarData;",
        "Lcom/github/mikephil/charting/charts/BarChart;",
        "Lcom/google/appinventor/components/runtime/BarChartView;",
        ">;"
    }
.end annotation


# static fields
.field private static final DATE_PATTERN:Ljava/lang/String; = "^[0-3]?[0-9]/[0-3]?[0-9]/(?:[0-9]{2})?[0-9]{2}$"

.field private static final DATE_PATTERN_PATTERN:Ljava/util/regex/Pattern;

.field private static final TIME_PATTERN:Ljava/lang/String; = "([01]?[0-9]|2[0-3]):[0-5][0-9]:[0-6][0-9]"

.field private static final TIME_PATTERN_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-string v0, "^[0-3]?[0-9]/[0-3]?[0-9]/(?:[0-9]{2})?[0-9]{2}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->DATE_PATTERN_PATTERN:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "([01]?[0-9]|2[0-3]):[0-5][0-9]:[0-6][0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->TIME_PATTERN_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Lcom/github/mikephil/charting/data/BarData;Lcom/google/appinventor/components/runtime/BarChartView;)V
    .locals 3
    .param p1, "data"    # Lcom/github/mikephil/charting/data/BarData;
    .param p2, "view"    # Lcom/google/appinventor/components/runtime/BarChartView;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Chart2DDataModel;-><init>(Lcom/github/mikephil/charting/data/ChartData;Lcom/google/appinventor/components/runtime/ChartView;)V

    .line 51
    new-instance v0, Lcom/github/mikephil/charting/data/BarDataSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 52
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->addDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BarChartDataModel;->setDefaultStylingProperties()V

    .line 54
    return-void
.end method


# virtual methods
.method public addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 6
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BarChartDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    .line 62
    .local v0, "entry":Lcom/github/mikephil/charting/data/BarEntry;
    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 76
    .local v1, "x":I
    if-gez v1, :cond_0

    .line 77
    return-void

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_2

    .line 90
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    new-instance v3, Lcom/github/mikephil/charting/data/BarEntry;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v1    # "x":I
    :cond_3
    :goto_1
    return-void
.end method

.method public addTimeEntry(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->maximumTimeEntries:I

    if-lt v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BarChartDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method protected areEntriesEqual(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 6
    .param p1, "e1"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "e2"    # Lcom/github/mikephil/charting/data/Entry;

    .line 197
    instance-of v0, p1, Lcom/github/mikephil/charting/data/BarEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/github/mikephil/charting/data/BarEntry;

    if-nez v0, :cond_0

    goto :goto_1

    .line 206
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    .line 207
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v0

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 206
    :goto_0
    return v1

    .line 198
    :cond_2
    :goto_1
    return v1
.end method

.method public getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;
    .locals 11
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 108
    const-string v0, "GetEntryFromTuple"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "rawX":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 112
    .local v5, "rawY":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 113
    .local v6, "x":F
    sget-object v7, Lcom/google/appinventor/components/runtime/BarChartDataModel;->DATE_PATTERN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 114
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 115
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v7, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 116
    .local v8, "date":Ljava/util/Date;
    if-eqz v8, :cond_0

    .line 117
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    long-to-float v6, v9

    .line 119
    .end local v7    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v8    # "date":Ljava/util/Date;
    :cond_0
    goto :goto_0

    :cond_1
    sget-object v7, Lcom/google/appinventor/components/runtime/BarChartDataModel;->TIME_PATTERN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 120
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "HH:mm:ss"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v7    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v7, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 122
    .restart local v8    # "date":Ljava/util/Date;
    if-eqz v8, :cond_2

    .line 123
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    long-to-float v6, v9

    .line 130
    .end local v7    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v8    # "date":Ljava/util/Date;
    :cond_2
    :goto_0
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 132
    .local v7, "y":F
    new-instance v8, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-direct {v8, v6, v7}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v8

    .line 139
    .end local v6    # "x":F
    .end local v7    # "y":F
    :catch_0
    move-exception v6

    .line 140
    .local v6, "e":Ljava/text/ParseException;
    :try_start_2
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "tuple":Lcom/google/appinventor/components/runtime/util/YailList;
    throw v7

    .line 133
    .end local v6    # "e":Ljava/text/ParseException;
    .restart local p1    # "tuple":Lcom/google/appinventor/components/runtime/util/YailList;
    :catch_1
    move-exception v6

    .line 135
    .local v6, "e":Ljava/lang/NumberFormatException;
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v7, Lcom/google/appinventor/components/runtime/BarChartView;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/BarChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v7

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v8, Lcom/google/appinventor/components/runtime/BarChartView;

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/BarChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v4, v9, v3

    aput-object v5, v9, v2

    const/16 v10, 0x1005

    invoke-virtual {v7, v8, v0, v10, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 141
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 146
    .end local v4    # "rawX":Ljava/lang/String;
    .end local v5    # "rawY":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 147
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v5, Lcom/google/appinventor/components/runtime/BarChartView;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/BarChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v6, Lcom/google/appinventor/components/runtime/BarChartView;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BarChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    .line 150
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BarChartDataModel;->getTupleSize()I

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

    .line 147
    const/16 v2, 0x1007

    invoke-virtual {v5, v6, v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2

    .line 142
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v2, Lcom/google/appinventor/components/runtime/BarChartView;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BarChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v4, Lcom/google/appinventor/components/runtime/BarChartView;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BarChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    const/16 v5, 0x1006

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v0, v5, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 151
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_1
    nop

    .line 153
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTupleFromEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/Entry;

    .line 216
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Float;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 217
    .local v0, "tupleEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method public removeEntry(I)V
    .locals 2
    .param p1, "index"    # I

    .line 159
    if-ltz p1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarEntry;->setY(F)V

    .line 172
    :cond_1
    :goto_0
    return-void
.end method
