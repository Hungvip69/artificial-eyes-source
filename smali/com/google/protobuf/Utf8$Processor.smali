.class abstract Lcom/google/protobuf/Utf8$Processor;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Processor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static partialIsValidUtf8(Ljava/nio/ByteBuffer;II)I
    .locals 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "index"    # I
    .param p2, "limit"    # I

    .line 543
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8;->access$200(Ljava/nio/ByteBuffer;II)I

    move-result v0

    add-int/2addr p1, v0

    .line 551
    :goto_0
    if-lt p1, p2, :cond_0

    .line 552
    const/4 v0, 0x0

    return v0

    .line 554
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    move v1, p1

    .local v1, "byte1":I
    if-gez p1, :cond_f

    .line 557
    const/16 p1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v1, p1, :cond_4

    .line 559
    if-lt v0, p2, :cond_1

    .line 561
    return v1

    .line 566
    :cond_1
    const/16 p1, -0x3e

    if-lt v1, p1, :cond_3

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v3, :cond_2

    goto :goto_1

    .line 569
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move p1, v0

    goto :goto_3

    .line 567
    :cond_3
    :goto_1
    return v2

    .line 570
    :cond_4
    const/16 v4, -0x10

    if-ge v1, v4, :cond_a

    .line 572
    add-int/lit8 v4, p2, -0x1

    if-lt v0, v4, :cond_5

    .line 574
    sub-int p1, p2, v0

    invoke-static {p0, v1, v0, p1}, Lcom/google/protobuf/Utf8;->access$300(Ljava/nio/ByteBuffer;III)I

    move-result p1

    return p1

    .line 577
    :cond_5
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "index":I
    .local v4, "index":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 578
    .local v0, "byte2":B
    if-gt v0, v3, :cond_9

    const/16 v5, -0x60

    if-ne v1, p1, :cond_6

    if-lt v0, v5, :cond_9

    :cond_6
    const/16 p1, -0x13

    if-ne v1, p1, :cond_7

    if-ge v0, v5, :cond_9

    .line 584
    :cond_7
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-le p1, v3, :cond_8

    goto :goto_2

    .line 587
    :cond_8
    nop

    .end local v0    # "byte2":B
    add-int/lit8 v4, v4, 0x1

    .line 588
    move p1, v4

    goto :goto_3

    .line 585
    .restart local v0    # "byte2":B
    :cond_9
    :goto_2
    return v2

    .line 590
    .end local v4    # "index":I
    .local v0, "index":I
    :cond_a
    add-int/lit8 p1, p2, -0x2

    if-lt v0, p1, :cond_b

    .line 592
    sub-int p1, p2, v0

    invoke-static {p0, v1, v0, p1}, Lcom/google/protobuf/Utf8;->access$300(Ljava/nio/ByteBuffer;III)I

    move-result p1

    return p1

    .line 596
    :cond_b
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "index":I
    .restart local p1    # "index":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 597
    .local v0, "byte2":I
    if-gt v0, v3, :cond_e

    shl-int/lit8 v4, v1, 0x1c

    add-int/lit8 v5, v0, 0x70

    add-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1e

    if-nez v4, :cond_e

    add-int/lit8 v4, p1, 0x1

    .line 604
    .end local p1    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    if-gt p1, v3, :cond_d

    add-int/lit8 p1, v4, 0x1

    .line 606
    .end local v4    # "index":I
    .restart local p1    # "index":I
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    if-le v4, v3, :cond_c

    goto :goto_4

    .line 610
    .end local v0    # "byte2":I
    .end local v1    # "byte1":I
    :cond_c
    :goto_3
    goto/16 :goto_0

    .line 604
    .end local p1    # "index":I
    .restart local v0    # "byte2":I
    .restart local v1    # "byte1":I
    .restart local v4    # "index":I
    :cond_d
    move p1, v4

    .line 607
    .end local v4    # "index":I
    .restart local p1    # "index":I
    :cond_e
    :goto_4
    return v2

    .line 554
    .end local p1    # "index":I
    .local v0, "index":I
    :cond_f
    move p1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method abstract encodeUtf8(Ljava/lang/CharSequence;[BII)I
.end method

.method final encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .line 663
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 665
    .local v0, "offset":I
    nop

    .line 666
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/protobuf/Utf8;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 667
    .local v1, "endIndex":I
    sub-int v2, v1, v0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 668
    .end local v0    # "offset":I
    .end local v1    # "endIndex":I
    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Utf8$Processor;->encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 671
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Utf8$Processor;->encodeUtf8Default(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 673
    :goto_0
    return-void
.end method

.method final encodeUtf8Default(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .line 685
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 686
    .local v0, "inLength":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 687
    .local v1, "outIx":I
    const/4 v2, 0x0

    .line 695
    .local v2, "inIx":I
    :goto_0
    const/16 v3, 0x80

    if-ge v2, v0, :cond_0

    :try_start_0
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move v5, v4

    .local v5, "c":C
    if-ge v4, v3, :cond_0

    .line 696
    add-int v3, v1, v2

    int-to-byte v4, v5

    invoke-virtual {p2, v3, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 695
    nop

    .end local v5    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 744
    :catch_0
    move-exception v3

    goto/16 :goto_4

    .line 698
    :cond_0
    if-ne v2, v0, :cond_1

    .line 700
    add-int v3, v1, v2

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 701
    return-void

    .line 704
    :cond_1
    add-int/2addr v1, v2

    .line 705
    :goto_1
    if-ge v2, v0, :cond_7

    .line 706
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 707
    .local v4, "c":C
    if-ge v4, v3, :cond_2

    .line 709
    int-to-byte v5, v4

    invoke-virtual {p2, v1, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 710
    :cond_2
    const/16 v5, 0x800

    if-ge v4, v5, :cond_3

    .line 714
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "outIx":I
    .local v5, "outIx":I
    ushr-int/lit8 v6, v4, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    :try_start_1
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 715
    and-int/lit8 v1, v4, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p2, v5, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v5

    goto/16 :goto_3

    .line 744
    .end local v4    # "c":C
    :catch_1
    move-exception v3

    move v1, v5

    goto/16 :goto_4

    .line 716
    .end local v5    # "outIx":I
    .restart local v1    # "outIx":I
    .restart local v4    # "c":C
    :cond_3
    const v5, 0xd800

    if-lt v4, v5, :cond_6

    const v5, 0xdfff

    if-ge v5, v4, :cond_4

    goto :goto_2

    .line 730
    :cond_4
    add-int/lit8 v5, v2, 0x1

    if-eq v5, v0, :cond_5

    add-int/lit8 v2, v2, 0x1

    :try_start_2
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v6, v5

    .local v6, "low":C
    invoke-static {v4, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 734
    invoke-static {v4, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 735
    .local v5, "codePoint":I
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "outIx":I
    .local v7, "outIx":I
    ushr-int/lit8 v8, v5, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    :try_start_3
    invoke-virtual {p2, v1, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 736
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "outIx":I
    .restart local v1    # "outIx":I
    ushr-int/lit8 v8, v5, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v3

    int-to-byte v8, v8

    :try_start_4
    invoke-virtual {p2, v7, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 737
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "outIx":I
    .restart local v7    # "outIx":I
    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v3

    int-to-byte v8, v8

    :try_start_5
    invoke-virtual {p2, v1, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 738
    and-int/lit8 v1, v5, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p2, v7, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    move v1, v7

    goto :goto_3

    .line 744
    .end local v4    # "c":C
    .end local v5    # "codePoint":I
    .end local v6    # "low":C
    :catch_2
    move-exception v3

    move v1, v7

    goto :goto_4

    .line 731
    .end local v7    # "outIx":I
    .restart local v1    # "outIx":I
    .restart local v4    # "c":C
    :cond_5
    :try_start_6
    new-instance v3, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v3, v2, v0}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    .end local v0    # "inLength":I
    .end local v1    # "outIx":I
    .end local v2    # "inIx":I
    .end local p1    # "in":Ljava/lang/CharSequence;
    .end local p2    # "out":Ljava/nio/ByteBuffer;
    throw v3
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 721
    .restart local v0    # "inLength":I
    .restart local v1    # "outIx":I
    .restart local v2    # "inIx":I
    .restart local p1    # "in":Ljava/lang/CharSequence;
    .restart local p2    # "out":Ljava/nio/ByteBuffer;
    :cond_6
    :goto_2
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "outIx":I
    .local v5, "outIx":I
    ushr-int/lit8 v6, v4, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    :try_start_7
    invoke-virtual {p2, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    .line 722
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "outIx":I
    .restart local v1    # "outIx":I
    ushr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    :try_start_8
    invoke-virtual {p2, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 723
    and-int/lit8 v5, v4, 0x3f

    or-int/2addr v5, v3

    int-to-byte v5, v5

    invoke-virtual {p2, v1, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 705
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .end local v4    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 743
    :cond_7
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    .line 752
    nop

    .line 753
    return-void

    .line 749
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 750
    .local v4, "badWriteIndex":I
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed writing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 751
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v5

    :goto_6
    goto :goto_5
.end method

.method abstract encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
.end method

.method final isValidUtf8(Ljava/nio/ByteBuffer;II)Z
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "index"    # I
    .param p3, "limit"    # I

    .line 417
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final isValidUtf8([BII)Z
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "index"    # I
    .param p3, "limit"    # I

    .line 384
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I
    .locals 4
    .param p1, "state"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "index"    # I
    .param p4, "limit"    # I

    .line 428
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 430
    .local v0, "offset":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    add-int v2, v0, p3

    add-int v3, v0, p4

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result v1

    return v1

    .line 431
    .end local v0    # "offset":I
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0

    .line 434
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method abstract partialIsValidUtf8(I[BII)I
.end method

.method final partialIsValidUtf8Default(ILjava/nio/ByteBuffer;II)I
    .locals 7
    .param p1, "state"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "index"    # I
    .param p4, "limit"    # I

    .line 450
    if-eqz p1, :cond_11

    .line 458
    if-lt p3, p4, :cond_0

    .line 459
    return p1

    .line 462
    :cond_0
    int-to-byte v0, p1

    .line 464
    .local v0, "byte1":B
    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge v0, v1, :cond_3

    .line 469
    const/16 v1, -0x3e

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, p3, 0x1

    .line 471
    .end local p3    # "index":I
    .local v1, "index":I
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_1

    move p3, v1

    goto :goto_0

    :cond_1
    move p3, v1

    goto/16 :goto_4

    .line 472
    .end local v1    # "index":I
    .restart local p3    # "index":I
    :cond_2
    :goto_0
    return v2

    .line 474
    :cond_3
    const/16 v4, -0x10

    if-ge v0, v4, :cond_a

    .line 478
    shr-int/lit8 v4, p1, 0x8

    xor-int/2addr v4, v2

    int-to-byte v4, v4

    .line 479
    .local v4, "byte2":B
    if-nez v4, :cond_5

    .line 480
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "index":I
    .local v5, "index":I
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 481
    if-lt v5, p4, :cond_4

    .line 482
    invoke-static {v0, v4}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p3

    return p3

    .line 481
    :cond_4
    move p3, v5

    .line 485
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_5
    if-gt v4, v3, :cond_9

    const/16 v5, -0x60

    if-ne v0, v1, :cond_6

    if-lt v4, v5, :cond_9

    :cond_6
    const/16 v1, -0x13

    if-ne v0, v1, :cond_7

    if-ge v4, v5, :cond_9

    :cond_7
    add-int/lit8 v1, p3, 0x1

    .line 491
    .end local p3    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_8

    move p3, v1

    goto :goto_1

    .line 494
    .end local v4    # "byte2":B
    :cond_8
    move p3, v1

    goto :goto_4

    .line 492
    .end local v1    # "index":I
    .restart local v4    # "byte2":B
    .restart local p3    # "index":I
    :cond_9
    :goto_1
    return v2

    .line 498
    .end local v4    # "byte2":B
    :cond_a
    shr-int/lit8 v1, p1, 0x8

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    .line 499
    .local v1, "byte2":B
    const/4 v4, 0x0

    .line 500
    .local v4, "byte3":B
    if-nez v1, :cond_c

    .line 501
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 502
    if-lt v5, p4, :cond_b

    .line 503
    invoke-static {v0, v1}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result p3

    return p3

    .line 502
    :cond_b
    move p3, v5

    goto :goto_2

    .line 506
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_c
    shr-int/lit8 v5, p1, 0x10

    int-to-byte v4, v5

    .line 508
    :goto_2
    if-nez v4, :cond_e

    .line 509
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    .line 510
    if-lt v5, p4, :cond_d

    .line 511
    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result p3

    return p3

    .line 510
    :cond_d
    move p3, v5

    .line 519
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_e
    if-gt v1, v3, :cond_10

    shl-int/lit8 v5, v0, 0x1c

    add-int/lit8 v6, v1, 0x70

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1e

    if-nez v5, :cond_10

    if-gt v4, v3, :cond_10

    add-int/lit8 v5, p3, 0x1

    .line 528
    .end local p3    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    if-le p3, v3, :cond_f

    move p3, v5

    goto :goto_3

    :cond_f
    move p3, v5

    goto :goto_4

    .line 529
    .end local v5    # "index":I
    .restart local p3    # "index":I
    :cond_10
    :goto_3
    return v2

    .line 535
    .end local v0    # "byte1":B
    .end local v1    # "byte2":B
    .end local v4    # "byte3":B
    :cond_11
    :goto_4
    invoke-static {p2, p3, p4}, Lcom/google/protobuf/Utf8$Processor;->partialIsValidUtf8(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method abstract partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
.end method
