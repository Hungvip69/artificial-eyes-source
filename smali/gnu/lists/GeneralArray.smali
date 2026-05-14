.class public Lgnu/lists/GeneralArray;
.super Lgnu/lists/AbstractSequence;
.source "GeneralArray.java"

# interfaces
.implements Lgnu/lists/Array;


# static fields
.field static final zeros:[I


# instance fields
.field base:Lgnu/lists/SimpleVector;

.field dimensions:[I

.field lowBounds:[I

.field offset:I

.field simple:Z

.field strides:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [I

    sput-object v0, Lgnu/lists/GeneralArray;->zeros:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/lists/GeneralArray;->simple:Z

    .line 58
    return-void
.end method

.method public constructor <init>([I)V
    .locals 5
    .param p1, "dimensions"    # [I

    .line 61
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/lists/GeneralArray;->simple:Z

    .line 62
    const/4 v0, 0x1

    .line 63
    .local v0, "total":I
    array-length v1, p1

    .line 64
    .local v1, "rank":I
    sget-object v2, Lgnu/lists/GeneralArray;->zeros:[I

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 65
    sget-object v2, Lgnu/lists/GeneralArray;->zeros:[I

    iput-object v2, p0, Lgnu/lists/GeneralArray;->lowBounds:[I

    goto :goto_0

    .line 67
    :cond_0
    new-array v2, v1, [I

    iput-object v2, p0, Lgnu/lists/GeneralArray;->lowBounds:[I

    .line 68
    :goto_0
    new-array v2, v1, [I

    .line 69
    .local v2, "strides":[I
    move v3, v1

    .local v3, "i":I
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    .line 71
    aput v0, v2, v3

    .line 72
    aget v4, p1, v3

    mul-int v0, v0, v4

    goto :goto_1

    .line 74
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Lgnu/lists/FVector;

    invoke-direct {v3, v0}, Lgnu/lists/FVector;-><init>(I)V

    iput-object v3, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    .line 75
    iput-object p1, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    .line 76
    const/4 v3, 0x0

    iput v3, p0, Lgnu/lists/GeneralArray;->offset:I

    .line 77
    return-void
.end method

.method public static makeSimple([I[ILgnu/lists/SimpleVector;)Lgnu/lists/Array;
    .locals 6
    .param p0, "lowBounds"    # [I
    .param p1, "dimensions"    # [I
    .param p2, "base"    # Lgnu/lists/SimpleVector;

    .line 32
    array-length v0, p1

    .line 33
    .local v0, "d":I
    if-nez p0, :cond_0

    .line 35
    sget-object p0, Lgnu/lists/GeneralArray;->zeros:[I

    .line 36
    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 37
    new-array p0, v0, [I

    .line 39
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    aget v1, p0, v1

    if-nez v1, :cond_1

    .line 40
    return-object p2

    .line 41
    :cond_1
    new-instance v1, Lgnu/lists/GeneralArray;

    invoke-direct {v1}, Lgnu/lists/GeneralArray;-><init>()V

    .line 42
    .local v1, "array":Lgnu/lists/GeneralArray;
    new-array v2, v0, [I

    .line 43
    .local v2, "strides":[I
    const/4 v3, 0x1

    .line 44
    .local v3, "n":I
    move v4, v0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    .line 46
    aput v3, v2, v4

    .line 47
    aget v5, p1, v4

    mul-int v3, v3, v5

    goto :goto_0

    .line 49
    .end local v4    # "i":I
    :cond_2
    iput-object v2, v1, Lgnu/lists/GeneralArray;->strides:[I

    .line 50
    iput-object p1, v1, Lgnu/lists/GeneralArray;->dimensions:[I

    .line 51
    iput-object p0, v1, Lgnu/lists/GeneralArray;->lowBounds:[I

    .line 52
    iput-object p2, v1, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    .line 53
    return-object v1
.end method

.method public static toString(Lgnu/lists/Array;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p0, "array"    # Lgnu/lists/Array;
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 175
    const-string v0, "#<array"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    invoke-interface {p0}, Lgnu/lists/Array;->rank()I

    move-result v0

    .line 177
    .local v0, "r":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 179
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 180
    invoke-interface {p0, v1}, Lgnu/lists/Array;->getLowBound(I)I

    move-result v2

    .line 181
    .local v2, "lo":I
    invoke-interface {p0, v1}, Lgnu/lists/Array;->getSize(I)I

    move-result v3

    .line 182
    .local v3, "sz":I
    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 185
    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 187
    :cond_0
    add-int v4, v2, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 177
    .end local v2    # "lo":I
    .end local v3    # "sz":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 190
    return-void
.end method


# virtual methods
.method public createPos(IZ)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "isAfter"    # Z

    .line 103
    iget v0, p0, Lgnu/lists/GeneralArray;->offset:I

    .line 104
    .local v0, "total":I
    iget-object v1, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v1, v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 106
    iget-object v2, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    aget v2, v2, v1

    .line 107
    .local v2, "dim":I
    rem-int v3, p1, v2

    .line 108
    .local v3, "cur":I
    div-int/2addr p1, v2

    .line 109
    iget-object v4, p0, Lgnu/lists/GeneralArray;->strides:[I

    aget v4, v4, v1

    mul-int v4, v4, v3

    add-int/2addr v0, v4

    .line 110
    .end local v2    # "dim":I
    .end local v3    # "cur":I
    goto :goto_0

    .line 111
    .end local v1    # "i":I
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v1, p2

    return v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 98
    invoke-virtual {p0, p1}, Lgnu/lists/GeneralArray;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get([I)Ljava/lang/Object;
    .locals 2
    .param p1, "indexes"    # [I

    .line 131
    iget-object v0, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {p0, p1}, Lgnu/lists/GeneralArray;->getEffectiveIndex([I)I

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEffectiveIndex([I)I
    .locals 6
    .param p1, "indexes"    # [I

    .line 84
    iget v0, p0, Lgnu/lists/GeneralArray;->offset:I

    .line 85
    .local v0, "result":I
    iget-object v1, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v1, v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 87
    aget v2, p1, v1

    .line 88
    .local v2, "index":I
    iget-object v3, p0, Lgnu/lists/GeneralArray;->lowBounds:[I

    aget v3, v3, v1

    .line 89
    .local v3, "low":I
    if-lt v2, v3, :cond_0

    sub-int v4, v2, v3

    move v2, v4

    iget-object v5, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    aget v5, v5, v1

    if-ge v4, v5, :cond_0

    .line 91
    iget-object v4, p0, Lgnu/lists/GeneralArray;->strides:[I

    aget v4, v4, v1

    mul-int v4, v4, v2

    add-int/2addr v0, v4

    .line 92
    .end local v2    # "index":I
    .end local v3    # "low":I
    goto :goto_0

    .line 90
    .restart local v2    # "index":I
    .restart local v3    # "low":I
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 93
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "low":I
    :cond_1
    return v0
.end method

.method public getLowBound(I)I
    .locals 1
    .param p1, "dim"    # I

    .line 150
    iget-object v0, p0, Lgnu/lists/GeneralArray;->lowBounds:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRowMajor(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I

    .line 116
    iget-boolean v0, p0, Lgnu/lists/GeneralArray;->simple:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v0, p1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    iget v0, p0, Lgnu/lists/GeneralArray;->offset:I

    .line 119
    .local v0, "total":I
    iget-object v1, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v1, v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 121
    iget-object v2, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    aget v2, v2, v1

    .line 122
    .local v2, "dim":I
    rem-int v3, p1, v2

    .line 123
    .local v3, "cur":I
    div-int/2addr p1, v2

    .line 124
    iget-object v4, p0, Lgnu/lists/GeneralArray;->strides:[I

    aget v4, v4, v1

    mul-int v4, v4, v3

    add-int/2addr v0, v4

    .line 125
    .end local v2    # "dim":I
    .end local v3    # "cur":I
    goto :goto_0

    .line 126
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v1, v0}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getSize(I)I
    .locals 1
    .param p1, "dim"    # I

    .line 155
    iget-object v0, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    aget v0, v0, p1

    return v0
.end method

.method public rank()I
    .locals 1

    .line 79
    iget-object v0, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v0, v0

    return v0
.end method

.method public set([ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "indexes"    # [I
    .param p2, "value"    # Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {p0, p1}, Lgnu/lists/GeneralArray;->getEffectiveIndex([I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 3

    .line 142
    const/4 v0, 0x1

    .line 143
    .local v0, "total":I
    iget-object v1, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    array-length v1, v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 144
    iget-object v2, p0, Lgnu/lists/GeneralArray;->dimensions:[I

    aget v2, v2, v1

    mul-int v0, v0, v2

    goto :goto_0

    .line 145
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-static {p0, v0}, Lgnu/lists/GeneralArray;->toString(Lgnu/lists/Array;Ljava/lang/StringBuffer;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public transpose([I[II[I)Lgnu/lists/Array;
    .locals 3
    .param p1, "lowBounds"    # [I
    .param p2, "dimensions"    # [I
    .param p3, "offset0"    # I
    .param p4, "factors"    # [I

    .line 161
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    aget v0, p1, v2

    if-nez v0, :cond_0

    new-instance v0, Lgnu/lists/GeneralArray1;

    invoke-direct {v0}, Lgnu/lists/GeneralArray1;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/lists/GeneralArray;

    invoke-direct {v0}, Lgnu/lists/GeneralArray;-><init>()V

    .line 164
    .local v0, "array":Lgnu/lists/GeneralArray;
    :goto_0
    iput p3, v0, Lgnu/lists/GeneralArray;->offset:I

    .line 165
    iput-object p4, v0, Lgnu/lists/GeneralArray;->strides:[I

    .line 166
    iput-object p2, v0, Lgnu/lists/GeneralArray;->dimensions:[I

    .line 167
    iput-object p1, v0, Lgnu/lists/GeneralArray;->lowBounds:[I

    .line 168
    iget-object v1, p0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    iput-object v1, v0, Lgnu/lists/GeneralArray;->base:Lgnu/lists/SimpleVector;

    .line 169
    iput-boolean v2, v0, Lgnu/lists/GeneralArray;->simple:Z

    .line 170
    return-object v0
.end method
