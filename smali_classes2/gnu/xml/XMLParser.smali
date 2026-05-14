.class public Lgnu/xml/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# static fields
.field private static final ATTRIBUTE_SEEN_EQ_STATE:I = 0xb

.field private static final ATTRIBUTE_SEEN_NAME_STATE:I = 0x8

.field static final BAD_ENCODING_SYNTAX:Ljava/lang/String; = "bad \'encoding\' declaration"

.field static final BAD_STANDALONE_SYNTAX:Ljava/lang/String; = "bad \'standalone\' declaration"

.field private static final BEGIN_ELEMENT_STATE:I = 0x2

.field private static final DOCTYPE_NAME_SEEN_STATE:I = 0x10

.field private static final DOCTYPE_SEEN_STATE:I = 0xd

.field private static final END_ELEMENT_STATE:I = 0x4

.field private static final EXPECT_NAME_MODIFIER:I = 0x1

.field private static final EXPECT_RIGHT_STATE:I = 0x1b

.field private static final INIT_LEFT_QUEST_STATE:I = 0x1e

.field private static final INIT_LEFT_STATE:I = 0x22

.field private static final INIT_STATE:I = 0x0

.field private static final INIT_TEXT_STATE:I = 0x1f

.field private static final INVALID_VERSION_DECL:I = 0x23

.field private static final MAYBE_ATTRIBUTE_STATE:I = 0xa

.field private static final PREV_WAS_CR_STATE:I = 0x1c

.field private static final SAW_AMP_SHARP_STATE:I = 0x1a

.field private static final SAW_AMP_STATE:I = 0x19

.field private static final SAW_ENTITY_REF:I = 0x6

.field private static final SAW_EOF_ERROR:I = 0x25

.field private static final SAW_ERROR:I = 0x24

.field private static final SAW_LEFT_EXCL_MINUS_STATE:I = 0x16

.field private static final SAW_LEFT_EXCL_STATE:I = 0x14

.field private static final SAW_LEFT_QUEST_STATE:I = 0x15

.field private static final SAW_LEFT_SLASH_STATE:I = 0x13

.field private static final SAW_LEFT_STATE:I = 0xe

.field private static final SKIP_SPACES_MODIFIER:I = 0x2

