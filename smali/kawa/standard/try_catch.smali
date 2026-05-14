.class public Lkawa/standard/try_catch;
.super Ljava/lang/Object;
.source "try_catch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rewrite(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 10
    .param p0, "try_part"    # Ljava/lang/Object;
    .param p1, "clauses"    # Ljava/lang/Object;

    .line 14
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    check-cast v0, Lkawa/lang/Translator;

    .line 15
    .local v0, "tr":Lkawa/lang/Translator;
    invoke-virtual {v0, p0}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    .line 16
    .local v1, "try_part_exp":Lgnu/expr/Expression;
    const/4 v2, 0x0

    .line 17
    .local v2, "prev":Lgnu/expr/CatchClause;
    const/4 v3, 0x0

    .line 18
    .local v3, "chain":Lgnu/expr/CatchClause;
    move-object v4, p1

    check-cast v4, Lgnu/lists/FVector;

    .line 19
    .local v4, "vec":Lgnu/lists/FVector;
    invoke-virtual {v4}, Lgnu/lists/FVector;->size()I

    move-result v5

    .line 20
    .local v5, "n":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_3

    .line 22
    sget-object v7, Lkawa/standard/SchemeCompilation;->lambda:Lkawa/lang/Lambda;

    invoke-virtual {v4, v6}, Lgnu/lists/FVector;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lkawa/lang/Lambda;->rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v7

    .line 23
    .local v7, "cl":Lgnu/expr/Expression;
    instance-of v8, v7, Lgnu/expr/ErrorExp;

    if-eqz v8, :cond_0

    .line 24
    return-object v7

    .line 25
    :cond_0
    instance-of v8, v7, Lgnu/expr/LambdaExp;

    if-nez v8, :cond_1

    .line 26
    const-string v8, "internal error with try-catch"

    invoke-virtual {v0, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v8

    return-object v8

    .line 27
    :cond_1
    new-instance v8, Lgnu/expr/CatchClause;

    move-object v9, v7

    check-cast v9, Lgnu/expr/LambdaExp;

    invoke-direct {v8, v9}, Lgnu/expr/CatchClause;-><init>(Lgnu/expr/LambdaExp;)V

    .line 28
    .local v8, "ccl":Lgnu/expr/CatchClause;
    if-nez v2, :cond_2

    .line 29
    move-object v3, v8

    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {v2, v8}, Lgnu/expr/CatchClause;->setNext(Lgnu/expr/CatchClause;)V

    .line 32
    :goto_1
    move-object v2, v8

    .line 20
    .end local v7    # "cl":Lgnu/expr/Expression;
    .end local v8    # "ccl":Lgnu/expr/CatchClause;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 34
    .end local v6    # "i":I
    :cond_3
    instance-of v6, v1, Lgnu/expr/ErrorExp;

    if-eqz v6, :cond_4

    .line 35
    return-object v1

    .line 36
    :cond_4
    new-instance v6, Lgnu/expr/TryExp;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lgnu/expr/TryExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    .line 37
    .local v6, "texp":Lgnu/expr/TryExp;
    invoke-virtual {v6, v3}, Lgnu/expr/TryExp;->setCatchClauses(Lgnu/expr/CatchClause;)V

    .line 38
    return-object v6
.end method
