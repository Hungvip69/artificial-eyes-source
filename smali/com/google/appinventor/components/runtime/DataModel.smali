.class public abstract Lcom/google/appinventor/components/runtime/DataModel;
.super Ljava/lang/Object;
.source "DataModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected maximumTimeEntries:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 45
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataModel;, "Lcom/google/appinventor/components/runtime/DataModel<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/appinventor/components/runtime/DataModel;->maximumTimeEntries:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public abstract addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
.end method

.method public abstract addTimeEntry(Lcom/google/appinventor/components/runtime/util/YailList;)V
.end method

.method protected areEntriesEqual(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 1
    .param p1, "e1"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "e2"    # Lcom/github/mikephil/charting/data/Entry;

    .line 381
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataModel;, "Lcom/google/appinventor/components/runtime/DataModel<TE;>;"
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/Entry;->equalTo(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v0

    return v0
.end method

.method public abstract clearEntries()V
.end method

.method public abstract doesEntryExist(Lcom/google/appinventor/components/runtime/util/YailList;)Z
.end method

.method public abstract findEntriesByCriterion(Ljava/lang/String;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;)Lcom/google/appinventor/components/runtime/util/YailList;
.end method

.method public abstract findEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I
.end method

.method protected getDefaultValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 364
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataModel;, "Lcom/google/appinventor/components/runtime/DataModel<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getEntries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end method

.method public getEntriesAsTuples()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2

    .line 281
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataModel;, "Lcom/google/appinventor/components/runtime/DataModel<TE;>;"
    const-string v0, "0"

    sget-object v1, Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;->All:Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/DataModel;->findEntriesByCriterion(Ljava/lang/String;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public abstract getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;
.end method

.method public abstract getTupleFromEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/google/appinventor/components/runtime/util/YailList;
.end method

.method protected abstract getTupleSize()I
.end method

.method public getTuplesFromColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 8
    .param p1, "columns"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "hasHeaders"    # Z

    .line 188
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataModel;, "Lcom/google/appinventor/components/runtime/DataModel<TE;>;"
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ChartDataSourceUtil;->determineMaximumListSize(Lcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    .line 190
    .local v0, "rows":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v1, "tuples":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 194
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v3, "tupleElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 199
    invoke-virtual {p1, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    .line 203
    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, Lcom/google/appinventor/components/runtime/util/YailList;

    if-nez v6, :cond_0

    .line 204
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/DataModel;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    goto :goto_2

    .line 209
    :cond_0
    move-object v6, v5

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 211
    .local v6, "column":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v7

    if-le v7, v2, :cond_1

    .line 213
    invoke-virtual {v6, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 214
    :cond_1
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 217
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/DataModel;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 221
    :cond_2
    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "column":Lcom/google/appinventor/components/runtime/util/YailList;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 231
    .end local v4    # "j":I
    :cond_3
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    .line 232
    .local v4, "tuple":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v3    # "tupleElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "tuple":Lcom/google/appinventor/components/runtime/util/YailList;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v2    # "i":I
    :cond_4
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method public importFromColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)V
    .locals 1
    .param p1, "columns"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "hasHeaders"    # Z

    .line 170
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataModel;, "Lcom/google/appinventor/components/runtime/DataModel<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/DataModel;->getTuplesFromColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 174
    .local v0, "tuples":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/DataModel;->importFromList(Ljava/util/List;)V

    .line 175
    return-void
.end method

.method public importFromList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 109
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataModel;, "Lcom/google/appinventor/components/runtime/DataModel<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 110
    .local v1, "entry":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 112
    .local v2, "tuple":Lcom/google/appinventor/components/runtime/util/YailList;
    instance-of v3, v1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_0

    .line 114
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_1

    .line 115
    :cond_0
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 117
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    .line 122
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 123
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/DataModel;->addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 125
    .end local v1    # "entry":Ljava/lang/Object;
    .end local v2    # "tuple":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_2
    goto :goto_0

    .line 126
    :cond_3
    return-void
.end method

.method protected abstract isEntryCriterionSatisfied(Lcom/github/mikephil/charting/data/Entry;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;Ljava/lang/String;)Z
.end method

.method public abstract removeEntry(I)V
.end method

.method public abstract removeEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
.end method

.method public removeValues(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 136
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataModel;, "Lcom/google/appinventor/components/runtime/DataModel<TE;>;"
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 137
    .local v1, "entry":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 140
    .local v2, "tuple":Lcom/google/appinventor/components/runtime/util/YailList;
    instance-of v3, v1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_0

    .line 141
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_1

    .line 142
    :cond_0
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_1

    .line 144
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    goto :goto_1

    .line 145
    :cond_1
    instance-of v3, v1, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_2

    .line 146
    goto :goto_0

    .line 149
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 150
    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/DataModel;->removeEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 155
    .end local v1    # "entry":Ljava/lang/Object;
    .end local v2    # "tuple":Lcom/google/appinventor/components/runtime/util/YailList;
    goto :goto_0

    .line 156
    :cond_4
    return-void
.end method

.method protected setDefaultStylingProperties()V
    .locals 0

    .line 352
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataModel;, "Lcom/google/appinventor/components/runtime/DataModel<TE;>;"
    return-void
.end method

.method public setElements(Ljava/lang/String;)V
    .locals 7
    .param p1, "elements"    # Ljava/lang/String;

    .line 76
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataModel;, "Lcom/google/appinventor/components/runtime/DataModel<TE;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/DataModel;->getTupleSize()I

    move-result v0

    .line 79
    .local v0, "tupleSize":I
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "entries":[Ljava/lang/String;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 87
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v3, "tupleEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v4, v0, -0x1

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_0

    .line 92
    sub-int v5, v2, v4

    .line 93
    .local v5, "index":I
    aget-object v6, v1, v5

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .end local v5    # "index":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 97
    .end local v4    # "j":I
    :cond_0
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/DataModel;->addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 86
    .end local v3    # "tupleEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/2addr v2, v0

    goto :goto_0

    .line 99
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setMaximumTimeEntries(I)V
    .locals 0
    .param p1, "entries"    # I

    .line 340
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataModel;, "Lcom/google/appinventor/components/runtime/DataModel<TE;>;"
    iput p1, p0, Lcom/google/appinventor/components/runtime/DataModel;->maximumTimeEntries:I

    .line 341
    return-void
.end method
