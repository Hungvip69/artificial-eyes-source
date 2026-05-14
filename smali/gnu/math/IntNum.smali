.class public Lgnu/math/IntNum;
.super Lgnu/math/RatNum;
.source "IntNum.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final maxFixNum:I = 0x400

.field static final minFixNum:I = -0x64

.field static final numFixNum:I = 0x465

.field static final smallFixNums:[Lgnu/math/IntNum;


# instance fields
.field public ival:I

.field public words:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    const/16 v0, 0x465

    new-array v0, v0, [Lgnu/math/IntNum;

    sput-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    .line 30
    const/16 v0, 0x465

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 31
    sget-object v1, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    new-instance v2, Lgnu/math/IntNum;

    add-int/lit8 v3, v0, -0x64

    invoke-direct {v2, v3}, Lgnu/math/IntNum;-><init>(I)V

    aput-object v2, v1, v0

    goto :goto_0

    .line 32
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lgnu/math/RatNum;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .line 41
    invoke-direct {p0}, Lgnu/math/RatNum;-><init>()V

    .line 42
    iput p1, p0, Lgnu/math/IntNum;->ival:I

    .line 43
    return-void
.end method

.method public static abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1
    .param p0, "x"    # Lgnu/math/IntNum;

    .line 1611
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static final add(II)Lgnu/math/IntNum;
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 326
    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static add(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 2
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # I

    .line 332
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 333
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v0, p1}, Lgnu/math/IntNum;->add(II)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 334
    :cond_0
    new-instance v0, Lgnu/math/IntNum;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/math/IntNum;-><init>(I)V

    .line 335
    .local v0, "result":Lgnu/math/IntNum;
    invoke-virtual {v0, p0, p1}, Lgnu/math/IntNum;->setAdd(Lgnu/math/IntNum;I)V

    .line 336
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v1

    return-object v1
.end method

.method public static add(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 418
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 11
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # Lgnu/math/IntNum;
    .param p2, "k"    # I

    .line 430
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 431
    int-to-long v0, p2

    iget v2, p1, Lgnu/math/IntNum;->ival:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    iget v2, p0, Lgnu/math/IntNum;->ival:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 432
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    .line 434
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 435
    invoke-static {p1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    goto :goto_0

    .line 437
    :cond_1
    invoke-static {p2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {p1, v1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    .line 439
    :cond_2
    :goto_0
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_3

    .line 440
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {p1, v0}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 441
    :cond_3
    iget-object v1, p1, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_4

    .line 442
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {p0, v0}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 445
    :cond_4
    iget v1, p1, Lgnu/math/IntNum;->ival:I

    iget v2, p0, Lgnu/math/IntNum;->ival:I

    if-le v1, v2, :cond_5

    .line 447
    move-object v1, p0

    .local v1, "tmp":Lgnu/math/IntNum;
    move-object p0, p1

    move-object p1, v1

    .line 449
    .end local v1    # "tmp":Lgnu/math/IntNum;
    :cond_5
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    add-int/2addr v1, v0

    invoke-static {v1}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v0

    .line 450
    .local v0, "result":Lgnu/math/IntNum;
    iget v1, p1, Lgnu/math/IntNum;->ival:I

    .line 451
    .local v1, "i":I
    iget-object v2, v0, Lgnu/math/IntNum;->words:[I

    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    iget-object v4, p1, Lgnu/math/IntNum;->words:[I

    invoke-static {v2, v3, v4, v1}, Lgnu/math/MPN;->add_n([I[I[II)I

    move-result v2

    int-to-long v2, v2

    .line 452
    .local v2, "carry":J
    iget-object v4, p1, Lgnu/math/IntNum;->words:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    const-wide v5, 0xffffffffL

    if-gez v4, :cond_6

    move-wide v7, v5

    goto :goto_1

    :cond_6
    const-wide/16 v7, 0x0

    .line 453
    .local v7, "y_ext":J
    :goto_1
    iget v4, p0, Lgnu/math/IntNum;->ival:I

    if-ge v1, v4, :cond_7

    .line 455
    iget-object v4, p0, Lgnu/math/IntNum;->words:[I

    aget v4, v4, v1

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v9, v7

    add-long/2addr v2, v9

    .line 456
    iget-object v4, v0, Lgnu/math/IntNum;->words:[I

    long-to-int v9, v2

    aput v9, v4, v1

    .line 457
    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 459
    :cond_7
    iget-object v4, p0, Lgnu/math/IntNum;->words:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    if-gez v4, :cond_8

    .line 460
    const-wide/16 v4, 0x1

    sub-long/2addr v7, v4

    .line 461
    :cond_8
    iget-object v4, v0, Lgnu/math/IntNum;->words:[I

    add-long v5, v2, v7

    long-to-int v6, v5

    aput v6, v4, v1

    .line 462
    add-int/lit8 v4, v1, 0x1

    iput v4, v0, Lgnu/math/IntNum;->ival:I

    .line 463
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v4

    return-object v4
.end method

.method public static alloc(I)Lgnu/math/IntNum;
    .locals 2
    .param p0, "nwords"    # I

    .line 141
    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    .line 142
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    return-object v0

    .line 143
    :cond_0
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    .line 144
    .local v0, "result":Lgnu/math/IntNum;
    new-array v1, p0, [I

    iput-object v1, v0, Lgnu/math/IntNum;->words:[I

    .line 145
    return-object v0
.end method

.method public static asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 92
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 93
    move-object v0, p0

    check-cast v0, Lgnu/math/IntNum;

    return-object v0

    .line 94
    :cond_0
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 96
    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    .line 99
    :cond_2
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 100
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static compare(Lgnu/math/IntNum;J)I
    .locals 8
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # J

    .line 236
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 237
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    int-to-long v4, v0

    .local v4, "x_word":J
    goto :goto_3

    .line 240
    .end local v4    # "x_word":J
    :cond_0
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    .line 241
    .local v0, "x_negative":Z
    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-gez v6, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 242
    .local v4, "y_negative":Z
    :goto_0
    if-eq v0, v4, :cond_3

    .line 243
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 244
    :cond_3
    iget-object v5, p0, Lgnu/math/IntNum;->words:[I

    if-nez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    iget v5, p0, Lgnu/math/IntNum;->ival:I

    .line 245
    .local v5, "x_len":I
    :goto_2
    if-ne v5, v3, :cond_5

    .line 246
    iget-object v6, p0, Lgnu/math/IntNum;->words:[I

    aget v6, v6, v2

    int-to-long v6, v6

    move-wide v4, v6

    .local v6, "x_word":J
    goto :goto_3

    .line 247
    .end local v6    # "x_word":J
    :cond_5
    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 248
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v6

    move-wide v4, v6

    .line 252
    .end local v0    # "x_negative":Z
    .end local v5    # "x_len":I
    .local v4, "x_word":J
    :goto_3
    cmp-long v0, v4, p1

    if-gez v0, :cond_6

    goto :goto_4

    :cond_6
    cmp-long v0, v4, p1

    if-lez v0, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    return v1

    .line 250
    .restart local v0    # "x_negative":Z
    .local v4, "y_negative":Z
    .restart local v5    # "x_len":I
    :cond_8
    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    const/4 v1, 0x1

    :goto_5
    return v1
.end method

.method public static compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I
    .locals 7
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 219
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_2

    .line 220
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    iget v4, p1, Lgnu/math/IntNum;->ival:I

    if-ge v0, v4, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    iget v2, p1, Lgnu/math/IntNum;->ival:I

    if-le v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    .line 221
    :cond_2
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    .line 222
    .local v0, "x_negative":Z
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v4

    .line 223
    .local v4, "y_negative":Z
    if-eq v0, v4, :cond_4

    .line 224
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 225
    :cond_4
    iget-object v5, p0, Lgnu/math/IntNum;->words:[I

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    iget v5, p0, Lgnu/math/IntNum;->ival:I

    .line 226
    .local v5, "x_len":I
    :goto_2
    iget-object v6, p1, Lgnu/math/IntNum;->words:[I

    if-nez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    iget v6, p1, Lgnu/math/IntNum;->ival:I

    .line 227
    .local v6, "y_len":I
    :goto_3
    if-eq v5, v6, :cond_9

    .line 228
    if-le v5, v6, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-eq v1, v0, :cond_8

    const/4 v2, 0x1

    :cond_8
    return v2

    .line 229
    :cond_9
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    iget-object v2, p1, Lgnu/math/IntNum;->words:[I

    invoke-static {v1, v2, v5}, Lgnu/math/MPN;->cmp([I[II)I

    move-result v1

    return v1
.end method

.method public static divide(JJLgnu/math/IntNum;Lgnu/math/IntNum;I)V
    .locals 21
    .param p0, "x"    # J
    .param p2, "y"    # J
    .param p4, "quotient"    # Lgnu/math/IntNum;
    .param p5, "remainder"    # Lgnu/math/IntNum;
    .param p6, "rounding_mode"    # I

    .line 553
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v6, 0x5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    move/from16 v10, p6

    if-ne v10, v6, :cond_1

    .line 554
    cmp-long v6, v2, v7

    if-gez v6, :cond_0

    const/4 v6, 0x2

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    :goto_0
    move v10, v6

    .line 555
    .end local p6    # "rounding_mode":I
    .local v10, "rounding_mode":I
    :cond_1
    const-wide/high16 v11, -0x8000000000000000L

    cmp-long v6, v0, v7

    if-gez v6, :cond_3

    .line 557
    const/4 v6, 0x1

    .line 558
    .local v6, "xNegative":Z
    cmp-long v13, v0, v11

    if-nez v13, :cond_2

    .line 560
    invoke-static/range {p0 .. p1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v7

    invoke-static/range {p2 .. p3}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v8

    invoke-static {v7, v8, v4, v5, v10}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 562
    return-void

    .line 564
    :cond_2
    neg-long v0, v0

    .end local p0    # "x":J
    .local v0, "x":J
    goto :goto_1

    .line 567
    .end local v0    # "x":J
    .end local v6    # "xNegative":Z
    .restart local p0    # "x":J
    :cond_3
    const/4 v6, 0x0

    .line 569
    .end local p0    # "x":J
    .restart local v0    # "x":J
    .restart local v6    # "xNegative":Z
    :goto_1
    const/4 v13, 0x0

    cmp-long v14, v2, v7

    if-gez v14, :cond_8

    .line 571
    const/4 v14, 0x1

    .line 572
    .local v14, "yNegative":Z
    cmp-long v15, v2, v11

    if-nez v15, :cond_7

    .line 574
    const/4 v7, 0x3

    if-ne v10, v7, :cond_5

    .line 576
    if-eqz v4, :cond_4

    .line 577
    invoke-virtual {v4, v13}, Lgnu/math/IntNum;->set(I)V

    .line 578
    :cond_4
    if-eqz v5, :cond_6

    .line 579
    invoke-virtual {v5, v0, v1}, Lgnu/math/IntNum;->set(J)V

    goto :goto_2

    .line 582
    :cond_5
    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v7

    invoke-static/range {p2 .. p3}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v8

    invoke-static {v7, v8, v4, v5, v10}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 584
    :cond_6
    :goto_2
    return-void

    .line 586
    :cond_7
    neg-long v2, v2

    .end local p2    # "y":J
    .local v2, "y":J
    goto :goto_3

    .line 589
    .end local v2    # "y":J
    .end local v14    # "yNegative":Z
    .restart local p2    # "y":J
    :cond_8
    const/4 v14, 0x0

    .line 591
    .end local p2    # "y":J
    .restart local v2    # "y":J
    .restart local v14    # "yNegative":Z
    :goto_3
    div-long v11, v0, v2

    .line 592
    .local v11, "q":J
    rem-long v15, v0, v2

    .line 593
    .local v15, "r":J
    xor-int v13, v6, v14

    .line 595
    .local v13, "qNegative":Z
    const/16 v17, 0x0

    .line 596
    .local v17, "add_one":Z
    const-wide/16 v18, 0x1

    cmp-long v20, v15, v7

    if-eqz v20, :cond_b

    .line 598
    packed-switch v10, :pswitch_data_0

    goto :goto_6

    .line 608
    :pswitch_0
    and-long v7, v11, v18

    sub-long v7, v2, v7

    shr-long/2addr v7, v9

    cmp-long v20, v15, v7

    if-lez v20, :cond_9

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    :goto_4
    move/from16 v17, v9

    goto :goto_6

    .line 601
    :pswitch_1
    goto :goto_6

    .line 604
    :pswitch_2
    if-ne v10, v9, :cond_a

    goto :goto_5

    :cond_a
    const/4 v9, 0x0

    :goto_5
    if-ne v13, v9, :cond_b

    .line 605
    const/16 v17, 0x1

    .line 612
    :cond_b
    :goto_6
    if-eqz v4, :cond_e

    .line 614
    if-eqz v17, :cond_c

    .line 615
    add-long v11, v11, v18

    .line 616
    :cond_c
    if-eqz v13, :cond_d

    .line 617
    neg-long v7, v11

    move-wide v11, v7

    .line 618
    :cond_d
    invoke-virtual {v4, v11, v12}, Lgnu/math/IntNum;->set(J)V

    .line 620
    :cond_e
    if-eqz v5, :cond_11

    .line 623
    if-eqz v17, :cond_f

    .line 626
    sub-long v15, v2, v15

    .line 629
    xor-int/lit8 v7, v6, 0x1

    move v6, v7

    move-wide v7, v15

    goto :goto_7

    .line 623
    :cond_f
    move-wide v7, v15

    .line 636
    .end local v15    # "r":J
    .local v7, "r":J
    :goto_7
    if-eqz v6, :cond_10

    .line 637
    neg-long v7, v7

    .line 638
    :cond_10
    invoke-virtual {v5, v7, v8}, Lgnu/math/IntNum;->set(J)V

    move-wide v15, v7

    .line 640
    .end local v7    # "r":J
    .restart local v15    # "r":J
    :cond_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V
    .locals 21
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # Lgnu/math/IntNum;
    .param p2, "quotient"    # Lgnu/math/IntNum;
    .param p3, "remainder"    # Lgnu/math/IntNum;
    .param p4, "rounding_mode"    # I

    .line 654
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    iget-object v2, v0, Lgnu/math/IntNum;->words:[I

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    iget v2, v0, Lgnu/math/IntNum;->ival:I

    if-gt v2, v3, :cond_2

    :cond_0
    iget-object v2, v1, Lgnu/math/IntNum;->words:[I

    if-eqz v2, :cond_1

    iget v2, v1, Lgnu/math/IntNum;->ival:I

    if-gt v2, v3, :cond_2

    .line 657
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v11

    .line 658
    .local v11, "x_l":J
    invoke-virtual/range {p1 .. p1}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v13

    .line 659
    .local v13, "y_l":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v11, v4

    if-eqz v2, :cond_2

    cmp-long v2, v13, v4

    if-eqz v2, :cond_2

    .line 661
    move-wide v2, v11

    move-wide v4, v13

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    invoke-static/range {v2 .. v8}, Lgnu/math/IntNum;->divide(JJLgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 662
    return-void

    .line 666
    .end local v11    # "x_l":J
    .end local v13    # "y_l":J
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v2

    .line 667
    .local v2, "xNegative":Z
    invoke-virtual/range {p1 .. p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v4

    .line 668
    .local v4, "yNegative":Z
    xor-int v5, v2, v4

    .line 670
    .local v5, "qNegative":Z
    iget-object v6, v1, Lgnu/math/IntNum;->words:[I

    const/4 v7, 0x1

    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    iget v6, v1, Lgnu/math/IntNum;->ival:I

    .line 671
    .local v6, "ylen":I
    :goto_0
    new-array v8, v6, [I

    .line 672
    .local v8, "ywords":[I
    invoke-virtual {v1, v8}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 673
    :goto_1
    if-le v6, v7, :cond_4

    add-int/lit8 v11, v6, -0x1

    aget v11, v8, v11

    if-nez v11, :cond_4

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 675
    :cond_4
    iget-object v11, v0, Lgnu/math/IntNum;->words:[I

    if-nez v11, :cond_5

    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    iget v11, v0, Lgnu/math/IntNum;->ival:I

    .line 676
    .local v11, "xlen":I
    :goto_2
    add-int/lit8 v12, v11, 0x2

    new-array v12, v12, [I

    .line 677
    .local v12, "xwords":[I
    invoke-virtual {v0, v12}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 678
    :goto_3
    if-le v11, v7, :cond_6

    add-int/lit8 v13, v11, -0x1

    aget v13, v12, v13

    if-nez v13, :cond_6

    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 682
    :cond_6
    invoke-static {v12, v11, v8, v6}, Lgnu/math/MPN;->cmp([II[II)I

    move-result v13

    .line 683
    .local v13, "cmpval":I
    const/4 v14, 0x0

    if-gez v13, :cond_7

    .line 685
    move-object v15, v12

    .local v15, "rwords":[I
    move-object v12, v8

    move-object v8, v15

    .line 686
    move/from16 v16, v11

    .local v16, "rlen":I
    const/16 v17, 0x1

    .local v17, "qlen":I
    aput v14, v12, v14

    .line 687
    .end local v15    # "rwords":[I
    move/from16 v3, v16

    move/from16 v14, v17

    goto :goto_5

    .line 688
    .end local v16    # "rlen":I
    .end local v17    # "qlen":I
    :cond_7
    if-nez v13, :cond_8

    .line 690
    aput v7, v12, v14

    const/16 v17, 0x1

    .line 691
    .restart local v17    # "qlen":I
    aput v14, v8, v14

    const/16 v16, 0x1

    move/from16 v3, v16

    move/from16 v14, v17

    .restart local v16    # "rlen":I
    goto :goto_5

    .line 693
    .end local v16    # "rlen":I
    .end local v17    # "qlen":I
    :cond_8
    if-ne v6, v7, :cond_9

    .line 695
    move/from16 v17, v11

    .line 696
    .restart local v17    # "qlen":I
    const/16 v16, 0x1

    .line 697
    .restart local v16    # "rlen":I
    aget v15, v8, v14

    invoke-static {v12, v12, v11, v15}, Lgnu/math/MPN;->divmod_1([I[III)I

    move-result v15

    aput v15, v8, v14

    move/from16 v3, v16

    move/from16 v14, v17

    goto :goto_5

    .line 705
    .end local v16    # "rlen":I
    .end local v17    # "qlen":I
    :cond_9
    add-int/lit8 v15, v6, -0x1

    aget v15, v8, v15

    invoke-static {v15}, Lgnu/math/MPN;->count_leading_zeros(I)I

    move-result v15

    .line 706
    .local v15, "nshift":I
    if-eqz v15, :cond_a

    .line 710
    invoke-static {v8, v14, v8, v6, v15}, Lgnu/math/MPN;->lshift([II[III)I

    .line 714
    invoke-static {v12, v14, v12, v11, v15}, Lgnu/math/MPN;->lshift([II[III)I

    move-result v16

    .line 715
    .local v16, "x_high":I
    add-int/lit8 v17, v11, 0x1

    .end local v11    # "xlen":I
    .local v17, "xlen":I
    aput v16, v12, v11

    move/from16 v11, v17

    .line 718
    .end local v16    # "x_high":I
    .end local v17    # "xlen":I
    .restart local v11    # "xlen":I
    :cond_a
    if-ne v11, v6, :cond_b

    .line 719
    add-int/lit8 v16, v11, 0x1

    .end local v11    # "xlen":I
    .local v16, "xlen":I
    aput v14, v12, v11

    move/from16 v11, v16

    .line 720
    .end local v16    # "xlen":I
    .restart local v11    # "xlen":I
    :cond_b
    invoke-static {v12, v11, v8, v6}, Lgnu/math/MPN;->divide([II[II)V

    .line 721
    move/from16 v16, v6

    .line 722
    .local v16, "rlen":I
    move/from16 v3, v16

    .end local v16    # "rlen":I
    .local v3, "rlen":I
    invoke-static {v8, v12, v14, v3, v15}, Lgnu/math/MPN;->rshift0([I[IIII)V

    .line 724
    add-int/lit8 v16, v11, 0x1

    sub-int v14, v16, v6

    .line 725
    .local v14, "qlen":I
    if-eqz v9, :cond_c

    .line 727
    const/16 v16, 0x0

    move/from16 v7, v16

    .local v7, "i":I
    :goto_4
    if-ge v7, v14, :cond_c

    .line 728
    add-int v16, v7, v6

    aget v16, v12, v16

    aput v16, v12, v7

    .line 727
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 732
    .end local v7    # "i":I
    .end local v15    # "nshift":I
    :cond_c
    :goto_5
    const/4 v7, 0x1

    if-le v3, v7, :cond_d

    add-int/lit8 v7, v3, -0x1

    aget v7, v8, v7

    if-nez v7, :cond_d

    .line 733
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 734
    :cond_d
    add-int/lit8 v7, v3, -0x1

    aget v7, v8, v7

    if-gez v7, :cond_e

    .line 736
    const/4 v7, 0x0

    aput v7, v8, v3

    .line 737
    add-int/lit8 v3, v3, 0x1

    .line 742
    :cond_e
    const/4 v7, 0x0

    .line 743
    .local v7, "add_one":Z
    const/4 v15, 0x1

    if-gt v3, v15, :cond_10

    const/4 v15, 0x0

    aget v16, v8, v15

    if-eqz v16, :cond_f

    goto :goto_6

    :cond_f
    move/from16 v0, p4

    move/from16 v16, v6

    goto/16 :goto_d

    .line 745
    :cond_10
    :goto_6
    const/4 v15, 0x5

    move/from16 v0, p4

    if-ne v0, v15, :cond_12

    .line 747
    if-eqz v4, :cond_11

    const/16 v17, 0x2

    goto :goto_7

    :cond_11
    const/16 v17, 0x1

    :goto_7
    move/from16 v0, v17

    .line 749
    .end local p4    # "rounding_mode":I
    .local v0, "rounding_mode":I
    :cond_12
    packed-switch v0, :pswitch_data_0

    move/from16 v16, v6

    move/from16 v17, v7

    .end local v6    # "ylen":I
    .end local v7    # "add_one":Z
    .local v16, "ylen":I
    .local v17, "add_one":Z
    goto :goto_c

    .line 760
    .end local v16    # "ylen":I
    .end local v17    # "add_one":Z
    .restart local v6    # "ylen":I
    .restart local v7    # "add_one":Z
    :pswitch_0
    if-nez v10, :cond_13

    new-instance v15, Lgnu/math/IntNum;

    invoke-direct {v15}, Lgnu/math/IntNum;-><init>()V

    goto :goto_8

    :cond_13
    move-object v15, v10

    .line 761
    .local v15, "tmp":Lgnu/math/IntNum;
    :goto_8
    invoke-virtual {v15, v8, v3}, Lgnu/math/IntNum;->set([II)V

    .line 762
    move/from16 v16, v6

    const/4 v6, 0x1

    .end local v6    # "ylen":I
    .restart local v16    # "ylen":I
    invoke-static {v15, v6}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v15

    .line 763
    if-eqz v4, :cond_14

    .line 764
    invoke-virtual {v15}, Lgnu/math/IntNum;->setNegative()V

    .line 765
    :cond_14
    invoke-static {v15, v1}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v6

    .line 767
    .local v6, "cmp":I
    if-eqz v4, :cond_15

    .line 768
    neg-int v6, v6

    .line 769
    :cond_15
    move/from16 v17, v7

    const/4 v7, 0x1

    .end local v7    # "add_one":Z
    .restart local v17    # "add_one":Z
    if-eq v6, v7, :cond_17

    if-nez v6, :cond_16

    const/16 v18, 0x0

    aget v19, v12, v18

    and-int/lit8 v20, v19, 0x1

    if-eqz v20, :cond_16

    goto :goto_9

    :cond_16
    const/4 v7, 0x0

    goto :goto_a

    :cond_17
    :goto_9
    const/4 v7, 0x1

    .end local v17    # "add_one":Z
    .restart local v7    # "add_one":Z
    :goto_a
    goto :goto_d

    .line 752
    .end local v15    # "tmp":Lgnu/math/IntNum;
    .end local v16    # "ylen":I
    .local v6, "ylen":I
    :pswitch_1
    move/from16 v16, v6

    move/from16 v17, v7

    .end local v6    # "ylen":I
    .end local v7    # "add_one":Z
    .restart local v16    # "ylen":I
    .restart local v17    # "add_one":Z
    goto :goto_c

    .line 755
    .end local v16    # "ylen":I
    .end local v17    # "add_one":Z
    .restart local v6    # "ylen":I
    .restart local v7    # "add_one":Z
    :pswitch_2
    move/from16 v16, v6

    move/from16 v17, v7

    .end local v6    # "ylen":I
    .end local v7    # "add_one":Z
    .restart local v16    # "ylen":I
    .restart local v17    # "add_one":Z
    const/4 v6, 0x1

    if-ne v0, v6, :cond_18

    const/4 v6, 0x1

    goto :goto_b

    :cond_18
    const/4 v6, 0x0

    :goto_b
    if-ne v5, v6, :cond_19

    .line 756
    const/4 v7, 0x1

    .end local v17    # "add_one":Z
    .restart local v7    # "add_one":Z
    goto :goto_d

    .line 772
    .end local v7    # "add_one":Z
    .restart local v17    # "add_one":Z
    :cond_19
    :goto_c
    move/from16 v7, v17

    .end local v17    # "add_one":Z
    .restart local v7    # "add_one":Z
    :goto_d
    if-eqz v9, :cond_1e

    .line 774
    add-int/lit8 v6, v14, -0x1

    aget v6, v12, v6

    if-gez v6, :cond_1a

    .line 776
    const/4 v6, 0x0

    aput v6, v12, v14

    .line 777
    add-int/lit8 v14, v14, 0x1

    .line 779
    :cond_1a
    invoke-virtual {v9, v12, v14}, Lgnu/math/IntNum;->set([II)V

    .line 780
    if-eqz v5, :cond_1c

    .line 782
    if-eqz v7, :cond_1b

    .line 783
    invoke-virtual/range {p2 .. p2}, Lgnu/math/IntNum;->setInvert()V

    const/4 v6, 0x1

    goto :goto_e

    .line 785
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lgnu/math/IntNum;->setNegative()V

    const/4 v6, 0x1

    goto :goto_e

    .line 787
    :cond_1c
    if-eqz v7, :cond_1d

    .line 788
    const/4 v6, 0x1

    invoke-virtual {v9, v6}, Lgnu/math/IntNum;->setAdd(I)V

    goto :goto_e

    .line 787
    :cond_1d
    const/4 v6, 0x1

    goto :goto_e

    .line 772
    :cond_1e
    const/4 v6, 0x1

    .line 790
    :goto_e
    if-eqz v10, :cond_24

    .line 793
    invoke-virtual {v10, v8, v3}, Lgnu/math/IntNum;->set([II)V

    .line 794
    if-eqz v7, :cond_23

    .line 799
    iget-object v15, v1, Lgnu/math/IntNum;->words:[I

    if-nez v15, :cond_20

    .line 801
    move-object/from16 v6, p3

    .line 802
    .local v6, "tmp":Lgnu/math/IntNum;
    if-eqz v4, :cond_1f

    const/4 v15, 0x0

    aget v15, v8, v15

    move/from16 p4, v0

    .end local v0    # "rounding_mode":I
    .restart local p4    # "rounding_mode":I
    iget v0, v1, Lgnu/math/IntNum;->ival:I

    add-int/2addr v15, v0

    goto :goto_f

    .end local p4    # "rounding_mode":I
    .restart local v0    # "rounding_mode":I
    :cond_1f
    move/from16 p4, v0

    const/4 v15, 0x0

    .end local v0    # "rounding_mode":I
    .restart local p4    # "rounding_mode":I
    aget v0, v8, v15

    iget v15, v1, Lgnu/math/IntNum;->ival:I

    sub-int v15, v0, v15

    :goto_f
    invoke-virtual {v6, v15}, Lgnu/math/IntNum;->set(I)V

    goto :goto_11

    .line 805
    .end local v6    # "tmp":Lgnu/math/IntNum;
    .end local p4    # "rounding_mode":I
    .restart local v0    # "rounding_mode":I
    :cond_20
    move/from16 p4, v0

    .end local v0    # "rounding_mode":I
    .restart local p4    # "rounding_mode":I
    if-eqz v4, :cond_21

    const/4 v0, 0x1

    goto :goto_10

    :cond_21
    const/4 v0, -0x1

    :goto_10
    invoke-static {v10, v1, v0}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v6

    .line 810
    .restart local v6    # "tmp":Lgnu/math/IntNum;
    :goto_11
    if-eqz v2, :cond_22

    .line 811
    invoke-virtual {v10, v6}, Lgnu/math/IntNum;->setNegative(Lgnu/math/IntNum;)V

    goto :goto_12

    .line 813
    :cond_22
    invoke-virtual {v10, v6}, Lgnu/math/IntNum;->set(Lgnu/math/IntNum;)V

    .line 814
    .end local v6    # "tmp":Lgnu/math/IntNum;
    :goto_12
    goto :goto_13

    .line 819
    .end local p4    # "rounding_mode":I
    .restart local v0    # "rounding_mode":I
    :cond_23
    move/from16 p4, v0

    .end local v0    # "rounding_mode":I
    .restart local p4    # "rounding_mode":I
    if-eqz v2, :cond_25

    .line 820
    invoke-virtual/range {p3 .. p3}, Lgnu/math/IntNum;->setNegative()V

    goto :goto_13

    .line 790
    .end local p4    # "rounding_mode":I
    .restart local v0    # "rounding_mode":I
    :cond_24
    move/from16 p4, v0

    .line 823
    .end local v0    # "rounding_mode":I
    .restart local p4    # "rounding_mode":I
    :cond_25
    :goto_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z
    .locals 5
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 1301
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_1

    .line 1302
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    iget v3, p1, Lgnu/math/IntNum;->ival:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1303
    :cond_1
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-eqz v0, :cond_5

    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-eqz v0, :cond_5

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    iget v3, p1, Lgnu/math/IntNum;->ival:I

    if-eq v0, v3, :cond_2

    goto :goto_1

    .line 1305
    :cond_2
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    .local v0, "i":I
    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4

    .line 1307
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    aget v3, v3, v0

    iget-object v4, p1, Lgnu/math/IntNum;->words:[I

    aget v4, v4, v0

    if-eq v3, v4, :cond_3

    .line 1308
    return v2

    .line 1310
    .end local v0    # "i":I
    :cond_4
    return v1

    .line 1304
    :cond_5
    :goto_1
    return v2
.end method

.method public static final gcd(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 934
    if-le p1, p0, :cond_0

    .line 936
    move v0, p0

    .local v0, "tmp":I
    move p0, p1

    move p1, v0

    .line 940
    .end local v0    # "tmp":I
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 941
    return p0

    .line 942
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 943
    return p1

    .line 946
    :cond_2
    move v0, p1

    .line 947
    .restart local v0    # "tmp":I
    rem-int p1, p0, p1

    .line 948
    move p0, v0

    .line 949
    .end local v0    # "tmp":I
    goto :goto_0
.end method

.method public static gcd(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 8
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 955
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    .line 956
    .local v0, "xval":I
    iget v1, p1, Lgnu/math/IntNum;->ival:I

    .line 957
    .local v1, "yval":I
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_4

    .line 959
    if-nez v0, :cond_0

    .line 960
    invoke-static {p1}, Lgnu/math/IntNum;->abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    return-object v2

    .line 961
    :cond_0
    iget-object v2, p1, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_3

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_3

    if-eq v1, v2, :cond_3

    .line 964
    if-gez v0, :cond_1

    .line 965
    neg-int v0, v0

    .line 966
    :cond_1
    if-gez v1, :cond_2

    .line 967
    neg-int v1, v1

    .line 968
    :cond_2
    invoke-static {v0, v1}, Lgnu/math/IntNum;->gcd(II)I

    move-result v2

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    return-object v2

    .line 970
    :cond_3
    const/4 v0, 0x1

    .line 972
    :cond_4
    iget-object v2, p1, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_6

    .line 974
    if-nez v1, :cond_5

    .line 975
    invoke-static {p0}, Lgnu/math/IntNum;->abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    return-object v2

    .line 976
    :cond_5
    const/4 v1, 0x1

    .line 978
    :cond_6
    if-le v0, v1, :cond_7

    move v2, v0

    goto :goto_0

    :cond_7
    move v2, v1

    .line 979
    .local v2, "len":I
    :goto_0
    new-array v3, v2, [I

    .line 980
    .local v3, "xwords":[I
    new-array v4, v2, [I

    .line 981
    .local v4, "ywords":[I
    invoke-virtual {p0, v3}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 982
    invoke-virtual {p1, v4}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 983
    invoke-static {v3, v4, v2}, Lgnu/math/MPN;->gcd([I[II)I

    move-result v2

    .line 984
    new-instance v5, Lgnu/math/IntNum;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lgnu/math/IntNum;-><init>(I)V

    .line 987
    .local v5, "result":Lgnu/math/IntNum;
    add-int/lit8 v7, v2, -0x1

    aget v7, v3, v7

    if-gez v7, :cond_8

    .line 988
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "len":I
    .local v7, "len":I
    aput v6, v3, v2

    move v2, v7

    .line 989
    .end local v7    # "len":I
    .restart local v2    # "len":I
    :cond_8
    iput v2, v5, Lgnu/math/IntNum;->ival:I

    .line 990
    iput-object v3, v5, Lgnu/math/IntNum;->words:[I

    .line 991
    invoke-virtual {v5}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v6

    return-object v6
.end method

.method public static intValue(Ljava/lang/Object;)I
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .line 1277
    move-object v0, p0

    check-cast v0, Lgnu/math/IntNum;

    .line 1278
    .local v0, "inum":Lgnu/math/IntNum;
    iget-object v1, v0, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_0

    .line 1281
    iget v1, v0, Lgnu/math/IntNum;->ival:I

    return v1

    .line 1280
    :cond_0
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "integer too large"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static lcm(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 5
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 996
    invoke-virtual {p0}, Lgnu/math/IntNum;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lgnu/math/IntNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 998
    :cond_0
    invoke-static {p0}, Lgnu/math/IntNum;->abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    .line 999
    invoke-static {p1}, Lgnu/math/IntNum;->abs(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    .line 1000
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    .line 1001
    .local v0, "quotient":Lgnu/math/IntNum;
    invoke-static {p0, p1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {p0, p1}, Lgnu/math/IntNum;->gcd(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v2, v0, v3, v4}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 1002
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v1

    return-object v1

    .line 997
    .end local v0    # "quotient":Lgnu/math/IntNum;
    :cond_1
    :goto_0
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static make(I)Lgnu/math/IntNum;
    .locals 2
    .param p0, "value"    # I

    .line 48
    const/16 v0, -0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0x400

    if-gt p0, v0, :cond_0

    .line 49
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    add-int/lit8 v1, p0, 0x64

    aget-object v0, v0, v1

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0, p0}, Lgnu/math/IntNum;-><init>(I)V

    return-object v0
.end method

.method public static make(J)Lgnu/math/IntNum;
    .locals 5
    .param p0, "value"    # J

    .line 78
    const-wide/16 v0, -0x64

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    .line 79
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    long-to-int v1, p0

    add-int/lit8 v1, v1, 0x64

    aget-object v0, v0, v1

    return-object v0

    .line 80
    :cond_0
    long-to-int v0, p0

    .line 81
    .local v0, "i":I
    int-to-long v1, v0

    cmp-long v3, v1, p0

    if-nez v3, :cond_1

    .line 82
    new-instance v1, Lgnu/math/IntNum;

    invoke-direct {v1, v0}, Lgnu/math/IntNum;-><init>(I)V

    return-object v1

    .line 83
    :cond_1
    const/4 v1, 0x2

    invoke-static {v1}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v2

    .line 84
    .local v2, "result":Lgnu/math/IntNum;
    iput v1, v2, Lgnu/math/IntNum;->ival:I

    .line 85
    iget-object v1, v2, Lgnu/math/IntNum;->words:[I

    const/4 v3, 0x0

    aput v0, v1, v3

    .line 86
    iget-object v1, v2, Lgnu/math/IntNum;->words:[I

    const/16 v3, 0x20

    shr-long v3, p0, v3

    long-to-int v4, v3

    const/4 v3, 0x1

    aput v4, v1, v3

    .line 87
    return-object v2
.end method

.method public static make([I)Lgnu/math/IntNum;
    .locals 1
    .param p0, "words"    # [I

    .line 133
    array-length v0, p0

    invoke-static {p0, v0}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static make([II)Lgnu/math/IntNum;
    .locals 1
    .param p0, "words"    # [I
    .param p1, "len"    # I

    .line 120
    if-nez p0, :cond_0

    .line 121
    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    invoke-static {p0, p1}, Lgnu/math/IntNum;->wordsNeeded([II)I

    move-result p1

    .line 123
    const/4 v0, 0x1

    if-gt p1, v0, :cond_2

    .line 124
    if-nez p1, :cond_1

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    aget v0, p0, v0

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    :goto_0
    return-object v0

    .line 125
    :cond_2
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    .line 126
    .local v0, "num":Lgnu/math/IntNum;
    iput-object p0, v0, Lgnu/math/IntNum;->words:[I

    .line 127
    iput p1, v0, Lgnu/math/IntNum;->ival:I

    .line 128
    return-object v0
.end method

.method public static makeU(J)Lgnu/math/IntNum;
    .locals 6
    .param p0, "value"    # J

    .line 106
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    .line 107
    invoke-static {p0, p1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v1

    .line 109
    .local v1, "result":Lgnu/math/IntNum;
    iput v0, v1, Lgnu/math/IntNum;->ival:I

    .line 110
    iget-object v0, v1, Lgnu/math/IntNum;->words:[I

    long-to-int v2, p0

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 111
    iget-object v0, v1, Lgnu/math/IntNum;->words:[I

    const/16 v2, 0x20

    shr-long v4, p0, v2

    long-to-int v2, v4

    const/4 v4, 0x1

    aput v2, v0, v4

    .line 112
    iget-object v0, v1, Lgnu/math/IntNum;->words:[I

    const/4 v2, 0x2

    aput v3, v0, v2

    .line 113
    return-object v1
.end method

.method public static minusOne()Lgnu/math/IntNum;
    .locals 2

    .line 72
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    const/16 v1, 0x63

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 863
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lgnu/math/IntNum;->remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 2
    .param p0, "x"    # Lgnu/math/IntNum;

    .line 1616
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 1617
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    neg-int v0, v0

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 1618
    :cond_0
    new-instance v0, Lgnu/math/IntNum;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/math/IntNum;-><init>(I)V

    .line 1619
    .local v0, "result":Lgnu/math/IntNum;
    invoke-virtual {v0, p0}, Lgnu/math/IntNum;->setNegative(Lgnu/math/IntNum;)V

    .line 1620
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v1

    return-object v1
.end method

.method public static negate([I[II)Z
    .locals 10
    .param p0, "dest"    # [I
    .param p1, "src"    # [I
    .param p2, "len"    # I

    .line 1573
    const-wide/16 v0, 0x1

    .line 1574
    .local v0, "carry":J
    add-int/lit8 v2, p2, -0x1

    aget v2, p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1575
    .local v2, "negative":Z
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, p2, :cond_1

    .line 1577
    aget v6, p1, v5

    xor-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1578
    long-to-int v6, v0

    aput v6, p0, v5

    .line 1579
    const/16 v6, 0x20

    shr-long/2addr v0, v6

    .line 1575
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1581
    .end local v5    # "i":I
    :cond_1
    if-eqz v2, :cond_2

    add-int/lit8 v5, p2, -0x1

    aget v5, p0, v5

    if-gez v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method public static final one()Lgnu/math/IntNum;
    .locals 2

    .line 61
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    const/16 v1, 0x65

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 9
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # I

    .line 885
    if-gtz p1, :cond_1

    .line 887
    if-nez p1, :cond_0

    .line 888
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 890
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "negative exponent"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 892
    :cond_1
    invoke-virtual {p0}, Lgnu/math/IntNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    return-object p0

    .line 894
    :cond_2
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    .line 895
    .local v0, "plen":I
    :goto_0
    invoke-virtual {p0}, Lgnu/math/IntNum;->intLength()I

    move-result v2

    mul-int v2, v2, p1

    shr-int/lit8 v2, v2, 0x5

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    .line 896
    .local v2, "blen":I
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 897
    .local v3, "negative":Z
    :goto_1
    new-array v5, v2, [I

    .line 898
    .local v5, "pow2":[I
    new-array v6, v2, [I

    .line 899
    .local v6, "rwords":[I
    new-array v7, v2, [I

    .line 900
    .local v7, "work":[I
    invoke-virtual {p0, v5}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 901
    const/4 v8, 0x1

    .line 902
    .local v8, "rlen":I
    aput v1, v6, v4

    .line 907
    :goto_2
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_6

    .line 909
    invoke-static {v7, v5, v0, v6, v8}, Lgnu/math/MPN;->mul([I[II[II)V

    .line 910
    move-object v1, v7

    .local v1, "temp":[I
    move-object v7, v6

    move-object v4, v1

    .line 911
    .end local v6    # "rwords":[I
    .local v4, "rwords":[I
    add-int/2addr v8, v0

    .line 912
    :goto_3
    add-int/lit8 v6, v8, -0x1

    aget v6, v4, v6

    if-nez v6, :cond_5

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_5
    move-object v6, v4

    .line 914
    .end local v1    # "temp":[I
    .end local v4    # "rwords":[I
    .restart local v6    # "rwords":[I
    :cond_6
    shr-int/lit8 p1, p1, 0x1

    .line 915
    if-nez p1, :cond_9

    .line 916
    nop

    .line 923
    add-int/lit8 v1, v8, -0x1

    aget v1, v6, v1

    if-gez v1, :cond_7

    .line 924
    add-int/lit8 v8, v8, 0x1

    .line 925
    :cond_7
    if-eqz v3, :cond_8

    .line 926
    invoke-static {v6, v6, v8}, Lgnu/math/IntNum;->negate([I[II)Z

    .line 927
    :cond_8
    invoke-static {v6, v8}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v1

    return-object v1

    .line 918
    :cond_9
    invoke-static {v7, v5, v0, v5, v0}, Lgnu/math/MPN;->mul([I[II[II)V

    .line 919
    move-object v1, v7

    .restart local v1    # "temp":[I
    move-object v7, v5

    move-object v5, v1

    .line 920
    mul-int/lit8 v0, v0, 0x2

    .line 921
    :goto_4
    add-int/lit8 v4, v0, -0x1

    aget v4, v5, v4

    if-nez v4, :cond_a

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 922
    .end local v1    # "temp":[I
    :cond_a
    goto :goto_2
.end method

.method public static quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 834
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 2
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # Lgnu/math/IntNum;
    .param p2, "rounding_mode"    # I

    .line 827
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    .line 828
    .local v0, "quotient":Lgnu/math/IntNum;
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 829
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v1

    return-object v1
.end method

.method public static remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 858
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lgnu/math/IntNum;->remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 2
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # Lgnu/math/IntNum;
    .param p2, "rounding_mode"    # I

    .line 849
    invoke-virtual {p1}, Lgnu/math/IntNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    return-object p0

    .line 851
    :cond_0
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0}, Lgnu/math/IntNum;-><init>()V

    .line 852
    .local v0, "rem":Lgnu/math/IntNum;
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lgnu/math/IntNum;->divide(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/math/IntNum;I)V

    .line 853
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v1

    return-object v1
.end method

.method public static shift(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "count"    # I

    .line 1110
    const/4 v0, 0x0

    const/16 v1, 0x20

    if-lt p1, v1, :cond_0

    .line 1111
    return v0

    .line 1112
    :cond_0
    if-ltz p1, :cond_1

    .line 1113
    shl-int v0, p0, p1

    return v0

    .line 1114
    :cond_1
    neg-int p1, p1

    .line 1115
    if-lt p1, v1, :cond_3

    .line 1116
    if-gez p0, :cond_2

    const/4 v0, -0x1

    :cond_2
    return v0

    .line 1117
    :cond_3
    shr-int v0, p0, p1

    return v0
.end method

.method public static shift(JI)J
    .locals 3
    .param p0, "x"    # J
    .param p2, "count"    # I

    .line 1122
    const-wide/16 v0, 0x0

    const/16 v2, 0x20

    if-lt p2, v2, :cond_0

    .line 1123
    return-wide v0

    .line 1124
    :cond_0
    if-ltz p2, :cond_1

    .line 1125
    shl-long v0, p0, p2

    return-wide v0

    .line 1126
    :cond_1
    neg-int p2, p2

    .line 1127
    if-lt p2, v2, :cond_3

    .line 1128
    cmp-long v2, p0, v0

    if-gez v2, :cond_2

    const-wide/16 v0, -0x1

    :cond_2
    return-wide v0

    .line 1129
    :cond_3
    shr-long v0, p0, p2

    return-wide v0
.end method

.method public static shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 2
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "count"    # I

    .line 1094
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 1096
    if-gtz p1, :cond_2

    .line 1097
    const/16 v0, -0x20

    if-le p1, v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    neg-int v1, p1

    shr-int v1, v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    if-gez v0, :cond_1

    const/4 v1, -0x1

    :cond_1
    :goto_0
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 1098
    :cond_2
    const/16 v0, 0x20

    if-ge p1, v0, :cond_3

    .line 1099
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    int-to-long v0, v0

    shl-long/2addr v0, p1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 1101
    :cond_3
    if-nez p1, :cond_4

    .line 1102
    return-object p0

    .line 1103
    :cond_4
    new-instance v0, Lgnu/math/IntNum;

    invoke-direct {v0, v1}, Lgnu/math/IntNum;-><init>(I)V

    .line 1104
    .local v0, "result":Lgnu/math/IntNum;
    invoke-virtual {v0, p0, p1}, Lgnu/math/IntNum;->setShift(Lgnu/math/IntNum;I)V

    .line 1105
    invoke-virtual {v0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v1

    return-object v1
.end method

.method public static sub(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 1
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 424
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static final ten()Lgnu/math/IntNum;
    .locals 2

    .line 66
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    const/16 v1, 0x6e

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static final times(II)Lgnu/math/IntNum;
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 469
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static final times(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 6
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # I

    .line 474
    if-nez p1, :cond_0

    .line 475
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 476
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 477
    return-object p0

    .line 478
    :cond_1
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    .line 479
    .local v0, "xwords":[I
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    .line 480
    .local v1, "xlen":I
    if-nez v0, :cond_2

    .line 481
    int-to-long v2, v1

    int-to-long v4, p1

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v2

    return-object v2

    .line 483
    :cond_2
    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v2

    .line 484
    .local v2, "result":Lgnu/math/IntNum;
    add-int/lit8 v3, v1, -0x1

    aget v3, v0, v3

    if-gez v3, :cond_3

    .line 486
    const/4 v3, 0x1

    .line 487
    .local v3, "negative":Z
    iget-object v4, v2, Lgnu/math/IntNum;->words:[I

    invoke-static {v4, v0, v1}, Lgnu/math/IntNum;->negate([I[II)Z

    .line 488
    iget-object v0, v2, Lgnu/math/IntNum;->words:[I

    goto :goto_0

    .line 491
    .end local v3    # "negative":Z
    :cond_3
    const/4 v3, 0x0

    .line 492
    .restart local v3    # "negative":Z
    :goto_0
    if-gez p1, :cond_4

    .line 494
    xor-int/lit8 v4, v3, 0x1

    move v3, v4

    .line 495
    neg-int p1, p1

    .line 497
    :cond_4
    iget-object v4, v2, Lgnu/math/IntNum;->words:[I

    iget-object v5, v2, Lgnu/math/IntNum;->words:[I

    invoke-static {v5, v0, v1, p1}, Lgnu/math/MPN;->mul_1([I[III)I

    move-result v5

    aput v5, v4, v1

    .line 498
    add-int/lit8 v4, v1, 0x1

    iput v4, v2, Lgnu/math/IntNum;->ival:I

    .line 499
    if-eqz v3, :cond_5

    .line 500
    invoke-virtual {v2}, Lgnu/math/IntNum;->setNegative()V

    .line 501
    :cond_5
    invoke-virtual {v2}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v4

    return-object v4
.end method

.method public static final times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;
    .locals 7
    .param p0, "x"    # Lgnu/math/IntNum;
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 506
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 507
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {p0, v0}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 508
    :cond_0
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_1

    .line 509
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {p1, v0}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 510
    :cond_1
    const/4 v0, 0x0

    .line 513
    .local v0, "negative":Z
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    .line 514
    .local v1, "xlen":I
    iget v2, p1, Lgnu/math/IntNum;->ival:I

    .line 515
    .local v2, "ylen":I
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 517
    const/4 v0, 0x1

    .line 518
    new-array v3, v1, [I

    .line 519
    .local v3, "xwords":[I
    iget-object v4, p0, Lgnu/math/IntNum;->words:[I

    invoke-static {v3, v4, v1}, Lgnu/math/IntNum;->negate([I[II)Z

    goto :goto_0

    .line 523
    .end local v3    # "xwords":[I
    :cond_2
    const/4 v0, 0x0

    .line 524
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    .line 526
    .restart local v3    # "xwords":[I
    :goto_0
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 528
    xor-int/lit8 v4, v0, 0x1

    move v0, v4

    .line 529
    new-array v4, v2, [I

    .line 530
    .local v4, "ywords":[I
    iget-object v5, p1, Lgnu/math/IntNum;->words:[I

    invoke-static {v4, v5, v2}, Lgnu/math/IntNum;->negate([I[II)Z

    goto :goto_1

    .line 533
    .end local v4    # "ywords":[I
    :cond_3
    iget-object v4, p1, Lgnu/math/IntNum;->words:[I

    .line 535
    .restart local v4    # "ywords":[I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 537
    move-object v5, v3

    .local v5, "twords":[I
    move-object v3, v4

    move-object v4, v5

    .line 538
    move v6, v1

    .local v6, "tlen":I
    move v1, v2

    move v2, v6

    .line 540
    .end local v5    # "twords":[I
    .end local v6    # "tlen":I
    :cond_4
    add-int v5, v1, v2

    invoke-static {v5}, Lgnu/math/IntNum;->alloc(I)Lgnu/math/IntNum;

    move-result-object v5

    .line 541
    .local v5, "result":Lgnu/math/IntNum;
    iget-object v6, v5, Lgnu/math/IntNum;->words:[I

    invoke-static {v6, v3, v1, v4, v2}, Lgnu/math/MPN;->mul([I[II[II)V

    .line 542
    add-int v6, v1, v2

    iput v6, v5, Lgnu/math/IntNum;->ival:I

    .line 543
    if-eqz v0, :cond_5

    .line 544
    invoke-virtual {v5}, Lgnu/math/IntNum;->setNegative()V

    .line 545
    :cond_5
    invoke-virtual {v5}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v6

    return-object v6
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/math/IntNum;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1401
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1347
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1350
    .local v0, "len":I
    add-int v1, v0, p1

    const/16 v2, 0x1c

    const/16 v3, 0x2b

    if-gt v1, v2, :cond_1

    .line 1353
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_0

    .line 1355
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1357
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v1

    return-object v1

    .line 1360
    :cond_1
    const/4 v1, 0x0

    .line 1361
    .local v1, "byte_len":I
    new-array v2, v0, [B

    .line 1362
    .local v2, "bytes":[B
    const/4 v4, 0x0

    .line 1363
    .local v4, "negative":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_7

    .line 1365
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1366
    .local v6, "ch":C
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_2

    if-nez v5, :cond_2

    .line 1367
    const/4 v4, 0x1

    goto :goto_1

    .line 1368
    :cond_2
    if-ne v6, v3, :cond_3

    if-nez v5, :cond_3

    .line 1369
    goto :goto_1

    .line 1370
    :cond_3
    const/16 v7, 0x5f

    if-eq v6, v7, :cond_6

    if-nez v1, :cond_4

    const/16 v7, 0x20

    if-eq v6, v7, :cond_6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_4

    .line 1371
    goto :goto_1

    .line 1374
    :cond_4
    invoke-static {v6, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 1375
    .local v7, "digit":I
    if-ltz v7, :cond_5

    .line 1377
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "byte_len":I
    .local v8, "byte_len":I
    int-to-byte v9, v7

    aput-byte v9, v2, v1

    move v1, v8

    goto :goto_1

    .line 1376
    .end local v8    # "byte_len":I
    .restart local v1    # "byte_len":I
    :cond_5
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "For input string: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1363
    .end local v6    # "ch":C
    .end local v7    # "digit":I
    :cond_6
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1380
    .end local v5    # "i":I
    :cond_7
    invoke-static {v2, v1, v4, p1}, Lgnu/math/IntNum;->valueOf([BIZI)Lgnu/math/IntNum;

    move-result-object v3

    return-object v3
.end method

.method public static valueOf([BIZI)Lgnu/math/IntNum;
    .locals 5
    .param p0, "digits"    # [B
    .param p1, "byte_len"    # I
    .param p2, "negative"    # Z
    .param p3, "radix"    # I

    .line 1386
    invoke-static {p3}, Lgnu/math/MPN;->chars_per_word(I)I

    move-result v0

    .line 1387
    .local v0, "chars_per_word":I
    div-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 1388
    .local v1, "words":[I
    invoke-static {v1, p0, p1, p3}, Lgnu/math/MPN;->set_str([I[BII)I

    move-result v2

    .line 1389
    .local v2, "size":I
    if-nez v2, :cond_0

    .line 1390
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v3

    return-object v3

    .line 1391
    :cond_0
    add-int/lit8 v3, v2, -0x1

    aget v3, v1, v3

    if-gez v3, :cond_1

    .line 1392
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "size":I
    .local v3, "size":I
    const/4 v4, 0x0

    aput v4, v1, v2

    move v2, v3

    .line 1393
    .end local v3    # "size":I
    .restart local v2    # "size":I
    :cond_1
    if-eqz p2, :cond_2

    .line 1394
    invoke-static {v1, v1, v2}, Lgnu/math/IntNum;->negate([I[II)Z

    .line 1395
    :cond_2
    invoke-static {v1, v2}, Lgnu/math/IntNum;->make([II)Lgnu/math/IntNum;

    move-result-object v3

    return-object v3
.end method

.method public static valueOf([CIIIZ)Lgnu/math/IntNum;
    .locals 7
    .param p0, "buf"    # [C
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "radix"    # I
    .param p4, "negative"    # Z

    .line 1324
    const/4 v0, 0x0

    .line 1325
    .local v0, "byte_len":I
    new-array v1, p2, [B

    .line 1326
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_4

    .line 1328
    add-int v3, p1, v2

    aget-char v3, p0, v3

    .line 1329
    .local v3, "ch":C
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 1330
    const/4 p4, 0x1

    goto :goto_1

    .line 1331
    :cond_0
    const/16 v4, 0x5f

    if-eq v3, v4, :cond_3

    if-nez v0, :cond_1

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 1332
    goto :goto_1

    .line 1335
    :cond_1
    invoke-static {v3, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 1336
    .local v4, "digit":I
    if-gez v4, :cond_2

    .line 1337
    goto :goto_2

    .line 1338
    :cond_2
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "byte_len":I
    .local v5, "byte_len":I
    int-to-byte v6, v4

    aput-byte v6, v1, v0

    move v0, v5

    .line 1326
    .end local v3    # "ch":C
    .end local v4    # "digit":I
    .end local v5    # "byte_len":I
    .restart local v0    # "byte_len":I
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1341
    .end local v2    # "i":I
    :cond_4
    :goto_2
    invoke-static {v1, v0, p4, p3}, Lgnu/math/IntNum;->valueOf([BIZI)Lgnu/math/IntNum;

    move-result-object v2

    return-object v2
.end method

.method public static wordsNeeded([II)I
    .locals 4
    .param p0, "words"    # [I
    .param p1, "len"    # I

    .line 289
    move v0, p1

    .line 290
    .local v0, "i":I
    if-lez v0, :cond_2

    .line 292
    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    .line 293
    .local v1, "word":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 295
    :cond_0
    if-lez v0, :cond_2

    add-int/lit8 v3, v0, -0x1

    aget v3, p0, v3

    move v1, v3

    if-gez v3, :cond_2

    .line 297
    add-int/lit8 v0, v0, -0x1

    .line 298
    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 303
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    if-lez v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    move v1, v2

    if-ltz v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 306
    .end local v1    # "word":I
    :cond_2
    :goto_1
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public static final zero()Lgnu/math/IntNum;
    .locals 2

    .line 56
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    const/16 v1, 0x64

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 1
    .param p1, "y"    # Ljava/lang/Object;
    .param p2, "k"    # I

    .line 1514
    instance-of v0, p1, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 1515
    move-object v0, p1

    check-cast v0, Lgnu/math/IntNum;

    invoke-static {p0, v0, p2}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 1516
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-eqz v0, :cond_1

    .line 1518
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0, p2}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0

    .line 1517
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public asBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    .line 1705
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1706
    new-instance v0, Ljava/math/BigDecimal;

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    return-object v0

    .line 1707
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 1708
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 1709
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lgnu/math/IntNum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public asBigInteger()Ljava/math/BigInteger;
    .locals 2

    .line 1698
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-eqz v0, :cond_1

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 1700
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lgnu/math/IntNum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1699
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public canonicalize()Lgnu/math/IntNum;
    .locals 3

    .line 311
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v0, v1}, Lgnu/math/IntNum;->wordsNeeded([II)I

    move-result v0

    iput v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 314
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    if-ne v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lgnu/math/IntNum;->ival:I

    .line 316
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/math/IntNum;->words:[I

    .line 318
    :cond_1
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_2

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/16 v1, -0x64

    if-lt v0, v1, :cond_2

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/16 v2, 0x400

    if-gt v0, v2, :cond_2

    .line 319
    sget-object v0, Lgnu/math/IntNum;->smallFixNums:[Lgnu/math/IntNum;

    iget v2, p0, Lgnu/math/IntNum;->ival:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    return-object v0

    .line 320
    :cond_2
    return-object p0
.end method

.method checkBits(I)Z
    .locals 5
    .param p1, "n"    # I

    .line 1420
    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 1421
    return v0

    .line 1422
    :cond_0
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 1423
    const/16 v1, 0x1f

    if-gt p1, v1, :cond_1

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    shl-int v3, v2, p1

    sub-int/2addr v3, v2

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 1425
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    shr-int/lit8 v3, p1, 0x5

    if-ge v1, v3, :cond_5

    .line 1426
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    aget v3, v3, v1

    if-eqz v3, :cond_4

    .line 1427
    return v2

    .line 1425
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1428
    :cond_5
    and-int/lit8 v3, p1, 0x1f

    if-eqz v3, :cond_6

    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    aget v3, v3, v1

    and-int/lit8 v4, p1, 0x1f

    shl-int v4, v2, v4

    sub-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 257
    instance-of v0, p1, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 258
    move-object v0, p1

    check-cast v0, Lgnu/math/IntNum;

    invoke-static {p0, v0}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v0

    return v0

    .line 259
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/math/RealNum;

    invoke-virtual {v0, p0}, Lgnu/math/RealNum;->compareReversed(Lgnu/math/Numeric;)I

    move-result v0

    return v0
.end method

.method public final denominator()Lgnu/math/IntNum;
    .locals 1

    .line 188
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 3
    .param p1, "y"    # Ljava/lang/Object;

    .line 1532
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 1534
    move-object v0, p1

    check-cast v0, Lgnu/math/RatNum;

    .line 1535
    .local v0, "r":Lgnu/math/RatNum;
    invoke-virtual {v0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {p0, v1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {v0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v1

    return-object v1

    .line 1538
    .end local v0    # "r":Lgnu/math/RatNum;
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-eqz v0, :cond_1

    .line 1540
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0

    .line 1539
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public doubleValue()D
    .locals 3

    .line 1406
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1407
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    int-to-double v0, v0

    return-wide v0

    .line 1408
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 1409
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 1410
    :cond_1
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1411
    invoke-static {p0}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v1}, Lgnu/math/IntNum;->roundToDouble(IZZ)D

    move-result-wide v0

    return-wide v0

    .line 1413
    :cond_2
    invoke-virtual {p0, v1, v1, v1}, Lgnu/math/IntNum;->roundToDouble(IZZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1316
    if-eqz p1, :cond_1

    instance-of v0, p1, Lgnu/math/IntNum;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1318
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/math/IntNum;

    invoke-static {p0, v0}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result v0

    return v0

    .line 1317
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public format(ILjava/lang/StringBuffer;)V
    .locals 2
    .param p1, "radix"    # I
    .param p2, "buffer"    # Ljava/lang/StringBuffer;

    .line 1135
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 1137
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1139
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1140
    return-void

    .line 1142
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 1144
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1145
    return-void

    .line 1148
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/math/IntNum;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1149
    return-void
.end method

.method public format(ILjava/lang/StringBuilder;)V
    .locals 13
    .param p1, "radix"    # I
    .param p2, "buffer"    # Ljava/lang/StringBuilder;

    .line 1160
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/16 v1, 0xa

    if-nez v0, :cond_1

    .line 1162
    if-ne p1, v1, :cond_0

    .line 1163
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 1165
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 1167
    :cond_1
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_3

    .line 1169
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v2

    .line 1170
    .local v2, "lval":J
    if-ne p1, v1, :cond_2

    .line 1171
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1173
    :cond_2
    invoke-static {v2, v3, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    .end local v2    # "lval":J
    :goto_0
    goto/16 :goto_c

    .line 1177
    :cond_3
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    .line 1179
    .local v0, "neg":Z
    const/16 v1, 0x10

    if-nez v0, :cond_5

    if-eq p1, v1, :cond_4

    goto :goto_1

    .line 1185
    :cond_4
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    .local v2, "work":[I
    goto :goto_2

    .line 1181
    .end local v2    # "work":[I
    :cond_5
    :goto_1
    iget v2, p0, Lgnu/math/IntNum;->ival:I

    new-array v2, v2, [I

    .line 1182
    .restart local v2    # "work":[I
    invoke-virtual {p0, v2}, Lgnu/math/IntNum;->getAbsolute([I)V

    .line 1186
    :goto_2
    iget v3, p0, Lgnu/math/IntNum;->ival:I

    .line 1188
    .local v3, "len":I
    const/16 v4, 0x2d

    if-ne p1, v1, :cond_b

    .line 1190
    if-eqz v0, :cond_6

    .line 1191
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1192
    :cond_6
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 1193
    .local v4, "buf_start":I
    move v5, v3

    .local v5, "i":I
    :goto_3
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_a

    .line 1195
    aget v6, v2, v5

    .line 1196
    .local v6, "word":I
    const/16 v7, 0x8

    .local v7, "j":I
    :goto_4
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_9

    .line 1198
    mul-int/lit8 v8, v7, 0x4

    shr-int v8, v6, v8

    and-int/lit8 v8, v8, 0xf

    .line 1200
    .local v8, "hex_digit":I
    if-gtz v8, :cond_7

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-le v9, v4, :cond_8

    .line 1201
    :cond_7
    invoke-static {v8, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1202
    .end local v8    # "hex_digit":I
    :cond_8
    goto :goto_4

    .line 1203
    .end local v6    # "word":I
    .end local v7    # "j":I
    :cond_9
    goto :goto_3

    .line 1204
    .end local v4    # "buf_start":I
    .end local v5    # "i":I
    :cond_a
    goto/16 :goto_c

    .line 1207
    :cond_b
    invoke-static {p1}, Lgnu/math/MPN;->chars_per_word(I)I

    move-result v1

    .line 1208
    .local v1, "chars_per_word":I
    move v5, p1

    .line 1209
    .local v5, "wradix":I
    move v6, v1

    .local v6, "j":I
    :goto_5
    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_c

    .line 1210
    mul-int v5, v5, p1

    goto :goto_5

    .line 1211
    .end local v6    # "j":I
    :cond_c
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 1214
    .local v6, "i":I
    :goto_6
    invoke-static {v2, v2, v3, v5}, Lgnu/math/MPN;->divmod_1([I[III)I

    move-result v7

    .line 1215
    .local v7, "wdigit":I
    :goto_7
    if-lez v3, :cond_d

    add-int/lit8 v8, v3, -0x1

    aget v8, v2, v8

    if-nez v8, :cond_d

    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 1216
    :cond_d
    move v8, v1

    .local v8, "j":I
    :goto_8
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_10

    .line 1218
    if-nez v3, :cond_e

    if-nez v7, :cond_e

    .line 1219
    goto :goto_a

    .line 1220
    :cond_e
    if-gez v7, :cond_f

    .line 1222
    int-to-long v9, v7

    const-wide/16 v11, -0x1

    and-long/2addr v9, v11

    .line 1223
    .local v9, "ldigit":J
    int-to-long v11, p1

    rem-long v11, v9, v11

    long-to-int v12, v11

    .line 1224
    .local v12, "digit":I
    div-int/2addr v7, p1

    .line 1225
    .end local v9    # "ldigit":J
    goto :goto_9

    .line 1228
    .end local v12    # "digit":I
    :cond_f
    rem-int v12, v7, p1

    .line 1229
    .restart local v12    # "digit":I
    div-int/2addr v7, p1

    .line 1231
    :goto_9
    invoke-static {v12, p1}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1232
    .end local v12    # "digit":I
    goto :goto_8

    .line 1233
    .end local v8    # "j":I
    :cond_10
    :goto_a
    if-nez v3, :cond_13

    .line 1234
    nop

    .line 1236
    .end local v7    # "wdigit":I
    if-eqz v0, :cond_11

    .line 1237
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1239
    :cond_11
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1240
    .local v4, "j":I
    :goto_b
    if-ge v6, v4, :cond_12

    .line 1242
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    .line 1243
    .local v7, "tmp":C
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {p2, v6, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1244
    invoke-virtual {p2, v4, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1245
    add-int/lit8 v6, v6, 0x1

    .end local v7    # "tmp":C
    add-int/lit8 v4, v4, -0x1

    .line 1246
    goto :goto_b

    .line 1249
    .end local v0    # "neg":Z
    .end local v1    # "chars_per_word":I
    .end local v2    # "work":[I
    .end local v3    # "len":I
    .end local v4    # "j":I
    .end local v5    # "wradix":I
    .end local v6    # "i":I
    :cond_12
    :goto_c
    return-void

    .line 1235
    .restart local v0    # "neg":Z
    .restart local v1    # "chars_per_word":I
    .restart local v2    # "work":[I
    .restart local v3    # "len":I
    .restart local v5    # "wradix":I
    .restart local v6    # "i":I
    :cond_13
    goto :goto_6
.end method

.method public getAbsolute([I)V
    .locals 4
    .param p1, "words"    # [I

    .line 1551
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1553
    const/4 v0, 0x1

    .line 1554
    .local v0, "len":I
    iget v2, p0, Lgnu/math/IntNum;->ival:I

    aput v2, p1, v1

    goto :goto_1

    .line 1558
    .end local v0    # "len":I
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    .line 1559
    .restart local v0    # "len":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 1560
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    aget v3, v3, v2

    aput v3, p1, v2

    goto :goto_0

    .line 1562
    .end local v2    # "i":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    if-gez v2, :cond_2

    .line 1563
    invoke-static {p1, p1, v0}, Lgnu/math/IntNum;->negate([I[II)Z

    .line 1564
    :cond_2
    array-length v2, p1

    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-le v2, v0, :cond_3

    .line 1565
    aput v1, p1, v2

    goto :goto_2

    .line 1566
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public hashCode()I
    .locals 3

    .line 1295
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    iget v2, p0, Lgnu/math/IntNum;->ival:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public inIntRange()Z
    .locals 4

    .line 1721
    const-wide/32 v0, -0x80000000

    const-wide/32 v2, 0x7fffffff

    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/math/IntNum;->inRange(JJ)Z

    move-result v0

    return v0
.end method

.method public inLongRange()Z
    .locals 4

    .line 1727
    const-wide/high16 v0, -0x8000000000000000L

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/math/IntNum;->inRange(JJ)Z

    move-result v0

    return v0
.end method

.method public inRange(JJ)Z
    .locals 1
    .param p1, "lo"    # J
    .param p3, "hi"    # J

    .line 1715
    invoke-static {p0, p1, p2}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p0, p3, p4}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public intLength()I
    .locals 2

    .line 1633
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1634
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v0}, Lgnu/math/MPN;->intLength(I)I

    move-result v0

    return v0

    .line 1636
    :cond_0
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v0, v1}, Lgnu/math/MPN;->intLength([II)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 1269
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1270
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    return v0

    .line 1271
    :cond_0
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final isMinusOne()Z
    .locals 2

    .line 280
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNegative()Z
    .locals 3

    .line 193
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    iget v2, p0, Lgnu/math/IntNum;->ival:I

    sub-int/2addr v2, v1

    aget v0, v0, v2

    :goto_0
    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final isOdd()Z
    .locals 3

    .line 264
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    aget v0, v0, v1

    .line 265
    .local v0, "low":I
    :goto_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final isOne()Z
    .locals 2

    .line 275
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isZero()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/math/IntNum;->ival:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public longValue()J
    .locals 6

    .line 1286
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1287
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    int-to-long v0, v0

    return-wide v0

    .line 1288
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1289
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0

    .line 1290
    :cond_1
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    aget v0, v0, v2

    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    aget v0, v0, v1

    int-to-long v0, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .param p1, "y"    # Ljava/lang/Object;

    .line 1523
    instance-of v0, p1, Lgnu/math/IntNum;

    if-eqz v0, :cond_0

    .line 1524
    move-object v0, p1

    check-cast v0, Lgnu/math/IntNum;

    invoke-static {p0, v0}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 1525
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-eqz v0, :cond_1

    .line 1527
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0

    .line 1526
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 1

    .line 1625
    invoke-static {p0}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public final numerator()Lgnu/math/IntNum;
    .locals 0

    .line 183
    return-object p0
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .locals 1
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 868
    invoke-virtual {p0}, Lgnu/math/IntNum;->isOne()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    return-object p0

    .line 870
    :cond_0
    invoke-virtual {p0}, Lgnu/math/IntNum;->isMinusOne()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 871
    invoke-virtual {p1}, Lgnu/math/IntNum;->isOdd()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    :goto_0
    return-object v0

    .line 872
    :cond_2
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_3

    iget v0, p1, Lgnu/math/IntNum;->ival:I

    if-ltz v0, :cond_3

    .line 873
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {p0, v0}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 874
    :cond_3
    invoke-virtual {p0}, Lgnu/math/IntNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 875
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    invoke-static {v0}, Lgnu/math/RatNum;->infinity(I)Lgnu/math/RatNum;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, p0

    :goto_1
    return-object v0

    .line 876
    :cond_5
    invoke-super {p0, p1}, Lgnu/math/RatNum;->power(Lgnu/math/IntNum;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
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

    .line 1674
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 1675
    .local v0, "i":I
    const/high16 v1, -0x40000000    # -2.0f

    if-gt v0, v1, :cond_2

    .line 1677
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 1678
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1679
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    goto :goto_1

    .line 1682
    :cond_0
    new-array v1, v0, [I

    .line 1683
    .local v1, "w":[I
    move v2, v0

    .local v2, "j":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 1684
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    aput v3, v1, v2

    goto :goto_0

    .line 1685
    .end local v2    # "j":I
    :cond_1
    iput-object v1, p0, Lgnu/math/IntNum;->words:[I

    .line 1688
    .end local v1    # "w":[I
    :cond_2
    :goto_1
    iput v0, p0, Lgnu/math/IntNum;->ival:I

    .line 1689
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1693
    invoke-virtual {p0}, Lgnu/math/IntNum;->canonicalize()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public realloc(I)V
    .locals 4
    .param p1, "nwords"    # I

    .line 152
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 154
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    if-eqz v1, :cond_5

    .line 156
    iget v1, p0, Lgnu/math/IntNum;->ival:I

    if-lez v1, :cond_0

    .line 157
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    aget v0, v1, v0

    iput v0, p0, Lgnu/math/IntNum;->ival:I

    .line 158
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/math/IntNum;->words:[I

    goto :goto_1

    .line 161
    :cond_1
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    array-length v1, v1

    if-lt v1, p1, :cond_2

    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    array-length v1, v1

    add-int/lit8 v2, p1, 0x2

    if-le v1, v2, :cond_5

    .line 165
    :cond_2
    new-array v1, p1, [I

    .line 166
    .local v1, "new_words":[I
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    if-nez v2, :cond_3

    .line 168
    iget v2, p0, Lgnu/math/IntNum;->ival:I

    aput v2, v1, v0

    .line 169
    const/4 v0, 0x1

    iput v0, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_0

    .line 173
    :cond_3
    iget v2, p0, Lgnu/math/IntNum;->ival:I

    if-ge p1, v2, :cond_4

    .line 174
    iput p1, p0, Lgnu/math/IntNum;->ival:I

    .line 175
    :cond_4
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    iget v3, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    :goto_0
    iput-object v1, p0, Lgnu/math/IntNum;->words:[I

    .line 179
    .end local v1    # "new_words":[I
    :cond_5
    :goto_1
    return-void
.end method

.method public roundToDouble(IZZ)D
    .locals 18
    .param p1, "exp"    # I
    .param p2, "neg"    # Z
    .param p3, "remainder"    # Z

    .line 1442
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lgnu/math/IntNum;->intLength()I

    move-result v1

    .line 1446
    .local v1, "il":I
    add-int/lit8 v2, v1, -0x1

    add-int v2, p1, v2

    .line 1452
    .end local p1    # "exp":I
    .local v2, "exp":I
    const/16 v3, -0x433

    if-ge v2, v3, :cond_1

    .line 1453
    if-eqz p2, :cond_0

    const-wide/high16 v3, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    return-wide v3

    .line 1456
    :cond_1
    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/16 v7, 0x3ff

    if-le v2, v7, :cond_3

    .line 1457
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v3, v5

    :goto_1
    return-wide v3

    .line 1461
    :cond_3
    const/16 v8, -0x3fe

    if-lt v2, v8, :cond_4

    const/16 v8, 0x35

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v2, 0x35

    add-int/lit16 v8, v8, 0x3fe

    .line 1465
    .local v8, "ml":I
    :goto_2
    add-int/lit8 v9, v8, 0x1

    sub-int v9, v1, v9

    .line 1466
    .local v9, "excess_bits":I
    if-lez v9, :cond_6

    .line 1467
    iget-object v10, v0, Lgnu/math/IntNum;->words:[I

    if-nez v10, :cond_5

    iget v10, v0, Lgnu/math/IntNum;->ival:I

    shr-int/2addr v10, v9

    int-to-long v10, v10

    goto :goto_3

    :cond_5
    iget-object v10, v0, Lgnu/math/IntNum;->words:[I

    iget v11, v0, Lgnu/math/IntNum;->ival:I

    invoke-static {v10, v11, v9}, Lgnu/math/MPN;->rshift_long([III)J

    move-result-wide v10

    .local v10, "m":J
    :goto_3
    goto :goto_4

    .line 1470
    .end local v10    # "m":J
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v10

    neg-int v12, v9

    shl-long/2addr v10, v12

    .line 1474
    .restart local v10    # "m":J
    :goto_4
    const/4 v12, 0x1

    if-ne v2, v7, :cond_b

    shr-long v13, v10, v12

    const-wide v15, 0x1fffffffffffffL

    cmp-long v17, v13, v15

    if-nez v17, :cond_b

    .line 1476
    if-nez p3, :cond_9

    sub-int v7, v1, v8

    invoke-virtual {v0, v7}, Lgnu/math/IntNum;->checkBits(I)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_6

    .line 1479
    :cond_7
    if-eqz p2, :cond_8

    const-wide v3, -0x10000000000001L

    goto :goto_5

    :cond_8
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_5
    return-wide v3

    .line 1477
    :cond_9
    :goto_6
    if-eqz p2, :cond_a

    goto :goto_7

    :cond_a
    move-wide v3, v5

    :goto_7
    return-wide v3

    .line 1484
    :cond_b
    const-wide/16 v3, 0x1

    and-long v5, v10, v3

    const/16 v13, 0x34

    const-wide/16 v14, 0x0

    cmp-long v16, v5, v3

    if-nez v16, :cond_e

    const-wide/16 v3, 0x2

    and-long v5, v10, v3

    cmp-long v16, v5, v3

    if-eqz v16, :cond_c

    if-nez p3, :cond_c

    invoke-virtual {v0, v9}, Lgnu/math/IntNum;->checkBits(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1487
    :cond_c
    add-long/2addr v10, v3

    .line 1489
    const-wide/high16 v3, 0x40000000000000L

    and-long/2addr v3, v10

    cmp-long v5, v3, v14

    if-eqz v5, :cond_d

    .line 1491
    add-int/lit8 v2, v2, 0x1

    .line 1493
    shr-long/2addr v10, v12

    goto :goto_8

    .line 1497
    :cond_d
    if-ne v8, v13, :cond_e

    const-wide/high16 v3, 0x20000000000000L

    and-long/2addr v3, v10

    cmp-long v5, v3, v14

    if-eqz v5, :cond_e

    .line 1498
    add-int/lit8 v2, v2, 0x1

    .line 1502
    :cond_e
    :goto_8
    shr-long v3, v10, v12

    .line 1504
    .end local v10    # "m":J
    .local v3, "m":J
    if-eqz p2, :cond_f

    const-wide/high16 v5, -0x8000000000000000L

    goto :goto_9

    :cond_f
    move-wide v5, v14

    .line 1505
    .local v5, "bits_sign":J
    :goto_9
    add-int/2addr v2, v7

    .line 1506
    if-gtz v2, :cond_10

    goto :goto_a

    :cond_10
    int-to-long v10, v2

    shl-long v14, v10, v13

    :goto_a
    move-wide v10, v14

    .line 1507
    .local v10, "bits_exp":J
    const-wide v12, -0x10000000000001L

    and-long/2addr v12, v3

    .line 1508
    .local v12, "bits_mant":J
    or-long v14, v5, v10

    or-long/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    return-wide v14
.end method

.method public final set(I)V
    .locals 1
    .param p1, "y"    # I

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/math/IntNum;->words:[I

    .line 373
    iput p1, p0, Lgnu/math/IntNum;->ival:I

    .line 374
    return-void
.end method

.method public final set(J)V
    .locals 5
    .param p1, "y"    # J

    .line 379
    long-to-int v0, p1

    .line 380
    .local v0, "i":I
    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 382
    iput v0, p0, Lgnu/math/IntNum;->ival:I

    .line 383
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/math/IntNum;->words:[I

    goto :goto_0

    .line 387
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lgnu/math/IntNum;->realloc(I)V

    .line 388
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 389
    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v4, v3

    const/4 v3, 0x1

    aput v4, v2, v3

    .line 390
    iput v1, p0, Lgnu/math/IntNum;->ival:I

    .line 392
    :goto_0
    return-void
.end method

.method public final set(Lgnu/math/IntNum;)V
    .locals 4
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 405
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 406
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    invoke-virtual {p0, v0}, Lgnu/math/IntNum;->set(I)V

    goto :goto_0

    .line 407
    :cond_0
    if-eq p0, p1, :cond_1

    .line 409
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    invoke-virtual {p0, v0}, Lgnu/math/IntNum;->realloc(I)V

    .line 410
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    iget v2, p1, Lgnu/math/IntNum;->ival:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    iput v0, p0, Lgnu/math/IntNum;->ival:I

    .line 413
    :cond_1
    :goto_0
    return-void
.end method

.method public final set([II)V
    .locals 0
    .param p1, "words"    # [I
    .param p2, "length"    # I

    .line 398
    iput p2, p0, Lgnu/math/IntNum;->ival:I

    .line 399
    iput-object p1, p0, Lgnu/math/IntNum;->words:[I

    .line 400
    return-void
.end method

.method public final setAdd(I)V
    .locals 0
    .param p1, "y"    # I

    .line 366
    invoke-virtual {p0, p0, p1}, Lgnu/math/IntNum;->setAdd(Lgnu/math/IntNum;I)V

    .line 367
    return-void
.end method

.method public setAdd(Lgnu/math/IntNum;I)V
    .locals 8
    .param p1, "x"    # Lgnu/math/IntNum;
    .param p2, "y"    # I

    .line 343
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 345
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    int-to-long v0, v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lgnu/math/IntNum;->set(J)V

    .line 346
    return-void

    .line 348
    :cond_0
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    .line 349
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lgnu/math/IntNum;->realloc(I)V

    .line 350
    int-to-long v1, p2

    .line 351
    .local v1, "carry":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 353
    iget-object v4, p1, Lgnu/math/IntNum;->words:[I

    aget v4, v4, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v1, v4

    .line 354
    iget-object v4, p0, Lgnu/math/IntNum;->words:[I

    long-to-int v5, v1

    aput v5, v4, v3

    .line 355
    const/16 v4, 0x20

    shr-long/2addr v1, v4

    .line 351
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p1, Lgnu/math/IntNum;->words:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    if-gez v3, :cond_2

    .line 358
    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 359
    :cond_2
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    long-to-int v4, v1

    aput v4, v3, v0

    .line 360
    iget-object v3, p0, Lgnu/math/IntNum;->words:[I

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Lgnu/math/IntNum;->wordsNeeded([II)I

    move-result v3

    iput v3, p0, Lgnu/math/IntNum;->ival:I

    .line 361
    return-void
.end method

.method setInvert()V
    .locals 3

    .line 1007
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1008
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_1

    .line 1011
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 1012
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    iget-object v2, p0, Lgnu/math/IntNum;->words:[I

    aget v2, v2, v0

    xor-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    goto :goto_0

    .line 1014
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public final setNegative()V
    .locals 0

    .line 1606
    invoke-virtual {p0, p0}, Lgnu/math/IntNum;->setNegative(Lgnu/math/IntNum;)V

    .line 1607
    return-void
.end method

.method public setNegative(Lgnu/math/IntNum;)V
    .locals 4
    .param p1, "x"    # Lgnu/math/IntNum;

    .line 1588
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    .line 1589
    .local v0, "len":I
    iget-object v1, p1, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_1

    .line 1591
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1592
    int-to-long v1, v0

    neg-long v1, v1

    invoke-virtual {p0, v1, v2}, Lgnu/math/IntNum;->set(J)V

    goto :goto_0

    .line 1594
    :cond_0
    neg-int v1, v0

    invoke-virtual {p0, v1}, Lgnu/math/IntNum;->set(I)V

    .line 1595
    :goto_0
    return-void

    .line 1597
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lgnu/math/IntNum;->realloc(I)V

    .line 1598
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    iget-object v2, p1, Lgnu/math/IntNum;->words:[I

    invoke-static {v1, v2, v0}, Lgnu/math/IntNum;->negate([I[II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1599
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "len":I
    .local v2, "len":I
    const/4 v3, 0x0

    aput v3, v1, v0

    move v0, v2

    .line 1600
    .end local v2    # "len":I
    .restart local v0    # "len":I
    :cond_2
    iput v0, p0, Lgnu/math/IntNum;->ival:I

    .line 1601
    return-void
.end method

.method setShift(Lgnu/math/IntNum;I)V
    .locals 1
    .param p1, "x"    # Lgnu/math/IntNum;
    .param p2, "count"    # I

    .line 1086
    if-lez p2, :cond_0

    .line 1087
    invoke-virtual {p0, p1, p2}, Lgnu/math/IntNum;->setShiftLeft(Lgnu/math/IntNum;I)V

    goto :goto_0

    .line 1089
    :cond_0
    neg-int v0, p2

    invoke-virtual {p0, p1, v0}, Lgnu/math/IntNum;->setShiftRight(Lgnu/math/IntNum;I)V

    .line 1090
    :goto_0
    return-void
.end method

.method setShiftLeft(Lgnu/math/IntNum;I)V
    .locals 9
    .param p1, "x"    # Lgnu/math/IntNum;
    .param p2, "count"    # I

    .line 1020
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1022
    const/16 v0, 0x20

    if-ge p2, v0, :cond_0

    .line 1024
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    int-to-long v0, v0

    shl-long/2addr v0, p2

    invoke-virtual {p0, v0, v1}, Lgnu/math/IntNum;->set(J)V

    .line 1025
    return-void

    .line 1027
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1028
    .local v0, "xwords":[I
    iget v2, p1, Lgnu/math/IntNum;->ival:I

    aput v2, v0, v1

    .line 1029
    const/4 v2, 0x1

    .local v2, "xlen":I
    goto :goto_0

    .line 1033
    .end local v0    # "xwords":[I
    .end local v2    # "xlen":I
    :cond_1
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    .line 1034
    .restart local v0    # "xwords":[I
    iget v2, p1, Lgnu/math/IntNum;->ival:I

    .line 1036
    .restart local v2    # "xlen":I
    :goto_0
    shr-int/lit8 v3, p2, 0x5

    .line 1037
    .local v3, "word_count":I
    and-int/lit8 p2, p2, 0x1f

    .line 1038
    add-int v4, v2, v3

    .line 1039
    .local v4, "new_len":I
    if-nez p2, :cond_3

    .line 1041
    invoke-virtual {p0, v4}, Lgnu/math/IntNum;->realloc(I)V

    .line 1042
    move v5, v2

    .local v5, "i":I
    :goto_1
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_2

    .line 1043
    iget-object v6, p0, Lgnu/math/IntNum;->words:[I

    add-int v7, v5, v3

    aget v8, v0, v5

    aput v8, v6, v7

    goto :goto_1

    .end local v5    # "i":I
    :cond_2
    goto :goto_2

    .line 1047
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 1048
    invoke-virtual {p0, v4}, Lgnu/math/IntNum;->realloc(I)V

    .line 1049
    iget-object v5, p0, Lgnu/math/IntNum;->words:[I

    invoke-static {v5, v3, v0, v2, p2}, Lgnu/math/MPN;->lshift([II[III)I

    move-result v5

    .line 1050
    .local v5, "shift_out":I
    rsub-int/lit8 p2, p2, 0x20

    .line 1051
    iget-object v6, p0, Lgnu/math/IntNum;->words:[I

    add-int/lit8 v7, v4, -0x1

    shl-int v8, v5, p2

    shr-int/2addr v8, p2

    aput v8, v6, v7

    .line 1053
    .end local v5    # "shift_out":I
    :goto_2
    iput v4, p0, Lgnu/math/IntNum;->ival:I

    .line 1054
    move v5, v3

    .local v5, "i":I
    :goto_3
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_4

    .line 1055
    iget-object v6, p0, Lgnu/math/IntNum;->words:[I

    aput v1, v6, v5

    goto :goto_3

    .line 1056
    .end local v5    # "i":I
    :cond_4
    return-void
.end method

.method setShiftRight(Lgnu/math/IntNum;I)V
    .locals 8
    .param p1, "x"    # Lgnu/math/IntNum;
    .param p2, "count"    # I

    .line 1060
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1061
    const/16 v0, 0x20

    if-ge p2, v0, :cond_0

    iget v0, p1, Lgnu/math/IntNum;->ival:I

    shr-int v1, v0, p2

    goto :goto_0

    :cond_0
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lgnu/math/IntNum;->set(I)V

    goto :goto_2

    .line 1062
    :cond_2
    if-nez p2, :cond_3

    .line 1063
    invoke-virtual {p0, p1}, Lgnu/math/IntNum;->set(Lgnu/math/IntNum;)V

    goto :goto_2

    .line 1066
    :cond_3
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    .line 1067
    .local v0, "neg":Z
    shr-int/lit8 v3, p2, 0x5

    .line 1068
    .local v3, "word_count":I
    and-int/lit8 p2, p2, 0x1f

    .line 1069
    iget v4, p1, Lgnu/math/IntNum;->ival:I

    sub-int/2addr v4, v3

    .line 1070
    .local v4, "d_len":I
    if-gtz v4, :cond_5

    .line 1071
    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lgnu/math/IntNum;->set(I)V

    goto :goto_2

    .line 1074
    :cond_5
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    if-eqz v1, :cond_6

    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    array-length v1, v1

    if-ge v1, v4, :cond_7

    .line 1075
    :cond_6
    invoke-virtual {p0, v4}, Lgnu/math/IntNum;->realloc(I)V

    .line 1076
    :cond_7
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    iget-object v2, p1, Lgnu/math/IntNum;->words:[I

    invoke-static {v1, v2, v3, v4, p2}, Lgnu/math/MPN;->rshift0([I[IIII)V

    .line 1077
    iput v4, p0, Lgnu/math/IntNum;->ival:I

    .line 1078
    if-eqz v0, :cond_8

    .line 1079
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    add-int/lit8 v2, v4, -0x1

    aget v5, v1, v2

    const/4 v6, -0x2

    rsub-int/lit8 v7, p2, 0x1f

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, v1, v2

    .line 1082
    .end local v0    # "neg":Z
    .end local v3    # "word_count":I
    .end local v4    # "d_len":I
    :cond_8
    :goto_2
    return-void
.end method

.method public sign()I
    .locals 6

    .line 198
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    .line 199
    .local v0, "n":I
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    .line 200
    .local v1, "w":[I
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-nez v1, :cond_2

    .line 201
    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    const/4 v2, -0x1

    :cond_1
    :goto_0
    return v2

    .line 202
    :cond_2
    add-int/2addr v0, v4

    aget v5, v1, v0

    .line 203
    .local v5, "i":I
    if-lez v5, :cond_3

    .line 204
    return v3

    .line 205
    :cond_3
    if-gez v5, :cond_4

    .line 206
    return v4

    .line 209
    :cond_4
    if-nez v0, :cond_5

    .line 210
    return v2

    .line 211
    :cond_5
    add-int/lit8 v0, v0, -0x1

    aget v4, v1, v0

    if-eqz v4, :cond_4

    .line 212
    return v3
.end method

.method public toExactInt(I)Lgnu/math/IntNum;
    .locals 0
    .param p1, "rounding_mode"    # I

    .line 839
    return-object p0
.end method

.method public toInt(I)Lgnu/math/RealNum;
    .locals 0
    .param p1, "rounding_mode"    # I

    .line 844
    return-object p0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3
    .param p1, "radix"    # I

    .line 1253
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_0

    .line 1254
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1255
    :cond_0
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 1256
    invoke-virtual {p0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1257
    :cond_1
    iget v0, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {p1}, Lgnu/math/MPN;->chars_per_word(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int v0, v0, v1

    .line 1259
    .local v0, "buf_size":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1263
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, v1}, Lgnu/math/IntNum;->format(ILjava/lang/StringBuilder;)V

    .line 1264
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1650
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/math/IntNum;->words:[I

    iget v2, p0, Lgnu/math/IntNum;->ival:I

    invoke-static {v0, v2}, Lgnu/math/IntNum;->wordsNeeded([II)I

    move-result v0

    .line 1651
    .local v0, "nwords":I
    :goto_0
    if-gt v0, v1, :cond_4

    .line 1653
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_1

    iget v1, p0, Lgnu/math/IntNum;->ival:I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    aget v1, v1, v2

    .line 1654
    .local v1, "i":I
    :goto_1
    const/high16 v2, -0x40000000    # -2.0f

    if-lt v1, v2, :cond_3

    .line 1655
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_2

    .line 1658
    :cond_3
    const v2, -0x7fffffff

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1659
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1661
    .end local v1    # "i":I
    :goto_2
    goto :goto_4

    .line 1664
    :cond_4
    const/high16 v1, -0x80000000

    or-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1665
    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    .line 1666
    iget-object v1, p0, Lgnu/math/IntNum;->words:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_3

    .line 1669
    :cond_5
    :goto_4
    return-void
.end method
