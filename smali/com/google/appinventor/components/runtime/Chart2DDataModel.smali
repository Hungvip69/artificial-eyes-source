.class public abstract Lcom/google/appinventor/components/runtime/Chart2DDataModel;
.super Lcom/google/appinventor/components/runtime/ChartDataModel;
.source "Chart2DDataModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/github/mikephil/charting/data/Entry;",
        "T::",
        "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet<",
        "TE;>;D:",
        "Lcom/github/mikephil/charting/data/ChartData<",
        "TT;>;C:",
        "Lcom/github/mikephil/charting/charts/Chart<",
        "TD;>;V:",
        "Lcom/google/appinventor/components/runtime/ChartView<",
        "TE;TT;TD;TC;TV;>;>",
        "Lcom/google/appinventor/components/runtime/ChartDataModel<",
        "TE;TT;TD;TC;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/github/mikephil/charting/data/ChartData;Lcom/google/appinventor/components/runtime/ChartView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TV;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lcom/google/appinventor/components/runtime/Chart2DDataModel;, "Lcom/google/appinventor/components/runtime/Chart2DDataModel<TE;TT;TD;TC;TV;>;"
    .local p1, "data":Lcom/github/mikephil/charting/data/ChartData;, "TD;"
    .local p2, "view":Lcom/google/appinventor/components/runtime/ChartView;, "TV;"
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ChartDataModel;-><init>(Lcom/github/mikephil/charting/data/ChartData;Lcom/google/appinventor/components/runtime/ChartView;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getTupleFromEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/Entry;

    .line 52
    .local p0, "this":Lcom/google/appinventor/components/runtime/Chart2DDataModel;, "Lcom/google/appinventor/components/runtime/Chart2DDataModel<TE;TT;TD;TC;TV;>;"
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

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

    .line 53
    .local v0, "tupleEntries":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method protected getTupleSize()I
    .locals 1

    .line 45
    .local p0, "this":Lcom/google/appinventor/components/runtime/Chart2DDataModel;, "Lcom/google/appinventor/components/runtime/Chart2DDataModel<TE;TT;TD;TC;TV;>;"
    const/4 v0, 0x2

    return v0
.end method
