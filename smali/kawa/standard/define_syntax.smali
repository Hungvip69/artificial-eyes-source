.class public Lkawa/standard/define_syntax;
.super Lkawa/lang/Syntax;
.source "define_syntax.java"


# static fields
.field public static final define_macro:Lkawa/standard/define_syntax;

.field public static final define_syntax:Lkawa/standard/define_syntax;

.field static makeHygienic:Lgnu/expr/PrimProcedure;

.field static makeNonHygienic:Lgnu/expr/PrimProcedure;

.field static setCapturedScope:Lgnu/expr/PrimProcedure;

.field static typeMacro:Lgnu/bytecode/ClassType;


# instance fields
.field hygienic:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lkawa/standard/define_syntax;

    const-string v1, "%define-macro"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkawa/standard/define_syntax;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lkawa/standard/define_syntax;->define_macro:Lkawa/standard/define_syntax;

    .line 16
    new-instance v0, Lkawa/standard/define_syntax;

    const-string v1, "%define-syntax"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkawa/standard/define_syntax;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lkawa/standard/define_syntax;->define_syntax:Lkawa/standard/define_syntax;

    .line 30
    const-string v0, "kawa.lang.Macro"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    .line 31
    new-instance v0, Lgnu/expr/PrimProcedure;

    sget-object v1, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    const-string v3, "make"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lkawa/standard/define_syntax;->makeHygienic:Lgnu/expr/PrimProcedure;

    .line 33
    new-instance v0, Lgnu/expr/PrimProcedure;

    sget-object v1, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    const-string v3, "makeNonHygienic"

    invoke-virtual {v1, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lkawa/standard/define_syntax;->makeNonHygienic:Lgnu/expr/PrimProcedure;

    .line 35
    new-instance v0, Lgnu/expr/PrimProcedure;

    sget-object v1, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    const-string v3, "setCapturedScope"

    invoke-virtual {v1, v3, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lkawa/standard/define_syntax;->setCapturedScope:Lgnu/expr/PrimProcedure;

    .line 38
    sget-object v0, Lkawa/standard/define_syntax;->makeHygienic:Lgnu/expr/PrimProcedure;

    invoke-virtual {v0}, Lgnu/expr/PrimProcedure;->setSideEffectFree()V

    .line 39
    sget-object v0, Lkawa/standard/define_syntax;->makeNonHygienic:Lgnu/expr/PrimProcedure;

    invoke-virtual {v0}, Lgnu/expr/PrimProcedure;->setSideEffectFree()V

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkawa/standard/define_syntax;->hygienic:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "hygienic"    # Z

    .line 26
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 27
    iput-boolean p2, p0, Lkawa/standard/define_syntax;->hygienic:Z

    .line 28
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 46
    const-string v0, "define-syntax not in a body"

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 17
    .param p1, "st"    # Lgnu/lists/Pair;
    .param p2, "defs"    # Lgnu/expr/ScopeExp;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 51
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 52
    .local v3, "syntax":Lkawa/lang/SyntaxForm;
    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 53
    .local v4, "st_cdr":Ljava/lang/Object;
    :goto_0
    instance-of v5, v4, Lkawa/lang/SyntaxForm;

    if-eqz v5, :cond_0

    .line 55
    move-object v3, v4

    check-cast v3, Lkawa/lang/SyntaxForm;

    .line 56
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 58
    :cond_0
    move-object v5, v4

    .line 60
    .local v5, "p":Ljava/lang/Object;
    instance-of v6, v5, Lgnu/lists/Pair;

    if-eqz v6, :cond_1

    .line 62
    move-object v6, v5

    check-cast v6, Lgnu/lists/Pair;

    .line 63
    .local v6, "pp":Lgnu/lists/Pair;
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    .line 64
    .local v7, "name":Ljava/lang/Object;
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .line 65
    .end local v6    # "pp":Lgnu/lists/Pair;
    goto :goto_1

    .line 67
    .end local v7    # "name":Ljava/lang/Object;
    :cond_1
    const/4 v7, 0x0

    .line 68
    .restart local v7    # "name":Ljava/lang/Object;
    :goto_1
    move-object v6, v3

    .line 69
    .local v6, "nameSyntax":Lkawa/lang/SyntaxForm;
    :goto_2
    instance-of v8, v7, Lkawa/lang/SyntaxForm;

    if-eqz v8, :cond_2

    .line 71
    move-object v6, v7

    check-cast v6, Lkawa/lang/SyntaxForm;

    .line 72
    invoke-interface {v6}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {v2, v7}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 75
    instance-of v8, v7, Lgnu/mapping/Symbol;

    if-nez v8, :cond_3

    .line 77
    iget-object v8, v2, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "missing macro name for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Lkawa/lang/Translator;->safeCar(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 78
    return-void

    .line 80
    :cond_3
    if-eqz v5, :cond_9

    invoke-static {v5}, Lkawa/lang/Translator;->safeCdr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v8, v9, :cond_4

    goto/16 :goto_4

    .line 86
    :cond_4
    invoke-virtual {v2, v7, v6, v1}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v8

    .line 87
    .local v8, "decl":Lgnu/expr/Declaration;
    sget-object v9, Lkawa/standard/define_syntax;->typeMacro:Lgnu/bytecode/ClassType;

    invoke-virtual {v8, v9}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 88
    invoke-virtual {v2, v8}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 90
    iget-object v9, v2, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 91
    .local v9, "savedMacro":Lkawa/lang/Macro;
    invoke-static {v8}, Lkawa/lang/Macro;->make(Lgnu/expr/Declaration;)Lkawa/lang/Macro;

    move-result-object v10

    .line 92
    .local v10, "macro":Lkawa/lang/Macro;
    iget-boolean v11, v0, Lkawa/standard/define_syntax;->hygienic:Z

    invoke-virtual {v10, v11}, Lkawa/lang/Macro;->setHygienic(Z)V

    .line 93
    iput-object v10, v2, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 94
    move-object v11, v5

    check-cast v11, Lgnu/lists/Pair;

    invoke-virtual {v2, v11, v3}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v11

    .line 95
    .local v11, "rule":Lgnu/expr/Expression;
    iput-object v9, v2, Lkawa/lang/Translator;->currentMacroDefinition:Lkawa/lang/Macro;

    .line 96
    iput-object v11, v10, Lkawa/lang/Macro;->expander:Ljava/lang/Object;

    .line 98
    instance-of v12, v11, Lgnu/expr/LambdaExp;

    if-eqz v12, :cond_5

    .line 99
    move-object v12, v11

    check-cast v12, Lgnu/expr/LambdaExp;

    const/16 v13, 0x100

    invoke-virtual {v12, v13}, Lgnu/expr/LambdaExp;->setFlag(I)V

    .line 100
    :cond_5
    const/4 v12, 0x3

    new-array v12, v12, [Lgnu/expr/Expression;

    .line 101
    .local v12, "args":[Lgnu/expr/Expression;
    new-instance v13, Lgnu/expr/QuoteExp;

    invoke-direct {v13, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 102
    const/4 v13, 0x1

    aput-object v11, v12, v13

    .line 103
    invoke-static/range {p2 .. p2}, Lgnu/expr/ThisExp;->makeGivingContext(Lgnu/expr/ScopeExp;)Lgnu/expr/ThisExp;

    move-result-object v15

    const/4 v14, 0x2

    aput-object v15, v12, v14

    .line 104
    new-instance v15, Lgnu/expr/ApplyExp;

    iget-boolean v14, v0, Lkawa/standard/define_syntax;->hygienic:Z

    if-eqz v14, :cond_6

    sget-object v14, Lkawa/standard/define_syntax;->makeHygienic:Lgnu/expr/PrimProcedure;

    goto :goto_3

    :cond_6
    sget-object v14, Lkawa/standard/define_syntax;->makeNonHygienic:Lgnu/expr/PrimProcedure;

    :goto_3
    invoke-direct {v15, v14, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v11, v15

    .line 106
    invoke-virtual {v8, v11}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 107
    invoke-virtual {v8, v13}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 109
    iget-object v14, v8, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v14, v14, Lgnu/expr/ModuleExp;

    if-eqz v14, :cond_8

    .line 111
    new-instance v14, Lgnu/expr/SetExp;

    invoke-direct {v14, v8, v11}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 112
    .local v14, "result":Lgnu/expr/SetExp;
    invoke-virtual {v14, v13}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v15

    invoke-virtual {v15}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 114
    invoke-virtual {v14, v13}, Lgnu/expr/SetExp;->setFuncDef(Z)V

    .line 116
    :cond_7
    iget-object v15, v2, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v15, v14}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 118
    iget-boolean v15, v2, Lkawa/lang/Translator;->immediate:Z

    if-eqz v15, :cond_8

    .line 120
    const/4 v15, 0x2

    new-array v12, v15, [Lgnu/expr/Expression;

    .line 121
    new-instance v15, Lgnu/expr/ReferenceExp;

    invoke-direct {v15, v8}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/16 v16, 0x0

    aput-object v15, v12, v16

    .line 122
    new-instance v15, Lgnu/expr/QuoteExp;

    invoke-direct {v15, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v15, v12, v13

    .line 123
    iget-object v13, v2, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    new-instance v15, Lgnu/expr/ApplyExp;

    sget-object v0, Lkawa/standard/define_syntax;->setCapturedScope:Lgnu/expr/PrimProcedure;

    invoke-direct {v15, v0, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {v13, v15}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 126
    .end local v14    # "result":Lgnu/expr/SetExp;
    :cond_8
    return-void

    .line 82
    .end local v8    # "decl":Lgnu/expr/Declaration;
    .end local v9    # "savedMacro":Lkawa/lang/Macro;
    .end local v10    # "macro":Lkawa/lang/Macro;
    .end local v11    # "rule":Lgnu/expr/Expression;
    .end local v12    # "args":[Lgnu/expr/Expression;
    :cond_9
    :goto_4
    iget-object v0, v2, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid syntax for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lkawa/standard/define_syntax;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Stack;->addElement(Ljava/lang/Object;)V

    .line 83
    return-void
.end method
