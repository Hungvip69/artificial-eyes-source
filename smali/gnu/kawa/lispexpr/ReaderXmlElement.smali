.class public Lgnu/kawa/lispexpr/ReaderXmlElement;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderXmlElement.java"


# static fields
.field static final DEFAULT_ELEMENT_NAMESPACE:Ljava/lang/String; = "[default-element-namespace]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method

.method public static namedEntity(Lgnu/kawa/lispexpr/LispReader;Ljava/lang/String;)V
    .locals 3
    .param p0, "reader"    # Lgnu/kawa/lispexpr/LispReader;
    .param p1, "name"    # Ljava/lang/String;

    .line 543
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 544
    const/16 v0, 0x3f

    .line 545
    .local v0, "ch":C
    const-string v1, "lt"

    if-ne p1, v1, :cond_0

    .line 546
    const/16 v0, 0x3c

    goto :goto_0

    .line 547
    :cond_0
    const-string v1, "gt"

    if-ne p1, v1, :cond_1

    .line 548
    const/16 v0, 0x3e

    goto :goto_0

    .line 549
    :cond_1
    const-string v1, "amp"

    if-ne p1, v1, :cond_2

    .line 550
    const/16 v0, 0x26

    goto :goto_0

    .line 551
    :cond_2
    const-string v1, "quot"

    if-ne p1, v1, :cond_3

    .line 552
    const/16 v0, 0x22

    goto :goto_0

    .line 553
    :cond_3
    const-string v1, "apos"

    if-ne p1, v1, :cond_4

    .line 554
    const/16 v0, 0x27

    goto :goto_0

    .line 556
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown enity reference: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 557
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 558
    return-void
.end method

