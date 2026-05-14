.class public Lgnu/mapping/Table2D;
.super Ljava/lang/Object;
.source "Table2D.java"


# static fields
.field private static instance:Lgnu/mapping/Table2D;


# instance fields
.field log2Size:I

.field mask:I

.field num_bindings:I

.field table:[Lgnu/mapping/Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lgnu/mapping/Table2D;

    invoke-direct {v0}, Lgnu/mapping/Table2D;-><init>()V

    sput-object v0, Lgnu/mapping/Table2D;->instance:Lgnu/mapping/Table2D;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lgnu/mapping/Table2D;-><init>(I)V

    .line 24
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x4

    iput v0, p0, Lgnu/mapping/Table2D;->log2Size:I

    .line 29
    :goto_0
    iget v0, p0, Lgnu/mapping/Table2D;->log2Size:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    if-le p1, v0, :cond_0

    .line 30
    iget v0, p0, Lgnu/mapping/Table2D;->log2Size:I

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/mapping/Table2D;->log2Size:I

    goto :goto_0

    .line 31
    :cond_0
    iget v0, p0, Lgnu/mapping/Table2D;->log2Size:I

    shl-int p1, v1, v0

    .line 32
    new-array v0, p1, [Lgnu/mapping/Entry;

    iput-object v0, p0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    .line 33
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lgnu/mapping/Table2D;->mask:I

    .line 34
    return-void
.end method

.method public static final getInstance()Lgnu/mapping/Table2D;
    .locals 1

    .line 14
    sget-object v0, Lgnu/mapping/Table2D;->instance:Lgnu/mapping/Table2D;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "defaultValue"    # Ljava/lang/Object;

    .line 38
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    .line 39
    .local v6, "h1":I
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    .line 40
    .local v7, "h2":I
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/Table2D;->lookup(Ljava/lang/Object;Ljava/lang/Object;IIZ)Lgnu/mapping/Entry;

    move-result-object v0

    .line 41
    .local v0, "entry":Lgnu/mapping/Entry;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, p3

    :goto_1
    return-object v1
.end method

.method public isBound(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .line 46
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    .line 47
    .local v6, "h1":I
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    .line 48
    .local v7, "h2":I
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/Table2D;->lookup(Ljava/lang/Object;Ljava/lang/Object;IIZ)Lgnu/mapping/Entry;

    move-result-object v0

    .line 49
    .local v0, "entry":Lgnu/mapping/Entry;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected lookup(Ljava/lang/Object;Ljava/lang/Object;IIZ)Lgnu/mapping/Entry;
    .locals 13
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "hash1"    # I
    .param p4, "hash2"    # I
    .param p5, "create"    # Z

    .line 222
    move-object v0, p0

    move-object v1, p2

    xor-int v2, p3, p4

    .line 223
    .local v2, "hash":I
    iget v3, v0, Lgnu/mapping/Table2D;->mask:I

    and-int/2addr v3, v2

    .line 224
    .local v3, "index":I
    const/4 v4, 0x0

    .line 225
    .local v4, "prev":Lgnu/mapping/Entry;
    iget-object v5, v0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    aget-object v5, v5, v3

    .line 226
    .local v5, "first":Lgnu/mapping/Entry;
    move-object v6, v5

    .local v6, "e":Lgnu/mapping/Entry;
    :goto_0
    const/4 v7, 0x1

    if-eqz v6, :cond_7

    .line 228
    iget-object v8, v6, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    .line 229
    .local v8, "k1":Ljava/lang/Object;
    iget-object v9, v6, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    .line 230
    .local v9, "k2":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 232
    .local v10, "dead":Z
    instance-of v11, v8, Ljava/lang/ref/WeakReference;

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    .line 234
    move-object v11, v8

    check-cast v11, Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    .line 235
    if-nez v8, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    move v10, v11

    .line 237
    :cond_1
    instance-of v11, v9, Ljava/lang/ref/WeakReference;

    if-eqz v11, :cond_3

    .line 239
    move-object v11, v9

    check-cast v11, Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    .line 240
    if-nez v9, :cond_2

    const/4 v12, 0x1

    :cond_2
    move v10, v12

    .line 241
    const/4 v10, 0x1

    .line 244
    :cond_3
    iget-object v11, v6, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 245
    .local v11, "next":Lgnu/mapping/Entry;
    if-eqz v10, :cond_5

    .line 247
    if-nez v4, :cond_4

    .line 248
    iget-object v12, v0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    aput-object v11, v12, v3

    goto :goto_2

    .line 250
    :cond_4
    iput-object v11, v4, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 251
    :goto_2
    iget v12, v0, Lgnu/mapping/Table2D;->num_bindings:I

    sub-int/2addr v12, v7

    iput v12, v0, Lgnu/mapping/Table2D;->num_bindings:I

    .line 252
    iput-object v6, v6, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    move-object v12, p1

    goto :goto_3

    .line 254
    :cond_5
    move-object v12, p1

    if-ne v8, v12, :cond_6

    if-ne v9, v1, :cond_6

    .line 255
    return-object v6

    .line 257
    :cond_6
    move-object v4, v6

    .line 258
    :goto_3
    move-object v6, v11

    .line 259
    .end local v8    # "k1":Ljava/lang/Object;
    .end local v9    # "k2":Ljava/lang/Object;
    .end local v10    # "dead":Z
    .end local v11    # "next":Lgnu/mapping/Entry;
    goto :goto_0

    .line 226
    :cond_7
    move-object v12, p1

    .line 260
    .end local v6    # "e":Lgnu/mapping/Entry;
    if-eqz p5, :cond_8

    .line 262
    new-instance v6, Lgnu/mapping/Entry;

    invoke-direct {v6}, Lgnu/mapping/Entry;-><init>()V

    .line 295
    .restart local v6    # "e":Lgnu/mapping/Entry;
    invoke-virtual {p0, p1}, Lgnu/mapping/Table2D;->wrapReference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 296
    .end local p1    # "key1":Ljava/lang/Object;
    .local v8, "key1":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lgnu/mapping/Table2D;->wrapReference(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 297
    .end local p2    # "key2":Ljava/lang/Object;
    .local v1, "key2":Ljava/lang/Object;
    iput-object v8, v6, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    .line 298
    iput-object v1, v6, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    .line 299
    iget v9, v0, Lgnu/mapping/Table2D;->num_bindings:I

    add-int/2addr v9, v7

    iput v9, v0, Lgnu/mapping/Table2D;->num_bindings:I

    .line 301
    iput-object v5, v6, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 302
    iget-object v7, v0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    aput-object v6, v7, v3

    .line 303
    iput-object v6, v6, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    .line 304
    return-object v6

    .line 307
    .end local v1    # "key2":Ljava/lang/Object;
    .end local v6    # "e":Lgnu/mapping/Entry;
    .end local v8    # "key1":Ljava/lang/Object;
    .restart local p1    # "key1":Ljava/lang/Object;
    .restart local p2    # "key2":Ljava/lang/Object;
    :cond_8
    const/4 v6, 0x0

    return-object v6
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .line 54
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    .line 55
    .local v6, "h1":I
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    .line 56
    .local v7, "h2":I
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v6

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/Table2D;->lookup(Ljava/lang/Object;Ljava/lang/Object;IIZ)Lgnu/mapping/Entry;

    move-result-object v0

    .line 57
    .local v0, "entry":Lgnu/mapping/Entry;
    invoke-virtual {v0}, Lgnu/mapping/Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 58
    .local v1, "oldValue":Ljava/lang/Object;
    iput-object p3, v0, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    .line 59
    return-object v1
.end method

.method rehash()V
    .locals 18

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    .line 173
    .local v1, "oldTable":[Lgnu/mapping/Entry;
    array-length v2, v1

    .line 174
    .local v2, "oldCapacity":I
    mul-int/lit8 v3, v2, 0x2

    .line 175
    .local v3, "newCapacity":I
    new-array v4, v3, [Lgnu/mapping/Entry;

    .line 176
    .local v4, "newTable":[Lgnu/mapping/Entry;
    add-int/lit8 v5, v3, -0x1

    .line 177
    .local v5, "newMask":I
    const/4 v6, 0x0

    iput v6, v0, Lgnu/mapping/Table2D;->num_bindings:I

    .line 178
    move v7, v2

    .local v7, "i":I
    :goto_0
    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x1

    if-ltz v7, :cond_6

    .line 180
    aget-object v9, v1, v7

    .line 181
    .local v9, "first":Lgnu/mapping/Entry;
    const/4 v10, 0x0

    .line 182
    .local v10, "prev":Lgnu/mapping/Entry;
    move-object v11, v9

    .local v11, "e":Lgnu/mapping/Entry;
    :goto_1
    if-eqz v11, :cond_5

    .line 184
    iget-object v12, v11, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    .line 185
    .local v12, "k1":Ljava/lang/Object;
    iget-object v13, v11, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    .line 186
    .local v13, "k2":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 188
    .local v14, "dead":Z
    instance-of v15, v12, Ljava/lang/ref/WeakReference;

    if-eqz v15, :cond_1

    .line 190
    move-object v15, v12

    check-cast v15, Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    .line 191
    if-nez v12, :cond_0

    const/4 v15, 0x1

    goto :goto_2

    :cond_0
    const/4 v15, 0x0

    :goto_2
    move v14, v15

    .line 193
    :cond_1
    instance-of v15, v13, Ljava/lang/ref/WeakReference;

    if-eqz v15, :cond_3

    .line 195
    move-object v15, v13

    check-cast v15, Ljava/lang/ref/WeakReference;

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    .line 196
    if-nez v13, :cond_2

    const/4 v15, 0x1

    goto :goto_3

    :cond_2
    const/4 v15, 0x0

    :goto_3
    move v14, v15

    .line 199
    :cond_3
    iget-object v15, v11, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 200
    .local v15, "next":Lgnu/mapping/Entry;
    if-eqz v14, :cond_4

    .line 201
    iput-object v11, v11, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    goto :goto_4

    .line 204
    :cond_4
    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v16

    invoke-static {v13}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v17

    xor-int v16, v16, v17

    .line 206
    .local v16, "hash":I
    and-int v17, v16, v5

    .line 207
    .local v17, "index":I
    aget-object v6, v4, v17

    iput-object v6, v11, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 208
    aput-object v11, v4, v17

    .line 209
    iget v6, v0, Lgnu/mapping/Table2D;->num_bindings:I

    add-int/2addr v6, v8

    iput v6, v0, Lgnu/mapping/Table2D;->num_bindings:I

    .line 211
    .end local v16    # "hash":I
    .end local v17    # "index":I
    :goto_4
    move-object v11, v15

    .line 212
    .end local v12    # "k1":Ljava/lang/Object;
    .end local v13    # "k2":Ljava/lang/Object;
    .end local v14    # "dead":Z
    .end local v15    # "next":Lgnu/mapping/Entry;
    const/4 v6, 0x0

    goto :goto_1

    .line 213
    .end local v9    # "first":Lgnu/mapping/Entry;
    .end local v10    # "prev":Lgnu/mapping/Entry;
    .end local v11    # "e":Lgnu/mapping/Entry;
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .line 214
    .end local v7    # "i":I
    :cond_6
    iput-object v4, v0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    .line 215
    iget v6, v0, Lgnu/mapping/Table2D;->log2Size:I

    add-int/2addr v6, v8

    iput v6, v0, Lgnu/mapping/Table2D;->log2Size:I

    .line 216
    iput v5, v0, Lgnu/mapping/Table2D;->mask:I

    .line 217
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .line 64
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 65
    .local v0, "h1":I
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 66
    .local v1, "h2":I
    xor-int v2, v0, v1

    .line 67
    .local v2, "hash":I
    invoke-virtual {p0, p1, p2, v2}, Lgnu/mapping/Table2D;->remove(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "hash"    # I

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/Table2D;->remove(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 16
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .param p3, "hash1"    # I
    .param p4, "hash2"    # I

    .line 77
    move-object/from16 v0, p0

    xor-int v1, p3, p4

    .line 78
    .local v1, "hash":I
    iget v2, v0, Lgnu/mapping/Table2D;->mask:I

    and-int/2addr v2, v1

    .line 79
    .local v2, "index":I
    const/4 v3, 0x0

    .line 80
    .local v3, "prev":Lgnu/mapping/Entry;
    iget-object v4, v0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    aget-object v4, v4, v2

    .line 81
    .local v4, "first":Lgnu/mapping/Entry;
    move-object v5, v4

    .local v5, "e":Lgnu/mapping/Entry;
    :goto_0
    if-eqz v5, :cond_a

    .line 83
    iget-object v6, v5, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    .line 84
    .local v6, "k1":Ljava/lang/Object;
    iget-object v7, v5, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    .line 85
    .local v7, "k2":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 87
    .local v8, "dead":Z
    instance-of v9, v6, Ljava/lang/ref/WeakReference;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_1

    .line 89
    move-object v9, v6

    check-cast v9, Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    .line 90
    if-nez v6, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    move v8, v9

    .line 92
    :cond_1
    instance-of v9, v7, Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_3

    .line 94
    move-object v9, v7

    check-cast v9, Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 95
    if-nez v7, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    move v8, v9

    .line 98
    :cond_3
    iget-object v9, v5, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 99
    .local v9, "next":Lgnu/mapping/Entry;
    iget-object v12, v5, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    .line 100
    .local v12, "oldValue":Ljava/lang/Object;
    move-object/from16 v13, p1

    if-ne v6, v13, :cond_4

    move-object/from16 v14, p2

    if-ne v7, v14, :cond_5

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v14, p2

    .line 101
    .local v10, "matches":Z
    :cond_5
    :goto_3
    if-nez v8, :cond_8

    if-eqz v10, :cond_6

    goto :goto_4

    .line 110
    :cond_6
    if-eqz v10, :cond_7

    .line 111
    return-object v12

    .line 113
    :cond_7
    move-object v3, v5

    goto :goto_6

    .line 103
    :cond_8
    :goto_4
    if-nez v3, :cond_9

    .line 104
    iget-object v15, v0, Lgnu/mapping/Table2D;->table:[Lgnu/mapping/Entry;

    aput-object v9, v15, v2

    goto :goto_5

    .line 106
    :cond_9
    iput-object v9, v3, Lgnu/mapping/Entry;->chain:Lgnu/mapping/Entry;

    .line 107
    :goto_5
    iget v15, v0, Lgnu/mapping/Table2D;->num_bindings:I

    sub-int/2addr v15, v11

    iput v15, v0, Lgnu/mapping/Table2D;->num_bindings:I

    .line 108
    iput-object v5, v5, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    .line 114
    :goto_6
    move-object v5, v9

    .line 115
    .end local v6    # "k1":Ljava/lang/Object;
    .end local v7    # "k2":Ljava/lang/Object;
    .end local v8    # "dead":Z
    .end local v9    # "next":Lgnu/mapping/Entry;
    .end local v10    # "matches":Z
    .end local v12    # "oldValue":Ljava/lang/Object;
    goto :goto_0

    .line 81
    :cond_a
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    .line 116
    .end local v5    # "e":Lgnu/mapping/Entry;
    const/4 v5, 0x0

    return-object v5
.end method

.method protected wrapReference(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 313
    if-eqz p1, :cond_1

    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p1

    :goto_1
    return-object v0
.end method
