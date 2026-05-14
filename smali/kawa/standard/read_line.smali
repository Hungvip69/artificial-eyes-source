.class public Lkawa/standard/read_line;
.super Ljava/lang/Object;
.source "read_line.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Lgnu/text/LineBufferedReader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 16
    .param p0, "in"    # Lgnu/text/LineBufferedReader;
    .param p1, "handling"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v2

    .line 12
    .local v2, "ch":I
    if-gez v2, :cond_0

    .line 13
    sget-object v3, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    return-object v3

    .line 14
    :cond_0
    iget v3, v0, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 15
    .local v3, "start":I
    move v5, v3

    .line 16
    .local v5, "pos":I
    iget v6, v0, Lgnu/text/LineBufferedReader;->limit:I

    .line 17
    .local v6, "limit":I
    iget-object v7, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 18
    .local v7, "buffer":[C
    const/4 v8, -0x1

    .line 21
    .local v8, "delim":I
    :goto_0
    const-string v9, "concat"

    const-string v10, "peek"

    const/16 v11, 0xd

    const/4 v12, 0x2

    const/16 v13, 0xa

    if-ge v5, v6, :cond_8

    .line 23
    add-int/lit8 v14, v5, 0x1

    .end local v5    # "pos":I
    .local v14, "pos":I
    aget-char v2, v7, v5

    .line 24
    if-eq v2, v11, :cond_2

    if-ne v2, v13, :cond_1

    goto :goto_1

    :cond_1
    move v5, v14

    goto :goto_0

    .line 26
    :cond_2
    :goto_1
    add-int/lit8 v5, v14, -0x1

    .line 27
    .end local v14    # "pos":I
    .restart local v5    # "pos":I
    const-string v14, "trim"

    if-eq v1, v14, :cond_4

    if-ne v1, v10, :cond_3

    goto :goto_2

    .line 39
    :cond_3
    if-ne v1, v9, :cond_8

    if-ne v2, v13, :cond_8

    .line 41
    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lgnu/text/LineBufferedReader;->pos:I

    goto :goto_4

    .line 29
    :cond_4
    :goto_2
    if-ne v1, v10, :cond_5

    .line 30
    const/4 v8, 0x0

    .line 31
    :cond_5
    if-ne v2, v13, :cond_6

    .line 32
    const/4 v4, 0x1

    move v8, v4

    .end local v8    # "delim":I
    .local v4, "delim":I
    goto :goto_3

    .line 33
    .end local v4    # "delim":I
    .restart local v8    # "delim":I
    :cond_6
    add-int/lit8 v14, v5, 0x1

    if-ge v14, v6, :cond_8

    .line 34
    add-int/lit8 v9, v5, 0x1

    aget-char v9, v7, v9

    if-ne v9, v13, :cond_7

    const/4 v4, 0x2

    :cond_7
    move v8, v4

    .line 37
    :goto_3
    add-int v4, v5, v8

    iput v4, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 45
    :goto_4
    new-instance v4, Lgnu/lists/FString;

    sub-int v9, v5, v3

    invoke-direct {v4, v7, v3, v9}, Lgnu/lists/FString;-><init>([CII)V

    return-object v4

    .line 51
    :cond_8
    new-instance v14, Ljava/lang/StringBuffer;

    const/16 v15, 0x64

    invoke-direct {v14, v15}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 52
    .local v14, "sbuf":Ljava/lang/StringBuffer;
    if-le v5, v3, :cond_9

    .line 53
    sub-int v15, v5, v3

    invoke-virtual {v14, v7, v3, v15}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 54
    :cond_9
    iput v5, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 55
    const-string v15, "split"

    if-ne v1, v10, :cond_a

    const/16 v9, 0x50

    goto :goto_6

    :cond_a
    if-eq v1, v9, :cond_c

    if-ne v1, v15, :cond_b

    goto :goto_5

    :cond_b
    const/16 v9, 0x49

    goto :goto_6

    :cond_c
    :goto_5
    const/16 v9, 0x41

    .line 58
    .local v9, "mode":C
    :goto_6
    invoke-virtual {v0, v14, v9}, Lgnu/text/LineBufferedReader;->readLine(Ljava/lang/StringBuffer;C)V

    .line 59
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    .line 60
    .local v10, "length":I
    if-ne v1, v15, :cond_11

    .line 62
    if-nez v10, :cond_d

    .line 63
    const/4 v8, 0x0

    goto :goto_8

    .line 66
    :cond_d
    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v14, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    .line 67
    .local v4, "last":C
    if-ne v4, v11, :cond_e

    .line 68
    const/4 v8, 0x1

    goto :goto_7

    .line 69
    :cond_e
    if-eq v4, v13, :cond_f

    .line 70
    const/4 v8, 0x0

    goto :goto_7

    .line 71
    :cond_f
    if-le v4, v12, :cond_10

    add-int/lit8 v13, v10, -0x2

    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v13

    if-ne v13, v11, :cond_10

    .line 72
    const/4 v8, 0x2

    goto :goto_7

    .line 74
    :cond_10
    const/4 v8, 0x1

    .line 75
    :goto_7
    sub-int/2addr v10, v8

    .line 78
    .end local v4    # "last":C
    :cond_11
    :goto_8
    new-instance v4, Lgnu/lists/FString;

    const/4 v11, 0x0

    invoke-direct {v4, v14, v11, v10}, Lgnu/lists/FString;-><init>(Ljava/lang/StringBuffer;II)V

    .line 79
    .local v4, "dataStr":Lgnu/lists/FString;
    if-ne v1, v15, :cond_12

    .line 81
    new-instance v13, Lgnu/lists/FString;

    sub-int v15, v10, v8

    invoke-direct {v13, v14, v15, v8}, Lgnu/lists/FString;-><init>(Ljava/lang/StringBuffer;II)V

    .line 82
    .local v13, "delimStr":Lgnu/lists/FString;
    new-array v12, v12, [Ljava/lang/Object;

    aput-object v4, v12, v11

    const/4 v11, 0x1

    aput-object v13, v12, v11

    move-object v11, v12

    .line 83
    .local v11, "values":[Ljava/lang/Object;
    new-instance v12, Lgnu/mapping/Values;

    invoke-direct {v12, v11}, Lgnu/mapping/Values;-><init>([Ljava/lang/Object;)V

    return-object v12

    .line 86
    .end local v11    # "values":[Ljava/lang/Object;
    .end local v13    # "delimStr":Lgnu/lists/FString;
    :cond_12
    return-object v4
.end method
