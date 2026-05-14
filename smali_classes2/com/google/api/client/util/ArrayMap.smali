.class public Lcom/google/api/client/util/ArrayMap;
.super Ljava/util/AbstractMap;
.source "ArrayMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/ArrayMap$Entry;,
        Lcom/google/api/client/util/ArrayMap$EntryIterator;,
        Lcom/google/api/client/util/ArrayMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private data:[Ljava/lang/Object;

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/api/client/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/api/client/util/ArrayMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/google/api/client/util/ArrayMap;

    invoke-direct {v0}, Lcom/google/api/client/util/ArrayMap;-><init>()V

    return-object v0
.end method

.method public static create(I)Lcom/google/api/client/util/ArrayMap;
    .locals 1
    .param p0, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/api/client/util/ArrayMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 60
    invoke-static {}, Lcom/google/api/client/util/ArrayMap;->create()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    .line 61
    .local v0, "result":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    invoke-virtual {v0, p0}, Lcom/google/api/client/util/ArrayMap;->ensureCapacity(I)V

    .line 62
    return-object v0
.end method

.method private getDataIndexOfKey(Ljava/lang/Object;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;

    .line 274
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    shl-int/lit8 v0, v0, 0x1

    .line 275
    .local v0, "dataSize":I
    iget-object v1, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 276
    .local v1, "data":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 277
    aget-object v3, v1, v2

    .line 278
    .local v3, "k":Ljava/lang/Object;
    if-nez p1, :cond_0

    if-nez v3, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    :goto_1
    return v2

    .line 276
    .end local v3    # "k":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 282
    .end local v2    # "i":I
    :cond_2
    const/4 v2, -0x2

    return v2
.end method

.method public static varargs of([Ljava/lang/Object;)Lcom/google/api/client/util/ArrayMap;
    .locals 5
    .param p0, "keyValuePairs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/client/util/ArrayMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 76
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/api/client/util/ArrayMap;->create(I)Lcom/google/api/client/util/ArrayMap;

    move-result-object v1

    .line 77
    .local v1, "result":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    array-length v2, p0

    .line 78
    .local v2, "length":I
    rem-int/lit8 v3, v2, 0x2

    if-eq v0, v3, :cond_0

    .line 82
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 83
    new-array v0, v2, [Ljava/lang/Object;

    iput-object v0, v1, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 84
    .local v0, "data":[Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    return-object v1

    .line 79
    .end local v0    # "data":[Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missing value for last key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeFromDataIndexOfKey(I)Ljava/lang/Object;
    .locals 6
    .param p1, "dataIndexOfKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 290
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    shl-int/lit8 v0, v0, 0x1

    .line 291
    .local v0, "dataSize":I
    const/4 v1, 0x0

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object v2

    .line 295
    .local v2, "result":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 296
    .local v3, "data":[Ljava/lang/Object;
    sub-int v4, v0, p1

    add-int/lit8 v4, v4, -0x2

    .line 297
    .local v4, "moved":I
    if-eqz v4, :cond_1

    .line 298
    add-int/lit8 v5, p1, 0x2

    invoke-static {v3, v5, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    :cond_1
    iget v5, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 301
    add-int/lit8 v5, v0, -0x2

    invoke-direct {p0, v5, v1, v1}, Lcom/google/api/client/util/ArrayMap;->setData(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 302
    return-object v2

    .line 292
    .end local v2    # "result":Ljava/lang/Object;, "TV;"
    .end local v3    # "data":[Ljava/lang/Object;
    .end local v4    # "moved":I
    :cond_2
    :goto_0
    return-object v1
.end method

.method private setData(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "dataIndexOfKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)V"
        }
    .end annotation

    .line 258
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 259
    .local v0, "data":[Ljava/lang/Object;
    aput-object p2, v0, p1

    .line 260
    add-int/lit8 v1, p1, 0x1

    aput-object p3, v0, v1

    .line 261
    return-void
.end method

.method private setDataCapacity(I)V
    .locals 5
    .param p1, "newDataCapacity"    # I

    .line 243
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 245
    return-void

    .line 247
    :cond_0
    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 248
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 249
    .local v1, "oldData":[Ljava/lang/Object;
    if-eqz v0, :cond_1

    array-length v2, v1

    if-eq p1, v2, :cond_2

    .line 250
    :cond_1
    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 251
    .local v2, "newData":[Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 252
    shl-int/lit8 v3, v0, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    .end local v2    # "newData":[Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private valueAtDataIndex(I)Ljava/lang/Object;
    .locals 1
    .param p1, "dataIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 264
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    if-gez p1, :cond_0

    .line 265
    const/4 v0, 0x0

    return-object v0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 269
    .local v0, "result":Ljava/lang/Object;, "TV;"
    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/api/client/util/ArrayMap;->set(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public clear()V
    .locals 1

    .line 307
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 309
    return-void
.end method

.method public clone()Lcom/google/api/client/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/client/util/ArrayMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/ArrayMap;

    .line 334
    .local v0, "result":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 335
    .local v1, "data":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 336
    array-length v2, v1

    .line 337
    .local v2, "length":I
    new-array v3, v2, [Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 338
    .local v3, "resultData":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v2    # "length":I
    .end local v3    # "resultData":[Ljava/lang/Object;
    :cond_0
    return-object v0

    .line 341
    .end local v0    # "result":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    .end local v1    # "data":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/api/client/util/ArrayMap;->clone()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 176
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    const/4 v0, -0x2

    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getDataIndexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 313
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    .line 314
    .local v0, "dataSize":I
    iget-object v2, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 315
    .local v2, "data":[Ljava/lang/Object;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 316
    aget-object v4, v2, v3

    .line 317
    .local v4, "v":Ljava/lang/Object;
    if-nez p1, :cond_0

    if-nez v4, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 318
    :goto_1
    return v1

    .line 315
    .end local v4    # "v":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 321
    .end local v3    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public final ensureCapacity(I)V
    .locals 5
    .param p1, "minCapacity"    # I

    .line 224
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    if-ltz p1, :cond_4

    .line 227
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 228
    .local v0, "data":[Ljava/lang/Object;
    shl-int/lit8 v1, p1, 0x1

    .line 229
    .local v1, "minDataCapacity":I
    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, v0

    .line 230
    .local v2, "oldDataCapacity":I
    :goto_0
    if-le v1, v2, :cond_3

    .line 231
    div-int/lit8 v3, v2, 0x2

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    .line 232
    .local v3, "newDataCapacity":I
    rem-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_1

    .line 233
    add-int/lit8 v3, v3, 0x1

    .line 235
    :cond_1
    if-ge v3, v1, :cond_2

    .line 236
    move v3, v1

    .line 238
    :cond_2
    invoke-direct {p0, v3}, Lcom/google/api/client/util/ArrayMap;->setDataCapacity(I)V

    .line 240
    .end local v3    # "newDataCapacity":I
    :cond_3
    return-void

    .line 225
    .end local v0    # "data":[Ljava/lang/Object;
    .end local v1    # "minDataCapacity":I
    .end local v2    # "oldDataCapacity":I
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    new-instance v0, Lcom/google/api/client/util/ArrayMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/ArrayMap$EntrySet;-><init>(Lcom/google/api/client/util/ArrayMap;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 190
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getDataIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getIndexOfKey(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 181
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getDataIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getKey(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    .line 101
    .local v0, "result":Ljava/lang/Object;, "TK;"
    return-object v0

    .line 97
    .end local v0    # "result":Ljava/lang/Object;, "TK;"
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getValue(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 107
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 200
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 201
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 202
    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 204
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/api/client/util/ArrayMap;->set(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    shl-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/google/api/client/util/ArrayMap;->removeFromDataIndexOfKey(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 214
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getDataIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/api/client/util/ArrayMap;->removeFromDataIndexOfKey(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 145
    .local v0, "size":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 148
    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 149
    .local v1, "valueDataIndex":I
    invoke-direct {p0, v1}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object v2

    .line 150
    .local v2, "result":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    aput-object p2, v3, v1

    .line 151
    return-object v2

    .line 146
    .end local v1    # "valueDataIndex":I
    .end local v2    # "result":Ljava/lang/Object;, "TV;"
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public final set(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)TV;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    if-ltz p1, :cond_1

    .line 126
    add-int/lit8 v0, p1, 0x1

    .line 127
    .local v0, "minSize":I
    invoke-virtual {p0, v0}, Lcom/google/api/client/util/ArrayMap;->ensureCapacity(I)V

    .line 128
    shl-int/lit8 v1, p1, 0x1

    .line 129
    .local v1, "dataIndex":I
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object v2

    .line 130
    .local v2, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v1, p2, p3}, Lcom/google/api/client/util/ArrayMap;->setData(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 131
    iget v3, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    if-le v0, v3, :cond_0

    .line 132
    iput v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 134
    :cond_0
    return-object v2

    .line 124
    .end local v0    # "minSize":I
    .end local v1    # "dataIndex":I
    .end local v2    # "result":Ljava/lang/Object;, "TV;"
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final size()I
    .locals 1

    .line 91
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    return v0
.end method

.method public final trim()V
    .locals 1

    .line 219
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/api/client/util/ArrayMap;->setDataCapacity(I)V

    .line 220
    return-void
.end method
