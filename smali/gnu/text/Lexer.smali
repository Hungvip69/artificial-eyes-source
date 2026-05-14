.class public Lgnu/text/Lexer;
.super Ljava/io/Reader;
.source "Lexer.java"


# instance fields
.field protected interactive:Z

.field messages:Lgnu/text/SourceMessages;

.field protected nesting:I

.field protected port:Lgnu/text/LineBufferedReader;

.field private saveTokenBufferLength:I

.field public tokenBuffer:[C

.field public tokenBufferLength:I


# direct methods
.method public constructor <init>(Lgnu/text/LineBufferedReader;)V
    .locals 1
    .param p1, "port"    # Lgnu/text/LineBufferedReader;

    .line 18
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    .line 317
    const/16 v0, 0x64

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Lgnu/text/Lexer;->saveTokenBufferLength:I

    .line 19
    iput-object p1, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    .line 20
    return-void
.end method

.method public constructor <init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V
    .locals 1
    .param p1, "port"    # Lgnu/text/LineBufferedReader;
    .param p2, "messages"    # Lgnu/text/SourceMessages;

    .line 23
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    .line 317
    const/16 v0, 0x64

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Lgnu/text/Lexer;->saveTokenBufferLength:I

    .line 24
    iput-object p1, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    .line 25
    iput-object p2, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    .line 26
    return-void
.end method

.method public static readDigitsInBuffer(Lgnu/text/LineBufferedReader;I)J
    .locals 14
    .param p0, "port"    # Lgnu/text/LineBufferedReader;
    .param p1, "radix"    # I

    .line 284
    const-wide/16 v0, 0x0

    .line 285
    .local v0, "ival":J
    const/4 v2, 0x0

    .line 286
    .local v2, "overflow":Z
    const-wide v3, 0x7fffffffffffffffL

    int-to-long v5, p1

    div-long/2addr v3, v5

    .line 287
    .local v3, "max_val":J
    iget v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 288
    .local v5, "i":I
    iget v6, p0, Lgnu/text/LineBufferedReader;->limit:I

    const-wide/16 v7, 0x0

    if-lt v5, v6, :cond_0

    .line 289
    return-wide v7

    .line 292
    :cond_0
    :goto_0
    iget-object v6, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    aget-char v6, v6, v5

    .line 293
    .local v6, "c":C
    invoke-static {v6, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    .line 294
    .local v9, "dval":I
    if-gez v9, :cond_1

    .line 295
    goto :goto_2

    .line 296
    :cond_1
    cmp-long v10, v0, v3

    if-lez v10, :cond_2

    .line 297
    const/4 v2, 0x1

    goto :goto_1

    .line 299
    :cond_2
    int-to-long v10, p1

    mul-long v10, v10, v0

    int-to-long v12, v9

    add-long/2addr v10, v12

    move-wide v0, v10

    .line 300
    :goto_1
    cmp-long v10, v0, v7

    if-gez v10, :cond_3

    .line 301
    const/4 v2, 0x1

    .line 302
    :cond_3
    add-int/lit8 v5, v5, 0x1

    iget v10, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v5, v10, :cond_5

    .line 303
    nop

    .line 305
    .end local v6    # "c":C
    .end local v9    # "dval":I
    :goto_2
    iput v5, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 306
    if-eqz v2, :cond_4

    const-wide/16 v6, -0x1

    goto :goto_3

    :cond_4
    move-wide v6, v0

    :goto_3
    return-wide v6

    .line 304
    :cond_5
    goto :goto_0
.end method


# virtual methods
.method public checkErrors(Ljava/io/PrintWriter;I)Z
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "max"    # I

    .line 145
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0, p1, p2}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkNext(C)Z
    .locals 2
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 122
    .local v0, "r":I
    if-ne v0, p1, :cond_0

    .line 123
    const/4 v1, 0x1

    return v1

    .line 124
    :cond_0
    if-ltz v0, :cond_1

    .line 125
    iget-object v1, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 126
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public clearErrors()V
    .locals 1

    .line 154
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->clearErrors()V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->close()V

    .line 60
    return-void
.end method

.method public eofError(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lgnu/text/Lexer;->fatal(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public eofError(Ljava/lang/String;II)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "startLine"    # I
    .param p3, "startColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x66

    move-object v1, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lgnu/text/Lexer;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 192
    new-instance v0, Lgnu/text/SyntaxException;

    iget-object v1, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-direct {v0, v1}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v0
.end method

.method public error(CLjava/lang/String;)V
    .locals 9
    .param p1, "severity"    # C
    .param p2, "message"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    .line 167
    .local v0, "line":I
    iget-object v1, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v1

    .line 168
    .local v1, "column":I
    iget-object v2, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    move v7, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_0
    move-object v3, p0

    move v4, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lgnu/text/Lexer;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 170
    return-void
.end method

.method public error(CLjava/lang/String;IILjava/lang/String;)V
    .locals 7
    .param p1, "severity"    # C
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "line"    # I
    .param p4, "column"    # I
    .param p5, "message"    # Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    iput-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    .line 161
    :cond_0
    iget-object v1, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;IILjava/lang/String;)V

    .line 162
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 174
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lgnu/text/Lexer;->error(CLjava/lang/String;)V

    .line 175
    return-void
.end method

.method public fatal(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 179
    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1}, Lgnu/text/Lexer;->error(CLjava/lang/String;)V

    .line 180
    new-instance v0, Lgnu/text/SyntaxException;

    iget-object v1, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-direct {v0, v1}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v0
.end method

.method public getColumnNumber()I
    .locals 1

    .line 311
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getErrors()Lgnu/text/SourceError;
    .locals 1

    .line 149
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->getErrors()Lgnu/text/SourceError;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 310
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getMessages()Lgnu/text/SourceMessages;
    .locals 1

    .line 136
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPort()Lgnu/text/LineBufferedReader;
    .locals 1

    .line 55
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    return-object v0
.end method

.method public isInteractive()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lgnu/text/Lexer;->interactive:Z

    return v0
.end method

.method public mark()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    iget v0, p0, Lgnu/text/Lexer;->saveTokenBufferLength:I

    if-gez v0, :cond_0

    .line 356
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lgnu/text/LineBufferedReader;->mark(I)V

    .line 357
    iget v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    iput v0, p0, Lgnu/text/Lexer;->saveTokenBufferLength:I

    .line 358
    return-void

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error: recursive call to mark not allowed"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    return v0
.end method

.method public popNesting(C)V
    .locals 2
    .param p1, "save"    # C

    .line 48
    invoke-virtual {p0}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v0

    .line 49
    .local v0, "port":Lgnu/text/LineBufferedReader;
    iput-char p1, v0, Lgnu/text/LineBufferedReader;->readState:C

    .line 50
    iget v1, p0, Lgnu/text/Lexer;->nesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgnu/text/Lexer;->nesting:I

    .line 51
    return-void
.end method

.method public pushNesting(C)C
    .locals 2
    .param p1, "promptChar"    # C

    .line 36
    iget v0, p0, Lgnu/text/Lexer;->nesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/text/Lexer;->nesting:I

    .line 37
    invoke-virtual {p0}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v0

    .line 38
    .local v0, "port":Lgnu/text/LineBufferedReader;
    iget-char v1, v0, Lgnu/text/LineBufferedReader;->readState:C

    .line 39
    .local v1, "save":C
    iput-char p1, v0, Lgnu/text/LineBufferedReader;->readState:C

    .line 40
    return v1
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 1
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/text/LineBufferedReader;->read([CII)I

    move-result v0

    return v0
.end method

.method public readDelimited(Ljava/lang/String;)Z
    .locals 8
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 252
    .local v1, "dlen":I
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 255
    .local v2, "last":C
    :goto_0
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v3

    .line 256
    .local v3, "ch":I
    if-gez v3, :cond_0

    .line 257
    return v0

    .line 260
    :cond_0
    if-ne v3, v2, :cond_3

    iget v4, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    add-int/lit8 v5, v1, -0x1

    move v6, v5

    .local v6, "j":I
    sub-int/2addr v4, v5

    move v5, v4

    .local v5, "dstart":I
    if-ltz v4, :cond_3

    .line 266
    :cond_1
    if-nez v6, :cond_2

    .line 268
    iput v5, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 269
    const/4 v0, 0x1

    return v0

    .line 271
    :cond_2
    add-int/lit8 v6, v6, -0x1

    .line 273
    iget-object v4, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    add-int v7, v5, v6

    aget-char v4, v4, v7

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v4, v7, :cond_1

    .line 275
    .end local v5    # "dstart":I
    .end local v6    # "j":I
    :cond_3
    int-to-char v4, v3

    invoke-virtual {p0, v4}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 276
    .end local v3    # "ch":I
    goto :goto_0
.end method

.method public readOptionalExponent()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v0

    .line 204
    .local v0, "sign":I
    const/4 v1, 0x0

    .line 206
    .local v1, "overflow":Z
    const/16 v2, 0x2b

    const/16 v3, 0x2d

    if-eq v0, v2, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    move v2, v0

    .line 211
    .local v2, "c":I
    const/4 v0, 0x0

    goto :goto_1

    .line 207
    .end local v2    # "c":I
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v2

    .line 214
    .restart local v2    # "c":I
    :goto_1
    if-ltz v2, :cond_5

    int-to-char v4, v2

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    move v6, v4

    .local v6, "value":I
    if-gez v4, :cond_2

    goto :goto_3

    .line 222
    :cond_2
    const v4, 0xccccccb

    .line 225
    .local v4, "max":I
    :goto_2
    invoke-virtual {p0}, Lgnu/text/Lexer;->read()I

    move-result v2

    .line 226
    int-to-char v7, v2

    invoke-static {v7, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 227
    .local v7, "d":I
    if-gez v7, :cond_3

    .line 228
    goto :goto_4

    .line 229
    :cond_3
    if-le v6, v4, :cond_4

    .line 230
    const/4 v1, 0x1

    .line 231
    :cond_4
    mul-int/lit8 v8, v6, 0xa

    add-int v6, v8, v7

    .line 232
    .end local v7    # "d":I
    goto :goto_2

    .line 216
    .end local v4    # "max":I
    .end local v6    # "value":I
    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    .line 217
    const-string v4, "exponent sign not followed by digit"

    invoke-virtual {p0, v4}, Lgnu/text/Lexer;->error(Ljava/lang/String;)V

    .line 218
    :cond_6
    const/4 v6, 0x1

    .line 234
    .restart local v6    # "value":I
    :goto_4
    if-ltz v2, :cond_7

    .line 235
    invoke-virtual {p0, v2}, Lgnu/text/Lexer;->unread(I)V

    .line 236
    :cond_7
    if-ne v0, v3, :cond_8

    .line 237
    neg-int v6, v6

    .line 238
    :cond_8
    if-eqz v1, :cond_a

    .line 239
    if-ne v0, v3, :cond_9

    const/high16 v3, -0x80000000

    goto :goto_5

    :cond_9
    const v3, 0x7fffffff

    :goto_5
    return v3

    .line 240
    :cond_a
    return v6
.end method

.method public readUnicodeChar()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 70
    .local v0, "c":I
    const v1, 0xd800

    if-lt v0, v1, :cond_0

    const v2, 0xdbff

    if-ge v0, v2, :cond_0

    .line 72
    iget-object v2, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->read()I

    move-result v2

    .line 74
    .local v2, "next":I
    const v3, 0xdc00

    if-lt v2, v3, :cond_0

    const v4, 0xdfff

    if-gt v2, v4, :cond_0

    .line 75
    sub-int v1, v0, v1

    shl-int/lit8 v1, v1, 0xa

    sub-int v3, v0, v3

    add-int/2addr v1, v3

    const/high16 v3, 0x10000

    add-int v0, v1, v3

    .line 77
    .end local v2    # "next":I
    :cond_0
    return v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    iget v0, p0, Lgnu/text/Lexer;->saveTokenBufferLength:I

    if-ltz v0, :cond_0

    .line 366
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->reset()V

    .line 367
    const/4 v0, -0x1

    iput v0, p0, Lgnu/text/Lexer;->saveTokenBufferLength:I

    .line 368
    return-void

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error: reset called without prior mark"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seenErrors()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setInteractive(Z)V
    .locals 0
    .param p1, "v"    # Z

    .line 314
    iput-boolean p1, p0, Lgnu/text/Lexer;->interactive:Z

    return-void
.end method

.method public setMessages(Lgnu/text/SourceMessages;)V
    .locals 0
    .param p1, "messages"    # Lgnu/text/SourceMessages;

    .line 138
    iput-object p1, p0, Lgnu/text/Lexer;->messages:Lgnu/text/SourceMessages;

    return-void
.end method

.method public skip()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->skip()V

    .line 100
    return-void
.end method

.method protected skip_quick()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->skip_quick()V

    .line 132
    return-void
.end method

.method public tokenBufferAppend(I)V
    .locals 4
    .param p1, "ch"    # I

    .line 325
    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_0

    .line 327
    sub-int v0, p1, v0

    shr-int/lit8 v0, v0, 0xa

    const v1, 0xd800

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 328
    and-int/lit16 v0, p1, 0x3ff

    const v1, 0xdc00

    add-int p1, v0, v1

    .line 331
    :cond_0
    iget v0, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 332
    .local v0, "len":I
    iget-object v1, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    .line 333
    .local v1, "buffer":[C
    iget-object v2, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 335
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [C

    iput-object v2, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    .line 336
    iget-object v2, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    iget-object v1, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    .line 339
    :cond_1
    int-to-char v2, p1

    aput-char v2, v1, v0

    .line 340
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 341
    return-void
.end method

.method public tokenBufferString()Ljava/lang/String;
    .locals 4

    .line 345
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/text/Lexer;->tokenBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lgnu/text/Lexer;->tokenBufferLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method protected unread()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->unread()V

    .line 105
    return-void
.end method

.method public unread(I)V
    .locals 1
    .param p1, "ch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    if-ltz p1, :cond_0

    .line 89
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->unread()V

    .line 90
    :cond_0
    return-void
.end method

.method protected unread_quick()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lgnu/text/Lexer;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->unread_quick()V

    .line 110
    return-void
.end method
