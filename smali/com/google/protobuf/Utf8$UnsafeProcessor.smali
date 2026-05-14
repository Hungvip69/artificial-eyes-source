.class final Lcom/google/protobuf/Utf8$UnsafeProcessor;
.super Lcom/google/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeProcessor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 990
    invoke-direct {p0}, Lcom/google/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method static isAvailable()Z
    .locals 1

    .line 995
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeArrayOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static partialIsValidUtf8(JI)I
    .locals 11
    .param p0, "address"    # J
    .param p2, "remaining"    # I

    .line 1459
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii(JI)I

    move-result v0

    .line 1460
    .local v0, "skipped":I
    int-to-long v1, v0

    add-long/2addr p0, v1

    .line 1461
    sub-int/2addr p2, v0

    .line 1467
    :goto_0
    const/4 v1, 0x0

    .line 1468
    .local v1, "byte1":I
    :goto_1
    const-wide/16 v2, 0x1

    if-lez p2, :cond_1

    add-long v4, p0, v2

    .end local p0    # "address":J
    .local v4, "address":J
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    move v1, p0

    if-ltz p0, :cond_0

    add-int/lit8 p2, p2, -0x1

    move-wide p0, v4

    goto :goto_1

    :cond_0
    move-wide p0, v4

    .line 1470
    .end local v4    # "address":J
    .restart local p0    # "address":J
    :cond_1
    if-nez p2, :cond_2

    .line 1471
    const/4 v2, 0x0

    return v2

    .line 1473
    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 1475
    const/16 v4, -0x20

    const/16 v5, -0x41

    const/4 v6, -0x1

    if-ge v1, v4, :cond_6

    .line 1478
    if-nez p2, :cond_3

    .line 1480
    return v1

    .line 1482
    :cond_3
    add-int/lit8 p2, p2, -0x1

    .line 1486
    const/16 v4, -0x3e

    if-lt v1, v4, :cond_5

    add-long/2addr v2, p0

    .end local p0    # "address":J
    .local v2, "address":J
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-le p0, v5, :cond_4

    move-wide p0, v2

    goto :goto_2

    :cond_4
    move-wide p0, v2

    goto :goto_4

    .line 1487
    .end local v2    # "address":J
    .restart local p0    # "address":J
    :cond_5
    :goto_2
    return v6

    .line 1489
    :cond_6
    const/16 v7, -0x10

    if-ge v1, v7, :cond_c

    .line 1492
    const/4 v7, 0x2

    if-ge p2, v7, :cond_7

    .line 1494
    invoke-static {p0, p1, v1, p2}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result v2

    return v2

    .line 1496
    :cond_7
    add-int/lit8 p2, p2, -0x2

    .line 1498
    add-long v7, p0, v2

    .end local p0    # "address":J
    .local v7, "address":J
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    .line 1499
    .local p0, "byte2":B
    if-gt p0, v5, :cond_b

    const/16 p1, -0x60

    if-ne v1, v4, :cond_8

    if-lt p0, p1, :cond_b

    :cond_8
    const/16 v4, -0x13

    if-ne v1, v4, :cond_9

    if-ge p0, p1, :cond_b

    :cond_9
    add-long/2addr v2, v7

    .line 1505
    .end local v7    # "address":J
    .restart local v2    # "address":J
    invoke-static {v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_a

    move-wide v7, v2

    goto :goto_3

    .line 1508
    .end local p0    # "byte2":B
    :cond_a
    move-wide p0, v2

    goto :goto_4

    .line 1506
    .end local v2    # "address":J
    .restart local v7    # "address":J
    .restart local p0    # "byte2":B
    :cond_b
    :goto_3
    return v6

    .line 1511
    .end local v7    # "address":J
    .local p0, "address":J
    :cond_c
    const/4 v4, 0x3

    if-ge p2, v4, :cond_d

    .line 1513
    invoke-static {p0, p1, v1, p2}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result v2

    return v2

    .line 1515
    :cond_d
    add-int/lit8 p2, p2, -0x3

    .line 1517
    add-long v7, p0, v2

    .end local p0    # "address":J
    .restart local v7    # "address":J
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    .line 1518
    .local p0, "byte2":B
    if-gt p0, v5, :cond_10

    shl-int/lit8 p1, v1, 0x1c

    add-int/lit8 v4, p0, 0x70

    add-int/2addr p1, v4

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_10

    add-long v9, v7, v2

    .line 1525
    .end local v7    # "address":J
    .local v9, "address":J
    invoke-static {v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-gt p1, v5, :cond_f

    add-long v7, v9, v2

    .line 1527
    .end local v9    # "address":J
    .restart local v7    # "address":J
    invoke-static {v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_e

    goto :goto_5

    :cond_e
    move-wide p0, v7

    .line 1531
    .end local v1    # "byte1":I
    .end local v7    # "address":J
    .local p0, "address":J
    :goto_4
    goto/16 :goto_0

    .line 1525
    .restart local v1    # "byte1":I
    .restart local v9    # "address":J
    .local p0, "byte2":B
    :cond_f
    move-wide v7, v9

    .line 1528
    .end local v9    # "address":J
    .restart local v7    # "address":J
    :cond_10
    :goto_5
    return v6
.end method

.method private static partialIsValidUtf8([BJI)I
    .locals 11
    .param p0, "bytes"    # [B
    .param p1, "offset"    # J
    .param p3, "remaining"    # I

    .line 1383
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii([BJI)I

    move-result v0

    .line 1384
    .local v0, "skipped":I
    sub-int/2addr p3, v0

    .line 1385
    int-to-long v1, v0

    add-long/2addr p1, v1

    .line 1391
    :goto_0
    const/4 v1, 0x0

    .line 1392
    .local v1, "byte1":I
    :goto_1
    const-wide/16 v2, 0x1

    if-lez p3, :cond_1

    add-long v4, p1, v2

    .end local p1    # "offset":J
    .local v4, "offset":J
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    move v1, p1

    if-ltz p1, :cond_0

    add-int/lit8 p3, p3, -0x1

    move-wide p1, v4

    goto :goto_1

    :cond_0
    move-wide p1, v4

    .line 1394
    .end local v4    # "offset":J
    .restart local p1    # "offset":J
    :cond_1
    if-nez p3, :cond_2

    .line 1395
    const/4 v2, 0x0

    return v2

    .line 1397
    :cond_2
    add-int/lit8 p3, p3, -0x1

    .line 1400
    const/16 v4, -0x20

    const/16 v5, -0x41

    const/4 v6, -0x1

    if-ge v1, v4, :cond_6

    .line 1402
    if-nez p3, :cond_3

    .line 1404
    return v1

    .line 1406
    :cond_3
    add-int/lit8 p3, p3, -0x1

    .line 1410
    const/16 v4, -0x3e

    if-lt v1, v4, :cond_5

    add-long/2addr v2, p1

    .line 1411
    .end local p1    # "offset":J
    .local v2, "offset":J
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v5, :cond_4

    move-wide p1, v2

    goto :goto_2

    :cond_4
    move-wide p1, v2

    goto :goto_4

    .line 1412
    .end local v2    # "offset":J
    .restart local p1    # "offset":J
    :cond_5
    :goto_2
    return v6

    .line 1414
    :cond_6
    const/16 v7, -0x10

    if-ge v1, v7, :cond_c

    .line 1416
    const/4 v7, 0x2

    if-ge p3, v7, :cond_7

    .line 1418
    invoke-static {p0, v1, p1, p2, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result v2

    return v2

    .line 1420
    :cond_7
    add-int/lit8 p3, p3, -0x2

    .line 1423
    add-long v7, p1, v2

    .end local p1    # "offset":J
    .local v7, "offset":J
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    move p2, p1

    .local p2, "byte2":I
    if-gt p1, v5, :cond_b

    const/16 p1, -0x60

    if-ne v1, v4, :cond_8

    if-lt p2, p1, :cond_b

    :cond_8
    const/16 v4, -0x13

    if-ne v1, v4, :cond_9

    if-ge p2, p1, :cond_b

    :cond_9
    add-long/2addr v2, v7

    .line 1429
    .end local v7    # "offset":J
    .restart local v2    # "offset":J
    invoke-static {p0, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v5, :cond_a

    move-wide v7, v2

    goto :goto_3

    .line 1432
    .end local p2    # "byte2":I
    :cond_a
    move-wide p1, v2

    goto :goto_4

    .line 1430
    .end local v2    # "offset":J
    .restart local v7    # "offset":J
    .restart local p2    # "byte2":I
    :cond_b
    :goto_3
    return v6

    .line 1434
    .end local v7    # "offset":J
    .end local p2    # "byte2":I
    .restart local p1    # "offset":J
    :cond_c
    const/4 v4, 0x3

    if-ge p3, v4, :cond_d

    .line 1436
    invoke-static {p0, v1, p1, p2, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result v2

    return v2

    .line 1438
    :cond_d
    add-int/lit8 p3, p3, -0x3

    .line 1441
    add-long v7, p1, v2

    .end local p1    # "offset":J
    .restart local v7    # "offset":J
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    move p2, p1

    .restart local p2    # "byte2":I
    if-gt p1, v5, :cond_10

    shl-int/lit8 p1, v1, 0x1c

    add-int/lit8 v4, p2, 0x70

    add-int/2addr p1, v4

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_10

    add-long v9, v7, v2

    .line 1448
    .end local v7    # "offset":J
    .local v9, "offset":J
    invoke-static {p0, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gt p1, v5, :cond_f

    add-long v7, v9, v2

    .line 1450
    .end local v9    # "offset":J
    .restart local v7    # "offset":J
    invoke-static {p0, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-le p1, v5, :cond_e

    goto :goto_5

    :cond_e
    move-wide p1, v7

    .line 1454
    .end local v1    # "byte1":I
    .end local v7    # "offset":J
    .end local p2    # "byte2":I
    .restart local p1    # "offset":J
    :goto_4
    goto/16 :goto_0

    .line 1448
    .end local p1    # "offset":J
    .restart local v1    # "byte1":I
    .restart local v9    # "offset":J
    .restart local p2    # "byte2":I
    :cond_f
    move-wide v7, v9

    .line 1451
    .end local v9    # "offset":J
    .restart local v7    # "offset":J
    :cond_10
    :goto_5
    return v6
.end method

.method private static unsafeEstimateConsecutiveAscii(JI)I
    .locals 7
    .param p0, "address"    # J
    .param p2, "maxChars"    # I

    .line 1356
    move v0, p2

    .line 1357
    .local v0, "remaining":I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1359
    const/4 v1, 0x0

    return v1

    .line 1365
    :cond_0
    long-to-int v1, p0

    and-int/lit8 v1, v1, 0x7

    .line 1366
    .local v1, "unaligned":I
    move v2, v1

    .local v2, "j":I
    :goto_0
    if-lez v2, :cond_2

    .line 1367
    const-wide/16 v3, 0x1

    add-long/2addr v3, p0

    .end local p0    # "address":J
    .local v3, "address":J
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result p0

    if-gez p0, :cond_1

    .line 1368
    sub-int p0, v1, v2

    return p0

    .line 1366
    :cond_1
    add-int/lit8 v2, v2, -0x1

    move-wide p0, v3

    goto :goto_0

    .line 1375
    .end local v2    # "j":I
    .end local v3    # "address":J
    .restart local p0    # "address":J
    :cond_2
    sub-int/2addr v0, v1

    .line 1376
    :goto_1
    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getLong(J)J

    move-result-wide v2

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    .line 1377
    const-wide/16 v2, 0x8

    add-long/2addr p0, v2

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    .line 1378
    :cond_3
    sub-int v2, p2, v0

    return v2
.end method

.method private static unsafeEstimateConsecutiveAscii([BJI)I
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "offset"    # J
    .param p3, "maxChars"    # I

    .line 1324
    move v0, p3

    .line 1325
    .local v0, "remaining":I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1327
    const/4 v1, 0x0

    return v1

    .line 1335
    :cond_0
    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7

    .line 1336
    .local v1, "unaligned":I
    move v2, v1

    .local v2, "j":I
    :goto_0
    if-lez v2, :cond_2

    .line 1337
    const-wide/16 v3, 0x1

    add-long/2addr v3, p1

    .end local p1    # "offset":J
    .local v3, "offset":J
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result p1

    if-gez p1, :cond_1

    .line 1338
    sub-int p1, v1, v2

    return p1

    .line 1336
    :cond_1
    add-int/lit8 v2, v2, -0x1

    move-wide p1, v3

    goto :goto_0

    .line 1345
    .end local v2    # "j":I
    .end local v3    # "offset":J
    .restart local p1    # "offset":J
    :cond_2
    sub-int/2addr v0, v1

    .line 1346
    :goto_1
    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong([BJ)J

    move-result-wide v2

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    .line 1347
    const-wide/16 v2, 0x8

    add-long/2addr p1, v2

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    .line 1348
    :cond_3
    sub-int v2, p3, v0

    return v2
.end method

.method private static unsafeIncompleteStateFor(JII)I
    .locals 3
    .param p0, "address"    # J
    .param p2, "byte1"    # I
    .param p3, "remaining"    # I

    .line 1554
    packed-switch p3, :pswitch_data_0

    .line 1566
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1562
    :pswitch_0
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    const-wide/16 v1, 0x1

    add-long/2addr v1, p0

    .line 1563
    invoke-static {v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    .line 1562
    invoke-static {p2, v0, v1}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result v0

    return v0

    .line 1559
    :pswitch_1
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    invoke-static {p2, v0}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result v0

    return v0

    .line 1556
    :pswitch_2
    invoke-static {p2}, Lcom/google/protobuf/Utf8;->access$500(I)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static unsafeIncompleteStateFor([BIJI)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "byte1"    # I
    .param p2, "offset"    # J
    .param p4, "remaining"    # I

    .line 1536
    packed-switch p4, :pswitch_data_0

    .line 1548
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1544
    :pswitch_0
    invoke-static {p0, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    const-wide/16 v1, 0x1

    add-long/2addr v1, p2

    .line 1545
    invoke-static {p0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v1

    .line 1544
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result v0

    return v0

    .line 1541
    :pswitch_1
    invoke-static {p0, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v0

    invoke-static {p1, v0}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result v0

    return v0

    .line 1538
    :pswitch_2
    invoke-static {p1}, Lcom/google/protobuf/Utf8;->access$500(I)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .locals 21
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "out"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 1190
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    .line 1191
    .local v4, "outIx":J
    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 1192
    .local v6, "outLimit":J
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 1193
    .local v8, "inLimit":I
    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_d

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_d

    .line 1201
    const/4 v11, 0x0

    .line 1202
    .local v11, "inIx":I
    :goto_0
    const/16 v12, 0x80

    const-wide/16 v13, 0x1

    if-ge v11, v8, :cond_1

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    move/from16 v16, v15

    .local v16, "c":C
    if-ge v15, v12, :cond_0

    .line 1203
    add-long/2addr v13, v4

    move/from16 v15, v16

    .end local v4    # "outIx":J
    .end local v16    # "c":C
    .local v13, "outIx":J
    .local v15, "c":C
    int-to-byte v12, v15

    invoke-static {v1, v4, v5, v12}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1202
    nop

    .end local v15    # "c":C
    add-int/lit8 v11, v11, 0x1

    move-wide v4, v13

    goto :goto_0

    .end local v13    # "outIx":J
    .restart local v4    # "outIx":J
    .restart local v16    # "c":C
    :cond_0
    move/from16 v15, v16

    .line 1205
    .end local v16    # "c":C
    :cond_1
    if-ne v11, v8, :cond_2

    .line 1207
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v9

    sub-long v9, v4, v9

    long-to-int v10, v9

    return v10

    .line 1210
    :cond_2
    :goto_1
    if-ge v11, v8, :cond_c

    .line 1211
    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    .line 1212
    .restart local v15    # "c":C
    if-ge v15, v12, :cond_3

    cmp-long v16, v4, v6

    if-gez v16, :cond_3

    .line 1213
    add-long v16, v4, v13

    .end local v4    # "outIx":J
    .local v16, "outIx":J
    int-to-byte v12, v15

    invoke-static {v1, v4, v5, v12}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide/from16 v4, v16

    const/16 v12, 0x80

    move-wide/from16 v16, v6

    goto/16 :goto_2

    .line 1214
    .end local v16    # "outIx":J
    .restart local v4    # "outIx":J
    :cond_3
    const/16 v12, 0x800

    if-ge v15, v12, :cond_4

    const-wide/16 v16, 0x2

    sub-long v16, v6, v16

    cmp-long v12, v4, v16

    if-gtz v12, :cond_4

    .line 1215
    add-long v2, v4, v13

    .end local v4    # "outIx":J
    .local v2, "outIx":J
    ushr-int/lit8 v12, v15, 0x6

    or-int/lit16 v12, v12, 0x3c0

    int-to-byte v12, v12

    invoke-static {v1, v4, v5, v12}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1216
    add-long v4, v2, v13

    .end local v2    # "outIx":J
    .restart local v4    # "outIx":J
    and-int/lit8 v12, v15, 0x3f

    const/16 v13, 0x80

    or-int/2addr v12, v13

    int-to-byte v12, v12

    invoke-static {v1, v2, v3, v12}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide/from16 v16, v6

    const/16 v12, 0x80

    goto/16 :goto_2

    .line 1217
    :cond_4
    const v2, 0xdfff

    const v3, 0xd800

    if-lt v15, v3, :cond_5

    if-ge v2, v15, :cond_6

    :cond_5
    const-wide/16 v12, 0x3

    sub-long v12, v6, v12

    cmp-long v14, v4, v12

    if-gtz v14, :cond_6

    .line 1219
    const-wide/16 v2, 0x1

    add-long v13, v4, v2

    .end local v4    # "outIx":J
    .restart local v13    # "outIx":J
    ushr-int/lit8 v12, v15, 0xc

    or-int/lit16 v12, v12, 0x1e0

    int-to-byte v12, v12

    invoke-static {v1, v4, v5, v12}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1220
    add-long v4, v13, v2

    .end local v13    # "outIx":J
    .restart local v4    # "outIx":J
    ushr-int/lit8 v12, v15, 0x6

    and-int/lit8 v12, v12, 0x3f

    const/16 v2, 0x80

    or-int/lit16 v3, v12, 0x80

    int-to-byte v3, v3

    invoke-static {v1, v13, v14, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1221
    const-wide/16 v12, 0x1

    add-long v19, v4, v12

    .end local v4    # "outIx":J
    .local v19, "outIx":J
    and-int/lit8 v3, v15, 0x3f

    or-int/2addr v3, v2

    int-to-byte v2, v3

    invoke-static {v1, v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    move-wide/from16 v16, v6

    move-wide/from16 v4, v19

    const/16 v12, 0x80

    goto :goto_2

    .line 1222
    .end local v19    # "outIx":J
    .restart local v4    # "outIx":J
    :cond_6
    const-wide/16 v12, 0x4

    sub-long v12, v6, v12

    cmp-long v14, v4, v12

    if-gtz v14, :cond_9

    .line 1226
    add-int/lit8 v2, v11, 0x1

    if-eq v2, v8, :cond_8

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move v3, v2

    .local v3, "low":C
    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1229
    invoke-static {v15, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    .line 1230
    .local v2, "codePoint":I
    move-wide/from16 v16, v6

    const-wide/16 v12, 0x1

    .end local v6    # "outLimit":J
    .local v16, "outLimit":J
    add-long v6, v4, v12

    .end local v4    # "outIx":J
    .local v6, "outIx":J
    ushr-int/lit8 v14, v2, 0x12

    or-int/lit16 v14, v14, 0xf0

    int-to-byte v14, v14

    invoke-static {v1, v4, v5, v14}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1231
    add-long v4, v6, v12

    .end local v6    # "outIx":J
    .restart local v4    # "outIx":J
    ushr-int/lit8 v14, v2, 0xc

    and-int/lit8 v14, v14, 0x3f

    const/16 v12, 0x80

    or-int/lit16 v13, v14, 0x80

    int-to-byte v13, v13

    invoke-static {v1, v6, v7, v13}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1232
    const-wide/16 v6, 0x1

    add-long v13, v4, v6

    .end local v4    # "outIx":J
    .restart local v13    # "outIx":J
    ushr-int/lit8 v18, v2, 0x6

    and-int/lit8 v6, v18, 0x3f

    or-int/2addr v6, v12

    int-to-byte v6, v6

    invoke-static {v1, v4, v5, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1233
    const-wide/16 v6, 0x1

    add-long v4, v13, v6

    .end local v13    # "outIx":J
    .restart local v4    # "outIx":J
    and-int/lit8 v6, v2, 0x3f

    or-int/2addr v6, v12

    int-to-byte v6, v6

    invoke-static {v1, v13, v14, v6}, Lcom/google/protobuf/UnsafeUtil;->putByte([BJB)V

    .line 1234
    .end local v2    # "codePoint":I
    .end local v3    # "low":C
    nop

    .line 1210
    :goto_2
    nop

    .end local v15    # "c":C
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v6, v16

    const-wide/16 v13, 0x1

    goto/16 :goto_1

    .line 1226
    .end local v16    # "outLimit":J
    .restart local v3    # "low":C
    .local v6, "outLimit":J
    .restart local v15    # "c":C
    :cond_7
    move-wide/from16 v16, v6

    .end local v6    # "outLimit":J
    .restart local v16    # "outLimit":J
    goto :goto_3

    .end local v3    # "low":C
    .end local v16    # "outLimit":J
    .restart local v6    # "outLimit":J
    :cond_8
    move-wide/from16 v16, v6

    .line 1227
    .end local v6    # "outLimit":J
    .restart local v16    # "outLimit":J
    :goto_3
    new-instance v2, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v3, v11, -0x1

    invoke-direct {v2, v3, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v2

    .line 1235
    .end local v16    # "outLimit":J
    .restart local v6    # "outLimit":J
    :cond_9
    move-wide/from16 v16, v6

    .end local v6    # "outLimit":J
    .restart local v16    # "outLimit":J
    if-gt v3, v15, :cond_b

    if-gt v15, v2, :cond_b

    add-int/lit8 v2, v11, 0x1

    if-eq v2, v8, :cond_a

    add-int/lit8 v2, v11, 0x1

    .line 1236
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1238
    :cond_a
    new-instance v2, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v2, v11, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v2

    .line 1241
    :cond_b
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1246
    .end local v15    # "c":C
    .end local v16    # "outLimit":J
    .restart local v6    # "outLimit":J
    :cond_c
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v2

    sub-long v2, v4, v2

    long-to-int v3, v2

    return v3

    .line 1193
    .end local v11    # "inIx":I
    :cond_d
    move-wide/from16 v16, v6

    .line 1195
    .end local v6    # "outLimit":J
    .restart local v16    # "outLimit":J
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, v8, -0x1

    .line 1196
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v6, p3, p4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v2

    :goto_5
    goto :goto_4
.end method

.method encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 21
    .param p1, "in"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/nio/ByteBuffer;

    .line 1251
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {p2 .. p2}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    .line 1252
    .local v2, "address":J
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 1253
    .local v4, "outIx":J
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    .line 1254
    .local v6, "outLimit":J
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 1255
    .local v8, "inLimit":I
    int-to-long v9, v8

    sub-long v11, v6, v4

    const-string v13, " at index "

    const-string v14, "Failed writing "

    cmp-long v15, v9, v11

    if-gtz v15, :cond_d

    .line 1263
    const/4 v9, 0x0

    .line 1264
    .local v9, "inIx":I
    :goto_0
    const/16 v10, 0x80

    const-wide/16 v11, 0x1

    if-ge v9, v8, :cond_1

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    move/from16 v16, v15

    .local v16, "c":C
    if-ge v15, v10, :cond_0

    .line 1265
    add-long/2addr v11, v4

    move/from16 v15, v16

    .end local v4    # "outIx":J
    .end local v16    # "c":C
    .local v11, "outIx":J
    .local v15, "c":C
    int-to-byte v10, v15

    invoke-static {v4, v5, v10}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1264
    nop

    .end local v15    # "c":C
    add-int/lit8 v9, v9, 0x1

    move-wide v4, v11

    goto :goto_0

    .end local v11    # "outIx":J
    .restart local v4    # "outIx":J
    .restart local v16    # "c":C
    :cond_0
    move/from16 v15, v16

    .line 1267
    .end local v16    # "c":C
    :cond_1
    if-ne v9, v8, :cond_2

    .line 1269
    sub-long v10, v4, v2

    long-to-int v11, v10

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1270
    return-void

    .line 1273
    :cond_2
    :goto_1
    if-ge v9, v8, :cond_c

    .line 1274
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    .line 1275
    .restart local v15    # "c":C
    if-ge v15, v10, :cond_3

    cmp-long v16, v4, v6

    if-gez v16, :cond_3

    .line 1276
    add-long v16, v4, v11

    .end local v4    # "outIx":J
    .local v16, "outIx":J
    int-to-byte v10, v15

    invoke-static {v4, v5, v10}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide/from16 v18, v11

    move-object v11, v13

    move-wide/from16 v4, v16

    move-wide/from16 v16, v2

    const/16 v3, 0x80

    goto/16 :goto_2

    .line 1277
    .end local v16    # "outIx":J
    .restart local v4    # "outIx":J
    :cond_3
    const/16 v10, 0x800

    if-ge v15, v10, :cond_4

    const-wide/16 v16, 0x2

    sub-long v16, v6, v16

    cmp-long v10, v4, v16

    if-gtz v10, :cond_4

    .line 1278
    move-wide/from16 v16, v2

    .end local v2    # "address":J
    .local v16, "address":J
    add-long v1, v4, v11

    .end local v4    # "outIx":J
    .local v1, "outIx":J
    ushr-int/lit8 v3, v15, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1279
    add-long v3, v1, v11

    .end local v1    # "outIx":J
    .local v3, "outIx":J
    and-int/lit8 v5, v15, 0x3f

    const/16 v10, 0x80

    or-int/2addr v5, v10

    int-to-byte v5, v5

    invoke-static {v1, v2, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide v4, v3

    move-wide/from16 v18, v11

    move-object v11, v13

    const/16 v3, 0x80

    goto/16 :goto_2

    .line 1277
    .end local v3    # "outIx":J
    .end local v16    # "address":J
    .restart local v2    # "address":J
    .restart local v4    # "outIx":J
    :cond_4
    move-wide/from16 v16, v2

    .line 1280
    .end local v2    # "address":J
    .restart local v16    # "address":J
    const v1, 0xdfff

    const v2, 0xd800

    if-lt v15, v2, :cond_5

    if-ge v1, v15, :cond_6

    :cond_5
    const-wide/16 v19, 0x3

    sub-long v19, v6, v19

    cmp-long v3, v4, v19

    if-gtz v3, :cond_6

    .line 1282
    add-long v1, v4, v11

    .end local v4    # "outIx":J
    .restart local v1    # "outIx":J
    ushr-int/lit8 v3, v15, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-static {v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1283
    add-long v3, v1, v11

    .end local v1    # "outIx":J
    .restart local v3    # "outIx":J
    ushr-int/lit8 v5, v15, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v10, 0x80

    or-int/2addr v5, v10

    int-to-byte v5, v5

    invoke-static {v1, v2, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1284
    add-long v1, v3, v11

    .end local v3    # "outIx":J
    .restart local v1    # "outIx":J
    and-int/lit8 v5, v15, 0x3f

    or-int/2addr v5, v10

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    move-wide v4, v1

    move-wide/from16 v18, v11

    move-object v11, v13

    const/16 v3, 0x80

    goto :goto_2

    .line 1285
    .end local v1    # "outIx":J
    .restart local v4    # "outIx":J
    :cond_6
    const-wide/16 v19, 0x4

    sub-long v19, v6, v19

    cmp-long v3, v4, v19

    if-gtz v3, :cond_9

    .line 1289
    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_8

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v2, v1

    .local v2, "low":C
    invoke-static {v15, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1292
    invoke-static {v15, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 1293
    .local v1, "codePoint":I
    move v10, v2

    .end local v2    # "low":C
    .local v10, "low":C
    add-long v2, v4, v11

    .end local v4    # "outIx":J
    .local v2, "outIx":J
    ushr-int/lit8 v11, v1, 0x12

    or-int/lit16 v11, v11, 0xf0

    int-to-byte v11, v11

    invoke-static {v4, v5, v11}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1294
    const-wide/16 v11, 0x1

    add-long v4, v2, v11

    .end local v2    # "outIx":J
    .restart local v4    # "outIx":J
    ushr-int/lit8 v19, v1, 0xc

    and-int/lit8 v11, v19, 0x3f

    const/16 v12, 0x80

    or-int/2addr v11, v12

    int-to-byte v11, v11

    invoke-static {v2, v3, v11}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1295
    move-object v11, v13

    const-wide/16 v2, 0x1

    add-long v12, v4, v2

    .end local v4    # "outIx":J
    .local v12, "outIx":J
    ushr-int/lit8 v19, v1, 0x6

    and-int/lit8 v2, v19, 0x3f

    const/16 v3, 0x80

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-static {v4, v5, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1296
    const-wide/16 v18, 0x1

    add-long v4, v12, v18

    .end local v12    # "outIx":J
    .restart local v4    # "outIx":J
    and-int/lit8 v2, v1, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-static {v12, v13, v2}, Lcom/google/protobuf/UnsafeUtil;->putByte(JB)V

    .line 1297
    .end local v1    # "codePoint":I
    .end local v10    # "low":C
    nop

    .line 1273
    :goto_2
    nop

    .end local v15    # "c":C
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p2

    move-object v13, v11

    move-wide/from16 v2, v16

    move-wide/from16 v11, v18

    const/16 v10, 0x80

    goto/16 :goto_1

    .line 1289
    .local v2, "low":C
    .restart local v15    # "c":C
    :cond_7
    move v10, v2

    .line 1290
    .end local v2    # "low":C
    :cond_8
    new-instance v1, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v9, -0x1

    invoke-direct {v1, v2, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v1

    .line 1298
    :cond_9
    move-object v11, v13

    if-gt v2, v15, :cond_b

    if-gt v15, v1, :cond_b

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_a

    add-int/lit8 v1, v9, 0x1

    .line 1299
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1301
    :cond_a
    new-instance v1, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v1, v9, v8}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v1

    .line 1304
    :cond_b
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1309
    .end local v15    # "c":C
    .end local v16    # "address":J
    .local v2, "address":J
    :cond_c
    move-wide/from16 v16, v2

    .end local v2    # "address":J
    .restart local v16    # "address":J
    sub-long v1, v4, v16

    long-to-int v2, v1

    move-object/from16 v1, p2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1310
    return-void

    .line 1257
    .end local v9    # "inIx":I
    .end local v16    # "address":J
    .restart local v2    # "address":J
    :cond_d
    move-wide/from16 v16, v2

    move-object v11, v13

    .end local v2    # "address":J
    .restart local v16    # "address":J
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v9, v8, -0x1

    .line 1258
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method partialIsValidUtf8(I[BII)I
    .locals 17
    .param p1, "state"    # I
    .param p2, "bytes"    # [B
    .param p3, "index"    # I
    .param p4, "limit"    # I

    .line 1000
    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    or-int v4, v2, v3

    array-length v5, v1

    sub-int/2addr v5, v3

    or-int/2addr v4, v5

    if-ltz v4, :cond_12

    .line 1004
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    .line 1005
    .local v4, "offset":J
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getArrayBaseOffset()J

    move-result-wide v6

    int-to-long v8, v3

    add-long/2addr v6, v8

    .line 1006
    .local v6, "offsetLimit":J
    if-eqz v0, :cond_11

    .line 1014
    cmp-long v8, v4, v6

    if-ltz v8, :cond_0

    .line 1015
    return v0

    .line 1017
    :cond_0
    int-to-byte v8, v0

    .line 1019
    .local v8, "byte1":I
    const/16 v9, -0x20

    const/4 v10, -0x1

    const/16 v11, -0x41

    const-wide/16 v12, 0x1

    if-ge v8, v9, :cond_3

    .line 1024
    const/16 v9, -0x3e

    if-lt v8, v9, :cond_2

    add-long/2addr v12, v4

    .line 1026
    .end local v4    # "offset":J
    .local v12, "offset":J
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v4

    if-le v4, v11, :cond_1

    move-wide v4, v12

    goto :goto_0

    :cond_1
    move-wide v4, v12

    goto/16 :goto_4

    .line 1027
    .end local v12    # "offset":J
    .restart local v4    # "offset":J
    :cond_2
    :goto_0
    return v10

    .line 1029
    :cond_3
    const/16 v14, -0x10

    if-ge v8, v14, :cond_a

    .line 1033
    shr-int/lit8 v14, v0, 0x8

    xor-int/2addr v14, v10

    int-to-byte v14, v14

    .line 1034
    .local v14, "byte2":I
    if-nez v14, :cond_5

    .line 1035
    add-long v15, v4, v12

    .end local v4    # "offset":J
    .local v15, "offset":J
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v14

    .line 1036
    cmp-long v4, v15, v6

    if-ltz v4, :cond_4

    .line 1037
    invoke-static {v8, v14}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result v4

    return v4

    .line 1036
    :cond_4
    move-wide v4, v15

    .line 1040
    .end local v15    # "offset":J
    .restart local v4    # "offset":J
    :cond_5
    if-gt v14, v11, :cond_9

    const/16 v15, -0x60

    if-ne v8, v9, :cond_6

    if-lt v14, v15, :cond_9

    :cond_6
    const/16 v9, -0x13

    if-ne v8, v9, :cond_7

    if-ge v14, v15, :cond_9

    :cond_7
    add-long/2addr v12, v4

    .line 1046
    .end local v4    # "offset":J
    .restart local v12    # "offset":J
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v4

    if-le v4, v11, :cond_8

    move-wide v4, v12

    goto :goto_1

    .line 1049
    .end local v14    # "byte2":I
    :cond_8
    move-wide v4, v12

    goto :goto_4

    .line 1047
    .end local v12    # "offset":J
    .restart local v4    # "offset":J
    .restart local v14    # "byte2":I
    :cond_9
    :goto_1
    return v10

    .line 1053
    .end local v14    # "byte2":I
    :cond_a
    shr-int/lit8 v9, v0, 0x8

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    .line 1054
    .local v9, "byte2":I
    const/4 v14, 0x0

    .line 1055
    .local v14, "byte3":I
    if-nez v9, :cond_c

    .line 1056
    add-long v15, v4, v12

    .end local v4    # "offset":J
    .restart local v15    # "offset":J
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v9

    .line 1057
    cmp-long v4, v15, v6

    if-ltz v4, :cond_b

    .line 1058
    invoke-static {v8, v9}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result v4

    return v4

    .line 1057
    :cond_b
    move-wide v4, v15

    goto :goto_2

    .line 1061
    .end local v15    # "offset":J
    .restart local v4    # "offset":J
    :cond_c
    shr-int/lit8 v15, v0, 0x10

    int-to-byte v14, v15

    .line 1063
    :goto_2
    if-nez v14, :cond_e

    .line 1064
    add-long v15, v4, v12

    .end local v4    # "offset":J
    .restart local v15    # "offset":J
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v14

    .line 1065
    cmp-long v4, v15, v6

    if-ltz v4, :cond_d

    .line 1066
    invoke-static {v8, v9, v14}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result v4

    return v4

    .line 1065
    :cond_d
    move-wide v4, v15

    .line 1074
    .end local v15    # "offset":J
    .restart local v4    # "offset":J
    :cond_e
    if-gt v9, v11, :cond_10

    shl-int/lit8 v15, v8, 0x1c

    add-int/lit8 v16, v9, 0x70

    add-int v15, v15, v16

    shr-int/lit8 v15, v15, 0x1e

    if-nez v15, :cond_10

    if-gt v14, v11, :cond_10

    add-long/2addr v12, v4

    .line 1083
    .end local v4    # "offset":J
    .restart local v12    # "offset":J
    invoke-static {v1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getByte([BJ)B

    move-result v4

    if-le v4, v11, :cond_f

    move-wide v4, v12

    goto :goto_3

    :cond_f
    move-wide v4, v12

    goto :goto_4

    .line 1084
    .end local v12    # "offset":J
    .restart local v4    # "offset":J
    :cond_10
    :goto_3
    return v10

    .line 1089
    .end local v8    # "byte1":I
    .end local v9    # "byte2":I
    .end local v14    # "byte3":I
    :cond_11
    :goto_4
    sub-long v8, v6, v4

    long-to-int v9, v8

    invoke-static {v1, v4, v5, v9}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8([BJI)I

    move-result v8

    return v8

    .line 1001
    .end local v4    # "offset":J
    .end local v6    # "offsetLimit":J
    :cond_12
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length v5, v1

    .line 1002
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v6, v8, v5

    const/4 v5, 0x2

    aput-object v7, v8, v5

    const-string v5, "Array length=%d, index=%d, limit=%d"

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .locals 15
    .param p1, "state"    # I
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "index"    # I
    .param p4, "limit"    # I

    .line 1095
    move/from16 v0, p1

    move/from16 v1, p3

    or-int v2, v1, p4

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int v3, v3, p4

    or-int/2addr v2, v3

    if-ltz v2, :cond_12

    .line 1099
    invoke-static/range {p2 .. p2}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 1100
    .local v2, "address":J
    sub-int v4, p4, v1

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 1101
    .local v4, "addressLimit":J
    if-eqz v0, :cond_11

    .line 1109
    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 1110
    return v0

    .line 1113
    :cond_0
    int-to-byte v6, v0

    .line 1115
    .local v6, "byte1":I
    const/16 v7, -0x20

    const/4 v8, -0x1

    const/16 v9, -0x41

    const-wide/16 v10, 0x1

    if-ge v6, v7, :cond_3

    .line 1120
    const/16 v7, -0x3e

    if-lt v6, v7, :cond_2

    add-long/2addr v10, v2

    .line 1122
    .end local v2    # "address":J
    .local v10, "address":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    if-le v2, v9, :cond_1

    move-wide v2, v10

    goto :goto_0

    :cond_1
    move-wide v2, v10

    goto/16 :goto_4

    .line 1123
    .end local v10    # "address":J
    .restart local v2    # "address":J
    :cond_2
    :goto_0
    return v8

    .line 1125
    :cond_3
    const/16 v12, -0x10

    if-ge v6, v12, :cond_a

    .line 1129
    shr-int/lit8 v12, v0, 0x8

    xor-int/2addr v12, v8

    int-to-byte v12, v12

    .line 1130
    .local v12, "byte2":I
    if-nez v12, :cond_5

    .line 1131
    add-long v13, v2, v10

    .end local v2    # "address":J
    .local v13, "address":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v12

    .line 1132
    cmp-long v2, v13, v4

    if-ltz v2, :cond_4

    .line 1133
    invoke-static {v6, v12}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result v2

    return v2

    .line 1132
    :cond_4
    move-wide v2, v13

    .line 1136
    .end local v13    # "address":J
    .restart local v2    # "address":J
    :cond_5
    if-gt v12, v9, :cond_9

    const/16 v13, -0x60

    if-ne v6, v7, :cond_6

    if-lt v12, v13, :cond_9

    :cond_6
    const/16 v7, -0x13

    if-ne v6, v7, :cond_7

    if-ge v12, v13, :cond_9

    :cond_7
    add-long/2addr v10, v2

    .line 1142
    .end local v2    # "address":J
    .restart local v10    # "address":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    if-le v2, v9, :cond_8

    move-wide v2, v10

    goto :goto_1

    .line 1145
    .end local v12    # "byte2":I
    :cond_8
    move-wide v2, v10

    goto :goto_4

    .line 1143
    .end local v10    # "address":J
    .restart local v2    # "address":J
    .restart local v12    # "byte2":I
    :cond_9
    :goto_1
    return v8

    .line 1149
    .end local v12    # "byte2":I
    :cond_a
    shr-int/lit8 v7, v0, 0x8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    .line 1150
    .local v7, "byte2":I
    const/4 v12, 0x0

    .line 1151
    .local v12, "byte3":I
    if-nez v7, :cond_c

    .line 1152
    add-long v13, v2, v10

    .end local v2    # "address":J
    .restart local v13    # "address":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v7

    .line 1153
    cmp-long v2, v13, v4

    if-ltz v2, :cond_b

    .line 1154
    invoke-static {v6, v7}, Lcom/google/protobuf/Utf8;->access$000(II)I

    move-result v2

    return v2

    .line 1153
    :cond_b
    move-wide v2, v13

    goto :goto_2

    .line 1157
    .end local v13    # "address":J
    .restart local v2    # "address":J
    :cond_c
    shr-int/lit8 v13, v0, 0x10

    int-to-byte v12, v13

    .line 1159
    :goto_2
    if-nez v12, :cond_e

    .line 1160
    add-long v13, v2, v10

    .end local v2    # "address":J
    .restart local v13    # "address":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v12

    .line 1161
    cmp-long v2, v13, v4

    if-ltz v2, :cond_d

    .line 1162
    invoke-static {v6, v7, v12}, Lcom/google/protobuf/Utf8;->access$100(III)I

    move-result v2

    return v2

    .line 1161
    :cond_d
    move-wide v2, v13

    .line 1170
    .end local v13    # "address":J
    .restart local v2    # "address":J
    :cond_e
    if-gt v7, v9, :cond_10

    shl-int/lit8 v13, v6, 0x1c

    add-int/lit8 v14, v7, 0x70

    add-int/2addr v13, v14

    shr-int/lit8 v13, v13, 0x1e

    if-nez v13, :cond_10

    if-gt v12, v9, :cond_10

    add-long/2addr v10, v2

    .line 1179
    .end local v2    # "address":J
    .restart local v10    # "address":J
    invoke-static {v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    if-le v2, v9, :cond_f

    move-wide v2, v10

    goto :goto_3

    :cond_f
    move-wide v2, v10

    goto :goto_4

    .line 1180
    .end local v10    # "address":J
    .restart local v2    # "address":J
    :cond_10
    :goto_3
    return v8

    .line 1185
    .end local v6    # "byte1":I
    .end local v7    # "byte2":I
    .end local v12    # "byte3":I
    :cond_11
    :goto_4
    sub-long v6, v4, v2

    long-to-int v7, v6

    invoke-static {v2, v3, v7}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8(JI)I

    move-result v6

    return v6

    .line 1096
    .end local v2    # "address":J
    .end local v4    # "addressLimit":J
    :cond_12
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 1097
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    const/4 v3, 0x2

    aput-object v5, v6, v3

    const-string v3, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
