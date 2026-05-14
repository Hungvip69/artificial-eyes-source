.class public Lgnu/ecmascript/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# static fields
.field public static final emptyArgs:[Lgnu/expr/Expression;

.field static emptyStatement:Lgnu/expr/Expression;

.field public static eofExpr:Lgnu/expr/Expression;


# instance fields
.field public errors:I

.field lexer:Lgnu/ecmascript/Lexer;

.field port:Lgnu/mapping/InPort;

.field previous_token:Ljava/lang/Object;

.field token:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v1, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lgnu/ecmascript/Parser;->eofExpr:Lgnu/expr/Expression;

    .line 183
    const/4 v0, 0x0

    new-array v0, v0, [Lgnu/expr/Expression;

    sput-object v0, Lgnu/ecmascript/Parser;->emptyArgs:[Lgnu/expr/Expression;

    .line 351
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lgnu/ecmascript/Parser;->emptyStatement:Lgnu/expr/Expression;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/InPort;)V
    .locals 1
    .param p1, "port"    # Lgnu/mapping/InPort;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lgnu/ecmascript/Parser;->port:Lgnu/mapping/InPort;

    .line 21
    new-instance v0, Lgnu/ecmascript/Lexer;

    invoke-direct {v0, p1}, Lgnu/ecmascript/Lexer;-><init>(Lgnu/mapping/InPort;)V

    iput-object v0, p0, Lgnu/ecmascript/Parser;->lexer:Lgnu/ecmascript/Lexer;

    .line 22
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .line 504
    new-instance v0, Lkawa/standard/Scheme;

    invoke-direct {v0}, Lkawa/standard/Scheme;-><init>()V

    .line 506
    .local v0, "language":Lgnu/expr/Language;
    invoke-static {}, Lgnu/mapping/InPort;->inDefault()Lgnu/mapping/InPort;

    move-result-object v1

    .line 507
    .local v1, "inp":Lgnu/mapping/InPort;
    instance-of v2, v1, Lgnu/mapping/TtyInPort;

    if-eqz v2, :cond_0

    .line 509
    new-instance v2, Lgnu/ecmascript/Prompter;

    invoke-direct {v2}, Lgnu/ecmascript/Prompter;-><init>()V

    .line 510
    .local v2, "prompter":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Lgnu/mapping/TtyInPort;

    move-object v4, v2

    check-cast v4, Lgnu/mapping/Procedure;

    invoke-virtual {v3, v4}, Lgnu/mapping/TtyInPort;->setPrompter(Lgnu/mapping/Procedure;)V

    .line 513
    .end local v2    # "prompter":Ljava/lang/Object;
    :cond_0
    new-instance v2, Lgnu/ecmascript/Parser;

    invoke-direct {v2, v1}, Lgnu/ecmascript/Parser;-><init>(Lgnu/mapping/InPort;)V

    .line 514
    .local v2, "parser":Lgnu/ecmascript/Parser;
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v3

    .line 530
    .local v3, "out":Lgnu/mapping/OutPort;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lgnu/ecmascript/Parser;->parseStatement()Lgnu/expr/Expression;

    move-result-object v4

    .line 531
    .local v4, "expr":Lgnu/expr/Expression;
    sget-object v5, Lgnu/ecmascript/Parser;->eofExpr:Lgnu/expr/Expression;

    if-ne v4, v5, :cond_1

    .line 532
    nop

    .line 548
    .end local v4    # "expr":Lgnu/expr/Expression;
    return-void

    .line 533
    .restart local v4    # "expr":Lgnu/expr/Expression;
    :cond_1
    const-string v5, "[Expression: "

    invoke-virtual {v3, v5}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v4, v3}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 535
    const-string v5, "]"

    invoke-virtual {v3, v5}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 536
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v5

    .line 537
    .local v5, "result":Ljava/lang/Object;
    const-string v6, "result: "

    invoke-virtual {v3, v6}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v3, v5}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 539
    invoke-virtual {v3}, Lgnu/mapping/OutPort;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    .end local v4    # "expr":Lgnu/expr/Expression;
    .end local v5    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 541
    :catchall_0
    move-exception v4

    .line 543
    .local v4, "ex":Ljava/lang/Throwable;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "caught exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 544
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 545
    return-void