.field private static final TEXT_STATE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static XMLStreamReader(Ljava/io/InputStream;)Lgnu/text/LineInputStreamReader;
    .locals 12
    .param p0, "strm"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Lgnu/text/LineInputStreamReader;

    invoke-direct {v0, p0}, Lgnu/text/LineInputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 68
    .local v0, "in":Lgnu/text/LineInputStreamReader;
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v1

    .line 69
    .local v1, "b1":I
    const/4 v2, -0x1

    if-gez v1, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v3

    .line 70
    .local v3, "b2":I
    :goto_0
    if-gez v3, :cond_1

    const/4 v4, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v4

    .line 71
    .local v4, "b3":I
    :goto_1
    const/16 v5, 0xef

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    if-ne v1, v5, :cond_2

    const/16 v5, 0xbb

    if-ne v3, v5, :cond_2

    const/16 v5, 0xbf

    if-ne v4, v5, :cond_2

    .line 73
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 74
    invoke-virtual {v0, v6}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 76
    :cond_2
    const/4 v5, 0x2

    const/16 v8, 0xfe

    const/16 v9, 0xff

    if-ne v1, v9, :cond_3

    if-ne v3, v8, :cond_3

    if-eqz v4, :cond_3

    .line 78
    invoke-virtual {v0, v5}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 79
    const-string v2, "UTF-16LE"

    invoke-virtual {v0, v2}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 81
    :cond_3
    if-ne v1, v8, :cond_4

    if-ne v3, v9, :cond_4

    if-eqz v4, :cond_4

    .line 83
    invoke-virtual {v0, v5}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 84
    const-string v2, "UTF-16BE"

    invoke-virtual {v0, v2}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 88
    :cond_4
    if-gez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v2

    .line 89
    .local v2, "b4":I
    :goto_2
    const/16 v5, 0x4c

    if-ne v1, v5, :cond_7

    const/16 v5, 0x6f

    if-ne v3, v5, :cond_7

    const/16 v5, 0xa7

    if-ne v4, v5, :cond_7

    const/16 v5, 0x94

    if-eq v2, v5, :cond_6

    goto :goto_3

    .line 90
    :cond_6
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "XMLParser: EBCDIC encodings not supported"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 91
    :cond_7
    :goto_3
    invoke-virtual {v0, v7}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 92
    const/16 v5, 0x3c

    const/16 v8, 0x3f

    if-ne v1, v5, :cond_9

    if-ne v3, v8, :cond_8

    const/16 v9, 0x78

    if-ne v4, v9, :cond_8

    const/16 v9, 0x6d

    if-eq v2, v9, :cond_a

    :cond_8
    if-nez v3, :cond_9

    if-ne v4, v8, :cond_9

    if-eqz v2, :cond_a

    :cond_9
    if-nez v1, :cond_12

    if-ne v3, v5, :cond_12

    if-nez v4, :cond_12

    if-ne v2, v8, :cond_12

    .line 96
    :cond_a
    iget-object v5, v0, Lgnu/text/LineInputStreamReader;->buffer:[C

    .line 97
    .local v5, "buffer":[C
    if-nez v5, :cond_b

    .line 98
    const/16 v6, 0x2000

    new-array v6, v6, [C

    move-object v5, v6

    iput-object v6, v0, Lgnu/text/LineInputStreamReader;->buffer:[C

    .line 99
    :cond_b
    const/4 v6, 0x0

    .line 100
    .local v6, "pos":I
    const/4 v8, 0x0

    .line 103
    .local v8, "quote":I
    :goto_4
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v9

    .line 104
    .local v9, "b":I
    if-nez v9, :cond_c

    .line 105
    goto :goto_4

    .line 106
    :cond_c
    if-gez v9, :cond_d

    .line 107
    goto :goto_5

    .line 108
    :cond_d
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "pos":I
    .local v10, "pos":I
    and-int/lit16 v11, v9, 0xff

    int-to-char v11, v11

    aput-char v11, v5, v6

    .line 109
    if-nez v8, :cond_10

    .line 111
    const/16 v6, 0x3e

    if-ne v9, v6, :cond_e

    .line 112
    move v6, v10

    .line 119
    .end local v9    # "b":I
    .end local v10    # "pos":I
    .restart local v6    # "pos":I
    :goto_5
    iput v7, v0, Lgnu/text/LineInputStreamReader;->pos:I

    .line 120
    iput v6, v0, Lgnu/text/LineInputStreamReader;->limit:I

    .line 121
    .end local v5    # "buffer":[C
    .end local v6    # "pos":I
    .end local v8    # "quote":I
    goto :goto_7

    .line 113
    .restart local v5    # "buffer":[C
    .restart local v8    # "quote":I
    .restart local v9    # "b":I
    .restart local v10    # "pos":I
    :cond_e
    const/16 v6, 0x27

    if-eq v9, v6, :cond_f

    const/16 v6, 0x22

    if-ne v9, v6, :cond_11

    .line 114
    :cond_f
    move v6, v9

    move v8, v6

    .end local v8    # "quote":I
    .local v6, "quote":I
    goto :goto_6

    .line 116
    .end local v6    # "quote":I
    .restart local v8    # "quote":I
    :cond_10
    if-ne v9, v8, :cond_11

    .line 117
    const/4 v6, 0x0

    move v8, v6

    .line 118
    .end local v9    # "b":I
    :cond_11
    :goto_6
    move v6, v10

    goto :goto_4

    .line 123
    .end local v5    # "buffer":[C
    .end local v8    # "quote":I
    .end local v10    # "pos":I
    :cond_12
    invoke-virtual {v0, v6}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    .line 125
    .end local v2    # "b4":I
    :goto_7
    invoke-virtual {v0, v7}, Lgnu/text/LineInputStreamReader;->setKeepFullLines(Z)V

    .line 126
    return-object v0
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .locals 2
    .param p0, "in"    # Lgnu/text/LineBufferedReader;
    .param p1, "messages"    # Lgnu/text/SourceMessages;
    .param p2, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    new-instance v0, Lgnu/xml/XMLFilter;

    invoke-direct {v0, p2}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    .line 144
    .local v0, "filter":Lgnu/xml/XMLFilter;
    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->setMessages(Lgnu/text/SourceMessages;)V

    .line 145
    invoke-virtual {v0, p0}, Lgnu/xml/XMLFilter;->setSourceLocator(Lgnu/text/LineBufferedReader;)V

    .line 146
    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->startDocument()V

    .line 147
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object v1

    .line 148
    .local v1, "uri":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v0, v1}, Lgnu/xml/XMLFilter;->writeDocumentUri(Ljava/lang/Object;)V

    .line 150
    :cond_0
    invoke-static {p0, v0}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V

    .line 151
    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endDocument()V

    .line 152
    return-void
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/xml/XMLFilter;)V
    .locals 1
    .param p0, "in"    # Lgnu/text/LineBufferedReader;
    .param p1, "messages"    # Lgnu/text/SourceMessages;
    .param p2, "filter"    # Lgnu/xml/XMLFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p2, p1}, Lgnu/xml/XMLFilter;->setMessages(Lgnu/text/SourceMessages;)V

    .line 158
    invoke-virtual {p2, p0}, Lgnu/xml/XMLFilter;->setSourceLocator(Lgnu/text/LineBufferedReader;)V

    .line 159
    invoke-virtual {p2}, Lgnu/xml/XMLFilter;->startDocument()V

    .line 160
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object v0

    .line 161
    .local v0, "uri":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p2, v0}, Lgnu/xml/XMLFilter;->writeDocumentUri(Ljava/lang/Object;)V

    .line 163
    :cond_0
    invoke-static {p0, p2}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V

    .line 164
    invoke-virtual {p2}, Lgnu/xml/XMLFilter;->endDocument()V

    .line 165
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->close()V

    .line 166
    return-void
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V
    .locals 25
    .param p0, "in"    # Lgnu/text/LineBufferedReader;
    .param p1, "out"    # Lgnu/xml/XMLFilter;

    .line 171
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    iget-object v0, v1, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 172
    .local v0, "buffer":[C
    iget v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 173
    .local v2, "pos":I
    iget v3, v1, Lgnu/text/LineBufferedReader;->limit:I

    .line 189
    .local v3, "limit":I
    const/4 v4, 0x0

    .line 194
    .local v4, "state":I
    const/16 v5, 0x3c

    .line 195
    .local v5, "terminator":C
    const/16 v6, 0xe

    .line 196
    .local v6, "continue_state":I
    const/16 v7, 0x20

    .line 197
    .local v7, "ch":C
    const/4 v9, 0x0

    .line 198
    .local v9, "length":I
    const/4 v10, -0x1

    .line 199
    .local v10, "dstart":I
    const/4 v11, 0x0

    .line 201
    .local v11, "message":Ljava/lang/String;
    move v12, v3

    move v13, v9

    move-object v14, v11

    move v15, v12

    move-object v9, v0

    move v0, v4

    move v11, v5

    move v12, v6

    move/from16 v24, v10

    move v10, v3

    move/from16 v3, v24

    .line 206
    .end local v4    # "state":I
    .end local v5    # "terminator":C
    .end local v6    # "continue_state":I
    .local v0, "state":I
    .local v3, "dstart":I
    .local v9, "buffer":[C
    .local v10, "limit":I
    .local v11, "terminator":C
    .local v12, "continue_state":I
    .local v13, "length":I
    .local v14, "message":Ljava/lang/String;
    .local v15, "start":I
    :goto_0
    const/16 v6, 0x65

    const/16 v5, 0x3e

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .local v22, "message":Ljava/lang/String;
    .local v23, "continue_state":I
    goto/16 :goto_31

    .line 253
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .restart local v12    # "continue_state":I
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_1
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 254
    const/16 v4, 0x66

    const-string v5, "unexpected end-of-file"

    invoke-virtual {v8, v4, v5}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 255
    return-void

    .line 233
    :pswitch_2
    move v2, v3

    .line 234
    const-string v14, "invalid xml version specifier"

    .line 238
    :pswitch_3
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 239
    invoke-virtual {v8, v6, v14}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 242
    :goto_1
    if-lt v2, v10, :cond_0

    .line 243
    nop

    .line 989
    return-void

    .line 244
    :cond_0
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pos":I
    .local v6, "pos":I
    aget-char v7, v9, v2

    .line 245
    if-ne v7, v5, :cond_1

    .line 247
    const/4 v0, 0x1

    .line 248
    move v2, v0

    move-object/from16 v22, v14

    move v14, v6

    goto/16 :goto_32

    .line 245
    :cond_1
    move v2, v6

    goto :goto_1

    .line 223
    .end local v6    # "pos":I
    .restart local v2    # "pos":I
    :pswitch_4
    const/16 v5, 0x3f

    if-ne v7, v5, :cond_2

    .line 225
    move v5, v2

    .line 226
    .end local v15    # "start":I
    .local v5, "start":I
    const/16 v0, 0x21

    .line 227
    move v15, v5

    move-object/from16 v22, v14

    move v14, v2

    move v2, v0

    goto/16 :goto_32

    .line 229
    .end local v5    # "start":I
    .restart local v15    # "start":I
    :cond_2
    const/16 v0, 0xe

    .line 230
    goto :goto_0

    .line 214
    :pswitch_5
    const/16 v5, 0x3c

    if-ne v7, v5, :cond_3

    .line 216
    const/16 v0, 0x22

    .line 217
    move-object/from16 v22, v14

    move v14, v2

    move v2, v0

    goto/16 :goto_32

    .line 219
    :cond_3
    const/4 v0, 0x1

    .line 220
    goto :goto_0

    .line 349
    :pswitch_6
    const/4 v0, 0x1

    .line 350
    const/16 v5, 0xa

    if-ne v7, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const/16 v6, 0x85

    if-ne v7, v6, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    or-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 352
    invoke-virtual {v1, v4, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 353
    move-object/from16 v22, v14

    move v14, v2

    move v2, v0

    goto/16 :goto_32

    .line 357
    :cond_6
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v1, v4, v5}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 358
    goto :goto_0

    .line 937
    :pswitch_7
    if-eq v7, v5, :cond_7

    .line 939
    const-string v14, "missing \'>\'"

    .line 940
    const/16 v0, 0x24

    .line 941
    goto :goto_0

    .line 943
    :cond_7
    const/4 v0, 0x1

    .line 944
    move-object/from16 v22, v14

    move v14, v2

    move v2, v0

    goto/16 :goto_32

    .line 444
    :goto_4
    :pswitch_8
    const/16 v5, 0x3b

    if-ne v7, v5, :cond_8

    .line 446
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 447
    add-int/lit8 v5, v2, -0x1

    sub-int/2addr v5, v15

    invoke-virtual {v8, v13, v9, v15, v5}, Lgnu/xml/XMLFilter;->emitCharacterReference(I[CII)V

    .line 449
    const/4 v0, 0x1

    .line 450
    move-object/from16 v22, v14

    move v14, v2

    move v2, v0

    goto/16 :goto_32

    .line 452
    :cond_8
    const/16 v5, 0x78

    if-ne v7, v5, :cond_9

    if-nez v3, :cond_9

    .line 453
    const/16 v3, 0x10

    goto :goto_7

    .line 454
    :cond_9
    const/high16 v5, 0x8000000

    if-lt v13, v5, :cond_a

    .line 455
    goto :goto_6

    .line 458
    :cond_a
    if-nez v3, :cond_b

    const/16 v5, 0xa

    goto :goto_5

    :cond_b
    move v5, v3

    .line 459
    .local v5, "base":I
    :goto_5
    invoke-static {v7, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v16

    .line 460
    .local v16, "digit":I
    if-gez v16, :cond_c

    .line 461
    nop

    .line 469
    .end local v5    # "base":I
    .end local v16    # "digit":I
    :goto_6
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 470
    const-string v5, "invalid character reference"

    invoke-virtual {v8, v6, v5}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 471
    const/4 v0, 0x1

    .line 472
    move-object/from16 v22, v14

    move v14, v2

    move v2, v0

    goto/16 :goto_32

    .line 462
    .restart local v5    # "base":I
    .restart local v16    # "digit":I
    :cond_c
    mul-int v17, v13, v5

    add-int v17, v17, v16

    move/from16 v13, v17

    .line 464
    .end local v5    # "base":I
    .end local v16    # "digit":I
    :goto_7
    if-ge v2, v10, :cond_d

    .line 465
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "pos":I
    .local v5, "pos":I
    aget-char v7, v9, v2

    move v2, v5

    goto :goto_4

    .line 464
    .end local v5    # "pos":I
    .restart local v2    # "pos":I
    :cond_d
    move-object/from16 v22, v14

    move v14, v2

    move v2, v0

    goto/16 :goto_32

    .line 475
    :pswitch_9
    const/16 v5, 0x23

    if-ne v7, v5, :cond_e

    .line 477
    const/16 v0, 0x1a

    .line 478
    move v5, v2

    .line 479
    .end local v15    # "start":I
    .local v5, "start":I
    const/4 v6, 0x0

    .line 480
    .end local v13    # "length":I
    .local v6, "length":I
    const/4 v3, 0x0

    .line 481
    move v15, v5

    move v13, v6

    move-object/from16 v22, v14

    move v14, v2

    move v2, v0

    goto/16 :goto_32

    .line 483
    .end local v5    # "start":I
    .end local v6    # "length":I
    .restart local v13    # "length":I
    .restart local v15    # "start":I
    :cond_e
    add-int/lit8 v15, v2, -0x1

    .line 484
    const/4 v0, 0x7

    .line 485
    goto/16 :goto_0

    .line 527
    :pswitch_a
    if-gez v3, :cond_f

    .line 528
    add-int/lit8 v3, v2, -0x1

    move/from16 v24, v7

    move v7, v2

    move/from16 v2, v24

    goto :goto_8

    .line 527
    :cond_f
    move/from16 v24, v7

    move v7, v2

    move/from16 v2, v24

    .line 532
    .local v2, "ch":C
    .local v7, "pos":I
    :goto_8
    if-ne v2, v5, :cond_38

    add-int/lit8 v16, v7, -0x2

    move/from16 v17, v16

    .local v17, "end":I
    aget-char v4, v9, v16

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_37

    move/from16 v5, v17

    .end local v17    # "end":I
    .local v5, "end":I
    if-lt v5, v3, :cond_36

    .line 536
    iput v7, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 537
    const/4 v4, 0x3

    if-ne v13, v4, :cond_35

    aget-char v4, v9, v15

    const/16 v6, 0x78

    if-ne v4, v6, :cond_35

    add-int/lit8 v4, v15, 0x1

    aget-char v4, v9, v4

    const/16 v6, 0x6d

    if-ne v4, v6, :cond_35

    add-int/lit8 v4, v15, 0x2

    aget-char v4, v9, v4

    const/16 v6, 0x6c

    if-ne v4, v6, :cond_35

    .line 542
    const/16 v4, 0x1e

    if-ne v0, v4, :cond_34

    .line 544
    add-int/lit8 v4, v3, 0x7

    if-le v5, v4, :cond_33

    aget-char v4, v9, v3

    const/16 v6, 0x76

    if-ne v4, v6, :cond_33

    add-int/lit8 v4, v3, 0x1

    aget-char v4, v9, v4

    const/16 v6, 0x65

    if-ne v4, v6, :cond_33

    add-int/lit8 v4, v3, 0x2

    aget-char v4, v9, v4

    const/16 v6, 0x72

    if-ne v4, v6, :cond_33

    add-int/lit8 v4, v3, 0x3

    aget-char v4, v9, v4

    const/16 v6, 0x73

    if-ne v4, v6, :cond_33

    add-int/lit8 v4, v3, 0x4

    aget-char v4, v9, v4

    const/16 v6, 0x69

    if-ne v4, v6, :cond_33

    add-int/lit8 v4, v3, 0x5

    aget-char v4, v9, v4

    const/16 v6, 0x6f

    if-ne v4, v6, :cond_33

    add-int/lit8 v4, v3, 0x6

    aget-char v4, v9, v4

    const/16 v6, 0x6e

    if-eq v4, v6, :cond_10

    goto/16 :goto_1a

    .line 558
    :cond_10
    add-int/lit8 v3, v3, 0x7

    .line 559
    aget-char v2, v9, v3

    .line 561
    :goto_9
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_11

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v5, :cond_11

    .line 562
    aget-char v2, v9, v3

    goto :goto_9

    .line 563
    :cond_11
    const/16 v4, 0x3d

    if-eq v2, v4, :cond_12

    .line 565
    const/16 v0, 0x23

    .line 566
    move/from16 v24, v7

    move v7, v2

    move/from16 v2, v24

    goto/16 :goto_0

    .line 568
    :cond_12
    add-int/lit8 v3, v3, 0x1

    aget-char v2, v9, v3

    .line 570
    :goto_a
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_13

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v5, :cond_13

    .line 571
    aget-char v2, v9, v3

    goto :goto_a

    .line 572
    :cond_13
    const/16 v4, 0x27

    if-eq v2, v4, :cond_14

    const/16 v4, 0x22

    if-eq v2, v4, :cond_14

    .line 574
    const/16 v0, 0x23

    .line 575
    move/from16 v24, v7

    move v7, v2

    move/from16 v2, v24

    goto/16 :goto_0

    .line 577
    :cond_14
    move v4, v2

    .line 578
    .local v4, "quote":C
    add-int/lit8 v17, v3, 0x1

    .end local v3    # "dstart":I
    .local v17, "dstart":I
    move/from16 v3, v17

    .line 581
    .local v3, "i":I
    :goto_b
    if-ne v3, v5, :cond_15

    .line 583
    const/16 v0, 0x23

    .line 584
    move/from16 v3, v17

    move/from16 v24, v7

    move v7, v2

    move/from16 v2, v24

    goto/16 :goto_0

    .line 586
    :cond_15
    aget-char v2, v9, v3

    .line 587
    if-ne v2, v4, :cond_32

    .line 588
    nop

    .line 590
    add-int/lit8 v6, v17, 0x3

    if-ne v3, v6, :cond_17

    aget-char v6, v9, v17

    move/from16 v19, v2

    .end local v2    # "ch":C
    .local v19, "ch":C
    const/16 v2, 0x31

    if-ne v6, v2, :cond_16

    add-int/lit8 v2, v17, 0x1

    aget-char v2, v9, v2

    const/16 v6, 0x2e

    if-ne v2, v6, :cond_16

    add-int/lit8 v2, v17, 0x2

    aget-char v2, v9, v2

    move v6, v2

    move/from16 v20, v4

    .end local v4    # "quote":C
    .end local v19    # "ch":C
    .local v6, "ch":C
    .local v20, "quote":C
    const/16 v4, 0x30

    if-eq v2, v4, :cond_18

    goto :goto_d

    .end local v6    # "ch":C
    .end local v20    # "quote":C
    .restart local v4    # "quote":C
    .restart local v19    # "ch":C
    :cond_16
    move/from16 v20, v4

    .end local v4    # "quote":C
    .restart local v20    # "quote":C
    goto :goto_c

    .end local v19    # "ch":C
    .end local v20    # "quote":C
    .restart local v2    # "ch":C
    .restart local v4    # "quote":C
    :cond_17
    move/from16 v19, v2

    move/from16 v20, v4

    .end local v2    # "ch":C
    .end local v4    # "quote":C
    .restart local v19    # "ch":C
    .restart local v20    # "quote":C
    :goto_c
    move/from16 v6, v19

    .end local v19    # "ch":C
    .restart local v6    # "ch":C
    :goto_d
    const/16 v2, 0x31

    if-ne v6, v2, :cond_31

    .line 601
    :cond_18
    add-int/lit8 v2, v3, 0x1

    .line 603
    .end local v17    # "dstart":I
    .local v2, "dstart":I
    :goto_e
    if-ge v2, v5, :cond_19

    aget-char v4, v9, v2

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 604
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 605
    :cond_19
    add-int/lit8 v4, v2, 0x7

    if-le v5, v4, :cond_22

    aget-char v4, v9, v2

    move/from16 v19, v6

    const/16 v6, 0x65

    .end local v6    # "ch":C
    .restart local v19    # "ch":C
    if-ne v4, v6, :cond_23

    add-int/lit8 v4, v2, 0x1

    aget-char v4, v9, v4

    const/16 v6, 0x6e

    if-ne v4, v6, :cond_23

    add-int/lit8 v4, v2, 0x2

    aget-char v4, v9, v4

    const/16 v6, 0x63

    if-ne v4, v6, :cond_23

    add-int/lit8 v4, v2, 0x3

    aget-char v4, v9, v4

    const/16 v6, 0x6f

    if-ne v4, v6, :cond_23

    add-int/lit8 v4, v2, 0x4

    aget-char v4, v9, v4

    const/16 v6, 0x64

    if-ne v4, v6, :cond_23

    add-int/lit8 v4, v2, 0x5

    aget-char v4, v9, v4

    const/16 v6, 0x69

    if-ne v4, v6, :cond_23

    add-int/lit8 v4, v2, 0x6

    aget-char v4, v9, v4

    const/16 v6, 0x6e

    if-ne v4, v6, :cond_23

    add-int/lit8 v4, v2, 0x7

    aget-char v4, v9, v4

    const/16 v6, 0x67

    if-ne v4, v6, :cond_23

    .line 615
    add-int/lit8 v2, v2, 0x8

    .line 616
    aget-char v4, v9, v2

    .line 618
    .end local v19    # "ch":C
    .local v4, "ch":C
    :goto_f
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1a

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_1a

    .line 619
    aget-char v4, v9, v2

    goto :goto_f

    .line 620
    :cond_1a
    const/16 v6, 0x3d

    if-eq v4, v6, :cond_1b

    .line 622
    const-string v14, "bad \'encoding\' declaration"

    .line 623
    const/16 v0, 0x24

    .line 624
    move v3, v2

    move v2, v7

    move v7, v4

    goto/16 :goto_0

    .line 626
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    aget-char v4, v9, v2

    .line 628
    :goto_10
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1c

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_1c

    .line 629
    aget-char v4, v9, v2

    goto :goto_10

    .line 630
    :cond_1c
    const/16 v6, 0x27

    if-eq v4, v6, :cond_1d

    const/16 v6, 0x22

    if-eq v4, v6, :cond_1d

    .line 632
    const-string v14, "bad \'encoding\' declaration"

    .line 633
    const/16 v0, 0x24

    .line 634
    move v3, v2

    move v2, v7

    move v7, v4

    goto/16 :goto_0

    .line 636
    :cond_1d
    move v6, v4

    .line 637
    .end local v20    # "quote":C
    .local v6, "quote":C
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 640
    :goto_11
    if-ne v3, v5, :cond_1e

    .line 642
    const-string v14, "bad \'encoding\' declaration"

    .line 643
    const/16 v0, 0x24

    .line 644
    move v3, v2

    move v2, v7

    move v7, v4

    goto/16 :goto_0

    .line 646
    :cond_1e
    aget-char v4, v9, v3

    .line 647
    if-ne v4, v6, :cond_21

    .line 648
    nop

    .line 650
    move/from16 v17, v4

    .end local v4    # "ch":C
    .local v17, "ch":C
    new-instance v4, Ljava/lang/String;

    move/from16 v21, v6

    .end local v6    # "quote":C
    .local v21, "quote":C
    sub-int v6, v3, v2

    invoke-direct {v4, v9, v2, v6}, Ljava/lang/String;-><init>([CII)V

    .line 651
    .local v4, "encoding":Ljava/lang/String;
    instance-of v6, v1, Lgnu/text/LineInputStreamReader;

    if-eqz v6, :cond_1f

    .line 652
    move-object v6, v1

    check-cast v6, Lgnu/text/LineInputStreamReader;

    invoke-virtual {v6, v4}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    .line 653
    :cond_1f
    add-int/lit8 v2, v3, 0x1

    .line 655
    :goto_12
    if-ge v2, v5, :cond_20

    aget-char v6, v9, v2

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 656
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 658
    .end local v4    # "encoding":Ljava/lang/String;
    :cond_20
    move/from16 v6, v17

    move/from16 v4, v21

    goto :goto_13

    .line 638
    .end local v17    # "ch":C
    .end local v21    # "quote":C
    .local v4, "ch":C
    .restart local v6    # "quote":C
    :cond_21
    move/from16 v17, v4

    move/from16 v21, v6

    .end local v4    # "ch":C
    .end local v6    # "quote":C
    .restart local v17    # "ch":C
    .restart local v21    # "quote":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 605
    .end local v17    # "ch":C
    .end local v21    # "quote":C
    .local v6, "ch":C
    .restart local v20    # "quote":C
    :cond_22
    move/from16 v19, v6

    .line 658
    .end local v6    # "ch":C
    .restart local v19    # "ch":C
    :cond_23
    move/from16 v6, v19

    move/from16 v4, v20

    .end local v19    # "ch":C
    .end local v20    # "quote":C
    .local v4, "quote":C
    .restart local v6    # "ch":C
    :goto_13
    move/from16 v17, v3

    .end local v3    # "i":I
    .local v17, "i":I
    add-int/lit8 v3, v2, 0x9

    if-le v5, v3, :cond_2e

    aget-char v3, v9, v2

    move/from16 v19, v4

    .end local v4    # "quote":C
    .local v19, "quote":C
    const/16 v4, 0x73

    if-ne v3, v4, :cond_2f

    add-int/lit8 v3, v2, 0x1

    aget-char v3, v9, v3

    const/16 v4, 0x74

    if-ne v3, v4, :cond_2f

    add-int/lit8 v3, v2, 0x2

    aget-char v3, v9, v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_2f

    add-int/lit8 v3, v2, 0x3

    aget-char v3, v9, v3

    const/16 v4, 0x6e

    if-ne v3, v4, :cond_2f

    add-int/lit8 v3, v2, 0x4

    aget-char v3, v9, v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_2f

    add-int/lit8 v3, v2, 0x5

    aget-char v3, v9, v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_2f

    add-int/lit8 v3, v2, 0x6

    aget-char v3, v9, v3

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_2f

    add-int/lit8 v3, v2, 0x7

    aget-char v3, v9, v3

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_2f

    add-int/lit8 v3, v2, 0x8

    aget-char v3, v9, v3

    const/16 v4, 0x6e

    if-ne v3, v4, :cond_2f

    add-int/lit8 v3, v2, 0x9

    aget-char v3, v9, v3

    const/16 v4, 0x65

    if-ne v3, v4, :cond_2f

    .line 670
    add-int/lit8 v2, v2, 0xa

    .line 671
    aget-char v3, v9, v2

    .line 673
    .end local v6    # "ch":C
    .local v3, "ch":C
    :goto_14
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_24

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_24

    .line 674
    aget-char v3, v9, v2

    goto :goto_14

    .line 675
    :cond_24
    const/16 v4, 0x3d

    if-eq v3, v4, :cond_25

    .line 677
    const-string v14, "bad \'standalone\' declaration"

    .line 678
    const/16 v0, 0x24

    .line 679
    move/from16 v24, v3

    move v3, v2

    move v2, v7

    move/from16 v7, v24

    goto/16 :goto_0

    .line 681
    :cond_25
    add-int/lit8 v2, v2, 0x1

    aget-char v3, v9, v2

    .line 683
    :goto_15
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_26

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v5, :cond_26

    .line 684
    aget-char v3, v9, v2

    goto :goto_15

    .line 685
    :cond_26
    const/16 v4, 0x27

    if-eq v3, v4, :cond_27

    const/16 v4, 0x22

    if-eq v3, v4, :cond_27

    .line 687
    const-string v14, "bad \'standalone\' declaration"

    .line 688
    const/16 v0, 0x24

    .line 689
    move/from16 v24, v3

    move v3, v2

    move v2, v7

    move/from16 v7, v24

    goto/16 :goto_0

    .line 691
    :cond_27
    move v4, v3

    .line 692
    .end local v19    # "quote":C
    .restart local v4    # "quote":C
    add-int/lit8 v20, v2, 0x1

    .end local v2    # "dstart":I
    .local v20, "dstart":I
    move/from16 v2, v20

    move/from16 v24, v3

    move v3, v2

    move/from16 v2, v24

    .line 695
    .end local v17    # "i":I
    .local v2, "ch":C
    .local v3, "i":I
    :goto_16
    if-ne v3, v5, :cond_28

    .line 697
    const-string v14, "bad \'standalone\' declaration"

    .line 698
    const/16 v0, 0x24

    .line 699
    move/from16 v3, v20

    move/from16 v24, v7

    move v7, v2

    move/from16 v2, v24

    goto/16 :goto_0

    .line 701
    :cond_28
    aget-char v2, v9, v3

    .line 702
    if-ne v2, v4, :cond_2d

    .line 703
    nop

    .line 705
    add-int/lit8 v6, v20, 0x3

    if-ne v3, v6, :cond_29

    aget-char v6, v9, v20

    move/from16 v17, v2

    .end local v2    # "ch":C
    .local v17, "ch":C
    const/16 v2, 0x79

    if-ne v6, v2, :cond_2a

    add-int/lit8 v2, v20, 0x1

    aget-char v2, v9, v2

    const/16 v6, 0x65

    if-ne v2, v6, :cond_2a

    add-int/lit8 v2, v20, 0x2

    aget-char v2, v9, v2

    const/16 v6, 0x73

    if-ne v2, v6, :cond_2a

    goto :goto_17

    .end local v17    # "ch":C
    .restart local v2    # "ch":C
    :cond_29
    move/from16 v17, v2

    .line 711
    .end local v2    # "ch":C
    .restart local v17    # "ch":C
    :cond_2a
    add-int/lit8 v2, v20, 0x2

    if-ne v3, v2, :cond_2c

    aget-char v2, v9, v20

    const/16 v6, 0x6e

    if-ne v2, v6, :cond_2c

    add-int/lit8 v2, v20, 0x1

    aget-char v2, v9, v2

    const/16 v6, 0x6f

    if-ne v2, v6, :cond_2c

    .line 722
    :goto_17
    add-int/lit8 v2, v3, 0x1

    .line 724
    .end local v20    # "dstart":I
    .local v2, "dstart":I
    :goto_18
    if-ge v2, v5, :cond_2b

    aget-char v6, v9, v2

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 725
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 727
    :cond_2b
    move/from16 v6, v17

    move/from16 v17, v3

    move v3, v2

    goto :goto_19

    .line 718
    .end local v2    # "dstart":I
    .restart local v20    # "dstart":I
    :cond_2c
    const-string v14, "bad \'standalone\' declaration"

    .line 719
    const/16 v0, 0x24

    .line 720
    move v2, v7

    move/from16 v7, v17

    move/from16 v3, v20

    goto/16 :goto_0

    .line 693
    .end local v17    # "ch":C
    .local v2, "ch":C
    :cond_2d
    move/from16 v17, v2

    const/16 v6, 0x65

    const/16 v16, 0x6f

    const/16 v18, 0x6e

    .end local v2    # "ch":C
    .restart local v17    # "ch":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 658
    .end local v3    # "i":I
    .end local v20    # "dstart":I
    .local v2, "dstart":I
    .restart local v6    # "ch":C
    .local v17, "i":I
    :cond_2e
    move/from16 v19, v4

    .line 727
    .end local v4    # "quote":C
    .restart local v19    # "quote":C
    :cond_2f
    move v3, v2

    move/from16 v4, v19

    .end local v2    # "dstart":I
    .end local v19    # "quote":C
    .local v3, "dstart":I
    .restart local v4    # "quote":C
    :goto_19
    if-eq v5, v3, :cond_30

    .line 729
    const-string v14, "junk at end of xml declaration"

    .line 730
    move v2, v3

    .line 731
    .end local v7    # "pos":I
    .local v2, "pos":I
    const/16 v0, 0x24

    .line 732
    move v7, v6

    goto/16 :goto_0

    .line 734
    .end local v2    # "pos":I
    .end local v4    # "quote":C
    .end local v17    # "i":I
    .restart local v7    # "pos":I
    :cond_30
    move/from16 v19, v5

    move v2, v6

    move-object/from16 v22, v14

    move v14, v7

    goto :goto_1b

    .line 598
    .local v3, "i":I
    .local v17, "dstart":I
    .local v20, "quote":C
    :cond_31
    const/16 v0, 0x23

    .line 599
    move v2, v7

    move/from16 v3, v17

    move v7, v6

    goto/16 :goto_0

    .line 579
    .end local v6    # "ch":C
    .end local v20    # "quote":C
    .local v2, "ch":C
    .restart local v4    # "quote":C
    :cond_32
    move/from16 v19, v2

    move/from16 v20, v4

    const/16 v16, 0x6f

    const/16 v18, 0x6e

    const/16 v21, 0x65

    .end local v2    # "ch":C
    .end local v4    # "quote":C
    .local v19, "ch":C
    .restart local v20    # "quote":C
    add-int/lit8 v3, v3, 0x1

    const/16 v6, 0x6e

    goto/16 :goto_b

    .line 553
    .end local v17    # "dstart":I
    .end local v19    # "ch":C
    .end local v20    # "quote":C
    .restart local v2    # "ch":C
    .local v3, "dstart":I
    :cond_33
    :goto_1a
    move v4, v3

    .line 554
    .end local v7    # "pos":I
    .local v4, "pos":I
    const-string v14, "xml declaration without version"

    .line 555
    const/16 v0, 0x24

    .line 556
    move v7, v2

    move v2, v4

    goto/16 :goto_0

    .line 737
    .end local v4    # "pos":I
    .restart local v7    # "pos":I
    :cond_34
    const-string v14, "<?xml must be at start of file"

    .line 738
    const/16 v0, 0x24

    .line 739
    move/from16 v24, v7

    move v7, v2

    move/from16 v2, v24

    goto/16 :goto_0

    .line 743
    :cond_35
    sub-int v16, v5, v3

    move/from16 v17, v2

    .end local v2    # "ch":C
    .local v17, "ch":C
    move-object/from16 v2, p1

    move/from16 v18, v3

    .end local v3    # "dstart":I
    .local v18, "dstart":I
    move-object v3, v9

    const/4 v6, 0x1

    move v4, v15

    move/from16 v19, v5

    .end local v5    # "end":I
    .local v19, "end":I
    move v5, v13

    move-object/from16 v22, v14

    const/4 v14, 0x1

    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    move/from16 v6, v18

    move v14, v7

    .end local v7    # "pos":I
    .local v14, "pos":I
    move/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Lgnu/xml/XMLFilter;->processingInstructionFromParser([CIIII)V

    move/from16 v2, v17

    move/from16 v3, v18

    .line 745
    .end local v17    # "ch":C
    .end local v18    # "dstart":I
    .restart local v2    # "ch":C
    .restart local v3    # "dstart":I
    :goto_1b
    move v4, v10

    .line 746
    .end local v15    # "start":I
    .local v4, "start":I
    const/4 v3, -0x1

    .line 747
    const/4 v0, 0x1

    .line 748
    move v7, v2

    move v15, v4

    move v2, v0

    goto/16 :goto_32

    .line 532
    .end local v4    # "start":I
    .end local v19    # "end":I
    .end local v22    # "message":Ljava/lang/String;
    .restart local v5    # "end":I
    .restart local v7    # "pos":I
    .local v14, "message":Ljava/lang/String;
    .restart local v15    # "start":I
    :cond_36
    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v5

    move-object/from16 v22, v14

    const/16 v21, 0x65

    move v14, v7

    .end local v2    # "ch":C
    .end local v3    # "dstart":I
    .end local v5    # "end":I
    .end local v7    # "pos":I
    .local v14, "pos":I
    .restart local v17    # "ch":C
    .restart local v18    # "dstart":I
    .restart local v19    # "end":I
    .restart local v22    # "message":Ljava/lang/String;
    goto :goto_1c

    .end local v18    # "dstart":I
    .end local v19    # "end":I
    .end local v22    # "message":Ljava/lang/String;
    .restart local v2    # "ch":C
    .restart local v3    # "dstart":I
    .restart local v7    # "pos":I
    .local v14, "message":Ljava/lang/String;
    .local v17, "end":I
    :cond_37
    move/from16 v18, v3

    move-object/from16 v22, v14

    move/from16 v19, v17

    const/16 v21, 0x65

    move/from16 v17, v2

    move v14, v7

    .end local v2    # "ch":C
    .end local v3    # "dstart":I
    .end local v7    # "pos":I
    .local v14, "pos":I
    .local v17, "ch":C
    .restart local v18    # "dstart":I
    .restart local v19    # "end":I
    .restart local v22    # "message":Ljava/lang/String;
    goto :goto_1c

    .end local v17    # "ch":C
    .end local v18    # "dstart":I
    .end local v19    # "end":I
    .end local v22    # "message":Ljava/lang/String;
    .restart local v2    # "ch":C
    .restart local v3    # "dstart":I
    .restart local v7    # "pos":I
    .local v14, "message":Ljava/lang/String;
    :cond_38
    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v22, v14

    const/16 v21, 0x65

    move v14, v7

    .line 750
    .end local v2    # "ch":C
    .end local v3    # "dstart":I
    .end local v7    # "pos":I
    .local v14, "pos":I
    .restart local v17    # "ch":C
    .restart local v18    # "dstart":I
    .restart local v22    # "message":Ljava/lang/String;
    :goto_1c
    if-ge v14, v10, :cond_39

    .line 751
    add-int/lit8 v7, v14, 0x1

    .end local v14    # "pos":I
    .restart local v7    # "pos":I
    aget-char v2, v9, v14

    move/from16 v3, v18

    move-object/from16 v14, v22

    const/4 v4, 0x1

    const/16 v5, 0x3e

    const/16 v6, 0x65

    .end local v17    # "ch":C
    .restart local v2    # "ch":C
    goto/16 :goto_8

    .line 750
    .end local v2    # "ch":C
    .end local v7    # "pos":I
    .restart local v14    # "pos":I
    .restart local v17    # "ch":C
    :cond_39
    move v2, v0

    move/from16 v7, v17

    move/from16 v3, v18

    goto/16 :goto_32

    .line 206
    .end local v17    # "ch":C
    .end local v18    # "dstart":I
    .end local v22    # "message":Ljava/lang/String;
    .local v2, "pos":I
    .restart local v3    # "dstart":I
    .local v7, "ch":C
    .local v14, "message":Ljava/lang/String;
    :pswitch_b
    move-object/from16 v22, v14

    .line 760
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    :goto_1d
    const/16 v4, 0x3e

    if-ne v7, v4, :cond_3d

    .line 762
    add-int/lit8 v4, v2, -0x1

    sub-int/2addr v4, v15

    .line 763
    .end local v13    # "length":I
    .local v4, "length":I
    const/4 v5, 0x4

    if-lt v4, v5, :cond_3a

    aget-char v5, v9, v15

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_3a

    add-int/lit8 v5, v15, 0x1

    aget-char v5, v9, v5

    if-ne v5, v6, :cond_3a

    .line 767
    add-int/lit8 v5, v2, -0x2

    aget-char v5, v9, v5

    if-ne v5, v6, :cond_3b

    add-int/lit8 v5, v2, -0x3

    aget-char v5, v9, v5

    if-ne v5, v6, :cond_3b

    .line 770
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 771
    add-int/lit8 v5, v15, 0x2

    add-int/lit8 v6, v4, -0x4

    invoke-virtual {v8, v9, v5, v6}, Lgnu/xml/XMLFilter;->commentFromParser([CII)V

    .line 772
    goto :goto_1e

    .line 775
    :cond_3a
    const/4 v5, 0x6

    if-lt v4, v5, :cond_3c

    aget-char v5, v9, v15

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_3c

    add-int/lit8 v5, v15, 0x1

    aget-char v5, v9, v5

    const/16 v6, 0x43

    if-ne v5, v6, :cond_3c

    add-int/lit8 v5, v15, 0x2

    aget-char v5, v9, v5

    const/16 v6, 0x44

    if-ne v5, v6, :cond_3c

    add-int/lit8 v5, v15, 0x3

    aget-char v5, v9, v5

    const/16 v6, 0x41

    if-ne v5, v6, :cond_3c

    add-int/lit8 v5, v15, 0x4

    aget-char v5, v9, v5

    const/16 v6, 0x54

    if-ne v5, v6, :cond_3c

    add-int/lit8 v5, v15, 0x5

    aget-char v5, v9, v5

    const/16 v6, 0x41

    if-ne v5, v6, :cond_3c

    add-int/lit8 v5, v15, 0x6

    aget-char v5, v9, v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_3c

    .line 784
    add-int/lit8 v5, v2, -0x2

    aget-char v5, v9, v5

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_3b

    add-int/lit8 v5, v2, -0x3

    aget-char v5, v9, v5

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_3b

    .line 787
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 788
    add-int/lit8 v5, v15, 0x7

    add-int/lit8 v6, v2, -0xa

    sub-int/2addr v6, v15

    invoke-virtual {v8, v9, v5, v6}, Lgnu/xml/XMLFilter;->writeCDATA([CII)V

    .line 789
    goto :goto_1e

    .line 811
    :cond_3b
    move v13, v4

    goto :goto_1f

    .line 816
    :cond_3c
    :goto_1e
    move v5, v10

    .line 817
    .end local v15    # "start":I
    .local v5, "start":I
    const/4 v0, 0x1

    .line 818
    move v14, v2

    move v13, v4

    move v15, v5

    move v2, v0

    goto/16 :goto_32

    .line 798
    .end local v4    # "length":I
    .end local v5    # "start":I
    .restart local v13    # "length":I
    .restart local v15    # "start":I
    :cond_3d
    add-int/lit8 v4, v15, 0x7

    if-ne v2, v4, :cond_3e

    aget-char v4, v9, v15

    const/16 v5, 0x44

    if-ne v4, v5, :cond_3e

    add-int/lit8 v4, v15, 0x1

    aget-char v4, v9, v4

    const/16 v5, 0x4f

    if-ne v4, v5, :cond_3e

    add-int/lit8 v4, v15, 0x2

    aget-char v4, v9, v4

    const/16 v5, 0x43

    if-ne v4, v5, :cond_3e

    add-int/lit8 v4, v15, 0x3

    aget-char v4, v9, v4

    const/16 v5, 0x54

    if-ne v4, v5, :cond_3e

    add-int/lit8 v4, v15, 0x4

    aget-char v4, v9, v4

    const/16 v5, 0x59

    if-ne v4, v5, :cond_3e

    add-int/lit8 v4, v15, 0x5

    aget-char v4, v9, v4

    const/16 v5, 0x50

    if-ne v4, v5, :cond_3e

    const/16 v4, 0x45

    if-ne v7, v4, :cond_3e

    .line 807
    move v4, v10

    .line 808
    .end local v15    # "start":I
    .local v4, "start":I
    const/16 v0, 0xf

    .line 809
    move v14, v2

    move v15, v4

    move v2, v0

    goto/16 :goto_32

    .line 811
    .end local v4    # "start":I
    .restart local v15    # "start":I
    :cond_3e
    :goto_1f
    if-ge v2, v10, :cond_3f

    .line 812
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "pos":I
    .local v4, "pos":I
    aget-char v7, v9, v2

    move v2, v4

    goto/16 :goto_1d

    .line 811
    .end local v4    # "pos":I
    .restart local v2    # "pos":I
    :cond_3f
    move v14, v2

    move v2, v0

    goto/16 :goto_32

    .line 924
    .end local v22    # "message":Ljava/lang/String;
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_c
    move-object/from16 v22, v14

    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    add-int/lit8 v15, v2, -0x1

    .line 925
    const/4 v0, 0x5

    .line 926
    goto/16 :goto_0

    .line 826
    .end local v22    # "message":Ljava/lang/String;
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_d
    move-object/from16 v22, v14

    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    if-gez v3, :cond_40

    .line 829
    add-int/lit8 v3, v2, -0x1

    .line 830
    sub-int/2addr v3, v15

    .line 831
    const/4 v4, 0x1

    shl-int/2addr v3, v4

    .line 832
    const/4 v11, 0x0

    move v14, v7

    move v7, v11

    move v11, v2

    goto :goto_20

    .line 826
    :cond_40
    move v14, v7

    move v7, v11

    move v11, v2

    .line 836
    .end local v2    # "pos":I
    .local v7, "terminator":C
    .local v11, "pos":I
    .local v14, "ch":C
    :goto_20
    const/16 v2, 0x27

    if-eq v14, v2, :cond_46

    const/16 v2, 0x22

    if-ne v14, v2, :cond_41

    move/from16 v23, v12

    move v12, v7

    goto/16 :goto_21

    .line 843
    :cond_41
    if-nez v7, :cond_45

    .line 846
    const/16 v2, 0x5b

    if-ne v14, v2, :cond_42

    .line 847
    or-int/lit8 v2, v3, 0x1

    move v3, v2

    move/from16 v23, v12

    .end local v3    # "dstart":I
    .local v2, "dstart":I
    goto/16 :goto_23

    .line 848
    .end local v2    # "dstart":I
    .restart local v3    # "dstart":I
    :cond_42
    const/16 v2, 0x5d

    if-ne v14, v2, :cond_43

    .line 849
    and-int/lit8 v2, v3, -0x2

    move v3, v2

    move/from16 v23, v12

    .end local v3    # "dstart":I
    .restart local v2    # "dstart":I
    goto/16 :goto_23

    .line 850
    .end local v2    # "dstart":I
    .restart local v3    # "dstart":I
    :cond_43
    const/16 v2, 0x3e

    if-ne v14, v2, :cond_44

    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_44

    .line 852
    iput v11, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 853
    shr-int/lit8 v2, v3, 0x1

    .line 854
    .end local v3    # "dstart":I
    .restart local v2    # "dstart":I
    add-int v16, v2, v15

    .line 855
    .end local v2    # "dstart":I
    .local v16, "dstart":I
    add-int/lit8 v2, v11, -0x1

    sub-int v17, v2, v16

    move-object/from16 v2, p1

    move-object v3, v9

    move v4, v15

    move v5, v13

    move/from16 v6, v16

    move/from16 v23, v12

    move v12, v7

    .end local v7    # "terminator":C
    .local v12, "terminator":C
    .restart local v23    # "continue_state":I
    move/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Lgnu/xml/XMLFilter;->emitDoctypeDecl([CIIII)V

    .line 857
    const/16 v2, 0x3c

    .line 858
    .end local v12    # "terminator":C
    .local v2, "terminator":C
    move v3, v10

    .line 859
    .end local v15    # "start":I
    .local v3, "start":I
    const/4 v4, -0x1

    .line 860
    .end local v16    # "dstart":I
    .local v4, "dstart":I
    const/4 v0, 0x1

    .line 861
    move v15, v3

    move v3, v4

    move v7, v14

    move/from16 v12, v23

    move v14, v11

    move v11, v2

    move v2, v0

    goto/16 :goto_32

    .line 850
    .end local v2    # "terminator":C
    .end local v4    # "dstart":I
    .end local v23    # "continue_state":I
    .local v3, "dstart":I
    .restart local v7    # "terminator":C
    .local v12, "continue_state":I
    .restart local v15    # "start":I
    :cond_44
    move/from16 v23, v12

    move v12, v7

    .end local v7    # "terminator":C
    .local v12, "terminator":C
    .restart local v23    # "continue_state":I
    goto :goto_22

    .line 843
    .end local v23    # "continue_state":I
    .restart local v7    # "terminator":C
    .local v12, "continue_state":I
    :cond_45
    move/from16 v23, v12

    move v12, v7

    .end local v7    # "terminator":C
    .local v12, "terminator":C
    .restart local v23    # "continue_state":I
    goto :goto_22

    .line 836
    .end local v23    # "continue_state":I
    .restart local v7    # "terminator":C
    .local v12, "continue_state":I
    :cond_46
    move/from16 v23, v12

    move v12, v7

    .line 838
    .end local v7    # "terminator":C
    .local v12, "terminator":C
    .restart local v23    # "continue_state":I
    :goto_21
    if-nez v12, :cond_47

    .line 839
    move v2, v14

    move v7, v2

    .end local v12    # "terminator":C
    .restart local v2    # "terminator":C
    goto :goto_23

    .line 840
    .end local v2    # "terminator":C
    .restart local v12    # "terminator":C
    :cond_47
    if-ne v12, v14, :cond_48

    .line 841
    const/4 v2, 0x0

    move v7, v2

    .end local v12    # "terminator":C
    .restart local v2    # "terminator":C
    goto :goto_23

    .line 864
    .end local v2    # "terminator":C
    .restart local v12    # "terminator":C
    :cond_48
    :goto_22
    move v7, v12

    .end local v12    # "terminator":C
    .restart local v7    # "terminator":C
    :goto_23
    if-ge v11, v10, :cond_49

    .line 865
    add-int/lit8 v2, v11, 0x1

    .end local v11    # "pos":I
    .local v2, "pos":I
    aget-char v14, v9, v11

    move v11, v2

    move/from16 v12, v23

    goto :goto_20

    .line 864
    .end local v2    # "pos":I
    .restart local v11    # "pos":I
    :cond_49
    move v2, v0

    move/from16 v12, v23

    move/from16 v24, v11

    move v11, v7

    move v7, v14

    move/from16 v14, v24

    goto/16 :goto_32

    .line 497
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .restart local v2    # "pos":I
    .local v7, "ch":C
    .local v11, "terminator":C
    .local v12, "continue_state":I
    .local v14, "message":Ljava/lang/String;
    :pswitch_e
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    const/16 v4, 0x2f

    if-ne v7, v4, :cond_4a

    .line 499
    const/16 v0, 0x13

    .line 500
    move v14, v2

    move/from16 v12, v23

    move v2, v0

    goto/16 :goto_32

    .line 502
    :cond_4a
    const/16 v4, 0x3f

    if-ne v7, v4, :cond_4b

    .line 504
    move v4, v2

    .line 505
    .end local v15    # "start":I
    .local v4, "start":I
    const/16 v0, 0x18

    .line 506
    move v14, v2

    move v15, v4

    move/from16 v12, v23

    move v2, v0

    goto/16 :goto_32

    .line 508
    .end local v4    # "start":I
    .restart local v15    # "start":I
    :cond_4b
    const/16 v4, 0x21

    if-ne v7, v4, :cond_4c

    .line 510
    const/16 v0, 0x14

    .line 511
    move v4, v2

    .line 512
    .end local v15    # "start":I
    .restart local v4    # "start":I
    move v14, v2

    move v15, v4

    move/from16 v12, v23

    move v2, v0

    goto/16 :goto_32

    .line 515
    .end local v4    # "start":I
    .restart local v15    # "start":I
    :cond_4c
    add-int/lit8 v15, v2, -0x1

    .line 516
    const/4 v0, 0x3

    .line 517
    move-object/from16 v14, v22

    move/from16 v12, v23

    goto/16 :goto_0

    .line 821
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .restart local v12    # "continue_state":I
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_f
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    const/16 v0, 0x11

    .line 822
    add-int/lit8 v15, v2, -0x1

    .line 823
    goto/16 :goto_0

    .line 367
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .restart local v12    # "continue_state":I
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_10
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    const/16 v4, 0x20

    if-eq v7, v4, :cond_77

    const/16 v4, 0x9

    if-ne v7, v4, :cond_4d

    .line 368
    goto/16 :goto_31

    .line 369
    :cond_4d
    const/16 v4, 0xa

    if-eq v7, v4, :cond_4f

    const/16 v4, 0xd

    if-eq v7, v4, :cond_4f

    const/16 v4, 0x85

    if-eq v7, v4, :cond_4f

    const/16 v4, 0x2028

    if-ne v7, v4, :cond_4e

    goto :goto_24

    .line 376
    :cond_4e
    add-int/lit8 v0, v0, -0x2

    .line 377
    move-object/from16 v14, v22

    move/from16 v12, v23

    goto/16 :goto_0

    .line 372
    :cond_4f
    :goto_24
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 373
    goto/16 :goto_31

    .line 908
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .restart local v12    # "continue_state":I
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_11
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    const/16 v4, 0x27

    if-eq v7, v4, :cond_52

    const/16 v4, 0x22

    if-ne v7, v4, :cond_50

    goto :goto_25

    .line 915
    :cond_50
    const/16 v4, 0x20

    if-eq v7, v4, :cond_77

    const/16 v4, 0x9

    if-eq v7, v4, :cond_77

    const/16 v4, 0xd

    if-eq v7, v4, :cond_77

    const/16 v4, 0xa

    if-eq v7, v4, :cond_77

    const/16 v4, 0x85

    if-eq v7, v4, :cond_77

    const/16 v4, 0x2028

    if-ne v7, v4, :cond_51

    .line 917
    goto/16 :goto_31

    .line 918
    :cond_51
    const-string v14, "missing or unquoted attribute value"

    .line 919
    .end local v22    # "message":Ljava/lang/String;
    .restart local v14    # "message":Ljava/lang/String;
    const/16 v0, 0x24

    .line 920
    move/from16 v12, v23

    goto/16 :goto_0

    .line 910
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    :cond_52
    :goto_25
    move v4, v7

    .line 911
    .end local v11    # "terminator":C
    .local v4, "terminator":C
    const/16 v5, 0xc

    .line 912
    .end local v23    # "continue_state":I
    .local v5, "continue_state":I
    const/4 v0, 0x1

    .line 913
    move v14, v2

    move v11, v4

    move v12, v5

    move v2, v0

    goto/16 :goto_32

    .line 871
    .end local v4    # "terminator":C
    .end local v5    # "continue_state":I
    .end local v22    # "message":Ljava/lang/String;
    .restart local v11    # "terminator":C
    .restart local v12    # "continue_state":I
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_12
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    const/16 v11, 0x3c

    .line 872
    const/16 v12, 0xe

    .line 873
    .end local v23    # "continue_state":I
    .restart local v12    # "continue_state":I
    const/16 v4, 0x2f

    if-ne v7, v4, :cond_53

    .line 875
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 876
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    .line 877
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5, v5}, Lgnu/xml/XMLFilter;->emitEndElement([CII)V

    .line 878
    const/16 v0, 0x1b

    .line 879
    move v14, v2

    move v2, v0

    goto/16 :goto_32

    .line 881
    :cond_53
    const/16 v4, 0x3e

    if-ne v7, v4, :cond_54

    .line 883
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 884
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    .line 885
    const/4 v0, 0x1

    .line 886
    move v14, v2

    move v2, v0

    goto/16 :goto_32

    .line 888
    :cond_54
    add-int/lit8 v15, v2, -0x1

    .line 889
    const/16 v0, 0x9

    .line 890
    move-object/from16 v14, v22

    goto/16 :goto_0

    .line 892
    .end local v22    # "message":Ljava/lang/String;
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_13
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    const/16 v4, 0x20

    if-eq v7, v4, :cond_77

    const/16 v4, 0x9

    if-eq v7, v4, :cond_77

    const/16 v4, 0xd

    if-eq v7, v4, :cond_77

    const/16 v4, 0xa

    if-eq v7, v4, :cond_77

    const/16 v4, 0x85

    if-eq v7, v4, :cond_77

    const/16 v4, 0x2028

    if-ne v7, v4, :cond_55

    .line 894
    goto/16 :goto_31

    .line 895
    :cond_55
    sub-int v4, v2, v13

    iput v4, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 896
    invoke-virtual {v8, v9, v15, v13}, Lgnu/xml/XMLFilter;->emitStartAttribute([CII)V

    .line 897
    move v15, v10

    .line 898
    const/16 v4, 0x3d

    if-ne v7, v4, :cond_56

    .line 900
    const/16 v0, 0xb

    .line 901
    move v14, v2

    move/from16 v12, v23

    move v2, v0

    goto/16 :goto_32

    .line 903
    :cond_56
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    .line 904
    const-string v14, "missing or misplaced \'=\' after attribute name"

    .line 905
    .end local v22    # "message":Ljava/lang/String;
    .restart local v14    # "message":Ljava/lang/String;
    const/16 v0, 0x24

    .line 906
    move/from16 v12, v23

    goto/16 :goto_0

    .line 488
    .end local v23    # "continue_state":I
    .restart local v12    # "continue_state":I
    :pswitch_14
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 489
    const/16 v4, 0x3b

    if-eq v7, v4, :cond_57

    .line 490
    const/16 v4, 0x77

    const-string v5, "missing \';\'"

    invoke-virtual {v8, v4, v5}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 491
    :cond_57
    invoke-virtual {v8, v9, v15, v13}, Lgnu/xml/XMLFilter;->emitEntityReference([CII)V

    .line 492
    move v4, v10

    .line 493
    .end local v15    # "start":I
    .local v4, "start":I
    const/4 v0, 0x1

    .line 494
    move v14, v2

    move v15, v4

    move/from16 v12, v23

    move v2, v0

    goto/16 :goto_32

    .line 929
    .end local v4    # "start":I
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .restart local v12    # "continue_state":I
    .restart local v14    # "message":Ljava/lang/String;
    .restart local v15    # "start":I
    :pswitch_15
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 930
    invoke-virtual {v8, v9, v15, v13}, Lgnu/xml/XMLFilter;->emitEndElement([CII)V

    .line 931
    move v15, v10

    .line 933
    const/16 v0, 0x1d

    .line 934
    goto/16 :goto_0

    .line 386
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .restart local v12    # "continue_state":I
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_16
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    add-int/lit8 v4, v15, 0x1

    .line 399
    .end local v13    # "length":I
    .local v4, "length":I
    :goto_26
    const/16 v5, 0x61

    if-lt v7, v5, :cond_59

    const/16 v5, 0x7a

    if-le v7, v5, :cond_58

    goto :goto_28

    :cond_58
    const/16 v5, 0x2d

    :goto_27
    const/4 v6, 0x4

    goto/16 :goto_2b

    :cond_59
    :goto_28
    const/16 v5, 0x41

    if-lt v7, v5, :cond_5a

    const/16 v5, 0x5a

    if-le v7, v5, :cond_58

    :cond_5a
    const/16 v5, 0x5f

    if-eq v7, v5, :cond_67

    const/16 v5, 0x3a

    if-eq v7, v5, :cond_67

    const/16 v5, 0xc0

    if-lt v7, v5, :cond_5f

    const/16 v5, 0x2ff

    if-le v7, v5, :cond_58

    const/16 v5, 0x370

    if-lt v7, v5, :cond_5f

    const/16 v5, 0x1fff

    if-gt v7, v5, :cond_5b

    const/16 v5, 0x37e

    if-ne v7, v5, :cond_58

    :cond_5b
    const/16 v5, 0x200c

    if-lt v7, v5, :cond_5f

    const/16 v5, 0x200d

    if-le v7, v5, :cond_58

    const/16 v5, 0x2070

    if-lt v7, v5, :cond_5c

    const/16 v5, 0x218f

    if-le v7, v5, :cond_58

    :cond_5c
    const/16 v5, 0x2c00

    if-lt v7, v5, :cond_5d

    const/16 v5, 0x2fef

    if-le v7, v5, :cond_58

    :cond_5d
    const/16 v5, 0x3001

    if-lt v7, v5, :cond_5e

    const v5, 0xd7ff

    if-le v7, v5, :cond_58

    :cond_5e
    const v5, 0xf900

    if-lt v7, v5, :cond_5f

    const v5, 0xfffd

    if-le v7, v5, :cond_58

    :cond_5f
    if-le v2, v4, :cond_60

    const/16 v5, 0x30

    if-lt v7, v5, :cond_60

    const/16 v5, 0x39

    if-le v7, v5, :cond_58

    :cond_60
    const/16 v5, 0x2e

    if-eq v7, v5, :cond_67

    const/16 v5, 0x2d

    if-eq v7, v5, :cond_68

    const/16 v6, 0xb7

    if-eq v7, v6, :cond_68

    const/16 v6, 0x300

    if-le v7, v6, :cond_62

    const/16 v6, 0x36f

    if-le v7, v6, :cond_61

    const/16 v6, 0x203f

    if-lt v7, v6, :cond_62

    const/16 v6, 0x2040

    if-gt v7, v6, :cond_62

    :cond_61
    goto :goto_27

    .line 421
    :cond_62
    add-int/lit8 v0, v0, -0x1

    .line 422
    sub-int v13, v2, v4

    .line 423
    .end local v4    # "length":I
    .restart local v13    # "length":I
    if-nez v13, :cond_66

    .line 425
    const/16 v4, 0x8

    if-ne v0, v4, :cond_63

    .line 426
    const-string v4, "missing or invalid attribute name"

    move-object v14, v4

    .end local v22    # "message":Ljava/lang/String;
    .local v4, "message":Ljava/lang/String;
    goto :goto_2a

    .line 427
    .end local v4    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    :cond_63
    const/4 v4, 0x2

    if-eq v0, v4, :cond_65

    const/4 v6, 0x4

    if-ne v0, v6, :cond_64

    goto :goto_29

    .line 431
    :cond_64
    const-string v4, "missing or invalid name"

    move-object v14, v4

    .end local v22    # "message":Ljava/lang/String;
    .restart local v4    # "message":Ljava/lang/String;
    goto :goto_2a

    .line 429
    .end local v4    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    :cond_65
    :goto_29
    const-string v4, "missing or invalid element name"

    move-object v14, v4

    .line 432
    .end local v22    # "message":Ljava/lang/String;
    .restart local v14    # "message":Ljava/lang/String;
    :goto_2a
    const/16 v0, 0x24

    move/from16 v12, v23

    goto/16 :goto_0

    .line 423
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    :cond_66
    move-object/from16 v14, v22

    move/from16 v12, v23

    goto/16 :goto_0

    .line 399
    .end local v13    # "length":I
    .local v4, "length":I
    :cond_67
    const/16 v5, 0x2d

    :cond_68
    const/4 v6, 0x4

    .line 436
    :goto_2b
    if-ge v2, v10, :cond_69

    .line 437
    add-int/lit8 v12, v2, 0x1

    .end local v2    # "pos":I
    .local v12, "pos":I
    aget-char v7, v9, v2

    move v2, v12

    goto/16 :goto_26

    .line 436
    .end local v12    # "pos":I
    .restart local v2    # "pos":I
    :cond_69
    move v14, v2

    move v13, v4

    move/from16 v12, v23

    move v2, v0

    goto/16 :goto_32

    .line 519
    .end local v4    # "length":I
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .local v12, "continue_state":I
    .restart local v13    # "length":I
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_17
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    sub-int v4, v2, v13

    iput v4, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 520
    invoke-virtual {v8, v9, v15, v13}, Lgnu/xml/XMLFilter;->emitStartElement([CII)V

    .line 521
    const/16 v0, 0xc

    .line 522
    move v15, v10

    .line 523
    goto/16 :goto_0

    .line 261
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .restart local v12    # "continue_state":I
    .restart local v14    # "message":Ljava/lang/String;
    :pswitch_18
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    add-int/lit8 v4, v2, -0x1

    .line 263
    .end local v15    # "start":I
    .local v4, "start":I
    move v5, v2

    .line 266
    .end local v13    # "length":I
    .local v5, "length":I
    :goto_2c
    if-ne v7, v11, :cond_6a

    .line 268
    move/from16 v0, v23

    .line 269
    goto/16 :goto_30

    .line 271
    :cond_6a
    const/16 v6, 0x26

    if-ne v7, v6, :cond_6b

    .line 273
    const/16 v0, 0x19

    .line 274
    goto/16 :goto_30

    .line 276
    :cond_6b
    const/16 v6, 0xd

    if-ne v7, v6, :cond_70

    .line 278
    sub-int v5, v2, v5

    .line 279
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 280
    if-lez v5, :cond_6c

    .line 281
    invoke-virtual {v8, v9, v4, v5}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 282
    :cond_6c
    if-ge v2, v10, :cond_6f

    .line 284
    aget-char v7, v9, v2

    .line 285
    const/16 v12, 0xa

    if-ne v7, v12, :cond_6d

    .line 287
    move v4, v2

    .line 288
    add-int/lit8 v2, v2, 0x1

    move v5, v2

    goto :goto_2d

    .line 292
    :cond_6d
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    .line 293
    const/16 v12, 0x85

    if-ne v7, v12, :cond_6e

    .line 295
    add-int/lit8 v12, v2, 0x1

    .end local v2    # "pos":I
    .local v12, "pos":I
    move v4, v2

    .line 296
    add-int/lit8 v5, v12, 0x1

    move v2, v12

    .line 306
    .end local v12    # "pos":I
    .restart local v2    # "pos":I
    :goto_2d
    const/4 v12, 0x1

    invoke-virtual {v1, v12, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    const/16 v12, 0x85

    const/16 v13, 0xa

    const/16 v14, 0x2028

    goto :goto_2f

    .line 300
    :cond_6e
    const/4 v12, 0x1

    invoke-virtual {v1, v12, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 301
    move v4, v2

    .line 302
    add-int/lit8 v2, v2, 0x1

    move v5, v2

    .line 303
    goto :goto_2c

    .line 310
    :cond_6f
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    .line 311
    const/16 v0, 0x1c

    .line 312
    move v14, v2

    move v15, v4

    move v13, v5

    move/from16 v12, v23

    move v2, v0

    goto/16 :goto_32

    .line 315
    :cond_70
    const/16 v12, 0x85

    if-eq v7, v12, :cond_72

    const/16 v14, 0x2028

    if-ne v7, v14, :cond_71

    const/16 v13, 0xa

    goto :goto_2e

    .line 326
    :cond_71
    const/16 v13, 0xa

    if-ne v7, v13, :cond_74

    .line 328
    const/4 v15, 0x1

    invoke-virtual {v1, v15, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    goto :goto_2f

    .line 315
    :cond_72
    const/16 v13, 0xa

    const/16 v14, 0x2028

    .line 317
    :goto_2e
    sub-int v5, v2, v5

    .line 318
    add-int/lit8 v15, v2, -0x1

    iput v15, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 319
    if-lez v5, :cond_73

    .line 320
    invoke-virtual {v8, v9, v4, v5}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 321
    :cond_73
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    .line 322
    const/4 v15, 0x1

    invoke-virtual {v1, v15, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    .line 323
    add-int/lit8 v5, v2, 0x1

    .line 324
    move v4, v2

    .line 330
    :cond_74
    :goto_2f
    if-ne v2, v10, :cond_76

    .line 332
    add-int/lit8 v5, v5, -0x1

    .line 333
    nop

    .line 337
    :goto_30
    sub-int v5, v2, v5

    .line 338
    if-lez v5, :cond_75

    .line 340
    iput v2, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 341
    invoke-virtual {v8, v9, v4, v5}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 343
    :cond_75
    array-length v4, v9

    .line 344
    move v14, v2

    move v15, v4

    move v13, v5

    move/from16 v12, v23

    move v2, v0

    goto :goto_32

    .line 335
    :cond_76
    add-int/lit8 v15, v2, 0x1

    .end local v2    # "pos":I
    .local v15, "pos":I
    aget-char v7, v9, v2

    move v2, v15

    goto/16 :goto_2c

    .line 209
    .end local v4    # "start":I
    .end local v5    # "length":I
    .end local v22    # "message":Ljava/lang/String;
    .end local v23    # "continue_state":I
    .restart local v2    # "pos":I
    .local v12, "continue_state":I
    .restart local v13    # "length":I
    .restart local v14    # "message":Ljava/lang/String;
    .local v15, "start":I
    :pswitch_19
    move/from16 v23, v12

    move-object/from16 v22, v14

    .end local v12    # "continue_state":I
    .end local v14    # "message":Ljava/lang/String;
    .restart local v22    # "message":Ljava/lang/String;
    .restart local v23    # "continue_state":I
    const/4 v0, 0x1

    .line 210
    const/16 v0, 0x1f

    .line 211
    move v14, v2

    move v2, v0

    goto :goto_32

    .line 948
    :cond_77
    :goto_31
    move v14, v2

    move/from16 v12, v23

    move v2, v0

    .end local v0    # "state":I
    .end local v23    # "continue_state":I
    .local v2, "state":I
    .restart local v12    # "continue_state":I
    .local v14, "pos":I
    :goto_32
    if-ge v14, v10, :cond_78

    .line 949
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "pos":I
    .local v0, "pos":I
    aget-char v7, v9, v14

    move-object/from16 v14, v22

    move/from16 v24, v2

    move v2, v0

    move/from16 v0, v24

    goto/16 :goto_0

    .line 952
    .end local v0    # "pos":I
    .restart local v14    # "pos":I
    :cond_78
    sub-int v4, v14, v15

    .line 955
    .local v4, "saved":I
    if-lez v4, :cond_79

    .line 957
    :try_start_0
    iput v15, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 958
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v1, v0}, Lgnu/text/LineBufferedReader;->mark(I)V

    .line 960
    :cond_79
    iput v14, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 961
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 962
    .local v0, "x":I
    if-gez v0, :cond_7c

    .line 964
    const/4 v5, 0x1

    if-eq v2, v5, :cond_7b

    const/16 v5, 0x1c

    if-ne v2, v5, :cond_7a

    goto :goto_33

    .line 966
    :cond_7a
    const/16 v2, 0x25

    .line 967
    move v0, v2

    move v2, v14

    move-object/from16 v14, v22

    goto/16 :goto_0

    .line 965
    :cond_7b
    :goto_33
    return-void

    .line 969
    :cond_7c
    if-lez v4, :cond_7d

    .line 971
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->reset()V

    .line 972
    invoke-virtual {v1, v4}, Lgnu/text/LineBufferedReader;->skip(I)I

    goto :goto_34

    .line 975
    :cond_7d
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->unread_quick()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    .end local v0    # "x":I
    :goto_34
    nop

    .line 981
    iget v0, v1, Lgnu/text/LineBufferedReader;->pos:I

    .line 982
    .end local v14    # "pos":I
    .local v0, "pos":I
    iget-object v9, v1, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 984
    iget v10, v1, Lgnu/text/LineBufferedReader;->limit:I

    .line 985
    if-lez v4, :cond_7e

    sub-int v5, v0, v4

    goto :goto_35

    :cond_7e
    move v5, v10

    :goto_35
    move v15, v5

    .line 986
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "pos":I
    .local v5, "pos":I
    aget-char v7, v9, v0

    .line 987
    .end local v4    # "saved":I
    move v0, v2

    move v2, v5

    move-object/from16 v14, v22

    goto/16 :goto_0

    .line 977
    .end local v5    # "pos":I
    .restart local v4    # "saved":I
    .restart local v14    # "pos":I
    :catch_0
    move-exception v0

    .line 979
    .local v0, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_37

    :goto_36
    throw v5

    :goto_37
    goto :goto_36

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_14
        :pswitch_16
        :pswitch_13
        :pswitch_16
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_d
        :pswitch_16
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_10
        :pswitch_16
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_10
        :pswitch_a
        :pswitch_5
        :pswitch_10
        :pswitch_16
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .locals 1
    .param p0, "strm"    # Ljava/io/InputStream;
    .param p1, "uri"    # Ljava/lang/Object;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-static {p0}, Lgnu/xml/XMLParser;->XMLStreamReader(Ljava/io/InputStream;)Lgnu/text/LineInputStreamReader;

    move-result-object v0

    .line 134
    .local v0, "in":Lgnu/text/LineInputStreamReader;
    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Lgnu/text/LineInputStreamReader;->setName(Ljava/lang/Object;)V

    .line 136
    :cond_0
    invoke-static {v0, p2, p3}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 137
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->close()V

    .line 138
    return-void
.end method

.method public static parse(Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .locals 1
    .param p0, "uri"    # Ljava/lang/Object;
    .param p1, "messages"    # Lgnu/text/SourceMessages;
    .param p2, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-static {p0}, Lgnu/text/Path;->openInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lgnu/xml/XMLParser;->parse(Ljava/io/InputStream;Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 59
    return-void
.end method
