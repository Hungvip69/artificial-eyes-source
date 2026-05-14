.class public Lgnu/commonlisp/lang/setq;
.super Lkawa/lang/Syntax;
.source "setq.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 9
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 17
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 18
    .local v0, "obj":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 19
    .local v1, "results":Ljava/util/Vector;
    :goto_0
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v2, :cond_7

    .line 21
    instance-of v2, v0, Lgnu/lists/Pair;

    if-nez v2, :cond_0

    .line 22
    const-string v2, "invalid syntax for setq"

    invoke-virtual {p2, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 23
    :cond_0
    move-object v2, v0

    check-cast v2, Lgnu/lists/Pair;

    .line 24
    .local v2, "pair":Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    .line 26
    .local v3, "sym":Ljava/lang/Object;
    instance-of v4, v3, Lgnu/mapping/Symbol;

    if-nez v4, :cond_3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    sget-object v4, Lgnu/commonlisp/lang/CommonLisp;->FALSE:Lgnu/lists/LList;

    if-ne v3, v4, :cond_2

    .line 29
    const-string v4, "nil"

    .local v4, "name":Ljava/lang/Object;
    goto :goto_2

    .line 31
    .end local v4    # "name":Ljava/lang/Object;
    :cond_2
    const-string v4, "invalid variable name in setq"

    invoke-virtual {p2, v4}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4

    .line 27
    :cond_3
    :goto_1
    move-object v4, v3

    .line 32
    .restart local v4    # "name":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 33
    instance-of v5, v0, Lgnu/lists/Pair;

    if-nez v5, :cond_4

    .line 34
    const-string v5, "wrong number of arguments for setq"

    invoke-virtual {p2, v5}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    return-object v5

    .line 35
    :cond_4
    move-object v2, v0

    check-cast v2, Lgnu/lists/Pair;

    .line 36
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v5

    .line 37
    .local v5, "value":Lgnu/expr/Expression;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 38
    new-instance v6, Lgnu/expr/SetExp;

    invoke-direct {v6, v4, v5}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    .line 39
    .local v6, "sexp":Lgnu/expr/SetExp;
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lgnu/expr/SetExp;->setFlag(I)V

    .line 40
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v7, :cond_5

    .line 42
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/expr/SetExp;->setHasValue(Z)V

    .line 43
    if-nez v1, :cond_5

    .line 44
    return-object v6

    .line 46
    :cond_5
    if-nez v1, :cond_6

    .line 47
    new-instance v7, Ljava/util/Vector;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Ljava/util/Vector;-><init>(I)V

    move-object v1, v7

    .line 48
    :cond_6
    invoke-virtual {v1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 49
    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v3    # "sym":Ljava/lang/Object;
    .end local v4    # "name":Ljava/lang/Object;
    .end local v5    # "value":Lgnu/expr/Expression;
    .end local v6    # "sexp":Lgnu/expr/SetExp;
    goto :goto_0

    .line 50
    :cond_7
    if-nez v1, :cond_8

    .line 51
    sget-object v2, Lgnu/commonlisp/lang/CommonLisp;->nilExpr:Lgnu/expr/Expression;

    return-object v2

    .line 52
    :cond_8
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Lgnu/expr/Expression;

    .line 53
    .local v2, "stmts":[Lgnu/expr/Expression;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 54
    new-instance v3, Lgnu/expr/BeginExp;

    invoke-direct {v3, v2}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    return-object v3
.end method
