.class public Lkawa/standard/define_class;
.super Lkawa/lang/Syntax;
.source "define_class.java"


# static fields
.field public static final define_class:Lkawa/standard/define_class;

.field public static final define_simple_class:Lkawa/standard/define_class;


# instance fields
.field isSimple:Z

.field objectSyntax:Lkawa/standard/object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lkawa/standard/define_class;

    const-string v1, "define-class"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkawa/standard/define_class;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/define_class;->define_class:Lkawa/standard/define_class;

    .line 11
    new-instance v0, Lkawa/standard/define_class;

    const-string v1, "define-simple-class"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkawa/standard/define_class;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lkawa/standard/define_class;->define_simple_class:Lkawa/standard/define_class;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isSimple"    # Z

    .line 25
    invoke-direct {p0, p1}, Lkawa/lang/Syntax;-><init>(Ljava/lang/Object;)V

    .line 26
    sget-object v0, Lkawa/standard/object;->objectSyntax:Lkawa/standard/object;

    iput-object v0, p0, Lkawa/standard/define_class;->objectSyntax:Lkawa/standard/object;

    .line 27
    iput-boolean p2, p0, Lkawa/standard/define_class;->isSimple:Z

    .line 28
    return-void
.end method

.method constructor <init>(Lkawa/standard/object;Z)V
    .locals 0
    .param p1, "objectSyntax"    # Lkawa/standard/object;
    .param p2, "isSimple"    # Z

    .line 18
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 19
    iput-object p1, p0, Lkawa/standard/define_class;->objectSyntax:Lkawa/standard/object;

    .line 20
    iput-boolean p2, p0, Lkawa/standard/define_class;->isSimple:Z

    .line 21
    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 5
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "decl":Lgnu/expr/Declaration;
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 101
    .local v1, "form_cdr":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/lists/Pair;

    if-eqz v2, :cond_1

    .line 103
    move-object p1, v1

    check-cast p1, Lgnu/lists/Pair;

    .line 104
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 105
    .local v2, "form_car":Ljava/lang/Object;
    instance-of v3, v2, Lgnu/expr/Declaration;

    if-nez v3, :cond_0

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkawa/standard/define_class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " can only be used in <body>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3

    .line 107
    :cond_0
    move-object v0, v2

    check-cast v0, Lgnu/expr/Declaration;

    .line 109
    .end local v2    # "form_car":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v2

    check-cast v2, Lgnu/expr/ClassExp;

    .line 110
    .local v2, "oexp":Lgnu/expr/ClassExp;
    iget-object v3, p0, Lkawa/standard/define_class;->objectSyntax:Lkawa/standard/object;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4, p2}, Lkawa/standard/object;->rewriteClassDef([Ljava/lang/Object;Lkawa/lang/Translator;)V

    .line 111
    new-instance v3, Lgnu/expr/SetExp;

    invoke-direct {v3, v0, v2}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 112
    .local v3, "sexp":Lgnu/expr/SetExp;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 113
    return-object v3
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 17
    .param p1, "st"    # Lgnu/lists/Pair;
    .param p2, "forms"    # Ljava/util/Vector;
    .param p3, "defs"    # Lgnu/expr/ScopeExp;
    .param p4, "tr"    # Lkawa/lang/Translator;

    .line 33
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 34
    .local v2, "st_cdr":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 35
    .local v3, "nameSyntax":Lkawa/lang/SyntaxForm;
    :goto_0
    instance-of v4, v2, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_0

    .line 37
    move-object v3, v2

    check-cast v3, Lkawa/lang/SyntaxForm;

    .line 38
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 40
    :cond_0
    instance-of v4, v2, Lgnu/lists/Pair;

    if-nez v4, :cond_1

    .line 41
    invoke-super/range {p0 .. p4}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v4

    return v4

    .line 42
    :cond_1
    move-object v4, v2

    check-cast v4, Lgnu/lists/Pair;

    .line 43
    .local v4, "p":Lgnu/lists/Pair;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    .line 44
    .local v5, "name":Ljava/lang/Object;
    :goto_1
    instance-of v6, v5, Lkawa/lang/SyntaxForm;

    if-eqz v6, :cond_2

    .line 46
    move-object v3, v5

    check-cast v3, Lkawa/lang/SyntaxForm;

    .line 47
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {v1, v5}, Lkawa/lang/Translator;->namespaceResolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 50
    instance-of v6, v5, Ljava/lang/String;

    const/16 v7, 0x65

    const/4 v8, 0x0

    if-nez v6, :cond_3

    instance-of v6, v5, Lgnu/mapping/Symbol;

    if-nez v6, :cond_3

    .line 52
    const-string v6, "missing class name"

    invoke-virtual {v1, v7, v6}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 53
    return v8

    .line 55
    :cond_3
    move-object/from16 v6, p3

    invoke-virtual {v1, v5, v3, v6}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v9

    .line 56
    .local v9, "decl":Lgnu/expr/Declaration;
    instance-of v10, v4, Lgnu/lists/PairWithPosition;

    if-eqz v10, :cond_4

    .line 57
    move-object v10, v4

    check-cast v10, Lgnu/lists/PairWithPosition;

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    .line 58
    :cond_4
    new-instance v10, Lgnu/expr/ClassExp;

    iget-boolean v11, v0, Lkawa/standard/define_class;->isSimple:Z

    invoke-direct {v10, v11}, Lgnu/expr/ClassExp;-><init>(Z)V

    .line 59
    .local v10, "oexp":Lgnu/expr/ClassExp;
    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 60
    const-wide/32 v11, 0x20004000

    invoke-virtual {v9, v11, v12}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 61
    iget-boolean v11, v0, Lkawa/standard/define_class;->isSimple:Z

    if-eqz v11, :cond_5

    sget-object v11, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    goto :goto_2

    :cond_5
    sget-object v11, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    :goto_2
    invoke-virtual {v9, v11}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 62
    invoke-virtual/range {p4 .. p4}, Lkawa/lang/Translator;->mustCompileHere()V

    .line 64
    instance-of v11, v5, Lgnu/mapping/Symbol;

    if-eqz v11, :cond_6

    move-object v11, v5

    check-cast v11, Lgnu/mapping/Symbol;

    invoke-virtual {v11}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 66
    .local v11, "cname":Ljava/lang/String;
    :goto_3
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    .line 67
    .local v12, "nlen":I
    const/4 v13, 0x2

    const/4 v14, 0x1

    if-le v12, v13, :cond_7

    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v15, 0x3c

    if-ne v13, v15, :cond_7

    add-int/lit8 v13, v12, -0x1

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v15, 0x3e

    if-ne v13, v15, :cond_7

    .line 68
    add-int/lit8 v13, v12, -0x1

    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 69
    :cond_7
    invoke-virtual {v10, v11}, Lgnu/expr/ClassExp;->setName(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v13

    .line 72
    .local v13, "members":Ljava/lang/Object;
    :goto_4
    instance-of v15, v13, Lkawa/lang/SyntaxForm;

    if-eqz v15, :cond_8

    .line 74
    move-object v3, v13

    check-cast v3, Lkawa/lang/SyntaxForm;

    .line 75
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v13

    goto :goto_4

    .line 77
    :cond_8
    instance-of v15, v13, Lgnu/lists/Pair;

    if-nez v15, :cond_9

    .line 79
    const-string v14, "missing class members"

    invoke-virtual {v1, v7, v14}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 80
    return v8

    .line 82
    :cond_9
    move-object v4, v13

    check-cast v4, Lgnu/lists/Pair;

    .line 83
    invoke-virtual/range {p4 .. p4}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v7

    .line 84
    .local v7, "save_scope":Lgnu/expr/ScopeExp;
    if-eqz v3, :cond_a

    .line 85
    invoke-interface {v3}, Lkawa/lang/SyntaxForm;->getScope()Lkawa/lang/TemplateScope;

    move-result-object v15

    invoke-virtual {v1, v15}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 86
    :cond_a
    iget-object v15, v0, Lkawa/standard/define_class;->objectSyntax:Lkawa/standard/object;

    invoke-virtual {v15, v4, v10, v1}, Lkawa/standard/object;->scanClassDef(Lgnu/lists/Pair;Lgnu/expr/ClassExp;Lkawa/lang/Translator;)[Ljava/lang/Object;

    move-result-object v15

    .line 87
    .local v15, "saved":[Ljava/lang/Object;
    if-eqz v3, :cond_b

    .line 88
    invoke-virtual {v1, v7}, Lkawa/lang/Translator;->setCurrentScope(Lgnu/expr/ScopeExp;)V

    .line 89
    :cond_b
    if-nez v15, :cond_c

    .line 90
    return v8

    .line 91
    :cond_c
    invoke-static {v4, v9, v15}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    move-object/from16 v14, p1

    invoke-static {v14, v0, v8}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    .line 92
    .end local p1    # "st":Lgnu/lists/Pair;
    .local v8, "st":Lgnu/lists/Pair;
    move-object/from16 v14, p2

    invoke-virtual {v14, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 93
    const/16 v16, 0x1

    return v16
.end method
