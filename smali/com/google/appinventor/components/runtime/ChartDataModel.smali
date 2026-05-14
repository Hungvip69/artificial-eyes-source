.class public abstract Lcom/google/appinventor/components/runtime/ChartDataModel;
.super Lcom/google/appinventor/components/runtime/DataModel;
.source "ChartDataModel.java"


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
        "Lcom/google/appinventor/components/runtime/DataModel<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected data:Lcom/github/mikephil/charting/data/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field protected dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected view:Lcom/google/appinventor/components/runtime/ChartView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/github/mikephil/charting/data/ChartData;Lcom/google/appinventor/components/runtime/ChartView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TV;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    .local p1, "data":Lcom/github/mikephil/charting/data/ChartData;, "TD;"
    .local p2, "view":Lcom/google/appinventor/components/runtime/ChartView;, "TV;"
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/DataModel;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    .line 53
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public addTimeEntry(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 375
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->maximumTimeEntries:I

    if-lt v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 382
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 383
    return-void
.end method

.method protected areEntriesEqual(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 1
    .param p1, "e1"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "e2"    # Lcom/github/mikephil/charting/data/Entry;

    .line 432
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/Entry;->equalTo(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v0

    return v0
.end method

.method public clearEntries()V
    .locals 1

    .line 361
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 362
    return-void
.end method

.method public doesEntryExist(Lcom/google/appinventor/components/runtime/util/YailList;)Z
    .locals 3
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 223
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 226
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->findEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v1

    .line 229
    .local v1, "index":I
    if-ltz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public findEntriesByCriterion(Ljava/lang/String;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "criterion"    # Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;

    .line 242
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    .line 247
    .local v2, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {p0, v2, p2, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->isEntryCriterionSatisfied(Lcom/github/mikephil/charting/data/Entry;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getTupleFromEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v2    # "entry":Lcom/github/mikephil/charting/data/Entry;
    :cond_0
    goto :goto_0

    .line 253
    :cond_1
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method public findEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I
    .locals 3
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/Entry;

    .line 342
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 348
    .local v1, "currentEntry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {p0, v1, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->areEntriesEqual(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    return v0

    .line 342
    .end local v1    # "currentEntry":Lcom/github/mikephil/charting/data/Entry;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getData()Lcom/github/mikephil/charting/data/ChartData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    return-object v0
.end method

.method public getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    return-object v0
.end method

.method protected getDefaultValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 415
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 441
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEntriesAsTuples()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2

    .line 263
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    const-string v0, "0"

    sget-object v1, Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;->All:Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->findEntriesByCriterion(Ljava/lang/String;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTupleSize()I
.end method

.method protected isEntryCriterionSatisfied(Lcom/github/mikephil/charting/data/Entry;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;Ljava/lang/String;)Z
    .locals 7
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "criterion"    # Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;
    .param p3, "value"    # Ljava/lang/String;

    .line 276
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    const/4 v0, 0x0

    .line 278
    .local v0, "criterionSatisfied":Z
    sget-object v1, Lcom/google/appinventor/components/runtime/ChartDataModel$2;->$SwitchMap$com$google$appinventor$components$runtime$DataModel$EntryCriterion:[I

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 325
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown criterion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :pswitch_0
    :try_start_0
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 318
    .local v1, "yValue":F
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float v4, v4, v1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 321
    .end local v1    # "yValue":F
    goto :goto_2

    .line 319
    :catch_0
    move-exception v1

    .line 322
    goto :goto_2

    .line 286
    :pswitch_1
    instance-of v1, p1, Lcom/github/mikephil/charting/data/PieEntry;

    if-eqz v1, :cond_1

    .line 289
    move-object v1, p1

    check-cast v1, Lcom/github/mikephil/charting/data/PieEntry;

    .line 290
    .local v1, "pieEntry":Lcom/github/mikephil/charting/data/PieEntry;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 291
    .end local v1    # "pieEntry":Lcom/github/mikephil/charting/data/PieEntry;
    goto :goto_2

    .line 296
    :cond_1
    :try_start_1
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 297
    .local v1, "xValue":F
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v4

    .line 302
    .local v4, "compareValue":F
    instance-of v5, p1, Lcom/github/mikephil/charting/data/BarEntry;

    if-eqz v5, :cond_2

    .line 303
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    double-to-float v4, v5

    .line 306
    :cond_2
    cmpl-float v5, v4, v1

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    move v0, v2

    .line 309
    .end local v1    # "xValue":F
    .end local v4    # "compareValue":F
    goto :goto_2

    .line 307
    :catch_1
    move-exception v1

    .line 311
    goto :goto_2

    .line 280
    :pswitch_2
    const/4 v0, 0x1

    .line 281
    nop

    .line 328
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeEntry(I)V
    .locals 1
    .param p1, "index"    # I

    .line 210
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    if-ltz p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 213
    :cond_0
    return-void
.end method

.method public removeEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 188
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 190
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->findEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v1

    .line 198
    .local v1, "index":I
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->removeEntry(I)V

    .line 200
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public setChartValueType(I)V
    .locals 2
    .param p1, "valueType"    # I

    .line 115
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    new-instance v1, Lcom/google/appinventor/components/runtime/ChartDataModel$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel$1;-><init>(Lcom/google/appinventor/components/runtime/ChartDataModel;I)V

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setValueFormatter(Lcom/github/mikephil/charting/formatter/ValueFormatter;)V

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/AxisChartView;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v0, Lcom/google/appinventor/components/runtime/AxisChartView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/AxisChartView;->setValueType(I)V

    .line 129
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "argb"    # I

    .line 89
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/DataSet;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->setColor(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public setColors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/DataSet;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->setColors(Ljava/util/List;)V

    .line 107
    :cond_0
    return-void
.end method

.method public setDataLabelColor(I)V
    .locals 1
    .param p1, "argb"    # I

    .line 137
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/ChartData;->setValueTextColor(I)V

    .line 138
    return-void
.end method

.method protected setDefaultStylingProperties()V
    .locals 0

    .line 403
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    return-void
.end method

.method public setElements(Ljava/lang/String;)V
    .locals 7
    .param p1, "elements"    # Ljava/lang/String;

    .line 156
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getTupleSize()I

    move-result v0

    .line 159
    .local v0, "tupleSize":I
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "entries":[Ljava/lang/String;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v3, "tupleEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v4, v0, -0x1

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_0

    .line 172
    sub-int v5, v2, v4

    .line 173
    .local v5, "index":I
    aget-object v6, v1, v5

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v5    # "index":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 177
    .end local v4    # "j":I
    :cond_0
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ChartDataModel;->addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 166
    .end local v3    # "tupleEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/2addr v2, v0

    goto :goto_0

    .line 179
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 146
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setLabel(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public setMaximumTimeEntries(I)V
    .locals 0
    .param p1, "entries"    # I

    .line 391
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iput p1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->maximumTimeEntries:I

    .line 392
    return-void
.end method
