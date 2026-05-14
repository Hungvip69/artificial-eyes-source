.class public Lkawa/standard/define;
.super Lkawa/lang/Syntax;
.source "define.java"


# static fields
.field public static final defineRaw:Lkawa/standard/define;


# instance fields
.field lambda:Lkawa/lang/Lambda;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lkawa/standard/define;

    sget-object v1, Lkawa/standard/SchemeCompilation;->lambda:Lkawa/lang/Lambda;

    invoke-direct {v0, v1}, Lkawa/standard/define;-><init>(Lkawa/lang/Lambda;)V

    sput-object v0, Lkawa/standard/define;->defineRaw:Lkawa/standard/define;

    return-void
.end method

.method public constructor <init>(Lkawa/lang/Lambda;)V
    .locals 0
    .param p1, "lambda"    # Lkawa/lang/Lambda;

    .line 38
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 39
    iput-object p1, p0, Lkawa/standard/define;->lambda:Lkawa/lang/Lambda;

    .line 40
    return-void
.end method


# virtual methods
.method getName(I)Ljava/lang/String;
    .locals 1
    .param p1, "options"    # I

    .line 29
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "define-private"

    return-object v0

    .line 31
    :cond_0
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    .line 32
    const-string v0, "define-constant"

    return-object v0

    .line 34
    :cond_1
    const-string v0, "define"

    return-object v0
.end method

