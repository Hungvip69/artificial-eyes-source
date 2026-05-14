.class public final Lcom/google/api/client/util/store/DataStoreUtils;
.super Ljava/lang/Object;
.source "DataStoreUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(Lcom/google/api/client/util/store/DataStore;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/util/store/DataStore<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 39
    .local p0, "dataStore":Lcom/google/api/client/util/store/DataStore;, "Lcom/google/api/client/util/store/DataStore<*>;"
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    const/4 v1, 0x1

    .line 42
    .local v1, "first":Z
    invoke-interface {p0}, Lcom/google/api/client/util/store/DataStore;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 43
    .local v3, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 44
    const/4 v1, 0x0

    goto :goto_1

    .line 46
    :cond_0
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0, v3}, Lcom/google/api/client/util/store/DataStore;->get(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    nop

    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 50
    :cond_1
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 51
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "first":Z
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method
