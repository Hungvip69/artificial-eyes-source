.class public Lgnu/lists/U64Vector;
.super Lgnu/lists/SimpleVector;
.source "U64Vector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# instance fields
.field data:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 19
    sget-object v0, Lgnu/lists/S64Vector;->empty:[J

    iput-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 32
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 33
    new-array v0, p1, [J

    iput-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    .line 34
    iput p1, p0, Lgnu/lists/U64Vector;->size:I

    .line 35
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "value"    # J

    .line 23
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 24
    new-array v0, p1, [J

    .line 25
    .local v0, "array":[J
    iput-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    .line 26
    iput p1, p0, Lgnu/lists/U64Vector;->size:I

    .line 27
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 28
    aput-wide p2, v0, p1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public constructor <init>(Lgnu/lists/Sequence;)V
    .locals 1
    .param p1, "seq"    # Lgnu/lists/Sequence;

    .line 44
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 45
    invoke-interface {p1}, Lgnu/lists/Sequence;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    .line 46
    invoke-virtual {p0, p1}, Lgnu/lists/U64Vector;->addAll(Ljava/util/Collection;)Z

    .line 47
    return-void
.end method

.method public constructor <init>([J)V
    .locals 1
    .param p1, "data"    # [J

    .line 38
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 39
    iput-object p1, p0, Lgnu/lists/U64Vector;->data:[J

    .line 40
    array-length v0, p1

    iput v0, p0, Lgnu/lists/U64Vector;->size:I

    .line 41
    return-void
.end method


# virtual methods
.method protected clearBuffer(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 119
    nop

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 120
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "start":I
    .local v1, "start":I
    const-wide/16 v2, 0x0

    aput-wide v2, v0, p1

    move p1, v1

    goto :goto_0

    .line 121
    .end local v1    # "start":I
    .restart local p1    # "start":I
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 17
    .param p1, "obj"    # Ljava/lang/Object;

    .line 153
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lgnu/lists/U64Vector;

    .line 154
    .local v1, "vec2":Lgnu/lists/U64Vector;
    iget-object v2, v0, Lgnu/lists/U64Vector;->data:[J

    .line 155
    .local v2, "arr1":[J
    iget-object v3, v1, Lgnu/lists/U64Vector;->data:[J

    .line 156
    .local v3, "arr2":[J
    iget v4, v0, Lgnu/lists/U64Vector;->size:I

    .line 157
    .local v4, "n1":I
    iget v5, v1, Lgnu/lists/U64Vector;->size:I

    .line 158
    .local v5, "n2":I
    if-le v4, v5, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    .line 159
    .local v6, "n":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_3

    .line 161
    aget-wide v8, v2, v7

    .line 162
    .local v8, "v1":J
    aget-wide v10, v3, v7

    .line 163
    .local v10, "v2":J
    cmp-long v12, v8, v10

    if-eqz v12, :cond_2

    .line 164
    const-wide/high16 v12, -0x8000000000000000L

    xor-long v14, v8, v12

    xor-long/2addr v12, v10

    cmp-long v16, v14, v12

    if-lez v16, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, -0x1

    :goto_2
    return v12

    .line 159
    .end local v8    # "v1":J
    .end local v10    # "v2":J
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 166
    .end local v7    # "i":I
    :cond_3
    sub-int v7, v4, v5

    return v7
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 4
    .param p1, "ipos"    # I
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 132
    ushr-int/lit8 v0, p1, 0x1

    .line 133
    .local v0, "index":I
    iget v1, p0, Lgnu/lists/U64Vector;->size:I

    if-lt v0, v1, :cond_0

    .line 134
    const/4 v1, 0x0

    return v1

    .line 135
    :cond_0
    iget-object v1, p0, Lgnu/lists/U64Vector;->data:[J

    aget-wide v2, v1, v0

    invoke-interface {p2, v2, v3}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 136
    const/4 v1, 0x1

    return v1
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 5
    .param p1, "iposStart"    # I
    .param p2, "iposEnd"    # I
    .param p3, "out"    # Lgnu/lists/Consumer;

    .line 141
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    return-void

    .line 143
    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    .line 144
    .local v0, "i":I
    ushr-int/lit8 v1, p2, 0x1

    .line 145
    .local v1, "end":I
    iget v2, p0, Lgnu/lists/U64Vector;->size:I

    if-le v1, v2, :cond_1

    .line 146
    iget v1, p0, Lgnu/lists/U64Vector;->size:I

    .line 147
    :cond_1
    :goto_0
    if-ge v0, v1, :cond_2

    .line 148
    iget-object v2, p0, Lgnu/lists/U64Vector;->data:[J

    aget-wide v3, v2, v0

    invoke-interface {p3, v3, v4}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_2
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .line 88
    iget v0, p0, Lgnu/lists/U64Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Lgnu/lists/Convert;->toObjectUnsigned(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 1

    .line 67
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .line 95
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Lgnu/lists/Convert;->toObjectUnsigned(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBufferLength()I
    .locals 1

    .line 52
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    array-length v0, v0

    return v0
.end method

.method public getElementKind()I
    .locals 1

    .line 125
    const/16 v0, 0x17

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 128
    const-string v0, "u64"

    return-object v0
.end method

.method public final intAtBuffer(I)I
    .locals 3
    .param p1, "index"    # I

    .line 71
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    aget-wide v1, v0, p1

    long-to-int v0, v1

    return v0
.end method

.method public final longAt(I)J
    .locals 3
    .param p1, "index"    # I

    .line 76
    iget v0, p0, Lgnu/lists/U64Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    aget-wide v1, v0, p1

    return-wide v1

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final longAtBuffer(I)J
    .locals 3
    .param p1, "index"    # I

    .line 83
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 184
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 185
    .local v0, "size":I
    new-array v1, v0, [J

    .line 186
    .local v1, "data":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 187
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Lgnu/lists/U64Vector;->data:[J

    .line 189
    iput v0, p0, Lgnu/lists/U64Vector;->size:I

    .line 190
    return-void
.end method

.method public setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    aget-wide v1, v0, p1

    .line 101
    .local v1, "old":J
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    invoke-static {p2}, Lgnu/lists/Convert;->toLongUnsigned(Ljava/lang/Object;)J

    move-result-wide v3

    aput-wide v3, v0, p1

    .line 102
    invoke-static {v1, v2}, Lgnu/lists/Convert;->toObjectUnsigned(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setBufferLength(I)V
    .locals 5
    .param p1, "length"    # I

    .line 57
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    array-length v0, v0

    .line 58
    .local v0, "oldLength":I
    if-eq v0, p1, :cond_1

    .line 60
    new-array v1, p1, [J

    .line 61
    .local v1, "tmp":[J
    iget-object v2, p0, Lgnu/lists/U64Vector;->data:[J

    if-ge v0, p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object v1, p0, Lgnu/lists/U64Vector;->data:[J

    .line 65
    .end local v1    # "tmp":[J
    :cond_1
    return-void
.end method

.method public final setLongAt(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 107
    iget v0, p0, Lgnu/lists/U64Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    aput-wide p2, v0, p1

    .line 110
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final setLongAtBuffer(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 114
    iget-object v0, p0, Lgnu/lists/U64Vector;->data:[J

    aput-wide p2, v0, p1

    .line 115
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget v0, p0, Lgnu/lists/U64Vector;->size:I

    .line 176
    .local v0, "size":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 178
    iget-object v2, p0, Lgnu/lists/U64Vector;->data:[J

    aget-wide v3, v2, v1

    invoke-interface {p1, v3, v4}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
