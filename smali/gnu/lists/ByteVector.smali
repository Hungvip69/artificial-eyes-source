.class public abstract Lgnu/lists/ByteVector;
.super Lgnu/lists/SimpleVector;
.source "ByteVector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# static fields
.field protected static empty:[B


# instance fields
.field data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lgnu/lists/ByteVector;->empty:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    return-void
.end method


# virtual methods
.method public final byteAt(I)B
    .locals 1
    .param p1, "index"    # I

    .line 35
    iget v0, p0, Lgnu/lists/ByteVector;->size:I

    if-gt p1, v0, :cond_0

    .line 37
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    aget-byte v0, v0, p1

    return v0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final byteAtBuffer(I)B
    .locals 1
    .param p1, "index"    # I

    .line 42
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method protected clearBuffer(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 80
    nop

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 81
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "start":I
    .local v1, "start":I
    const/4 v2, 0x0

    aput-byte v2, v0, p1

    move p1, v1

    goto :goto_0

    .line 82
    .end local v1    # "start":I
    .restart local p1    # "start":I
    :cond_0
    return-void
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 2
    .param p1, "ipos"    # I
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 47
    ushr-int/lit8 v0, p1, 0x1

    .line 48
    .local v0, "index":I
    iget v1, p0, Lgnu/lists/ByteVector;->size:I

    if-lt v0, v1, :cond_0

    .line 49
    const/4 v1, 0x0

    return v1

    .line 50
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/lists/ByteVector;->intAtBuffer(I)I

    move-result v1

    invoke-interface {p2, v1}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 51
    const/4 v1, 0x1

    return v1
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 3
    .param p1, "iposStart"    # I
    .param p2, "iposEnd"    # I
    .param p3, "out"    # Lgnu/lists/Consumer;

    .line 56
    invoke-interface {p3}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    return-void

    .line 58
    :cond_0
    ushr-int/lit8 v0, p1, 0x1

    .line 59
    .local v0, "i":I
    ushr-int/lit8 v1, p2, 0x1

    .line 60
    .local v1, "end":I
    iget v2, p0, Lgnu/lists/ByteVector;->size:I

    if-le v1, v2, :cond_1

    .line 61
    iget v1, p0, Lgnu/lists/ByteVector;->size:I

    .line 62
    :cond_1
    :goto_0
    if-ge v0, v1, :cond_2

    .line 63
    invoke-virtual {p0, v0}, Lgnu/lists/ByteVector;->intAtBuffer(I)I

    move-result v2

    invoke-interface {p3, v2}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_2
    return-void
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 1

    .line 31
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    return-object v0
.end method

.method public getBufferLength()I
    .locals 1

    .line 16
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    array-length v0, v0

    return v0
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

    .line 99
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 100
    .local v0, "size":I
    new-array v1, v0, [B

    .line 101
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 102
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v3

    aput-byte v3, v1, v2

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Lgnu/lists/ByteVector;->data:[B

    .line 104
    iput v0, p0, Lgnu/lists/ByteVector;->size:I

    .line 105
    return-void
.end method

.method public setBufferLength(I)V
    .locals 5
    .param p1, "length"    # I

    .line 21
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    array-length v0, v0

    .line 22
    .local v0, "oldLength":I
    if-eq v0, p1, :cond_1

    .line 24
    new-array v1, p1, [B

    .line 25
    .local v1, "tmp":[B
    iget-object v2, p0, Lgnu/lists/ByteVector;->data:[B

    if-ge v0, p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iput-object v1, p0, Lgnu/lists/ByteVector;->data:[B

    .line 29
    .end local v1    # "tmp":[B
    :cond_1
    return-void
.end method

.method public final setByteAt(IB)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # B

    .line 68
    iget v0, p0, Lgnu/lists/ByteVector;->size:I

    if-gt p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    aput-byte p2, v0, p1

    .line 71
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final setByteAtBuffer(IB)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # B

    .line 75
    iget-object v0, p0, Lgnu/lists/ByteVector;->data:[B

    aput-byte p2, v0, p1

    .line 76
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

    .line 90
    iget v0, p0, Lgnu/lists/ByteVector;->size:I

    .line 91
    .local v0, "size":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 93
    iget-object v2, p0, Lgnu/lists/ByteVector;->data:[B

    aget-byte v2, v2, v1

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
