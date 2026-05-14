.class public Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;
.super Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;
.source "Compressor.java"


# instance fields
.field final bitwriter:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;)V
    .locals 0
    .param p1, "bitwriter"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;

    .line 68
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->bitwriter:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;

    .line 70
    return-void
.end method

.method private static bcd(C)I
    .locals 1
    .param p0, "digit"    # C

    .line 82
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 83
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 85
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 93
    :pswitch_0
    const/16 v0, 0xd

    return v0

    .line 87
    :pswitch_1
    const/16 v0, 0xa

    return v0

    .line 89
    :pswitch_2
    const/16 v0, 0xb

    return v0

    .line 91
    :pswitch_3
    const/16 v0, 0xc

    return v0

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private one()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    .line 117
    return-void
.end method

.method private write(II)V
    .locals 2
    .param p1, "integer"    # I
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->bitwriter:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;

    invoke-interface {v0, p1, p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;->write(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    nop

    .line 154
    return-void

    .line 151
    :catchall_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private write(ILcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;)V
    .locals 1
    .param p1, "integer"    # I
    .param p2, "huff"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->bitwriter:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;

    invoke-virtual {p2, p1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->write(ILcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;)V

    .line 168
    return-void
.end method

.method private write(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;IILcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;)V
    .locals 2
    .param p1, "kim"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    .param p2, "from"    # I
    .param p3, "thru"    # I
    .param p4, "huff"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 198
    move v0, p2

    .local v0, "at":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 199
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->get(I)I

    move-result v1

    invoke-direct {p0, v1, p4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(ILcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    .end local v0    # "at":I
    :cond_0
    return-void
.end method

.method private write(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;)V
    .locals 2
    .param p1, "kim"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    .param p2, "huff"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 180
    const/4 v0, 0x0

    iget v1, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;IILcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;)V

    .line 181
    return-void
.end method

.method private writeAndTick(ILcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;)V
    .locals 1
    .param p1, "integer"    # I
    .param p2, "keep"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 214
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->bitsize()I

    move-result v0

    .line 215
    .local v0, "width":I
    invoke-virtual {p2, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;->tick(I)V

    .line 219
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    .line 220
    return-void
.end method

.method private writeArray(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)V
    .locals 5
    .param p1, "jsonarray"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "stringy":Z
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->length()I

    move-result v1

    .line 237
    .local v1, "length":I
    const/4 v2, 0x3

    if-nez v1, :cond_0

    .line 238
    const/4 v3, 0x1

    invoke-direct {p0, v3, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    goto :goto_3

    .line 240
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 241
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 242
    sget-object v3, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 244
    :cond_1
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 245
    const/4 v0, 0x1

    .line 246
    const/4 v4, 0x6

    invoke-direct {p0, v4, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    .line 247
    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_2
    const/4 v4, 0x7

    invoke-direct {p0, v4, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    .line 250
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->writeValue(Ljava/lang/Object;)V

    .line 252
    :goto_0
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 256
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 257
    if-nez v3, :cond_3

    .line 258
    sget-object v3, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 260
    :cond_3
    instance-of v4, v3, Ljava/lang/String;

    if-eq v4, v0, :cond_4

    .line 261
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->zero()V

    .line 263
    :cond_4
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->one()V

    .line 264
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 265
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 267
    :cond_5
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->writeValue(Ljava/lang/Object;)V

    .line 252
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 270
    .end local v2    # "i":I
    :cond_6
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->zero()V

    .line 271
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->zero()V

    .line 274
    .end local v3    # "value":Ljava/lang/Object;
    :goto_3
    return-void
.end method

.method private writeJSON(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 286
    sget-object v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 287
    const/4 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    goto :goto_1

    .line 288
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-direct {p0, v1, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    goto :goto_1

    .line 290
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    goto :goto_1

    .line 293
    :cond_2
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 294
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object p1, v0

    goto :goto_0

    .line 295
    :cond_3
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_4

    .line 296
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    goto :goto_0

    .line 297
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 298
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    .line 300
    :cond_5
    :goto_0
    nop

    instance-of v0, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    if-eqz v0, :cond_6

    .line 301
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->writeObject(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;)V

    goto :goto_1

    .line 302
    :cond_6
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    if-eqz v0, :cond_7

    .line 303
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->writeArray(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)V

    .line 308
    :goto_1
    return-void

    .line 305
    :cond_7
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    const-string v1, "Unrecognized object"

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeName(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 322
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, "kim":Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->namekeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->find(Ljava/lang/Object;)I

    move-result v1

    .line 324
    .local v1, "integer":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->one()V

    .line 326
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->namekeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    invoke-direct {p0, v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->writeAndTick(ILcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;)V

    goto :goto_0

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->zero()V

    .line 332
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->namehuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    invoke-direct {p0, v0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;)V

    .line 333
    const/16 v2, 0x100

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->namehuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(ILcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;)V

    .line 334
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->namekeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    invoke-virtual {v2, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->register(Ljava/lang/Object;)V

    .line 336
    :goto_0
    return-void
.end method

.method private writeObject(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;)V
    .locals 5
    .param p1, "jsonobject"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 350
    const/4 v0, 0x1

    .line 351
    .local v0, "first":Z
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 352
    .local v1, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_3

    .line 356
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 357
    .local v2, "key":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 358
    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x0

    .line 360
    const/4 v4, 0x5

    invoke-direct {p0, v4, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    goto :goto_1

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->one()V

    .line 364
    :goto_1
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->writeName(Ljava/lang/String;)V

    .line 365
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 366
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 367
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->zero()V

    .line 368
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 370
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->one()V

    .line 371
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->writeValue(Ljava/lang/Object;)V

    .line 374
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    :goto_2
    goto :goto_0

    .line 375
    :cond_3
    if-eqz v0, :cond_4

    .line 376
    const/4 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    goto :goto_3

    .line 378
    :cond_4
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->zero()V

    .line 380
    :goto_3
    return-void
.end method

.method private writeString(Ljava/lang/String;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 392
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->zero()V

    .line 394
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->zero()V

    .line 395
    const/16 v0, 0x100

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->substringhuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(ILcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;)V

    .line 396
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->zero()V

    goto :goto_0

    .line 398
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, "kim":Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->stringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->find(Ljava/lang/Object;)I

    move-result v1

    .line 404
    .local v1, "integer":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 405
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->one()V

    .line 406
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->stringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    invoke-direct {p0, v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->writeAndTick(ILcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;)V

    goto :goto_0

    .line 412
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->writeSubstring(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;)V

    .line 413
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->stringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    invoke-virtual {v2, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->register(Ljava/lang/Object;)V

    .line 416
    .end local v0    # "kim":Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    .end local v1    # "integer":I
    :goto_0
    return-void
.end method

.method private writeSubstring(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;)V
    .locals 10
    .param p1, "kim"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->substringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->reserve()V

    .line 426
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->zero()V

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, "from":I
    iget v1, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    .line 429
    .local v1, "thru":I
    add-int/lit8 v2, v1, -0x3

    .line 430
    .local v2, "until":I
    const/4 v3, -0x1

    .line 431
    .local v3, "previousFrom":I
    const/4 v4, 0x0

    .line 437
    .local v4, "previousThru":I
    :goto_0
    const/4 v5, -0x1

    .line 438
    .local v5, "integer":I
    move v6, v0

    .local v6, "at":I
    :goto_1
    const/4 v7, -0x1

    if-gt v6, v2, :cond_1

    .line 439
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->substringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    invoke-virtual {v8, p1, v6, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->match(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;II)I

    move-result v5

    .line 440
    if-eq v5, v7, :cond_0

    .line 441
    goto :goto_2

    .line 438
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 444
    :cond_1
    :goto_2
    const/16 v8, 0x100

    if-ne v5, v7, :cond_3

    .line 445
    nop

    .line 476
    .end local v5    # "integer":I
    .end local v6    # "at":I
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->zero()V

    .line 477
    if-ge v0, v1, :cond_2

    .line 478
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->substringhuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    invoke-direct {p0, p1, v0, v1, v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;IILcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;)V

    .line 479
    if-eq v3, v7, :cond_2

    .line 480
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->substringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    invoke-virtual {v5, p1, v3, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->registerOne(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;II)I

    .line 483
    :cond_2
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->substringhuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    invoke-direct {p0, v8, v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(ILcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;)V

    .line 484
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->zero()V

    .line 489
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->substringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    invoke-virtual {v5, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->registerMany(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;)V

    .line 490
    return-void

    .line 452
    .restart local v5    # "integer":I
    .restart local v6    # "at":I
    :cond_3
    if-eq v0, v6, :cond_4

    .line 453
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->zero()V

    .line 454
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->substringhuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    invoke-direct {p0, p1, v0, v6, v9}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;IILcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;)V

    .line 455
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->substringhuff:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    invoke-direct {p0, v8, v9}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(ILcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;)V

    .line 456
    if-eq v3, v7, :cond_4

    .line 457
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->substringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    invoke-virtual {v8, p1, v3, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->registerOne(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;II)I

    .line 459
    const/4 v3, -0x1

    .line 462
    :cond_4
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->one()V

    .line 463
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->substringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    invoke-direct {p0, v5, v8}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->writeAndTick(ILcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;)V

    .line 464
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->substringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    invoke-virtual {v8, v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->length(I)I

    move-result v8

    add-int v0, v6, v8

    .line 465
    if-eq v3, v7, :cond_5

    .line 466
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->substringkeep:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;

    invoke-virtual {v7, p1, v3, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/TrieKeep;->registerOne(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;II)I

    .line 468
    const/4 v3, -0x1

    .line 470
    :cond_5
    move v3, v6

    .line 471
    add-int/lit8 v4, v0, 0x1

    .line 472
    .end local v5    # "integer":I
    .end local v6    # "at":I
    goto :goto_0
.end method

.method private writeValue(Ljava/lang/Object;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 500
    instance-of v0, p1, Ljava/lang/Number;

    const/4 v1, 0x2

    if-eqz v0, :cond_6

    .line 501
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "string":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->values:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    invoke-virtual {v2, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->find(Ljava/lang/Object;)I

    move-result v2

    .line 503
    .local v2, "integer":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 504
    invoke-direct {p0, v1, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    .line 505
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->values:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    invoke-direct {p0, v2, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->writeAndTick(ILcom/google/appinventor/components/runtime/repackaged/org/json/zip/Keep;)V

    .line 506
    return-void

    .line 508
    :cond_0
    instance-of v3, p1, Ljava/lang/Integer;

    const/4 v4, 0x4

    if-nez v3, :cond_1

    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_4

    .line 509
    :cond_1
    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    .line 510
    .local v5, "longer":J
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-ltz v3, :cond_4

    const-wide/16 v7, 0x4000

    cmp-long v3, v5, v7

    if-gez v3, :cond_4

    .line 511
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    .line 512
    const-wide/16 v7, 0x10

    cmp-long v1, v5, v7

    if-gez v1, :cond_2

    .line 513
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->zero()V

    .line 514
    long-to-int v1, v5

    invoke-direct {p0, v1, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    .line 515
    return-void

    .line 517
    :cond_2
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->one()V

    .line 518
    const-wide/16 v3, 0x80

    cmp-long v1, v5, v3

    if-gez v1, :cond_3

    .line 519
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->zero()V

    .line 520
    long-to-int v1, v5

    const/4 v3, 0x7

    invoke-direct {p0, v1, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    .line 521
    return-void

    .line 523
    :cond_3
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->one()V

    .line 524
    long-to-int v1, v5

    const/16 v3, 0xe

    invoke-direct {p0, v1, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    .line 525
    return-void

    .line 528
    .end local v5    # "longer":J
    :cond_4
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    .line 529
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->bcd(C)I

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    .line 529
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 532
    .end local v1    # "i":I
    :cond_5
    sget v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->endOfNumber:I

    invoke-direct {p0, v1, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    .line 533
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->values:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/MapKeep;->register(Ljava/lang/Object;)V

    .line 534
    .end local v0    # "string":Ljava/lang/String;
    .end local v2    # "integer":I
    goto :goto_1

    .line 535
    :cond_6
    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    .line 536
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->writeJSON(Ljava/lang/Object;)V

    .line 538
    :goto_1
    return-void
.end method

.method private zero()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 551
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->write(II)V

    .line 552
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 104
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->pad(I)V

    .line 105
    return-void
.end method

.method public pad(I)V
    .locals 2
    .param p1, "factor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->bitwriter:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;->pad(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    nop

    .line 134
    return-void

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zip(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;)V
    .locals 0
    .param p1, "jsonarray"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 572
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->begin()V

    .line 573
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->writeJSON(Ljava/lang/Object;)V

    .line 574
    return-void
.end method

.method public zip(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;)V
    .locals 0
    .param p1, "jsonobject"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->begin()V

    .line 562
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Compressor;->writeJSON(Ljava/lang/Object;)V

    .line 563
    return-void
.end method
