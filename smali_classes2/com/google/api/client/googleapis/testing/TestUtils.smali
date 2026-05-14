.class public final Lcom/google/api/client/googleapis/testing/TestUtils;
.super Ljava/lang/Object;
.source "TestUtils.java"


# static fields
.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static parseQuery(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p0, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v1, 0x26

    invoke-static {v1}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    .line 36
    .local v1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 37
    .local v3, "entry":Ljava/lang/String;
    const/16 v4, 0x3d

    invoke-static {v4}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    .line 38
    .local v4, "sides":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 41
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "key":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 43
    .local v6, "value":Ljava/lang/String;
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .end local v3    # "entry":Ljava/lang/String;
    .end local v4    # "sides":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    goto :goto_0

    .line 39
    .restart local v3    # "entry":Ljava/lang/String;
    .restart local v4    # "sides":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v5, "Invalid Query String"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    .end local v3    # "entry":Ljava/lang/String;
    .end local v4    # "sides":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-object v0
.end method
