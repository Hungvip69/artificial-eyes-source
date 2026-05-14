.class public abstract Lcom/google/api/client/util/store/AbstractDataStore;
.super Ljava/lang/Object;
.source "AbstractDataStore.java"

# interfaces
.implements Lcom/google/api/client/util/store/DataStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/api/client/util/store/DataStore<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final dataStoreFactory:Lcom/google/api/client/util/store/DataStoreFactory;

.field private final id:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/util/store/DataStoreFactory;Ljava/lang/String;)V
    .locals 1
    .param p1, "dataStoreFactory"    # Lcom/google/api/client/util/store/DataStoreFactory;
    .param p2, "id"    # Ljava/lang/String;

    .line 42
    .local p0, "this":Lcom/google/api/client/util/store/AbstractDataStore;, "Lcom/google/api/client/util/store/AbstractDataStore<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/store/DataStoreFactory;

    iput-object v0, p0, Lcom/google/api/client/util/store/AbstractDataStore;->dataStoreFactory:Lcom/google/api/client/util/store/DataStoreFactory;

    .line 44
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/util/store/AbstractDataStore;->id:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    .local p0, "this":Lcom/google/api/client/util/store/AbstractDataStore;, "Lcom/google/api/client/util/store/AbstractDataStore<TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/api/client/util/store/AbstractDataStore;->get(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/io/Serializable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/google/api/client/util/store/AbstractDataStore;, "Lcom/google/api/client/util/store/AbstractDataStore<TV;>;"
    .local p1, "value":Ljava/io/Serializable;, "TV;"
    invoke-virtual {p0}, Lcom/google/api/client/util/store/AbstractDataStore;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDataStoreFactory()Lcom/google/api/client/util/store/DataStoreFactory;
    .locals 1

    .line 54
    .local p0, "this":Lcom/google/api/client/util/store/AbstractDataStore;, "Lcom/google/api/client/util/store/AbstractDataStore<TV;>;"
    iget-object v0, p0, Lcom/google/api/client/util/store/AbstractDataStore;->dataStoreFactory:Lcom/google/api/client/util/store/DataStoreFactory;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 58
    .local p0, "this":Lcom/google/api/client/util/store/AbstractDataStore;, "Lcom/google/api/client/util/store/AbstractDataStore<TV;>;"
    iget-object v0, p0, Lcom/google/api/client/util/store/AbstractDataStore;->id:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/google/api/client/util/store/AbstractDataStore;, "Lcom/google/api/client/util/store/AbstractDataStore<TV;>;"
    invoke-virtual {p0}, Lcom/google/api/client/util/store/AbstractDataStore;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/google/api/client/util/store/AbstractDataStore;, "Lcom/google/api/client/util/store/AbstractDataStore<TV;>;"
    invoke-virtual {p0}, Lcom/google/api/client/util/store/AbstractDataStore;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
