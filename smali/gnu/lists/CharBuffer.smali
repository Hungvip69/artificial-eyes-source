.class public Lgnu/lists/CharBuffer;
.super Lgnu/lists/StableVector;
.source "CharBuffer.java"

# interfaces
.implements Lgnu/lists/CharSeq;
.implements Ljava/io/Serializable;


# instance fields
.field private string:Lgnu/lists/FString;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lgnu/lists/StableVector;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .line 26
    new-instance v0, Lgnu/lists/FString;

    invoke-direct {v0, p1}, Lgnu/lists/FString;-><init>(I)V

    invoke-direct {p0, v0}, Lgnu/lists/CharBuffer;-><init>(Lgnu/lists/FString;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lgnu/lists/FString;)V
    .locals 0
    .param p1, "str"    # Lgnu/lists/FString;

    .line 20
    invoke-direct {p0, p1}, Lgnu/lists/StableVector;-><init>(Lgnu/lists/SimpleVector;)V

    .line 21
    iput-object p1, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    .line 22
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .param p1, "index"    # I

    .line 38
    iget v0, p0, Lgnu/lists/CharBuffer;->gapStart:I

    if-lt p1, v0, :cond_0

    .line 39
    iget v0, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    iget v1, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 40
    :cond_0
    iget-object v0, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    invoke-virtual {v0, p1}, Lgnu/lists/FString;->charAt(I)C

    move-result v0

    return v0
.end method

