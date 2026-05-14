.class public Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;
.super Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;
.source "Decompressor.java"


# instance fields
.field bitreader:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;)V
    .locals 0
    .param p1, "bitreader"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;

    .line 56
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bitreader:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;

    .line 58
    return-void
.end method

.method private bit()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bitreader:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;->bit()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .local v0, "value":Z
    return v0

    .line 74
    .end local v0    # "value":Z
    :catchall_0
    move-exception v1

    .line 75
    .restart local v0    # "value":Z
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    invoke-direct {v2, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getAndTick(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;)Ljava/lang/Object;
    .locals 5
    .param p1, "keep"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;
    .param p2, "bitreader"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 92
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->bitsize()I

    move-result v0

    .line 93
    .local v0, "width":I
    invoke-interface {p2, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;->read(I)I

    move-result v1

    .line 94
    .local v1, "integer":I
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->value(I)Ljava/lang/Object;

    move-result-object v2

    .line 99
    .local v2, "value":Ljava/lang/Object;
    iget v3, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->length:I

    if-ge v1, v3, :cond_0

    .line 102
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->tick(I)V

    .line 103
    return-object v2

    .line 100
    :cond_0
    new-instance v3, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    const-string v4, "Deep error."

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    .end local p1    # "keep":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;
    .end local p2    # "bitreader":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v0    # "width":I
    .end local v1    # "integer":I
    .end local v2    # "value":Ljava/lang/Object;
    .restart local p1    # "keep":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;
    .restart local p2    # "bitreader":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;
    :catchall_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private read(I)I
    .locals 2
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bitreader:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;->read(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .local v0, "value":I
    return v0

    .line 140
    .end local v0    # "value":I
    :catchall_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readArray(Z)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .locals 2
    .param p1, "stringy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 154
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;-><init>()V

    .line 155
    .local v0, "jsonarray":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->readString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->readValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    .line 160
    :goto_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bit()Z

    move-result v1

    if-nez v1, :cond_3

    .line 161
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    return-object v0

    .line 164
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->readValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->readString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    goto :goto_1

    .line 166
    :cond_3
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->readString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->readValue()Ljava/lang/Object;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->put(Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    goto :goto_1
.end method

.method private readJSON()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 178
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->read(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    :pswitch_0
    sget-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object v0

    .line 184
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->readArray(Z)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 182
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->readArray(Z)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    move-result-object v0

    return-object v0

    .line 180
    :pswitch_3
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->readObject()Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 192
    :pswitch_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 190
    :pswitch_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 188
    :pswitch_6
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;-><init>()V

    return-object v0

    .line 186
    :pswitch_7
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private readName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 199
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 200
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .line 201
    .local v1, "length":I
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bit()Z

    move-result v2

    if-nez v2, :cond_2

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->namehuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bitreader:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->read(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;)I

    move-result v2

    .line 204
    .local v2, "c":I
    const/16 v3, 0x100

    if-ne v2, v3, :cond_1

    .line 205
    nop

    .line 210
    .end local v2    # "c":I
    if-nez v1, :cond_0

    .line 211
    const-string v2, ""

    return-object v2

    .line 213
    :cond_0
    new-instance v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    invoke-direct {v2, v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;-><init>([BI)V

    .line 214
    .local v2, "kim":Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->namekeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->register(Ljava/lang/Object;)V

    .line 215
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 207
    .local v2, "c":I
    :cond_1
    int-to-byte v3, v2

    aput-byte v3, v0, v1

    .line 208
    nop

    .end local v2    # "c":I
    add-int/lit8 v1, v1, 0x1

    .line 209
    goto :goto_0

    .line 217
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->namekeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bitreader:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;

    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->getAndTick(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readObject()Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;-><init>()V

    .line 226
    .local v0, "jsonobject":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    :goto_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->readName()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bit()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->readString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->readValue()Ljava/lang/Object;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 228
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bit()Z

    move-result v2

    if-nez v2, :cond_1

    .line 229
    return-object v0

    .line 231
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    goto :goto_0
.end method

.method private readString()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "from":I
    const/4 v1, 0x0

    .line 238
    .local v1, "thru":I
    const/4 v2, -0x1

    .line 239
    .local v2, "previousFrom":I
    const/4 v3, 0x0

    .line 240
    .local v3, "previousThru":I
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bit()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->stringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bitreader:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;

    invoke-direct {p0, v4, v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->getAndTick(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 243
    :cond_0
    const/high16 v4, 0x10000

    new-array v4, v4, [B

    .line 244
    .local v4, "bytes":[B
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bit()Z

    move-result v5

    .line 245
    .local v5, "one":Z
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->substringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->reserve()V

    .line 247
    :goto_0
    const/4 v6, -0x1

    if-eqz v5, :cond_2

    .line 248
    move v0, v1

    .line 249
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->substringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bitreader:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;

    invoke-direct {p0, v7, v8}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->getAndTick(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    .line 250
    .local v7, "kim":Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    invoke-virtual {v7, v4, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->copy([BI)I

    move-result v1

    .line 251
    if-eq v2, v6, :cond_1

    .line 252
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->substringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    new-instance v8, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    add-int/lit8 v9, v3, 0x1

    invoke-direct {v8, v4, v2, v9}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;-><init>([BII)V

    invoke-virtual {v6, v8}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->registerOne(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;)V

    .line 255
    :cond_1
    move v2, v0

    .line 256
    move v3, v1

    .line 257
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bit()Z

    move-result v5

    goto :goto_0

    .line 259
    .end local v7    # "kim":Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    :cond_2
    const/4 v0, -0x1

    .line 261
    :goto_1
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->substringhuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bitreader:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->read(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;)I

    move-result v7

    .line 262
    .local v7, "c":I
    const/16 v8, 0x100

    if-ne v7, v8, :cond_5

    .line 263
    nop

    .line 273
    .end local v7    # "c":I
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bit()Z

    move-result v6

    if-nez v6, :cond_4

    .line 274
    nop

    .line 279
    if-nez v1, :cond_3

    .line 280
    const-string v6, ""

    return-object v6

    .line 282
    :cond_3
    new-instance v6, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    invoke-direct {v6, v4, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;-><init>([BI)V

    .line 283
    .local v6, "kim":Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->stringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    invoke-virtual {v7, v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->register(Ljava/lang/Object;)V

    .line 284
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->substringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    invoke-virtual {v7, v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->registerMany(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;)V

    .line 285
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 276
    .end local v6    # "kim":Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    .line 265
    .restart local v7    # "c":I
    :cond_5
    int-to-byte v8, v7

    aput-byte v8, v4, v1

    .line 266
    add-int/lit8 v1, v1, 0x1

    .line 267
    if-eq v2, v6, :cond_6

    .line 268
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->substringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    new-instance v9, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    add-int/lit8 v10, v3, 0x1

    invoke-direct {v9, v4, v2, v10}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;-><init>([BII)V

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->registerOne(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;)V

    .line 270
    const/4 v2, -0x1

    .line 272
    .end local v7    # "c":I
    :cond_6
    goto :goto_1
.end method

.method private readValue()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 289
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->read(I)I

    move-result v0

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    .line 317
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    const-string v1, "Impossible."

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :pswitch_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->readJSON()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 313
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->values:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bitreader:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->getAndTick(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 293
    :pswitch_2
    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 294
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 296
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->read(I)I

    move-result v4

    .line 297
    sget v5, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->endOfNumber:I

    if-ne v4, v5, :cond_0

    .line 298
    nop

    .line 305
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v4, "US-ASCII"

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    nop

    .line 310
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->values:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->register(Ljava/lang/Object;)V

    .line 311
    return-object v0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 300
    :cond_0
    sget-object v5, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bcd:[B

    aget-byte v4, v5, v4

    aput-byte v4, v0, v3

    .line 301
    add-int/lit8 v3, v3, 0x1

    .line 302
    goto :goto_0

    .line 291
    :pswitch_3
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bit()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bit()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x7

    goto :goto_1

    :cond_2
    const/16 v1, 0xe

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->read(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public pad(I)Z
    .locals 2
    .param p1, "factor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->bitreader:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;->pad(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unzip()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->begin()V

    .line 323
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Decompressor;->readJSON()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
