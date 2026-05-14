.class public Lgnu/lists/GapVector;
.super Lgnu/lists/AbstractSequence;
.source "GapVector.java"

# interfaces
.implements Lgnu/lists/Sequence;


# instance fields
.field public base:Lgnu/lists/SimpleVector;

.field public gapEnd:I

.field public gapStart:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lgnu/lists/SimpleVector;)V
    .locals 1
    .param p1, "base"    # Lgnu/lists/SimpleVector;

    .line 19
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 20
    iput-object p1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lgnu/lists/GapVector;->gapStart:I

    .line 22
    iget v0, p1, Lgnu/lists/SimpleVector;->size:I

    iput v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    .line 23
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "o"    # Ljava/lang/Object;

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgnu/lists/GapVector;->gapReserve(II)V

    .line 185
    iget-object v1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v1, p1, p2}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    add-int/2addr v1, v0

    iput v1, p0, Lgnu/lists/GapVector;->gapStart:I

    .line 187
    return-void
.end method

.method protected addPos(ILjava/lang/Object;)I
    .locals 3
    .param p1, "ipos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 175
    ushr-int/lit8 v0, p1, 0x1

    .line 176
    .local v0, "index":I
    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    if-lt v0, v1, :cond_0

    .line 177
    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 178
    :cond_0
    invoke-virtual {p0, v0, p2}, Lgnu/lists/GapVector;->add(ILjava/lang/Object;)V

    .line 179
    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x1

    or-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 4
    .param p1, "iposStart"    # I
    .param p2, "iposEnd"    # I
    .param p3, "out"    # Lgnu/lists/Consumer;

    .line 241
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    return-void

    .line 243
    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    .line 244
    .local v0, "i":I
    ushr-int/lit8 v1, p2, 0x1

    .line 245
    .local v1, "end":I
    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    if-ge v0, v2, :cond_2

    .line 247
    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    if-le v1, v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    .line 248
    .local v2, "lim":I
    :goto_0
    shl-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, p1, v3, p3}, Lgnu/lists/GapVector;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 250
    .end local v2    # "lim":I
    :cond_2
    iget v2, p0, Lgnu/lists/GapVector;->gapEnd:I

    if-le v1, v2, :cond_4

    .line 252
    iget v2, p0, Lgnu/lists/GapVector;->gapEnd:I

    if-ge v0, v2, :cond_3

    iget v2, p0, Lgnu/lists/GapVector;->gapEnd:I

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    move v0, v2

    .line 253
    shl-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, p2, p3}, Lgnu/lists/GapVector;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 255
    :cond_4
    return-void
.end method

.method public createPos(IZ)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "isAfter"    # Z

    .line 220
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-le p1, v0, :cond_0

    .line 221
    iget v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 223
    :cond_0
    shl-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p2

    return v0
.end method

