.class Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HTTPSession"
.end annotation


# instance fields
.field private mySocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/net/Socket;)V
    .locals 3
    .param p2, "s"    # Ljava/net/Socket;

    .line 343
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    .line 345
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->-$$Nest$fgetmyExecutor(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NanoHTTPD: getPoolSize() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppInvHTTPD"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->-$$Nest$fgetmyExecutor(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method private decodeHeader(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 10
    .param p1, "in"    # Ljava/io/BufferedReader;
    .param p2, "pre"    # Ljava/util/Properties;
    .param p3, "parms"    # Ljava/util/Properties;
    .param p4, "header"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 520
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "inLine":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 522
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 523
    .local v1, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "400 Bad Request"

    if-nez v2, :cond_1

    .line 524
    :try_start_1
    const-string v2, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {p0, v3, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, "method":Ljava/lang/String;
    const-string v4, "method"

    invoke-virtual {p2, v4, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_2

    .line 530
    const-string v4, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {p0, v3, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 535
    .local v3, "uri":Ljava/lang/String;
    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 536
    .local v4, "qmi":I
    const/4 v5, 0x0

    if-ltz v4, :cond_3

    .line 538
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Properties;)V

    .line 539
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    .line 541
    :cond_3
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 547
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 549
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 550
    .local v6, "line":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 552
    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 553
    .local v7, "p":I
    if-ltz v7, :cond_4

    .line 554
    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p4, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    :cond_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 556
    .end local v7    # "p":I
    goto :goto_1

    .line 559
    .end local v6    # "line":Ljava/lang/String;
    :cond_5
    const-string v5, "uri"

    invoke-virtual {p2, v5, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 564
    nop

    .end local v0    # "inLine":Ljava/lang/String;
    .end local v1    # "st":Ljava/util/StringTokenizer;
    .end local v2    # "method":Ljava/lang/String;
    .end local v3    # "uri":Ljava/lang/String;
    .end local v4    # "qmi":I
    goto :goto_2

    .line 561
    :catch_0
    move-exception v0

    .line 563
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "500 Internal Server Error"

    invoke-direct {p0, v2, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method private decodeMultipartData(Ljava/lang/String;[BLjava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 17
    .param p1, "boundary"    # Ljava/lang/String;
    .param p2, "fbuf"    # [B
    .param p3, "in"    # Ljava/io/BufferedReader;
    .param p4, "parms"    # Ljava/util/Properties;
    .param p5, "files"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 576
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "500 Internal Server Error"

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->getBoundaryPositions([B[B)[I

    move-result-object v0

    .line 577
    .local v0, "bpositions":[I
    const/4 v5, 0x1

    .line 578
    .local v5, "boundarycount":I
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 579
    .local v6, "mpline":Ljava/lang/String;
    :goto_0
    if-eqz v6, :cond_e

    .line 581
    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v8, "400 Bad Request"

    const/4 v9, -0x1

    if-ne v7, v9, :cond_0

    .line 582
    :try_start_1
    const-string v7, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html"

    invoke-direct {v1, v8, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 584
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    .line 585
    .local v7, "item":Ljava/util/Properties;
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 586
    :goto_1
    const/4 v10, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 588
    const/16 v11, 0x3a

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 589
    .local v11, "p":I
    if-eq v11, v9, :cond_1

    .line 590
    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v10, v12}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 592
    .end local v11    # "p":I
    goto :goto_1

    .line 593
    :cond_2
    if-eqz v6, :cond_d

    .line 595
    const-string v11, "content-disposition"

    invoke-virtual {v7, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 596
    .local v11, "contentDisposition":Ljava/lang/String;
    if-nez v11, :cond_3

    .line 598
    const-string v12, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html"

    invoke-direct {v1, v8, v12}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_3
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v12, "; "

    invoke-direct {v8, v11, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .local v8, "st":Ljava/util/StringTokenizer;
    new-instance v12, Ljava/util/Properties;

    invoke-direct {v12}, Ljava/util/Properties;-><init>()V

    .line 602
    .local v12, "disposition":Ljava/util/Properties;
    :goto_2
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 604
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 605
    .local v13, "token":Ljava/lang/String;
    const/16 v14, 0x3d

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 606
    .local v14, "p":I
    if-eq v14, v9, :cond_4

    .line 607
    invoke-virtual {v13, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v10, v14, 0x1

    invoke-virtual {v13, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v15, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .end local v13    # "token":Ljava/lang/String;
    .end local v14    # "p":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 609
    :cond_5
    const-string v10, "name"

    invoke-virtual {v12, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 610
    .local v10, "pname":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-virtual {v10, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 612
    const-string v13, ""

    .line 613
    .local v13, "value":Ljava/lang/String;
    const-string v15, "content-type"

    invoke-virtual {v7, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_9

    .line 614
    :goto_3
    if-eqz v6, :cond_8

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ne v14, v9, :cond_8

    .line 616
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    move-object v6, v14

    .line 617
    if-eqz v6, :cond_7

    .line 619
    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 620
    .local v14, "d":I
    if-ne v14, v9, :cond_6

    .line 621
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v13, v15

    goto :goto_4

    .line 623
    :cond_6
    add-int/lit8 v15, v14, -0x2

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v13, v9

    .line 624
    .end local v14    # "d":I
    :goto_4
    const/4 v9, -0x1

    goto :goto_3

    .line 617
    :cond_7
    const/4 v9, -0x1

    goto :goto_3

    .line 640
    :cond_8
    move-object/from16 v14, p5

    move-object/from16 v16, v0

    goto :goto_5

    .line 629
    :cond_9
    array-length v9, v0

    if-le v5, v9, :cond_a

    .line 630
    const-string v9, "Error processing request"

    invoke-direct {v1, v4, v9}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_a
    add-int/lit8 v9, v5, -0x2

    aget v9, v0, v9

    invoke-direct {v1, v3, v9}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->stripMultipartHeaders([BI)I

    move-result v9

    .line 632
    .local v9, "offset":I
    add-int/lit8 v15, v5, -0x1

    aget v15, v0, v15

    sub-int/2addr v15, v9

    add-int/lit8 v15, v15, -0x4

    invoke-direct {v1, v3, v9, v15}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->saveTmpFile([BII)Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 633
    .local v15, "path":Ljava/lang/String;
    move-object/from16 v14, p5

    :try_start_2
    invoke-virtual {v14, v10, v15}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    move-object/from16 v16, v0

    .end local v0    # "bpositions":[I
    .local v16, "bpositions":[I
    const-string v0, "filename"

    invoke-virtual {v12, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 635
    .end local v13    # "value":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v3, 0x1

    sub-int/2addr v13, v3

    invoke-virtual {v0, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    .line 637
    .end local v0    # "value":Ljava/lang/String;
    .restart local v13    # "value":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 638
    if-eqz v6, :cond_c

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_b

    .line 640
    .end local v9    # "offset":I
    .end local v15    # "path":Ljava/lang/String;
    :cond_c
    :goto_5
    move-object/from16 v3, p4

    :try_start_3
    invoke-virtual {v3, v10, v13}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 644
    .end local v5    # "boundarycount":I
    .end local v6    # "mpline":Ljava/lang/String;
    .end local v7    # "item":Ljava/util/Properties;
    .end local v8    # "st":Ljava/util/StringTokenizer;
    .end local v10    # "pname":Ljava/lang/String;
    .end local v11    # "contentDisposition":Ljava/lang/String;
    .end local v12    # "disposition":Ljava/util/Properties;
    .end local v13    # "value":Ljava/lang/String;
    .end local v16    # "bpositions":[I
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v3, p4

    goto :goto_7

    .line 593
    .local v0, "bpositions":[I
    .restart local v5    # "boundarycount":I
    .restart local v6    # "mpline":Ljava/lang/String;
    .restart local v7    # "item":Ljava/util/Properties;
    :cond_d
    move-object/from16 v3, p4

    move-object/from16 v14, p5

    move-object/from16 v16, v0

    .line 642
    .end local v0    # "bpositions":[I
    .end local v7    # "item":Ljava/util/Properties;
    .restart local v16    # "bpositions":[I
    :goto_6
    move-object/from16 v3, p2

    move-object/from16 v0, v16

    goto/16 :goto_0

    .line 579
    .end local v16    # "bpositions":[I
    .restart local v0    # "bpositions":[I
    :cond_e
    move-object/from16 v3, p4

    move-object/from16 v14, p5

    move-object/from16 v16, v0

    .line 647
    .end local v0    # "bpositions":[I
    .end local v5    # "boundarycount":I
    .end local v6    # "mpline":Ljava/lang/String;
    goto :goto_8

    .line 644
    :catch_2
    move-exception v0

    move-object/from16 v3, p4

    move-object/from16 v14, p5

    .line 646
    .local v0, "ioe":Ljava/io/IOException;
    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_8
    return-void
.end method

.method private decodeParms(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 5
    .param p1, "parms"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 772
    if-nez p1, :cond_0

    .line 773
    return-void

    .line 775
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "&"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    .local v0, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 778
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 779
    .local v1, "e":Ljava/lang/String;
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 780
    .local v2, "sep":I
    if-ltz v2, :cond_1

    .line 781
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    .line 782
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 781
    invoke-virtual {p2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    .end local v1    # "e":Ljava/lang/String;
    .end local v2    # "sep":I
    :cond_1
    goto :goto_0

    .line 784
    :cond_2
    return-void
.end method

.method private decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 735
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 736
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 738
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 739
    .local v2, "c":C
    sparse-switch v2, :sswitch_data_0

    .line 749
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 742
    :sswitch_0
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 743
    goto :goto_1

    .line 745
    :sswitch_1
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 746
    add-int/lit8 v1, v1, 0x2

    .line 747
    nop

    .line 736
    .end local v2    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 753
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 755
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "400 Bad Request"

    const-string v2, "BAD REQUEST: Bad percent-encoding."

    invoke-direct {p0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const/4 v1, 0x0

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method private saveTmpFile([BII)Ljava/lang/String;
    .locals 7
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 694
    const-string v0, ""

    .line 695
    .local v0, "path":Ljava/lang/String;
    if-lez p3, :cond_0

    .line 697
    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, "tmpdir":Ljava/lang/String;
    :try_start_0
    const-string v2, "NanoHTTPD"

    const-string v3, ""

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 700
    .local v2, "temp":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 701
    .local v3, "fstream":Ljava/io/OutputStream;
    invoke-virtual {v3, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 702
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 703
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 706
    .end local v2    # "temp":Ljava/io/File;
    .end local v3    # "fstream":Ljava/io/OutputStream;
    goto :goto_0

    .line 704
    :catch_0
    move-exception v2

    .line 705
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myErr:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 708
    .end local v1    # "tmpdir":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v0
.end method

.method private sendError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 792
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "text/plain"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V

    .line 793
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V
    .locals 8
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/util/Properties;
    .param p4, "data"    # Ljava/io/InputStream;

    .line 803
    if-eqz p1, :cond_8

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 807
    .local v0, "out":Ljava/io/OutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 808
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP/1.0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    const-string v2, "\r\n"

    if-eqz p2, :cond_0

    .line 811
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 813
    :cond_0
    if-eqz p3, :cond_1

    const-string v3, "Date"

    invoke-virtual {p3, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 814
    :cond_1
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->-$$Nest$sfgetgmtFrmt()Ljava/text/SimpleDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Date: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 816
    :cond_2
    if-eqz p3, :cond_3

    .line 818
    invoke-virtual {p3}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 819
    .local v3, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 821
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 822
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 823
    .local v5, "value":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 824
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_0

    .line 827
    .end local v3    # "e":Ljava/util/Enumeration;
    :cond_3
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 830
    if-eqz p4, :cond_6

    .line 832
    invoke-virtual {p4}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 833
    .local v2, "pending":I
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->-$$Nest$sfgettheBufferSize()I

    move-result v3

    new-array v3, v3, [B

    .line 834
    .local v3, "buff":[B
    :goto_1
    if-lez v2, :cond_6

    .line 836
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->-$$Nest$sfgettheBufferSize()I

    move-result v4

    if-le v2, v4, :cond_4

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->-$$Nest$sfgettheBufferSize()I

    move-result v4

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    const/4 v5, 0x0

    invoke-virtual {p4, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 837
    .local v4, "read":I
    if-gtz v4, :cond_5

    goto :goto_3

    .line 838
    :cond_5
    invoke-virtual {v0, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 839
    sub-int/2addr v2, v4

    .line 840
    .end local v4    # "read":I
    goto :goto_1

    .line 842
    .end local v2    # "pending":I
    .end local v3    # "buff":[B
    :cond_6
    :goto_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 843
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 844
    if-eqz p4, :cond_7

    .line 845
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V

    .line 851
    .end local v0    # "out":Ljava/io/OutputStream;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_7
    goto :goto_5

    .line 847
    :catch_0
    move-exception v0

    goto :goto_4

    .line 804
    :cond_8
    new-instance v0, Ljava/lang/Error;

    const-string v1, "sendResponse(): Status can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .end local p1    # "status":Ljava/lang/String;
    .end local p2    # "mime":Ljava/lang/String;
    .end local p3    # "header":Ljava/util/Properties;
    .end local p4    # "data":Ljava/io/InputStream;
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 850
    .local v0, "ioe":Ljava/io/IOException;
    .restart local p1    # "status":Ljava/lang/String;
    .restart local p2    # "mime":Ljava/lang/String;
    .restart local p3    # "header":Ljava/util/Properties;
    .restart local p4    # "data":Ljava/io/InputStream;
    :goto_4
    :try_start_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v1

    .line 852
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_5
    return-void
.end method

.method private stripMultipartHeaders([BI)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .line 718
    const/4 v0, 0x0

    .line 719
    .local v0, "i":I
    move v0, p2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 721
    aget-byte v1, p1, v0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p1, v0

    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p1, v0

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p1, v0

    if-ne v1, v3, :cond_0

    .line 722
    goto :goto_1

    .line 719
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 724
    :cond_1
    :goto_1
    add-int/lit8 v1, v0, 0x1

    return v1
.end method


# virtual methods
.method public getBoundaryPositions([B[B)[I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "boundary"    # [B

    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, "matchcount":I
    const/4 v1, -0x1

    .line 657
    .local v1, "matchbyte":I
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 658
    .local v2, "matchbytes":Ljava/util/Vector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 660
    aget-byte v4, p1, v3

    aget-byte v5, p2, v0

    if-ne v4, v5, :cond_1

    .line 662
    if-nez v0, :cond_0

    .line 663
    move v1, v3

    .line 664
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 665
    array-length v4, p2

    if-ne v0, v4, :cond_2

    .line 667
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 668
    const/4 v0, 0x0

    .line 669
    const/4 v1, -0x1

    goto :goto_1

    .line 674
    :cond_1
    sub-int/2addr v3, v0

    .line 675
    const/4 v0, 0x0

    .line 676
    const/4 v1, -0x1

    .line 658
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 679
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 680
    .local v3, "ret":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 682
    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4

    .line 680
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 684
    .end local v4    # "i":I
    :cond_4
    return-object v3
.end method

.method public run()V
    .locals 34

    .line 353
    move-object/from16 v7, p0

    const-string v1, ""

    const-string v8, "500 Internal Server Error"

    :try_start_0
    iget-object v0, v7, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v9, v0

    .line 354
    .local v9, "is":Ljava/io/InputStream;
    if-nez v9, :cond_0

    return-void

    .line 359
    :cond_0
    const/16 v10, 0x2000

    .line 360
    .local v10, "bufsize":I
    new-array v0, v10, [B

    move-object v2, v0

    .line 361
    .local v2, "buf":[B
    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v4, v0

    .line 362
    .local v4, "rlen":I
    if-gtz v4, :cond_1

    return-void

    .line 365
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object v11, v0

    .line 366
    .local v11, "hbis":Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v12, v0

    .line 367
    .local v12, "hin":Ljava/io/BufferedReader;
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v13, v0

    .line 368
    .local v13, "pre":Ljava/util/Properties;
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v14, v0

    .line 369
    .local v14, "parms":Ljava/util/Properties;
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v6, v0

    .line 370
    .local v6, "header":Ljava/util/Properties;
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v5, v0

    .line 373
    .local v5, "files":Ljava/util/Properties;
    invoke-direct {v7, v12, v13, v14, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodeHeader(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V

    .line 374
    const-string v0, "method"

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 375
    .local v15, "method":Ljava/lang/String;
    const-string v0, "uri"

    invoke-virtual {v13, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v15

    .end local v15    # "method":Ljava/lang/String;
    .local v3, "method":Ljava/lang/String;
    move-object v15, v0

    .line 377
    .local v15, "uri":Ljava/lang/String;
    const-wide v17, 0x7fffffffffffffffL

    .line 378
    .local v17, "size":J
    const-string v0, "content-length"

    invoke-virtual {v6, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v21, v0

    .line 379
    .local v21, "contentLength":Ljava/lang/String;
    if-eqz v21, :cond_2

    .line 381
    :try_start_1
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v22, v10

    move-object/from16 v23, v11

    .end local v10    # "bufsize":I
    .end local v11    # "hbis":Ljava/io/ByteArrayInputStream;
    .local v22, "bufsize":I
    .local v23, "hbis":Ljava/io/ByteArrayInputStream;
    int-to-long v10, v0

    .line 382
    .end local v17    # "size":J
    .local v10, "size":J
    move-wide/from16 v17, v10

    goto :goto_0

    .end local v22    # "bufsize":I
    .end local v23    # "hbis":Ljava/io/ByteArrayInputStream;
    .local v10, "bufsize":I
    .restart local v11    # "hbis":Ljava/io/ByteArrayInputStream;
    .restart local v17    # "size":J
    :catch_0
    move-exception v0

    move/from16 v22, v10

    move-object/from16 v23, v11

    .end local v10    # "bufsize":I
    .end local v11    # "hbis":Ljava/io/ByteArrayInputStream;
    .restart local v22    # "bufsize":I
    .restart local v23    # "hbis":Ljava/io/ByteArrayInputStream;
    goto :goto_0

    .line 379
    .end local v22    # "bufsize":I
    .end local v23    # "hbis":Ljava/io/ByteArrayInputStream;
    .restart local v10    # "bufsize":I
    .restart local v11    # "hbis":Ljava/io/ByteArrayInputStream;
    :cond_2
    move/from16 v22, v10

    move-object/from16 v23, v11

    .line 387
    .end local v10    # "bufsize":I
    .end local v11    # "hbis":Ljava/io/ByteArrayInputStream;
    .restart local v22    # "bufsize":I
    .restart local v23    # "hbis":Ljava/io/ByteArrayInputStream;
    :goto_0
    const/4 v0, 0x0

    .line 388
    .local v0, "splitbyte":I
    const/4 v10, 0x0

    .line 389
    .local v10, "sbfound":Z
    :goto_1
    if-ge v0, v4, :cond_4

    .line 391
    :try_start_2
    aget-byte v11, v2, v0

    move/from16 v19, v10

    .end local v10    # "sbfound":Z
    .local v19, "sbfound":Z
    const/16 v10, 0xd

    if-ne v11, v10, :cond_3

    add-int/lit8 v0, v0, 0x1

    aget-byte v11, v2, v0

    const/16 v10, 0xa

    if-ne v11, v10, :cond_3

    add-int/lit8 v0, v0, 0x1

    aget-byte v11, v2, v0

    const/16 v10, 0xd

    if-ne v11, v10, :cond_3

    add-int/lit8 v0, v0, 0x1

    aget-byte v10, v2, v0

    const/16 v11, 0xa

    if-ne v10, v11, :cond_3

    .line 392
    const/4 v10, 0x1

    .line 393
    .end local v19    # "sbfound":Z
    .restart local v10    # "sbfound":Z
    goto :goto_2

    .line 395
    .end local v10    # "sbfound":Z
    .restart local v19    # "sbfound":Z
    :cond_3
    add-int/lit8 v0, v0, 0x1

    move/from16 v10, v19

    goto :goto_1

    .line 389
    .end local v19    # "sbfound":Z
    .restart local v10    # "sbfound":Z
    :cond_4
    move/from16 v19, v10

    .line 397
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 401
    const-string v11, "PUT"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 403
    const-string v11, "upload"

    move-object/from16 v24, v12

    .end local v12    # "hin":Ljava/io/BufferedReader;
    .local v24, "hin":Ljava/io/BufferedReader;
    const-string v12, "bin"

    invoke-static {v11, v12}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 404
    .local v11, "tmpfile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->deleteOnExit()V

    .line 405
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 406
    .local v12, "f":Ljava/io/OutputStream;
    move-object/from16 v19, v12

    .end local v12    # "f":Ljava/io/OutputStream;
    .local v19, "f":Ljava/io/OutputStream;
    const-string v12, "content"

    move-object/from16 v25, v13

    .end local v13    # "pre":Ljava/util/Properties;
    .local v25, "pre":Ljava/util/Properties;
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    move-object/from16 v12, v19

    .end local v11    # "tmpfile":Ljava/io/File;
    goto :goto_3

    .line 410
    .end local v19    # "f":Ljava/io/OutputStream;
    .end local v24    # "hin":Ljava/io/BufferedReader;
    .end local v25    # "pre":Ljava/util/Properties;
    .local v12, "hin":Ljava/io/BufferedReader;
    .restart local v13    # "pre":Ljava/util/Properties;
    :cond_5
    move-object/from16 v24, v12

    move-object/from16 v25, v13

    .end local v12    # "hin":Ljava/io/BufferedReader;
    .end local v13    # "pre":Ljava/util/Properties;
    .restart local v24    # "hin":Ljava/io/BufferedReader;
    .restart local v25    # "pre":Ljava/util/Properties;
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v12, v11

    .line 412
    .local v12, "f":Ljava/io/OutputStream;
    :goto_3
    if-ge v0, v4, :cond_6

    sub-int v11, v4, v0

    invoke-virtual {v12, v2, v0, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 420
    :cond_6
    if-ge v0, v4, :cond_7

    .line 421
    sub-int v11, v4, v0

    add-int/lit8 v11, v11, 0x1

    move v13, v4

    move-object/from16 v19, v5

    .end local v4    # "rlen":I
    .end local v5    # "files":Ljava/util/Properties;
    .local v13, "rlen":I
    .local v19, "files":Ljava/util/Properties;
    int-to-long v4, v11

    sub-long v17, v17, v4

    goto :goto_4

    .line 422
    .end local v13    # "rlen":I
    .end local v19    # "files":Ljava/util/Properties;
    .restart local v4    # "rlen":I
    .restart local v5    # "files":Ljava/util/Properties;
    :cond_7
    move v13, v4

    move-object/from16 v19, v5

    .end local v4    # "rlen":I
    .end local v5    # "files":Ljava/util/Properties;
    .restart local v13    # "rlen":I
    .restart local v19    # "files":Ljava/util/Properties;
    if-eqz v10, :cond_8

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v11, v17, v4

    if-nez v11, :cond_9

    .line 423
    :cond_8
    const-wide/16 v17, 0x0

    .line 426
    :cond_9
    :goto_4
    const/16 v4, 0x200

    new-array v5, v4, [B

    move-object v11, v5

    move-wide/from16 v26, v17

    .line 427
    .end local v2    # "buf":[B
    .end local v17    # "size":J
    .local v11, "buf":[B
    .local v26, "size":J
    :goto_5
    if-ltz v13, :cond_b

    const-wide/16 v17, 0x0

    cmp-long v2, v26, v17

    if-lez v2, :cond_b

    .line 429
    const/4 v2, 0x0

    invoke-virtual {v9, v11, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v13, v5

    .line 430
    int-to-long v4, v13

    sub-long v26, v26, v4

    .line 431
    if-lez v13, :cond_a

    .line 432
    invoke-virtual {v12, v11, v2, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 427
    :cond_a
    const/16 v4, 0x200

    goto :goto_5

    .line 437
    :cond_b
    const-string v2, "POST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 440
    move-object v2, v12

    check-cast v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object v5, v2

    .line 443
    .local v5, "fbuf":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v2

    .line 444
    .local v4, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/BufferedReader;

    move/from16 v28, v0

    .end local v0    # "splitbyte":I
    .local v28, "splitbyte":I
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    .line 446
    .local v0, "in":Ljava/io/BufferedReader;
    move-object v2, v1

    .line 447
    .local v2, "contentType":Ljava/lang/String;
    move-object/from16 v18, v2

    .end local v2    # "contentType":Ljava/lang/String;
    .local v18, "contentType":Ljava/lang/String;
    const-string v2, "content-type"

    invoke-virtual {v6, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, "contentTypeHeader":Ljava/lang/String;
    move-object/from16 v20, v3

    .end local v3    # "method":Ljava/lang/String;
    .local v20, "method":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    move-object/from16 v29, v4

    .end local v4    # "bin":Ljava/io/ByteArrayInputStream;
    .local v29, "bin":Ljava/io/ByteArrayInputStream;
    const-string v4, "; "

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 450
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .end local v18    # "contentType":Ljava/lang/String;
    .local v4, "contentType":Ljava/lang/String;
    goto :goto_6

    .line 449
    .end local v4    # "contentType":Ljava/lang/String;
    .restart local v18    # "contentType":Ljava/lang/String;
    :cond_c
    move-object/from16 v4, v18

    .line 453
    .end local v18    # "contentType":Ljava/lang/String;
    .restart local v4    # "contentType":Ljava/lang/String;
    :goto_6
    move-object/from16 v18, v2

    .end local v2    # "contentTypeHeader":Ljava/lang/String;
    .local v18, "contentTypeHeader":Ljava/lang/String;
    const-string v2, "multipart/form-data"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 456
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v2, "400 Bad Request"

    if-nez v1, :cond_d

    .line 457
    :try_start_3
    const-string v1, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    invoke-direct {v7, v2, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_d
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "boundaryExp":Ljava/lang/String;
    move-object/from16 v30, v3

    .end local v3    # "st":Ljava/util/StringTokenizer;
    .local v30, "st":Ljava/util/StringTokenizer;
    new-instance v3, Ljava/util/StringTokenizer;

    move-object/from16 v31, v4

    .end local v4    # "contentType":Ljava/lang/String;
    .local v31, "contentType":Ljava/lang/String;
    const-string v4, "="

    invoke-direct {v3, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v3

    .line 460
    .end local v30    # "st":Ljava/util/StringTokenizer;
    .local v16, "st":Ljava/util/StringTokenizer;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_e

    .line 461
    const-string v3, "BAD REQUEST: Content type is multipart/form-data but boundary syntax error. Usage: GET /example/file.html"

    invoke-direct {v7, v2, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 463
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "boundary":Ljava/lang/String;
    move-object/from16 v17, v1

    .end local v1    # "boundaryExp":Ljava/lang/String;
    .local v17, "boundaryExp":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v4, v20

    .end local v20    # "method":Ljava/lang/String;
    .local v4, "method":Ljava/lang/String;
    move-object v3, v5

    move/from16 v32, v10

    move-object/from16 v20, v29

    move-object/from16 v29, v31

    move-object v10, v4

    .end local v4    # "method":Ljava/lang/String;
    .end local v31    # "contentType":Ljava/lang/String;
    .local v10, "method":Ljava/lang/String;
    .local v20, "bin":Ljava/io/ByteArrayInputStream;
    .local v29, "contentType":Ljava/lang/String;
    .local v32, "sbfound":Z
    move-object v4, v0

    move-object/from16 v31, v19

    move-object/from16 v19, v5

    .end local v5    # "fbuf":[B
    .local v19, "fbuf":[B
    .local v31, "files":Ljava/util/Properties;
    move-object v5, v14

    move-object/from16 v33, v6

    .end local v6    # "header":Ljava/util/Properties;
    .local v33, "header":Ljava/util/Properties;
    move-object/from16 v6, v31

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodeMultipartData(Ljava/lang/String;[BLjava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;)V

    .line 466
    .end local v2    # "boundary":Ljava/lang/String;
    .end local v17    # "boundaryExp":Ljava/lang/String;
    move-object/from16 v3, v16

    goto :goto_8

    .line 470
    .end local v16    # "st":Ljava/util/StringTokenizer;
    .end local v31    # "files":Ljava/util/Properties;
    .end local v32    # "sbfound":Z
    .end local v33    # "header":Ljava/util/Properties;
    .restart local v3    # "st":Ljava/util/StringTokenizer;
    .local v4, "contentType":Ljava/lang/String;
    .restart local v5    # "fbuf":[B
    .restart local v6    # "header":Ljava/util/Properties;
    .local v10, "sbfound":Z
    .local v19, "files":Ljava/util/Properties;
    .local v20, "method":Ljava/lang/String;
    .local v29, "bin":Ljava/io/ByteArrayInputStream;
    :cond_f
    move-object/from16 v30, v3

    move-object/from16 v33, v6

    move/from16 v32, v10

    move-object/from16 v31, v19

    move-object/from16 v10, v20

    move-object/from16 v20, v29

    move-object/from16 v29, v4

    move-object/from16 v19, v5

    .line 471
    .end local v3    # "st":Ljava/util/StringTokenizer;
    .end local v4    # "contentType":Ljava/lang/String;
    .end local v5    # "fbuf":[B
    .end local v6    # "header":Ljava/util/Properties;
    .local v1, "postLine":Ljava/lang/String;
    .local v10, "method":Ljava/lang/String;
    .local v19, "fbuf":[B
    .local v20, "bin":Ljava/io/ByteArrayInputStream;
    .local v29, "contentType":Ljava/lang/String;
    .restart local v30    # "st":Ljava/util/StringTokenizer;
    .restart local v31    # "files":Ljava/util/Properties;
    .restart local v32    # "sbfound":Z
    .restart local v33    # "header":Ljava/util/Properties;
    const/16 v2, 0x200

    new-array v2, v2, [C

    .line 472
    .local v2, "pbuf":[C
    invoke-virtual {v0, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    .line 473
    .local v3, "read":I
    :goto_7
    if-ltz v3, :cond_10

    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 475
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 476
    invoke-virtual {v0, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    move v3, v5

    goto :goto_7

    .line 478
    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 479
    invoke-direct {v7, v1, v14}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Properties;)V

    move-object/from16 v3, v30

    .line 481
    .end local v1    # "postLine":Ljava/lang/String;
    .end local v2    # "pbuf":[C
    .end local v30    # "st":Ljava/util/StringTokenizer;
    .local v3, "st":Ljava/util/StringTokenizer;
    :goto_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 482
    .end local v0    # "in":Ljava/io/BufferedReader;
    .end local v3    # "st":Ljava/util/StringTokenizer;
    .end local v18    # "contentTypeHeader":Ljava/lang/String;
    .end local v19    # "fbuf":[B
    .end local v20    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v29    # "contentType":Ljava/lang/String;
    goto :goto_9

    .line 483
    .end local v28    # "splitbyte":I
    .end local v31    # "files":Ljava/util/Properties;
    .end local v32    # "sbfound":Z
    .end local v33    # "header":Ljava/util/Properties;
    .local v0, "splitbyte":I
    .local v3, "method":Ljava/lang/String;
    .restart local v6    # "header":Ljava/util/Properties;
    .local v10, "sbfound":Z
    .local v19, "files":Ljava/util/Properties;
    :cond_11
    move/from16 v28, v0

    move-object/from16 v33, v6

    move/from16 v32, v10

    move-object/from16 v31, v19

    move-object v10, v3

    .end local v0    # "splitbyte":I
    .end local v3    # "method":Ljava/lang/String;
    .end local v6    # "header":Ljava/util/Properties;
    .end local v19    # "files":Ljava/util/Properties;
    .local v10, "method":Ljava/lang/String;
    .restart local v28    # "splitbyte":I
    .restart local v31    # "files":Ljava/util/Properties;
    .restart local v32    # "sbfound":Z
    .restart local v33    # "header":Ljava/util/Properties;
    const-string v0, "PUT "

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 485
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    .line 489
    :cond_12
    :goto_9
    iget-object v0, v7, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    iget-object v1, v7, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    move-object v2, v14

    .end local v14    # "parms":Ljava/util/Properties;
    .local v2, "parms":Ljava/util/Properties;
    move-object v14, v0

    move-object/from16 v16, v10

    move-object/from16 v17, v33

    move-object/from16 v18, v2

    move-object/from16 v19, v31

    move-object/from16 v20, v1

    invoke-virtual/range {v14 .. v20}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    .line 490
    .local v0, "r":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    if-nez v0, :cond_13

    .line 491
    const-string v1, "SERVER INTERNAL ERROR: Serve() returned a null response."

    invoke-direct {v7, v8, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 493
    :cond_13
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->status:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->header:Ljava/util/Properties;

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-direct {v7, v1, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V

    .line 495
    :goto_a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v0    # "r":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v2    # "parms":Ljava/util/Properties;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "method":Ljava/lang/String;
    .end local v11    # "buf":[B
    .end local v12    # "f":Ljava/io/OutputStream;
    .end local v13    # "rlen":I
    .end local v15    # "uri":Ljava/lang/String;
    .end local v21    # "contentLength":Ljava/lang/String;
    .end local v22    # "bufsize":I
    .end local v23    # "hbis":Ljava/io/ByteArrayInputStream;
    .end local v24    # "hin":Ljava/io/BufferedReader;
    .end local v25    # "pre":Ljava/util/Properties;
    .end local v26    # "size":J
    .end local v28    # "splitbyte":I
    .end local v31    # "files":Ljava/util/Properties;
    .end local v32    # "sbfound":Z
    .end local v33    # "header":Ljava/util/Properties;
    goto :goto_c

    .line 505
    :catch_1
    move-exception v0

    goto :goto_d

    .line 497
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 501
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_b

    .line 503
    :catchall_0
    move-exception v0

    :goto_b
    nop

    .line 508
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_c
    nop

    .line 509
    :goto_d
    return-void
.end method
