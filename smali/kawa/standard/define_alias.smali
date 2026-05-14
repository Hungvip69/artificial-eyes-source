.class public Lkawa/standard/define_alias;
.super Lkawa/lang/Syntax;
.source "define_alias.java"


# static fields
.field public static final define_alias:Lkawa/standard/define_alias;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lkawa/standard/define_alias;

    invoke-direct {v0}, Lkawa/standard/define_alias;-><init>()V

    sput-object v0, Lkawa/standard/define_alias;->define_alias:Lkawa/standard/define_alias;

    .line 11
    sget-object v0, Lkawa/standard/define_alias;->define_alias:Lkawa/standard/define_alias;

    const-string v1, "define-alias"

    invoke-virtual {v0, v1}, Lkawa/standard/define_alias;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 88
    const-string v0, "define-alias is only allowed in a <body>"

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 17
    .param p1, "st"    # Lgnu/lists/Pair;
    .param p2, "forms"    # Ljava/util/Vector;
    .param p3, "defs"    # Lgnu/expr/ScopeExp;
    .param p4, "tr"    # Lkawa/lang/Translator;

    .line 16
    move-object/from16 v0, p4

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 17
    .local v1, "formCdr":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 18
    .local v2, "formSyntax":Lkawa/lang/SyntaxForm;
    :goto_0
    instance-of v3, v1, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_0

    .line 20
    move-object v2, v1

    check-cast v2, Lkawa/lang/SyntaxForm;

    .line 21
    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 23
    :cond_0
    instance-of v3, v1, Lgnu/lists/Pair;

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    .line 25
    move-object v3, v1

    check-cast v3, Lgnu/lists/Pair;

    .line 26
    .local v3, "p":Lgnu/lists/Pair;
    move-object v5, v2

    .line 27
    .local v5, "nameSyntax":Lkawa/lang/SyntaxForm;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    .line 28
    .local v6, "name":Ljava/lang/Object;
    :goto_1
    instance-of v7, v6, Lkawa/lang/SyntaxForm;

    if-eqz v7, :cond_1

    .line 30
    move-object v5, v6

    check-cast v5, Lkawa/lang/SyntaxForm;

    .line 31
    invoke-interface {v5}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 34
    :goto_2
    instance-of v7, v1, Lkawa/lang/SyntaxForm;

    if-eqz v7, :cond_2

    .line 36
    move-object v2, v1

    check-cast v2, Lkawa/lang/SyntaxForm;

    .line 37
    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 39
    :cond_2
    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_4

    instance-of v7, v6, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v11, p2

    move-object/from16 v7, p3

    goto/16 :goto_7

    :cond_4
    :goto_3
    instance-of v7, v1, Lgnu/lists/Pair;

    if-eqz v7, :cond_9

    move-object v7, v1

    check-cast v7, Lgnu/lists/Pair;

    move-object v3, v7

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v7, v8, :cond_9

    .line 43
    move-object/from16 v7, p3

    invoke-virtual {v0, v6, v5, v7}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v8

    .line 44
    .local v8, "decl":Lgnu/expr/Declaration;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 45
    invoke-virtual {v8, v9}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 46
    invoke-virtual {v0, v3, v2}, Lkawa/lang/Translator;->rewrite_car(Lgnu/lists/Pair;Lkawa/lang/SyntaxForm;)Lgnu/expr/Expression;

    move-result-object v10

    .line 47
    .local v10, "arg":Lgnu/expr/Expression;
    instance-of v11, v10, Lgnu/expr/ReferenceExp;

    const-wide/16 v12, 0x4000

    if-eqz v11, :cond_7

    .line 49
    move-object v11, v10

    check-cast v11, Lgnu/expr/ReferenceExp;

    .line 50
    .local v11, "rarg":Lgnu/expr/ReferenceExp;
    invoke-virtual {v11}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v14

    invoke-static {v14}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v14

    .line 52
    .local v14, "d":Lgnu/expr/Declaration;
    if-eqz v14, :cond_6

    invoke-virtual {v14}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v15

    move-object/from16 v16, v15

    .local v16, "dval":Lgnu/expr/Expression;
    instance-of v15, v15, Lgnu/expr/ClassExp;

    if-nez v15, :cond_5

    move-object/from16 v15, v16

    .end local v16    # "dval":Lgnu/expr/Expression;
    .local v15, "dval":Lgnu/expr/Expression;
    instance-of v9, v15, Lgnu/expr/ModuleExp;

    if-eqz v9, :cond_6

    goto :goto_4

    .end local v15    # "dval":Lgnu/expr/Expression;
    .restart local v16    # "dval":Lgnu/expr/Expression;
    :cond_5
    move-object/from16 v15, v16

    .line 56
    .end local v16    # "dval":Lgnu/expr/Expression;
    .restart local v15    # "dval":Lgnu/expr/Expression;
    :goto_4
    invoke-virtual {v8, v4}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 57
    invoke-virtual {v8, v12, v13}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_5

    .line 60
    .end local v15    # "dval":Lgnu/expr/Expression;
    :cond_6
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 61
    .end local v11    # "rarg":Lgnu/expr/ReferenceExp;
    .end local v14    # "d":Lgnu/expr/Declaration;
    :goto_5
    goto :goto_6

    .line 62
    :cond_7
    instance-of v9, v10, Lgnu/expr/QuoteExp;

    if-eqz v9, :cond_8

    .line 64
    invoke-virtual {v8, v4}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 65
    invoke-virtual {v8, v12, v13}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_6

    .line 69
    :cond_8
    invoke-static {v10, v0}, Lkawa/standard/location;->rewrite(Lgnu/expr/Expression;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v10

    .line 70
    const-string v4, "gnu.mapping.Location"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    invoke-virtual {v8, v4}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 72
    :goto_6
    invoke-virtual/range {p4 .. p4}, Lkawa/lang/Translator;->mustCompileHere()V

    .line 73
    invoke-virtual {v0, v8}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 74
    new-instance v4, Lgnu/expr/SetExp;

    invoke-direct {v4, v8, v10}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 75
    .local v4, "sexp":Lgnu/expr/SetExp;
    invoke-virtual {v0, v4}, Lkawa/lang/Translator;->setLineOf(Lgnu/expr/Expression;)V

    .line 76
    invoke-virtual {v8, v10}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 77
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 78
    move-object/from16 v11, p2

    invoke-virtual {v11, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 79
    return v9

    .line 39
    .end local v4    # "sexp":Lgnu/expr/SetExp;
    .end local v8    # "decl":Lgnu/expr/Declaration;
    .end local v10    # "arg":Lgnu/expr/Expression;
    :cond_9
    move-object/from16 v11, p2

    move-object/from16 v7, p3

    goto :goto_7

    .line 23
    .end local v3    # "p":Lgnu/lists/Pair;
    .end local v5    # "nameSyntax":Lkawa/lang/SyntaxForm;
    .end local v6    # "name":Ljava/lang/Object;
    :cond_a
    move-object/from16 v11, p2

    move-object/from16 v7, p3

    .line 82
    :goto_7
    const/16 v3, 0x65

    const-string v5, "invalid syntax for define-alias"

    invoke-virtual {v0, v3, v5}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 83
    return v4
.end method
