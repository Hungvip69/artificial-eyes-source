.class public Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;
.super Lcom/github/mikephil/charting/renderer/LineChartRenderer;
.source "LineWithTrendlineRenderer.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 29
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 37
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v0

    .line 38
    .local v0, "scatterData":Lcom/github/mikephil/charting/data/LineData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 39
    .local v2, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lcom/google/appinventor/components/runtime/util/HasTrendline;

    if-eqz v3, :cond_0

    .line 40
    invoke-virtual {p0, p1, v2}, Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;->drawTrendline(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 42
    .end local v2    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    :cond_0
    goto :goto_0

    .line 44
    :cond_1
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawData(Landroid/graphics/Canvas;)V

    .line 45
    return-void
.end method

.method protected drawTrendline(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 48
    instance-of v0, p2, Lcom/google/appinventor/components/runtime/util/HasTrendline;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    .line 55
    .local v0, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object v1, p2

    check-cast v1, Lcom/google/appinventor/components/runtime/util/HasTrendline;

    .line 56
    .local v1, "hasTrendline":Lcom/google/appinventor/components/runtime/util/HasTrendline;, "Lcom/google/appinventor/components/runtime/util/HasTrendline<*>;"
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/HasTrendline;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 60
    .local v2, "p":Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/HasTrendline;->getLineWidth()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/HasTrendline;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/HasTrendline;->getColor()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/HasTrendline;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 71
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getXChartMin()F

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getXChartMax()F

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 72
    invoke-interface {v5}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getWidth()I

    move-result v5

    .line 71
    invoke-interface {v1, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/HasTrendline;->getPoints(FFI)[F

    move-result-object v3

    .line 76
    .local v3, "lineBuffer":[F
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 80
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 82
    .end local v0    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v1    # "hasTrendline":Lcom/google/appinventor/components/runtime/util/HasTrendline;, "Lcom/google/appinventor/components/runtime/util/HasTrendline<*>;"
    .end local v2    # "p":Landroid/graphics/Paint;
    .end local v3    # "lineBuffer":[F
    :cond_1
    return-void
.end method
