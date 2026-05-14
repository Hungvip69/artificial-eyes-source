.class public Lgnu/kawa/functions/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# static fields
.field static final shapeStrides:[I

.field static final zeros2:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const/4 v0, 0x1

    const/4 v1, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/Arrays;->shapeStrides:[I

    .line 14
    new-array v0, v1, [I

    sput-object v0, Lgnu/kawa/functions/Arrays;->zeros2:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static effectiveIndex(Lgnu/lists/Array;Lgnu/mapping/Procedure;[Ljava/lang/Object;[I)I
    .locals 5
    .param p0, "array"    # Lgnu/lists/Array;
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "work"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 73
    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, "mapval":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/mapping/Values;

    if-eqz v1, :cond_1

    .line 76
    move-object v1, v0

    check-cast v1, Lgnu/mapping/Values;

    .line 77
    .local v1, "mapvals":Lgnu/mapping/Values;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-virtual {v1, v2}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v4

    move v2, v4

    if-eqz v4, :cond_0

    .line 79
    invoke-virtual {v1, v2}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    aput v4, p3, v3

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .end local v1    # "mapvals":Lgnu/mapping/Values;
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_0
    goto :goto_1

    .line 83
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x0

    aput v1, p3, v2

    .line 84
    :goto_1
    invoke-interface {p0, p3}, Lgnu/lists/Array;->getEffectiveIndex([I)I

    move-result v1

    return v1
.end method

.method public static make(Lgnu/lists/Array;Ljava/lang/Object;)Lgnu/lists/Array;
    .locals 8
    .param p0, "shape"    # Lgnu/lists/Array;
    .param p1, "value"    # Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lgnu/lists/Array;->getSize(I)I

    move-result v0

    .line 29
    .local v0, "rank":I
    new-array v1, v0, [I

    .line 30
    .local v1, "dimensions":[I
    const/4 v2, 0x0

    .line 31
    .local v2, "lowBounds":[I
    const/4 v3, 0x1

    .line 32
    .local v3, "total":I
    move v4, v0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    .line 34
    mul-int/lit8 v5, v4, 0x2

    invoke-interface {p0, v5}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 35
    .local v5, "lo":I
    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-interface {p0, v6}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 36
    .local v6, "hi":I
    sub-int v7, v6, v5

    .line 37
    .local v7, "size":I
    aput v7, v1, v4

    .line 38
    if-eqz v5, :cond_1

    .line 40
    if-nez v2, :cond_0

    .line 41
    new-array v2, v0, [I

    .line 42
    :cond_0
    aput v5, v2, v4

    .line 44
    :cond_1
    mul-int v3, v3, v7

    .line 45
    .end local v5    # "lo":I
    .end local v6    # "hi":I
    .end local v7    # "size":I
    goto :goto_0

    .line 46
    .end local v4    # "i":I
    :cond_2
    new-instance v4, Lgnu/lists/FVector;

    invoke-direct {v4, v3, p1}, Lgnu/lists/FVector;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v1, v4}, Lgnu/lists/GeneralArray;->makeSimple([I[ILgnu/lists/SimpleVector;)Lgnu/lists/Array;

    move-result-object v4

    return-object v4
.end method

.method public static makeSimple(Lgnu/lists/Array;Lgnu/lists/SimpleVector;)Lgnu/lists/Array;
    .locals 7
    .param p0, "shape"    # Lgnu/lists/Array;
    .param p1, "base"    # Lgnu/lists/SimpleVector;

    .line 51
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lgnu/lists/Array;->getSize(I)I

    move-result v0

    .line 52
    .local v0, "rank":I
    new-array v1, v0, [I

    .line 53
    .local v1, "dimensions":[I
    const/4 v2, 0x0

    .line 54
    .local v2, "lowBounds":[I
    move v3, v0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    .line 56
    mul-int/lit8 v4, v3, 0x2

    invoke-interface {p0, v4}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 57
    .local v4, "lo":I
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p0, v5}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 58
    .local v5, "hi":I
    sub-int v6, v5, v4

    aput v6, v1, v3

    .line 59
    if-eqz v4, :cond_1

    .line 61
    if-nez v2, :cond_0

    .line 62
    new-array v2, v0, [I

    .line 63
    :cond_0
    aput v4, v2, v3

    .line 65
    .end local v4    # "lo":I
    .end local v5    # "hi":I
    :cond_1
    goto :goto_0

    .line 66
    .end local v3    # "i":I
    :cond_2
    invoke-static {v2, v1, p1}, Lgnu/lists/GeneralArray;->makeSimple([I[ILgnu/lists/SimpleVector;)Lgnu/lists/Array;

    move-result-object v3

    return-object v3
.end method

.method public static shape([Ljava/lang/Object;)Lgnu/lists/Array;
    .locals 7
    .param p0, "vals"    # [Ljava/lang/Object;

    .line 18
    array-length v0, p0

    .line 19
    .local v0, "len":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    .line 21
    shr-int/lit8 v1, v0, 0x1

    .line 22
    .local v1, "d":I
    const/4 v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v2

    .line 23
    .local v2, "dims":[I
    new-instance v3, Lgnu/lists/FVector;

    invoke-direct {v3, p0}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    sget-object v4, Lgnu/kawa/functions/Arrays;->zeros2:[I

    const/4 v5, 0x0

    sget-object v6, Lgnu/kawa/functions/Arrays;->shapeStrides:[I

    invoke-virtual {v3, v4, v2, v5, v6}, Lgnu/lists/FVector;->transpose([I[II[I)Lgnu/lists/Array;

    move-result-object v3

    return-object v3

    .line 20
    .end local v1    # "d":I
    .end local v2    # "dims":[I
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "shape: not an even number of arguments"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static shareArray(Lgnu/lists/Array;Lgnu/lists/Array;Lgnu/mapping/Procedure;)Lgnu/lists/Array;
    .locals 19
    .param p0, "array"    # Lgnu/lists/Array;
    .param p1, "shape"    # Lgnu/lists/Array;
    .param p2, "proc"    # Lgnu/mapping/Procedure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lgnu/lists/Array;->getSize(I)I

    move-result v4

    .line 92
    .local v4, "rank":I
    new-array v5, v4, [Ljava/lang/Object;

    .line 93
    .local v5, "args":[Ljava/lang/Object;
    new-array v6, v4, [I

    .line 94
    .local v6, "dimensions":[I
    new-array v7, v4, [I

    .line 95
    .local v7, "lowBounds":[I
    const/4 v8, 0x0

    .line 96
    .local v8, "empty":Z
    move v9, v4

    .local v9, "i":I
    :goto_0
    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x1

    if-ltz v9, :cond_1

    .line 98
    mul-int/lit8 v11, v9, 0x2

    invoke-interface {v1, v11}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v11

    .line 99
    .local v11, "low":Ljava/lang/Object;
    aput-object v11, v5, v9

    .line 100
    move-object v12, v11

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 101
    .local v12, "lo":I
    aput v12, v7, v9

    .line 102
    mul-int/lit8 v13, v9, 0x2

    add-int/2addr v13, v10

    invoke-interface {v1, v13}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 103
    .local v10, "hi":I
    sub-int v13, v10, v12

    .line 104
    .local v13, "size":I
    aput v13, v6, v9

    .line 105
    if-gtz v13, :cond_0

    .line 106
    const/4 v8, 0x1

    .line 107
    .end local v10    # "hi":I
    .end local v11    # "low":Ljava/lang/Object;
    .end local v12    # "lo":I
    .end local v13    # "size":I
    :cond_0
    goto :goto_0

    .line 108
    .end local v9    # "i":I
    :cond_1
    invoke-interface/range {p0 .. p0}, Lgnu/lists/Array;->rank()I

    move-result v9

    .line 109
    .local v9, "arank":I
    new-array v11, v4, [I

    .line 111
    .local v11, "offsets":[I
    if-eqz v8, :cond_2

    .line 112
    const/4 v3, 0x0

    .local v3, "offset0":I
    goto :goto_3

    .line 115
    .end local v3    # "offset0":I
    :cond_2
    new-array v12, v9, [I

    .line 116
    .local v12, "work":[I
    invoke-static {v0, v2, v5, v12}, Lgnu/kawa/functions/Arrays;->effectiveIndex(Lgnu/lists/Array;Lgnu/mapping/Procedure;[Ljava/lang/Object;[I)I

    move-result v13

    .line 117
    .local v13, "offset0":I
    move v14, v4

    .local v14, "i":I
    :goto_1
    add-int/lit8 v14, v14, -0x1

    if-ltz v14, :cond_4

    .line 119
    aget v15, v6, v14

    .line 120
    .local v15, "size":I
    aget v16, v7, v14

    .line 121
    .local v16, "lo":I
    if-gt v15, v10, :cond_3

    .line 122
    aput v3, v11, v14

    goto :goto_2

    .line 125
    :cond_3
    aget-object v17, v5, v14

    .line 126
    .local v17, "low":Ljava/lang/Object;
    add-int/lit8 v18, v16, 0x1

    invoke-static/range {v18 .. v18}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v18

    aput-object v18, v5, v14

    .line 127
    invoke-static {v0, v2, v5, v12}, Lgnu/kawa/functions/Arrays;->effectiveIndex(Lgnu/lists/Array;Lgnu/mapping/Procedure;[Ljava/lang/Object;[I)I

    move-result v18

    sub-int v18, v18, v13

    aput v18, v11, v14

    .line 129
    aput-object v17, v5, v14

    .line 131
    .end local v15    # "size":I
    .end local v16    # "lo":I
    .end local v17    # "low":Ljava/lang/Object;
    :goto_2
    goto :goto_1

    .line 117
    :cond_4
    move v3, v13

    .line 133
    .end local v12    # "work":[I
    .end local v13    # "offset0":I
    .end local v14    # "i":I
    .restart local v3    # "offset0":I
    :goto_3
    invoke-interface {v0, v7, v6, v3, v11}, Lgnu/lists/Array;->transpose([I[II[I)Lgnu/lists/Array;

    move-result-object v10

    return-object v10
.end method
