.class public Lgnu/kawa/functions/LispFormat;
.super Lgnu/text/CompoundFormat;
.source "LispFormat.java"


# static fields
.field public static final paramFromCount:Ljava/lang/String; = "<from count>"

.field public static final paramFromList:Ljava/lang/String; = "<from list>"

.field public static final paramUnspecified:Ljava/lang/String; = "<unspecified>"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 463
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, v0}, Lgnu/kawa/functions/LispFormat;-><init>([C)V

    .line 464
    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .param p1, "format"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 514
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lgnu/kawa/functions/LispFormat;-><init>([CII)V

    .line 515
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 22
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lgnu/text/CompoundFormat;-><init>([Ljava/text/Format;I)V

    .line 24
    nop

    .line 25
    nop

    .line 27
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 28
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 30
    add-int v7, p2, p3

    .line 31
    const/4 v8, -0x1

    move/from16 v8, p2

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 34
    :goto_0
    const/16 v11, 0x7e

    if-ge v8, v7, :cond_0

    aget-char v12, v1, v8

    if-ne v12, v11, :cond_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 36
    new-instance v12, Lgnu/text/LiteralFormat;

    invoke-direct {v12, v4}, Lgnu/text/LiteralFormat;-><init>(Ljava/lang/StringBuffer;)V

    invoke-virtual {v6, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 39
    :cond_1
    if-lt v8, v7, :cond_4

    .line 40
    nop

    .line 430
    if-gt v8, v7, :cond_3

    .line 432
    if-gez v9, :cond_2

    .line 436
    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v1

    iput v1, v0, Lgnu/kawa/functions/LispFormat;->length:I

    .line 437
    iget v1, v0, Lgnu/kawa/functions/LispFormat;->length:I

    new-array v1, v1, [Ljava/text/Format;

    iput-object v1, v0, Lgnu/kawa/functions/LispFormat;->formats:[Ljava/text/Format;

    .line 438
    iget-object v1, v0, Lgnu/kawa/functions/LispFormat;->formats:[Ljava/text/Format;

    invoke-virtual {v6, v1}, Ljava/util/Stack;->copyInto([Ljava/lang/Object;)V

    .line 439
    return-void

    .line 434
    :cond_2
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "missing ~] or ~}"

    invoke-direct {v1, v2, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 431
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 41
    :cond_4
    add-int/lit8 v12, v8, 0x1

    aget-char v8, v1, v8

    .line 42
    if-eq v8, v11, :cond_5

    .line 44
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 45
    move v8, v12

    goto :goto_0

    .line 47
    :cond_5
    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v8

    .line 48
    add-int/lit8 v13, v12, 0x1

    aget-char v12, v1, v12

    .line 51
    :goto_1
    const/16 v14, 0x23

    const/16 v15, 0x8

    const/16 v5, 0x2c

    const/16 v11, 0xa

    if-ne v12, v14, :cond_6

    .line 53
    const-string v12, "<from count>"

    invoke-virtual {v6, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v12, v13, 0x1

    aget-char v13, v1, v13

    move/from16 v27, v13

    move v13, v12

    move/from16 v12, v27

    goto/16 :goto_8

    .line 56
    :cond_6
    const/16 v14, 0x76

    if-eq v12, v14, :cond_10

    const/16 v14, 0x56

    if-ne v12, v14, :cond_7

    goto/16 :goto_7

    .line 61
    :cond_7
    const/16 v14, 0x2d

    if-eq v12, v14, :cond_a

    invoke-static {v12, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v16

    if-ltz v16, :cond_8

    goto :goto_2

    .line 79
    :cond_8
    const/16 v14, 0x27

    if-ne v12, v14, :cond_9

    .line 81
    add-int/lit8 v12, v13, 0x1

    aget-char v13, v1, v13

    invoke-static {v13}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    add-int/lit8 v13, v12, 0x1

    aget-char v12, v1, v12

    goto :goto_8

    .line 84
    :cond_9
    if-ne v12, v5, :cond_11

    .line 86
    const-string v14, "<unspecified>"

    invoke-virtual {v6, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 63
    :cond_a
    :goto_2
    if-ne v12, v14, :cond_b

    const/4 v14, 0x1

    goto :goto_3

    :cond_b
    const/4 v14, 0x0

    .line 64
    :goto_3
    if-eqz v14, :cond_c

    .line 65
    add-int/lit8 v12, v13, 0x1

    aget-char v13, v1, v13

    goto :goto_4

    .line 64
    :cond_c
    move/from16 v27, v13

    move v13, v12

    move/from16 v12, v27

    .line 66
    :goto_4
    nop

    .line 67
    move/from16 v16, v12

    const/4 v2, 0x0

    .line 70
    :goto_5
    invoke-static {v13, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v17

    .line 71
    if-gez v17, :cond_f

    .line 72
    nop

    .line 76
    sub-int v3, v16, v12

    if-ge v3, v15, :cond_e

    if-eqz v14, :cond_d

    neg-int v2, v2

    :cond_d
    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    goto :goto_6

    :cond_e
    invoke-static {v1, v12, v3, v11, v14}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object v2

    :goto_6
    invoke-virtual {v6, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move v12, v13

    move/from16 v13, v16

    goto :goto_8

    .line 73
    :cond_f
    mul-int/lit8 v2, v2, 0xa

    add-int v2, v2, v17

    .line 74
    add-int/lit8 v3, v16, 0x1

    aget-char v13, v1, v16

    .line 75
    move/from16 v16, v3

    const/4 v3, 0x0

    goto :goto_5

    .line 58
    :cond_10
    :goto_7
    const-string v2, "<from list>"

    invoke-virtual {v6, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    add-int/lit8 v2, v13, 0x1

    aget-char v3, v1, v13

    move v13, v2

    move v12, v3

    .line 90
    :goto_8
    if-eq v12, v5, :cond_46

    .line 91
    nop

    .line 94
    :cond_11
    nop

    .line 95
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 98
    :goto_9
    const/16 v5, 0x3a

    if-ne v12, v5, :cond_12

    .line 99
    const/4 v3, 0x1

    goto :goto_a

    .line 100
    :cond_12
    const/16 v5, 0x40

    if-ne v12, v5, :cond_13

    .line 101
    const/4 v2, 0x1

    .line 104
    :goto_a
    add-int/lit8 v5, v13, 0x1

    aget-char v12, v1, v13

    move v13, v5

    goto :goto_9

    .line 106
    :cond_13
    invoke-static {v12}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 107
    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v12

    sub-int/2addr v12, v8

    .line 110
    const/high16 v14, -0x60000000

    const/high16 v11, -0x40000000    # -2.0f

    const/4 v15, 0x2

    sparse-switch v5, :sswitch_data_0

    .line 425
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unrecognized format specifier ~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 400
    :sswitch_0
    if-nez v12, :cond_16

    .line 402
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 403
    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1c

    .line 221
    :sswitch_1
    if-ltz v9, :cond_15

    invoke-virtual {v6, v9}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgnu/kawa/functions/LispIterationFormat;

    if-eqz v2, :cond_15

    .line 225
    invoke-virtual {v6, v9}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/kawa/functions/LispIterationFormat;

    .line 226
    iput-boolean v3, v2, Lgnu/kawa/functions/LispIterationFormat;->atLeastOnce:Z

    .line 227
    add-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_14

    .line 228
    invoke-static {v6, v9, v8}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v3

    iput-object v3, v2, Lgnu/kawa/functions/LispIterationFormat;->body:Ljava/text/Format;

    .line 229
    :cond_14
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/math/IntNum;

    invoke-virtual {v2}, Lgnu/math/IntNum;->intValue()I

    move-result v9

    .line 230
    move v8, v13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x64

    goto/16 :goto_0

    .line 224
    :cond_15
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "saw ~} without matching ~{"

    invoke-direct {v1, v2, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 407
    :cond_16
    :sswitch_2
    invoke-static {v6, v8}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v2

    .line 408
    if-ne v2, v11, :cond_17

    .line 409
    const/4 v2, 0x1

    .line 411
    :cond_17
    add-int/lit8 v3, v8, 0x1

    invoke-static {v6, v3}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v3

    .line 412
    if-ne v3, v11, :cond_19

    .line 413
    const/16 v3, 0x7c

    if-ne v5, v3, :cond_18

    const/16 v11, 0xc

    goto :goto_b

    :cond_18
    const/16 v11, 0x7e

    :goto_b
    move v3, v11

    .line 414
    :cond_19
    const/4 v5, 0x0

    invoke-static {v3, v2, v5, v5}, Lgnu/kawa/functions/LispCharacterFormat;->getInstance(IIZZ)Lgnu/kawa/functions/LispCharacterFormat;

    move-result-object v2

    .line 416
    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1a

    .line 211
    :sswitch_3
    new-instance v5, Lgnu/kawa/functions/LispIterationFormat;

    invoke-direct {v5}, Lgnu/kawa/functions/LispIterationFormat;-><init>()V

    .line 212
    iput-boolean v2, v5, Lgnu/kawa/functions/LispIterationFormat;->seenAt:Z

    .line 213
    iput-boolean v3, v5, Lgnu/kawa/functions/LispIterationFormat;->seenColon:Z

    .line 214
    invoke-static {v6, v8}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v2

    iput v2, v5, Lgnu/kawa/functions/LispIterationFormat;->maxIterations:I

    .line 215
    invoke-virtual {v6, v8}, Ljava/util/Stack;->setSize(I)V

    .line 216
    invoke-virtual {v6, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {v9}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    nop

    .line 219
    goto/16 :goto_17

    .line 388
    :sswitch_4
    invoke-static {v6, v8}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v5

    .line 389
    if-ne v5, v11, :cond_1a

    .line 390
    const/4 v5, 0x1

    .line 391
    :cond_1a
    if-eqz v3, :cond_1b

    if-eqz v2, :cond_1b

    .line 393
    :cond_1b
    if-eqz v2, :cond_1c

    if-eqz v3, :cond_1c

    const/16 v15, 0x52

    goto :goto_c

    .line 394
    :cond_1c
    if-eqz v2, :cond_1d

    const/16 v15, 0x4d

    goto :goto_c

    .line 395
    :cond_1d
    if-eqz v3, :cond_1e

    const/16 v15, 0x46

    goto :goto_c

    .line 396
    :cond_1e
    const/16 v15, 0x4e

    .line 397
    :goto_c
    invoke-static {v5, v15}, Lgnu/kawa/functions/LispNewlineFormat;->getInstance(II)Lgnu/kawa/functions/LispNewlineFormat;

    move-result-object v2

    .line 398
    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1a

    .line 347
    :sswitch_5
    invoke-static {v6, v8}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v2

    .line 348
    add-int/lit8 v3, v8, 0x1

    invoke-static {v6, v3}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v3

    .line 349
    add-int/lit8 v5, v8, 0x2

    invoke-static {v6, v5}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v5

    .line 350
    new-instance v11, Lgnu/kawa/functions/LispEscapeFormat;

    invoke-direct {v11, v2, v3, v5}, Lgnu/kawa/functions/LispEscapeFormat;-><init>(III)V

    .line 351
    move-object v2, v11

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1a

    .line 334
    :sswitch_6
    if-ltz v9, :cond_1f

    invoke-virtual {v6, v9}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgnu/kawa/functions/LispChoiceFormat;

    if-eqz v2, :cond_1f

    .line 338
    add-int/lit8 v2, v9, 0x3

    add-int/2addr v10, v2

    invoke-static {v6, v10, v8}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v3

    .line 339
    invoke-virtual {v6, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-virtual {v6, v9}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/kawa/functions/LispChoiceFormat;

    .line 341
    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v5

    invoke-static {v6, v2, v5}, Lgnu/kawa/functions/LispFormat;->getFormats(Ljava/util/Vector;II)[Ljava/text/Format;

    move-result-object v5

    iput-object v5, v3, Lgnu/kawa/functions/LispChoiceFormat;->choices:[Ljava/text/Format;

    .line 342
    invoke-virtual {v6, v2}, Ljava/util/Stack;->setSize(I)V

    .line 343
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/math/IntNum;

    invoke-virtual {v2}, Lgnu/math/IntNum;->intValue()I

    move-result v10

    .line 344
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/math/IntNum;

    invoke-virtual {v2}, Lgnu/math/IntNum;->intValue()I

    move-result v9

    .line 345
    move v8, v13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x64

    goto/16 :goto_0

    .line 337
    :cond_1f
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "saw ~] without matching ~["

    invoke-direct {v1, v2, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 288
    :sswitch_7
    new-instance v5, Lgnu/kawa/functions/LispChoiceFormat;

    invoke-direct {v5}, Lgnu/kawa/functions/LispChoiceFormat;-><init>()V

    .line 289
    invoke-static {v6, v8}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v12

    iput v12, v5, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    .line 290
    iget v12, v5, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    if-ne v12, v11, :cond_20

    .line 291
    iput v14, v5, Lgnu/kawa/functions/LispChoiceFormat;->param:I

    .line 292
    :cond_20
    if-eqz v3, :cond_21

    .line 293
    const/4 v3, 0x1

    iput-boolean v3, v5, Lgnu/kawa/functions/LispChoiceFormat;->testBoolean:Z

    goto :goto_d

    .line 292
    :cond_21
    const/4 v3, 0x1

    .line 294
    :goto_d
    if-eqz v2, :cond_22

    .line 295
    iput-boolean v3, v5, Lgnu/kawa/functions/LispChoiceFormat;->skipIfFalse:Z

    .line 296
    :cond_22
    invoke-virtual {v6, v8}, Ljava/util/Stack;->setSize(I)V

    .line 297
    invoke-virtual {v6, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-static {v9}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static {v10}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    nop

    .line 301
    nop

    .line 302
    move v9, v8

    move v8, v13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x64

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 372
    :sswitch_8
    invoke-static {v6, v8}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v3

    .line 373
    add-int/lit8 v5, v8, 0x1

    invoke-static {v6, v5}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v5

    .line 374
    add-int/lit8 v11, v8, 0x2

    invoke-static {v6, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v11

    .line 375
    new-instance v12, Lgnu/kawa/functions/LispTabulateFormat;

    invoke-direct {v12, v3, v5, v11, v2}, Lgnu/kawa/functions/LispTabulateFormat;-><init>(IIIZ)V

    .line 376
    move-object v2, v12

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1a

    .line 133
    :sswitch_9
    invoke-static {v3, v2}, Lgnu/kawa/functions/LispPluralFormat;->getInstance(ZZ)Lgnu/kawa/functions/LispPluralFormat;

    move-result-object v2

    .line 134
    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1a

    .line 382
    :sswitch_a
    invoke-static {v6, v8}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v2

    .line 383
    if-ne v2, v11, :cond_23

    .line 384
    const/4 v2, 0x0

    .line 385
    :cond_23
    invoke-static {v2, v3}, Lgnu/kawa/functions/LispIndentFormat;->getInstance(IZ)Lgnu/kawa/functions/LispIndentFormat;

    move-result-object v2

    .line 386
    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1a

    .line 177
    :sswitch_b
    if-lez v12, :cond_24

    invoke-static {v6, v8}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v14

    .line 179
    :cond_24
    const/4 v5, 0x1

    invoke-static {v14, v5, v2, v3}, Lgnu/kawa/functions/LispCharacterFormat;->getInstance(IIZZ)Lgnu/kawa/functions/LispCharacterFormat;

    move-result-object v2

    .line 181
    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1a

    .line 113
    :sswitch_c
    nop

    .line 115
    const/16 v11, 0x52

    if-ne v5, v11, :cond_25

    add-int/lit8 v5, v8, 0x1

    invoke-static {v6, v8}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v15

    move/from16 v21, v15

    goto :goto_e

    .line 116
    :cond_25
    const/16 v11, 0x44

    if-ne v5, v11, :cond_26

    move v5, v8

    const/16 v21, 0xa

    goto :goto_e

    .line 117
    :cond_26
    const/16 v11, 0x4f

    if-ne v5, v11, :cond_27

    move v5, v8

    const/16 v21, 0x8

    goto :goto_e

    .line 118
    :cond_27
    const/16 v11, 0x58

    if-ne v5, v11, :cond_28

    const/16 v15, 0x10

    move v5, v8

    const/16 v21, 0x10

    goto :goto_e

    .line 119
    :cond_28
    move v5, v8

    const/16 v21, 0x2

    .line 120
    :goto_e
    invoke-static {v6, v5}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v22

    .line 121
    add-int/lit8 v11, v5, 0x1

    invoke-static {v6, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v23

    .line 122
    add-int/lit8 v11, v5, 0x2

    invoke-static {v6, v11}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v24

    .line 123
    const/4 v11, 0x3

    add-int/2addr v5, v11

    invoke-static {v6, v5}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v25

    .line 124
    nop

    .line 125
    if-eqz v3, :cond_29

    .line 126
    const/4 v3, 0x1

    goto :goto_f

    .line 125
    :cond_29
    const/4 v3, 0x0

    .line 127
    :goto_f
    if-eqz v2, :cond_2a

    .line 128
    or-int/lit8 v2, v3, 0x2

    move/from16 v26, v2

    goto :goto_10

    .line 127
    :cond_2a
    move/from16 v26, v3

    .line 129
    :goto_10
    invoke-static/range {v21 .. v26}, Lgnu/kawa/functions/IntegerFormat;->getInstance(IIIIII)Ljava/text/Format;

    move-result-object v2

    .line 131
    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1a

    .line 164
    :sswitch_d
    const/16 v3, 0x41

    if-eq v5, v3, :cond_2b

    const/4 v3, 0x1

    goto :goto_11

    :cond_2b
    const/4 v3, 0x0

    :goto_11
    invoke-static {v3}, Lgnu/kawa/functions/ObjectFormat;->getInstance(Z)Lgnu/kawa/functions/ObjectFormat;

    move-result-object v3

    .line 165
    if-lez v12, :cond_2d

    .line 167
    invoke-static {v6, v8}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v20

    .line 168
    add-int/lit8 v5, v8, 0x1

    invoke-static {v6, v5}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v21

    .line 169
    add-int/lit8 v5, v8, 0x2

    invoke-static {v6, v5}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v22

    .line 170
    add-int/lit8 v5, v8, 0x3

    invoke-static {v6, v5}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v23

    .line 171
    new-instance v5, Lgnu/kawa/functions/LispObjectFormat;

    move-object/from16 v19, v3

    check-cast v19, Lgnu/text/ReportFormat;

    if-eqz v2, :cond_2c

    const/16 v24, 0x0

    goto :goto_12

    :cond_2c
    const/16 v24, 0x64

    :goto_12
    move-object/from16 v18, v5

    invoke-direct/range {v18 .. v24}, Lgnu/kawa/functions/LispObjectFormat;-><init>(Lgnu/text/ReportFormat;IIIII)V

    .line 174
    move-object v2, v5

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1a

    .line 165
    :cond_2d
    move-object v2, v3

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1a

    .line 204
    :sswitch_e
    new-instance v3, Lgnu/kawa/functions/LispIterationFormat;

    invoke-direct {v3}, Lgnu/kawa/functions/LispIterationFormat;-><init>()V

    .line 205
    iput-boolean v2, v3, Lgnu/kawa/functions/LispIterationFormat;->seenAt:Z

    .line 206
    const/4 v2, 0x1

    iput v2, v3, Lgnu/kawa/functions/LispIterationFormat;->maxIterations:I

    .line 207
    iput-boolean v2, v3, Lgnu/kawa/functions/LispIterationFormat;->atLeastOnce:Z

    .line 208
    nop

    .line 209
    move-object v2, v3

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1a

    .line 252
    :sswitch_f
    if-ltz v9, :cond_34

    invoke-virtual {v6, v9}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgnu/kawa/functions/LispPrettyFormat;

    if-eqz v2, :cond_34

    .line 256
    add-int/lit8 v2, v9, 0x3

    add-int v5, v2, v10

    invoke-static {v6, v5, v8}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v5

    .line 257
    invoke-virtual {v6, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-virtual {v6, v9}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/kawa/functions/LispPrettyFormat;

    .line 259
    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v8

    invoke-static {v6, v2, v8}, Lgnu/kawa/functions/LispFormat;->getFormats(Ljava/util/Vector;II)[Ljava/text/Format;

    move-result-object v8

    iput-object v8, v5, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    .line 260
    invoke-virtual {v6, v2}, Ljava/util/Stack;->setSize(I)V

    .line 261
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/math/IntNum;

    invoke-virtual {v2}, Lgnu/math/IntNum;->intValue()I

    .line 262
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/math/IntNum;

    invoke-virtual {v2}, Lgnu/math/IntNum;->intValue()I

    move-result v9

    .line 263
    if-eqz v3, :cond_33

    .line 265
    iget-object v2, v5, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    array-length v2, v2

    .line 266
    const/4 v3, 0x3

    if-gt v2, v3, :cond_32

    .line 268
    if-lt v2, v15, :cond_2f

    .line 270
    iget-object v3, v5, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    const/4 v8, 0x0

    aget-object v3, v3, v8

    instance-of v3, v3, Lgnu/text/LiteralFormat;

    if-eqz v3, :cond_2e

    .line 272
    iget-object v3, v5, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    aget-object v3, v3, v8

    check-cast v3, Lgnu/text/LiteralFormat;

    invoke-virtual {v3}, Lgnu/text/LiteralFormat;->content()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    .line 273
    iget-object v3, v5, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    const/4 v8, 0x1

    aget-object v3, v3, v8

    iput-object v3, v5, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    goto :goto_13

    .line 271
    :cond_2e
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "prefix segment is not literal"

    invoke-direct {v1, v2, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 276
    :cond_2f
    iget-object v3, v5, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    const/4 v8, 0x0

    aget-object v3, v3, v8

    iput-object v3, v5, Lgnu/kawa/functions/LispPrettyFormat;->body:Ljava/text/Format;

    .line 277
    :goto_13
    const/4 v3, 0x3

    if-lt v2, v3, :cond_31

    .line 279
    iget-object v2, v5, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    aget-object v2, v2, v15

    instance-of v2, v2, Lgnu/text/LiteralFormat;

    if-eqz v2, :cond_30

    .line 281
    iget-object v2, v5, Lgnu/kawa/functions/LispPrettyFormat;->segments:[Ljava/text/Format;

    aget-object v2, v2, v15

    check-cast v2, Lgnu/text/LiteralFormat;

    invoke-virtual {v2}, Lgnu/text/LiteralFormat;->content()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    goto :goto_14

    .line 280
    :cond_30
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "suffix segment is not literal"

    invoke-direct {v1, v2, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 283
    :cond_31
    :goto_14
    move v8, v13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x64

    goto/16 :goto_0

    .line 267
    :cond_32
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "too many segments in Logical Block format"

    invoke-direct {v1, v2, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 285
    :cond_33
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "not implemented: justfication i.e. ~<...~>"

    invoke-direct {v1, v2, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 255
    :cond_34
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "saw ~> without matching ~<"

    invoke-direct {v1, v2, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 232
    :sswitch_10
    new-instance v5, Lgnu/kawa/functions/LispPrettyFormat;

    invoke-direct {v5}, Lgnu/kawa/functions/LispPrettyFormat;-><init>()V

    .line 233
    iput-boolean v2, v5, Lgnu/kawa/functions/LispPrettyFormat;->seenAt:Z

    .line 234
    if-eqz v3, :cond_35

    .line 236
    const-string v2, "("

    iput-object v2, v5, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    .line 237
    const-string v2, ")"

    iput-object v2, v5, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    goto :goto_15

    .line 241
    :cond_35
    const-string v2, ""

    iput-object v2, v5, Lgnu/kawa/functions/LispPrettyFormat;->prefix:Ljava/lang/String;

    .line 242
    iput-object v2, v5, Lgnu/kawa/functions/LispPrettyFormat;->suffix:Ljava/lang/String;

    .line 244
    :goto_15
    invoke-virtual {v6, v8}, Ljava/util/Stack;->setSize(I)V

    .line 245
    invoke-virtual {v6, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-static {v9}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static {v10}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    nop

    .line 249
    nop

    .line 250
    move v9, v8

    move v8, v13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x64

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 304
    :sswitch_11
    if-ltz v9, :cond_39

    .line 306
    invoke-virtual {v6, v9}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lgnu/kawa/functions/LispChoiceFormat;

    if-eqz v5, :cond_37

    .line 309
    invoke-virtual {v6, v9}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/kawa/functions/LispChoiceFormat;

    .line 310
    if-eqz v3, :cond_36

    .line 311
    const/4 v3, 0x1

    iput-boolean v3, v2, Lgnu/kawa/functions/LispChoiceFormat;->lastIsDefault:Z

    .line 312
    :cond_36
    add-int/lit8 v2, v9, 0x3

    add-int/2addr v2, v10

    invoke-static {v6, v2, v8}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v2

    .line 314
    invoke-virtual {v6, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    add-int/lit8 v10, v10, 0x1

    .line 316
    move v8, v13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x64

    goto/16 :goto_0

    .line 318
    :cond_37
    invoke-virtual {v6, v9}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/kawa/functions/LispPrettyFormat;

    if-eqz v3, :cond_39

    .line 321
    invoke-virtual {v6, v9}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/kawa/functions/LispPrettyFormat;

    .line 322
    if-eqz v2, :cond_38

    .line 323
    const/4 v2, 0x1

    iput-boolean v2, v3, Lgnu/kawa/functions/LispPrettyFormat;->perLine:Z

    .line 324
    :cond_38
    add-int/lit8 v2, v9, 0x3

    add-int/2addr v2, v10

    invoke-static {v6, v2, v8}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v2

    .line 326
    invoke-virtual {v6, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    add-int/lit8 v10, v10, 0x1

    .line 328
    move v8, v13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x64

    goto/16 :goto_0

    .line 332
    :cond_39
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "saw ~; without matching ~[ or ~<"

    invoke-direct {v1, v2, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 183
    :sswitch_12
    new-instance v5, Lgnu/kawa/functions/LispRepositionFormat;

    invoke-static {v6, v8}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v11

    invoke-direct {v5, v11, v3, v2}, Lgnu/kawa/functions/LispRepositionFormat;-><init>(IZZ)V

    .line 185
    move-object v2, v5

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1a

    .line 195
    :sswitch_13
    if-ltz v9, :cond_3a

    invoke-virtual {v6, v9}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgnu/text/CaseConvertFormat;

    if-eqz v2, :cond_3a

    .line 199
    invoke-virtual {v6, v9}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/text/CaseConvertFormat;

    .line 200
    add-int/lit8 v9, v9, 0x2

    invoke-static {v6, v9, v8}, Lgnu/kawa/functions/LispFormat;->popFormats(Ljava/util/Vector;II)Ljava/text/Format;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/text/CaseConvertFormat;->setBaseFormat(Ljava/text/Format;)V

    .line 201
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/math/IntNum;

    invoke-virtual {v2}, Lgnu/math/IntNum;->intValue()I

    move-result v9

    .line 202
    move v8, v13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x64

    goto/16 :goto_0

    .line 198
    :cond_3a
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "saw ~) without matching ~("

    invoke-direct {v1, v2, v13}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 187
    :sswitch_14
    if-eqz v3, :cond_3c

    if-eqz v2, :cond_3b

    const/16 v11, 0x55

    goto :goto_16

    :cond_3b
    const/16 v11, 0x43

    goto :goto_16

    :cond_3c
    if-eqz v2, :cond_3d

    const/16 v11, 0x54

    goto :goto_16

    :cond_3d
    const/16 v11, 0x4c

    .line 188
    :goto_16
    new-instance v2, Lgnu/text/CaseConvertFormat;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v11}, Lgnu/text/CaseConvertFormat;-><init>(Ljava/text/Format;C)V

    .line 189
    invoke-virtual {v6, v8}, Ljava/util/Stack;->setSize(I)V

    .line 190
    invoke-virtual {v6, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-static {v9}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    nop

    .line 193
    nop

    .line 34
    :goto_17
    move v9, v8

    move v8, v13

    const/4 v2, 0x0

    :goto_18
    const/4 v3, 0x0

    const/16 v5, 0x64

    goto/16 :goto_0

    .line 378
    :sswitch_15
    invoke-static {v6, v8}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v2

    .line 379
    new-instance v3, Lgnu/kawa/functions/LispFreshlineFormat;

    invoke-direct {v3, v2}, Lgnu/kawa/functions/LispFreshlineFormat;-><init>(I)V

    .line 380
    move-object v2, v3

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_1a

    .line 418
    :sswitch_16
    const/4 v2, 0x1

    invoke-static {v6, v8}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v3

    .line 419
    if-ne v3, v11, :cond_3e

    .line 420
    goto :goto_19

    .line 419
    :cond_3e
    move v2, v3

    .line 421
    :goto_19
    const/16 v3, 0x4c

    invoke-static {v2, v3}, Lgnu/kawa/functions/LispNewlineFormat;->getInstance(II)Lgnu/kawa/functions/LispNewlineFormat;

    move-result-object v2

    .line 423
    const/4 v12, 0x0

    const/4 v14, 0x0

    goto :goto_1a

    .line 139
    :sswitch_17
    new-instance v11, Lgnu/kawa/functions/LispRealFormat;

    invoke-direct {v11}, Lgnu/kawa/functions/LispRealFormat;-><init>()V

    .line 140
    iput-char v5, v11, Lgnu/kawa/functions/LispRealFormat;->op:C

    .line 141
    invoke-static {v6, v8}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v12

    iput v12, v11, Lgnu/kawa/functions/LispRealFormat;->arg1:I

    .line 142
    add-int/lit8 v12, v8, 0x1

    invoke-static {v6, v12}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v12

    iput v12, v11, Lgnu/kawa/functions/LispRealFormat;->arg2:I

    .line 143
    add-int/lit8 v12, v8, 0x2

    invoke-static {v6, v12}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v12

    iput v12, v11, Lgnu/kawa/functions/LispRealFormat;->arg3:I

    .line 144
    add-int/lit8 v12, v8, 0x3

    invoke-static {v6, v12}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v12

    iput v12, v11, Lgnu/kawa/functions/LispRealFormat;->arg4:I

    .line 145
    const/16 v12, 0x24

    if-eq v5, v12, :cond_40

    .line 147
    add-int/lit8 v12, v8, 0x4

    invoke-static {v6, v12}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v12

    iput v12, v11, Lgnu/kawa/functions/LispRealFormat;->arg5:I

    .line 148
    const/16 v12, 0x45

    if-eq v5, v12, :cond_3f

    const/16 v12, 0x47

    if-ne v5, v12, :cond_40

    .line 150
    :cond_3f
    add-int/lit8 v5, v8, 0x5

    invoke-static {v6, v5}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v5

    iput v5, v11, Lgnu/kawa/functions/LispRealFormat;->arg6:I

    .line 151
    add-int/lit8 v5, v8, 0x6

    invoke-static {v6, v5}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/util/Vector;I)I

    move-result v5

    iput v5, v11, Lgnu/kawa/functions/LispRealFormat;->arg7:I

    .line 154
    :cond_40
    iput-boolean v2, v11, Lgnu/kawa/functions/LispRealFormat;->showPlus:Z

    .line 155
    iput-boolean v3, v11, Lgnu/kawa/functions/LispRealFormat;->internalPad:Z

    .line 156
    iget v2, v11, Lgnu/kawa/functions/LispRealFormat;->argsUsed:I

    if-nez v2, :cond_41

    .line 157
    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v14}, Lgnu/kawa/functions/LispRealFormat;->resolve([Ljava/lang/Object;I)Ljava/text/Format;

    move-result-object v2

    goto :goto_1a

    .line 159
    :cond_41
    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 160
    move-object v2, v11

    goto :goto_1a

    .line 369
    :sswitch_18
    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static {}, Lgnu/text/FlushFormat;->getInstance()Lgnu/text/FlushFormat;

    move-result-object v2

    .line 370
    nop

    .line 427
    :goto_1a
    invoke-virtual {v6, v8}, Ljava/util/Stack;->setSize(I)V

    .line 428
    invoke-virtual {v6, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    goto :goto_1c

    .line 353
    :sswitch_19
    const/4 v12, 0x0

    const/4 v14, 0x0

    if-eqz v2, :cond_42

    .line 354
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 355
    :cond_42
    if-nez v3, :cond_45

    move v8, v13

    .line 357
    :goto_1b
    if-ge v8, v7, :cond_44

    .line 359
    add-int/lit8 v2, v8, 0x1

    aget-char v3, v1, v8

    .line 360
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_43

    .line 362
    add-int/lit8 v8, v2, -0x1

    .line 363
    move-object v2, v12

    const/4 v3, 0x0

    const/16 v5, 0x64

    goto/16 :goto_0

    .line 360
    :cond_43
    move v8, v2

    goto :goto_1b

    .line 357
    :cond_44
    move-object v2, v12

    const/4 v3, 0x0

    const/16 v5, 0x64

    goto/16 :goto_0

    .line 34
    :cond_45
    :goto_1c
    move-object v2, v12

    move v8, v13

    goto/16 :goto_18

    .line 92
    :cond_46
    const/4 v12, 0x0

    const/4 v14, 0x0

    add-int/lit8 v2, v13, 0x1

    aget-char v3, v1, v13

    move v13, v2

    move-object v2, v12

    const/16 v5, 0x64

    const/16 v11, 0x7e

    move v12, v3

    const/4 v3, 0x0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_19
        0x21 -> :sswitch_18
        0x24 -> :sswitch_17
        0x25 -> :sswitch_16
        0x26 -> :sswitch_15
        0x28 -> :sswitch_14
        0x29 -> :sswitch_13
        0x2a -> :sswitch_12
        0x3b -> :sswitch_11
        0x3c -> :sswitch_10
        0x3e -> :sswitch_f
        0x3f -> :sswitch_e
        0x41 -> :sswitch_d
        0x42 -> :sswitch_c
        0x43 -> :sswitch_b
        0x44 -> :sswitch_c
        0x45 -> :sswitch_17
        0x46 -> :sswitch_17
        0x47 -> :sswitch_17
        0x49 -> :sswitch_a
        0x4f -> :sswitch_c
        0x50 -> :sswitch_9
        0x52 -> :sswitch_c
        0x53 -> :sswitch_d
        0x54 -> :sswitch_8
        0x57 -> :sswitch_d
        0x58 -> :sswitch_c
        0x59 -> :sswitch_d
        0x5b -> :sswitch_7
        0x5d -> :sswitch_6
        0x5e -> :sswitch_5
        0x5f -> :sswitch_4
        0x7b -> :sswitch_3
        0x7c -> :sswitch_2
        0x7d -> :sswitch_1
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method public static asArray(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .param p0, "arg"    # Ljava/lang/Object;

    .line 535
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 536
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0

    .line 537
    :cond_0
    instance-of v0, p0, Lgnu/lists/Sequence;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 538
    return-object v1

    .line 539
    :cond_1
    move-object v0, p0

    check-cast v0, Lgnu/lists/Sequence;

    invoke-interface {v0}, Lgnu/lists/Sequence;->size()I

    move-result v0

    .line 540
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/Object;

    .line 541
    .local v2, "arr":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 542
    .local v3, "i":I
    :goto_0
    instance-of v4, p0, Lgnu/lists/Pair;

    if-eqz v4, :cond_2

    .line 544
    move-object v4, p0

    check-cast v4, Lgnu/lists/Pair;

    .line 545
    .local v4, "pair":Lgnu/lists/Pair;
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v3

    .line 546
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    .line 547
    .end local v4    # "pair":Lgnu/lists/Pair;
    move v3, v5

    goto :goto_0

    .line 548
    .end local v5    # "i":I
    .restart local v3    # "i":I
    :cond_2
    if-ge v3, v0, :cond_4

    .line 550
    instance-of v4, p0, Lgnu/lists/Sequence;

    if-nez v4, :cond_3

    .line 551
    return-object v1

    .line 552
    :cond_3
    move v1, v3

    .line 553
    .local v1, "npairs":I
    move-object v4, p0

    check-cast v4, Lgnu/lists/Sequence;

    .line 554
    .local v4, "seq":Lgnu/lists/Sequence;
    :goto_1
    if-ge v3, v0, :cond_4

    .line 555
    add-int v5, v1, v3

    invoke-interface {v4, v5}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v3

    .line 554
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 557
    .end local v1    # "npairs":I
    .end local v4    # "seq":Lgnu/lists/Sequence;
    :cond_4
    return-object v2
.end method

.method static getFormats(Ljava/util/Vector;II)[Ljava/text/Format;
    .locals 4
    .param p0, "vector"    # Ljava/util/Vector;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 443
    sub-int v0, p2, p1

    new-array v0, v0, [Ljava/text/Format;

    .line 444
    .local v0, "f":[Ljava/text/Format;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 445
    sub-int v2, v1, p1

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/Format;

    aput-object v3, v0, v2

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getParam(Ljava/util/Vector;I)I
    .locals 3
    .param p0, "vec"    # Ljava/util/Vector;
    .param p1, "index"    # I

    .line 519
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    if-lt p1, v0, :cond_0

    .line 520
    return v1

    .line 521
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 522
    .local v0, "arg":Ljava/lang/Object;
    const-string v2, "<from list>"

    if-ne v0, v2, :cond_1

    .line 523
    const/high16 v1, -0x60000000

    return v1

    .line 524
    :cond_1
    const-string v2, "<from count>"

    if-ne v0, v2, :cond_2

    .line 525
    const/high16 v1, -0x50000000

    return v1

    .line 526
    :cond_2
    const-string v2, "<unspecified>"

    if-ne v0, v2, :cond_3

    .line 527
    return v1

    .line 528
    :cond_3
    invoke-static {v0, v1}, Lgnu/kawa/functions/LispFormat;->getParam(Ljava/lang/Object;I)I

    move-result v1

    return v1
.end method

.method static popFormats(Ljava/util/Vector;II)Ljava/text/Format;
    .locals 2
    .param p0, "vector"    # Ljava/util/Vector;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 452
    add-int/lit8 v0, p1, 0x1

    if-ne p2, v0, :cond_0

    .line 453
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Format;

    .local v0, "f":Ljava/text/Format;
    goto :goto_0

    .line 455
    .end local v0    # "f":Ljava/text/Format;
    :cond_0
    new-instance v0, Lgnu/text/CompoundFormat;

    invoke-static {p0, p1, p2}, Lgnu/kawa/functions/LispFormat;->getFormats(Ljava/util/Vector;II)[Ljava/text/Format;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/text/CompoundFormat;-><init>([Ljava/text/Format;)V

    .line 456
    .restart local v0    # "f":Ljava/text/Format;
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/Vector;->setSize(I)V

    .line 457
    return-object v0
.end method
