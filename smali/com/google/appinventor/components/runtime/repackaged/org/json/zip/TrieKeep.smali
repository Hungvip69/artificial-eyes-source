.class Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;
.super Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;
.source "TrieKeep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    }
.end annotation


# instance fields
.field private froms:[I

.field private kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

.field private root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

.field private thrus:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "bits"    # I

    .line 185
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;-><init>(I)V

    .line 186
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    .line 187
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->thrus:[I

    .line 188
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->capacity:I

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    .line 189
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;-><init>(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    .line 190
    return-void
.end method


# virtual methods
.method public kim(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    .locals 5
    .param p1, "integer"    # I

    .line 199
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    aget-object v0, v0, p1

    .line 200
    .local v0, "kim":Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    aget v1, v1, p1

    .line 201
    .local v1, "from":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->thrus:[I

    aget v2, v2, p1

    .line 202
    .local v2, "thru":I
    if-nez v1, :cond_0

    iget v3, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    if-eq v2, v3, :cond_1

    .line 203
    :cond_0
    new-instance v3, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;-><init>(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;II)V

    move-object v0, v3

    .line 204
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    const/4 v4, 0x0

    aput v4, v3, p1

    .line 205
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->thrus:[I

    iget v4, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    aput v4, v3, p1

    .line 206
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    aput-object v0, v3, p1

    .line 208
    :cond_1
    return-object v0
.end method

.method public length(I)I
    .locals 2
    .param p1, "integer"    # I

    .line 219
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->thrus:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method public match(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;II)I
    .locals 5
    .param p1, "kim"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    .param p2, "from"    # I
    .param p3, "thru"    # I

    .line 231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    .line 232
    .local v0, "node":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    const/4 v1, -0x1

    .line 233
    .local v1, "best":I
    move v2, p2

    .local v2, "at":I
    :goto_0
    if-ge v2, p3, :cond_2

    .line 234
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->get(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    move-result-object v0

    .line 235
    if-nez v0, :cond_0

    .line 236
    goto :goto_1

    .line 238
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->access$000(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 239
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->access$000(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;)I

    move-result v1

    .line 241
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    .end local v2    # "at":I
    :cond_2
    :goto_1
    return v1
.end method

.method public postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z
    .locals 9
    .param p1, "pm"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;

    .line 247
    const/4 v0, 0x1

    .line 248
    .local v0, "result":Z
    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    .line 249
    .local v1, "that":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;
    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    iget v3, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    const/4 v4, 0x0

    const-string v5, " <> "

    if-eq v2, v3, :cond_0

    .line 250
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\nLength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    .line 251
    return v4

    .line 253
    :cond_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->capacity:I

    iget v3, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->capacity:I

    if-eq v2, v3, :cond_1

    .line 254
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\nCapacity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->capacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->capacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    .line 256
    return v4

    .line 258
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    if-ge v2, v3, :cond_3

    .line 259
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kim(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    move-result-object v3

    .line 260
    .local v3, "thiskim":Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kim(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    move-result-object v6

    .line 261
    .local v6, "thatkim":Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    invoke-virtual {v3, v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 262
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "\n["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    .line 263
    const/4 v0, 0x0

    .line 258
    .end local v3    # "thiskim":Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    .end local v6    # "thatkim":Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    .end local v2    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    iget-object v3, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    :cond_4
    return v4
.end method

.method public registerMany(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;)V
    .locals 12
    .param p1, "kim"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    .line 270
    iget v0, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    .line 271
    .local v0, "length":I
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->capacity:I

    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    sub-int/2addr v1, v2

    .line 272
    .local v1, "limit":I
    const/16 v2, 0x28

    if-le v1, v2, :cond_0

    .line 273
    const/16 v1, 0x28

    .line 275
    :cond_0
    add-int/lit8 v2, v0, -0x2

    .line 276
    .local v2, "until":I
    const/4 v3, 0x0

    .local v3, "from":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 277
    sub-int v4, v0, v3

    .line 278
    .local v4, "len":I
    const/16 v5, 0xa

    if-le v4, v5, :cond_1

    .line 279
    const/16 v4, 0xa

    .line 281
    :cond_1
    add-int/2addr v4, v3

    .line 282
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    .line 283
    .local v5, "node":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    move v6, v3

    .local v6, "at":I
    :goto_1
    if-ge v6, v4, :cond_3

    .line 284
    invoke-virtual {p1, v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->get(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->vet(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    move-result-object v7

    .line 285
    .local v7, "next":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    invoke-static {v7}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->access$000(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    sub-int v8, v6, v3

    const/4 v9, 0x2

    if-lt v8, v9, :cond_2

    .line 287
    iget v8, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->access$002(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;I)I

    .line 288
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->uses:[J

    iget v9, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    const-wide/16 v10, 0x1

    aput-wide v10, v8, v9

    .line 289
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    iget v9, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    aput-object p1, v8, v9

    .line 290
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    iget v9, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    aput v3, v8, v9

    .line 291
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->thrus:[I

    iget v9, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    add-int/lit8 v10, v6, 0x1

    aput v10, v8, v9

    .line 299
    iget v8, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    .line 300
    add-int/lit8 v1, v1, -0x1

    .line 301
    if-gtz v1, :cond_2

    .line 302
    return-void

    .line 305
    :cond_2
    move-object v5, v7

    .line 283
    .end local v7    # "next":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 276
    .end local v4    # "len":I
    .end local v5    # "node":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    .end local v6    # "at":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 308
    .end local v3    # "from":I
    :cond_4
    return-void
.end method

.method public registerOne(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;II)I
    .locals 5
    .param p1, "kim"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    .param p2, "from"    # I
    .param p3, "thru"    # I

    .line 318
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->capacity:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    .line 320
    .local v0, "node":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    move v1, p2

    .local v1, "at":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 321
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->vet(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    move-result-object v0

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v1    # "at":I
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->access$000(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 324
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    .line 325
    .local v1, "integer":I
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->access$002(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;I)I

    .line 326
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->uses:[J

    const-wide/16 v3, 0x1

    aput-wide v3, v2, v1

    .line 327
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    aput-object p1, v2, v1

    .line 328
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    aput p2, v2, v1

    .line 329
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->thrus:[I

    aput p3, v2, v1

    .line 336
    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    .line 337
    return v1

    .line 340
    .end local v0    # "node":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    .end local v1    # "integer":I
    :cond_1
    return v2
.end method

.method public registerOne(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;)V
    .locals 2
    .param p1, "kim"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    .line 311
    const/4 v0, 0x0

    iget v1, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->registerOne(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;II)I

    move-result v0

    .line 312
    .local v0, "integer":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    aput-object p1, v1, v0

    .line 315
    :cond_0
    return-void
.end method

.method public reserve()V
    .locals 10

    .line 350
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->capacity:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    sub-int/2addr v0, v1

    const/16 v1, 0x28

    if-ge v0, v1, :cond_4

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "from":I
    const/4 v2, 0x0

    .line 353
    .local v2, "to":I
    new-instance v3, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;-><init>(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    .line 354
    :goto_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->capacity:I

    if-ge v0, v3, :cond_2

    .line 355
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->uses:[J

    aget-wide v4, v3, v0

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 356
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    aget-object v3, v3, v0

    .line 357
    .local v3, "kim":Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->thrus:[I

    aget v4, v4, v0

    .line 358
    .local v4, "thru":I
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    .line 359
    .local v5, "node":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    aget v6, v6, v0

    .local v6, "at":I
    :goto_1
    if-ge v6, v4, :cond_0

    .line 360
    invoke-virtual {v3, v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->get(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->vet(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    move-result-object v7

    .line 361
    .local v7, "next":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    move-object v5, v7

    .line 359
    .end local v7    # "next":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 363
    .end local v6    # "at":I
    :cond_0
    invoke-static {v5, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;->access$002(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;I)I

    .line 364
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->uses:[J

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->uses:[J

    aget-wide v8, v7, v0

    invoke-static {v8, v9}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->age(J)J

    move-result-wide v7

    aput-wide v7, v6, v2

    .line 365
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    aget v7, v7, v0

    aput v7, v6, v2

    .line 366
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->thrus:[I

    aput v4, v6, v2

    .line 367
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    aput-object v3, v6, v2

    .line 368
    add-int/lit8 v2, v2, 0x1

    .line 370
    .end local v3    # "kim":Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    .end local v4    # "thru":I
    .end local v5    # "node":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_2
    iget v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->capacity:I

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    if-ge v3, v1, :cond_3

    .line 377
    iput v4, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->power:I

    .line 378
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;-><init>(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->root:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep$Node;

    .line 379
    const/4 v2, 0x0

    .line 381
    :cond_3
    iput v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length:I

    .line 382
    :goto_2
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->capacity:I

    if-ge v2, v1, :cond_4

    .line 383
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->uses:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v1, v2

    .line 384
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kims:[Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 385
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->froms:[I

    aput v4, v1, v2

    .line 386
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->thrus:[I

    aput v4, v1, v2

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 391
    .end local v0    # "from":I
    .end local v2    # "to":I
    :cond_4
    return-void
.end method

.method public value(I)Ljava/lang/Object;
    .locals 1
    .param p1, "integer"    # I

    .line 394
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->kim(I)Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    move-result-object v0

    return-object v0
.end method
