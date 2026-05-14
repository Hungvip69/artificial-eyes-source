.class Lgnu/math/MPN;
.super Ljava/lang/Object;
.source "MPN.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add_1([I[III)I
    .locals 7
    .param p0, "dest"    # [I
    .param p1, "x"    # [I
    .param p2, "size"    # I
    .param p3, "y"    # I

    .line 22
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 23
    .local v0, "carry":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p2, :cond_0

    .line 25
    aget v5, p1, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 26
    long-to-int v5, v0

    aput v5, p0, v4

    .line 27
    const/16 v5, 0x20

    shr-long/2addr v0, v5

    .line 23
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 29
    .end local v4    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static add_n([I[I[II)I
    .locals 9
    .param p0, "dest"    # [I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "len"    # I

    .line 40
    const-wide/16 v0, 0x0

    .line 41
    .local v0, "carry":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 43
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 45
    long-to-int v3, v0

    aput v3, p0, v2

    .line 46
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v2    # "i":I
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public static chars_per_word(I)I
    .locals 4
    .param p0, "radix"    # I

    .line 336
    const/4 v0, 0x4

    const/16 v1, 0x10

    const/16 v2, 0x8

    const/16 v3, 0xa

    if-ge p0, v3, :cond_4

    .line 338
    if-ge p0, v2, :cond_3

    .line 340
    const/4 v2, 0x2

    if-gt p0, v2, :cond_0

    .line 341
    const/16 v0, 0x20

    return v0

    .line 342
    :cond_0
    const/4 v2, 0x3

    if-ne p0, v2, :cond_1

    .line 343
    const/16 v0, 0x14

    return v0

    .line 344
    :cond_1
    if-ne p0, v0, :cond_2

    .line 345
    return v1

    .line 347
    :cond_2
    rsub-int/lit8 v0, p0, 0x12

    return v0

    .line 350
    :cond_3
    return v3

    .line 352
    :cond_4
    const/16 v3, 0xc

    if-ge p0, v3, :cond_5

    .line 353
    const/16 v0, 0x9

    return v0

    .line 354
    :cond_5
    if-gt p0, v1, :cond_6

    .line 355
    return v2

    .line 356
    :cond_6
    const/16 v1, 0x17

    if-gt p0, v1, :cond_7

    .line 357
    const/4 v0, 0x7

    return v0

    .line 358
    :cond_7
    const/16 v1, 0x28

    if-gt p0, v1, :cond_8

    .line 359
    const/4 v0, 0x6

    return v0

    .line 361
    :cond_8
    const/16 v1, 0x100

    if-gt p0, v1, :cond_9

    .line 362
    return v0

    .line 364
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public static cmp([II[II)I
    .locals 1
    .param p0, "x"    # [I
    .param p1, "xlen"    # I
    .param p2, "y"    # [I
    .param p3, "ylen"    # I

    .line 474
    if-le p1, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-ge p1, p3, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {p0, p2, p1}, Lgnu/math/MPN;->cmp([I[II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static cmp([I[II)I
    .locals 5
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "size"    # I

    .line 453
    nop

    :goto_0
    const/4 v0, -0x1

    add-int/2addr p2, v0

    if-ltz p2, :cond_2

    .line 455
    aget v1, p0, p2

    .line 456
    .local v1, "x_word":I
    aget v2, p1, p2

    .line 457
    .local v2, "y_word":I
    if-eq v1, v2, :cond_1

    .line 462
    const/high16 v3, -0x80000000

    xor-int v4, v1, v3

    xor-int/2addr v3, v2

    if-le v4, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 464
    .end local v1    # "x_word":I
    .end local v2    # "y_word":I
    :cond_1
    goto :goto_0

    .line 465
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static count_leading_zeros(I)I
    .locals 3
    .param p0, "i"    # I

    .line 370
    if-nez p0, :cond_0

    .line 371
    const/16 v0, 0x20

    return v0

    .line 372
    :cond_0
    const/4 v0, 0x0

    .line 373
    .local v0, "count":I
    const/16 v1, 0x10

    .local v1, "k":I
    :goto_0
    if-lez v1, :cond_2

    .line 374
    ushr-int v2, p0, v1

    .line 375
    .local v2, "j":I
    if-nez v2, :cond_1

    .line 376
    add-int/2addr v0, v1

    goto :goto_1

    .line 378
    :cond_1
    move p0, v2

    .line 373
    .end local v2    # "j":I
    :goto_1
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v1    # "k":I
    :cond_2
    return v0
.end method

.method public static divide([II[II)V
    .locals 21
    .param p0, "zds"    # [I
    .param p1, "nx"    # I
    .param p2, "y"    # [I
    .param p3, "ny"    # I

    .line 291
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p1

    .line 297
    .local v3, "j":I
    :cond_0
    aget v4, v0, v3

    add-int/lit8 v5, v2, -0x1

    aget v5, v1, v5

    const/16 v6, 0x20

    const-wide v7, 0xffffffffL

    if-ne v4, v5, :cond_1

    .line 298
    const/4 v4, -0x1

    .local v4, "qhat":I
    goto :goto_0

    .line 301
    .end local v4    # "qhat":I
    :cond_1
    aget v4, v0, v3

    int-to-long v4, v4

    shl-long/2addr v4, v6

    add-int/lit8 v9, v3, -0x1

    aget v9, v0, v9

    int-to-long v9, v9

    and-long/2addr v9, v7

    add-long/2addr v4, v9

    .line 302
    .local v4, "w":J
    add-int/lit8 v9, v2, -0x1

    aget v9, v1, v9

    invoke-static {v4, v5, v9}, Lgnu/math/MPN;->udiv_qrnnd(JI)J

    move-result-wide v9

    long-to-int v10, v9

    move v4, v10

    .line 304
    .local v4, "qhat":I
    :goto_0
    if-eqz v4, :cond_4

    .line 306
    sub-int v5, v3, v2

    invoke-static {v0, v5, v1, v2, v4}, Lgnu/math/MPN;->submul_1([II[III)I

    move-result v5

    .line 307
    .local v5, "borrow":I
    aget v9, v0, v3

    .line 308
    .local v9, "save":I
    int-to-long v10, v9

    and-long/2addr v10, v7

    int-to-long v12, v5

    and-long/2addr v12, v7

    sub-long/2addr v10, v12

    .line 309
    .local v10, "num":J
    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-eqz v14, :cond_3

    .line 311
    add-int/lit8 v4, v4, -0x1

    .line 312
    const-wide/16 v12, 0x0

    .line 313
    .local v12, "carry":J
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v2, :cond_2

    .line 315
    sub-int v15, v3, v2

    add-int/2addr v15, v14

    aget v15, v0, v15

    move/from16 v17, v4

    move/from16 v16, v5

    .end local v4    # "qhat":I
    .end local v5    # "borrow":I
    .local v16, "borrow":I
    .local v17, "qhat":I
    int-to-long v4, v15

    and-long/2addr v4, v7

    aget v15, v1, v14

    move/from16 v18, v9

    move-wide/from16 v19, v10

    .end local v9    # "save":I
    .end local v10    # "num":J
    .local v18, "save":I
    .local v19, "num":J
    int-to-long v9, v15

    and-long/2addr v9, v7

    add-long/2addr v4, v9

    add-long/2addr v12, v4

    .line 317
    sub-int v4, v3, v2

    add-int/2addr v4, v14

    long-to-int v5, v12

    aput v5, v0, v4

    .line 318
    ushr-long/2addr v12, v6

    .line 313
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v16

    move/from16 v4, v17

    move/from16 v9, v18

    move-wide/from16 v10, v19

    goto :goto_2

    .end local v16    # "borrow":I
    .end local v17    # "qhat":I
    .end local v18    # "save":I
    .end local v19    # "num":J
    .restart local v4    # "qhat":I
    .restart local v5    # "borrow":I
    .restart local v9    # "save":I
    .restart local v10    # "num":J
    :cond_2
    move/from16 v17, v4

    move/from16 v16, v5

    move/from16 v18, v9

    move-wide/from16 v19, v10

    .line 320
    .end local v4    # "qhat":I
    .end local v5    # "borrow":I
    .end local v9    # "save":I
    .end local v10    # "num":J
    .end local v14    # "i":I
    .restart local v16    # "borrow":I
    .restart local v17    # "qhat":I
    .restart local v18    # "save":I
    .restart local v19    # "num":J
    aget v4, v0, v3

    int-to-long v4, v4

    add-long/2addr v4, v12

    long-to-int v5, v4

    aput v5, v0, v3

    .line 321
    const-wide/16 v4, 0x1

    sub-long v10, v12, v4

    .line 322
    .end local v12    # "carry":J
    .end local v19    # "num":J
    .restart local v10    # "num":J
    move/from16 v5, v16

    move/from16 v4, v17

    goto :goto_1

    .line 309
    .end local v16    # "borrow":I
    .end local v17    # "qhat":I
    .end local v18    # "save":I
    .restart local v4    # "qhat":I
    .restart local v5    # "borrow":I
    .restart local v9    # "save":I
    :cond_3
    move/from16 v16, v5

    move/from16 v18, v9

    move-wide/from16 v19, v10

    .line 324
    .end local v5    # "borrow":I
    .end local v9    # "save":I
    .end local v10    # "num":J
    :cond_4
    aput v4, v0, v3

    .line 325
    .end local v4    # "qhat":I
    add-int/lit8 v3, v3, -0x1

    if-ge v3, v2, :cond_0

    .line 326
    return-void
.end method

.method public static divmod_1([I[III)I
    .locals 12
    .param p0, "quotient"    # [I
    .param p1, "dividend"    # [I
    .param p2, "len"    # I
    .param p3, "divisor"    # I

    .line 219
    add-int/lit8 v0, p2, -0x1

    .line 220
    .local v0, "i":I
    aget v1, p1, v0

    int-to-long v1, v1

    .line 221
    .local v1, "r":J
    const-wide v3, 0xffffffffL

    and-long v5, v1, v3

    int-to-long v7, p3

    and-long/2addr v7, v3

    const/16 v9, 0x20

    cmp-long v10, v5, v7

    if-ltz v10, :cond_0

    .line 222
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 225
    :cond_0
    add-int/lit8 v5, v0, -0x1

    .end local v0    # "i":I
    .local v5, "i":I
    const/4 v6, 0x0

    aput v6, p0, v0

    .line 226
    shl-long/2addr v1, v9

    move v0, v5

    .line 229
    .end local v5    # "i":I
    .restart local v0    # "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 231
    aget v5, p1, v0

    .line 232
    .local v5, "n0":I
    const-wide v6, -0x100000000L

    and-long/2addr v6, v1

    int-to-long v10, v5

    and-long/2addr v10, v3

    or-long v1, v6, v10

    .line 233
    invoke-static {v1, v2, p3}, Lgnu/math/MPN;->udiv_qrnnd(JI)J

    move-result-wide v1

    .line 234
    long-to-int v6, v1

    aput v6, p0, v0

    .line 229
    .end local v5    # "n0":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 236
    :cond_1
    shr-long v3, v1, v9

    long-to-int v4, v3

    return v4
.end method

.method static findLowestBit(I)I
    .locals 2
    .param p0, "word"    # I

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "i":I
    :goto_0
    and-int/lit8 v1, p0, 0xf

    if-nez v1, :cond_0

    .line 575
    shr-int/lit8 p0, p0, 0x4

    .line 576
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 578
    :cond_0
    and-int/lit8 v1, p0, 0x3

    if-nez v1, :cond_1

    .line 580
    shr-int/lit8 p0, p0, 0x2

    .line 581
    add-int/lit8 v0, v0, 0x2

    .line 583
    :cond_1
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_2

    .line 584
    add-int/lit8 v0, v0, 0x1

    .line 585
    :cond_2
    return v0
.end method

.method static findLowestBit([I)I
    .locals 3
    .param p0, "words"    # [I

    .line 592
    const/4 v0, 0x0

    .line 594
    .local v0, "i":I
    :goto_0
    aget v1, p0, v0

    if-eqz v1, :cond_0

    .line 595
    mul-int/lit8 v1, v0, 0x20

    aget v2, p0, v0

    invoke-static {v2}, Lgnu/math/MPN;->findLowestBit(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1

    .line 592
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static gcd([I[II)I
    .locals 9
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "len"    # I

    .line 608
    const/4 v0, 0x0

    .line 610
    .local v0, "i":I
    :goto_0
    aget v1, p0, v0

    aget v2, p1, v0

    or-int/2addr v1, v2

    .line 611
    .local v1, "word":I
    if-eqz v1, :cond_d

    .line 614
    nop

    .line 617
    move v2, v0

    .line 618
    .local v2, "initShiftWords":I
    invoke-static {v1}, Lgnu/math/MPN;->findLowestBit(I)I

    move-result v3

    .line 622
    .local v3, "initShiftBits":I
    sub-int/2addr p2, v2

    .line 623
    invoke-static {p0, p0, v2, p2, v3}, Lgnu/math/MPN;->rshift0([I[IIII)V

    .line 624
    invoke-static {p1, p1, v2, p2, v3}, Lgnu/math/MPN;->rshift0([I[IIII)V

    .line 628
    const/4 v4, 0x0

    aget v5, p0, v4

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 630
    move-object v5, p0

    .line 631
    .local v5, "odd_arg":[I
    move-object v6, p1

    .local v6, "other_arg":[I
    goto :goto_1

    .line 635
    .end local v5    # "odd_arg":[I
    .end local v6    # "other_arg":[I
    :cond_0
    move-object v5, p1

    .line 636
    .restart local v5    # "odd_arg":[I
    move-object v6, p0

    .line 644
    .restart local v6    # "other_arg":[I
    :cond_1
    :goto_1
    const/4 v0, 0x0

    :goto_2
    aget v7, v6, v0

    if-nez v7, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 645
    :cond_2
    if-lez v0, :cond_4

    .line 648
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    sub-int v8, p2, v0

    if-ge v7, v8, :cond_3

    .line 649
    add-int v8, v7, v0

    aget v8, v6, v8

    aput v8, v6, v7

    .line 648
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 650
    :cond_3
    :goto_4
    if-ge v7, p2, :cond_4

    .line 651
    aput v4, v6, v7

    .line 650
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 653
    .end local v7    # "j":I
    :cond_4
    aget v7, v6, v4

    invoke-static {v7}, Lgnu/math/MPN;->findLowestBit(I)I

    move-result v0

    .line 654
    if-lez v0, :cond_5

    .line 655
    invoke-static {v6, v6, v4, p2, v0}, Lgnu/math/MPN;->rshift([I[IIII)I

    .line 661
    :cond_5
    invoke-static {v5, v6, p2}, Lgnu/math/MPN;->cmp([I[II)I

    move-result v0

    .line 662
    if-nez v0, :cond_b

    .line 663
    nop

    .line 677
    add-int v7, v2, v3

    if-lez v7, :cond_a

    .line 679
    if-lez v3, :cond_7

    .line 681
    invoke-static {p0, v2, p0, p2, v3}, Lgnu/math/MPN;->lshift([II[III)I

    move-result v7

    .line 682
    .local v7, "sh_out":I
    if-eqz v7, :cond_6

    .line 683
    add-int/lit8 v8, p2, 0x1

    .end local p2    # "len":I
    .local v8, "len":I
    add-int/2addr p2, v2

    aput v7, p0, p2

    move p2, v8

    .line 684
    .end local v7    # "sh_out":I
    .end local v8    # "len":I
    .restart local p2    # "len":I
    :cond_6
    goto :goto_6

    .line 687
    :cond_7
    move v0, p2

    :goto_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_8

    .line 688
    add-int v7, v0, v2

    aget v8, p0, v0

    aput v8, p0, v7

    goto :goto_5

    .line 690
    :cond_8
    :goto_6
    move v0, v2

    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_9

    .line 691
    aput v4, p0, v0

    goto :goto_7

    .line 692
    :cond_9
    add-int/2addr p2, v2

    .line 694
    :cond_a
    return p2

    .line 664
    :cond_b
    if-lez v0, :cond_c

    .line 666
    invoke-static {v5, v5, v6, p2}, Lgnu/math/MPN;->sub_n([I[I[II)I

    .line 668
    move-object v7, v5

    .local v7, "tmp":[I
    move-object v5, v6

    move-object v6, v7

    .line 669
    .end local v7    # "tmp":[I
    goto :goto_8

    .line 672
    :cond_c
    invoke-static {v6, v6, v5, p2}, Lgnu/math/MPN;->sub_n([I[I[II)I

    .line 674
    :goto_8
    add-int/lit8 v7, p2, -0x1

    aget v7, v5, v7

    if-nez v7, :cond_1

    add-int/lit8 v7, p2, -0x1

    aget v7, v6, v7

    if-nez v7, :cond_1

    .line 675
    add-int/lit8 p2, p2, -0x1

    goto :goto_8

    .line 608
    .end local v2    # "initShiftWords":I
    .end local v3    # "initShiftBits":I
    .end local v5    # "odd_arg":[I
    .end local v6    # "other_arg":[I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static intLength(I)I
    .locals 1
    .param p0, "i"    # I

    .line 699
    if-gez p0, :cond_0

    xor-int/lit8 v0, p0, -0x1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    invoke-static {v0}, Lgnu/math/MPN;->count_leading_zeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public static intLength([II)I
    .locals 2
    .param p0, "words"    # [I
    .param p1, "len"    # I

    .line 706
    add-int/lit8 p1, p1, -0x1

    .line 707
    aget v0, p0, p1

    invoke-static {v0}, Lgnu/math/MPN;->intLength(I)I

    move-result v0

    mul-int/lit8 v1, p1, 0x20

    add-int/2addr v0, v1

    return v0
.end method

.method public static lshift([II[III)I
    .locals 8
    .param p0, "dest"    # [I
    .param p1, "d_offset"    # I
    .param p2, "x"    # [I
    .param p3, "len"    # I
    .param p4, "count"    # I

    .line 553
    rsub-int/lit8 v0, p4, 0x20

    .line 554
    .local v0, "count_2":I
    add-int/lit8 v1, p3, -0x1

    .line 555
    .local v1, "i":I
    aget v2, p2, v1

    .line 556
    .local v2, "high_word":I
    ushr-int v3, v2, v0

    .line 557
    .local v3, "retval":I
    add-int/lit8 p1, p1, 0x1

    .line 558
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 560
    aget v4, p2, v1

    .line 561
    .local v4, "low_word":I
    add-int v5, p1, v1

    shl-int v6, v2, p4

    ushr-int v7, v4, v0

    or-int/2addr v6, v7

    aput v6, p0, v5

    .line 562
    move v2, v4

    .line 563
    .end local v4    # "low_word":I
    goto :goto_0

    .line 564
    :cond_0
    add-int v4, p1, v1

    shl-int v5, v2, p4

    aput v5, p0, v4

    .line 565
    return v3
.end method

.method public static mul([I[II[II)V
    .locals 16
    .param p0, "dest"    # [I
    .param p1, "x"    # [I
    .param p2, "xlen"    # I
    .param p3, "y"    # [I
    .param p4, "ylen"    # I

    .line 111
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    aget v3, p3, v3

    invoke-static {v0, v1, v2, v3}, Lgnu/math/MPN;->mul_1([I[III)I

    move-result v3

    aput v3, v0, v2

    .line 113
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    move/from16 v4, p4

    if-ge v3, v4, :cond_1

    .line 115
    aget v5, p3, v3

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 116
    .local v5, "yword":J
    const-wide/16 v9, 0x0

    .line 117
    .local v9, "carry":J
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v2, :cond_0

    .line 119
    aget v12, v1, v11

    int-to-long v12, v12

    and-long/2addr v12, v7

    mul-long v12, v12, v5

    add-int v14, v3, v11

    aget v14, v0, v14

    int-to-long v14, v14

    and-long/2addr v14, v7

    add-long/2addr v12, v14

    add-long/2addr v9, v12

    .line 121
    add-int v12, v3, v11

    long-to-int v13, v9

    aput v13, v0, v12

    .line 122
    const/16 v12, 0x20

    ushr-long/2addr v9, v12

    .line 117
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 124
    .end local v11    # "j":I
    :cond_0
    add-int v7, v3, v2

    long-to-int v8, v9

    aput v8, v0, v7

    .line 113
    .end local v5    # "yword":J
    .end local v9    # "carry":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public static mul_1([I[III)I
    .locals 9
    .param p0, "dest"    # [I
    .param p1, "x"    # [I
    .param p2, "len"    # I
    .param p3, "y"    # I

    .line 86
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 87
    .local v0, "yword":J
    const-wide/16 v4, 0x0

    .line 88
    .local v4, "carry":J
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    if-ge v6, p2, :cond_0

    .line 90
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    add-long/2addr v4, v7

    .line 91
    long-to-int v7, v4

    aput v7, p0, v6

    .line 92
    const/16 v7, 0x20

    ushr-long/2addr v4, v7

    .line 88
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 94
    .end local v6    # "j":I
    :cond_0
    long-to-int v2, v4

    return v2
.end method

.method public static rshift([I[IIII)I
    .locals 8
    .param p0, "dest"    # [I
    .param p1, "x"    # [I
    .param p2, "x_start"    # I
    .param p3, "len"    # I
    .param p4, "count"    # I

    .line 488
    rsub-int/lit8 v0, p4, 0x20

    .line 489
    .local v0, "count_2":I
    aget v1, p1, p2

    .line 490
    .local v1, "low_word":I
    shl-int v2, v1, v0

    .line 491
    .local v2, "retval":I
    const/4 v3, 0x1

    .line 492
    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_0

    .line 494
    add-int v4, p2, v3

    aget v4, p1, v4

    .line 495
    .local v4, "high_word":I
    add-int/lit8 v5, v3, -0x1

    ushr-int v6, v1, p4

    shl-int v7, v4, v0

    or-int/2addr v6, v7

    aput v6, p0, v5

    .line 496
    move v1, v4

    .line 492
    .end local v4    # "high_word":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 498
    :cond_0
    add-int/lit8 v4, v3, -0x1

    ushr-int v5, v1, p4

    aput v5, p0, v4

    .line 499
    return v2
.end method

.method public static rshift0([I[IIII)V
    .locals 2
    .param p0, "dest"    # [I
    .param p1, "x"    # [I
    .param p2, "x_start"    # I
    .param p3, "len"    # I
    .param p4, "count"    # I

    .line 512
    if-lez p4, :cond_0

    .line 513
    invoke-static {p0, p1, p2, p3, p4}, Lgnu/math/MPN;->rshift([I[IIII)I

    goto :goto_1

    .line 515
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 516
    add-int v1, v0, p2

    aget v1, p1, v1

    aput v1, p0, v0

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method public static rshift_long([III)J
    .locals 10
    .param p0, "x"    # [I
    .param p1, "len"    # I
    .param p2, "count"    # I

    .line 527
    shr-int/lit8 v0, p2, 0x5

    .line 528
    .local v0, "wordno":I
    and-int/lit8 p2, p2, 0x1f

    .line 529
    add-int/lit8 v1, p1, -0x1

    aget v1, p0, v1

    if-gez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 530
    .local v1, "sign":I
    :goto_0
    if-lt v0, p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    aget v2, p0, v0

    .line 531
    .local v2, "w0":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 532
    if-lt v0, p1, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    aget v3, p0, v0

    .line 533
    .local v3, "w1":I
    :goto_2
    if-eqz p2, :cond_4

    .line 535
    add-int/lit8 v0, v0, 0x1

    .line 536
    if-lt v0, p1, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    aget v4, p0, v0

    .line 537
    .local v4, "w2":I
    :goto_3
    ushr-int v5, v2, p2

    rsub-int/lit8 v6, p2, 0x20

    shl-int v6, v3, v6

    or-int v2, v5, v6

    .line 538
    ushr-int v5, v3, p2

    rsub-int/lit8 v6, p2, 0x20

    shl-int v6, v4, v6

    or-int v3, v5, v6

    .line 540
    .end local v4    # "w2":I
    :cond_4
    int-to-long v4, v3

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v2

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    return-wide v4
.end method

.method public static set_str([I[BII)I
    .locals 8
    .param p0, "dest"    # [I
    .param p1, "str"    # [B
    .param p2, "str_len"    # I
    .param p3, "base"    # I

    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "size":I
    add-int/lit8 v1, p3, -0x1

    and-int/2addr v1, p3

    if-nez v1, :cond_4

    .line 391
    const/4 v1, 0x0

    .line 392
    .local v1, "next_bitpos":I
    const/4 v2, 0x0

    .line 393
    .local v2, "bits_per_indigit":I
    move v3, p3

    .local v3, "i":I
    :goto_0
    shr-int/lit8 v4, v3, 0x1

    move v3, v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 394
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    .line 396
    .local v3, "res_digit":I
    move v4, p2

    .local v4, "i":I
    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    .line 398
    aget-byte v5, p1, v4

    .line 399
    .local v5, "inp_digit":I
    shl-int v6, v5, v1

    or-int/2addr v3, v6

    .line 400
    add-int/2addr v1, v2

    .line 401
    const/16 v6, 0x20

    if-lt v1, v6, :cond_1

    .line 403
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "size":I
    .local v6, "size":I
    aput v3, p0, v0

    .line 404
    add-int/lit8 v1, v1, -0x20

    .line 405
    sub-int v0, v2, v1

    shr-int v0, v5, v0

    move v3, v0

    move v0, v6

    .line 407
    .end local v5    # "inp_digit":I
    .end local v6    # "size":I
    .restart local v0    # "size":I
    :cond_1
    goto :goto_1

    .line 409
    .end local v4    # "i":I
    :cond_2
    if-eqz v3, :cond_3

    .line 410
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "size":I
    .local v4, "size":I
    aput v3, p0, v0

    move v0, v4

    .line 411
    .end local v1    # "next_bitpos":I
    .end local v2    # "bits_per_indigit":I
    .end local v3    # "res_digit":I
    .end local v4    # "size":I
    .restart local v0    # "size":I
    :cond_3
    goto :goto_5

    .line 415
    :cond_4
    invoke-static {p3}, Lgnu/math/MPN;->chars_per_word(I)I

    move-result v1

    .line 416
    .local v1, "indigits_per_limb":I
    const/4 v2, 0x0

    .line 418
    .local v2, "str_pos":I
    :goto_2
    if-ge v2, p2, :cond_9

    .line 420
    sub-int v3, p2, v2

    .line 421
    .local v3, "chunk":I
    if-le v3, v1, :cond_5

    .line 422
    move v3, v1

    .line 423
    :cond_5
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "str_pos":I
    .local v4, "str_pos":I
    aget-byte v2, p1, v2

    .line 424
    .local v2, "res_digit":I
    move v5, p3

    .line 426
    .local v5, "big_base":I
    :goto_3
    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_6

    .line 428
    mul-int v6, v2, p3

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "str_pos":I
    .local v7, "str_pos":I
    aget-byte v4, p1, v4

    add-int v2, v6, v4

    .line 429
    mul-int v5, v5, p3

    move v4, v7

    goto :goto_3

    .line 433
    .end local v7    # "str_pos":I
    .restart local v4    # "str_pos":I
    :cond_6
    if-nez v0, :cond_7

    .line 434
    move v6, v2

    .local v6, "cy_limb":I
    goto :goto_4

    .line 437
    .end local v6    # "cy_limb":I
    :cond_7
    invoke-static {p0, p0, v0, v5}, Lgnu/math/MPN;->mul_1([I[III)I

    move-result v6

    .line 438
    .restart local v6    # "cy_limb":I
    invoke-static {p0, p0, v0, v2}, Lgnu/math/MPN;->add_1([I[III)I

    move-result v7

    add-int/2addr v6, v7

    .line 440
    :goto_4
    if-eqz v6, :cond_8

    .line 441
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "size":I
    .local v7, "size":I
    aput v6, p0, v0

    move v0, v7

    .line 442
    .end local v2    # "res_digit":I
    .end local v3    # "chunk":I
    .end local v5    # "big_base":I
    .end local v6    # "cy_limb":I
    .end local v7    # "size":I
    .restart local v0    # "size":I
    :cond_8
    move v2, v4

    goto :goto_2

    .line 444
    .end local v1    # "indigits_per_limb":I
    .end local v4    # "str_pos":I
    :cond_9
    :goto_5
    return v0
.end method

.method public static sub_n([I[I[II)I
    .locals 9
    .param p0, "dest"    # [I
    .param p1, "X"    # [I
    .param p2, "Y"    # [I
    .param p3, "size"    # I

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "cy":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 62
    aget v2, p2, v1

    .line 63
    .local v2, "y":I
    aget v3, p1, v1

    .line 64
    .local v3, "x":I
    add-int/2addr v2, v0

    .line 67
    const/high16 v4, -0x80000000

    xor-int v5, v2, v4

    xor-int v6, v0, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    move v0, v5

    .line 68
    sub-int v2, v3, v2

    .line 69
    xor-int v5, v2, v4

    xor-int/2addr v4, v3

    if-le v5, v4, :cond_1

    const/4 v7, 0x1

    :cond_1
    add-int/2addr v0, v7

    .line 70
    aput v2, p0, v1

    .line 60
    .end local v2    # "y":I
    .end local v3    # "x":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static submul_1([II[III)I
    .locals 14
    .param p0, "dest"    # [I
    .param p1, "offset"    # I
    .param p2, "x"    # [I
    .param p3, "len"    # I
    .param p4, "y"    # I

    .line 246
    move/from16 v0, p4

    int-to-long v1, v0

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 247
    .local v1, "yl":J
    const/4 v5, 0x0

    .line 248
    .local v5, "carry":I
    const/4 v6, 0x0

    .line 251
    .local v6, "j":I
    :goto_0
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v3

    mul-long v7, v7, v1

    .line 252
    .local v7, "prod":J
    long-to-int v9, v7

    .line 253
    .local v9, "prod_low":I
    const/16 v10, 0x20

    shr-long v10, v7, v10

    long-to-int v11, v10

    .line 254
    .local v11, "prod_high":I
    add-int/2addr v9, v5

    .line 257
    const/high16 v10, -0x80000000

    xor-int v12, v9, v10

    xor-int v13, v5, v10

    if-ge v12, v13, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    add-int/2addr v12, v11

    .line 259
    .end local v5    # "carry":I
    .local v12, "carry":I
    add-int v5, p1, v6

    aget v5, p0, v5

    .line 260
    .local v5, "x_j":I
    sub-int v9, v5, v9

    .line 261
    xor-int v13, v9, v10

    xor-int/2addr v10, v5

    if-le v13, v10, :cond_1

    .line 262
    add-int/lit8 v12, v12, 0x1

    .line 263
    :cond_1
    add-int v10, p1, v6

    aput v9, p0, v10

    .line 265
    .end local v5    # "x_j":I
    .end local v7    # "prod":J
    .end local v9    # "prod_low":I
    .end local v11    # "prod_high":I
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, p3

    if-lt v6, v5, :cond_2

    .line 266
    return v12

    .line 265
    :cond_2
    move v5, v12

    goto :goto_0
.end method

.method public static udiv_qrnnd(JI)J
    .locals 25
    .param p0, "N"    # J
    .param p2, "D"    # I

    .line 136
    move/from16 v0, p2

    const/16 v1, 0x20

    ushr-long v2, p0, v1

    .line 137
    .local v2, "a1":J
    const-wide v4, 0xffffffffL

    and-long v6, p0, v4

    .line 138
    .local v6, "a0":J
    if-ltz v0, :cond_1

    .line 140
    int-to-long v8, v0

    sub-long/2addr v8, v2

    const/16 v10, 0x1f

    ushr-long v11, v6, v10

    sub-long/2addr v8, v11

    and-long/2addr v8, v4

    cmp-long v11, v2, v8

    if-gez v11, :cond_0

    .line 143
    int-to-long v8, v0

    div-long v8, p0, v8

    .line 144
    .local v8, "q":J
    int-to-long v10, v0

    rem-long v10, p0, v10

    move-wide/from16 v17, v2

    move-wide/from16 v21, v6

    .local v10, "r":J
    goto/16 :goto_2

    .line 149
    .end local v8    # "q":J
    .end local v10    # "r":J
    :cond_0
    int-to-long v8, v0

    shl-long/2addr v8, v10

    sub-long v8, p0, v8

    .line 151
    .local v8, "c":J
    int-to-long v10, v0

    div-long v10, v8, v10

    .line 152
    .local v10, "q":J
    int-to-long v12, v0

    rem-long v12, v8, v12

    .line 154
    .local v12, "r":J
    const-wide/32 v14, -0x80000000

    add-long v8, v10, v14

    .line 155
    .end local v10    # "q":J
    .local v8, "q":J
    move-wide/from16 v17, v2

    move-wide/from16 v21, v6

    move-wide v10, v12

    goto/16 :goto_2

    .line 159
    .end local v8    # "q":J
    .end local v12    # "r":J
    :cond_1
    ushr-int/lit8 v8, v0, 0x1

    int-to-long v8, v8

    .line 162
    .local v8, "b1":J
    const/4 v10, 0x1

    ushr-long v11, p0, v10

    .line 163
    .local v11, "c":J
    cmp-long v13, v2, v8

    if-ltz v13, :cond_4

    shr-long v13, v2, v10

    cmp-long v10, v13, v8

    if-gez v10, :cond_2

    move-wide/from16 v17, v2

    goto :goto_0

    .line 194
    :cond_2
    neg-int v10, v0

    int-to-long v13, v10

    and-long/2addr v13, v4

    cmp-long v10, v6, v13

    if-ltz v10, :cond_3

    .line 196
    const-wide/16 v13, -0x1

    .line 197
    .local v13, "q":J
    int-to-long v4, v0

    add-long/2addr v4, v6

    move-wide/from16 v17, v2

    move-wide v10, v4

    move-wide/from16 v21, v6

    move-wide v8, v13

    .local v4, "r":J
    goto/16 :goto_2

    .line 201
    .end local v4    # "r":J
    .end local v13    # "q":J
    :cond_3
    const-wide/16 v4, -0x2

    .line 202
    .local v4, "q":J
    int-to-long v13, v0

    add-long/2addr v13, v6

    move-wide/from16 v17, v2

    .end local v2    # "a1":J
    .local v17, "a1":J
    int-to-long v1, v0

    add-long/2addr v1, v13

    move-wide v10, v1

    move-wide v8, v4

    move-wide/from16 v21, v6

    .local v1, "r":J
    goto/16 :goto_2

    .line 163
    .end local v1    # "r":J
    .end local v4    # "q":J
    .end local v17    # "a1":J
    .restart local v2    # "a1":J
    :cond_4
    move-wide/from16 v17, v2

    .line 165
    .end local v2    # "a1":J
    .restart local v17    # "a1":J
    :goto_0
    const-wide/16 v1, 0x1

    cmp-long v3, v17, v8

    if-gez v3, :cond_5

    .line 167
    div-long v3, v11, v8

    .line 168
    .local v3, "q":J
    rem-long v13, v11, v8

    .local v13, "r":J
    goto :goto_1

    .line 172
    .end local v3    # "q":J
    .end local v13    # "r":J
    :cond_5
    const/16 v3, 0x20

    shl-long v4, v8, v3

    sub-long v4, v11, v4

    const-wide/16 v13, -0x1

    xor-long v11, v4, v13

    .line 173
    div-long v3, v11, v8

    .line 174
    .restart local v3    # "q":J
    rem-long v19, v11, v8

    .line 175
    .local v19, "r":J
    xor-long/2addr v13, v3

    const-wide v15, 0xffffffffL

    and-long v3, v13, v15

    .line 176
    sub-long v13, v8, v1

    sub-long v13, v13, v19

    .line 178
    .end local v19    # "r":J
    .restart local v13    # "r":J
    :goto_1
    const-wide/16 v19, 0x2

    mul-long v21, v13, v19

    and-long v23, v6, v1

    add-long v13, v21, v23

    .line 179
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_8

    .line 181
    cmp-long v5, v13, v3

    if-ltz v5, :cond_6

    .line 182
    sub-long v1, v13, v3

    move-wide v10, v1

    move-wide v8, v3

    move-wide/from16 v21, v6

    .end local v13    # "r":J
    .restart local v1    # "r":J
    goto :goto_2

    .line 183
    .end local v1    # "r":J
    .restart local v13    # "r":J
    :cond_6
    sub-long v21, v3, v13

    move-wide/from16 v23, v11

    .end local v11    # "c":J
    .local v23, "c":J
    int-to-long v10, v0

    const-wide v15, 0xffffffffL

    and-long/2addr v10, v15

    cmp-long v12, v21, v10

    if-gtz v12, :cond_7

    .line 184
    sub-long v10, v13, v3

    move-wide/from16 v21, v6

    .end local v6    # "a0":J
    .local v21, "a0":J
    int-to-long v5, v0

    add-long/2addr v10, v5

    .line 185
    .end local v13    # "r":J
    .local v10, "r":J
    sub-long v1, v3, v1

    move-wide v8, v1

    .end local v3    # "q":J
    .local v1, "q":J
    goto :goto_2

    .line 187
    .end local v1    # "q":J
    .end local v10    # "r":J
    .end local v21    # "a0":J
    .restart local v3    # "q":J
    .restart local v6    # "a0":J
    .restart local v13    # "r":J
    :cond_7
    move-wide/from16 v21, v6

    .end local v6    # "a0":J
    .restart local v21    # "a0":J
    sub-long v1, v13, v3

    int-to-long v5, v0

    add-long/2addr v1, v5

    int-to-long v5, v0

    add-long v10, v1, v5

    .line 188
    .end local v13    # "r":J
    .restart local v10    # "r":J
    sub-long v1, v3, v19

    move-wide v8, v1

    .end local v3    # "q":J
    .restart local v1    # "q":J
    goto :goto_2

    .line 179
    .end local v1    # "q":J
    .end local v10    # "r":J
    .end local v21    # "a0":J
    .end local v23    # "c":J
    .restart local v3    # "q":J
    .restart local v6    # "a0":J
    .restart local v11    # "c":J
    .restart local v13    # "r":J
    :cond_8
    move-wide/from16 v21, v6

    move-wide/from16 v23, v11

    .end local v6    # "a0":J
    .end local v11    # "c":J
    .restart local v21    # "a0":J
    .restart local v23    # "c":J
    move-wide v8, v3

    move-wide v10, v13

    .line 207
    .end local v3    # "q":J
    .end local v13    # "r":J
    .end local v23    # "c":J
    .local v8, "q":J
    .restart local v10    # "r":J
    :goto_2
    const/16 v1, 0x20

    shl-long v1, v10, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v3, v8

    or-long/2addr v1, v3

    return-wide v1
.end method
