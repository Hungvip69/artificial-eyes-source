.class public Lgnu/lists/S64Vector;
.super Lgnu/lists/SimpleVector;
.source "S64Vector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# static fields
.field protected static empty:[J


# instance fields
.field data:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Lgnu/lists/S64Vector;->empty:[J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 20
    sget-object v0, Lgnu/lists/S64Vector;->empty:[J

    iput-object v0, p0, Lgnu/lists/S64Vector;->data:[J

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 33
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 34
    new-array v0, p1, [J

    iput-object v0, p0, Lgnu/lists/S64Vector;->data:[J

    .line 35
    iput p1, p0, Lgnu/lists/S64Vector;->size:I

    .line 36
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "value"    # J

    .line 24
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 25
    new-array v0, p1, [J

    .line 26
    .local v0, "array":[J
    iput-object v0, p0, Lgnu/lists/S64Vector;->data:[J

    .line 27
    iput p1, p0, Lgnu/lists/S64Vector;->size:I

    .line 28
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 29
    aput-wide p2, v0, p1

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public constructor <init>(Lgnu/lists/Sequence;)V
    .locals 1
    .param p1, "seq"    # Lgnu/lists/Sequence;

    .line 45
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 46
    invoke-interface {p1}, Lgnu/lists/Sequence;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lgnu/lists/S64Vector;->data:[J

    .line 47
    invoke-virtual {p0, p1}, Lgnu/lists/S64Vector;->addAll(Ljava/util/Collection;)Z

    .line 48
    return-void
.end method

.method public constructor <init>([J)V
    .locals 1
    .param p1, "data"    # [J

    .line 39
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 40
    iput-object p1, p0, Lgnu/lists/S64Vector;->data:[J

    .line 41
    array-length v0, p1

    iput v0, p0, Lgnu/lists/S64Vector;->size:I

    .line 42
    return-void
.end method


# virtual methods
.method protected clearBuffer(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 120
    nop

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 121
    iget-object v0, p0, Lgnu/lists/S64Vector;->data:[J

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "start":I
    .local v1, "start":I
    const-wide/16 v2, 0x0

    aput-wide v2, v0, p1

    move p1, v1

    goto :goto_0

    .line 122
    .end local v1    # "start":I
    .restart local p1    # "start":I
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 154
    move-object v0, p1

    check-cast v0, Lgnu/lists/S64Vector;

    invoke-static {p0, v0}, Lgnu/lists/S64Vector;->compareToLong(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I

    move-result v0

    return v0
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 4
    .param p1, "ipos"    # I
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 133
    ushr-int/lit8 v0, p1, 0x1

    .line 134
    .local v0, "index":I
    iget v1, p0, Lgnu/lists/S64Vector;->size:I

    if-lt v0, v1, :cond_0

    .line 135
    const/4 v1, 0x0

    return v1

    .line 136
    :cond_0
    iget-object v1, p0, Lgnu/lists/S64Vector;->data:[J

    aget-wide v2, v1, v0

    invoke-interface {p2, v2, v3}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 137
    const/4 v1, 0x1

    return v1
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 5
    .param p1, "iposStart"    # I
    .param p2, "iposEnd"    # I
    .param p3, "out"    # Lgnu/lists/Consumer;

    .line 142
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    return-void

    .line 144
    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    .line 145
    .local v0, "i":I
    ushr-int/lit8 v1, p2, 0x1

    .line 146
    .local v1, "end":I
    iget v2, p0, Lgnu/lists/S64Vector;->size:I

    if-le v1, v2, :cond_1

    .line 147
    iget v1, p0, Lgnu/lists/S64Vector;->size:I

    .line 148
    :cond_1
    :goto_0
    if-ge v0, v1, :cond_2

    .line 149
    iget-object v2, p0, Lgnu/lists/S64Vector;->data:[J

    aget-wide v3, v2, v0

    invoke-interface {p3, v3, v4}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_2
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .line 84
    iget v0, p0, Lgnu/lists/S64Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lgnu/lists/S64Vector;->data:[J

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Lgnu/lists/Convert;->toObject(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 1

    .line 68
    iget-object v0, p0, Lgnu/lists/S64Vector;->data:[J

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .line 91
    iget-object v0, p0, Lgnu/lists/S64Vector;->data:[J

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Lgnu/lists/Convert;->toObject(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBufferLength()I
    .locals 1

    .line 53
    iget-object v0, p0, Lgnu/lists/S64Vector;->data:[J

    array-length v0, v0

    return v0
.end method

.method public getElementKind()I
    .locals 1

    .line 126
    const/16 v0, 0x18

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 129
    const-string v0, "s64"

    return-object v0
.end method

.method public final intAtBuffer(I)I
    .locals 3
    .param p1, "index"    # I

    .line 96
    iget-object v0, p0, Lgnu/lists/S64Vector;->data:[J

    aget-wide v1, v0, p1

    long-to-int v0, v1

    return v0
.end method

.method public final longAt(I)J
    .locals 3
    .param p1, "index"    # I

    .line 72
    iget v0, p0, Lgnu/lists/S64Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lgnu/lists/S64Vector;->data:[J

    aget-wide v1, v0, p1

    return-wide v1

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final longAtBuffer(I)J
    .locals 3
    .param p1, "index"    # I

    .line 79
    iget-object v0, p0, Lgnu/lists/S64Vector;->data:[J

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

    .line 172
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 173
    .local v0, "size":I
    new-array v1, v0, [J

    .line 174
    .local v1, "data":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 175
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Lgnu/lists/S64Vector;->data:[J

    .line 177
    iput v0, p0, Lgnu/lists/S64Vector;->size:I

    .line 178
    return-void
.end method

.method public setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lgnu/lists/S64Vector;->data:[J

    aget-wide v1, v0, p1

    .line 102
    .local v1, "old":J
    iget-object v0, p0, Lgnu/lists/S64Vector;->data:[J

    invoke-static {p2}, Lgnu/lists/Convert;->toLong(Ljava/lang/Object;)J

    move-result-wide v3

    aput-wide v3, v0, p1

    .line 103
    invoke-static {v1, v2}, Lgnu/lists/Convert;->toObject(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setBufferLength(I)V
    .locals 5
    .param p1, "length"    # I

    .line 58
    iget-object v0, p0, Lgnu/lists/S64Vector;->data:[J

    array-length v0, v0

    .line 59
    .local v0, "oldLength":I
    if-eq v0, p1, :cond_1

    .line 61
    new-array v1, p1, [J

    .line 62
    .local v1, "tmp":[J
    iget-object v2, p0, Lgnu/lists/S64Vector;->data:[J

    if-ge v0, p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v1, p0, Lgnu/lists/S64Vector;->data:[J

    .line 66
    .end local v1    # "tmp":[J
    :cond_1
    return-void
.end method

.method public final setLongAt(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 108
    iget v0, p0, Lgnu/lists/S64Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lgnu/lists/S64Vector;->data:[J

    aput-wide p2, v0, p1

    .line 111
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final setLongAtBuffer(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 115
    iget-object v0, p0, Lgnu/lists/S64Vector;->data:[J

    aput-wide p2, v0, p1

    .line 116
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

    .line 163
    iget v0, p0, Lgnu/lists/S64Vector;->size:I

    .line 164
    .local v0, "size":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 166
    iget-object v2, p0, Lgnu/lists/S64Vector;->data:[J

    aget-wide v3, v2, v1

    invoke-interface {p1, v3, v4}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
