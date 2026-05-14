.class public Lgnu/commonlisp/lang/defun;
.super Lkawa/lang/Syntax;
.source "defun.java"


# instance fields
.field lambdaSyntax:Lkawa/lang/Lambda;


# direct methods
.method public constructor <init>(Lkawa/lang/Lambda;)V
    .locals 0
    .param p1, "lambdaSyntax"    # Lkawa/lang/Lambda;

    .line 17
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 18
    iput-object p1, p0, Lgnu/commonlisp/lang/defun;->lambdaSyntax:Lkawa/lang/Lambda;

    .line 19
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 15
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 49
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, "obj":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 51
    .local v1, "name":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 52
    .local v2, "value":Lgnu/expr/Expression;
    const/4 v3, 0x0

    .line 54
    .local v3, "decl":Lgnu/expr/Declaration;
    instance-of v4, v0, Lgnu/lists/Pair;

    if-eqz v4, :cond_7

    .line 56
    move-object v4, v0

    check-cast v4, Lgnu/lists/Pair;

    .line 57
    .local v4, "p1":Lgnu/lists/Pair;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    .line 59
    .local v5, "p1_car":Ljava/lang/Object;
    instance-of v6, v5, Lgnu/mapping/Symbol;

    if-nez v6, :cond_1

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    instance-of v6, v5, Lgnu/expr/Declaration;

    if-eqz v6, :cond_2

    .line 65
    move-object v3, v5

    check-cast v3, Lgnu/expr/Declaration;

    .line 66
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    :cond_2
    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lgnu/lists/Pair;

    if-eqz v6, :cond_6

    .line 70
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/Pair;

    .line 71
    .local v6, "p2":Lgnu/lists/Pair;
    new-instance v7, Lgnu/expr/LambdaExp;

    invoke-direct {v7}, Lgnu/expr/LambdaExp;-><init>()V

    .line 72
    .local v7, "lexp":Lgnu/expr/LambdaExp;
    move-object v14, p0

    iget-object v8, v14, Lgnu/commonlisp/lang/defun;->lambdaSyntax:Lkawa/lang/Lambda;

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v11

    const/4 v13, 0x0

    move-object v9, v7

    move-object/from16 v12, p2

    invoke-virtual/range {v8 .. v13}, Lkawa/lang/Lambda;->rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 73
    invoke-virtual {v7, v1}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    .line 74
    instance-of v8, v6, Lgnu/lists/PairWithPosition;

    if-eqz v8, :cond_3

    .line 75
    move-object v8, v6

    check-cast v8, Lgnu/lists/PairWithPosition;

    invoke-virtual {v7, v8}, Lgnu/expr/LambdaExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 76
    :cond_3
    move-object v2, v7

    .line 77
    new-instance v8, Lgnu/expr/SetExp;

    invoke-direct {v8, v1, v2}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    .line 78
    .local v8, "sexp":Lgnu/expr/SetExp;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 79
    invoke-virtual {v8, v9}, Lgnu/expr/SetExp;->setFuncDef(Z)V

    .line 80
    if-eqz v3, :cond_5

    .line 82
    invoke-virtual {v8, v3}, Lgnu/expr/SetExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 83
    iget-object v9, v3, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v9, v9, Lgnu/expr/ModuleExp;

    if-eqz v9, :cond_4

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 84
    const/4 v2, 0x0

    .line 85
    :cond_4
    invoke-virtual {v3, v2}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 87
    :cond_5
    return-object v8

    .line 68
    .end local v6    # "p2":Lgnu/lists/Pair;
    .end local v7    # "lexp":Lgnu/expr/LambdaExp;
    .end local v8    # "sexp":Lgnu/expr/SetExp;
    :cond_6
    move-object v14, p0

    goto :goto_2

    .line 54
    .end local v4    # "p1":Lgnu/lists/Pair;
    .end local v5    # "p1_car":Ljava/lang/Object;
    :cond_7
    move-object v14, p0

    .line 90
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid syntax for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgnu/commonlisp/lang/defun;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 6
    .param p1, "st"    # Lgnu/lists/Pair;
    .param p2, "forms"    # Ljava/util/Vector;
    .param p3, "defs"    # Lgnu/expr/ScopeExp;
    .param p4, "tr"    # Lkawa/lang/Translator;

    .line 25
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0

    .local v1, "p":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/mapping/Symbol;

    if-nez v0, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 30
    .local v0, "sym":Ljava/lang/Object;
    invoke-virtual {p3, v0}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 31
    .local v2, "decl":Lgnu/expr/Declaration;
    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 33
    new-instance v4, Lgnu/expr/Declaration;

    invoke-direct {v4, v0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object v2, v4

    .line 34
    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 35
    invoke-virtual {p3, v2}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    goto :goto_0

    .line 38
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate declaration for `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x77

    invoke-virtual {p4, v5, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 40
    :goto_0
    instance-of v4, p3, Lgnu/expr/ModuleExp;

    if-eqz v4, :cond_2

    .line 41
    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 42
    :cond_2
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    invoke-static {p1, p0, v4}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 43
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 44
    return v3

    .line 28
    .end local v0    # "sym":Ljava/lang/Object;
    .end local v1    # "p":Lgnu/lists/Pair;
    .end local v2    # "decl":Lgnu/expr/Declaration;
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v0

    return v0
.end method
