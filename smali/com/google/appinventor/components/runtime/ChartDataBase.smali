.class public abstract Lcom/google/appinventor/components/runtime/ChartDataBase;
.super Lcom/google/appinventor/components/runtime/DataCollection;
.source "ChartDataBase.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ChartComponent;
.implements Lcom/github/mikephil/charting/listener/OnChartGestureListener;
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/DataCollection<",
        "Lcom/google/appinventor/components/runtime/Chart;",
        "Lcom/google/appinventor/components/runtime/ChartDataModel<",
        "*****>;>;",
        "Lcom/google/appinventor/components/runtime/ChartComponent;",
        "Lcom/github/mikephil/charting/listener/OnChartGestureListener;",
        "Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;"
    }
.end annotation


# instance fields
.field private color:I

.field private colors:Lcom/google/appinventor/components/runtime/util/YailList;

.field private dataLabelColor:I

.field private label:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .locals 2
    .param p1, "chartContainer"    # Lcom/google/appinventor/components/runtime/Chart;

    .line 54
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/DataCollection;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 55
    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Chart;->addDataComponent(Lcom/google/appinventor/components/runtime/ChartComponent;)V

    .line 58
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->initChartData()V

    .line 59
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->Color(I)V

    .line 60
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ChartDataBase;->DataSourceKey(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ChartDataBase;->Label(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Chart;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->isDarkTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->DataLabelColor(I)V

    .line 63
    return-void
.end method


# virtual methods
.method public Color()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 94
    iget v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->color:I

    return v0
.end method

.method public Color(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 106
    iput p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->color:I

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/ChartDataModel;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->color:I

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->setColor(I)V

    .line 108
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->onDataChange()V

    .line 109
    return-void
.end method

.method public Colors()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->colors:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public Colors(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 9
    .param p1, "colors"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v0, "resultColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 142
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "color":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 147
    .local v3, "colorValue":J
    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 149
    const-wide v5, -0x100000000L

    add-long/2addr v3, v5

    .line 151
    :cond_0
    long-to-int v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    nop

    .end local v3    # "colorValue":J
    goto :goto_1

    .line 152
    :catch_0
    move-exception v3

    .line 154
    .local v3, "e":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    check-cast v4, Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Chart;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    check-cast v5, Lcom/google/appinventor/components/runtime/Component;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const-string v7, "Colors"

    const/16 v8, 0x1008

    invoke-virtual {v4, v5, v7, v8, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 140
    .end local v2    # "color":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->colors:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 166
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v1, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->setColors(Ljava/util/List;)V

    .line 167
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->onDataChange()V

    .line 168
    return-void
.end method

.method public DataLabelColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 178
    iget v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataLabelColor:I

    return v0
.end method

.method public DataLabelColor(I)V
    .locals 1
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 190
    iput p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataLabelColor:I

    .line 191
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->setDataLabelColor(I)V

    .line 192
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->onDataChange()V

    .line 193
    return-void
.end method

.method public EntryClick(Ljava/lang/Object;D)V
    .locals 3
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "y"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 343
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "EntryClick"

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 344
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    check-cast v0, Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Chart;->EntryClick(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/Object;D)V

    .line 345
    return-void
.end method

.method public Label()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->label:Ljava/lang/String;

    return-object v0
.end method

.method public Label(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->label:Ljava/lang/String;

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->setLabel(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataBase;->onDataChange()V

    .line 217
    return-void
.end method

.method public LineType(Lcom/google/appinventor/components/common/LineType;)V
    .locals 1
    .param p1, "type"    # Lcom/google/appinventor/components/common/LineType;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "chart_line_type"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LineChartBaseDataModel;->setLineType(Lcom/google/appinventor/components/common/LineType;)V

    .line 258
    :cond_0
    return-void
.end method

.method public PointShape(Lcom/google/appinventor/components/common/PointStyle;)V
    .locals 1
    .param p1, "shape"    # Lcom/google/appinventor/components/common/PointStyle;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "chart_point_shape"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->setPointShape(Lcom/google/appinventor/components/common/PointStyle;)V

    .line 237
    :cond_0
    return-void
.end method

.method public getDataModel()Lcom/google/appinventor/components/runtime/ChartDataModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/appinventor/components/runtime/ChartDataModel<",
            "*****>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/ChartDataModel;

    return-object v0
.end method

.method public initChartData()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    check-cast v0, Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Chart;->createChartModel()Lcom/google/appinventor/components/runtime/ChartDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/ChartDataModel;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/charts/Chart;->setOnChartGestureListener(Lcom/github/mikephil/charting/listener/OnChartGestureListener;)V

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/ChartDataModel;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/charts/Chart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 76
    return-void
.end method

.method public onChartDoubleTapped(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 298
    return-void
.end method

.method public onChartFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "motionEvent1"    # Landroid/view/MotionEvent;
    .param p3, "v"    # F
    .param p4, "v1"    # F

    .line 308
    return-void
.end method

.method public onChartGestureEnd(Landroid/view/MotionEvent;Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "chartGesture"    # Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 288
    return-void
.end method

.method public onChartGestureStart(Landroid/view/MotionEvent;Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "chartGesture"    # Lcom/github/mikephil/charting/listener/ChartTouchListener$ChartGesture;

    .line 282
    return-void
.end method

.method public onChartLongPressed(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 293
    return-void
.end method

.method public onChartScale(Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "v"    # F
    .param p3, "v1"    # F

    .line 313
    return-void
.end method

.method public onChartSingleTapped(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 303
    return-void
.end method

.method public onChartTranslate(Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "v"    # F
    .param p3, "v1"    # F

    .line 318
    return-void
.end method

.method public onDataChange()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    check-cast v0, Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Chart;->getChartView()Lcom/google/appinventor/components/runtime/ChartView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v1, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ChartView;->refresh(Lcom/google/appinventor/components/runtime/ChartDataModel;)V

    .line 273
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 274
    .local v1, "listener":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    const/4 v2, 0x0

    invoke-interface {v1, p0, v2, v2}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onDataSourceValueChange(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    goto :goto_0

    .line 276
    :cond_0
    return-void
.end method

.method public onNothingSelected()V
    .locals 0

    .line 350
    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 2
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "highlight"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .line 322
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    check-cast v0, Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Chart;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/ChartDataBase$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataBase$1;-><init>(Lcom/google/appinventor/components/runtime/ChartDataBase;Lcom/github/mikephil/charting/data/Entry;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method