.method public consume(IILgnu/lists/Consumer;)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "dest"    # Lgnu/lists/Consumer;

    .line 207
    iget-object v0, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v0, v0, Lgnu/lists/FString;->data:[C

    .line 208
    .local v0, "array":[C
    iget v1, p0, Lgnu/lists/CharBuffer;->gapStart:I

    if-ge p1, v1, :cond_1

    .line 210
    iget v1, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v1, p1

    .line 211
    .local v1, "count0":I
    if-le v1, p2, :cond_0

    .line 212
    move v1, p2

    .line 213
    :cond_0
    invoke-interface {p3, v0, p1, v1}, Lgnu/lists/Consumer;->write([CII)V

    .line 214
    sub-int/2addr p2, v1

    .line 215
    add-int/2addr p1, p2

    .line 217
    .end local v1    # "count0":I
    :cond_1
    if-lez p2, :cond_2

    .line 219
    iget v1, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    iget v2, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 220
    invoke-interface {p3, v0, p1, p2}, Lgnu/lists/Consumer;->write([CII)V

    .line 222
    :cond_2
    return-void
.end method

.method public delete(II)V
    .locals 1
    .param p1, "where"    # I
    .param p2, "count"    # I

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/lists/CharBuffer;->createPos(IZ)I

    move-result v0

    .line 193
    .local v0, "ipos":I
    invoke-virtual {p0, v0, p2}, Lgnu/lists/CharBuffer;->removePos(II)V

    .line 194
    invoke-virtual {p0, v0}, Lgnu/lists/CharBuffer;->releasePos(I)V

    .line 195
    return-void
.end method

.method public dump()V
    .locals 8

    .line 277
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer Content dump.  size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  buffer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 278
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "before gap: \""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 279
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v2

    iget v3, p0, Lgnu/lists/CharBuffer;->gapStart:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 280
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\" (gapStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgnu/lists/CharBuffer;->gapStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gapEnd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 281
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "after gap: \""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 282
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v2

    iget v3, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v5

    array-length v5, v5

    iget v6, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 283
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lgnu/lists/CharBuffer;->positions:[I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/lists/CharBuffer;->positions:[I

    array-length v4, v0

    :goto_0
    move v0, v4

    .line 285
    .local v0, "poslen":I
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Positions (size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " free:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lgnu/lists/CharBuffer;->free:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 286
    const/4 v1, 0x0

    .line 287
    .local v1, "isFree":[Z
    iget v2, p0, Lgnu/lists/CharBuffer;->free:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_1

    .line 289
    iget-object v2, p0, Lgnu/lists/CharBuffer;->positions:[I

    array-length v2, v2

    new-array v1, v2, [Z

    .line 290
    iget v2, p0, Lgnu/lists/CharBuffer;->free:I

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 291
    const/4 v4, 0x1

    aput-boolean v4, v1, v2

    .line 290
    iget-object v4, p0, Lgnu/lists/CharBuffer;->positions:[I

    aget v2, v4, v2

    goto :goto_1

    .line 293
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 295
    iget-object v4, p0, Lgnu/lists/CharBuffer;->positions:[I

    aget v4, v4, v2

    .line 296
    .local v4, "pos":I
    iget v5, p0, Lgnu/lists/CharBuffer;->free:I

    if-ne v5, v3, :cond_2

    if-eq v4, v3, :cond_3

    goto :goto_3

    :cond_2
    aget-boolean v5, v1, v2

    if-nez v5, :cond_3

    .line 297
    :goto_3
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "position#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isAfter:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 293
    .end local v4    # "pos":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 299
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public final fill(C)V
    .locals 3
    .param p1, "value"    # C

    .line 181
    iget-object v0, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v0, v0, Lgnu/lists/FString;->data:[C

    .line 182
    .local v0, "array":[C
    array-length v1, v0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    if-lt v1, v2, :cond_0

    .line 183
    aput-char p1, v0, v1

    goto :goto_0

    .line 184
    .end local v1    # "i":I
    :cond_0
    iget v1, p0, Lgnu/lists/CharBuffer;->gapStart:I

    .restart local v1    # "i":I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 185
    aput-char p1, v0, v1

    goto :goto_1

    .line 186
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public fill(IIC)V
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # C

    .line 166
    iget-object v0, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v0, v0, Lgnu/lists/FString;->data:[C

    .line 167
    .local v0, "array":[C
    move v1, p1

    .line 168
    .local v1, "i":I
    iget v2, p0, Lgnu/lists/CharBuffer;->gapStart:I

    if-ge v2, p2, :cond_0

    iget v2, p0, Lgnu/lists/CharBuffer;->gapStart:I

    goto :goto_0

    :cond_0
    move v2, p2

    .line 169
    .local v2, "limit":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 170
    aput-char p3, v0, v1

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_1
    iget v3, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    iget v4, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v3, v4

    .line 172
    .local v3, "gapSize":I
    add-int v1, v2, v3

    .line 173
    add-int/2addr v2, p2

    .line 174
    :goto_1
    if-ge v1, v2, :cond_2

    .line 175
    aput-char p3, v0, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 176
    :cond_2
    return-void
.end method

.method public getArray()[C
    .locals 1

    .line 188
    iget-object v0, p0, Lgnu/lists/CharBuffer;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v0}, Lgnu/lists/SimpleVector;->getBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public getChars(II[CI)V
    .locals 3
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    .line 113
    iget-object v0, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v0, v0, Lgnu/lists/FString;->data:[C

    .line 115
    .local v0, "array":[C
    iget v1, p0, Lgnu/lists/CharBuffer;->gapStart:I

    if-ge p1, v1, :cond_1

    .line 117
    iget v1, p0, Lgnu/lists/CharBuffer;->gapStart:I

    if-ge p2, v1, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    iget v1, p0, Lgnu/lists/CharBuffer;->gapStart:I

    :goto_0
    sub-int/2addr v1, p1

    .line 118
    .local v1, "count":I
    if-lez v1, :cond_1

    .line 120
    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    add-int/2addr p1, v1

    .line 122
    add-int/2addr p4, v1

    .line 125
    .end local v1    # "count":I
    :cond_1
    iget v1, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    iget v2, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v1, v2

    .line 126
    .local v1, "gapSize":I
    add-int/2addr p1, v1

    .line 127
    add-int/2addr p2, v1

    .line 128
    sub-int v2, p2, p1

    .line 129
    .local v2, "count":I
    if-lez v2, :cond_2

    .line 130
    invoke-static {v0, p1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    :cond_2
    return-void
.end method

.method public indexOf(II)I
    .locals 7
    .param p1, "ch"    # I
    .param p2, "fromChar"    # I

    .line 46
    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_0

    .line 48
    sub-int v0, p1, v0

    shr-int/lit8 v0, v0, 0xa

    const v1, 0xd800

    add-int/2addr v0, v1

    int-to-char v0, v0

    .line 49
    .local v0, "c1":C
    and-int/lit16 v1, p1, 0x3ff

    const v2, 0xdc00

    add-int/2addr v1, v2

    int-to-char v1, v1

    .local v1, "c2":C
    goto :goto_0

    .line 53
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_0
    int-to-char v0, p1

    .line 54
    .restart local v0    # "c1":C
    const/4 v1, 0x0

    .line 56
    .restart local v1    # "c2":C
    :goto_0
    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v2

    .line 57
    .local v2, "arr":[C
    move v3, p2

    .line 58
    .local v3, "i":I
    iget v4, p0, Lgnu/lists/CharBuffer;->gapStart:I

    .line 59
    .local v4, "limit":I
    if-lt v3, v4, :cond_1

    .line 61
    iget v5, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    iget v6, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 62
    array-length v4, v2

    .line 66
    :cond_1
    :goto_1
    if-ne v3, v4, :cond_3

    .line 68
    array-length v4, v2

    .line 69
    if-ge v3, v4, :cond_2

    .line 70
    iget v3, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    goto :goto_2

    .line 80
    :cond_2
    const/4 v5, -0x1

    return v5

    .line 74
    :cond_3
    :goto_2
    aget-char v5, v2, v3

    if-ne v5, v0, :cond_7

    if-eqz v1, :cond_5

    add-int/lit8 v5, v3, 0x1

    if-ge v5, v4, :cond_4

    add-int/lit8 v5, v3, 0x1

    aget-char v5, v2, v5

    if-ne v5, v1, :cond_7

    goto :goto_3

    :cond_4
    iget v5, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    array-length v6, v2

    if-ge v5, v6, :cond_7

    iget v5, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    aget-char v5, v2, v5

    if-ne v5, v1, :cond_7

    .line 78
    :cond_5
    :goto_3
    iget v5, p0, Lgnu/lists/CharBuffer;->gapStart:I

    if-le v3, v5, :cond_6

    iget v5, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    iget v6, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v5, v6

    sub-int v5, v3, v5

    goto :goto_4

    :cond_6
    move v5, v3

    :goto_4
    return v5

    .line 64
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public insert(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "where"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "beforeMarkers"    # Z

    .line 199
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 200
    .local v0, "len":I
    invoke-virtual {p0, p1, v0}, Lgnu/lists/CharBuffer;->gapReserve(II)V

    .line 201
    iget-object v1, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v1, v1, Lgnu/lists/FString;->data:[C

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0, v1, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 202
    iget v1, p0, Lgnu/lists/CharBuffer;->gapStart:I

    add-int/2addr v1, v0

    iput v1, p0, Lgnu/lists/CharBuffer;->gapStart:I

    .line 203
    return-void
.end method

.method public lastIndexOf(II)I
    .locals 4
    .param p1, "ch"    # I
    .param p2, "fromChar"    # I

    .line 86
    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_0

    .line 88
    sub-int v0, p1, v0

    shr-int/lit8 v0, v0, 0xa

    const v1, 0xd800

    add-int/2addr v0, v1

    int-to-char v0, v0

    .line 89
    .local v0, "c1":C
    and-int/lit16 v1, p1, 0x3ff

    const v2, 0xdc00

    add-int/2addr v1, v2

    int-to-char v1, v1

    .local v1, "c2":C
    goto :goto_0

    .line 93
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_0
    const/4 v0, 0x0

    .line 94
    .restart local v0    # "c1":C
    int-to-char v1, p1

    .line 96
    .restart local v1    # "c2":C
    :goto_0
    move v2, p2

    .local v2, "i":I
    :cond_1
    const/4 v3, -0x1

    add-int/2addr v2, v3

    if-ltz v2, :cond_3

    .line 98
    invoke-virtual {p0, v2}, Lgnu/lists/CharBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_1

    .line 100
    if-nez v0, :cond_2

    .line 101
    return v2

    .line 102
    :cond_2
    if-lez v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Lgnu/lists/CharBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_1

    .line 103
    add-int/lit8 v3, v2, -0x1

    return v3

    .line 106
    .end local v2    # "i":I
    :cond_3
    return v3
.end method

.method public length()I
    .locals 1

    .line 33
    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->size()I

    move-result v0

    return v0
.end method

.method public setCharAt(IC)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # C

    .line 136
    iget v0, p0, Lgnu/lists/CharBuffer;->gapStart:I

    if-lt p1, v0, :cond_0

    .line 137
    iget v0, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    iget v1, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 138
    :cond_0
    iget-object v0, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    invoke-virtual {v0, p1, p2}, Lgnu/lists/FString;->setCharAt(IC)V

    .line 139
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 155
    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->size()I

    move-result v0

    .line 156
    .local v0, "sz":I
    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    if-gt p2, v0, :cond_0

    .line 158
    new-instance v1, Lgnu/lists/SubCharSeq;

    iget-object v2, p0, Lgnu/lists/CharBuffer;->base:Lgnu/lists/SimpleVector;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lgnu/lists/SimpleVector;->createPos(IZ)I

    move-result v2

    iget-object v3, p0, Lgnu/lists/CharBuffer;->base:Lgnu/lists/SimpleVector;

    const/4 v4, 0x1

    invoke-virtual {v3, p2, v4}, Lgnu/lists/SimpleVector;->createPos(IZ)I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lgnu/lists/SubCharSeq;-><init>(Lgnu/lists/AbstractSequence;II)V

    return-object v1

    .line 157
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public substring(II)Ljava/lang/String;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 143
    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->size()I

    move-result v0

    .line 144
    .local v0, "sz":I
    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    if-gt p2, v0, :cond_0

    .line 146
    sub-int v1, p2, p1

    .line 147
    .local v1, "len":I
    invoke-virtual {p0, p1, v1}, Lgnu/lists/CharBuffer;->getSegment(II)I

    move-result p1

    .line 148
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v3

    invoke-direct {v2, v3, p1, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 145
    .end local v1    # "len":I
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 226
    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->size()I

    move-result v0

    .line 227
    .local v0, "len":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lgnu/lists/CharBuffer;->getSegment(II)I

    move-result v1

    .line 228
    .local v1, "start":I
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public writeTo(IILjava/io/Writer;)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "dest"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v0, v0, Lgnu/lists/FString;->data:[C

    .line 252
    .local v0, "array":[C
    iget v1, p0, Lgnu/lists/CharBuffer;->gapStart:I

    if-ge p1, v1, :cond_1

    .line 254
    iget v1, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v1, p1

    .line 255
    .local v1, "count0":I
    if-le v1, p2, :cond_0

    .line 256
    move v1, p2

    .line 257
    :cond_0
    invoke-virtual {p3, v0, p1, v1}, Ljava/io/Writer;->write([CII)V

    .line 258
    sub-int/2addr p2, v1

    .line 259
    add-int/2addr p1, p2

    .line 261
    .end local v1    # "count0":I
    :cond_1
    if-lez p2, :cond_2

    .line 263
    iget v1, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    iget v2, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 264
    invoke-virtual {p3, v0, p1, p2}, Ljava/io/Writer;->write([CII)V

    .line 266
    :cond_2
    return-void
.end method

.method public writeTo(IILjava/lang/Appendable;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "dest"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    instance-of v0, p3, Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 236
    move-object v0, p3

    check-cast v0, Ljava/io/Writer;

    invoke-virtual {p0, p1, p2, v0}, Lgnu/lists/CharBuffer;->writeTo(IILjava/io/Writer;)V

    goto :goto_0

    .line 238
    :cond_0
    add-int v0, p1, p2

    invoke-interface {p3, p0, p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 239
    :goto_0
    return-void
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 4
    .param p1, "dest"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v0, v0, Lgnu/lists/FString;->data:[C

    .line 271
    .local v0, "array":[C
    const/4 v1, 0x0

    iget v2, p0, Lgnu/lists/CharBuffer;->gapStart:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 272
    iget v1, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    array-length v2, v0

    iget v3, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 273
    return-void
.end method

.method public writeTo(Ljava/lang/Appendable;)V
    .locals 2
    .param p1, "dest"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lgnu/lists/CharBuffer;->writeTo(IILjava/lang/Appendable;)V

    .line 245
    return-void
.end method
