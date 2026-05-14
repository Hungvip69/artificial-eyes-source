.class public Lcom/google/appinventor/components/runtime/util/ChartDataSourceUtil;
.super Ljava/lang/Object;
.source "ChartDataSourceUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static determineMaximumListSize(Lcom/google/appinventor/components/runtime/util/YailList;)I
    .locals 5
    .param p0, "matrix"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 32
    const/4 v0, 0x0

    .line 35
    .local v0, "entries":I
    if-nez p0, :cond_0

    .line 36
    return v0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 42
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 44
    .local v2, "row":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/List;

    if-nez v3, :cond_1

    .line 45
    goto :goto_1

    .line 48
    :cond_1
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    .line 52
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v0, :cond_2

    .line 53
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 40
    .end local v2    # "row":Ljava/lang/Object;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method public static getTranspose(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .param p0, "matrix"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 73
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/ChartDataSourceUtil;->determineMaximumListSize(Lcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    .line 75
    .local v0, "entries":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 81
    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/util/ChartDataSourceUtil;->getTransposeEntry(Lcom/google/appinventor/components/runtime/util/YailList;I)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    .line 82
    .local v3, "listEntries":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v3    # "listEntries":Lcom/google/appinventor/components/runtime/util/YailList;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v2    # "i":I
    :cond_0
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method private static getTransposeEntry(Lcom/google/appinventor/components/runtime/util/YailList;I)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .param p0, "matrix"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p1, "index"    # I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 107
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 111
    .local v2, "matrixEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, p1, :cond_1

    .line 114
    instance-of v3, v2, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_0

    .line 115
    move-object v3, v2

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v3, p1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 117
    :cond_0
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    :cond_1
    const-string v3, ""

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v2    # "matrixEntry":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "i":I
    :cond_2
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method
