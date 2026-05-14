.class public Lgnu/kawa/lispexpr/LispReader;
.super Lgnu/text/Lexer;
.source "LispReader.java"


# static fields
.field static final SCM_COMPLEX:I = 0x1

.field public static final SCM_NUMBERS:I = 0x1

.field public static final TOKEN_ESCAPE_CHAR:C = '\uffff'


# instance fields
.field protected seenEscapes:Z

.field sharedStructureTable:Lgnu/kawa/util/GeneralHashTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/kawa/util/GeneralHashTable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgnu/text/LineBufferedReader;)V
    .locals 0
    .param p1, "port"    # Lgnu/text/LineBufferedReader;

    .line 20
    invoke-direct {p0, p1}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V
    .locals 0
    .param p1, "port"    # Lgnu/text/LineBufferedReader;
    .param p2, "messages"    # Lgnu/text/SourceMessages;

    .line 25
    invoke-direct {p0, p1, p2}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    .line 26
    return-void
.end method

.method static getReadCase()C
    .locals 4

    .line 73
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    const-string v2, "symbol-read-case"

    const-string v3, "P"

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Environment;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "read_case_string":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .local v0, "read_case":C
    const/16 v2, 0x50

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    const/16 v2, 0x75

    if-ne v0, v2, :cond_1

    .line 78
    const/16 v0, 0x55

    goto :goto_1

    .line 79
    :cond_1
    const/16 v2, 0x64

    if-eq v0, v2, :cond_3

    const/16 v2, 0x6c

    if-eq v0, v2, :cond_3

    const/16 v2, 0x4c

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 81
    :cond_2
    const/16 v2, 0x69

    if-ne v0, v2, :cond_4

    .line 82
    const/16 v0, 0x49

    goto :goto_1

    .line 80
    :cond_3
    :goto_0
    const/16 v0, 0x44

    .line 87
    .end local v1    # "read_case_string":Ljava/lang/String;
    :cond_4
    :goto_1
    goto :goto_2

    .line 84
    .end local v0    # "read_case":C
    :catch_0
    move-exception v1

    .line 86
    .restart local v0    # "read_case":C
    .local v1, "ex":Ljava/lang/Exception;
    const/16 v0, 0x50

    .line 88
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_2
    return v0
.end method

