.class public Lgnu/lists/F32Vector;
.super Lgnu/lists/SimpleVector;
.source "F32Vector.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# static fields
.field protected static empty:[F


# instance fields
.field data:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [F

    sput-object v0, Lgnu/lists/F32Vector;->empty:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 20
    sget-object v0, Lgnu/lists/F32Vector;->empty:[F

    iput-object v0, p0, Lgnu/lists/F32Vector;->data:[F

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 33
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 34
    new-array v0, p1, [F

    iput-object v0, p0, Lgnu/lists/F32Vector;->data:[F

    .line 35
    iput p1, p0, Lgnu/lists/F32Vector;->size:I

    .line 36
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "value"    # F

    .line 24
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 25
    new-array v0, p1, [F

    .line 26
    .local v0, "array":[F
    iput-object v0, p0, Lgnu/lists/F32Vector;->data:[F

    .line 27
    iput p1, p0, Lgnu/lists/F32Vector;->size:I

    .line 28
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 29
    aput p2, v0, p1

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

    new-array v0, v0, [F

    iput-object v0, p0, Lgnu/lists/F32Vector;->data:[F

    .line 47
    invoke-virtual {p0, p1}, Lgnu/lists/F32Vector;->addAll(Ljava/util/Collection;)Z

    .line 48
    return-void
.end method

.method public constructor <init>([F)V
    .locals 1
    .param p1, "data"    # [F

    .line 39
    invoke-direct {p0}, Lgnu/lists/SimpleVector;-><init>()V

    .line 40
    iput-object p1, p0, Lgnu/lists/F32Vector;->data:[F

    .line 41
    array-length v0, p1

    iput v0, p0, Lgnu/lists/F32Vector;->size:I

    .line 42
    return-void
.end method


# virtual methods
.method protected clearBuffer(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 120
    nop

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 121
    iget-object v0, p0, Lgnu/lists/F32Vector;->data:[F

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "start":I
    .local v1, "start":I
    const/4 v2, 0x0

    aput v2, v0, p1

    move p1, v1

    goto :goto_0

    .line 122
    .end local v1    # "start":I
    .restart local p1    # "start":I
    :cond_0
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 152
    move-object v0, p1

    check-cast v0, Lgnu/lists/F32Vector;

    .line 153
    .local v0, "vec2":Lgnu/lists/F32Vector;
    iget-object v1, p0, Lgnu/lists/F32Vector;->data:[F

    .line 154
    .local v1, "arr1":[F
    iget-object v2, v0, Lgnu/lists/F32Vector;->data:[F

    .line 155
    .local v2, "arr2":[F
    iget v3, p0, Lgnu/lists/F32Vector;->size:I

    .line 156
    .local v3, "n1":I
    iget v4, v0, Lgnu/lists/F32Vector;->size:I

    .line 157
    .local v4, "n2":I
    if-le v3, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 158
    .local v5, "n":I
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_3

    .line 160
    aget v7, v1, v6

    .line 161
    .local v7, "v1":F
    aget v8, v2, v6

    .line 162
    .local v8, "v2":F
    cmpl-float v9, v7, v8

    if-eqz v9, :cond_2

    .line 163
    cmpl-float v9, v7, v8

    if-lez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_2

    :cond_1
    const/4 v9, -0x1

    :goto_2
    return v9

    .line 158
    .end local v7    # "v1":F
    .end local v8    # "v2":F
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 165
    .end local v6    # "i":I
    :cond_3
    sub-int v6, v3, v4

    return v6
.end method

.method public consumeNext(ILgnu/lists/Consumer;)Z
    .locals 2
    .param p1, "ipos"    # I
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 133
    ushr-int/lit8 v0, p1, 0x1

    .line 134
    .local v0, "index":I
    iget v1, p0, Lgnu/lists/F32Vector;->size:I

    if-lt v0, v1, :cond_0

    .line 135
    const/4 v1, 0x0

    return v1

    .line 136
    :cond_0
    iget-object v1, p0, Lgnu/lists/F32Vector;->data:[F

    aget v1, v1, v0

    invoke-interface {p2, v1}, Lgnu/lists/Consumer;->writeFloat(F)V

    .line 137
    const/4 v1, 0x1

    return v1
.end method

.method public consumePosRange(IILgnu/lists/Consumer;)V
    .locals 3
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
    :goto_0
    if-ge v0, v1, :cond_1

    .line 147
    iget-object v2, p0, Lgnu/lists/F32Vector;->data:[F

    aget v2, v2, v0

    invoke-interface {p3, v2}, Lgnu/lists/Consumer;->writeFloat(F)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    return-void
.end method

.method public final floatAt(I)F
    .locals 1
    .param p1, "index"    # I

    .line 77
    iget v0, p0, Lgnu/lists/F32Vector;->size:I

    if-ge p1, v0, :cond_0

    .line 79
    iget-object v0, p0, Lgnu/lists/F32Vector;->data:[F

    aget v0, v0, p1

    return v0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final floatAtBuffer(I)F
    .locals 1
    .param p1, "index"    # I

    .line 84
    iget-object v0, p0, Lgnu/lists/F32Vector;->data:[F

    aget v0, v0, p1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 89
    iget v0, p0, Lgnu/lists/F32Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 91
    iget-object v0, p0, Lgnu/lists/F32Vector;->data:[F

    aget v0, v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObject(F)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method protected getBuffer()Ljava/lang/Object;
    .locals 1

    .line 68
    iget-object v0, p0, Lgnu/lists/F32Vector;->data:[F

    return-object v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 96
    iget-object v0, p0, Lgnu/lists/F32Vector;->data:[F

    aget v0, v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObject(F)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBufferLength()I
    .locals 1

    .line 53
    iget-object v0, p0, Lgnu/lists/F32Vector;->data:[F

    array-length v0, v0

    return v0
.end method

.method public getElementKind()I
    .locals 1

    .line 126
    const/16 v0, 0x19

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 129
    const-string v0, "f32"

    return-object v0
.end method

.method public final intAtBuffer(I)I
    .locals 1
    .param p1, "index"    # I

    .line 72
    iget-object v0, p0, Lgnu/lists/F32Vector;->data:[F

    aget v0, v0, p1

    float-to-int v0, v0

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

    .line 183
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 184
    .local v0, "size":I
    new-array v1, v0, [F

    .line 185
    .local v1, "data":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 186
    invoke-interface {p1}, Ljava/io/ObjectInput;->readFloat()F

    move-result v3

    aput v3, v1, v2

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v2    # "i":I
    :cond_0
    iput-object v1, p0, Lgnu/lists/F32Vector;->data:[F

    .line 188
    iput v0, p0, Lgnu/lists/F32Vector;->size:I

    .line 189
    return-void
.end method

.method public final setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lgnu/lists/F32Vector;->data:[F

    aget v0, v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObject(F)Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "old":Ljava/lang/Object;
    iget-object v1, p0, Lgnu/lists/F32Vector;->data:[F

    invoke-static {p2}, Lgnu/lists/Convert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    aput v2, v1, p1

    .line 115
    return-object v0
.end method

.method public setBufferLength(I)V
    .locals 5
    .param p1, "length"    # I

    .line 58
    iget-object v0, p0, Lgnu/lists/F32Vector;->data:[F

    array-length v0, v0

    .line 59
    .local v0, "oldLength":I
    if-eq v0, p1, :cond_1

    .line 61
    new-array v1, p1, [F

    .line 62
    .local v1, "tmp":[F
    iget-object v2, p0, Lgnu/lists/F32Vector;->data:[F

    if-ge v0, p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v1, p0, Lgnu/lists/F32Vector;->data:[F

    .line 66
    .end local v1    # "tmp":[F
    :cond_1
    return-void
.end method

.method public final setFloatAt(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 101
    iget v0, p0, Lgnu/lists/F32Vector;->size:I

    if-gt p1, v0, :cond_0

    .line 103
    iget-object v0, p0, Lgnu/lists/F32Vector;->data:[F

    aput p2, v0, p1

    .line 104
    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final setFloatAtBuffer(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 108
    iget-object v0, p0, Lgnu/lists/F32Vector;->data:[F

    aput p2, v0, p1

    .line 109
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

    .line 174
    iget v0, p0, Lgnu/lists/F32Vector;->size:I

    .line 175
    .local v0, "size":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 176
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 177
    iget-object v2, p0, Lgnu/lists/F32Vector;->data:[F

    aget v2, v2, v1

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeFloat(F)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