.method public static quote(Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 24
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "quote"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 25
    .local v0, "q":Lgnu/mapping/Symbol;
    invoke-static {v0, p0}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    return-object v1
.end method

.method static readCharRef(Lgnu/kawa/lispexpr/LispReader;)V
    .locals 6
    .param p0, "reader"    # Lgnu/kawa/lispexpr/LispReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 469
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 470
    .local v0, "next":I
    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    .line 472
    const/16 v1, 0x10

    .line 473
    .local v1, "base":I
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    goto :goto_0

    .line 476
    .end local v1    # "base":I
    :cond_0
    const/16 v1, 0xa

    .line 477
    .restart local v1    # "base":I
    :goto_0
    const/4 v2, 0x0

    .line 478
    .local v2, "value":I
    :goto_1
    if-ltz v0, :cond_3

    .line 480
    int-to-char v3, v0

    .line 481
    .local v3, "ch":C
    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 482
    .local v4, "digit":I
    if-gez v4, :cond_1

    .line 483
    goto :goto_2

    .line 484
    :cond_1
    const/high16 v5, 0x8000000

    if-lt v2, v5, :cond_2

    .line 485
    goto :goto_2

    .line 486
    :cond_2
    mul-int v2, v2, v1

    .line 487
    add-int/2addr v2, v4

    .line 488
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 489
    .end local v3    # "ch":C
    .end local v4    # "digit":I
    goto :goto_1

    .line 490
    :cond_3
    :goto_2
    const/16 v3, 0x3b

    if-eq v0, v3, :cond_4

    .line 492
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 493
    const-string v3, "invalid character reference"

    invoke-virtual {p0, v3}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 496
    :cond_4
    if-lez v2, :cond_5

    const v3, 0xd7ff

    if-le v2, v3, :cond_7

    :cond_5
    const v3, 0xe000

    if-lt v2, v3, :cond_6

    const v3, 0xfffd

    if-le v2, v3, :cond_7

    :cond_6
    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_8

    const v3, 0x10ffff

    if-gt v2, v3, :cond_8

    .line 500
    :cond_7
    invoke-virtual {p0, v2}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    goto :goto_3

    .line 503
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid character value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 504
    :goto_3
    return-void
.end method

.method public static readContent(Lgnu/kawa/lispexpr/LispReader;CLgnu/lists/Pair;)Lgnu/lists/Pair;
    .locals 11
    .param p0, "reader"    # Lgnu/kawa/lispexpr/LispReader;
    .param p1, "delimiter"    # C
    .param p2, "resultTail"    # Lgnu/lists/Pair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 371
    const/4 v1, 0x0

    .line 374
    .local v1, "prevWasEnclosed":Z
    :goto_0
    const/4 v2, 0x0

    .line 375
    .local v2, "item":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 376
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 377
    .local v4, "line":I
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v6

    .line 378
    .local v6, "column":I
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v7

    .line 379
    .local v7, "next":I
    if-gez v7, :cond_0

    .line 381
    const-string v5, "unexpected end-of-file"

    invoke-virtual {p0, v5}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 382
    sget-object v2, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    goto/16 :goto_4

    .line 384
    :cond_0
    const/16 v8, 0x3c

    if-ne v7, p1, :cond_5

    .line 386
    if-ne p1, v8, :cond_3

    .line 388
    iget v8, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    if-lez v8, :cond_1

    .line 390
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v3

    .line 391
    iput v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 393
    :cond_1
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v7

    .line 394
    const/16 v8, 0x2f

    if-ne v7, v8, :cond_2

    .line 395
    sget-object v2, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    goto :goto_1

    .line 397
    :cond_2
    invoke-static {p0, v7, v5}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readXMLConstructor(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 399
    :cond_3
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->checkNext(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 401
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    goto :goto_1

    .line 404
    :cond_4
    sget-object v2, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    .line 405
    :goto_1
    const/4 v1, 0x0

    goto :goto_4

    .line 407
    :cond_5
    const/16 v5, 0x26

    if-ne v7, v5, :cond_c

    .line 409
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v7

    .line 410
    const/16 v5, 0x23

    if-ne v7, v5, :cond_6

    .line 411
    invoke-static {p0}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readCharRef(Lgnu/kawa/lispexpr/LispReader;)V

    goto :goto_3

    .line 412
    :cond_6
    const/16 v5, 0x28

    if-eq v7, v5, :cond_8

    const/16 v5, 0x7b

    if-ne v7, v5, :cond_7

    goto :goto_2

    .line 421
    :cond_7
    invoke-static {p0, v7}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readEntity(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v2

    .line 422
    if-eqz v1, :cond_b

    iget v5, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    if-nez v5, :cond_b

    .line 423
    const-string v3, ""

    goto :goto_3

    .line 414
    :cond_8
    :goto_2
    iget v5, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    if-gtz v5, :cond_9

    if-eqz v1, :cond_a

    .line 415
    :cond_9
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v3

    .line 416
    :cond_a
    iput v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 417
    invoke-static {p0, v7}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readEscapedExpression(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v2

    .line 425
    :cond_b
    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    .line 429
    :cond_c
    if-eq p1, v8, :cond_e

    const/16 v5, 0x9

    if-eq v7, v5, :cond_d

    const/16 v5, 0xa

    if-eq v7, v5, :cond_d

    const/16 v5, 0xd

    if-ne v7, v5, :cond_e

    .line 431
    :cond_d
    const/16 v5, 0x20

    move v7, v5

    .line 432
    :cond_e
    if-ne v7, v8, :cond_f

    .line 433
    const/16 v5, 0x65

    const-string v8, "\'<\' must be quoted in a direct attribute value"

    invoke-virtual {p0, v5, v8}, Lgnu/kawa/lispexpr/LispReader;->error(CLjava/lang/String;)V

    .line 434
    :cond_f
    int-to-char v5, v7

    invoke-virtual {p0, v5}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 436
    :goto_4
    if-eqz v2, :cond_10

    iget v5, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    if-lez v5, :cond_10

    .line 438
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v3

    .line 439
    iput v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 441
    :cond_10
    const/4 v5, 0x0

    if-eqz v3, :cond_11

    .line 445
    sget-object v8, Lgnu/kawa/xml/MakeText;->makeText:Lgnu/kawa/xml/MakeText;

    invoke-static {v8, v3}, Lgnu/lists/Pair;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    .line 446
    .local v8, "tnode":Lgnu/lists/Pair;
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v9

    const/4 v10, -0x1

    invoke-static {v8, v9, v5, v10, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v9

    .line 448
    .local v9, "pair":Lgnu/lists/Pair;
    invoke-virtual {p2, v9}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 449
    move-object p2, v9

    .line 451
    .end local v8    # "tnode":Lgnu/lists/Pair;
    .end local v9    # "pair":Lgnu/lists/Pair;
    :cond_11
    sget-object v8, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    if-ne v2, v8, :cond_12

    .line 452
    nop

    .line 461
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "line":I
    .end local v6    # "column":I
    .end local v7    # "next":I
    return-object p2

    .line 453
    .restart local v2    # "item":Ljava/lang/Object;
    .restart local v3    # "text":Ljava/lang/String;
    .restart local v4    # "line":I
    .restart local v6    # "column":I
    .restart local v7    # "next":I
    :cond_12
    if-eqz v2, :cond_13

    .line 455
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v8, v5, v4, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v5

    .line 457
    .local v5, "pair":Lgnu/lists/Pair;
    invoke-virtual {p2, v5}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 458
    move-object p2, v5

    .line 460
    .end local v2    # "item":Ljava/lang/Object;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "line":I
    .end local v5    # "pair":Lgnu/lists/Pair;
    .end local v6    # "column":I
    .end local v7    # "next":I
    :cond_13
    goto/16 :goto_0
.end method

.method public static readElementConstructor(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;
    .locals 23
    .param p0, "reader"    # Lgnu/kawa/lispexpr/LispReader;
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 238
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v0

    const/4 v1, 0x1

    add-int/lit8 v7, v0, 0x1

    .line 239
    .local v7, "startLine":I
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v0

    const/4 v2, 0x2

    add-int/lit8 v8, v0, -0x2

    .line 240
    .local v8, "startColumn":I
    move/from16 v0, p1

    invoke-static {v6, v0, v1}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readQNameExpression(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;

    move-result-object v9

    .line 244
    .local v9, "tag":Ljava/lang/Object;
    iget v3, v6, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v10, v3

    .line 246
    .local v10, "startTag":Ljava/lang/String;
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v3, v5, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v11

    .line 249
    .local v11, "tagPair":Lgnu/lists/Pair;
    move-object v3, v11

    .line 250
    .local v3, "resultTail":Lgnu/lists/Pair;
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 251
    .local v5, "namespaceList":Lgnu/lists/LList;
    const/4 v12, 0x0

    move-object v13, v5

    .line 254
    .end local v5    # "namespaceList":Lgnu/lists/LList;
    .end local p1    # "ch":I
    .local v0, "ch":I
    .local v12, "nsBindings":Lgnu/xml/NamespaceBinding;
    .local v13, "namespaceList":Lgnu/lists/LList;
    :goto_1
    const/4 v5, 0x0

    .line 255
    .local v5, "sawSpace":Z
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result v0

    .line 256
    :goto_2
    if-ltz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 258
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 259
    const/4 v5, 0x1

    goto :goto_2

    .line 261
    :cond_1
    const/16 v15, 0x2f

    const/4 v4, 0x0

    const/16 v14, 0x3e

    if-ltz v0, :cond_9

    if-eq v0, v14, :cond_9

    if-ne v0, v15, :cond_2

    .line 262
    move-object/from16 v22, v9

    const/16 v9, 0x3e

    goto/16 :goto_6

    .line 263
    :cond_2
    if-nez v5, :cond_3

    .line 264
    const-string v14, "missing space before attribute"

    invoke-virtual {v6, v14}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 265
    :cond_3
    invoke-static {v6, v0, v4}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readQNameExpression(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;

    move-result-object v14

    .line 266
    .local v14, "attrName":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v15

    add-int/2addr v15, v1

    .line 267
    .local v15, "line":I
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    iget v2, v6, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int v17, v17, v2

    .line 268
    .local v17, "column":I
    const/4 v2, 0x0

    .line 269
    .local v2, "definingNamespace":Ljava/lang/String;
    iget v1, v6, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    const/4 v4, 0x5

    if-lt v1, v4, :cond_6

    iget-object v1, v6, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    const/16 v20, 0x0

    aget-char v1, v1, v20

    const/16 v4, 0x78

    if-ne v1, v4, :cond_6

    iget-object v1, v6, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    const/4 v4, 0x1

    aget-char v1, v1, v4

    const/16 v4, 0x6d

    if-ne v1, v4, :cond_6

    iget-object v1, v6, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    const/4 v4, 0x2

    aget-char v1, v1, v4

    const/16 v4, 0x6c

    if-ne v1, v4, :cond_6

    iget-object v1, v6, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    const/4 v4, 0x3

    aget-char v1, v1, v4

    const/16 v4, 0x6e

    if-ne v1, v4, :cond_6

    iget-object v1, v6, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    const/4 v4, 0x4

    aget-char v1, v1, v4

    const/16 v4, 0x73

    if-ne v1, v4, :cond_6

    .line 276
    iget v1, v6, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_4

    .line 277
    const-string v2, ""

    move/from16 v21, v5

    goto :goto_4

    .line 278
    :cond_4
    iget-object v1, v6, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    aget-char v1, v1, v4

    const/16 v4, 0x3a

    if-ne v1, v4, :cond_5

    .line 279
    new-instance v1, Ljava/lang/String;

    iget-object v4, v6, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    move-object/from16 p1, v2

    .end local v2    # "definingNamespace":Ljava/lang/String;
    .local p1, "definingNamespace":Ljava/lang/String;
    iget v2, v6, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move/from16 v21, v5

    .end local v5    # "sawSpace":Z
    .local v21, "sawSpace":Z
    const/4 v5, 0x6

    sub-int/2addr v2, v5

    invoke-direct {v1, v4, v5, v2}, Ljava/lang/String;-><init>([CII)V

    move-object v2, v1

    .end local p1    # "definingNamespace":Ljava/lang/String;
    .restart local v2    # "definingNamespace":Ljava/lang/String;
    goto :goto_4

    .line 278
    .end local v21    # "sawSpace":Z
    .restart local v5    # "sawSpace":Z
    :cond_5
    move-object/from16 p1, v2

    move/from16 v21, v5

    .end local v2    # "definingNamespace":Ljava/lang/String;
    .end local v5    # "sawSpace":Z
    .restart local v21    # "sawSpace":Z
    .restart local p1    # "definingNamespace":Ljava/lang/String;
    goto :goto_3

    .line 269
    .end local v21    # "sawSpace":Z
    .end local p1    # "definingNamespace":Ljava/lang/String;
    .restart local v2    # "definingNamespace":Ljava/lang/String;
    .restart local v5    # "sawSpace":Z
    :cond_6
    move-object/from16 p1, v2

    move/from16 v21, v5

    .line 282
    .end local v2    # "definingNamespace":Ljava/lang/String;
    .end local v5    # "sawSpace":Z
    .restart local v21    # "sawSpace":Z
    .restart local p1    # "definingNamespace":Ljava/lang/String;
    :goto_3
    move-object/from16 v2, p1

    .end local p1    # "definingNamespace":Ljava/lang/String;
    .restart local v2    # "definingNamespace":Ljava/lang/String;
    :goto_4
    const/16 v1, 0x20

    invoke-static {v6, v1}, Lgnu/kawa/lispexpr/ReaderXmlElement;->skipSpace(Lgnu/kawa/lispexpr/LispReader;I)I

    move-result v0

    .line 283
    const/16 v4, 0x3d

    if-eq v0, v4, :cond_7

    .line 285
    const-string v4, "missing \'=\' after attribute"

    invoke-virtual {v6, v4}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 287
    :cond_7
    invoke-static {v6, v1}, Lgnu/kawa/lispexpr/ReaderXmlElement;->skipSpace(Lgnu/kawa/lispexpr/LispReader;I)I

    move-result v0

    .line 288
    sget-object v1, Lgnu/kawa/xml/MakeAttribute;->makeAttribute:Lgnu/kawa/xml/MakeAttribute;

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v1

    .line 291
    .local v1, "attrList":Lgnu/lists/PairWithPosition;
    move-object v4, v1

    .line 292
    .local v4, "attrTail":Lgnu/lists/Pair;
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v22, v9

    .end local v9    # "tag":Ljava/lang/Object;
    .local v22, "tag":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v5, v9, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v5

    .line 295
    .local v5, "attrPair":Lgnu/lists/PairWithPosition;
    invoke-virtual {v6, v4, v5}, Lgnu/kawa/lispexpr/LispReader;->setCdr(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 296
    move-object v4, v5

    .line 297
    int-to-char v9, v0

    invoke-static {v6, v9, v4}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readContent(Lgnu/kawa/lispexpr/LispReader;CLgnu/lists/Pair;)Lgnu/lists/Pair;

    move-result-object v4

    .line 298
    if-eqz v2, :cond_8

    .line 301
    new-instance v9, Lgnu/lists/PairWithPosition;

    move/from16 p1, v0

    .end local v0    # "ch":I
    .local p1, "ch":I
    invoke-virtual {v5}, Lgnu/lists/PairWithPosition;->getCdr()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    invoke-direct {v9, v5, v0, v13}, Lgnu/lists/PairWithPosition;-><init>(Lgnu/text/SourceLocator;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v9

    move-object v13, v0

    const/4 v14, 0x0

    .end local v13    # "namespaceList":Lgnu/lists/LList;
    .local v0, "namespaceList":Lgnu/lists/LList;
    goto :goto_5

    .line 307
    .end local p1    # "ch":I
    .local v0, "ch":I
    .restart local v13    # "namespaceList":Lgnu/lists/LList;
    :cond_8
    move/from16 p1, v0

    .end local v0    # "ch":I
    .restart local p1    # "ch":I
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->makeNil()Ljava/lang/Object;

    move-result-object v0

    const/4 v9, -0x1

    move-object/from16 v20, v14

    const/4 v14, 0x0

    .end local v14    # "attrName":Ljava/lang/Object;
    .local v20, "attrName":Ljava/lang/Object;
    invoke-static {v1, v0, v14, v9, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v0

    .line 309
    .local v0, "pair":Lgnu/lists/Pair;
    invoke-virtual {v3, v0}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 310
    move-object v3, v0

    .line 313
    .end local v0    # "pair":Lgnu/lists/Pair;
    .end local v1    # "attrList":Lgnu/lists/PairWithPosition;
    .end local v2    # "definingNamespace":Ljava/lang/String;
    .end local v4    # "attrTail":Lgnu/lists/Pair;
    .end local v5    # "attrPair":Lgnu/lists/PairWithPosition;
    .end local v15    # "line":I
    .end local v17    # "column":I
    .end local v20    # "attrName":Ljava/lang/Object;
    .end local v21    # "sawSpace":Z
    :goto_5
    move/from16 v0, p1

    move-object/from16 v9, v22

    const/4 v1, 0x1

    const/4 v2, 0x2

    goto/16 :goto_1

    .line 261
    .end local v22    # "tag":Ljava/lang/Object;
    .end local p1    # "ch":I
    .local v0, "ch":I
    .local v5, "sawSpace":Z
    .restart local v9    # "tag":Ljava/lang/Object;
    :cond_9
    move/from16 v21, v5

    move-object/from16 v22, v9

    const/16 v9, 0x3e

    .line 314
    .end local v5    # "sawSpace":Z
    .end local v9    # "tag":Ljava/lang/Object;
    .restart local v22    # "tag":Ljava/lang/Object;
    :goto_6
    const/4 v1, 0x0

    .line 315
    .local v1, "empty":Z
    if-ne v0, v15, :cond_b

    .line 317
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 318
    if-ne v0, v9, :cond_a

    .line 319
    const/4 v1, 0x1

    move v14, v1

    goto :goto_7

    .line 321
    :cond_a
    invoke-virtual {v6, v0}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    move v14, v1

    goto :goto_7

    .line 315
    :cond_b
    move v14, v1

    .line 323
    .end local v1    # "empty":Z
    .local v14, "empty":Z
    :goto_7
    if-nez v14, :cond_14

    .line 325
    if-eq v0, v9, :cond_c

    .line 327
    const-string v1, "missing \'>\' after start element"

    invoke-virtual {v6, v1}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 328
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    .line 330
    :cond_c
    const/16 v1, 0x3c

    invoke-static {v6, v1, v3}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readContent(Lgnu/kawa/lispexpr/LispReader;CLgnu/lists/Pair;)Lgnu/lists/Pair;

    move-result-object v15

    .line 331
    .end local v3    # "resultTail":Lgnu/lists/Pair;
    .local v15, "resultTail":Lgnu/lists/Pair;
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result v0

    .line 332
    invoke-static {v0}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 334
    const/4 v4, 0x0

    iput v4, v6, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 337
    :goto_8
    invoke-virtual {v6, v0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result v5

    .line 339
    .end local v0    # "ch":I
    .local v5, "ch":I
    invoke-static {v5}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v1, 0x3a

    if-eq v5, v1, :cond_10

    .line 340
    nop

    .line 342
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "endTag":Ljava/lang/String;
    if-eqz v10, :cond_e

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_9

    :cond_d
    move-object/from16 v19, v3

    move/from16 v17, v5

    const/4 v9, 0x0

    goto :goto_b

    .line 344
    :cond_e
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v16, v0, 0x1

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v0

    iget v1, v6, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int v17, v0, v1

    const-string v0, ">\'"

    new-instance v1, Ljava/lang/StringBuilder;

    if-nez v10, :cond_f

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computed start tag closed by \'</"

    goto :goto_a

    :cond_f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ">\' closed by \'</"

    :goto_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    const/16 v1, 0x65

    move-object/from16 v0, p0

    move-object/from16 v19, v3

    .end local v3    # "endTag":Ljava/lang/String;
    .local v19, "endTag":Ljava/lang/String;
    move/from16 v3, v16

    const/4 v9, 0x0

    move/from16 v4, v17

    move/from16 v17, v5

    .end local v5    # "ch":I
    .local v17, "ch":I
    move-object/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/lispexpr/LispReader;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 350
    :goto_b
    iput v9, v6, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    move/from16 v0, v17

    goto :goto_d

    .line 339
    .end local v17    # "ch":I
    .end local v19    # "endTag":Ljava/lang/String;
    .restart local v5    # "ch":I
    :cond_10
    move/from16 v17, v5

    goto :goto_c

    :cond_11
    move/from16 v17, v5

    const/16 v1, 0x3a

    :goto_c
    const/4 v9, 0x0

    const/16 v16, 0x1

    .line 337
    .end local v5    # "ch":I
    .restart local v17    # "ch":I
    move/from16 v0, v17

    const/4 v4, 0x0

    const/16 v9, 0x3e

    goto/16 :goto_8

    .line 352
    .end local v17    # "ch":I
    .restart local v0    # "ch":I
    :cond_12
    :goto_d
    invoke-static {v6, v0}, Lgnu/kawa/lispexpr/ReaderXmlElement;->skipSpace(Lgnu/kawa/lispexpr/LispReader;I)I

    move-result v0

    .line 353
    const/16 v1, 0x3e

    if-eq v0, v1, :cond_13

    .line 354
    const-string v1, "missing \'>\' after end element"

    invoke-virtual {v6, v1}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 356
    :cond_13
    move-object v3, v15

    .end local v15    # "resultTail":Lgnu/lists/Pair;
    .local v3, "resultTail":Lgnu/lists/Pair;
    :cond_14
    invoke-static {v13}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v1

    .line 357
    .end local v13    # "namespaceList":Lgnu/lists/LList;
    .local v1, "namespaceList":Lgnu/lists/LList;
    sget-object v2, Lgnu/kawa/lispexpr/MakeXmlElement;->makeXml:Lgnu/kawa/lispexpr/MakeXmlElement;

    invoke-static {v1, v11}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v2

    return-object v2
.end method

.method static readEntity(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;
    .locals 5
    .param p0, "reader"    # Lgnu/kawa/lispexpr/LispReader;
    .param p1, "next"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 512
    const-string v0, "?"

    .line 515
    .local v0, "result":Ljava/lang/Object;
    iget v1, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 516
    .local v1, "saveLength":I
    :goto_0
    if-ltz p1, :cond_1

    .line 518
    int-to-char v2, p1

    .line 519
    .local v2, "ch":C
    invoke-static {v2}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 520
    goto :goto_1

    .line 521
    :cond_0
    invoke-virtual {p0, v2}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 522
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 523
    .end local v2    # "ch":C
    goto :goto_0

    .line 524
    :cond_1
    :goto_1
    const/16 v2, 0x3b

    if-eq p1, v2, :cond_2

    .line 526
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 527
    const-string v2, "invalid entity reference"

    invoke-virtual {p0, v2}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 531
    :cond_2
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    iget v4, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int/2addr v4, v1

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 533
    .local v2, "ref":Ljava/lang/String;
    iput v1, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 534
    invoke-static {p0, v2}, Lgnu/kawa/lispexpr/ReaderXmlElement;->namedEntity(Lgnu/kawa/lispexpr/LispReader;Ljava/lang/String;)V

    .line 535
    const/4 v0, 0x0

    .line 538
    .end local v1    # "saveLength":I
    .end local v2    # "ref":Ljava/lang/String;
    :goto_2
    return-object v0
.end method

.method static readEscapedExpression(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;
    .locals 13
    .param p0, "reader"    # Lgnu/kawa/lispexpr/LispReader;
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 91
    const/16 v0, 0x28

    if-ne p1, v0, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 94
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v0

    .line 99
    .local v0, "port":Lgnu/text/LineBufferedReader;
    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->pushNesting(C)C

    move-result v1

    .line 100
    .local v1, "saveReadState":C
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v2

    .line 101
    .local v2, "startLine":I
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v3

    .line 104
    .local v3, "startColumn":I
    :try_start_0
    new-instance v4, Lgnu/expr/PrimProcedure;

    sget-object v5, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v6, "values"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    invoke-direct {v4, v5}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 106
    .local v4, "valuesMake":Ljava/lang/Object;
    invoke-virtual {p0, v4, v2, v3}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object v5

    .line 107
    .local v5, "list":Lgnu/lists/Pair;
    move-object v6, v5

    .line 108
    .local v6, "last":Lgnu/lists/Pair;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v7

    .line 111
    .local v7, "readTable":Lgnu/kawa/lispexpr/ReadTable;
    :goto_0
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v8

    .line 112
    .local v8, "line":I
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v9

    .line 113
    .local v9, "column":I
    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v10

    move p1, v10

    .line 114
    const/16 v10, 0x7d

    if-ne p1, v10, :cond_2

    .line 115
    nop

    .line 129
    .end local v8    # "line":I
    .end local v9    # "column":I
    const/4 v8, 0x0

    iput v8, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 131
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_1

    .line 132
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    return-object v8

    .line 133
    :cond_1
    nop

    .line 137
    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    return-object v5

    .line 116
    .restart local v8    # "line":I
    .restart local v9    # "column":I
    :cond_2
    if-gez p1, :cond_3

    .line 117
    :try_start_1
    const-string v10, "unexpected EOF in list starting here"

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p0, v10, v11, v3}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;II)V

    .line 119
    :cond_3
    invoke-virtual {v7, p1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v10

    .line 120
    .local v10, "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    invoke-virtual {p0, p1, v10, v7}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v11

    .line 121
    .local v11, "value":Ljava/lang/Object;
    sget-object v12, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v11, v12, :cond_4

    .line 122
    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {p0, v11, v7, v8, v9}, Lgnu/kawa/lispexpr/LispReader;->handlePostfix(Ljava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;II)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    .line 125
    invoke-virtual {p0, v11, v8, v9}, Lgnu/kawa/lispexpr/LispReader;->makePair(Ljava/lang/Object;II)Lgnu/lists/Pair;

    move-result-object v12

    .line 126
    .local v12, "pair":Lgnu/lists/Pair;
    invoke-virtual {p0, v6, v12}, Lgnu/kawa/lispexpr/LispReader;->setCdr(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    move-object v6, v12

    .line 128
    .end local v8    # "line":I
    .end local v9    # "column":I
    .end local v10    # "entry":Lgnu/kawa/lispexpr/ReadTableEntry;
    .end local v11    # "value":Ljava/lang/Object;
    .end local v12    # "pair":Lgnu/lists/Pair;
    goto :goto_0

    .line 137
    .end local v4    # "valuesMake":Ljava/lang/Object;
    .end local v5    # "list":Lgnu/lists/Pair;
    .end local v6    # "last":Lgnu/lists/Pair;
    .end local v7    # "readTable":Lgnu/kawa/lispexpr/ReadTable;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    goto :goto_2

    :goto_1
    throw v4

    :goto_2
    goto :goto_1
.end method

.method public static readQNameExpression(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;
    .locals 12
    .param p0, "reader"    # Lgnu/kawa/lispexpr/LispReader;
    .param p1, "ch"    # I
    .param p2, "forElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "file":Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 40
    .local v1, "line":I
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v2

    .line 41
    .local v2, "column":I
    const/4 v3, 0x0

    iput v3, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 42
    invoke-static {p1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 44
    const/4 v4, -0x1

    .line 47
    .local v4, "colon":I
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 48
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result p1

    .line 49
    const/16 v5, 0x3a

    if-ne p1, v5, :cond_1

    if-gez v4, :cond_1

    .line 50
    iget v4, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {p1}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 54
    nop

    .line 57
    if-gez v4, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/mapping/Namespace;->getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    .line 74
    .local v3, "symbol":Lgnu/mapping/Symbol;
    invoke-static {v3}, Lgnu/kawa/lispexpr/ReaderXmlElement;->quote(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    return-object v5

    .line 59
    .end local v3    # "symbol":Lgnu/mapping/Symbol;
    :cond_3
    :goto_1
    iget v5, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    .line 60
    .local v5, "llen":I
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    add-int/lit8 v8, v4, 0x1

    invoke-direct {v6, v7, v8, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "local":Ljava/lang/String;
    if-gez v4, :cond_4

    const-string v3, "[default-element-namespace]"

    goto :goto_2

    :cond_4
    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    invoke-direct {v7, v8, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "prefix":Ljava/lang/String;
    :goto_2
    sget-object v7, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v7, v3}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v7

    .line 66
    .local v7, "psym":Lgnu/mapping/Symbol;
    new-instance v8, Lgnu/lists/Pair;

    sget-object v9, Lgnu/kawa/lispexpr/ResolveNamespace;->resolveQName:Lgnu/kawa/lispexpr/ResolveNamespace;

    new-instance v10, Lgnu/lists/Pair;

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v10, v6, v11}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v10, v11, v1, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8

    .line 77
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "colon":I
    .end local v5    # "llen":I
    .end local v6    # "local":Ljava/lang/String;
    .end local v7    # "psym":Lgnu/mapping/Symbol;
    :cond_5
    const/16 v3, 0x7b

    if-eq p1, v3, :cond_7

    const/16 v3, 0x28

    if-ne p1, v3, :cond_6

    goto :goto_3

    .line 83
    :cond_6
    const-string v3, "missing element name"

    invoke-virtual {p0, v3}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 84
    const/4 v3, 0x0

    return-object v3

    .line 79
    :cond_7
    :goto_3
    invoke-static {p0, p1}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readEscapedExpression(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method static readXMLConstructor(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;
    .locals 11
    .param p0, "reader"    # Lgnu/kawa/lispexpr/LispReader;
    .param p1, "next"    # I
    .param p2, "inElementContent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 151
    .local v0, "startLine":I
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v1

    add-int/lit8 v7, v1, -0x2

    .line 152
    .local v7, "startColumn":I
    const/16 v1, 0x21

    if-ne p1, v1, :cond_5

    .line 154
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 155
    const/16 v1, 0x2d

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v2

    move p1, v2

    if-ne v2, v1, :cond_1

    .line 157
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    .line 158
    const-string v1, "-->"

    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->readDelimited(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "unexpected end-of-file in XML comment starting here - expected \"-->\""

    const/16 v2, 0x66

    move-object v1, p0

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lgnu/kawa/lispexpr/LispReader;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 160
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "str":Ljava/lang/String;
    sget-object v2, Lgnu/kawa/xml/CommentConstructor;->commentConstructor:Lgnu/kawa/xml/CommentConstructor;

    invoke-static {v2, v1}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    .line 162
    .local v1, "exp":Ljava/lang/Object;
    goto/16 :goto_2

    .line 163
    .end local v1    # "exp":Ljava/lang/Object;
    :cond_1
    const/16 v1, 0x5b

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v2

    move p1, v2

    const/16 v3, 0x43

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v2

    move p1, v2

    const/16 v3, 0x44

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v2

    move p1, v2

    const/16 v3, 0x41

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v2

    move p1, v2

    const/16 v4, 0x54

    if-ne v2, v4, :cond_3

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v2

    move p1, v2

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v2

    move p1, v2

    if-ne v2, v1, :cond_3

    .line 171
    const-string v1, "]]>"

    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->readDelimited(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "unexpected end-of-file in CDATA starting here - expected \"]]>\""

    const/16 v2, 0x66

    move-object v1, p0

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lgnu/kawa/lispexpr/LispReader;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 174
    :cond_2
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "str":Ljava/lang/String;
    sget-object v2, Lgnu/kawa/xml/MakeCDATA;->makeCDATA:Lgnu/kawa/xml/MakeCDATA;

    invoke-static {v2, v1}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    .line 176
    .local v1, "exp":Ljava/lang/Object;
    goto/16 :goto_2

    .line 179
    .end local v1    # "exp":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "\'<!\' must be followed by \'--\' or \'[CDATA[\'"

    const/16 v2, 0x66

    move-object v1, p0

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lgnu/kawa/lispexpr/LispReader;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 182
    :goto_0
    if-ltz p1, :cond_4

    const/16 v1, 0x3e

    if-eq p1, v1, :cond_4

    const/16 v1, 0xa

    if-eq p1, v1, :cond_4

    const/16 v1, 0xd

    if-eq p1, v1, :cond_4

    .line 184
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    goto :goto_0

    .line 186
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "exp":Ljava/lang/Object;
    goto/16 :goto_2

    .line 189
    .end local v1    # "exp":Ljava/lang/Object;
    :cond_5
    const/16 v1, 0x3f

    if-ne p1, v1, :cond_b

    .line 191
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result p1

    .line 192
    if-ltz p1, :cond_6

    invoke-static {p1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 193
    :cond_6
    const-string v2, "missing target after \'<?\'"

    invoke-virtual {p0, v2}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 196
    :cond_7
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 197
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result p1

    .line 198
    invoke-static {p1}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 199
    nop

    .line 201
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, "target":Ljava/lang/String;
    const/4 v2, 0x0

    move v9, v2

    .line 203
    .local v9, "nspaces":I
    :goto_1
    if-ltz p1, :cond_8

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 205
    add-int/lit8 v9, v9, 0x1

    .line 206
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    goto :goto_1

    .line 208
    :cond_8
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 209
    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->pushNesting(C)C

    move-result v10

    .line 212
    .local v10, "saveReadState":C
    :try_start_0
    const-string v1, "?>"

    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->readDelimited(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 213
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "unexpected end-of-file looking for \"?>\""

    const/16 v2, 0x66

    move-object v1, p0

    move v4, v0

    move v5, v7

    invoke-virtual/range {v1 .. v6}, Lgnu/kawa/lispexpr/LispReader;->error(CLjava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_9
    invoke-virtual {p0, v10}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    .line 219
    nop

    .line 220
    if-nez v9, :cond_a

    iget v1, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    if-lez v1, :cond_a

    .line 221
    const-string v1, "target must be followed by space or \'?>\'"

    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 222
    :cond_a
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferString()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "content":Ljava/lang/String;
    sget-object v2, Lgnu/kawa/xml/MakeProcInst;->makeProcInst:Lgnu/kawa/xml/MakeProcInst;

    invoke-static {v2, v8, v1}, Lgnu/lists/LList;->list3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    .line 224
    .end local v8    # "target":Ljava/lang/String;
    .end local v9    # "nspaces":I
    .end local v10    # "saveReadState":C
    .local v1, "exp":Ljava/lang/Object;
    goto :goto_2

    .line 218
    .end local v1    # "exp":Ljava/lang/Object;
    .restart local v8    # "target":Ljava/lang/String;
    .restart local v9    # "nspaces":I
    .restart local v10    # "saveReadState":C
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v10}, Lgnu/kawa/lispexpr/LispReader;->popNesting(C)V

    throw v1

    .line 226
    .end local v8    # "target":Ljava/lang/String;
    .end local v9    # "nspaces":I
    .end local v10    # "saveReadState":C
    :cond_b
    invoke-static {p0, p1}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readElementConstructor(Lgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;

    move-result-object v1

    .line 227
    .restart local v1    # "exp":Ljava/lang/Object;
    :goto_2
    return-object v1
.end method

.method static skipSpace(Lgnu/kawa/lispexpr/LispReader;I)I
    .locals 1
    .param p0, "reader"    # Lgnu/kawa/lispexpr/LispReader;
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 566
    nop

    :goto_0
    if-ltz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 568
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result p1

    goto :goto_0

    .line 567
    :cond_1
    :goto_1
    return p1
.end method


# virtual methods
.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 3
    .param p1, "in"    # Lgnu/text/Lexer;
    .param p2, "ch"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 18
    move-object v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    .line 19
    .local v0, "reader":Lgnu/kawa/lispexpr/LispReader;
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/LispReader;->readUnicodeChar()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lgnu/kawa/lispexpr/ReaderXmlElement;->readXMLConstructor(Lgnu/kawa/lispexpr/LispReader;IZ)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
