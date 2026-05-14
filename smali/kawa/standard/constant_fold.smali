.class public Lkawa/standard/constant_fold;
.super Lkawa/lang/Syntax;
.source "constant_fold.java"


# static fields
.field public static final constant_fold:Lkawa/standard/constant_fold;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lkawa/standard/constant_fold;

    invoke-direct {v0}, Lkawa/standard/constant_fold;-><init>()V

    sput-object v0, Lkawa/standard/constant_fold;->constant_fold:Lkawa/standard/constant_fold;

    .line 11
    sget-object v0, Lkawa/standard/constant_fold;->constant_fold:Lkawa/standard/constant_fold;

    const-string v1, "constant-fold"

    invoke-virtual {v0, v1}, Lkawa/standard/constant_fold;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method static checkConstant(Lgnu/expr/Expression;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 5
    .param p0, "exp"    # Lgnu/expr/Expression;
    .param p1, "tr"    # Lkawa/lang/Translator;

    .line 15
    instance-of v0, p0, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_0

    .line 16
    move-object v0, p0

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 17
    :cond_0
    instance-of v0, p0, Lgnu/expr/ReferenceExp;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 19
    move-object v0, p0

    check-cast v0, Lgnu/expr/ReferenceExp;

    .line 20
    .local v0, "rexp":Lgnu/expr/ReferenceExp;
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v2

    .line 21
    .local v2, "decl":Lgnu/expr/Declaration;
    if-eqz v2, :cond_2

    const-wide/32 v3, 0x10000

    invoke-virtual {v2, v3, v4}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v2}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 22
    :cond_2
    :goto_0
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v3

    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lgnu/mapping/Environment;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 26
    .end local v0    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v2    # "decl":Lgnu/expr/Declaration;
    :cond_3
    return-object v1
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 31
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    .line 32
    .local v0, "exp":Lgnu/expr/Expression;
    instance-of v1, v0, Lgnu/expr/ApplyExp;

    if-nez v1, :cond_0

    .line 33
    return-object v0

    .line 34
    :cond_0
    move-object v1, v0

    check-cast v1, Lgnu/expr/ApplyExp;

    .line 35
    .local v1, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v2

    invoke-static {v2, p2}, Lkawa/standard/constant_fold;->checkConstant(Lgnu/expr/Expression;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v2

    .line 36
    .local v2, "func":Ljava/lang/Object;
    instance-of v3, v2, Lgnu/mapping/Procedure;

    if-nez v3, :cond_1

    .line 37
    return-object v0

    .line 43
    :cond_1
    invoke-virtual {v1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 44
    .local v3, "args":[Lgnu/expr/Expression;
    array-length v4, v3

    .line 45
    .local v4, "i":I
    new-array v5, v4, [Ljava/lang/Object;

    .line 46
    .local v5, "vals":[Ljava/lang/Object;
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3

    .line 48
    aget-object v6, v3, v4

    invoke-static {v6, p2}, Lkawa/standard/constant_fold;->checkConstant(Lgnu/expr/Expression;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v6

    .line 49
    .local v6, "val":Ljava/lang/Object;
    if-nez v6, :cond_2

    .line 50
    return-object v0

    .line 51
    :cond_2
    aput-object v6, v5, v4

    .line 52
    .end local v6    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 55
    :cond_3
    :try_start_0
    new-instance v6, Lgnu/expr/QuoteExp;

    move-object v7, v2

    check-cast v7, Lgnu/mapping/Procedure;

    invoke-virtual {v7, v5}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v6

    .line 57
    :catchall_0
    move-exception v6

    .line 59
    .local v6, "ex":Ljava/lang/Throwable;
    const-string v7, "caught exception in constant-fold:"

    invoke-virtual {p2, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 60
    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 61
    return-object v0
.end method
