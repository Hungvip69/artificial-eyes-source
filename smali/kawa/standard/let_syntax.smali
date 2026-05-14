.class public Lkawa/standard/let_syntax;
.super Lkawa/lang/Syntax;
.source "let_syntax.java"


# static fields
.field public static final let_syntax:Lkawa/standard/let_syntax;

.field public static final letrec_syntax:Lkawa/standard/let_syntax;


# instance fields
.field recursive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lkawa/standard/let_syntax;

    const/4 v1, 0x0

    const-string v2, "let-syntax"

    invoke-direct {v0, v1, v2}, Lkawa/standard/let_syntax;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lkawa/standard/let_syntax;->let_syntax:Lkawa/standard/let_syntax;

    .line 15
    new-instance v0, Lkawa/standard/let_syntax;

    const/4 v1, 0x1

    const-string v2, "letrec-syntax"

    invoke-direct {v0, v1, v2}, Lkawa/standard/let_syntax;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lkawa/standard/let_syntax;->letrec_syntax:Lkawa/standard/let_syntax;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "recursive"    # Z
    .param p2, "name"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p2}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 23
    iput-boolean p1, p0, Lkawa/standard/let_syntax;->recursive:Z

    .line 24
    return-void
.end method

.method private push(Lgnu/expr/LetExp;Lkawa/lang/Translator;Ljava/util/Stack;)V
    .locals 2
    .param p1, "let"    # Lgnu/expr/LetExp;
    .param p2, "tr"    # Lkawa/lang/Translator;
    .param p3, "renamedAliases"    # Ljava/util/Stack;

    .line 134
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 135
    if-eqz p3, :cond_0

    .line 136
    invoke-virtual {p3}, Ljava/util/Stack;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 137
    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Declaration;

    invoke-virtual {p2, v1}, Lkawa/lang/Translator;->pushRenamedAlias(Lgnu/expr/Declaration;)V

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 28
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 28
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v1, Lgnu/lists/Pair;

    if-nez v3, :cond_0

    .line 29
    const-string v3, "missing let-syntax arguments"

    invoke-virtual {v2, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3

    .line 30
    :cond_0
    move-object v3, v1

    check-cast v3, Lgnu/lists/Pair;

    .line 31
    .local v3, "pair":Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    .line 32
    .local v4, "bindings":Ljava/lang/Object;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .line 33
    .local v5, "body":Ljava/lang/Object;
    invoke-static {v4}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v6

    .line 34
    .local v6, "decl_count":I
    if-gez v6, :cond_1

    .line 35
    const-string v7, "bindings not a proper list"

    invoke-virtual {v2, v7}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v7

    return-object v7

    .line 36
    :cond_1
    const/4 v7, 0x0

    .line 37
    .local v7, "renamedAliases":Ljava/util/Stack;
    const/4 v8, 0x0

    .line 38
    .local v8, "renamedAliasesCount":I
    new-array v9, v6, [Lgnu/expr/Expression;

    .line 39
    .local v9, "inits":[Lgnu/expr/Expression;
    new-array v10, v6, [Lgnu/expr/Declaration;

    .line 40
    .local v10, "decls":[Lgnu/expr/Declaration;
    new-array v11, v6, [Lkawa/lang/Macro;

    .line 41
    .local v11, "macros":[Lkawa/lang/Macro;
    new-array v12, v6, [Lgnu/lists/Pair;

    .line 42
    .local v12, "transformers":[Lgnu/lists/Pair;
    new-array v13, v6, [Lkawa/lang/SyntaxForm;

    .line 43
    .local v13, "trSyntax":[Lkawa/lang/SyntaxForm;
    new-instance v14, Lgnu/expr/LetExp;

    invoke-direct {v14, v9}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 44
    .local v14, "let":Lgnu/expr/LetExp;
    const/4 v15, 0x0

    .line 45
    .local v15, "listSyntax":Lkawa/lang/SyntaxForm;
    const/16 v16, 0x0

    move/from16 v1, v16

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_f

    .line 47
    :goto_1
    move-object/from16 v16, v3

    .end local v3    # "pair":Lgnu/lists/Pair;
    .local v16, "pair":Lgnu/lists/Pair;
    instance-of v3, v4, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_2

    .line 49
    move-object v15, v4

    check-cast v15, Lkawa/lang/SyntaxForm;

    .line 50
    invoke-interface {v15}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v3, v16

    goto :goto_1

    .line 52
    :cond_2
    move-object v3, v15

    .line 53
    .local v3, "bindingSyntax":Lkawa/lang/SyntaxForm;
    move-object/from16 v17, v4

    check-cast v17, Lgnu/lists/Pair;

    .line 54
    .local v17, "bind_pair":Lgnu/lists/Pair;
    move-object/from16 v18, v3

    .end local v3    # "bindingSyntax":Lkawa/lang/SyntaxForm;
    .local v18, "bindingSyntax":Lkawa/lang/SyntaxForm;
    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    .line 55
    .local v3, "bind_pair_car":Ljava/lang/Object;
    move-object/from16 v19, v4

    .end local v4    # "bindings":Ljava/lang/Object;
    .local v19, "bindings":Ljava/lang/Object;
    instance-of v4, v3, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_3

    .line 57
    move-object v4, v3

    check-cast v4, Lkawa/lang/SyntaxForm;

    .line 58
    .end local v18    # "bindingSyntax":Lkawa/lang/SyntaxForm;
    .local v4, "bindingSyntax":Lkawa/lang/SyntaxForm;
    invoke-interface {v4}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v4

    .line 60
    .end local v4    # "bindingSyntax":Lkawa/lang/SyntaxForm;
    .restart local v18    # "bindingSyntax":Lkawa/lang/SyntaxForm;
    :cond_3
    instance-of v4, v3, Lgnu/lists/Pair;

    if-nez v4, :cond_4

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v15

    .end local v15    # "listSyntax":Lkawa/lang/SyntaxForm;
    .local v20, "listSyntax":Lkawa/lang/SyntaxForm;
    invoke-virtual/range {p0 .. p0}, Lkawa/standard/let_syntax;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, " binding is not a pair"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4

    .line 62
    .end local v20    # "listSyntax":Lkawa/lang/SyntaxForm;
    .restart local v15    # "listSyntax":Lkawa/lang/SyntaxForm;
    :cond_4
    move-object/from16 v20, v15

    .end local v15    # "listSyntax":Lkawa/lang/SyntaxForm;
    .restart local v20    # "listSyntax":Lkawa/lang/SyntaxForm;
    move-object v4, v3

    check-cast v4, Lgnu/lists/Pair;

    .line 63
    .local v4, "binding":Lgnu/lists/Pair;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v15

    .line 64
    .local v15, "name":Ljava/lang/Object;
    move-object/from16 v21, v18

    .line 65
    .local v21, "nameSyntax":Lkawa/lang/SyntaxForm;
    :goto_2
    move-object/from16 v22, v3

    .end local v3    # "bind_pair_car":Ljava/lang/Object;
    .local v22, "bind_pair_car":Ljava/lang/Object;
    instance-of v3, v15, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_5

    .line 67
    move-object/from16 v21, v15

    check-cast v21, Lkawa/lang/SyntaxForm;

    .line 68
    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v3, v22

    goto :goto_2

    .line 70
    :cond_5
    instance-of v3, v15, Ljava/lang/String;

    if-nez v3, :cond_6

    instance-of v3, v15, Lgnu/mapping/Symbol;

    if-nez v3, :cond_6

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v5

    .end local v5    # "body":Ljava/lang/Object;
    .local v23, "body":Ljava/lang/Object;
    const-string v5, "variable in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lkawa/standard/let_syntax;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " binding is not a symbol"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3

    .line 70
    .end local v23    # "body":Ljava/lang/Object;
    .restart local v5    # "body":Ljava/lang/Object;
    :cond_6
    move-object/from16 v23, v5

    .line 72
    .end local v5    # "body":Ljava/lang/Object;
    .restart local v23    # "body":Ljava/lang/Object;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 73
    .local v3, "binding_cdr":Ljava/lang/Object;
    :goto_3
    instance-of v5, v3, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_7

    .line 75
    move-object/from16 v18, v3

    check-cast v18, Lkawa/lang/SyntaxForm;

    .line 76
    invoke-interface/range {v18 .. v18}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    .line 78
    :cond_7
    instance-of v5, v3, Lgnu/lists/Pair;

    if-nez v5, :cond_8

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v4

    .end local v4    # "binding":Lgnu/lists/Pair;
    .local v24, "binding":Lgnu/lists/Pair;
    invoke-virtual/range {p0 .. p0}, Lkawa/standard/let_syntax;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has no value for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4

    .line 80
    .end local v24    # "binding":Lgnu/lists/Pair;
    .restart local v4    # "binding":Lgnu/lists/Pair;
    :cond_8
    move-object/from16 v24, v4

    .end local v4    # "binding":Lgnu/lists/Pair;
    .restart local v24    # "binding":Lgnu/lists/Pair;
    move-object v4, v3

    check-cast v4, Lgnu/lists/Pair;

    .line 81
    .end local v24    # "binding":Lgnu/lists/Pair;
    .restart local v4    # "binding":Lgnu/lists/Pair;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v24, v3

    .end local v3    # "binding_cdr":Ljava/lang/Object;
    .local v24, "binding_cdr":Ljava/lang/Object;
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v5, v3, :cond_9

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "let binding for \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' is improper list"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3

    .line 83
    :cond_9
    new-instance v3, Lgnu/expr/Declaration;

    invoke-direct {v3, v15}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 84
    .local v3, "decl":Lgnu/expr/Declaration;
    invoke-static {v3}, Lkawa/lang/Macro;->make(Lgnu/expr/Declaration;)Lkawa/lang/Macro;

    move-result-object v5

    .line 85
    .local v5, "macro":Lkawa/lang/Macro;
    aput-object v5, v11, v1

    .line 86
    aput-object v4, v12, v1

    .line 87
    aput-object v18, v13, v1

    .line 88
    invoke-virtual {v14, v3}, Lgnu/expr/LetExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 89
    if-nez v21, :cond_a

    const/16 v25, 0x0

    goto :goto_4

    :cond_a
    invoke-interface/range {v21 .. v21}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v25

    :goto_4
    move-object/from16 v26, v25

    .line 90
    .local v26, "templateScope":Lgnu/expr/ScopeExp;
    move-object/from16 v25, v4

    move-object/from16 v4, v26

    .end local v26    # "templateScope":Lgnu/expr/ScopeExp;
    .local v4, "templateScope":Lgnu/expr/ScopeExp;
    .local v25, "binding":Lgnu/lists/Pair;
    if-eqz v4, :cond_c

    .line 92
    move-object/from16 v26, v15

    .end local v15    # "name":Ljava/lang/Object;
    .local v26, "name":Ljava/lang/Object;
    invoke-virtual {v2, v3, v4}, Lkawa/lang/Translator;->makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v15

    .line 93
    .local v15, "alias":Lgnu/expr/Declaration;
    if-nez v7, :cond_b

    .line 94
    new-instance v27, Ljava/util/Stack;

    invoke-direct/range {v27 .. v27}, Ljava/util/Stack;-><init>()V

    move-object/from16 v7, v27

    .line 95
    :cond_b
    invoke-virtual {v7, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 90
    .end local v26    # "name":Ljava/lang/Object;
    .local v15, "name":Ljava/lang/Object;
    :cond_c
    move-object/from16 v26, v15

    .line 98
    .end local v15    # "name":Ljava/lang/Object;
    .restart local v26    # "name":Ljava/lang/Object;
    :goto_5
    if-eqz v18, :cond_d

    invoke-interface/range {v18 .. v18}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v15

    goto :goto_6

    :cond_d
    iget-boolean v15, v0, Lkawa/standard/let_syntax;->recursive:Z

    if-eqz v15, :cond_e

    move-object v15, v14

    goto :goto_6

    :cond_e
    invoke-virtual/range {p2 .. p2}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v15

    :goto_6
    invoke-virtual {v5, v15}, Lkawa/lang/Macro;->setCapturedScope(Lgnu/expr/ScopeExp;)V

    .line 100
    aput-object v3, v10, v1

    .line 101
    sget-object v15, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object v15, v9, v1

    .line 102
    invoke-virtual/range {v17 .. v17}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 45
    .end local v3    # "decl":Lgnu/expr/Declaration;
    .end local v5    # "macro":Lkawa/lang/Macro;
    .end local v17    # "bind_pair":Lgnu/lists/Pair;
    .end local v18    # "bindingSyntax":Lkawa/lang/SyntaxForm;
    .end local v19    # "bindings":Ljava/lang/Object;
    .end local v21    # "nameSyntax":Lkawa/lang/SyntaxForm;
    .end local v22    # "bind_pair_car":Ljava/lang/Object;
    .end local v24    # "binding_cdr":Ljava/lang/Object;
    .end local v25    # "binding":Lgnu/lists/Pair;
    .end local v26    # "name":Ljava/lang/Object;
    .local v4, "bindings":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v3, v16

    move-object/from16 v15, v20

    move-object/from16 v5, v23

    goto/16 :goto_0

    .end local v16    # "pair":Lgnu/lists/Pair;
    .end local v20    # "listSyntax":Lkawa/lang/SyntaxForm;
    .end local v23    # "body":Ljava/lang/Object;
    .local v3, "pair":Lgnu/lists/Pair;
    .local v5, "body":Ljava/lang/Object;
    .local v15, "listSyntax":Lkawa/lang/SyntaxForm;
    :cond_f
    move-object/from16 v16, v3

    move-object/from16 v23, v5

    .line 104
    .end local v1    # "i":I
    .end local v3    # "pair":Lgnu/lists/Pair;
    .end local v5    # "body":Ljava/lang/Object;
    .restart local v16    # "pair":Lgnu/lists/Pair;
    .restart local v23    # "body":Ljava/lang/Object;
    iget-boolean v1, v0, Lkawa/standard/let_syntax;->recursive:Z

    if-eqz v1, :cond_10

    .line 105
    invoke-direct {v0, v14, v2, v7}, Lkawa/standard/let_syntax;->push(Lgnu/expr/LetExp;Lkawa/lang/Translator;Ljava/util/Stack;)V

    .line 106
    :cond_10
    iget-object v1, v2, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 107
    .local v1, "savedMacro":Lkawa/lang/Macro;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v6, :cond_12

    .line 109
    aget-object v5, v11, v3

    .line 110
    .local v5, "macro":Lkawa/lang/Macro;
    iput-object v5, v2, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 111
    move-object/from16 v17, v4

    .end local v4    # "bindings":Ljava/lang/Object;
    .local v17, "bindings":Ljava/lang/Object;
    aget-object v4, v12, v3

    move/from16 v18, v6

    .end local v6    # "decl_count":I
    .local v18, "decl_count":I
    aget-object v6, v13, v3

    invoke-virtual {v2, v4, v6}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v4

    .line 112
    .local v4, "value":Lgnu/expr/Expression;
    aput-object v4, v9, v3

    .line 113
    aget-object v6, v10, v3

    .line 114
    .local v6, "decl":Lgnu/expr/Declaration;
    iput-object v4, v5, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    .line 115
    move-object/from16 v19, v9

    .end local v9    # "inits":[Lgnu/expr/Expression;
    .local v19, "inits":[Lgnu/expr/Expression;
    new-instance v9, Lgnu/expr/QuoteExp;

    invoke-direct {v9, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v9}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 116
    instance-of v9, v4, Lgnu/expr/LambdaExp;

    if-eqz v9, :cond_11

    .line 118
    move-object v9, v4

    check-cast v9, Lgnu/expr/LambdaExp;

    .line 119
    .local v9, "lvalue":Lgnu/expr/LambdaExp;
    iput-object v6, v9, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 120
    move-object/from16 v20, v4

    .end local v4    # "value":Lgnu/expr/Expression;
    .local v20, "value":Lgnu/expr/Expression;
    invoke-virtual {v6}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v9, v4}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    goto :goto_8

    .line 116
    .end local v9    # "lvalue":Lgnu/expr/LambdaExp;
    .end local v20    # "value":Lgnu/expr/Expression;
    .restart local v4    # "value":Lgnu/expr/Expression;
    :cond_11
    move-object/from16 v20, v4

    .line 107
    .end local v4    # "value":Lgnu/expr/Expression;
    .end local v5    # "macro":Lkawa/lang/Macro;
    .end local v6    # "decl":Lgnu/expr/Declaration;
    :goto_8
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v17

    move/from16 v6, v18

    move-object/from16 v9, v19

    goto :goto_7

    .end local v17    # "bindings":Ljava/lang/Object;
    .end local v18    # "decl_count":I
    .end local v19    # "inits":[Lgnu/expr/Expression;
    .local v4, "bindings":Ljava/lang/Object;
    .local v6, "decl_count":I
    .local v9, "inits":[Lgnu/expr/Expression;
    :cond_12
    move-object/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v9

    .line 123
    .end local v3    # "i":I
    .end local v4    # "bindings":Ljava/lang/Object;
    .end local v6    # "decl_count":I
    .end local v9    # "inits":[Lgnu/expr/Expression;
    .restart local v17    # "bindings":Ljava/lang/Object;
    .restart local v18    # "decl_count":I
    .restart local v19    # "inits":[Lgnu/expr/Expression;
    iput-object v1, v2, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 124
    iget-boolean v3, v0, Lkawa/standard/let_syntax;->recursive:Z

    if-nez v3, :cond_13

    .line 125
    invoke-direct {v0, v14, v2, v7}, Lkawa/standard/let_syntax;->push(Lgnu/expr/LetExp;Lkawa/lang/Translator;Ljava/util/Stack;)V

    .line 126
    :cond_13
    move-object/from16 v3, v23

    .end local v23    # "body":Ljava/lang/Object;
    .local v3, "body":Ljava/lang/Object;
    invoke-virtual {v2, v3}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    .line 127
    .local v4, "result":Lgnu/expr/Expression;
    invoke-virtual {v2, v14}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 128
    invoke-virtual {v2, v8}, Lkawa/lang/Translator;->popRenamedAlias(I)V

    .line 129
    return-object v4
.end method
