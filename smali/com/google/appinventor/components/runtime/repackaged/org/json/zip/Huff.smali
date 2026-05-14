.class public Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;
.super Ljava/lang/Object;
.source "Huff.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/None;
.implements Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    }
.end annotation


# instance fields
.field private final domain:I

.field private final symbols:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

.field private table:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

.field private upToDate:Z

.field private width:I


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .param p1, "domain"    # I

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->upToDate:Z

    .line 134
    iput p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->domain:I

    .line 135
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, -0x1

    .line 136
    .local v0, "length":I
    new-array v1, v0, [Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->symbols:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 141
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->symbols:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    new-instance v3, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    invoke-direct {v3, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;-><init>(I)V

    aput-object v3, v2, v1

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_0
    move v1, p1

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 147
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->symbols:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    new-instance v3, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;-><init>(I)V

    aput-object v3, v2, v1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private postMortem(I)Z
    .locals 7
    .param p1, "integer"    # I

    .line 254
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->domain:I

    new-array v0, v0, [I

    .line 255
    .local v0, "bits":[I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->symbols:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    aget-object v1, v1, p1

    .line 256
    .local v1, "symbol":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    iget v2, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->integer:I

    const/4 v3, 0x0

    if-eq v2, p1, :cond_0

    .line 257
    return v3

    .line 259
    :cond_0
    const/4 v2, 0x0

    .line 261
    .local v2, "i":I
    :goto_0
    iget-object v4, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->back:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 262
    .local v4, "back":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    const/4 v5, 0x1

    if-nez v4, :cond_5

    .line 263
    nop

    .line 275
    .end local v4    # "back":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->table:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    if-eq v1, v4, :cond_1

    .line 276
    return v3

    .line 278
    :cond_1
    iput v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->width:I

    .line 279
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->table:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 280
    :goto_1
    iget v4, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->integer:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_3

    .line 281
    add-int/lit8 v2, v2, -0x1

    .line 282
    aget v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->one:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    goto :goto_2

    :cond_2
    iget-object v4, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->zero:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    :goto_2
    move-object v1, v4

    goto :goto_1

    .line 284
    :cond_3
    iget v4, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->integer:I

    if-ne v4, p1, :cond_4

    if-nez v2, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3

    .line 265
    .restart local v4    # "back":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    :cond_5
    iget-object v6, v4, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->zero:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    if-ne v6, v1, :cond_6

    .line 266
    aput v3, v0, v2

    goto :goto_3

    .line 267
    :cond_6
    iget-object v6, v4, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->one:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    if-ne v6, v1, :cond_7

    .line 268
    aput v5, v0, v2

    .line 272
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 273
    move-object v1, v4

    .line 274
    .end local v4    # "back":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    goto :goto_0

    .line 270
    .restart local v4    # "back":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    :cond_7
    return v3
.end method

.method private write(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;)V
    .locals 2
    .param p1, "symbol"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    .param p2, "bitwriter"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 372
    :try_start_0
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->back:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 373
    .local v0, "back":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    if-eqz v0, :cond_1

    .line 374
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->width:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->width:I

    .line 375
    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->write(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;)V

    .line 376
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->zero:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    if-ne v1, p1, :cond_0

    .line 377
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;->zero()V

    goto :goto_0

    .line 379
    :cond_0
    invoke-interface {p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;->one()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    .end local v0    # "back":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    :cond_1
    :goto_0
    nop

    .line 385
    return-void

    .line 382
    :catchall_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public generate()V
    .locals 13

    .line 158
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->upToDate:Z

    if-nez v0, :cond_9

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->symbols:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 164
    .local v0, "head":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    move-object v1, v0

    .line 167
    .local v1, "previous":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->table:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 168
    iput-object v2, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->next:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 169
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->domain:I

    if-ge v3, v4, :cond_4

    .line 170
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->symbols:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    aget-object v4, v4, v3

    .line 174
    .local v4, "symbol":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    iget-wide v5, v4, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->weight:J

    iget-wide v7, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->weight:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    .line 175
    iput-object v0, v4, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->next:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 176
    move-object v0, v4

    goto :goto_3

    .line 182
    :cond_0
    iget-wide v5, v4, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->weight:J

    iget-wide v7, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->weight:J

    cmp-long v9, v5, v7

    if-gez v9, :cond_1

    .line 183
    move-object v1, v0

    .line 190
    :cond_1
    :goto_1
    iget-object v5, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->next:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 191
    .local v5, "next":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    if-eqz v5, :cond_3

    iget-wide v6, v4, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->weight:J

    iget-wide v8, v5, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->weight:J

    cmp-long v10, v6, v8

    if-gez v10, :cond_2

    .line 192
    goto :goto_2

    .line 194
    :cond_2
    move-object v1, v5

    goto :goto_1

    .line 196
    :cond_3
    :goto_2
    iput-object v5, v4, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->next:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 197
    iput-object v4, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->next:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 198
    move-object v1, v4

    .line 169
    .end local v5    # "next":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    .end local v3    # "i":I
    .end local v4    # "symbol":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    :cond_4
    iget v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->domain:I

    .line 208
    .local v3, "avail":I
    move-object v1, v0

    .line 210
    :goto_4
    move-object v4, v0

    .line 211
    .local v4, "first":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    iget-object v5, v4, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->next:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 212
    .local v5, "second":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    iget-object v0, v5, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->next:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 213
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->symbols:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    aget-object v6, v6, v3

    .line 214
    .local v6, "symbol":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    const/4 v7, 0x1

    add-int/2addr v3, v7

    .line 215
    iget-wide v8, v4, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->weight:J

    iget-wide v10, v5, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->weight:J

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->weight:J

    .line 216
    iput-object v4, v6, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->zero:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 217
    iput-object v5, v6, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->one:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 218
    iput-object v2, v6, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->back:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 219
    iput-object v6, v4, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->back:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 220
    iput-object v6, v5, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->back:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 221
    if-nez v0, :cond_5

    .line 222
    nop

    .line 248
    iput-object v6, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->table:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 249
    iput-boolean v7, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->upToDate:Z

    goto :goto_7

    .line 227
    :cond_5
    iget-wide v7, v6, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->weight:J

    iget-wide v9, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->weight:J

    cmp-long v11, v7, v9

    if-gez v11, :cond_6

    .line 228
    iput-object v0, v6, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->next:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 229
    move-object v0, v6

    .line 230
    move-object v1, v0

    goto :goto_4

    .line 233
    :cond_6
    :goto_5
    iget-object v7, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->next:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 234
    .local v7, "next":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    if-eqz v7, :cond_8

    iget-wide v8, v6, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->weight:J

    iget-wide v10, v7, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->weight:J

    cmp-long v12, v8, v10

    if-gez v12, :cond_7

    .line 235
    goto :goto_6

    .line 237
    :cond_7
    move-object v1, v7

    goto :goto_5

    .line 239
    :cond_8
    :goto_6
    iput-object v7, v6, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->next:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 240
    iput-object v6, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->next:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 241
    move-object v1, v6

    goto :goto_4

    .line 251
    .end local v0    # "head":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    .end local v1    # "previous":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    .end local v3    # "avail":I
    .end local v4    # "first":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    .end local v5    # "second":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    .end local v6    # "symbol":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    .end local v7    # "next":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    :cond_9
    :goto_7
    return-void
.end method

.method public postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z
    .locals 2
    .param p1, "pm"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;

    .line 295
    const/4 v0, 0x0

    .local v0, "integer":I
    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->domain:I

    if-ge v0, v1, :cond_1

    .line 296
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->postMortem(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    const-string v1, "\nBad huff "

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->log(Ljava/lang/String;)V

    .line 298
    invoke-static {v0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/JSONzip;->logchar(II)V

    .line 299
    const/4 v1, 0x0

    return v1

    .line 295
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "integer":I
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->table:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->table:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z

    move-result v0

    return v0
.end method

.method public read(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;)I
    .locals 3
    .param p1, "bitreader"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 316
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->width:I

    .line 317
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->table:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 318
    .local v0, "symbol":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    :goto_0
    iget v1, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->integer:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 319
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->width:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->width:I

    .line 320
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitReader;->bit()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->one:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->zero:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 322
    :cond_1
    iget v1, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->integer:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->tick(I)V

    .line 326
    iget v1, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->integer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 327
    .end local v0    # "symbol":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    :catchall_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public tick(I)V
    .locals 5
    .param p1, "value"    # I

    .line 340
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->symbols:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    aget-object v0, v0, p1

    iget-wide v1, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->weight:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->weight:J

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->upToDate:Z

    .line 342
    return-void
.end method

.method public tick(II)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 354
    move v0, p1

    .local v0, "value":I
    :goto_0
    if-gt v0, p2, :cond_0

    .line 355
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->tick(I)V

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "value":I
    :cond_0
    return-void
.end method

.method public write(ILcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "bitwriter"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 399
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->width:I

    .line 400
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->symbols:[Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    aget-object v0, v0, p1

    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->write(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/BitWriter;)V

    .line 401
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;->tick(I)V

    .line 405
    return-void
.end method
