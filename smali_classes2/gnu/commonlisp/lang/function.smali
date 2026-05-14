.class public Lgnu/commonlisp/lang/function;
.super Lkawa/lang/Syntax;
.source "function.java"


# instance fields
.field lambda:Lkawa/lang/Syntax;


# direct methods
.method public constructor <init>(Lkawa/lang/Syntax;)V
    .locals 0
    .param p1, "lambda"    # Lkawa/lang/Syntax;

    .line 12
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 13
    iput-object p1, p0, Lgnu/commonlisp/lang/function;->lambda:Lkawa/lang/Syntax;

    .line 14
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 5
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 18
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 19
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/lists/Pair;

    if-eqz v1, :cond_4

    .line 21
    move-object v1, v0

    check-cast v1, Lgnu/lists/Pair;

    .line 22
    .local v1, "pair":Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v3, :cond_0

    .line 23
    const-string v2, "too many forms after \'function\'"

    invoke-virtual {p2, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 24
    :cond_0
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 25
    .local v2, "name":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_3

    instance-of v3, v2, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_1

    goto :goto_1

    .line 32
    :cond_1
    instance-of v3, v2, Lgnu/lists/Pair;

    if-eqz v3, :cond_4

    .line 34
    move-object v1, v2

    check-cast v1, Lgnu/lists/Pair;

    .line 35
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 36
    instance-of v3, v2, Ljava/lang/String;

    const-string v4, "lambda"

    if-eqz v3, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_2
    instance-of v3, v2, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Lgnu/mapping/Symbol;

    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 39
    :goto_0
    iget-object v3, p0, Lgnu/commonlisp/lang/function;->lambda:Lkawa/lang/Syntax;

    invoke-virtual {v3, v1, p2}, Lkawa/lang/Syntax;->rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3

    .line 27
    :cond_3
    :goto_1
    new-instance v3, Lgnu/expr/ReferenceExp;

    invoke-direct {v3, v2}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 28
    .local v3, "rexp":Lgnu/expr/ReferenceExp;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/expr/ReferenceExp;->setProcedureName(Z)V

    .line 29
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lgnu/expr/ReferenceExp;->setFlag(I)V

    .line 30
    return-object v3

    .line 42
    .end local v1    # "pair":Lgnu/lists/Pair;
    .end local v2    # "name":Ljava/lang/Object;
    .end local v3    # "rexp":Lgnu/expr/ReferenceExp;
    :cond_4
    const-string v1, "function must be followed by name or lambda expression"

    invoke-virtual {p2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method
