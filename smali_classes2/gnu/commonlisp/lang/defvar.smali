.class public Lgnu/commonlisp/lang/defvar;
.super Lkawa/lang/Syntax;
.source "defvar.java"


# instance fields
.field force:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "force"    # Z

    .line 13
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 14
    iput-boolean p1, p0, Lgnu/commonlisp/lang/defvar;->force:Z

    .line 15
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 7
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 49
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

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

    if-eqz v4, :cond_1

    .line 56
    move-object v4, v0

    check-cast v4, Lgnu/lists/Pair;

    .line 57
    .local v4, "p1":Lgnu/lists/Pair;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lgnu/expr/Declaration;

    if-eqz v5, :cond_1

    .line 59
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lgnu/expr/Declaration;

    .line 60
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    .line 61
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lgnu/lists/Pair;

    if-eqz v5, :cond_0

    .line 63
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/Pair;

    .line 64
    .local v5, "p2":Lgnu/lists/Pair;
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v2

    .line 65
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 69
    .end local v5    # "p2":Lgnu/lists/Pair;
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v5, v6, :cond_1

    .line 71
    const/4 v1, 0x0

    .line 74
    .end local v4    # "p1":Lgnu/lists/Pair;
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid syntax for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgnu/commonlisp/lang/defvar;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4

    .line 76
    :cond_2
    if-nez v2, :cond_4

    .line 78
    iget-boolean v4, p0, Lgnu/commonlisp/lang/defvar;->force:Z

    if-eqz v4, :cond_3

    .line 79
    sget-object v2, Lgnu/commonlisp/lang/CommonLisp;->nilExpr:Lgnu/expr/Expression;

    goto :goto_1

    .line 81
    :cond_3
    new-instance v4, Lgnu/expr/QuoteExp;

    invoke-direct {v4, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v4

    .line 83
    :cond_4
    :goto_1
    new-instance v4, Lgnu/expr/SetExp;

    invoke-direct {v4, v1, v2}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    .line 84
    .local v4, "sexp":Lgnu/expr/SetExp;
    iget-boolean v5, p0, Lgnu/commonlisp/lang/defvar;->force:Z

    const/4 v6, 0x1

    if-nez v5, :cond_5

    .line 85
    invoke-virtual {v4, v6}, Lgnu/expr/SetExp;->setSetIfUnbound(Z)V

    .line 86
    :cond_5
    invoke-virtual {v4, v6}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 87
    if-eqz v3, :cond_7

    .line 89
    invoke-virtual {v4, v3}, Lgnu/expr/SetExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 90
    iget-object v5, v3, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v5, v5, Lgnu/expr/ModuleExp;

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 92
    const/4 v2, 0x0

    .line 93
    :cond_6
    invoke-virtual {v3, v2}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 95
    :cond_7
    return-object v4
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 6
    .param p1, "st"    # Lgnu/lists/Pair;
    .param p2, "forms"    # Ljava/util/Vector;
    .param p3, "defs"    # Lgnu/expr/ScopeExp;
    .param p4, "tr"    # Lkawa/lang/Translator;

    .line 20
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-nez v0, :cond_0

    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v0

    return v0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    .line 23
    .local v0, "p":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 24
    .local v1, "name":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    instance-of v2, v1, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_3

    .line 26
    :cond_1
    invoke-virtual {p3, v1}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 27
    .local v2, "decl":Lgnu/expr/Declaration;
    if-nez v2, :cond_2

    .line 29
    new-instance v4, Lgnu/expr/Declaration;

    invoke-direct {v4, v1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    move-object v2, v4

    .line 30
    const-wide/32 v4, 0x10000000

    invoke-virtual {v2, v4, v5}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 31
    invoke-virtual {p3, v2}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    goto :goto_0

    .line 34
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate declaration for `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x77

    invoke-virtual {p4, v5, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 35
    :goto_0
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    .line 36
    invoke-static {p1, p0, v0}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 37
    instance-of v4, p3, Lgnu/expr/ModuleExp;

    if-eqz v4, :cond_3

    .line 39
    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 40
    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 43
    .end local v2    # "decl":Lgnu/expr/Declaration;
    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 44
    return v3
.end method
