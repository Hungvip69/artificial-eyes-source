.class public Lgnu/kawa/lispexpr/ReaderMacro;
.super Lgnu/kawa/lispexpr/ReaderMisc;
.source "ReaderMacro.java"


# instance fields
.field procedure:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 1
    .param p1, "procedure"    # Lgnu/mapping/Procedure;

    .line 23
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    .line 24
    iput-object p1, p0, Lgnu/kawa/lispexpr/ReaderMacro;->procedure:Lgnu/mapping/Procedure;

    .line 25
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Z)V
    .locals 1
    .param p1, "procedure"    # Lgnu/mapping/Procedure;
    .param p2, "nonTerminating"    # Z

    .line 16
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    invoke-direct {p0, v0}, Lgnu/kawa/lispexpr/ReaderMisc;-><init>(I)V

    .line 18
    iput-object p1, p0, Lgnu/kawa/lispexpr/ReaderMacro;->procedure:Lgnu/mapping/Procedure;

    .line 19
    return-void
.end method


# virtual methods
.method public getProcedure()Lgnu/mapping/Procedure;
    .locals 1

    .line 34
    iget-object v0, p0, Lgnu/kawa/lispexpr/ReaderMacro;->procedure:Lgnu/mapping/Procedure;

    return-object v0
.end method

.method public isNonTerminating()Z
    .locals 2

    .line 29
    iget v0, p0, Lgnu/kawa/lispexpr/ReaderMacro;->kind:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 4
    .param p1, "in"    # Lgnu/text/Lexer;
    .param p2, "ch"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v0

    .line 44
    .local v0, "reader":Ljava/io/Reader;
    :try_start_0
    iget-object v1, p0, Lgnu/kawa/lispexpr/ReaderMacro;->procedure:Lgnu/mapping/Procedure;

    invoke-static {p2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 54
    :catchall_0
    move-exception v1

    .line 56
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reader macro \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/lispexpr/ReaderMacro;->procedure:Lgnu/mapping/Procedure;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' threw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgnu/text/Lexer;->fatal(Ljava/lang/String;)V

    .line 57
    const/4 v2, 0x0

    return-object v2

    .line 50
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 52
    .local v1, "ex":Lgnu/text/SyntaxException;
    throw v1

    .line 46
    .end local v1    # "ex":Lgnu/text/SyntaxException;
    :catch_1
    move-exception v1

    .line 48
    .local v1, "ex":Ljava/io/IOException;
    throw v1
.end method
