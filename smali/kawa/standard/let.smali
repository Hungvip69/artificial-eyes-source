.class public Lkawa/standard/let;
.super Lkawa/lang/Syntax;
.source "let.java"


# static fields
.field public static final let:Lkawa/standard/let;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lkawa/standard/let;

    invoke-direct {v0}, Lkawa/standard/let;-><init>()V

    sput-object v0, Lkawa/standard/let;->let:Lkawa/standard/let;

    .line 18
    sget-object v0, Lkawa/standard/let;->let:Lkawa/standard/let;

    const-string v1, "let"

    invoke-virtual {v0, v1}, Lkawa/standard/let;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 23
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 22
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    instance-of v2, v0, Lgnu/lists/Pair;

    if-nez v2, :cond_0

    .line 23
    const-string v2, "missing let arguments"

    invoke-virtual {v1, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 24
    :cond_0
    move-object v2, v0

    check-cast v2, Lgnu/lists/Pair;

    .line 25
    .local v2, "pair":Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    .line 26
    .local v3, "bindings":Ljava/lang/Object;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 27
    .local v4, "body":Ljava/lang/Object;
    invoke-static {v3}, Lkawa/lang/Translator;->listLength(Ljava/lang/Object;)I

    move-result v5

    .line 28
    .local v5, "decl_count":I
    if-gez v5, :cond_1

    .line 29
    const-string v6, "bindings not a proper list"

    invoke-virtual {v1, v6}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    return-object v6

    .line 31
    :cond_1
    new-array v6, v5, [Lgnu/expr/Expression;

    .line 32
    .local v6, "inits":[Lgnu/expr/Expression;
    new-instance v7, Lgnu/expr/LetExp;

    invoke-direct {v7, v6}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 33
    .local v7, "let":Lgnu/expr/LetExp;
    const/4 v8, 0x0

    .line 34
    .local v8, "renamedAliases":Ljava/util/Stack;
    const/4 v9, 0x0

    .line 35
    .local v9, "renamedAliasesCount":I
    const/4 v10, 0x0

    .line 36
    .local v10, "syntaxRest":Lkawa/lang/SyntaxForm;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v5, :cond_14

    .line 38
    :goto_1
    instance-of v12, v3, Lkawa/lang/SyntaxForm;

    if-eqz v12, :cond_2

    .line 40
    move-object v10, v3

    check-cast v10, Lkawa/lang/SyntaxForm;

    .line 41
    invoke-interface {v10}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 45
    :cond_2
    move-object v12, v3

    check-cast v12, Lgnu/lists/Pair;

    .line 46
    .local v12, "bind_pair":Lgnu/lists/Pair;
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    .line 47
    .local v13, "bind_pair_car":Ljava/lang/Object;
    move-object v14, v10

    .line 48
    .local v14, "syntax":Lkawa/lang/SyntaxForm;
    instance-of v15, v13, Lkawa/lang/SyntaxForm;

    if-eqz v15, :cond_3

    .line 50
    move-object v14, v13

    check-cast v14, Lkawa/lang/SyntaxForm;

    .line 51
    invoke-interface {v14}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v13

    .line 53
    :cond_3
    instance-of v15, v13, Lgnu/lists/Pair;

    if-nez v15, :cond_4

    .line 54
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    .end local v2    # "pair":Lgnu/lists/Pair;
    .local v16, "pair":Lgnu/lists/Pair;
    const-string v2, "let binding is not a pair:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 55
    .end local v16    # "pair":Lgnu/lists/Pair;
    .restart local v2    # "pair":Lgnu/lists/Pair;
    :cond_4
    move-object/from16 v16, v2

    .end local v2    # "pair":Lgnu/lists/Pair;
    .restart local v16    # "pair":Lgnu/lists/Pair;
    move-object v2, v13

    check-cast v2, Lgnu/lists/Pair;

    .line 56
    .local v2, "binding":Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v15

    .line 58
    .local v15, "name":Ljava/lang/Object;
    move-object/from16 v17, v3

    .end local v3    # "bindings":Ljava/lang/Object;
    .local v17, "bindings":Ljava/lang/Object;
    instance-of v3, v15, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_5

    .line 60
    move-object v3, v15

    check-cast v3, Lkawa/lang/SyntaxForm;

    .line 61
    .local v3, "sf":Lkawa/lang/SyntaxForm;
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v15

    .line 62
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v3

    .line 63
    .local v3, "templateScope":Lkawa/lang/TemplateScope;
    goto :goto_2

    .line 65
    .end local v3    # "templateScope":Lkawa/lang/TemplateScope;
    :cond_5
    if-nez v14, :cond_6

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    invoke-interface {v14}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v3

    .line 66
    .restart local v3    # "templateScope":Lkawa/lang/TemplateScope;
    :goto_2
    invoke-virtual {v1, v15}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 67
    move/from16 v18, v5

    .end local v5    # "decl_count":I
    .local v18, "decl_count":I
    instance-of v5, v15, Lgnu/mapping/Symbol;

    if-nez v5, :cond_7

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v10

    .end local v10    # "syntaxRest":Lkawa/lang/SyntaxForm;
    .local v19, "syntaxRest":Lkawa/lang/SyntaxForm;
    const-string v10, "variable "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " in let binding is not a symbol: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    return-object v5

    .line 70
    .end local v19    # "syntaxRest":Lkawa/lang/SyntaxForm;
    .restart local v10    # "syntaxRest":Lkawa/lang/SyntaxForm;
    :cond_7
    move-object/from16 v19, v10

    .end local v10    # "syntaxRest":Lkawa/lang/SyntaxForm;
    .restart local v19    # "syntaxRest":Lkawa/lang/SyntaxForm;
    invoke-virtual {v7, v15}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v5

    .line 71
    .local v5, "decl":Lgnu/expr/Declaration;
    move-object v10, v13

    move-object/from16 v20, v14

    .end local v13    # "bind_pair_car":Ljava/lang/Object;
    .end local v14    # "syntax":Lkawa/lang/SyntaxForm;
    .local v10, "bind_pair_car":Ljava/lang/Object;
    .local v20, "syntax":Lkawa/lang/SyntaxForm;
    const-wide/32 v13, 0x40000

    invoke-virtual {v5, v13, v14}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 72
    if-eqz v3, :cond_9

    .line 74
    invoke-virtual {v1, v5, v3}, Lkawa/lang/Translator;->makeRenamedAlias(Lgnu/expr/Declaration;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v13

    .line 75
    .local v13, "alias":Lgnu/expr/Declaration;
    if-nez v8, :cond_8

    .line 76
    new-instance v14, Ljava/util/Stack;

    invoke-direct {v14}, Ljava/util/Stack;-><init>()V

    move-object v8, v14

    .line 77
    :cond_8
    invoke-virtual {v8, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    add-int/lit8 v9, v9, 0x1

    .line 81
    .end local v13    # "alias":Lgnu/expr/Declaration;
    :cond_9
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v14, v20

    .line 82
    .end local v20    # "syntax":Lkawa/lang/SyntaxForm;
    .local v13, "binding_cdr":Ljava/lang/Object;
    .restart local v14    # "syntax":Lkawa/lang/SyntaxForm;
    :goto_3
    instance-of v0, v13, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_a

    .line 84
    move-object v14, v13

    check-cast v14, Lkawa/lang/SyntaxForm;

    .line 85
    invoke-interface {v14}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p1

    goto :goto_3

    .line 87
    :cond_a
    instance-of v0, v13, Lgnu/lists/Pair;

    if-nez v0, :cond_b

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    .end local v2    # "binding":Lgnu/lists/Pair;
    .local v20, "binding":Lgnu/lists/Pair;
    const-string v2, "let has no value for \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 89
    .end local v20    # "binding":Lgnu/lists/Pair;
    .restart local v2    # "binding":Lgnu/lists/Pair;
    :cond_b
    move-object/from16 v20, v2

    .end local v2    # "binding":Lgnu/lists/Pair;
    .restart local v20    # "binding":Lgnu/lists/Pair;
    move-object v0, v13

    check-cast v0, Lgnu/lists/Pair;

    .line 90
    .end local v20    # "binding":Lgnu/lists/Pair;
    .local v0, "binding":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 92
    .end local v13    # "binding_cdr":Ljava/lang/Object;
    .local v2, "binding_cdr":Ljava/lang/Object;
    :goto_4
    instance-of v13, v2, Lkawa/lang/SyntaxForm;

    if-eqz v13, :cond_c

    .line 94
    move-object v14, v2

    check-cast v14, Lkawa/lang/SyntaxForm;

    .line 95
    invoke-interface {v14}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    .line 97
    :cond_c
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v20, v0

    .end local v0    # "binding":Lgnu/lists/Pair;
    .restart local v20    # "binding":Lgnu/lists/Pair;
    const-string v0, "::"

    invoke-virtual {v1, v13, v0}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 99
    instance-of v0, v2, Lgnu/lists/Pair;

    if-eqz v0, :cond_f

    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    move-object v13, v0

    .end local v20    # "binding":Lgnu/lists/Pair;
    .local v13, "binding":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v2

    .end local v2    # "binding_cdr":Ljava/lang/Object;
    .local v21, "binding_cdr":Ljava/lang/Object;
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v2, :cond_d

    move-object v0, v13

    goto :goto_6

    .line 102
    :cond_d
    invoke-virtual {v13}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .line 103
    .end local v21    # "binding_cdr":Ljava/lang/Object;
    .restart local v2    # "binding_cdr":Ljava/lang/Object;
    :goto_5
    nop

    instance-of v0, v2, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_e

    .line 105
    move-object v14, v2

    check-cast v14, Lkawa/lang/SyntaxForm;

    .line 106
    invoke-interface {v14}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    goto :goto_5

    .line 103
    :cond_e
    move-object v0, v13

    goto :goto_7

    .line 99
    .end local v13    # "binding":Lgnu/lists/Pair;
    .restart local v20    # "binding":Lgnu/lists/Pair;
    :cond_f
    move-object/from16 v21, v2

    .end local v2    # "binding_cdr":Ljava/lang/Object;
    .restart local v21    # "binding_cdr":Ljava/lang/Object;
    move-object/from16 v0, v20

    .line 101
    .end local v20    # "binding":Lgnu/lists/Pair;
    .restart local v0    # "binding":Lgnu/lists/Pair;
    :goto_6
    const-string v2, "missing type after \'::\' in let"

    invoke-virtual {v1, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 97
    .end local v0    # "binding":Lgnu/lists/Pair;
    .end local v21    # "binding_cdr":Ljava/lang/Object;
    .restart local v2    # "binding_cdr":Ljava/lang/Object;
    .restart local v20    # "binding":Lgnu/lists/Pair;
    :cond_10
    move-object/from16 v21, v2

    .end local v2    # "binding_cdr":Ljava/lang/Object;
    .restart local v21    # "binding_cdr":Ljava/lang/Object;
    move-object/from16 v0, v20

    .line 109
    .end local v20    # "binding":Lgnu/lists/Pair;
    .end local v21    # "binding_cdr":Ljava/lang/Object;
    .restart local v0    # "binding":Lgnu/lists/Pair;
    .restart local v2    # "binding_cdr":Ljava/lang/Object;
    :goto_7
    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v13, :cond_11

    .line 111
    move-object v13, v0

    move/from16 v20, v9

    move-object/from16 v22, v13

    move-object v13, v8

    move-object/from16 v8, v22

    .local v13, "init":Lgnu/lists/Pair;
    goto :goto_8

    .line 113
    .end local v13    # "init":Lgnu/lists/Pair;
    :cond_11
    instance-of v13, v2, Lgnu/lists/Pair;

    if-eqz v13, :cond_13

    .line 115
    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v13

    invoke-virtual {v5, v13}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 116
    move-object v13, v8

    move/from16 v20, v9

    .end local v8    # "renamedAliases":Ljava/util/Stack;
    .end local v9    # "renamedAliasesCount":I
    .local v13, "renamedAliases":Ljava/util/Stack;
    .local v20, "renamedAliasesCount":I
    const-wide/16 v8, 0x2000

    invoke-virtual {v5, v8, v9}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 117
    move-object v8, v2

    check-cast v8, Lgnu/lists/Pair;

    .line 121
    .local v8, "init":Lgnu/lists/Pair;
    :goto_8
    invoke-virtual {v1, v8, v14}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v9

    aput-object v9, v6, v11

    .line 122
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v21, v0

    .end local v0    # "binding":Lgnu/lists/Pair;
    .local v21, "binding":Lgnu/lists/Pair;
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v9, v0, :cond_12

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "junk after declaration of "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 124
    :cond_12
    aget-object v0, v6, v11

    invoke-virtual {v5, v0}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 125
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 36
    .end local v2    # "binding_cdr":Ljava/lang/Object;
    .end local v5    # "decl":Lgnu/expr/Declaration;
    .end local v8    # "init":Lgnu/lists/Pair;
    .end local v10    # "bind_pair_car":Ljava/lang/Object;
    .end local v12    # "bind_pair":Lgnu/lists/Pair;
    .end local v14    # "syntax":Lkawa/lang/SyntaxForm;
    .end local v15    # "name":Ljava/lang/Object;
    .end local v17    # "bindings":Ljava/lang/Object;
    .end local v21    # "binding":Lgnu/lists/Pair;
    .local v3, "bindings":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p1

    move-object v8, v13

    move-object/from16 v2, v16

    move/from16 v5, v18

    move-object/from16 v10, v19

    move/from16 v9, v20

    goto/16 :goto_0

    .line 120
    .end local v13    # "renamedAliases":Ljava/util/Stack;
    .end local v20    # "renamedAliasesCount":I
    .restart local v0    # "binding":Lgnu/lists/Pair;
    .restart local v2    # "binding_cdr":Ljava/lang/Object;
    .local v3, "templateScope":Lkawa/lang/TemplateScope;
    .restart local v5    # "decl":Lgnu/expr/Declaration;
    .local v8, "renamedAliases":Ljava/util/Stack;
    .restart local v9    # "renamedAliasesCount":I
    .restart local v10    # "bind_pair_car":Ljava/lang/Object;
    .restart local v12    # "bind_pair":Lgnu/lists/Pair;
    .restart local v14    # "syntax":Lkawa/lang/SyntaxForm;
    .restart local v15    # "name":Ljava/lang/Object;
    .restart local v17    # "bindings":Ljava/lang/Object;
    :cond_13
    move-object/from16 v21, v0

    move-object v13, v8

    .end local v0    # "binding":Lgnu/lists/Pair;
    .end local v8    # "renamedAliases":Ljava/util/Stack;
    .restart local v13    # "renamedAliases":Ljava/util/Stack;
    .restart local v21    # "binding":Lgnu/lists/Pair;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "let binding for \'"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\' is improper list"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 36
    .end local v12    # "bind_pair":Lgnu/lists/Pair;
    .end local v13    # "renamedAliases":Ljava/util/Stack;
    .end local v14    # "syntax":Lkawa/lang/SyntaxForm;
    .end local v15    # "name":Ljava/lang/Object;
    .end local v16    # "pair":Lgnu/lists/Pair;
    .end local v17    # "bindings":Ljava/lang/Object;
    .end local v18    # "decl_count":I
    .end local v19    # "syntaxRest":Lkawa/lang/SyntaxForm;
    .end local v21    # "binding":Lgnu/lists/Pair;
    .local v2, "pair":Lgnu/lists/Pair;
    .local v3, "bindings":Ljava/lang/Object;
    .local v5, "decl_count":I
    .restart local v8    # "renamedAliases":Ljava/util/Stack;
    .local v10, "syntaxRest":Lkawa/lang/SyntaxForm;
    :cond_14
    move-object/from16 v16, v2

    move/from16 v18, v5

    .line 128
    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v5    # "decl_count":I
    .end local v11    # "i":I
    .restart local v16    # "pair":Lgnu/lists/Pair;
    .restart local v18    # "decl_count":I
    move v0, v9

    .local v0, "i":I
    :goto_9
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    .line 129
    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/Declaration;

    invoke-virtual {v1, v2}, Lkawa/lang/Translator;->pushRenamedAlias(Lgnu/expr/Declaration;)V

    goto :goto_9

    .line 131
    .end local v0    # "i":I
    :cond_15
    invoke-virtual {v1, v7}, Lkawa/lang/Translator;->push(Lgnu/expr/ScopeExp;)V

    .line 132
    invoke-virtual {v1, v4}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, v7, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 133
    invoke-virtual {v1, v7}, Lkawa/lang/Translator;->pop(Lgnu/expr/ScopeExp;)V

    .line 134
    invoke-virtual {v1, v9}, Lkawa/lang/Translator;->popRenamedAlias(I)V

    .line 136
    return-object v7
.end method
