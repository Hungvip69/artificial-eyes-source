.class public Lgnu/lists/StableVector;
.super Lgnu/lists/GapVector;
.source "StableVector.java"


# static fields
.field static final END_POSITION:I = 0x1

.field protected static final FREE_POSITION:I = -0x2

.field static final START_POSITION:I


# instance fields
.field protected free:I

.field protected positions:[I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lgnu/lists/GapVector;-><init>()V

    .line 92
    return-void
.end method

.method public constructor <init>(Lgnu/lists/SimpleVector;)V
    .locals 5
    .param p1, "base"    # Lgnu/lists/SimpleVector;

    .line 78
    invoke-direct {p0, p1}, Lgnu/lists/GapVector;-><init>(Lgnu/lists/SimpleVector;)V

    .line 79
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    .line 80
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 81
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    invoke-virtual {p1}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    or-int/2addr v1, v2

    aput v1, v0, v2

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lgnu/lists/StableVector;->free:I

    .line 83
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v1, v1

    .local v1, "i":I
    :goto_0
    add-int/2addr v1, v0

    if-le v1, v2, :cond_0

    .line 85
    iget-object v3, p0, Lgnu/lists/StableVector;->positions:[I

    iget v4, p0, Lgnu/lists/StableVector;->free:I

    aput v4, v3, v1

    .line 86
    iput v1, p0, Lgnu/lists/StableVector;->free:I

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected addPos(ILjava/lang/Object;)I
    .locals 4
    .param p1, "ipos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget v0, v0, p1

    .line 287
    .local v0, "ppos":I
    ushr-int/lit8 v1, v0, 0x1

    .line 288
    .local v1, "index":I
    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    if-lt v1, v2, :cond_0

    .line 289
    iget v2, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v3, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 291
    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_2

    .line 293
    if-nez p1, :cond_1

    .line 294
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lgnu/lists/StableVector;->createPos(IZ)I

    move-result p1

    goto :goto_0

    .line 296
    :cond_1
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    or-int/lit8 v3, v0, 0x1

    aput v3, v2, p1

    .line 298
    :cond_2
    :goto_0
    invoke-virtual {p0, v1, p2}, Lgnu/lists/StableVector;->add(ILjava/lang/Object;)V

    .line 299
    return p1
.end method

.method protected adjustPositions(III)V
    .locals 7
    .param p1, "low"    # I
    .param p2, "high"    # I
    .param p3, "delta"    # I

    .line 263
    iget v0, p0, Lgnu/lists/StableVector;->free:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_0

    .line 264
    invoke-virtual {p0}, Lgnu/lists/StableVector;->unchainFreelist()V

    .line 269
    :cond_0
    const/high16 v0, -0x80000000

    xor-int/2addr p1, v0

    .line 270
    xor-int/2addr p2, v0

    .line 272
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v2, v2

    .local v2, "i":I
    :goto_0
    add-int/2addr v2, v1

    if-lez v2, :cond_2

    .line 274
    iget-object v3, p0, Lgnu/lists/StableVector;->positions:[I

    aget v3, v3, v2

    .line 275
    .local v3, "pos":I
    const/4 v4, -0x2

    if-eq v3, v4, :cond_1

    .line 277
    xor-int v4, v3, v0

    .line 278
    .local v4, "index":I
    if-lt v4, p1, :cond_1

    if-gt v4, p2, :cond_1

    .line 279
    iget-object v5, p0, Lgnu/lists/StableVector;->positions:[I

    add-int v6, v3, p3

    aput v6, v5, v2

    .line 281
    .end local v3    # "pos":I
    .end local v4    # "index":I
    :cond_1
    goto :goto_0

    .line 282
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method protected allocPositionIndex()I
    .locals 4

    .line 96
    iget v0, p0, Lgnu/lists/StableVector;->free:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lgnu/lists/StableVector;->chainFreelist()V

    .line 98
    :cond_0
    iget v0, p0, Lgnu/lists/StableVector;->free:I

    if-gez v0, :cond_2

    .line 100
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v0, v0

    .line 101
    .local v0, "oldLength":I
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    .line 102
    .local v1, "tmp":[I
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    mul-int/lit8 v2, v0, 0x2

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-lt v2, v0, :cond_1

    .line 105
    iget v3, p0, Lgnu/lists/StableVector;->free:I

    aput v3, v1, v2

    .line 106
    iput v2, p0, Lgnu/lists/StableVector;->free:I

    goto :goto_0

    .line 108
    .end local v2    # "i":I
    :cond_1
    iput-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    .line 110
    .end local v0    # "oldLength":I
    .end local v1    # "tmp":[I
    :cond_2
    iget v0, p0, Lgnu/lists/StableVector;->free:I

    .line 111
    .local v0, "pos":I
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    iget v2, p0, Lgnu/lists/StableVector;->free:I

    aget v1, v1, v2

    iput v1, p0, Lgnu/lists/StableVector;->free:I

    .line 112
    return v0
.end method

.method protected chainFreelist()V
    .locals 5

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lgnu/lists/StableVector;->free:I

    .line 42
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v1, v1

    .local v1, "i":I
    :goto_0
    add-int/2addr v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 44
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aget v2, v2, v1

    .line 45
    .local v2, "pos":I
    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    .line 47
    iget-object v3, p0, Lgnu/lists/StableVector;->positions:[I

    iget v4, p0, Lgnu/lists/StableVector;->free:I

    aput v4, v3, v1

    .line 48
    iput v1, p0, Lgnu/lists/StableVector;->free:I

    .line 50
    .end local v2    # "pos":I
    :cond_0
    goto :goto_0

    .line 51
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 2
    .param p1, "iposStart"    # I
    .param p2, "iposEnd"    # I
    .param p3, "out"    # Lgnu/lists/Consumer;

    .line 341
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget v0, v0, p1

    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v1, p2

    invoke-super {p0, v0, v1, p3}, Lgnu/lists/GapVector;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 342
    return-void
.end method

.method public copyPos(I)I
    .locals 3
    .param p1, "ipos"    # I

    .line 180
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lgnu/lists/StableVector;->allocPositionIndex()I

    move-result v0

    .line 183
    .local v0, "i":I
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aget v2, v2, p1

    aput v2, v1, v0

    .line 184
    move p1, v0

    .line 186
    .end local v0    # "i":I
    :cond_0
    return p1
.end method

.method public createPos(IZ)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "isAfter"    # Z

    .line 117
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 118
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lgnu/lists/StableVector;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 120
    const/4 v0, 0x1

    return v0

    .line 121
    :cond_1
    iget v0, p0, Lgnu/lists/StableVector;->gapStart:I

    if-gt p1, v0, :cond_2

    iget v0, p0, Lgnu/lists/StableVector;->gapStart:I

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_3

    .line 122
    :cond_2
    iget v0, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v1, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 123
    :cond_3
    invoke-virtual {p0}, Lgnu/lists/StableVector;->allocPositionIndex()I

    move-result v0

    .line 124
    .local v0, "ipos":I
    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    shl-int/lit8 v2, p1, 0x1

    or-int/2addr v2, p2

    aput v2, v1, v0

    .line 125
    return v0
.end method

.method public endPos()I
    .locals 1

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public fillPosRange(IILjava/lang/Object;)V
    .locals 2
    .param p1, "fromPos"    # I
    .param p2, "toPos"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget v0, v0, p1

    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lgnu/lists/StableVector;->fillPosRange(IILjava/lang/Object;)V

    .line 192
    return-void
.end method

.method protected gapReserve(II)V
    .locals 8
    .param p1, "where"    # I
    .param p2, "needed"    # I

    .line 227
    iget v0, p0, Lgnu/lists/StableVector;->gapEnd:I

    .line 228
    .local v0, "oldGapEnd":I
    iget v1, p0, Lgnu/lists/StableVector;->gapStart:I

    .line 229
    .local v1, "oldGapStart":I
    sub-int v2, v0, v1

    if-le p2, v2, :cond_1

    .line 231
    iget-object v2, p0, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    iget v2, v2, Lgnu/lists/SimpleVector;->size:I

    .line 232
    .local v2, "oldLength":I
    invoke-super {p0, p1, p2}, Lgnu/lists/GapVector;->gapReserve(II)V

    .line 233
    iget-object v3, p0, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    iget v3, v3, Lgnu/lists/SimpleVector;->size:I

    .line 234
    .local v3, "newLength":I
    if-ne p1, v1, :cond_0

    .line 235
    shl-int/lit8 v4, v0, 0x1

    shl-int/lit8 v5, v3, 0x1

    or-int/lit8 v5, v5, 0x1

    sub-int v6, v3, v2

    shl-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lgnu/lists/StableVector;->adjustPositions(III)V

    goto :goto_0

    .line 241
    :cond_0
    shl-int/lit8 v4, v0, 0x1

    shl-int/lit8 v5, v2, 0x1

    or-int/lit8 v5, v5, 0x1

    sub-int v6, v1, v0

    shl-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lgnu/lists/StableVector;->adjustPositions(III)V

    .line 243
    iget v4, p0, Lgnu/lists/StableVector;->gapStart:I

    shl-int/lit8 v4, v4, 0x1

    shl-int/lit8 v5, v3, 0x1

    or-int/lit8 v5, v5, 0x1

    iget v6, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v7, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v6, v7

    shl-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lgnu/lists/StableVector;->adjustPositions(III)V

    .line 245
    .end local v2    # "oldLength":I
    .end local v3    # "newLength":I
    :goto_0
    goto :goto_1

    .line 246
    :cond_1
    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    if-eq p1, v2, :cond_2

    .line 247
    invoke-virtual {p0, p1}, Lgnu/lists/StableVector;->shiftGap(I)V

    .line 248
    :cond_2
    :goto_1
    return-void
.end method

.method public hasNext(I)Z
    .locals 4
    .param p1, "ipos"    # I

    .line 135
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget v0, v0, p1

    .line 136
    .local v0, "ppos":I
    ushr-int/lit8 v1, v0, 0x1

    .line 137
    .local v1, "index":I
    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    if-lt v1, v2, :cond_0

    .line 138
    iget v2, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v3, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 139
    :cond_0
    iget-object v2, p0, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v2}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected isAfterPos(I)Z
    .locals 2
    .param p1, "ipos"    # I

    .line 130
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget v0, v0, p1

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public nextIndex(I)I
    .locals 3
    .param p1, "ipos"    # I

    .line 161
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget v0, v0, p1

    ushr-int/lit8 v0, v0, 0x1

    .line 162
    .local v0, "index":I
    iget v1, p0, Lgnu/lists/StableVector;->gapStart:I

    if-le v0, v1, :cond_0

    .line 163
    iget v1, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 164
    :cond_0
    return v0
.end method

.method public nextPos(I)I
    .locals 4
    .param p1, "ipos"    # I

    .line 144
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget v0, v0, p1

    .line 145
    .local v0, "ppos":I
    ushr-int/lit8 v1, v0, 0x1

    .line 146
    .local v1, "index":I
    iget v2, p0, Lgnu/lists/StableVector;->gapStart:I

    if-lt v1, v2, :cond_0

    .line 147
    iget v2, p0, Lgnu/lists/StableVector;->gapEnd:I

    iget v3, p0, Lgnu/lists/StableVector;->gapStart:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 148
    :cond_0
    iget-object v2, p0, Lgnu/lists/StableVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v2}, Lgnu/lists/SimpleVector;->getBufferLength()I

    move-result v2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 150
    invoke-virtual {p0, p1}, Lgnu/lists/StableVector;->releasePos(I)V

    .line 151
    return v3

    .line 153
    :cond_1
    if-nez p1, :cond_2

    .line 154
    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Lgnu/lists/StableVector;->createPos(IZ)I

    move-result p1

    .line 155
    :cond_2
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    or-int/lit8 v3, v0, 0x1

    aput v3, v2, p1

    .line 156
    return p1
.end method

.method public releasePos(I)V
    .locals 2
    .param p1, "ipos"    # I

    .line 169
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 171
    iget v0, p0, Lgnu/lists/StableVector;->free:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lgnu/lists/StableVector;->chainFreelist()V

    .line 173
    :cond_0
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    iget v1, p0, Lgnu/lists/StableVector;->free:I

    aput v1, v0, p1

    .line 174
    iput p1, p0, Lgnu/lists/StableVector;->free:I

    .line 176
    :cond_1
    return-void
.end method

.method protected removePosRange(II)V
    .locals 10
    .param p1, "ipos0"    # I
    .param p2, "ipos1"    # I

    .line 304
    iget-object v0, p0, Lgnu/lists/StableVector;->positions:[I

    aget v0, v0, p1

    iget-object v1, p0, Lgnu/lists/StableVector;->positions:[I

    aget v1, v1, p2

    invoke-super {p0, v0, v1}, Lgnu/lists/GapVector;->removePosRange(II)V

    .line 307
    iget v0, p0, Lgnu/lists/StableVector;->gapStart:I

    .line 308
    .local v0, "low":I
    iget v1, p0, Lgnu/lists/StableVector;->gapEnd:I

    .line 309
    .local v1, "high":I
    iget v2, p0, Lgnu/lists/StableVector;->free:I

    const/4 v3, -0x1

    if-lt v2, v3, :cond_0

    .line 310
    invoke-virtual {p0}, Lgnu/lists/StableVector;->unchainFreelist()V

    .line 311
    :cond_0
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    array-length v2, v2

    .local v2, "i":I
    :goto_0
    add-int/2addr v2, v3

    if-lez v2, :cond_4

    .line 313
    iget-object v4, p0, Lgnu/lists/StableVector;->positions:[I

    aget v4, v4, v2

    .line 314
    .local v4, "pos":I
    const/4 v5, -0x2

    if-eq v4, v5, :cond_3

    .line 316
    shr-int/lit8 v5, v4, 0x1

    .line 317
    .local v5, "index":I
    and-int/lit8 v6, v4, 0x1

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 318
    .local v6, "isAfter":Z
    :goto_1
    if-eqz v6, :cond_2

    .line 320
    if-lt v5, v0, :cond_3

    if-ge v5, v1, :cond_3

    .line 321
    iget-object v8, p0, Lgnu/lists/StableVector;->positions:[I

    iget v9, p0, Lgnu/lists/StableVector;->gapEnd:I

    shl-int/2addr v9, v7

    or-int/2addr v7, v9

    aput v7, v8, v2

    goto :goto_2

    .line 325
    :cond_2
    if-le v5, v0, :cond_3

    if-gt v5, v1, :cond_3

    .line 326
    iget-object v8, p0, Lgnu/lists/StableVector;->positions:[I

    iget v9, p0, Lgnu/lists/StableVector;->gapStart:I

    shl-int/lit8 v7, v9, 0x1

    aput v7, v8, v2

    .line 329
    .end local v4    # "pos":I
    .end local v5    # "index":I
    .end local v6    # "isAfter":Z
    :cond_3
    :goto_2
    goto :goto_0

    .line 330
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method protected shiftGap(I)V
    .locals 6
    .param p1, "newGapStart"    # I

    .line 196
    iget v0, p0, Lgnu/lists/StableVector;->gapStart:I

    .line 197
    .local v0, "oldGapStart":I
    sub-int v1, p1, v0

    .line 199
    .local v1, "delta":I
    if-lez v1, :cond_0

    .line 201
    iget v2, p0, Lgnu/lists/StableVector;->gapEnd:I

    .line 202
    .local v2, "low":I
    add-int v3, v2, v1

    .line 203
    .local v3, "high":I
    sub-int v4, v0, v2

    shl-int/lit8 v4, v4, 0x1

    .line 206
    .local v4, "adjust":I
    shl-int/lit8 v2, v2, 0x1

    .line 207
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v5, v5, -0x1

    .end local v3    # "high":I
    .local v5, "high":I
    goto :goto_0

    .line 209
    .end local v2    # "low":I
    .end local v4    # "adjust":I
    .end local v5    # "high":I
    :cond_0
    if-ne p1, v0, :cond_1

    .line 210
    return-void

    .line 214
    :cond_1
    shl-int/lit8 v2, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 215
    .restart local v2    # "low":I
    shl-int/lit8 v5, v0, 0x1

    .line 216
    .restart local v5    # "high":I
    iget v3, p0, Lgnu/lists/StableVector;->gapEnd:I

    sub-int/2addr v3, v0

    shl-int/lit8 v4, v3, 0x1

    .line 218
    .restart local v4    # "adjust":I
    :goto_0
    invoke-super {p0, p1}, Lgnu/lists/GapVector;->shiftGap(I)V

    .line 220
    invoke-virtual {p0, v2, v5, v4}, Lgnu/lists/StableVector;->adjustPositions(III)V

    .line 221
    return-void
.end method

.method public startPos()I
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method protected unchainFreelist()V
    .locals 4

    .line 56
    iget v0, p0, Lgnu/lists/StableVector;->free:I

    .local v0, "i":I
    :goto_0
    const/4 v1, -0x2

    if-ltz v0, :cond_0

    .line 58
    iget-object v2, p0, Lgnu/lists/StableVector;->positions:[I

    aget v2, v2, v0

    .line 59
    .local v2, "next":I
    iget-object v3, p0, Lgnu/lists/StableVector;->positions:[I

    aput v1, v3, v0

    .line 60
    move v0, v2

    .line 61
    .end local v2    # "next":I
    goto :goto_0

    .line 62
    .end local v0    # "i":I
    :cond_0
    iput v1, p0, Lgnu/lists/StableVector;->free:I

    .line 63
    return-void
.end method