.end method


# virtual methods
.method public buildLoop(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 3
    .param p1, "init"    # Lgnu/expr/Expression;
    .param p2, "test"    # Lgnu/expr/Expression;
    .param p3, "incr"    # Lgnu/expr/Expression;
    .param p4, "body"    # Lgnu/expr/Expression;

    .line 380
    if-eqz p1, :cond_0

    .line 382
    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 383
    .local v0, "pair":[Lgnu/expr/Expression;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 384
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, p3, p4}, Lgnu/ecmascript/Parser;->buildLoop(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 385
    new-instance v1, Lgnu/expr/BeginExp;

    invoke-direct {v1, v0}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    return-object v1

    .line 387
    .end local v0    # "pair":[Lgnu/expr/Expression;
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "not implemented - buildLoop"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v0

    .line 228
    .local v0, "token":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 229
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 230
    :cond_0
    const-string v1, "missing identifier"

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 231
    const-string v1, "??"

    return-object v1
.end method

.method public getSemicolon()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    sget-object v1, Lgnu/ecmascript/Lexer;->semicolonToken:Lgnu/text/Char;

    if-ne v0, v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    sget-object v1, Lgnu/ecmascript/Lexer;->rbraceToken:Lgnu/text/Char;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    sget-object v1, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lgnu/ecmascript/Parser;->previous_token:Ljava/lang/Object;

    sget-object v1, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 153
    goto :goto_0

    .line 155
    :cond_1
    const-string v0, "missing \';\' after expression"

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 156
    :cond_2
    :goto_0
    return-void
.end method

.method public getToken()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "result":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 131
    return-object v0
.end method

.method public makeCallExpression(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "exp"    # Lgnu/expr/Expression;
    .param p2, "args"    # [Lgnu/expr/Expression;

    .line 221
    new-instance v0, Lgnu/expr/ApplyExp;

    invoke-direct {v0, p1, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v0
.end method

.method public makeNewExpression(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "exp"    # Lgnu/expr/Expression;
    .param p2, "args"    # [Lgnu/expr/Expression;

    .line 213
    if-nez p2, :cond_0

    .line 214
    sget-object p2, Lgnu/ecmascript/Parser;->emptyArgs:[Lgnu/expr/Expression;

    .line 215
    :cond_0
    const/4 p1, 0x0

    .line 216
    new-instance v0, Lgnu/expr/ApplyExp;

    invoke-direct {v0, p1, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v0
.end method

.method public makePropertyAccessor(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "exp"    # Lgnu/expr/Expression;
    .param p2, "prop"    # Lgnu/expr/Expression;

    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public parseArguments()[Lgnu/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 189
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, "token":Ljava/lang/Object;
    sget-object v1, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-ne v0, v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 193
    sget-object v1, Lgnu/ecmascript/Parser;->emptyArgs:[Lgnu/expr/Expression;

    return-object v1

    .line 195
    :cond_0
    new-instance v1, Ljava/util/Vector;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 198
    .local v1, "args":Ljava/util/Vector;
    :goto_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseAssignmentExpression()Lgnu/expr/Expression;

    move-result-object v2

    .line 199
    .local v2, "arg":Lgnu/expr/Expression;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v0

    .line 201
    sget-object v3, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-ne v0, v3, :cond_1

    .line 202
    nop

    .line 206
    .end local v2    # "arg":Lgnu/expr/Expression;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Lgnu/expr/Expression;

    .line 207
    .local v2, "exps":[Lgnu/expr/Expression;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 208
    return-object v2

    .line 203
    .local v2, "arg":Lgnu/expr/Expression;
    :cond_1
    sget-object v3, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    if-eq v0, v3, :cond_2

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid token \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in argument list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 205
    .end local v2    # "arg":Lgnu/expr/Expression;
    :cond_2
    goto :goto_0
.end method

.method public parseAssignmentExpression()Lgnu/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseConditionalExpression()Lgnu/expr/Expression;

    move-result-object v0

    .line 43
    .local v0, "exp1":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v1

    .line 44
    .local v1, "token":Ljava/lang/Object;
    sget-object v2, Lgnu/ecmascript/Lexer;->equalToken:Lgnu/text/Char;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 46
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 47
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseAssignmentExpression()Lgnu/expr/Expression;

    move-result-object v2

    .line 48
    .local v2, "exp2":Lgnu/expr/Expression;
    instance-of v4, v0, Lgnu/expr/ReferenceExp;

    if-eqz v4, :cond_0

    .line 50
    new-instance v4, Lgnu/expr/SetExp;

    move-object v5, v0

    check-cast v5, Lgnu/expr/ReferenceExp;

    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    .line 51
    .local v4, "sex":Lgnu/expr/SetExp;
    invoke-virtual {v4, v3}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 52
    return-object v4

    .line 54
    .end local v4    # "sex":Lgnu/expr/SetExp;
    :cond_0
    const-string v3, "unmplemented non-symbol ihs in assignment"

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3

    .line 58
    .end local v2    # "exp2":Lgnu/expr/Expression;
    :cond_1
    instance-of v2, v1, Lgnu/ecmascript/Reserved;

    if-nez v2, :cond_2

    .line 59
    return-object v0

    .line 60
    :cond_2
    move-object v2, v1

    check-cast v2, Lgnu/ecmascript/Reserved;

    .line 61
    .local v2, "op":Lgnu/ecmascript/Reserved;
    invoke-virtual {v2}, Lgnu/ecmascript/Reserved;->isAssignmentOp()Z

    move-result v4

    if-nez v4, :cond_3

    .line 62
    return-object v0

    .line 63
    :cond_3
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 64
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseAssignmentExpression()Lgnu/expr/Expression;

    move-result-object v4

    .line 65
    .local v4, "exp2":Lgnu/expr/Expression;
    const/4 v5, 0x2

    new-array v5, v5, [Lgnu/expr/Expression;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v4, v5, v3

    move-object v3, v5

    .line 66
    .local v3, "args":[Lgnu/expr/Expression;
    new-instance v5, Lgnu/expr/ApplyExp;

    new-instance v6, Lgnu/expr/QuoteExp;

    iget-object v7, v2, Lgnu/ecmascript/Reserved;->proc:Lgnu/mapping/Procedure;

    invoke-direct {v6, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-direct {v5, v6, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v5
.end method

.method public parseBinaryExpression(I)Lgnu/expr/Expression;
    .locals 7
    .param p1, "prio"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseUnaryExpression()Lgnu/expr/Expression;

    move-result-object v0

    .line 338
    .local v0, "exp1":Lgnu/expr/Expression;
    :goto_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    .line 339
    iget-object v1, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    instance-of v1, v1, Lgnu/ecmascript/Reserved;

    if-nez v1, :cond_0

    .line 340
    return-object v0

    .line 341
    :cond_0
    iget-object v1, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    check-cast v1, Lgnu/ecmascript/Reserved;

    .line 342
    .local v1, "op":Lgnu/ecmascript/Reserved;
    iget v2, v1, Lgnu/ecmascript/Reserved;->prio:I

    if-ge v2, p1, :cond_1

    .line 343
    return-object v0

    .line 344
    :cond_1
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    .line 345
    iget v2, v1, Lgnu/ecmascript/Reserved;->prio:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lgnu/ecmascript/Parser;->parseBinaryExpression(I)Lgnu/expr/Expression;

    move-result-object v2

    .line 346
    .local v2, "exp2":Lgnu/expr/Expression;
    const/4 v4, 0x2

    new-array v4, v4, [Lgnu/expr/Expression;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v2, v4, v3

    move-object v3, v4

    .line 347
    .local v3, "args":[Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/ApplyExp;

    new-instance v5, Lgnu/expr/QuoteExp;

    iget-object v6, v1, Lgnu/ecmascript/Reserved;->proc:Lgnu/mapping/Procedure;

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v5, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v4

    .line 348
    .end local v1    # "op":Lgnu/ecmascript/Reserved;
    .end local v2    # "exp2":Lgnu/expr/Expression;
    .end local v3    # "args":[Lgnu/expr/Expression;
    goto :goto_0
.end method

.method public parseBlock()Lgnu/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "exps":[Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lgnu/ecmascript/Lexer;->lbraceToken:Lgnu/text/Char;

    if-eq v1, v2, :cond_0

    .line 444
    const-string v1, "extened \'{\'"

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 445
    :cond_0
    const/4 v1, 0x0

    .line 448
    .local v1, "nExps":I
    :goto_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    .line 450
    iget-object v2, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    sget-object v3, Lgnu/ecmascript/Lexer;->rbraceToken:Lgnu/text/Char;

    if-ne v2, v3, :cond_2

    .line 452
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 453
    if-nez v0, :cond_1

    .line 454
    sget-object v2, Lgnu/ecmascript/Parser;->emptyStatement:Lgnu/expr/Expression;

    return-object v2

    .line 455
    :cond_1
    const/4 v2, 0x1

    .local v2, "last":Z
    goto :goto_1

    .line 458
    .end local v2    # "last":Z
    :cond_2
    const/4 v2, 0x0

    .line 459
    .restart local v2    # "last":Z
    :goto_1
    const/4 v3, 0x2

    if-nez v0, :cond_3

    .line 460
    new-array v0, v3, [Lgnu/expr/Expression;

    goto :goto_4

    .line 461
    :cond_3
    array-length v4, v0

    if-eqz v2, :cond_4

    if-eq v4, v1, :cond_6

    goto :goto_2

    :cond_4
    if-gt v4, v1, :cond_6

    .line 463
    :goto_2
    if-eqz v2, :cond_5

    move v4, v1

    goto :goto_3

    :cond_5
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    :goto_3
    move v3, v4

    .line 464
    .local v3, "newsize":I
    new-array v4, v3, [Lgnu/expr/Expression;

    .line 465
    .local v4, "new_exps":[Lgnu/expr/Expression;
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 466
    move-object v0, v4

    .line 468
    .end local v3    # "newsize":I
    .end local v4    # "new_exps":[Lgnu/expr/Expression;
    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    .line 469
    new-instance v3, Lgnu/expr/BeginExp;

    invoke-direct {v3, v0}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    return-object v3

    .line 470
    :cond_7
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "nExps":I
    .local v3, "nExps":I
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseStatement()Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v0, v1

    .line 471
    .end local v2    # "last":Z
    move v1, v3

    goto :goto_0
.end method

.method public parseConditionalExpression()Lgnu/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/ecmascript/Parser;->parseBinaryExpression(I)Lgnu/expr/Expression;

    move-result-object v0

    .line 28
    .local v0, "exp1":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v1

    .line 29
    .local v1, "result":Ljava/lang/Object;
    sget-object v2, Lgnu/ecmascript/Lexer;->condToken:Lgnu/text/Char;

    if-eq v1, v2, :cond_0

    .line 30
    return-object v0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 32
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseAssignmentExpression()Lgnu/expr/Expression;

    move-result-object v2

    .line 33
    .local v2, "exp2":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lgnu/ecmascript/Lexer;->colonToken:Lgnu/text/Char;

    if-eq v3, v4, :cond_1

    .line 34
    const-string v3, "expected \':\' in conditional expression"

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3

    .line 35
    :cond_1
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseAssignmentExpression()Lgnu/expr/Expression;

    move-result-object v3

    .line 36
    .local v3, "exp3":Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/IfExp;

    invoke-direct {v4, v0, v2, v3}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    return-object v4
.end method

.method public parseExpression()Lgnu/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "exps":[Lgnu/expr/Expression;
    const/4 v1, 0x0

    .line 77
    .local v1, "nExps":I
    :goto_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseAssignmentExpression()Lgnu/expr/Expression;

    move-result-object v2

    .line 78
    .local v2, "exp1":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 79
    .local v3, "last":Z
    :goto_1
    const/4 v4, 0x2

    if-nez v0, :cond_2

    .line 81
    if-eqz v3, :cond_1

    .line 82
    return-object v2

    .line 83
    :cond_1
    new-array v0, v4, [Lgnu/expr/Expression;

    goto :goto_4

    .line 85
    :cond_2
    array-length v6, v0

    if-eqz v3, :cond_3

    add-int/lit8 v7, v1, 0x1

    if-eq v6, v7, :cond_5

    goto :goto_2

    :cond_3
    if-gt v6, v1, :cond_5

    .line 87
    :goto_2
    if-eqz v3, :cond_4

    add-int/lit8 v4, v1, 0x1

    goto :goto_3

    :cond_4
    array-length v6, v0

    mul-int/lit8 v4, v6, 0x2

    .line 88
    .local v4, "newsize":I
    :goto_3
    new-array v6, v4, [Lgnu/expr/Expression;

    .line 89
    .local v6, "new_exps":[Lgnu/expr/Expression;
    invoke-static {v0, v5, v6, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    move-object v0, v6

    .line 92
    .end local v4    # "newsize":I
    .end local v6    # "new_exps":[Lgnu/expr/Expression;
    :cond_5
    :goto_4
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "nExps":I
    .local v4, "nExps":I
    aput-object v2, v0, v1

    .line 93
    if-eqz v3, :cond_6

    .line 94
    new-instance v1, Lgnu/expr/BeginExp;

    invoke-direct {v1, v0}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    return-object v1

    .line 95
    :cond_6
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 96
    .end local v2    # "exp1":Lgnu/expr/Expression;
    .end local v3    # "last":Z
    move v1, v4

    goto :goto_0
.end method

.method public parseFunctionDefinition()Lgnu/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 409
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v1

    .line 411
    .local v1, "token":Ljava/lang/Object;
    sget-object v2, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    if-eq v1, v2, :cond_0

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \'(\' - got:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 413
    :cond_0
    new-instance v2, Ljava/util/Vector;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    .line 414
    .local v2, "args":Ljava/util/Vector;
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-ne v3, v4, :cond_1

    .line 416
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    goto :goto_1

    .line 422
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, "arg":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 424
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v1

    .line 425
    sget-object v4, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-ne v1, v4, :cond_2

    .line 426
    nop

    .line 431
    .end local v3    # "arg":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseBlock()Lgnu/expr/Expression;

    move-result-object v3

    .line 432
    .local v3, "body":Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/LambdaExp;

    invoke-direct {v4, v3}, Lgnu/expr/LambdaExp;-><init>(Lgnu/expr/Expression;)V

    .line 433
    .local v4, "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {v4, v0}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 434
    new-instance v5, Lgnu/expr/SetExp;

    invoke-direct {v5, v0, v4}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    .line 435
    .local v5, "sexp":Lgnu/expr/SetExp;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 436
    return-object v5

    .line 427
    .end local v4    # "lexp":Lgnu/expr/LambdaExp;
    .end local v5    # "sexp":Lgnu/expr/SetExp;
    .local v3, "arg":Ljava/lang/String;
    :cond_2
    sget-object v4, Lgnu/ecmascript/Lexer;->commaToken:Lgnu/text/Char;

    if-eq v1, v4, :cond_3

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid token \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in argument list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 429
    .end local v3    # "arg":Ljava/lang/String;
    :cond_3
    goto :goto_0
.end method

.method public parseIfStatement()Lgnu/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 357
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v0

    .line 358
    .local v0, "token":Ljava/lang/Object;
    sget-object v1, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    if-eq v0, v1, :cond_0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected \'(\' - got:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 360
    :cond_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseExpression()Lgnu/expr/Expression;

    move-result-object v1

    .line 361
    .local v1, "test_part":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v0

    .line 362
    sget-object v2, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-eq v0, v2, :cond_1

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \')\' - got:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 364
    :cond_1
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseStatement()Lgnu/expr/Expression;

    move-result-object v2

    .line 365
    .local v2, "then_part":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v0

    .line 367
    sget-object v3, Lgnu/ecmascript/Lexer;->elseToken:Lgnu/ecmascript/Reserved;

    if-ne v0, v3, :cond_2

    .line 369
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 370
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseStatement()Lgnu/expr/Expression;

    move-result-object v3

    .local v3, "else_part":Lgnu/expr/Expression;
    goto :goto_0

    .line 373
    .end local v3    # "else_part":Lgnu/expr/Expression;
    :cond_2
    const/4 v3, 0x0

    .line 374
    .restart local v3    # "else_part":Lgnu/expr/Expression;
    :goto_0
    new-instance v4, Lgnu/expr/IfExp;

    invoke-direct {v4, v1, v2, v3}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    return-object v4
.end method

.method public parseLeftHandSideExpression()Lgnu/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "newCount":I
    :goto_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lgnu/ecmascript/Lexer;->newToken:Lgnu/ecmascript/Reserved;

    if-ne v1, v2, :cond_0

    .line 240
    add-int/lit8 v0, v0, 0x1

    .line 241
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parsePrimaryExpression()Lgnu/expr/Expression;

    move-result-object v1

    .line 246
    .local v1, "exp":Lgnu/expr/Expression;
    :goto_1
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v2

    .line 247
    .local v2, "token":Ljava/lang/Object;
    sget-object v3, Lgnu/ecmascript/Lexer;->dotToken:Lgnu/text/Char;

    if-ne v2, v3, :cond_1

    .line 249
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 250
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Lgnu/expr/QuoteExp;

    invoke-direct {v4, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v4}, Lgnu/ecmascript/Parser;->makePropertyAccessor(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    .line 252
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_2

    .line 253
    :cond_1
    sget-object v3, Lgnu/ecmascript/Lexer;->lbracketToken:Lgnu/text/Char;

    if-ne v2, v3, :cond_3

    .line 255
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 256
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseExpression()Lgnu/expr/Expression;

    move-result-object v3

    .line 257
    .local v3, "prop":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v2

    .line 258
    sget-object v4, Lgnu/ecmascript/Lexer;->rbracketToken:Lgnu/text/Char;

    if-eq v2, v4, :cond_2

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected \']\' - got:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4

    .line 260
    :cond_2
    invoke-virtual {p0, v1, v3}, Lgnu/ecmascript/Parser;->makePropertyAccessor(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    .line 261
    .end local v3    # "prop":Lgnu/expr/Expression;
    goto :goto_2

    .line 262
    :cond_3
    sget-object v3, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    if-ne v2, v3, :cond_5

    .line 264
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseArguments()[Lgnu/expr/Expression;

    move-result-object v3

    .line 265
    .local v3, "args":[Lgnu/expr/Expression;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after parseArgs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    if-lez v0, :cond_4

    .line 268
    invoke-virtual {p0, v1, v3}, Lgnu/ecmascript/Parser;->makeNewExpression(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    .line 269
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 272
    :cond_4
    invoke-virtual {p0, v1, v3}, Lgnu/ecmascript/Parser;->makeCallExpression(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    .line 276
    .end local v2    # "token":Ljava/lang/Object;
    .end local v3    # "args":[Lgnu/expr/Expression;
    :goto_2
    goto :goto_1

    .line 277
    :cond_5
    :goto_3
    if-lez v0, :cond_6

    .line 279
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lgnu/ecmascript/Parser;->makeNewExpression(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    .line 277
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 281
    :cond_6
    return-object v1
.end method

.method public parsePostfixExpression()Lgnu/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseLeftHandSideExpression()Lgnu/expr/Expression;

    move-result-object v0

    .line 288
    .local v0, "exp":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekTokenOrLine()Ljava/lang/Object;

    move-result-object v1

    .line 289
    .local v1, "op":Ljava/lang/Object;
    sget-object v2, Lgnu/ecmascript/Reserved;->opPlusPlus:Lgnu/ecmascript/Reserved;

    if-eq v1, v2, :cond_0

    sget-object v2, Lgnu/ecmascript/Reserved;->opMinusMinus:Lgnu/ecmascript/Reserved;

    if-eq v1, v2, :cond_0

    .line 290
    return-object v0

    .line 291
    :cond_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 292
    const/4 v2, 0x1

    new-array v2, v2, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 293
    .local v2, "args":[Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/ApplyExp;

    new-instance v4, Lgnu/expr/QuoteExp;

    move-object v5, v1

    check-cast v5, Lgnu/ecmascript/Reserved;

    iget-object v5, v5, Lgnu/ecmascript/Reserved;->proc:Lgnu/mapping/Procedure;

    invoke-direct {v4, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v4, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v3
.end method

.method public parsePrimaryExpression()Lgnu/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v0

    .line 163
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_0

    .line 164
    move-object v1, v0

    check-cast v1, Lgnu/expr/QuoteExp;

    return-object v1

    .line 165
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 166
    new-instance v1, Lgnu/expr/ReferenceExp;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 167
    :cond_1
    sget-object v1, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    if-ne v0, v1, :cond_3

    .line 169
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseExpression()Lgnu/expr/Expression;

    move-result-object v1

    .line 170
    .local v1, "expr":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v2

    .line 171
    .local v2, "token":Ljava/lang/Object;
    sget-object v3, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-eq v2, v3, :cond_2

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected \')\' - got:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3

    .line 173
    :cond_2
    return-object v1

    .line 175
    .end local v1    # "expr":Lgnu/expr/Expression;
    .end local v2    # "token":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method

.method public parseStatement()Lgnu/expr/Expression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 477
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->peekToken()Ljava/lang/Object;

    move-result-object v0

    .line 478
    .local v0, "token":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/ecmascript/Reserved;

    if-eqz v1, :cond_0

    .line 480
    move-object v1, v0

    check-cast v1, Lgnu/ecmascript/Reserved;

    iget v1, v1, Lgnu/ecmascript/Reserved;->prio:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 484
    :sswitch_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseFunctionDefinition()Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 483
    :sswitch_1
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseWhileStatement()Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 482
    :sswitch_2
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseIfStatement()Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 487
    :cond_0
    :goto_0
    sget-object v1, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 488
    sget-object v1, Lgnu/ecmascript/Parser;->eofExpr:Lgnu/expr/Expression;

    return-object v1

    .line 489
    :cond_1
    sget-object v1, Lgnu/ecmascript/Lexer;->semicolonToken:Lgnu/text/Char;

    if-ne v0, v1, :cond_2

    .line 491
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 492
    sget-object v1, Lgnu/ecmascript/Parser;->emptyStatement:Lgnu/expr/Expression;

    return-object v1

    .line 494
    :cond_2
    sget-object v1, Lgnu/ecmascript/Lexer;->lbraceToken:Lgnu/text/Char;

    if-ne v0, v1, :cond_3

    .line 495
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseBlock()Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 497
    :cond_3
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseExpression()Lgnu/expr/Expression;

    move-result-object v1

    .line 498
    .local v1, "exp":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getSemicolon()V

    .line 499
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_2
        0x20 -> :sswitch_1
        0x29 -> :sswitch_0
    .end sparse-switch
.end method

.method public parseUnaryExpression()Lgnu/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parsePostfixExpression()Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public parseWhileStatement()Lgnu/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 394
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v0

    .line 395
    .local v0, "token":Ljava/lang/Object;
    sget-object v1, Lgnu/ecmascript/Lexer;->lparenToken:Lgnu/text/Char;

    if-eq v0, v1, :cond_0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected \'(\' - got:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 397
    :cond_0
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseExpression()Lgnu/expr/Expression;

    move-result-object v1

    .line 398
    .local v1, "test_part":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->getToken()Ljava/lang/Object;

    move-result-object v0

    .line 399
    sget-object v2, Lgnu/ecmascript/Lexer;->rparenToken:Lgnu/text/Char;

    if-eq v0, v2, :cond_1

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \')\' - got:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/ecmascript/Parser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 401
    :cond_1
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->parseStatement()Lgnu/expr/Expression;

    move-result-object v2

    .line 402
    .local v2, "body":Lgnu/expr/Expression;
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v3, v2}, Lgnu/ecmascript/Parser;->buildLoop(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3
.end method

.method public peekToken()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lgnu/ecmascript/Parser;->lexer:Lgnu/ecmascript/Lexer;

    invoke-virtual {v0}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    .line 118
    :cond_0
    :goto_0
    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    sget-object v1, Lgnu/ecmascript/Lexer;->eolToken:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 120
    invoke-virtual {p0}, Lgnu/ecmascript/Parser;->skipToken()V

    .line 121
    iget-object v0, p0, Lgnu/ecmascript/Parser;->lexer:Lgnu/ecmascript/Lexer;

    invoke-virtual {v0}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    return-object v0
.end method

.method public peekTokenOrLine()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lgnu/ecmascript/Parser;->lexer:Lgnu/ecmascript/Lexer;

    invoke-virtual {v0}, Lgnu/ecmascript/Lexer;->getToken()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    .line 107
    :cond_0
    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    return-object v0
.end method

.method public final skipToken()V
    .locals 2

    .line 136
    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    sget-object v1, Lgnu/ecmascript/Lexer;->eofToken:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    iput-object v0, p0, Lgnu/ecmascript/Parser;->previous_token:Ljava/lang/Object;

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/ecmascript/Parser;->token:Ljava/lang/Object;

    .line 141
    :cond_0
    return-void
.end method

.method public syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .line 310
    iget v0, p0, Lgnu/ecmascript/Parser;->errors:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/ecmascript/Parser;->errors:I

    .line 311
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v0

    .line 312
    .local v0, "err":Lgnu/mapping/OutPort;
    iget-object v2, p0, Lgnu/ecmascript/Parser;->port:Lgnu/mapping/InPort;

    invoke-virtual {v2}, Lgnu/mapping/InPort;->getName()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "current_filename":Ljava/lang/String;
    iget-object v3, p0, Lgnu/ecmascript/Parser;->port:Lgnu/mapping/InPort;

    invoke-virtual {v3}, Lgnu/mapping/InPort;->getLineNumber()I

    move-result v3

    add-int/2addr v3, v1

    .line 314
    .local v3, "current_line":I
    iget-object v4, p0, Lgnu/ecmascript/Parser;->port:Lgnu/mapping/InPort;

    invoke-virtual {v4}, Lgnu/mapping/InPort;->getColumnNumber()I

    move-result v4

    add-int/2addr v4, v1

    .line 315
    .local v4, "current_column":I
    if-lez v3, :cond_2

    .line 317
    if-eqz v2, :cond_0

    .line 318
    invoke-virtual {v0, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 319
    :cond_0
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Lgnu/mapping/OutPort;->print(C)V

    .line 320
    invoke-virtual {v0, v3}, Lgnu/mapping/OutPort;->print(I)V

    .line 321
    if-le v4, v1, :cond_1

    .line 323
    invoke-virtual {v0, v5}, Lgnu/mapping/OutPort;->print(C)V

    .line 324
    invoke-virtual {v0, v4}, Lgnu/mapping/OutPort;->print(I)V

    .line 326
    :cond_1
    const-string v1, ": "

    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 328
    :cond_2
    invoke-virtual {v0, p1}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 329
    new-instance v1, Lgnu/expr/ErrorExp;

    invoke-direct {v1, p1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