.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 16
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 119
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    .line 120
    .local v2, "p1":Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/lists/Pair;

    .line 121
    .local v3, "p2":Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/lists/Pair;

    .line 122
    .local v4, "p3":Lgnu/lists/Pair;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/Pair;

    .line 123
    .local v5, "p4":Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 124
    .local v6, "name":Ljava/lang/Object;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 125
    .local v7, "options":I
    and-int/lit8 v8, v7, 0x4

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 127
    .local v8, "makePrivate":Z
    :goto_0
    instance-of v10, v6, Lgnu/expr/Declaration;

    if-nez v10, :cond_1

    .line 128
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Lkawa/standard/define;->getName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is only allowed in a <body>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    return-object v9

    .line 129
    :cond_1
    move-object v10, v6

    check-cast v10, Lgnu/expr/Declaration;

    .line 131
    .local v10, "decl":Lgnu/expr/Declaration;
    const-wide/16 v11, 0x2000

    invoke-virtual {v10, v11, v12}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 133
    invoke-virtual {v10}, Lgnu/expr/Declaration;->getTypeExp()Lgnu/expr/Expression;

    move-result-object v11

    .line 134
    .local v11, "texp":Lgnu/expr/Expression;
    instance-of v12, v11, Lgnu/expr/LangExp;

    if-eqz v12, :cond_2

    .line 136
    move-object v12, v11

    check-cast v12, Lgnu/expr/LangExp;

    invoke-virtual {v12}, Lgnu/expr/LangExp;->getLangValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/lists/Pair;

    .line 137
    .local v12, "typeSpecPair":Lgnu/lists/Pair;
    invoke-virtual {v1, v12}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v13

    invoke-virtual {v10, v13}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 142
    .end local v11    # "texp":Lgnu/expr/Expression;
    .end local v12    # "typeSpecPair":Lgnu/lists/Pair;
    :cond_2
    and-int/lit8 v11, v7, 0x2

    const/4 v12, 0x0

    if-eqz v11, :cond_4

    .line 144
    invoke-virtual {v10}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v11

    check-cast v11, Lgnu/expr/LambdaExp;

    .line 145
    .local v11, "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    .line 146
    .local v13, "body":Ljava/lang/Object;
    iget-object v14, v0, Lkawa/standard/define;->lambda:Lkawa/lang/Lambda;

    invoke-virtual {v14, v11, v13, v1}, Lkawa/lang/Lambda;->rewriteBody(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 147
    move-object v14, v11

    .line 148
    .local v14, "value":Lgnu/expr/Expression;
    sget-boolean v15, Lgnu/expr/Compilation;->inlineOk:Z

    if-nez v15, :cond_3

    .line 149
    invoke-virtual {v10, v12}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 150
    .end local v11    # "lexp":Lgnu/expr/LambdaExp;
    .end local v13    # "body":Ljava/lang/Object;
    :cond_3
    goto :goto_2

    .line 153
    .end local v14    # "value":Lgnu/expr/Expression;
    :cond_4
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v11}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v14

    .line 154
    .restart local v14    # "value":Lgnu/expr/Expression;
    iget-object v11, v10, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v11, v11, Lgnu/expr/ModuleExp;

    if-eqz v11, :cond_5

    if-nez v8, :cond_5

    invoke-virtual {v10}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_1

    :cond_5
    move-object v12, v14

    :goto_1
    invoke-virtual {v10, v12}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 158
    :goto_2
    new-instance v11, Lgnu/expr/SetExp;

    invoke-direct {v11, v10, v14}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 159
    .local v11, "sexp":Lgnu/expr/SetExp;
    invoke-virtual {v11, v9}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 160
    if-eqz v8, :cond_6

    invoke-virtual/range {p2 .. p2}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v9

    instance-of v9, v9, Lgnu/expr/ModuleExp;

    if-nez v9, :cond_6

    .line 161
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "define-private not at top level "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v12, 0x77

    invoke-virtual {v1, v12, v9}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 163
    :cond_6
    return-object v11
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 24
    .param p1, "st"    # Lgnu/lists/Pair;
    .param p2, "defs"    # Lgnu/expr/ScopeExp;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 44
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/lists/Pair;

    .line 45
    .local v3, "p1":Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/lists/Pair;

    .line 46
    .local v4, "p2":Lgnu/lists/Pair;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/Pair;

    .line 47
    .local v5, "p3":Lgnu/lists/Pair;
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/Pair;

    .line 48
    .local v6, "p4":Lgnu/lists/Pair;
    const/4 v7, 0x0

    .line 49
    .local v7, "nameSyntax":Lkawa/lang/SyntaxForm;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    .line 50
    .local v8, "name":Ljava/lang/Object;
    :goto_0
    instance-of v9, v8, Lkawa/lang/SyntaxForm;

    if-eqz v9, :cond_0

    .line 52
    move-object v7, v8

    check-cast v7, Lkawa/lang/SyntaxForm;

    .line 53
    invoke-interface {v7}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 56
    .local v9, "options":I
    and-int/lit8 v10, v9, 0x4

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 57
    .local v10, "makePrivate":Z
    :goto_1
    and-int/lit8 v13, v9, 0x8

    if-eqz v13, :cond_2

    const/4 v11, 0x1

    .line 59
    .local v11, "makeConstant":Z
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v13

    .line 60
    .local v13, "scope":Lgnu/expr/ScopeExp;
    invoke-virtual {v2, v8}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 61
    instance-of v14, v8, Lgnu/mapping/Symbol;

    if-nez v14, :cond_3

    .line 63
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' is not a valid identifier"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x65

    invoke-virtual {v2, v15, v14}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 64
    const/4 v8, 0x0

    .line 67
    :cond_3
    invoke-virtual {v2, v3}, Lkawa/lang/Translator;->pushPositionOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 68
    .local v14, "savePos":Ljava/lang/Object;
    invoke-virtual {v2, v8, v7, v1}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v15

    .line 69
    .local v15, "decl":Lgnu/expr/Declaration;
    invoke-virtual {v2, v14}, Lkawa/lang/Translator;->popPositionOf(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v15}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v8

    .line 71
    if-eqz v10, :cond_4

    .line 73
    move-object/from16 v16, v13

    .end local v13    # "scope":Lgnu/expr/ScopeExp;
    .local v16, "scope":Lgnu/expr/ScopeExp;
    const-wide/32 v12, 0x1000000

    invoke-virtual {v15, v12, v13}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 74
    const/4 v12, 0x1

    invoke-virtual {v15, v12}, Lgnu/expr/Declaration;->setPrivate(Z)V

    goto :goto_2

    .line 71
    .end local v16    # "scope":Lgnu/expr/ScopeExp;
    .restart local v13    # "scope":Lgnu/expr/ScopeExp;
    :cond_4
    move-object/from16 v16, v13

    .line 76
    .end local v13    # "scope":Lgnu/expr/ScopeExp;
    .restart local v16    # "scope":Lgnu/expr/ScopeExp;
    :goto_2
    if-eqz v11, :cond_5

    .line 77
    const-wide/16 v12, 0x4000

    invoke-virtual {v15, v12, v13}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 78
    :cond_5
    const-wide/32 v12, 0x40000

    invoke-virtual {v15, v12, v13}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 80
    and-int/lit8 v12, v9, 0x2

    if-eqz v12, :cond_8

    .line 82
    new-instance v12, Lgnu/expr/LambdaExp;

    invoke-direct {v12}, Lgnu/expr/LambdaExp;-><init>()V

    .line 83
    .local v12, "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {v12, v8}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    .line 84
    sget-boolean v13, Lgnu/expr/Compilation;->inlineOk:Z

    if-eqz v13, :cond_6

    .line 86
    const/4 v13, 0x1

    invoke-virtual {v15, v13}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 87
    sget-object v13, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v15, v13}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 88
    iput-object v15, v12, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 90
    :cond_6
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v13

    .line 91
    .local v13, "formals":Ljava/lang/Object;
    move-object/from16 v17, v7

    .end local v7    # "nameSyntax":Lkawa/lang/SyntaxForm;
    .local v17, "nameSyntax":Lkawa/lang/SyntaxForm;
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    .line 92
    .local v7, "body":Ljava/lang/Object;
    invoke-static {v12, v3}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Expression;Ljava/lang/Object;)V

    .line 93
    move-object/from16 v18, v6

    .end local v6    # "p4":Lgnu/lists/Pair;
    .local v18, "p4":Lgnu/lists/Pair;
    iget-object v6, v0, Lkawa/standard/define;->lambda:Lkawa/lang/Lambda;

    move-object/from16 v19, v8

    .end local v8    # "name":Ljava/lang/Object;
    .local v19, "name":Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-virtual {v6, v12, v13, v2, v8}, Lkawa/lang/Lambda;->rewriteFormals(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 94
    iget-object v6, v0, Lkawa/standard/define;->lambda:Lkawa/lang/Lambda;

    invoke-virtual {v6, v12, v7, v2}, Lkawa/lang/Lambda;->rewriteAttrs(Lgnu/expr/LambdaExp;Ljava/lang/Object;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v6

    .line 95
    .local v6, "realBody":Ljava/lang/Object;
    if-eq v6, v7, :cond_7

    .line 96
    new-instance v8, Lgnu/lists/Pair;

    move-object/from16 v20, v7

    .end local v7    # "body":Ljava/lang/Object;
    .local v20, "body":Ljava/lang/Object;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v21, v4

    .end local v4    # "p2":Lgnu/lists/Pair;
    .local v21, "p2":Lgnu/lists/Pair;
    new-instance v4, Lgnu/lists/Pair;

    move/from16 v22, v11

    .end local v11    # "makeConstant":Z
    .local v22, "makeConstant":Z
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v23, v14

    .end local v14    # "savePos":Ljava/lang/Object;
    .local v23, "savePos":Ljava/lang/Object;
    new-instance v14, Lgnu/lists/Pair;

    invoke-direct {v14, v13, v6}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v4, v11, v14}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v8, v7, v4}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v8

    .end local v21    # "p2":Lgnu/lists/Pair;
    .restart local v4    # "p2":Lgnu/lists/Pair;
    goto :goto_3

    .line 95
    .end local v20    # "body":Ljava/lang/Object;
    .end local v22    # "makeConstant":Z
    .end local v23    # "savePos":Ljava/lang/Object;
    .restart local v7    # "body":Ljava/lang/Object;
    .restart local v11    # "makeConstant":Z
    .restart local v14    # "savePos":Ljava/lang/Object;
    :cond_7
    move-object/from16 v21, v4

    move-object/from16 v20, v7

    move/from16 v22, v11

    move-object/from16 v23, v14

    .line 97
    .end local v7    # "body":Ljava/lang/Object;
    .end local v11    # "makeConstant":Z
    .end local v14    # "savePos":Ljava/lang/Object;
    .restart local v20    # "body":Ljava/lang/Object;
    .restart local v22    # "makeConstant":Z
    .restart local v23    # "savePos":Ljava/lang/Object;
    :goto_3
    invoke-virtual {v15, v12}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    goto :goto_4

    .line 80
    .end local v12    # "lexp":Lgnu/expr/LambdaExp;
    .end local v13    # "formals":Ljava/lang/Object;
    .end local v17    # "nameSyntax":Lkawa/lang/SyntaxForm;
    .end local v18    # "p4":Lgnu/lists/Pair;
    .end local v19    # "name":Ljava/lang/Object;
    .end local v20    # "body":Ljava/lang/Object;
    .end local v22    # "makeConstant":Z
    .end local v23    # "savePos":Ljava/lang/Object;
    .local v6, "p4":Lgnu/lists/Pair;
    .local v7, "nameSyntax":Lkawa/lang/SyntaxForm;
    .restart local v8    # "name":Ljava/lang/Object;
    .restart local v11    # "makeConstant":Z
    .restart local v14    # "savePos":Ljava/lang/Object;
    :cond_8
    move-object/from16 v21, v4

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move/from16 v22, v11

    move-object/from16 v23, v14

    .line 100
    .end local v6    # "p4":Lgnu/lists/Pair;
    .end local v7    # "nameSyntax":Lkawa/lang/SyntaxForm;
    .end local v8    # "name":Ljava/lang/Object;
    .end local v11    # "makeConstant":Z
    .end local v14    # "savePos":Ljava/lang/Object;
    .restart local v17    # "nameSyntax":Lkawa/lang/SyntaxForm;
    .restart local v18    # "p4":Lgnu/lists/Pair;
    .restart local v19    # "name":Ljava/lang/Object;
    .restart local v22    # "makeConstant":Z
    .restart local v23    # "savePos":Ljava/lang/Object;
    :goto_4
    instance-of v6, v1, Lgnu/expr/ModuleExp;

    if-eqz v6, :cond_a

    if-nez v10, :cond_a

    sget-boolean v6, Lgnu/expr/Compilation;->inlineOk:Z

    if-eqz v6, :cond_9

    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->sharedModuleDefs()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 102
    :cond_9
    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 104
    :cond_a
    and-int/lit8 v6, v9, 0x1

    if-eqz v6, :cond_b

    .line 106
    new-instance v6, Lgnu/expr/LangExp;

    invoke-direct {v6, v5}, Lgnu/expr/LangExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v15, v6}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 107
    const-wide/16 v6, 0x2000

    invoke-virtual {v15, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 110
    :cond_b
    invoke-static {v3, v15, v4}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-static {v7, v0, v6}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    .line 112
    .end local p1    # "st":Lgnu/lists/Pair;
    .local v6, "st":Lgnu/lists/Pair;
    invoke-static {v15, v3}, Lkawa/lang/Translator;->setLine(Lgnu/expr/Declaration;Ljava/lang/Object;)V

    .line 114
    iget-object v7, v2, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v7, v6}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 115
    return-void
.end method