.method private isPotentialNumber([CII)Z
    .locals 6
    .param p1, "buffer"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "sawDigits":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, p3, :cond_7

    .line 439
    aget-char v4, p1, v1

    .line 440
    .local v4, "ch":C
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 442
    :cond_0
    const/16 v5, 0x2d

    if-eq v4, v5, :cond_5

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_1

    goto :goto_2

    .line 447
    :cond_1
    const/16 v5, 0x23

    if-ne v4, v5, :cond_2

    .line 448
    return v3

    .line 449
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x2f

    if-eq v4, v3, :cond_4

    const/16 v3, 0x5f

    if-eq v4, v3, :cond_4

    const/16 v3, 0x5e

    if-ne v4, v3, :cond_3

    goto :goto_1

    .line 458
    :cond_3
    const/16 v3, 0x2e

    if-eq v4, v3, :cond_6

    .line 459
    return v2

    .line 455
    :cond_4
    :goto_1
    if-ne v1, p2, :cond_6

    .line 456
    return v2

    .line 444
    :cond_5
    :goto_2
    add-int/lit8 v3, v1, 0x1

    if-ne v3, p3, :cond_6

    .line 445
    return v2

    .line 437
    .end local v4    # "ch":C
    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    .end local v1    # "i":I
    :cond_7
    if-lez v0, :cond_8

    const/4 v2, 0x1

    :cond_8
    return v2
.end method

.method public static parseNumber(Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .locals 8
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "radix"    # I

    .line 475
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_0

    .line 476
    move-object v0, p0

    check-cast v0, Lgnu/lists/FString;

    iget-object v0, v0, Lgnu/lists/FString;->data:[C

    .local v0, "buf":[C
    goto :goto_0

    .line 478
    .end local v0    # "buf":[C
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 479
    .restart local v0    # "buf":[C
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 480
    .local v7, "len":I
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    move-object v1, v0

    move v3, v7

    move v5, p1

    invoke-static/range {v1 .. v6}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static parseNumber([CIICII)Ljava/lang/Object;
    .locals 26

    .line 498
    move-object/from16 v7, p0

    move/from16 v0, p1

    add-int v8, v0, p2

    .line 499
    nop

    .line 500
    const-string v9, "no digits"

    if-lt v0, v8, :cond_0

    .line 501
    return-object v9

    .line 502
    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-char v2, v7, v0

    move v3, v1

    move v4, v2

    move/from16 v1, p3

    move/from16 v2, p4

    .line 503
    :goto_0
    const/16 v5, 0x23

    const/16 v10, 0x20

    const/16 v12, 0xa

    if-ne v4, v5, :cond_10

    .line 505
    if-lt v3, v8, :cond_1

    .line 506
    return-object v9

    .line 507
    :cond_1
    add-int/lit8 v4, v3, 0x1

    aget-char v3, v7, v3

    .line 508
    const-string v6, "duplicate radix specifier"

    const/4 v13, 0x2

    sparse-switch v3, :sswitch_data_0

    .line 542
    const/4 v11, 0x0

    goto :goto_1

    .line 526
    :sswitch_0
    if-eqz v2, :cond_2

    .line 527
    return-object v6

    .line 528
    :cond_2
    nop

    .line 529
    const/16 v2, 0x10

    goto :goto_3

    .line 516
    :sswitch_1
    if-eqz v2, :cond_3

    .line 517
    return-object v6

    .line 518
    :cond_3
    nop

    .line 519
    const/16 v2, 0x8

    goto :goto_3

    .line 532
    :sswitch_2
    if-eqz v1, :cond_5

    .line 534
    if-ne v1, v10, :cond_4

    .line 535
    const-string v0, "non-prefix exactness specifier"

    return-object v0

    .line 537
    :cond_4
    const-string v0, "duplicate exactness specifier"

    return-object v0

    .line 539
    :cond_5
    nop

    .line 540
    move v1, v3

    goto :goto_3

    .line 521
    :sswitch_3
    if-eqz v2, :cond_6

    .line 522
    return-object v6

    .line 523
    :cond_6
    nop

    .line 524
    const/16 v2, 0xa

    goto :goto_3

    .line 511
    :sswitch_4
    if-eqz v2, :cond_7

    .line 512
    return-object v6

    .line 513
    :cond_7
    nop

    .line 514
    const/4 v2, 0x2

    goto :goto_3

    .line 545
    :goto_1
    invoke-static {v3, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    .line 546
    if-gez v10, :cond_e

    .line 547
    nop

    .line 553
    const/16 v10, 0x52

    if-eq v3, v10, :cond_9

    const/16 v10, 0x72

    if-ne v3, v10, :cond_8

    goto :goto_2

    .line 562
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown modifier \'#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 555
    :cond_9
    :goto_2
    if-eqz v2, :cond_a

    .line 556
    return-object v6

    .line 557
    :cond_a
    if-lt v11, v13, :cond_d

    if-le v11, v5, :cond_b

    goto :goto_4

    .line 559
    :cond_b
    nop

    .line 560
    move v2, v11

    .line 564
    :goto_3
    if-lt v4, v8, :cond_c

    .line 565
    return-object v9

    .line 566
    :cond_c
    add-int/lit8 v3, v4, 0x1

    aget-char v4, v7, v4

    goto :goto_0

    .line 558
    :cond_d
    :goto_4
    const-string v0, "invalid radix specifier"

    return-object v0

    .line 548
    :cond_e
    mul-int/lit8 v11, v11, 0xa

    add-int/2addr v11, v10

    .line 549
    if-lt v4, v8, :cond_f

    .line 550
    const-string v0, "missing letter after \'#\'"

    return-object v0

    .line 551
    :cond_f
    add-int/lit8 v3, v4, 0x1

    aget-char v4, v7, v4

    .line 552
    move/from16 v25, v4

    move v4, v3

    move/from16 v3, v25

    goto :goto_1

    .line 568
    :cond_10
    if-nez v1, :cond_11

    .line 569
    const/16 v13, 0x20

    goto :goto_5

    .line 568
    :cond_11
    move v13, v1

    .line 570
    :goto_5
    const/16 v14, 0x2e

    const/4 v15, -0x1

    if-nez v2, :cond_14

    .line 572
    move/from16 v1, p2

    .line 574
    :cond_12
    add-int/2addr v1, v15

    if-gez v1, :cond_13

    .line 578
    nop

    .line 579
    const/16 v5, 0xa

    goto :goto_6

    .line 581
    :cond_13
    add-int v2, v0, v1

    aget-char v2, v7, v2

    if-ne v2, v14, :cond_12

    .line 583
    nop

    .line 584
    const/16 v5, 0xa

    goto :goto_6

    .line 570
    :cond_14
    move v5, v2

    .line 589
    :goto_6
    const/16 v6, 0x2d

    if-ne v4, v6, :cond_15

    const/16 v16, 0x1

    goto :goto_7

    :cond_15
    const/16 v16, 0x0

    .line 590
    :goto_7
    nop

    .line 591
    const/16 v1, 0x2b

    if-eq v4, v6, :cond_17

    if-ne v4, v1, :cond_16

    goto :goto_8

    :cond_16
    const/16 v17, 0x0

    goto :goto_9

    :cond_17
    :goto_8
    const/16 v17, 0x1

    .line 592
    :goto_9
    if-eqz v17, :cond_19

    .line 594
    if-lt v3, v8, :cond_18

    .line 595
    const-string v0, "no digits following sign"

    return-object v0

    .line 596
    :cond_18
    add-int/lit8 v4, v3, 0x1

    aget-char v3, v7, v3

    move/from16 v25, v4

    move v4, v3

    move/from16 v3, v25

    .line 600
    :cond_19
    const-wide/16 v10, 0x0

    const/16 v15, 0x49

    const/16 v14, 0x69

    if-eq v4, v14, :cond_1a

    if-ne v4, v15, :cond_20

    :cond_1a
    if-ne v3, v8, :cond_20

    add-int/lit8 v2, v3, -0x2

    if-ne v0, v2, :cond_20

    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_20

    .line 603
    aget-char v0, v7, v0

    .line 604
    if-eq v0, v1, :cond_1b

    if-eq v0, v6, :cond_1b

    .line 605
    return-object v9

    .line 606
    :cond_1b
    if-eq v13, v14, :cond_1e

    if-ne v13, v15, :cond_1c

    goto :goto_b

    .line 608
    :cond_1c
    if-eqz v16, :cond_1d

    invoke-static {}, Lgnu/math/Complex;->imMinusOne()Lgnu/math/CComplex;

    move-result-object v0

    goto :goto_a

    :cond_1d
    invoke-static {}, Lgnu/math/Complex;->imOne()Lgnu/math/CComplex;

    move-result-object v0

    :goto_a
    return-object v0

    .line 607
    :cond_1e
    :goto_b
    new-instance v0, Lgnu/math/DComplex;

    if-eqz v16, :cond_1f

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    goto :goto_c

    :cond_1f
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    :goto_c
    invoke-direct {v0, v10, v11, v1, v2}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v0

    .line 611
    :cond_20
    nop

    .line 612
    nop

    .line 613
    nop

    .line 614
    nop

    .line 615
    nop

    .line 616
    nop

    .line 617
    nop

    .line 618
    nop

    .line 619
    const-wide/16 v19, 0x0

    const/4 v0, 0x0

    move/from16 v21, v16

    move-wide/from16 v22, v19

    const/4 v2, -0x1

    const/16 v24, -0x1

    move/from16 v25, v4

    move v4, v3

    move/from16 v3, v25

    .line 623
    :goto_d
    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    .line 624
    if-ltz v10, :cond_22

    .line 626
    nop

    .line 628
    if-gez v2, :cond_21

    .line 629
    add-int/lit8 v2, v4, -0x1

    .line 630
    :cond_21
    int-to-long v14, v5

    mul-long v14, v14, v22

    move/from16 p1, v2

    int-to-long v1, v10

    add-long v22, v14, v1

    move/from16 v2, p1

    move v15, v4

    move v11, v5

    const/16 v10, 0x2d

    const/4 v14, 0x1

    goto/16 :goto_11

    .line 634
    :cond_22
    sparse-switch v3, :sswitch_data_1

    .line 706
    move v15, v4

    move v11, v5

    const/16 v10, 0x2d

    const/4 v14, 0x1

    add-int/lit8 v4, v15, -0x1

    .line 707
    move-object v12, v0

    move v1, v2

    move-wide/from16 v5, v22

    move/from16 v0, v24

    const/4 v3, -0x1

    goto/16 :goto_12

    .line 659
    :sswitch_5
    if-eq v4, v8, :cond_2c

    if-eq v5, v12, :cond_23

    const/16 v10, 0x2b

    const/4 v14, 0x1

    goto :goto_10

    .line 664
    :cond_23
    aget-char v1, v7, v4

    .line 665
    add-int/lit8 v3, v4, -0x1

    .line 666
    const/16 v10, 0x2b

    if-eq v1, v10, :cond_25

    if-ne v1, v6, :cond_24

    goto :goto_e

    .line 672
    :cond_24
    invoke-static {v1, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-gez v1, :cond_26

    .line 674
    add-int/lit8 v4, v4, -0x1

    .line 675
    move-object v12, v0

    move v1, v2

    move v11, v5

    move-wide/from16 v5, v22

    move/from16 v0, v24

    const/4 v3, -0x1

    const/16 v10, 0x2d

    const/4 v14, 0x1

    goto/16 :goto_12

    .line 668
    :cond_25
    :goto_e
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v8, :cond_2b

    aget-char v1, v7, v4

    invoke-static {v1, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-gez v1, :cond_26

    goto :goto_f

    .line 677
    :cond_26
    nop

    .line 679
    if-eq v5, v12, :cond_27

    .line 680
    const-string v0, "exponent in non-decimal number"

    return-object v0

    .line 681
    :cond_27
    if-gez v2, :cond_28

    .line 682
    const-string v0, "mantissa with no digits"

    return-object v0

    .line 683
    :cond_28
    nop

    .line 686
    :cond_29
    const/4 v14, 0x1

    add-int/2addr v4, v14

    .line 687
    if-ge v4, v8, :cond_2a

    aget-char v1, v7, v4

    invoke-static {v1, v12}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-gez v1, :cond_29

    .line 688
    nop

    .line 715
    :cond_2a
    move-object v12, v0

    move v1, v2

    move v11, v5

    move-wide/from16 v5, v22

    move/from16 v0, v24

    const/16 v10, 0x2d

    goto/16 :goto_12

    .line 670
    :cond_2b
    :goto_f
    const-string v0, "missing exponent digits"

    return-object v0

    .line 659
    :cond_2c
    const/16 v10, 0x2b

    const/4 v14, 0x1

    .line 661
    :goto_10
    add-int/lit8 v4, v4, -0x1

    .line 662
    move-object v12, v0

    move v1, v2

    move v11, v5

    move-wide/from16 v5, v22

    move/from16 v0, v24

    const/4 v3, -0x1

    const/16 v10, 0x2d

    goto/16 :goto_12

    .line 691
    :sswitch_6
    const/16 v10, 0x2b

    const/4 v14, 0x1

    if-eqz v0, :cond_2d

    .line 692
    const-string v0, "multiple fraction symbol \'/\'"

    return-object v0

    .line 693
    :cond_2d
    if-gez v2, :cond_2e

    .line 694
    const-string v0, "no digits before fraction symbol \'/\'"

    return-object v0

    .line 695
    :cond_2e
    if-ltz v24, :cond_2f

    .line 696
    const-string v0, "fraction symbol \'/\' following exponent or \'.\'"

    return-object v0

    .line 697
    :cond_2f
    sub-int v3, v4, v2

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move v3, v5

    move v15, v4

    move/from16 v4, v21

    move v11, v5

    const/16 v10, 0x2d

    move-wide/from16 v5, v22

    invoke-static/range {v0 .. v6}, Lgnu/kawa/lispexpr/LispReader;->valueOf([CIIIZJ)Lgnu/math/IntNum;

    move-result-object v0

    .line 699
    nop

    .line 700
    nop

    .line 701
    nop

    .line 702
    nop

    .line 703
    nop

    .line 704
    move-wide/from16 v22, v19

    const/4 v2, -0x1

    const/16 v21, 0x0

    goto :goto_11

    .line 651
    :sswitch_7
    move v15, v4

    move v11, v5

    const/16 v10, 0x2d

    const/4 v14, 0x1

    if-ltz v24, :cond_30

    .line 652
    const-string v0, "duplicate \'.\' in number"

    return-object v0

    .line 653
    :cond_30
    if-eq v11, v12, :cond_31

    .line 654
    const-string v0, "\'.\' in non-decimal number"

    return-object v0

    .line 655
    :cond_31
    add-int/lit8 v24, v15, -0x1

    .line 656
    nop

    .line 710
    :goto_11
    if-ne v15, v8, :cond_32

    .line 711
    move-object v12, v0

    move v1, v2

    move v4, v15

    move-wide/from16 v5, v22

    move/from16 v0, v24

    const/4 v3, -0x1

    goto :goto_12

    .line 712
    :cond_32
    add-int/lit8 v4, v15, 0x1

    aget-char v3, v7, v15

    .line 713
    move v5, v11

    const/16 v1, 0x2b

    const/16 v6, 0x2d

    const-wide/16 v10, 0x0

    const/16 v14, 0x69

    const/16 v15, 0x49

    goto/16 :goto_d

    .line 715
    :goto_12
    nop

    .line 717
    if-gez v1, :cond_36

    .line 719
    if-eqz v17, :cond_34

    add-int/lit8 v2, v4, 0x4

    if-ge v2, v8, :cond_34

    add-int/lit8 v15, v4, 0x3

    aget-char v15, v7, v15

    const/16 v10, 0x2e

    if-ne v15, v10, :cond_34

    aget-char v2, v7, v2

    const/16 v10, 0x30

    if-ne v2, v10, :cond_34

    .line 722
    aget-char v2, v7, v4

    const/16 v10, 0x6e

    const/16 v15, 0x69

    if-ne v2, v15, :cond_33

    add-int/lit8 v2, v4, 0x1

    aget-char v2, v7, v2

    if-ne v2, v10, :cond_33

    add-int/lit8 v2, v4, 0x2

    aget-char v2, v7, v2

    const/16 v15, 0x66

    if-ne v2, v15, :cond_33

    .line 726
    const/16 v10, 0x69

    goto :goto_13

    .line 728
    :cond_33
    aget-char v2, v7, v4

    if-ne v2, v10, :cond_34

    add-int/lit8 v2, v4, 0x1

    aget-char v2, v7, v2

    const/16 v15, 0x61

    if-ne v2, v15, :cond_34

    add-int/lit8 v2, v4, 0x2

    aget-char v2, v7, v2

    if-ne v2, v10, :cond_34

    .line 732
    goto :goto_13

    .line 735
    :cond_34
    const/4 v10, 0x0

    :goto_13
    if-nez v10, :cond_35

    .line 736
    return-object v9

    .line 737
    :cond_35
    add-int/lit8 v4, v4, 0x5

    move v9, v4

    goto :goto_14

    .line 717
    :cond_36
    move v9, v4

    const/4 v10, 0x0

    .line 740
    :goto_14
    nop

    .line 745
    const/16 v2, 0x69

    if-eq v13, v2, :cond_37

    const/16 v2, 0x49

    if-eq v13, v2, :cond_37

    const/16 v2, 0x20

    const/16 v18, 0x0

    goto :goto_15

    :cond_37
    const/16 v18, 0x1

    .line 747
    :goto_15
    nop

    .line 748
    nop

    .line 749
    const-wide/high16 v19, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v22, 0x7ff8000000000000L    # Double.NaN

    const/16 v4, 0x65

    if-eqz v10, :cond_3a

    .line 751
    nop

    .line 752
    const/16 v0, 0x69

    if-ne v10, v0, :cond_38

    move-wide/from16 v0, v19

    goto :goto_16

    :cond_38
    move-wide/from16 v0, v22

    .line 753
    :goto_16
    new-instance v2, Lgnu/math/DFloNum;

    if-eqz v21, :cond_39

    neg-double v0, v0

    :cond_39
    invoke-direct {v2, v0, v1}, Lgnu/math/DFloNum;-><init>(D)V

    .line 754
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/16 v10, 0x65

    goto/16 :goto_1d

    .line 755
    :cond_3a
    if-gez v3, :cond_44

    if-ltz v0, :cond_3b

    const/16 v10, 0x65

    goto/16 :goto_1b

    .line 776
    :cond_3b
    sub-int v2, v9, v1

    move-object/from16 v0, p0

    move v3, v11

    const/16 v10, 0x65

    move/from16 v4, v21

    invoke-static/range {v0 .. v6}, Lgnu/kawa/lispexpr/LispReader;->valueOf([CIIIZJ)Lgnu/math/IntNum;

    move-result-object v0

    .line 778
    if-nez v12, :cond_3c

    .line 779
    move-object v2, v0

    goto :goto_19

    .line 784
    :cond_3c
    invoke-virtual {v0}, Lgnu/math/IntNum;->isZero()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 786
    invoke-virtual {v12}, Lgnu/math/IntNum;->isZero()Z

    move-result v1

    .line 787
    if-eqz v18, :cond_3f

    .line 788
    new-instance v0, Lgnu/math/DFloNum;

    if-eqz v1, :cond_3d

    move-wide/from16 v1, v22

    goto :goto_17

    :cond_3d
    if-eqz v16, :cond_3e

    const-wide/high16 v19, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :cond_3e
    move-wide/from16 v1, v19

    :goto_17
    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    goto :goto_18

    .line 791
    :cond_3f
    if-eqz v1, :cond_40

    .line 792
    const-string v0, "0/0 is undefined"

    return-object v0

    .line 794
    :cond_40
    invoke-static {v12, v0}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v0

    .line 795
    :goto_18
    move-object v2, v0

    goto :goto_19

    .line 798
    :cond_41
    invoke-static {v12, v0}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v0

    move-object v2, v0

    .line 801
    :goto_19
    if-eqz v18, :cond_43

    invoke-virtual {v2}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 803
    new-instance v0, Lgnu/math/DFloNum;

    if-eqz v16, :cond_42

    invoke-virtual {v2}, Lgnu/math/RealNum;->isZero()Z

    move-result v1

    if-eqz v1, :cond_42

    const-wide/high16 v1, -0x8000000000000000L

    goto :goto_1a

    :cond_42
    invoke-virtual {v2}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    :goto_1a
    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v2, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_1d

    .line 807
    :cond_43
    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_1d

    .line 755
    :cond_44
    const/16 v10, 0x65

    .line 757
    :goto_1b
    if-le v1, v0, :cond_45

    if-ltz v0, :cond_45

    .line 758
    move v1, v0

    .line 759
    :cond_45
    if-eqz v12, :cond_46

    .line 760
    const-string v0, "floating-point number after fraction symbol \'/\'"

    return-object v0

    .line 761
    :cond_46
    new-instance v0, Ljava/lang/String;

    sub-int v2, v9, v1

    invoke-direct {v0, v7, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 762
    if-ltz v3, :cond_48

    .line 764
    aget-char v2, v7, v3

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 765
    if-eq v2, v10, :cond_47

    .line 767
    sub-int/2addr v3, v1

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/2addr v3, v14

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 765
    :cond_47
    const/4 v4, 0x0

    goto :goto_1c

    .line 762
    :cond_48
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 771
    :goto_1c
    invoke-static {v0}, Lgnu/lists/Convert;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 772
    new-instance v3, Lgnu/math/DFloNum;

    if-eqz v21, :cond_49

    neg-double v0, v0

    :cond_49
    invoke-direct {v3, v0, v1}, Lgnu/math/DFloNum;-><init>(D)V

    .line 773
    move v0, v2

    move-object v2, v3

    .line 807
    :goto_1d
    if-eq v13, v10, :cond_4b

    const/16 v1, 0x45

    if-ne v13, v1, :cond_4a

    goto :goto_1e

    :cond_4a
    move-object v6, v2

    goto :goto_1f

    .line 808
    :cond_4b
    :goto_1e
    invoke-virtual {v2}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v2

    move-object v6, v2

    .line 810
    :goto_1f
    if-ge v9, v8, :cond_5a

    .line 812
    add-int/lit8 v1, v9, 0x1

    aget-char v0, v7, v9

    .line 814
    const/16 v2, 0x40

    if-ne v0, v2, :cond_4f

    .line 816
    sub-int v2, v8, v1

    const/16 v4, 0xa

    move-object/from16 v0, p0

    move v3, v13

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v0

    .line 818
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4c

    .line 819
    return-object v0

    .line 820
    :cond_4c
    instance-of v1, v0, Lgnu/math/RealNum;

    if-nez v1, :cond_4d

    .line 821
    const-string v0, "invalid complex polar constant"

    return-object v0

    .line 822
    :cond_4d
    check-cast v0, Lgnu/math/RealNum;

    .line 825
    invoke-virtual {v6}, Lgnu/math/RealNum;->isZero()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {v0}, Lgnu/math/RealNum;->isExact()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 826
    new-instance v0, Lgnu/math/DFloNum;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 828
    :cond_4e
    invoke-static {v6, v0}, Lgnu/math/Complex;->polar(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/DComplex;

    move-result-object v0

    return-object v0

    .line 831
    :cond_4f
    const/16 v2, 0x2d

    if-eq v0, v2, :cond_56

    const/16 v2, 0x2b

    if-ne v0, v2, :cond_50

    goto :goto_22

    .line 847
    :cond_50
    const/4 v11, 0x0

    .line 850
    :goto_20
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_51

    .line 852
    add-int/lit8 v1, v1, -0x1

    .line 853
    goto :goto_21

    .line 855
    :cond_51
    add-int/lit8 v11, v11, 0x1

    .line 856
    if-ne v1, v8, :cond_55

    .line 857
    nop

    .line 861
    :goto_21
    if-ne v11, v14, :cond_54

    .line 863
    add-int/lit8 v0, v1, -0x1

    aget-char v0, v7, v0

    .line 864
    const/16 v2, 0x69

    if-eq v0, v2, :cond_52

    const/16 v3, 0x49

    if-ne v0, v3, :cond_54

    .line 866
    :cond_52
    if-ge v1, v8, :cond_53

    .line 867
    const-string v0, "junk after imaginary suffix \'i\'"

    return-object v0

    .line 868
    :cond_53
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    invoke-static {v0, v6}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 871
    :cond_54
    const-string v0, "excess junk after number"

    return-object v0

    .line 858
    :cond_55
    const/16 v2, 0x69

    const/16 v3, 0x49

    add-int/lit8 v0, v1, 0x1

    aget-char v1, v7, v1

    move/from16 v25, v1

    move v1, v0

    move/from16 v0, v25

    goto :goto_20

    .line 833
    :cond_56
    :goto_22
    const/4 v0, -0x1

    add-int/2addr v1, v0

    .line 834
    sub-int v2, v8, v1

    const/16 v4, 0xa

    move-object/from16 v0, p0

    move v3, v13

    move/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v0

    .line 836
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_57

    .line 837
    return-object v0

    .line 838
    :cond_57
    instance-of v1, v0, Lgnu/math/Complex;

    if-nez v1, :cond_58

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid numeric constant ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 840
    :cond_58
    check-cast v0, Lgnu/math/Complex;

    .line 841
    invoke-virtual {v0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    .line 842
    invoke-virtual {v1}, Lgnu/math/RealNum;->isZero()Z

    move-result v1

    if-nez v1, :cond_59

    .line 843
    const-string v0, "invalid numeric constant"

    return-object v0

    .line 844
    :cond_59
    invoke-virtual {v0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    invoke-static {v6, v0}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 874
    :cond_5a
    instance-of v1, v6, Lgnu/math/DFloNum;

    if-eqz v1, :cond_5b

    if-lez v0, :cond_5b

    if-eq v0, v10, :cond_5b

    .line 876
    invoke-virtual {v6}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    .line 877
    sparse-switch v0, :sswitch_data_2

    goto :goto_23

    .line 884
    :sswitch_8
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 880
    :sswitch_9
    double-to-float v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 882
    :sswitch_a
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 887
    :cond_5b
    :goto_23
    return-object v6

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_4
        0x44 -> :sswitch_3
        0x45 -> :sswitch_2
        0x49 -> :sswitch_2
        0x4f -> :sswitch_1
        0x58 -> :sswitch_0
        0x62 -> :sswitch_4
        0x64 -> :sswitch_3
        0x65 -> :sswitch_2
        0x69 -> :sswitch_2
        0x6f -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2e -> :sswitch_7
        0x2f -> :sswitch_6
        0x44 -> :sswitch_5
        0x45 -> :sswitch_5
        0x46 -> :sswitch_5
        0x4c -> :sswitch_5
        0x53 -> :sswitch_5
        0x64 -> :sswitch_5
        0x65 -> :sswitch_5
        0x66 -> :sswitch_5
        0x6c -> :sswitch_5
        0x73 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x64 -> :sswitch_a
        0x66 -> :sswitch_9
        0x6c -> :sswitch_8
        0x73 -> :sswitch_9
    .end sparse-switch
.end method

.method public static readCharacter(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;
    .locals 9
    .param p0, "reader"    # Lgnu/kawa/lispexpr/LispReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1150
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 1151
    .local v0, "ch":I
    if-gez v0, :cond_0

    .line 1152
    const-string v1, "unexpected EOF in character literal"

    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 1153
    :cond_0
    iget v1, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 1154
    .local v1, "startPos":I
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 1155
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v2

    const/16 v3, 0x44

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 1156
    iget-object v2, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    .line 1157
    .local v2, "tokenBuffer":[C
    iget v3, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int/2addr v3, v1

    .line 1158
    .local v3, "length":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1159
    aget-char v4, v2, v1

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    return-object v4

    .line 1160
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1161
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4}, Lgnu/text/Char;->nameToChar(Ljava/lang/String;)I

    move-result v0

    .line 1162
    if-ltz v0, :cond_2

    .line 1163
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    return-object v5

    .line 1164
    :cond_2
    aget-char v0, v2, v1

    .line 1165
    const/16 v5, 0x78

    if-eq v0, v5, :cond_3

    const/16 v5, 0x58

    if-ne v0, v5, :cond_6

    .line 1167
    :cond_3
    const/4 v5, 0x0

    .line 1168
    .local v5, "value":I
    const/4 v6, 0x1

    .line 1170
    .local v6, "i":I
    :goto_0
    if-ne v6, v3, :cond_4

    .line 1171
    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    return-object v7

    .line 1172
    :cond_4
    add-int v7, v1, v6

    aget-char v7, v2, v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 1173
    .local v7, "v":I
    if-gez v7, :cond_5

    .line 1174
    goto :goto_1

    .line 1175
    :cond_5
    mul-int/lit8 v8, v5, 0x10

    add-int v5, v8, v7

    .line 1176
    const v8, 0x10ffff

    if-le v5, v8, :cond_a

    .line 1177
    nop

    .line 1180
    .end local v5    # "value":I
    .end local v6    # "i":I
    .end local v7    # "v":I
    :cond_6
    :goto_1
    const/16 v5, 0x8

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(II)I

    move-result v0

    .line 1181
    if-ltz v0, :cond_9

    .line 1183
    move v6, v0

    .line 1184
    .local v6, "value":I
    const/4 v7, 0x1

    .line 1186
    .local v7, "i":I
    :goto_2
    if-ne v7, v3, :cond_7

    .line 1187
    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    return-object v5

    .line 1188
    :cond_7
    add-int v8, v1, v7

    aget-char v8, v2, v8

    invoke-static {v8, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 1189
    if-gez v0, :cond_8

    .line 1190
    goto :goto_3

    .line 1191
    :cond_8
    mul-int/lit8 v8, v6, 0x8

    add-int v6, v8, v0

    .line 1184
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1194
    .end local v6    # "value":I
    .end local v7    # "i":I
    :cond_9
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown character name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1195
    const/16 v5, 0x3f

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    return-object v5

    .line 1168
    .restart local v5    # "value":I
    .local v6, "i":I
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;
    .locals 8
    .param p0, "previous"    # I
    .param p1, "reader"    # Lgnu/kawa/lispexpr/LispReader;
    .param p2, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1123
    iget v0, p1, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int/2addr v0, p0

    .line 1124
    .local v0, "startPos":I
    invoke-virtual {p1}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v1

    const/16 v2, 0x50

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 1125
    iget v7, p1, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 1126
    .local v7, "endPos":I
    if-ne v0, v7, :cond_0

    .line 1128
    const-string v1, "missing numeric token"

    invoke-virtual {p1, v1}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1129
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    return-object v1

    .line 1131
    :cond_0
    iget-object v1, p1, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    sub-int v3, v7, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v2, v0

    move v5, p2

    invoke-static/range {v1 .. v6}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v1

    .line 1133
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1135
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1136
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v2

    return-object v2

    .line 1138
    :cond_1
    if-nez v1, :cond_2

    .line 1140
    const-string v2, "invalid numeric constant"

    invoke-virtual {p1, v2}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1141
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v2

    return-object v2

    .line 1144
    :cond_2
    return-object v1
.end method

.method public static readSimpleVector(Lgnu/kawa/lispexpr/LispReader;C)Lgnu/lists/SimpleVector;
    .locals 6
    .param p0, "reader"    # Lgnu/kawa/lispexpr/LispReader;
    .param p1, "kind"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1246
    const/4 v0, 0x0

    .line 1250
    .local v0, "size":I
    :goto_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v1

    .line 1251
    .local v1, "ch":I
    if-gez v1, :cond_0

    .line 1252
    const-string v2, "unexpected EOF reading uniform vector"

    invoke-virtual {p0, v2}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 1253
    :cond_0
    int-to-char v2, v1

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 1254
    .local v2, "digit":I
    if-gez v2, :cond_6

    .line 1255
    nop

    .line 1258
    .end local v2    # "digit":I
    const/16 v2, 0x8

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-eq v0, v2, :cond_1

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_1

    const/16 v2, 0x40

    if-ne v0, v2, :cond_3

    :cond_1
    const/16 v2, 0x46

    if-ne p1, v2, :cond_2

    if-lt v0, v3, :cond_3

    :cond_2
    const/16 v2, 0x28

    if-eq v1, v2, :cond_4

    .line 1262
    :cond_3
    const-string v2, "invalid uniform vector syntax"

    invoke-virtual {p0, v2}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1263
    return-object v4

    .line 1265
    :cond_4
    const/4 v3, -0x1

    const/16 v5, 0x29

    invoke-static {p0, v2, v3, v5}, Lgnu/kawa/lispexpr/ReaderParens;->readList(Lgnu/kawa/lispexpr/LispReader;III)Ljava/lang/Object;

    move-result-object v2

    .line 1266
    .local v2, "list":Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v3

    .line 1267
    .local v3, "len":I
    if-gez v3, :cond_5

    .line 1269
    const-string v5, "invalid elements in uniform vector syntax"

    invoke-virtual {p0, v5}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1270
    return-object v4

    .line 1272
    :cond_5
    move-object v5, v2

    check-cast v5, Lgnu/lists/Sequence;

    .line 1273
    .local v5, "q":Lgnu/lists/Sequence;
    sparse-switch p1, :sswitch_data_0

    goto :goto_3

    .line 1276
    :sswitch_0
    sparse-switch v0, :sswitch_data_1

    goto :goto_1

    .line 1279
    :sswitch_1
    new-instance v4, Lgnu/lists/F64Vector;

    invoke-direct {v4, v5}, Lgnu/lists/F64Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object v4

    .line 1278
    :sswitch_2
    new-instance v4, Lgnu/lists/F32Vector;

    invoke-direct {v4, v5}, Lgnu/lists/F32Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object v4

    .line 1282
    :goto_1
    :sswitch_3
    sparse-switch v0, :sswitch_data_2

    goto :goto_2

    .line 1287
    :sswitch_4
    new-instance v4, Lgnu/lists/S64Vector;

    invoke-direct {v4, v5}, Lgnu/lists/S64Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object v4

    .line 1286
    :sswitch_5
    new-instance v4, Lgnu/lists/S32Vector;

    invoke-direct {v4, v5}, Lgnu/lists/S32Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object v4

    .line 1285
    :sswitch_6
    new-instance v4, Lgnu/lists/S16Vector;

    invoke-direct {v4, v5}, Lgnu/lists/S16Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object v4

    .line 1284
    :sswitch_7
    new-instance v4, Lgnu/lists/S8Vector;

    invoke-direct {v4, v5}, Lgnu/lists/S8Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object v4

    .line 1290
    :goto_2
    :sswitch_8
    sparse-switch v0, :sswitch_data_3

    goto :goto_3

    .line 1295
    :sswitch_9
    new-instance v4, Lgnu/lists/U64Vector;

    invoke-direct {v4, v5}, Lgnu/lists/U64Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object v4

    .line 1294
    :sswitch_a
    new-instance v4, Lgnu/lists/U32Vector;

    invoke-direct {v4, v5}, Lgnu/lists/U32Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object v4

    .line 1293
    :sswitch_b
    new-instance v4, Lgnu/lists/U16Vector;

    invoke-direct {v4, v5}, Lgnu/lists/U16Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object v4

    .line 1292
    :sswitch_c
    new-instance v4, Lgnu/lists/U8Vector;

    invoke-direct {v4, v5}, Lgnu/lists/U8Vector;-><init>(Lgnu/lists/Sequence;)V

    return-object v4

    .line 1298
    :goto_3
    return-object v4

    .line 1256
    .end local v3    # "len":I
    .end local v5    # "q":Lgnu/lists/Sequence;
    .local v2, "digit":I
    :cond_6
    mul-int/lit8 v3, v0, 0xa

    add-int v0, v3, v2

    .line 1257
    .end local v2    # "digit":I
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_0
        0x53 -> :sswitch_3
        0x55 -> :sswitch_8
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x8 -> :sswitch_7
        0x10 -> :sswitch_6
        0x20 -> :sswitch_5
        0x40 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x8 -> :sswitch_c
        0x10 -> :sswitch_b
        0x20 -> :sswitch_a
        0x40 -> :sswitch_9
    .end sparse-switch
.end method

.method public static readSpecial(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;
    .locals 7
    .param p0, "reader"    # Lgnu/kawa/lispexpr/LispReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1201
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 1202
    .local v0, "ch":I
    if-gez v0, :cond_0

    .line 1203
    const-string v1, "unexpected EOF in #! special form"

    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 1206
    :cond_0
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1210
    invoke-static {}, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;->getInstance()Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;

    move-result-object v1

    const/16 v2, 0x23

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;->read(Lgnu/text/Lexer;II)Ljava/lang/Object;

    .line 1211
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v1

    .line 1214
    :cond_1
    iget v1, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 1215
    .local v1, "startPos":I
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 1216
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v2

    const/16 v3, 0x44

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 1217
    iget v2, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int/2addr v2, v1

    .line 1218
    .local v2, "length":I
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    invoke-direct {v3, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 1219
    .local v3, "name":Ljava/lang/String;
    const-string v4, "optional"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1220
    sget-object v4, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    return-object v4

    .line 1221
    :cond_2
    const-string v4, "rest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1222
    sget-object v4, Lgnu/expr/Special;->rest:Lgnu/expr/Special;

    return-object v4

    .line 1223
    :cond_3
    const-string v4, "key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1224
    sget-object v4, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    return-object v4

    .line 1225
    :cond_4
    const-string v4, "eof"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1226
    sget-object v4, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    return-object v4

    .line 1227
    :cond_5
    const-string v4, "void"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1229
    sget-object v4, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v4

    .line 1230
    :cond_6
    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1231
    sget-object v4, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    return-object v4

    .line 1232
    :cond_7
    const-string v4, "undefined"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1233
    sget-object v4, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    return-object v4

    .line 1234
    :cond_8
    const-string v4, "abstract"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1235
    sget-object v4, Lgnu/expr/Special;->abstractSpecial:Lgnu/expr/Special;

    return-object v4

    .line 1236
    :cond_9
    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    .line 1237
    return-object v5

    .line 1238
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown named constant #!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1239
    return-object v5
.end method

.method private static valueOf([CIIIZJ)Lgnu/math/IntNum;
    .locals 2
    .param p0, "buffer"    # [C
    .param p1, "digits_start"    # I
    .param p2, "number_of_digits"    # I
    .param p3, "radix"    # I
    .param p4, "negative"    # Z
    .param p5, "lvalue"    # J

    .line 898
    add-int v0, p2, p3

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1

    .line 899
    if-eqz p4, :cond_0

    neg-long v0, p5

    goto :goto_0

    :cond_0
    move-wide v0, p5

    :goto_0
    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 901
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method handlePostfix(Ljava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;II)Ljava/lang/Object;
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "rtable"    # Lgnu/kawa/lispexpr/ReadTable;
    .param p3, "line"    # I
    .param p4, "column"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 409
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    if-ne p1, v0, :cond_0

    .line 410
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 413
    :cond_0
    :goto_0
    iget-object v0, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    .line 414
    .local v0, "ch":I
    if-ltz v0, :cond_3

    iget-char v1, p2, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-eq v0, v1, :cond_1

    .line 415
    goto :goto_1

    .line 417
    :cond_1
    iget-object v1, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->read()I

    .line 418
    iget-object v1, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v1

    .line 419
    .local v1, "ch2":I
    invoke-virtual {p0, v1, p2}, Lgnu/kawa/lispexpr/LispReader;->validPostfixLookupStart(ILgnu/kawa/lispexpr/ReadTable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 421
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->unread()V

    .line 422
    goto :goto_1

    .line 424
    :cond_2
    iget-object v2, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 425
    invoke-virtual {p2, v0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p2}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v2

    .line 426
    .local v2, "rightOperand":Ljava/lang/Object;
    const-string v3, "quasiquote"

    invoke-virtual {p2, v3}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    invoke-static {p1, v3}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 428
    sget-object v3, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    iget-object v4, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, p3, 0x1

    add-int/lit8 v6, p4, 0x1

    invoke-static {v3, p1, v4, v5, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object p1

    .line 430
    .end local v0    # "ch":I
    .end local v1    # "ch2":I
    .end local v2    # "rightOperand":Ljava/lang/Object;
    goto :goto_0

    .line 431
    :cond_3
    :goto_1
    return-object p1
.end method

.method protected makeNil()Ljava/lang/Object;
    .locals 1

    .line 1092
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    return-object v0
.end method

.method protected makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;
    .locals 1
    .param p1, "car"    # Ljava/lang/Object;
    .param p2, "line"    # I
    .param p3, "column"    # I

    .line 1097
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {p0, p1, v0, p2, p3}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected makePair(Ljava/lang/Object;Ljava/lang/Object;II)Lgnu/lists/Pair;
    .locals 3
    .param p1, "car"    # Ljava/lang/Object;
    .param p2, "cdr"    # Ljava/lang/Object;
    .param p3, "line"    # I
    .param p4, "column"    # I

    .line 1102
    iget-object v0, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1103
    .local v0, "pname":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-ltz p3, :cond_0

    .line 1104
    add-int/lit8 v1, p3, 0x1

    add-int/lit8 v2, p4, 0x1

    invoke-static {p1, p2, v0, v1, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v1

    return-object v1

    .line 1107
    :cond_0
    invoke-static {p1, p2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    return-object v1
.end method

.method protected readAndHandleToken(IILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .locals 20
    .param p1, "ch"    # I
    .param p2, "startPos"    # I
    .param p3, "rtable"    # Lgnu/kawa/lispexpr/ReadTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 133
    move-object/from16 v0, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-static {}, Lgnu/kawa/lispexpr/LispReader;->getReadCase()C

    move-result v1

    move/from16 v9, p1

    invoke-virtual {v0, v9, v1, v8}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 134
    iget v10, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 135
    .local v10, "endPos":I
    iget-boolean v1, v0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    if-nez v1, :cond_0

    .line 137
    iget-object v1, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    sub-int v3, v10, v7

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    move/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v1

    .line 139
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 140
    return-object v1

    .line 151
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lgnu/kawa/lispexpr/LispReader;->getReadCase()C

    move-result v1

    .line 152
    .local v1, "readCase":C
    const/16 v2, 0x49

    const v3, 0xffff

    const/4 v4, 0x1

    if-ne v1, v2, :cond_7

    .line 154
    const/4 v2, 0x0

    .line 155
    .local v2, "upperCount":I
    const/4 v5, 0x0

    .line 156
    .local v5, "lowerCount":I
    move/from16 v6, p2

    .local v6, "i":I
    :goto_0
    if-ge v6, v10, :cond_4

    .line 158
    iget-object v11, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    aget-char v11, v11, v6

    .line 159
    .local v11, "ci":C
    if-ne v11, v3, :cond_1

    .line 160
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 161
    :cond_1
    invoke-static {v11}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 162
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 163
    :cond_2
    invoke-static {v11}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 164
    add-int/lit8 v2, v2, 0x1

    .line 156
    .end local v11    # "ci":C
    :cond_3
    :goto_1
    add-int/2addr v6, v4

    goto :goto_0

    .line 166
    .end local v6    # "i":I
    :cond_4
    if-nez v5, :cond_5

    .line 167
    const/16 v1, 0x44

    goto :goto_2

    .line 168
    :cond_5
    if-nez v2, :cond_6

    .line 169
    const/16 v1, 0x55

    goto :goto_2

    .line 171
    :cond_6
    const/16 v1, 0x50

    .line 174
    .end local v2    # "upperCount":I
    .end local v5    # "lowerCount":I
    :cond_7
    :goto_2
    add-int/lit8 v2, v7, 0x2

    const/16 v5, 0x3a

    const/16 v6, 0x7d

    if-lt v10, v2, :cond_8

    iget-object v2, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    add-int/lit8 v11, v10, -0x1

    aget-char v2, v2, v11

    if-ne v2, v6, :cond_8

    iget-object v2, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    add-int/lit8 v11, v10, -0x2

    aget-char v2, v2, v11

    if-eq v2, v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v2

    if-ne v2, v5, :cond_8

    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    .line 179
    .local v2, "handleUri":Z
    :goto_3
    const/4 v11, -0x1

    .line 180
    .local v11, "packageMarker":I
    const/4 v12, -0x1

    .local v12, "lbrace":I
    const/4 v13, -0x1

    .local v13, "rbrace":I
    const/4 v14, 0x0

    .line 181
    .local v14, "braceNesting":I
    move/from16 v15, p2

    .line 182
    .local v15, "j":I
    const/16 v16, 0x0

    .line 183
    .local v16, "uriBad":Z
    move/from16 v17, p2

    move/from16 v4, v17

    .local v4, "i":I
    :goto_4
    if-ge v4, v10, :cond_17

    .line 185
    iget-object v5, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    aget-char v5, v5, v4

    .line 186
    .local v5, "ci":C
    if-ne v5, v3, :cond_a

    .line 188
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v10, :cond_9

    .line 189
    iget-object v3, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    add-int/lit8 v19, v15, 0x1

    .end local v15    # "j":I
    .local v19, "j":I
    iget-object v6, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    aget-char v6, v6, v4

    aput-char v6, v3, v15

    move/from16 v15, v19

    const/16 v6, 0x3a

    goto/16 :goto_9

    .line 188
    .end local v19    # "j":I
    .restart local v15    # "j":I
    :cond_9
    const/16 v6, 0x3a

    goto :goto_9

    .line 192
    :cond_a
    if-eqz v2, :cond_10

    .line 194
    const/16 v3, 0x7b

    if-ne v5, v3, :cond_d

    .line 196
    if-gez v12, :cond_b

    .line 197
    move v12, v15

    goto :goto_5

    .line 198
    :cond_b
    if-nez v14, :cond_c

    .line 199
    const/16 v16, 0x1

    .line 200
    :cond_c
    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/16 v3, 0x7d

    goto :goto_6

    .line 202
    :cond_d
    const/16 v3, 0x7d

    if-ne v5, v3, :cond_11

    .line 204
    add-int/lit8 v14, v14, -0x1

    .line 205
    if-gez v14, :cond_e

    .line 206
    const/16 v16, 0x1

    goto :goto_6

    .line 207
    :cond_e
    if-nez v14, :cond_11

    .line 209
    if-gez v13, :cond_f

    .line 210
    move v13, v15

    goto :goto_6

    .line 212
    :cond_f
    const/16 v16, 0x1

    goto :goto_6

    .line 192
    :cond_10
    const/16 v3, 0x7d

    .line 216
    :cond_11
    :goto_6
    if-lez v14, :cond_12

    .line 217
    const/16 v6, 0x3a

    goto :goto_8

    .line 218
    :cond_12
    const/16 v6, 0x3a

    if-ne v5, v6, :cond_14

    .line 219
    if-ltz v11, :cond_13

    const/16 v18, -0x1

    goto :goto_7

    :cond_13
    move/from16 v18, v15

    :goto_7
    move/from16 v11, v18

    goto :goto_8

    .line 220
    :cond_14
    const/16 v3, 0x55

    if-ne v1, v3, :cond_15

    .line 221
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    goto :goto_8

    .line 222
    :cond_15
    const/16 v3, 0x44

    if-ne v1, v3, :cond_16

    .line 223
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    .line 224
    :cond_16
    :goto_8
    iget-object v3, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    add-int/lit8 v18, v15, 0x1

    .end local v15    # "j":I
    .local v18, "j":I
    aput-char v5, v3, v15

    move/from16 v15, v18

    .line 183
    .end local v5    # "ci":C
    .end local v18    # "j":I
    .restart local v15    # "j":I
    :goto_9
    const/4 v3, 0x1

    add-int/2addr v4, v3

    const v3, 0xffff

    const/16 v5, 0x3a

    const/16 v6, 0x7d

    goto :goto_4

    .line 226
    .end local v4    # "i":I
    :cond_17
    move v3, v15

    .line 228
    .end local v10    # "endPos":I
    .local v3, "endPos":I
    sub-int v4, v3, v7

    .line 230
    .local v4, "len":I
    if-ltz v12, :cond_1a

    if-le v13, v12, :cond_1a

    .line 232
    if-lez v12, :cond_18

    new-instance v5, Ljava/lang/String;

    iget-object v6, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    sub-int v10, v12, v7

    invoke-direct {v5, v6, v7, v10}, Ljava/lang/String;-><init>([CII)V

    goto :goto_a

    :cond_18
    const/4 v5, 0x0

    .line 233
    .local v5, "prefix":Ljava/lang/String;
    :goto_a
    const/4 v6, 0x1

    add-int/2addr v12, v6

    .line 234
    new-instance v6, Ljava/lang/String;

    iget-object v10, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move/from16 v18, v1

    .end local v1    # "readCase":C
    .local v18, "readCase":C
    sub-int v1, v13, v12

    invoke-direct {v6, v10, v12, v1}, Ljava/lang/String;-><init>([CII)V

    move-object v1, v6

    .line 235
    .local v1, "uri":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v6

    .line 236
    .end local p1    # "ch":I
    .local v6, "ch":I
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v6

    .line 237
    invoke-virtual {v8, v6}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v9

    invoke-virtual {v0, v6, v9, v8}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v9

    .line 238
    .local v9, "rightOperand":Ljava/lang/Object;
    instance-of v10, v9, Lgnu/mapping/SimpleSymbol;

    if-nez v10, :cond_19

    .line 239
    const-string v10, "expected identifier in symbol after \'{URI}:\'"

    invoke-virtual {v0, v10}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 241
    :cond_19
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1, v5}, Lgnu/mapping/Symbol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v10

    return-object v10

    .line 230
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v6    # "ch":I
    .end local v9    # "rightOperand":Ljava/lang/Object;
    .end local v18    # "readCase":C
    .local v1, "readCase":C
    .restart local p1    # "ch":I
    :cond_1a
    move/from16 v18, v1

    .line 244
    .end local v1    # "readCase":C
    .restart local v18    # "readCase":C
    iget-boolean v1, v8, Lgnu/kawa/lispexpr/ReadTable;->initialColonIsKeyword:Z

    if-eqz v1, :cond_1b

    if-ne v11, v7, :cond_1b

    const/4 v1, 0x1

    if-le v4, v1, :cond_1b

    .line 246
    add-int/2addr v1, v7

    .line 247
    .end local p2    # "startPos":I
    .local v1, "startPos":I
    new-instance v5, Ljava/lang/String;

    iget-object v6, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    sub-int v7, v3, v1

    invoke-direct {v5, v6, v1, v7}, Ljava/lang/String;-><init>([CII)V

    .line 248
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v6

    return-object v6

    .line 250
    .end local v1    # "startPos":I
    .end local v5    # "str":Ljava/lang/String;
    .restart local p2    # "startPos":I
    :cond_1b
    iget-boolean v1, v8, Lgnu/kawa/lispexpr/ReadTable;->finalColonIsKeyword:Z

    if-eqz v1, :cond_1d

    add-int/lit8 v1, v3, -0x1

    if-ne v11, v1, :cond_1d

    const/4 v1, 0x1

    if-gt v4, v1, :cond_1c

    iget-boolean v1, v0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    if-eqz v1, :cond_1d

    .line 253
    :cond_1c
    new-instance v1, Ljava/lang/String;

    iget-object v5, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    add-int/lit8 v6, v4, -0x1

    invoke-direct {v1, v5, v7, v6}, Ljava/lang/String;-><init>([CII)V

    .line 254
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v5

    return-object v5

    .line 256
    .end local v1    # "str":Ljava/lang/String;
    :cond_1d
    new-instance v1, Ljava/lang/String;

    iget-object v5, v0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    invoke-direct {v1, v5, v7, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8, v1}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public readCommand()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1087
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readEscape()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 911
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 912
    .local v0, "c":I
    if-gez v0, :cond_0

    .line 914
    const-string v1, "unexpected EOF in character literal"

    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 915
    const/4 v1, -0x1

    return v1

    .line 917
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->readEscape(I)I

    move-result v1

    return v1
.end method

.method public final readEscape(I)I
    .locals 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 923
    int-to-char v0, p1

    const-string v1, "Invalid escape character syntax"

    const/16 v2, 0x2d

    const/16 v3, 0x5c

    const/16 v4, 0x3f

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    .line 929
    :sswitch_0
    const/16 p1, 0xb

    goto/16 :goto_4

    .line 1030
    :sswitch_1
    const/4 p1, 0x0

    .line 1031
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    add-int/2addr v0, v5

    if-ltz v0, :cond_2

    .line 1033
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v1

    .line 1034
    .local v1, "d":I
    if-gez v1, :cond_0

    .line 1035
    const-string v2, "premature EOF in \\u escape"

    invoke-virtual {p0, v2}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 1036
    :cond_0
    int-to-char v2, v1

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 1037
    .local v2, "v":I
    if-gez v2, :cond_1

    .line 1038
    const-string v3, "non-hex character following \\u"

    invoke-virtual {p0, v3}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1039
    :cond_1
    mul-int/lit8 v3, p1, 0x10

    add-int p1, v3, v2

    .line 1040
    .end local v1    # "d":I
    .end local v2    # "v":I
    goto :goto_0

    .line 1041
    .end local v0    # "i":I
    :cond_2
    goto/16 :goto_4

    .line 927
    :sswitch_2
    const/16 p1, 0x9

    goto/16 :goto_4

    .line 931
    :sswitch_3
    const/16 p1, 0xd

    goto/16 :goto_4

    .line 928
    :sswitch_4
    const/16 p1, 0xa

    goto/16 :goto_4

    .line 930
    :sswitch_5
    const/16 p1, 0xc

    goto/16 :goto_4

    .line 932
    :sswitch_6
    const/16 p1, 0x1b

    goto/16 :goto_4

    .line 926
    :sswitch_7
    const/16 p1, 0x8

    goto/16 :goto_4

    .line 925
    :sswitch_8
    const/4 p1, 0x7

    goto/16 :goto_4

    .line 934
    :sswitch_9
    const/16 p1, 0x5c

    goto/16 :goto_4

    .line 1044
    :sswitch_a
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readHexEscape()I

    move-result v0

    return v0

    .line 980
    :sswitch_b
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 981
    if-eq p1, v2, :cond_3

    .line 983
    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 984
    return v4

    .line 986
    :cond_3
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 987
    if-ne p1, v3, :cond_4

    .line 988
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result p1

    .line 989
    :cond_4
    or-int/lit16 v0, p1, 0x80

    return v0

    .line 991
    :sswitch_c
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 992
    if-eq p1, v2, :cond_5

    .line 994
    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 995
    return v4

    .line 999
    :cond_5
    :sswitch_d
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 1000
    if-ne p1, v3, :cond_6

    .line 1001
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result p1

    .line 1002
    :cond_6
    if-ne p1, v4, :cond_7

    .line 1003
    const/16 v0, 0x7f

    return v0

    .line 1004
    :cond_7
    and-int/lit16 v0, p1, 0x9f

    return v0

    .line 1014
    :sswitch_e
    add-int/lit8 p1, p1, -0x30

    .line 1015
    const/4 v0, 0x0

    .local v0, "count":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_9

    .line 1017
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v1

    .line 1018
    .restart local v1    # "d":I
    int-to-char v2, v1

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 1019
    .restart local v2    # "v":I
    if-ltz v2, :cond_8

    .line 1020
    shl-int/lit8 v3, p1, 0x3

    add-int p1, v3, v2

    .line 1027
    .end local v1    # "d":I
    .end local v2    # "v":I
    goto :goto_1

    .line 1023
    .restart local v1    # "d":I
    .restart local v2    # "v":I
    :cond_8
    if-ltz v1, :cond_9

    .line 1024
    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 1028
    .end local v0    # "count":I
    .end local v1    # "d":I
    .end local v2    # "v":I
    :cond_9
    goto :goto_4

    .line 933
    :sswitch_f
    const/16 p1, 0x22

    goto :goto_4

    .line 941
    :goto_2
    :sswitch_10
    const-string v0, "unexpected EOF in literal"

    if-gez p1, :cond_a

    .line 943
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 944
    return v5

    .line 946
    :cond_a
    const/16 v1, 0x9

    const/16 v2, 0x20

    const/16 v3, 0xa

    if-ne p1, v3, :cond_b

    .line 947
    goto :goto_3

    .line 948
    :cond_b
    const/16 v4, 0xd

    if-ne p1, v4, :cond_d

    .line 950
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v4

    if-ne v4, v3, :cond_c

    .line 951
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    .line 952
    :cond_c
    const/16 p1, 0xa

    .line 953
    goto :goto_3

    .line 955
    :cond_d
    if-eq p1, v2, :cond_10

    if-eq p1, v1, :cond_10

    .line 957
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 958
    nop

    .line 962
    :goto_3
    if-eq p1, v3, :cond_e

    .line 963
    goto :goto_4

    .line 967
    :cond_e
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 968
    if-gez p1, :cond_f

    .line 970
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 971
    return v5

    .line 973
    :cond_f
    if-eq p1, v2, :cond_e

    if-eq p1, v1, :cond_e

    .line 975
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 976
    const/4 v0, -0x2

    return v0

    .line 960
    :cond_10
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    goto :goto_2

    .line 1047
    :goto_4
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_10
        0xa -> :sswitch_10
        0xd -> :sswitch_10
        0x20 -> :sswitch_10
        0x22 -> :sswitch_f
        0x30 -> :sswitch_e
        0x31 -> :sswitch_e
        0x32 -> :sswitch_e
        0x33 -> :sswitch_e
        0x34 -> :sswitch_e
        0x35 -> :sswitch_e
        0x36 -> :sswitch_e
        0x37 -> :sswitch_e
        0x43 -> :sswitch_c
        0x4d -> :sswitch_b
        0x58 -> :sswitch_a
        0x5c -> :sswitch_9
        0x5e -> :sswitch_d
        0x61 -> :sswitch_8
        0x62 -> :sswitch_7
        0x65 -> :sswitch_6
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_3
        0x74 -> :sswitch_2
        0x75 -> :sswitch_1
        0x76 -> :sswitch_0
        0x78 -> :sswitch_a
    .end sparse-switch
.end method

.method public readHexEscape()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1053
    const/4 v0, 0x0

    .line 1057
    .local v0, "c":I
    :goto_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v1

    .line 1058
    .local v1, "d":I
    int-to-char v2, v1

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 1059
    .local v2, "v":I
    if-ltz v2, :cond_0

    .line 1060
    shl-int/lit8 v3, v0, 0x4

    add-int v0, v3, v2

    .line 1071
    .end local v1    # "d":I
    .end local v2    # "v":I
    goto :goto_0

    .line 1063
    .restart local v1    # "d":I
    .restart local v2    # "v":I
    :cond_0
    const/16 v3, 0x3b

    if-eq v1, v3, :cond_1

    .line 1066
    if-ltz v1, :cond_1

    .line 1067
    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 1072
    .end local v1    # "d":I
    .end local v2    # "v":I
    :cond_1
    return v0
.end method

.method public final readNestedComment(CC)V
    .locals 7
    .param p1, "c1"    # C
    .param p2, "c2"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x1

    .line 37
    .local v0, "commentNesting":I
    iget-object v1, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v1

    .line 38
    .local v1, "startLine":I
    iget-object v2, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v2

    .line 41
    .local v2, "startColumn":I
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v3

    .line 42
    .local v3, "c":I
    const/16 v4, 0x7c

    if-ne v3, v4, :cond_1

    .line 44
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v3

    .line 45
    if-ne v3, p1, :cond_2

    .line 46
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 48
    :cond_1
    if-ne v3, p1, :cond_2

    .line 50
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v3

    .line 51
    if-ne v3, p2, :cond_2

    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 54
    :cond_2
    :goto_0
    if-gez v3, :cond_3

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected end-of-file in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " comment starting here"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v4, v5, v6}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;II)V

    .line 59
    return-void

    .line 61
    .end local v3    # "c":I
    :cond_3
    if-gtz v0, :cond_0

    .line 62
    return-void
.end method

.method public readObject()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    check-cast v0, Lgnu/mapping/InPort;

    iget-char v0, v0, Lgnu/mapping/InPort;->readState:C

    .line 367
    .local v0, "saveReadState":C
    iget v1, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 368
    .local v1, "startPos":I
    iget-object v2, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    check-cast v2, Lgnu/mapping/InPort;

    const/16 v3, 0x20

    iput-char v3, v2, Lgnu/mapping/InPort;->readState:C

    .line 371
    :try_start_0
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v2

    .line 374
    .local v2, "rtable":Lgnu/kawa/lispexpr/ReadTable;
    :goto_0
    iget-object v3, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v3

    .line 375
    .local v3, "line":I
    iget-object v4, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v4

    .line 376
    .local v4, "column":I
    iget-object v5, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->read()I

    move-result v5

    .line 377
    .local v5, "ch":I
    if-gez v5, :cond_0

    .line 378
    sget-object v6, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    iput v1, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 388
    iget-object v7, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    check-cast v7, Lgnu/mapping/InPort;

    iput-char v0, v7, Lgnu/mapping/InPort;->readState:C

    return-object v6

    .line 379
    :cond_0
    :try_start_1
    invoke-virtual {p0, v5, v2}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v6

    .line 380
    .local v6, "value":Ljava/lang/Object;
    sget-object v7, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v6, v7, :cond_1

    .line 381
    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {p0, v6, v2, v3, v4}, Lgnu/kawa/lispexpr/LispReader;->handlePostfix(Ljava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;II)Ljava/lang/Object;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    iput v1, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 388
    iget-object v8, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    check-cast v8, Lgnu/mapping/InPort;

    iput-char v0, v8, Lgnu/mapping/InPort;->readState:C

    return-object v7

    .line 387
    .end local v2    # "rtable":Lgnu/kawa/lispexpr/ReadTable;
    .end local v3    # "line":I
    .end local v4    # "column":I
    .end local v5    # "ch":I
    .end local v6    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    iput v1, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 388
    iget-object v3, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    check-cast v3, Lgnu/mapping/InPort;

    iput-char v0, v3, Lgnu/mapping/InPort;->readState:C

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public final readObject(I)Ljava/lang/Object;
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1078
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 1079
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method readToken(ICLgnu/kawa/lispexpr/ReadTable;)V
    .locals 7
    .param p1, "ch"    # I
    .param p2, "readCase"    # C
    .param p3, "rtable"    # Lgnu/kawa/lispexpr/ReadTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "inEscapes":Z
    const/4 v1, 0x0

    .line 273
    .local v1, "braceNesting":I
    :goto_0
    if-gez p1, :cond_0

    .line 275
    if-eqz v0, :cond_4

    .line 276
    const-string v2, "unexpected EOF between escapes"

    invoke-virtual {p0, v2}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 280
    :cond_0
    invoke-virtual {p3, p1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v2

    .line 281
    .local v2, "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    invoke-virtual {v2}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v3

    .line 282
    .local v3, "kind":I
    const v4, 0xffff

    if-nez v3, :cond_3

    .line 284
    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 287
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 288
    goto/16 :goto_3

    .line 290
    :cond_1
    const/16 v4, 0x7d

    if-ne p1, v4, :cond_2

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 292
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 293
    goto/16 :goto_3

    .line 295
    :cond_2
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 296
    goto :goto_1

    .line 298
    :cond_3
    iget-char v5, p3, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-ne p1, v5, :cond_6

    if-nez v0, :cond_6

    .line 300
    iget-object v5, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v5}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v5

    .line 301
    .local v5, "next":I
    iget-char v6, p3, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-ne v5, v6, :cond_5

    .line 303
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 304
    nop

    .line 361
    .end local v2    # "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    .end local v3    # "kind":I
    .end local v5    # "next":I
    :cond_4
    :goto_1
    return-void

    .line 306
    .restart local v2    # "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    .restart local v3    # "kind":I
    .restart local v5    # "next":I
    :cond_5
    invoke-virtual {p0, v5, p3}, Lgnu/kawa/lispexpr/LispReader;->validPostfixLookupStart(ILgnu/kawa/lispexpr/ReadTable;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 307
    const/4 v3, 0x5

    .line 310
    .end local v5    # "next":I
    :cond_6
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v3, v5, :cond_a

    .line 312
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 313
    if-gez p1, :cond_7

    .line 314
    const-string v5, "unexpected EOF after single escape"

    invoke-virtual {p0, v5}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 315
    :cond_7
    iget-boolean v5, p3, Lgnu/kawa/lispexpr/ReadTable;->hexEscapeAfterBackslash:Z

    if-eqz v5, :cond_9

    const/16 v5, 0x78

    if-eq p1, v5, :cond_8

    const/16 v5, 0x58

    if-ne p1, v5, :cond_9

    .line 317
    :cond_8
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readHexEscape()I

    move-result p1

    .line 318
    :cond_9
    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 319
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 320
    iput-boolean v6, p0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    .line 321
    goto :goto_3

    .line 323
    :cond_a
    const/4 v5, 0x4

    if-ne v3, v5, :cond_c

    .line 325
    if-nez v0, :cond_b

    const/4 v4, 0x1

    goto :goto_2

    :cond_b
    const/4 v4, 0x0

    :goto_2
    move v0, v4

    .line 326
    iput-boolean v6, p0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    .line 327
    goto :goto_3

    .line 329
    :cond_c
    if-eqz v0, :cond_d

    .line 332
    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 333
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    goto :goto_3

    .line 338
    :cond_d
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 352
    :pswitch_1
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 353
    return-void

    .line 348
    :pswitch_2
    const/4 v0, 0x1

    .line 349
    iput-boolean v6, p0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    .line 350
    goto :goto_3

    .line 341
    :pswitch_3
    const/16 v4, 0x7b

    if-ne p1, v4, :cond_e

    sget-object v4, Lgnu/kawa/lispexpr/ReadTableEntry;->brace:Lgnu/kawa/lispexpr/ReadTableEntry;

    if-ne v2, v4, :cond_e

    .line 342
    add-int/lit8 v1, v1, 0x1

    .line 345
    :cond_e
    :pswitch_4
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 346
    goto :goto_3

    .line 356
    :pswitch_5
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 357
    return-void

    .line 271
    .end local v2    # "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    .end local v3    # "kind":I
    :goto_3
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public readValues(ILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .locals 1
    .param p1, "ch"    # I
    .param p2, "rtable"    # Lgnu/kawa/lispexpr/ReadTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 94
    invoke-virtual {p2, p1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .locals 4
    .param p1, "ch"    # I
    .param p2, "entry"    # Lgnu/kawa/lispexpr/ReadTableEntry;
    .param p3, "rtable"    # Lgnu/kawa/lispexpr/ReadTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 103
    iget v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 105
    .local v0, "startPos":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    .line 106
    invoke-virtual {p2}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v1

    .line 107
    .local v1, "kind":I
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 127
    :pswitch_0
    invoke-virtual {p0, p1, v0, p3}, Lgnu/kawa/lispexpr/LispReader;->readAndHandleToken(IILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 120
    .local v2, "err":Ljava/lang/String;
    :pswitch_1
    const/4 v3, -0x1

    invoke-virtual {p2, p0, p1, v3}, Lgnu/kawa/lispexpr/ReadTableEntry;->read(Lgnu/text/Lexer;II)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 117
    :pswitch_2
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v3

    .line 111
    .end local v2    # "err":Ljava/lang/String;
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid character #\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2    # "err":Ljava/lang/String;
    iget-boolean v3, p0, Lgnu/kawa/lispexpr/LispReader;->interactive:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lgnu/kawa/lispexpr/LispReader;->fatal(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0, v2}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 114
    :goto_0
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected setCdr(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "pair"    # Ljava/lang/Object;
    .param p2, "cdr"    # Ljava/lang/Object;

    .line 1112
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0, p2}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 1113
    return-void
.end method

.method protected validPostfixLookupStart(ILgnu/kawa/lispexpr/ReadTable;)Z
    .locals 4
    .param p1, "ch"    # I
    .param p2, "rtable"    # Lgnu/kawa/lispexpr/ReadTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    const/4 v0, 0x0

    if-ltz p1, :cond_4

    const/16 v1, 0x3a

    if-eq p1, v1, :cond_4

    iget-char v1, p2, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 397
    :cond_0
    const/16 v1, 0x2c

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 398
    return v2

    .line 399
    :cond_1
    invoke-virtual {p2, p1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v1

    .line 400
    .local v1, "kind":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    .line 396
    .end local v1    # "kind":I
    :cond_4
    :goto_0
    return v0
.end method
