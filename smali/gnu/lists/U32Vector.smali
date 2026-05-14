.class public Lgnu/lists/U32Vector;
.super Lgnu/lists/SimpleVector;
.source "U32Vector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# instance fields
.field data:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 19
    sget-object v0, Lgnu/lists/S32Vector;->empty:[I

    iput-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 32
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 33
    new-array v0, p1, [I

    iput-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    .line 34
    iput p1, p0, Lgnu/lists/U32Vector;->size:I

    .line 35
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "value"    # I

    .line 23
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 24
    new-array v0, p1, [I

    .line 25
    .local v0, "array":[I
    iput-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    .line 26
    iput p1, p0, Lgnu/lists/U32Vector;->size:I

    .line 27
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 28
    aput p2, v0, p1

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

    new-array v0, v0, [I

    iput-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    .line 46
    invoke-virtual {p0, p1}, Lgnu/lists/U32Vector;->addAll(Ljava/util/Collection;)Z

    .line 47
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "data"    # [I

    .line 38
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 39
    iput-object p1, p0, Lgnu/lists/U32Vector;->data:[I

    .line 40
    array-length v0, p1

    iput v0, p0, Lgnu/lists/U32Vector;->size:I

    .line 41
    return-void
.end method


# virtual methods
.method protected clearBuffer(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 119
    nop

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 120
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "start":I
    .local v1, "start":I
    const/4 v2, 0x0

    aput v2, v0, p1

    move p1, v1

    goto :goto_0

    .line 121
    .end local v1    # "start":I
    .restart local p1    # "start":I
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 153
    move-object v0, p1

    check-cast v0, Lgnu/lists/U32Vector;

    invoke-static {p0, v0}, Lgnu/lists/U32Vector;->compareToLong(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I

    move-result v0

    return v0
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 2
    .param p1, "ipos"    # I
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 132
    ushr-int/lit8 v0, p1, 0x1

    .line 133
    .local v0, "index":I
    iget v1, p0, Lgnu/lists/U32Vector;->size:I

    if-lt v0, v1, :cond_0

    .line 134
    const/4 v1, 0x0

    return v1

    .line 135
    :cond_0
    iget-object v1, p0, Lgnu/lists/U32Vector;->data:[I

    aget v1, v1, v0

    invoke-interface {p2, v1}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 136
    const/4 v1, 0x1

    return v1
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 3
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
    iget v2, p0, Lgnu/lists/U32Vector;->size:I

    if-le v1, v2, :cond_1

    .line 146
    iget v1, p0, Lgnu/lists/U32Vector;->size:I

    .line 147
    :cond_1
    :goto_0
    if-ge v0, v1, :cond_2

    .line 148
    iget-object v2, p0, Lgnu/lists/U32Vector;->data:[I

    aget v2, v2, v0

    invoke-interface {p3, v2}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_2
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 88
    iget v0, p0, Lgnu/lists/U32Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    aget v0, v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObjectUnsigned(I)Ljava/lang/Object;

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
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 95
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    aget v0, v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObjectUnsigned(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBufferLength()I
    .locals 1

    .line 52
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    array-length v0, v0

    return v0
.end method

.method public getElementKind()I
    .locals 1

    .line 125
    const/16 v0, 0x13

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 128
    const-string v0, "u32"

    return-object v0
.end method

.method public final intAtBuffer(I)I
    .locals 1
    .param p1, "index"    # I

    .line 71
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    aget v0, v0, p1

    return v0
.end method

.method public final longAt(I)J
    .locals 2
    .param p1, "index"    # I

    .line 81
    iget v0, p0, Lgnu/lists/U32Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lgnu/lists/U32Vector;->longAtBuffer(I)J

    move-result-wide v0

    return-wide v0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final longAtBuffer(I)J
    .locals 4
    .param p1, "index"    # I

    .line 76
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    aget v0, v0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 171
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 172
    .local v0, "size":I
    new-array v1, v0, [I

    .line 173
    .local v1, "data":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 174
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    aput v3, v1, v2

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Lgnu/lists/U32Vector;->data:[I

    .line 176
    iput v0, p0, Lgnu/lists/U32Vector;->size:I

    .line 177
    return-void
.end method

.method public setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    aget v0, v0, p1

    .line 101
    .local v0, "old":I
    iget-object v1, p0, Lgnu/lists/U32Vector;->data:[I

    invoke-static {p2}, Lgnu/lists/Convert;->toIntUnsigned(Ljava/lang/Object;)I

    move-result v2

    aput v2, v1, p1

    .line 102
    invoke-static {v0}, Lgnu/lists/Convert;->toObjectUnsigned(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public setBufferLength(I)V
    .locals 5
    .param p1, "length"    # I

    .line 57
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    array-length v0, v0

    .line 58
    .local v0, "oldLength":I
    if-eq v0, p1, :cond_1

    .line 60
    new-array v1, p1, [I

    .line 61
    .local v1, "tmp":[I
    iget-object v2, p0, Lgnu/lists/U32Vector;->data:[I

    if-ge v0, p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object v1, p0, Lgnu/lists/U32Vector;->data:[I

    .line 65
    .end local v1    # "tmp":[I
    :cond_1
    return-void
.end method

.method public final setIntAt(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 107
    iget v0, p0, Lgnu/lists/U32Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    aput p2, v0, p1

    .line 110
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final setIntAtBuffer(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 114
    iget-object v0, p0, Lgnu/lists/U32Vector;->data:[I

    aput p2, v0, p1

    .line 115
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget v0, p0, Lgnu/lists/U32Vector;->size:I

    .line 163
    .local v0, "size":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 165
    iget-object v2, p0, Lgnu/lists/U32Vector;->data:[I

    aget v2, v2, v1

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
