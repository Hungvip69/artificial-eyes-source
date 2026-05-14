.class public Lkawa/standard/set_b;
.super Lkawa/lang/Syntax;
.source "set_b.java"


# static fields
.field public static final set:Lkawa/standard/set_b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lkawa/standard/set_b;

    invoke-direct {v0}, Lkawa/standard/set_b;-><init>()V

    sput-object v0, Lkawa/standard/set_b;->set:Lkawa/standard/set_b;

    .line 15
    sget-object v0, Lkawa/standard/set_b;->set:Lkawa/standard/set_b;

    const-string v1, "set!"

    invoke-virtual {v0, v1}, Lkawa/standard/set_b;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 19
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 19
    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 20
    .local v1, "o1":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 21
    .local v2, "syntax":Lkawa/lang/SyntaxForm;
    :goto_0
    instance-of v3, v1, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_0

    .line 23
    move-object v2, v1

    check-cast v2, Lkawa/lang/SyntaxForm;

    .line 24
    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 26
    :cond_0
    instance-of v3, v1, Lgnu/lists/Pair;

    if-nez v3, :cond_1

    .line 27
    const-string v3, "missing name"

    invoke-virtual {v0, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3

    .line 28
    :cond_1
    move-object v3, v1

    check-cast v3, Lgnu/lists/Pair;

    .line 29
    .local v3, "p1":Lgnu/lists/Pair;
    invoke-virtual {v0, v3, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v4

    .line 30
    .local v4, "name":Lgnu/expr/Expression;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .line 31
    .local v5, "o2":Ljava/lang/Object;
    :goto_1
    instance-of v6, v5, Lkawa/lang/SyntaxForm;

    if-eqz v6, :cond_2

    .line 33
    move-object v2, v5

    check-cast v2, Lkawa/lang/SyntaxForm;

    .line 34
    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 37
    :cond_2
    instance-of v6, v5, Lgnu/lists/Pair;

    if-eqz v6, :cond_a

    move-object v6, v5

    check-cast v6, Lgnu/lists/Pair;

    move-object v7, v6

    .local v7, "p2":Lgnu/lists/Pair;
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v6, v8, :cond_3

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    goto/16 :goto_2

    .line 40
    :cond_3
    invoke-virtual {v0, v7, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v6

    .line 42
    .local v6, "value":Lgnu/expr/Expression;
    instance-of v8, v4, Lgnu/expr/ApplyExp;

    if-eqz v8, :cond_5

    .line 46
    move-object v8, v4

    check-cast v8, Lgnu/expr/ApplyExp;

    .line 47
    .local v8, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v8}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v10

    .line 48
    .local v10, "args":[Lgnu/expr/Expression;
    array-length v11, v10

    .line 49
    .local v11, "nargs":I
    const/4 v12, 0x0

    .line 50
    .local v12, "skip":I
    invoke-virtual {v8}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v13

    .line 51
    .local v13, "func":Lgnu/expr/Expression;
    array-length v14, v10

    const/4 v15, 0x0

    if-lez v14, :cond_4

    instance-of v14, v13, Lgnu/expr/ReferenceExp;

    if-eqz v14, :cond_4

    move-object v14, v13

    check-cast v14, Lgnu/expr/ReferenceExp;

    invoke-virtual {v14}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v14

    sget-object v9, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    if-ne v14, v9, :cond_4

    .line 54
    const/4 v12, 0x1

    .line 55
    add-int/lit8 v11, v11, -0x1

    .line 56
    aget-object v13, v10, v15

    .line 58
    :cond_4
    const/4 v9, 0x1

    new-array v9, v9, [Lgnu/expr/Expression;

    aput-object v13, v9, v15

    .line 59
    .local v9, "setterArgs":[Lgnu/expr/Expression;
    add-int/lit8 v14, v11, 0x1

    new-array v14, v14, [Lgnu/expr/Expression;

    .line 60
    .local v14, "xargs":[Lgnu/expr/Expression;
    invoke-static {v10, v12, v14, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    aput-object v6, v14, v11

    .line 62
    sget-object v15, Lgnu/kawa/functions/CompilationHelpers;->setterDecl:Lgnu/expr/Declaration;

    .line 63
    .local v15, "setter":Lgnu/expr/Declaration;
    move-object/from16 v16, v1

    .end local v1    # "o1":Ljava/lang/Object;
    .local v16, "o1":Ljava/lang/Object;
    new-instance v1, Lgnu/expr/ApplyExp;

    move-object/from16 v17, v2

    .end local v2    # "syntax":Lkawa/lang/SyntaxForm;
    .local v17, "syntax":Lkawa/lang/SyntaxForm;
    new-instance v2, Lgnu/expr/ApplyExp;

    move-object/from16 v18, v3

    .end local v3    # "p1":Lgnu/lists/Pair;
    .local v18, "p1":Lgnu/lists/Pair;
    new-instance v3, Lgnu/expr/ReferenceExp;

    invoke-direct {v3, v15}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v2, v3, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-direct {v1, v2, v14}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v1

    .line 66
    .end local v8    # "aexp":Lgnu/expr/ApplyExp;
    .end local v9    # "setterArgs":[Lgnu/expr/Expression;
    .end local v10    # "args":[Lgnu/expr/Expression;
    .end local v11    # "nargs":I
    .end local v12    # "skip":I
    .end local v13    # "func":Lgnu/expr/Expression;
    .end local v14    # "xargs":[Lgnu/expr/Expression;
    .end local v15    # "setter":Lgnu/expr/Declaration;
    .end local v16    # "o1":Ljava/lang/Object;
    .end local v17    # "syntax":Lkawa/lang/SyntaxForm;
    .end local v18    # "p1":Lgnu/lists/Pair;
    .restart local v1    # "o1":Ljava/lang/Object;
    .restart local v2    # "syntax":Lkawa/lang/SyntaxForm;
    .restart local v3    # "p1":Lgnu/lists/Pair;
    :cond_5
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .end local v1    # "o1":Ljava/lang/Object;
    .end local v2    # "syntax":Lkawa/lang/SyntaxForm;
    .end local v3    # "p1":Lgnu/lists/Pair;
    .restart local v16    # "o1":Ljava/lang/Object;
    .restart local v17    # "syntax":Lkawa/lang/SyntaxForm;
    .restart local v18    # "p1":Lgnu/lists/Pair;
    instance-of v1, v4, Lgnu/expr/ReferenceExp;

    if-nez v1, :cond_6

    .line 67
    const-string v1, "first set! argument is not a variable name"

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 69
    :cond_6
    move-object v1, v4

    check-cast v1, Lgnu/expr/ReferenceExp;

    .line 70
    .local v1, "ref":Lgnu/expr/ReferenceExp;
    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v2

    .line 71
    .local v2, "decl":Lgnu/expr/Declaration;
    new-instance v3, Lgnu/expr/SetExp;

    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v3, v8, v6}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    .line 72
    .local v3, "sexp":Lgnu/expr/SetExp;
    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v8

    invoke-virtual {v3, v8}, Lgnu/expr/SetExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 73
    if-eqz v2, :cond_9

    .line 75
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 76
    invoke-virtual {v3, v2}, Lgnu/expr/SetExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 77
    invoke-static {v2}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 78
    if-eqz v2, :cond_7

    .line 79
    invoke-virtual {v2, v6}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 80
    :cond_7
    const-wide/16 v8, 0x4000

    invoke-virtual {v2, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v8

    const-string v9, " is set!"

    if-eqz v8, :cond_8

    .line 81
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "constant variable "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v8

    return-object v8

    .line 82
    :cond_8
    iget-object v8, v2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    iget-object v10, v0, Lkawa/lang/Translator;->mainLambda:Lgnu/expr/ModuleExp;

    if-eq v8, v10, :cond_9

    iget-object v8, v2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v8, v8, Lgnu/expr/ModuleExp;

    if-eqz v8, :cond_9

    const-wide/32 v10, 0x10000000

    invoke-virtual {v2, v10, v11}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, v2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    const/high16 v10, 0x100000

    invoke-virtual {v8, v10}, Lgnu/expr/ScopeExp;->getFlag(I)Z

    move-result v8

    if-nez v8, :cond_9

    .line 87
    const/16 v8, 0x77

    const-string v10, "imported variable "

    invoke-virtual {v0, v8, v2, v10, v9}, Lkawa/lang/Translator;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_9
    return-object v3

    .line 37
    .end local v6    # "value":Lgnu/expr/Expression;
    .end local v7    # "p2":Lgnu/lists/Pair;
    .end local v16    # "o1":Ljava/lang/Object;
    .end local v17    # "syntax":Lkawa/lang/SyntaxForm;
    .end local v18    # "p1":Lgnu/lists/Pair;
    .local v1, "o1":Ljava/lang/Object;
    .local v2, "syntax":Lkawa/lang/SyntaxForm;
    .local v3, "p1":Lgnu/lists/Pair;
    :cond_a
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .line 39
    .end local v1    # "o1":Ljava/lang/Object;
    .end local v2    # "syntax":Lkawa/lang/SyntaxForm;
    .end local v3    # "p1":Lgnu/lists/Pair;
    .restart local v16    # "o1":Ljava/lang/Object;
    .restart local v17    # "syntax":Lkawa/lang/SyntaxForm;
    .restart local v18    # "p1":Lgnu/lists/Pair;
    :goto_2
    const-string v1, "missing or extra arguments to set!"

    invoke-virtual {v0, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method