.method public fill(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget-object v2, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v2, v2, Lgnu/lists/SimpleVector;->size:I

    invoke-virtual {v0, v1, v2, p1}, Lgnu/lists/SimpleVector;->fill(IILjava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    const/4 v1, 0x0

    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    invoke-virtual {v0, v1, v2, p1}, Lgnu/lists/SimpleVector;->fill(IILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method public fillPosRange(IILjava/lang/Object;)V
    .locals 5
    .param p1, "fromPos"    # I
    .param p2, "toPos"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 71
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v1, v1, Lgnu/lists/SimpleVector;->size:I

    goto :goto_0

    :cond_0
    ushr-int/lit8 v1, p1, 0x1

    .line 72
    .local v1, "from":I
    :goto_0
    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v0, v0, Lgnu/lists/SimpleVector;->size:I

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, p2, 0x1

    .line 73
    .local v0, "to":I
    :goto_1
    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    if-ge v2, v0, :cond_2

    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    goto :goto_2

    :cond_2
    move v2, v0

    .line 74
    .local v2, "limit":I
    :goto_2
    move v3, v1

    .local v3, "i":I
    :goto_3
    if-ge v3, v2, :cond_3

    .line 75
    iget-object v4, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v4, v3, p3}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 76
    .end local v3    # "i":I
    :cond_3
    iget v3, p0, Lgnu/lists/GapVector;->gapEnd:I

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v0, :cond_4

    .line 77
    iget-object v4, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v4, v3, p3}, Lgnu/lists/SimpleVector;->setBuffer(ILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 78
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method protected final gapReserve(I)V
    .locals 1
    .param p1, "size"    # I

    .line 94
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    invoke-virtual {p0, v0, p1}, Lgnu/lists/GapVector;->gapReserve(II)V

    .line 95
    return-void
.end method

.method protected gapReserve(II)V
    .locals 8
    .param p1, "where"    # I
    .param p2, "needed"    # I

    .line 108
    iget v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_2

    .line 111
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v0, v0, Lgnu/lists/SimpleVector;->size:I

    .line 112
    .local v0, "oldLength":I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 113
    .local v1, "newLength":I
    :goto_0
    iget v2, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v3, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v2, v3

    sub-int v2, v0, v2

    .line 114
    .local v2, "size":I
    add-int v3, v2, p2

    .line 115
    .local v3, "minLength":I
    if-ge v1, v3, :cond_1

    .line 116
    move v1, v3

    .line 117
    :cond_1
    sub-int v4, v1, v2

    add-int/2addr v4, p1

    .line 118
    .local v4, "newGapEnd":I
    iget-object v5, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v6, p0, Lgnu/lists/GapVector;->gapStart:I

    iget v7, p0, Lgnu/lists/GapVector;->gapEnd:I

    invoke-virtual {v5, v6, v7, p1, v4}, Lgnu/lists/SimpleVector;->resizeShift(IIII)V

    .line 119
    iput p1, p0, Lgnu/lists/GapVector;->gapStart:I

    .line 120
    iput v4, p0, Lgnu/lists/GapVector;->gapEnd:I

    .line 121
    .end local v0    # "oldLength":I
    .end local v1    # "newLength":I
    .end local v2    # "size":I
    .end local v3    # "minLength":I
    .end local v4    # "newGapEnd":I
    goto :goto_1

    .line 122
    :cond_2
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-eq p1, v0, :cond_3

    .line 123
    invoke-virtual {p0, p1}, Lgnu/lists/GapVector;->shiftGap(I)V

    .line 138
    :cond_3
    :goto_1
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 50
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-lt p1, v0, :cond_0

    .line 51
    iget v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 52
    :cond_0
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v0, p1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNextKind(I)I
    .locals 1
    .param p1, "ipos"    # I

    .line 44
    invoke-virtual {p0, p1}, Lgnu/lists/GapVector;->hasNext(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v0}, Lgnu/lists/SimpleVector;->getElementKind()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSegment(II)I
    .locals 3
    .param p1, "where"    # I
    .param p2, "len"    # I

    .line 147
    invoke-virtual {p0}, Lgnu/lists/GapVector;->size()I

    move-result v0

    .line 148
    .local v0, "length":I
    if-ltz p1, :cond_6

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    if-gez p2, :cond_1

    .line 151
    const/4 p2, 0x0

    goto :goto_0

    .line 152
    :cond_1
    add-int v1, p1, p2

    if-le v1, v0, :cond_2

    .line 153
    sub-int p2, v0, p1

    .line 156
    :cond_2
    :goto_0
    add-int v1, p1, p2

    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    if-gt v1, v2, :cond_3

    .line 157
    return p1

    .line 158
    :cond_3
    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    if-lt p1, v1, :cond_4

    .line 159
    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    return v1

    .line 161
    :cond_4
    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v1, p1

    shr-int/lit8 v2, p2, 0x1

    if-le v1, v2, :cond_5

    .line 163
    add-int v1, p1, p2

    invoke-virtual {p0, v1}, Lgnu/lists/GapVector;->shiftGap(I)V

    .line 164
    return p1

    .line 168
    :cond_5
    invoke-virtual {p0, p1}, Lgnu/lists/GapVector;->shiftGap(I)V

    .line 169
    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    return v1

    .line 149
    :cond_6
    :goto_1
    const/4 v1, -0x1

    return v1
.end method

.method public hasNext(I)Z
    .locals 3
    .param p1, "ipos"    # I

    .line 36
    ushr-int/lit8 v0, p1, 0x1

    .line 37
    .local v0, "index":I
    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    if-lt v0, v1, :cond_0

    .line 38
    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 39
    :cond_0
    iget-object v1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v1, v1, Lgnu/lists/SimpleVector;->size:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isAfterPos(I)Z
    .locals 1
    .param p1, "ipos"    # I

    .line 228
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected nextIndex(I)I
    .locals 3
    .param p1, "ipos"    # I

    .line 233
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v0, v0, Lgnu/lists/SimpleVector;->size:I

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    .line 234
    .local v0, "index":I
    :goto_0
    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    if-le v0, v1, :cond_1

    .line 235
    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 236
    :cond_1
    return v0
.end method

.method protected removePosRange(II)V
    .locals 3
    .param p1, "ipos0"    # I
    .param p2, "ipos1"    # I

    .line 191
    ushr-int/lit8 p1, p1, 0x1

    .line 192
    ushr-int/lit8 p2, p2, 0x1

    .line 193
    iget v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    if-le p1, v0, :cond_0

    .line 194
    iget v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    sub-int v0, p1, v0

    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lgnu/lists/GapVector;->shiftGap(I)V

    goto :goto_0

    .line 195
    :cond_0
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-ge p2, v0, :cond_1

    .line 196
    invoke-virtual {p0, p2}, Lgnu/lists/GapVector;->shiftGap(I)V

    .line 197
    :cond_1
    :goto_0
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-ge p1, v0, :cond_2

    .line 199
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 200
    iput p1, p0, Lgnu/lists/GapVector;->gapStart:I

    .line 202
    :cond_2
    iget v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    if-le p2, v0, :cond_3

    .line 204
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/GapVector;->gapEnd:I

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lgnu/lists/SimpleVector;->clearBuffer(II)V

    .line 205
    iput p2, p0, Lgnu/lists/GapVector;->gapEnd:I

    .line 207
    :cond_3
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 58
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    if-lt p1, v0, :cond_0

    .line 59
    iget v0, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v1, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 60
    :cond_0
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v0, p1, p2}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected shiftGap(I)V
    .locals 4
    .param p1, "newGapStart"    # I

    .line 82
    iget v0, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int v0, p1, v0

    .line 83
    .local v0, "delta":I
    if-lez v0, :cond_0

    .line 84
    iget-object v1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v2, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v3, p0, Lgnu/lists/GapVector;->gapStart:I

    invoke-virtual {v1, v2, v3, v0}, Lgnu/lists/SimpleVector;->shift(III)V

    goto :goto_0

    .line 85
    :cond_0
    if-gez v0, :cond_1

    .line 86
    iget-object v1, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v2, p0, Lgnu/lists/GapVector;->gapEnd:I

    add-int/2addr v2, v0

    neg-int v3, v0

    invoke-virtual {v1, p1, v2, v3}, Lgnu/lists/SimpleVector;->shift(III)V

    .line 87
    :cond_1
    :goto_0
    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    .line 88
    iput p1, p0, Lgnu/lists/GapVector;->gapStart:I

    .line 89
    return-void
.end method

.method public size()I
    .locals 3

    .line 31
    iget-object v0, p0, Lgnu/lists/GapVector;->base:Lgnu/lists/SimpleVector;

    iget v0, v0, Lgnu/lists/SimpleVector;->size:I

    iget v1, p0, Lgnu/lists/GapVector;->gapEnd:I

    iget v2, p0, Lgnu/lists/GapVector;->gapStart:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method
