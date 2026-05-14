.class public Lkawa/standard/define_member_alias;
.super Lkawa/lang/Syntax;
.source "define_member_alias.java"


# static fields
.field public static final define_member_alias:Lkawa/standard/define_member_alias;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lkawa/standard/define_member_alias;

    invoke-direct {v0}, Lkawa/standard/define_member_alias;-><init>()V

    sput-object v0, Lkawa/standard/define_member_alias;->define_member_alias:Lkawa/standard/define_member_alias;

    .line 12
    sget-object v0, Lkawa/standard/define_member_alias;->define_member_alias:Lkawa/standard/define_member_alias;

    const-string v1, "define-member-alias"

    invoke-virtual {v0, v1}, Lkawa/standard/define_member_alias;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 13
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 34
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 36
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/lists/Pair;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lgnu/lists/Pair;

    move-object v2, v1

    .local v2, "p1":Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lgnu/expr/Declaration;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 40
    :cond_0
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lgnu/lists/Pair;

    if-eqz v1, :cond_4

    .line 44
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 45
    .local v1, "p1_car":Ljava/lang/Object;
    instance-of v3, v1, Lgnu/expr/Declaration;

    if-eqz v3, :cond_1

    .line 47
    move-object v3, v1

    check-cast v3, Lgnu/expr/Declaration;

    .line 48
    .local v3, "decl":Lgnu/expr/Declaration;
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v4

    .local v4, "name":Ljava/lang/String;
    goto :goto_0

    .line 52
    .end local v3    # "decl":Lgnu/expr/Declaration;
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 53
    .restart local v4    # "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 55
    .restart local v3    # "decl":Lgnu/expr/Declaration;
    :goto_0
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/Pair;

    .line 56
    .local v5, "p2":Lgnu/lists/Pair;
    const/4 v6, 0x0

    .line 57
    .local v6, "fname":Lgnu/expr/Expression;
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v7

    .line 58
    .local v7, "arg":Lgnu/expr/Expression;
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    .line 59
    .local v8, "p2_cdr":Ljava/lang/Object;
    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v8, v9, :cond_2

    .line 60
    new-instance v9, Lgnu/expr/QuoteExp;

    invoke-static {v4}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v6, v9

    goto :goto_1

    .line 61
    :cond_2
    instance-of v9, v8, Lgnu/lists/Pair;

    if-eqz v9, :cond_3

    .line 63
    move-object v9, v8

    check-cast v9, Lgnu/lists/Pair;

    .line 64
    .local v9, "p3":Lgnu/lists/Pair;
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v10, v11, :cond_3

    .line 65
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2, v10}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v6

    .line 67
    .end local v9    # "p3":Lgnu/lists/Pair;
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 69
    const-string v9, "gnu.kawa.reflect.ClassMemberConstraint"

    invoke-static {v9}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v9

    .line 71
    .local v9, "t":Lgnu/bytecode/ClassType;
    const/4 v10, 0x3

    new-array v10, v10, [Lgnu/expr/Expression;

    .line 72
    .local v10, "args":[Lgnu/expr/Expression;
    new-instance v11, Lgnu/expr/QuoteExp;

    invoke-direct {v11, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 73
    const/4 v11, 0x1

    aput-object v7, v10, v11

    .line 74
    const/4 v11, 0x2

    aput-object v6, v10, v11

    .line 75
    const-string v11, "define"

    invoke-static {v9, v11, v10}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v11

    return-object v11

    .line 78
    .end local v1    # "p1_car":Ljava/lang/Object;
    .end local v3    # "decl":Lgnu/expr/Declaration;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "p2":Lgnu/lists/Pair;
    .end local v6    # "fname":Lgnu/expr/Expression;
    .end local v7    # "arg":Lgnu/expr/Expression;
    .end local v8    # "p2_cdr":Ljava/lang/Object;
    .end local v9    # "t":Lgnu/bytecode/ClassType;
    .end local v10    # "args":[Lgnu/expr/Expression;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid syntax for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkawa/standard/define_member_alias;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 39
    .end local v2    # "p1":Lgnu/lists/Pair;
    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing name in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lkawa/standard/define_member_alias;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 5
    .param p1, "st"    # Lgnu/lists/Pair;
    .param p2, "forms"    # Ljava/util/Vector;
    .param p3, "defs"    # Lgnu/expr/ScopeExp;
    .param p4, "tr"    # Lkawa/lang/Translator;

    .line 19
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v0

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    move-object v1, v0

    .local v1, "p":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 24
    .local v0, "name":Ljava/lang/Object;
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    invoke-virtual {p3, v2, v3}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 26
    .local v2, "decl":Lgnu/expr/Declaration;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 27
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    invoke-static {p1, p0, v4}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 28
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 29
    return v3

    .line 22
    .end local v0    # "name":Ljava/lang/Object;
    .end local v1    # "p":Lgnu/lists/Pair;
    .end local v2    # "decl":Lgnu/expr/Declaration;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v0

    return v0
.end method
