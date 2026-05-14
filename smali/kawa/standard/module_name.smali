.class public Lkawa/standard/module_name;
.super Lkawa/lang/Syntax;
.source "module_name.java"


# static fields
.field public static final module_name:Lkawa/standard/module_name;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lkawa/standard/module_name;

    invoke-direct {v0}, Lkawa/standard/module_name;-><init>()V

    sput-object v0, Lkawa/standard/module_name;->module_name:Lkawa/standard/module_name;

    .line 10
    sget-object v0, Lkawa/standard/module_name;->module_name:Lkawa/standard/module_name;

    const-string v1, "module-name"

    invoke-virtual {v0, v1}, Lkawa/standard/module_name;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 15
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "defs"    # Lgnu/expr/ScopeExp;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 14
    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 15
    .local v1, "form_cdr":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 16
    .local v2, "nameSyntax":Lkawa/lang/SyntaxForm;
    :goto_0
    instance-of v3, v1, Lkawa/lang/SyntaxForm;

    if-eqz v3, :cond_0

    .line 18
    move-object v2, v1

    check-cast v2, Lkawa/lang/SyntaxForm;

    .line 19
    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 21
    :cond_0
    instance-of v3, v1, Lgnu/lists/Pair;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Lgnu/lists/Pair;

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 22
    .local v3, "arg":Ljava/lang/Object;
    :goto_1
    instance-of v4, v3, Lkawa/lang/SyntaxForm;

    if-eqz v4, :cond_2

    .line 24
    move-object v2, v3

    check-cast v2, Lkawa/lang/SyntaxForm;

    .line 25
    invoke-interface {v2}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 27
    :cond_2
    const/4 v4, 0x0

    .line 29
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 30
    .local v5, "err":Ljava/lang/String;
    const/4 v6, 0x0

    .line 31
    .local v6, "decl":Lgnu/expr/Declaration;
    instance-of v7, v3, Lgnu/lists/Pair;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_5

    move-object v7, v3

    check-cast v7, Lgnu/lists/Pair;

    move-object v10, v7

    .local v10, "p":Lgnu/lists/Pair;
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    const-string v11, "quote"

    if-ne v7, v11, :cond_5

    .line 33
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 34
    instance-of v7, v3, Lgnu/lists/Pair;

    if-eqz v7, :cond_4

    move-object v7, v3

    check-cast v7, Lgnu/lists/Pair;

    move-object v10, v7

    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v7, v11, :cond_4

    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-nez v7, :cond_3

    goto :goto_2

    .line 39
    :cond_3
    invoke-virtual {v10}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Ljava/lang/String;

    move-object/from16 v10, p2

    goto :goto_4

    .line 37
    :cond_4
    :goto_2
    const-string v5, "invalid quoted symbol for \'module-name\'"

    move-object/from16 v10, p2

    goto :goto_4

    .line 41
    .end local v10    # "p":Lgnu/lists/Pair;
    :cond_5
    instance-of v7, v3, Lgnu/lists/FString;

    if-nez v7, :cond_9

    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_6

    move-object/from16 v10, p2

    goto :goto_3

    .line 43
    :cond_6
    instance-of v7, v3, Lgnu/mapping/Symbol;

    if-eqz v7, :cond_8

    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    .line 47
    .local v7, "len":I
    const/4 v10, 0x2

    if-le v7, v10, :cond_7

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3c

    if-ne v10, v11, :cond_7

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3e

    if-ne v10, v11, :cond_7

    .line 51
    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 53
    :cond_7
    move-object/from16 v10, p2

    invoke-virtual {v0, v3, v2, v10}, Lkawa/lang/Translator;->define(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lgnu/expr/ScopeExp;)Lgnu/expr/Declaration;

    move-result-object v6

    .line 54
    .end local v7    # "len":I
    goto :goto_4

    .line 56
    :cond_8
    move-object/from16 v10, p2

    const-string v5, "un-implemented expression in module-name"

    goto :goto_4

    .line 41
    :cond_9
    move-object/from16 v10, p2

    .line 42
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    :goto_4
    if-eqz v5, :cond_a

    .line 58
    iget-object v7, v0, Lkawa/lang/Translator;->formStack:Ljava/util/Stack;

    invoke-virtual {v0, v5}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 61
    :cond_a
    const/16 v7, 0x2e

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 62
    .local v7, "index":I
    move-object v11, v4

    .line 63
    .local v11, "className":Ljava/lang/String;
    if-ltz v7, :cond_b

    .line 64
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v4, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    goto :goto_5

    .line 67
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 68
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 70
    :goto_5
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v8

    .line 71
    .local v8, "module":Lgnu/expr/ModuleExp;
    iget-object v12, v0, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    if-nez v12, :cond_c

    .line 72
    new-instance v12, Lgnu/bytecode/ClassType;

    invoke-direct {v12, v11}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    iput-object v12, v0, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    goto :goto_6

    .line 75
    :cond_c
    iget-object v12, v0, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v12}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v12

    .line 76
    .local v12, "oldName":Ljava/lang/String;
    if-nez v12, :cond_d

    .line 77
    iget-object v13, v0, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v13, v11}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    goto :goto_6

    .line 78
    :cond_d
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    .line 79
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "duplicate module-name: old name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 81
    .end local v12    # "oldName":Ljava/lang/String;
    :cond_e
    :goto_6
    iget-object v12, v0, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v8, v12}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 82
    invoke-virtual {v8, v4}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 84
    if-eqz v6, :cond_10

    .line 86
    new-instance v12, Lgnu/expr/QuoteExp;

    iget-object v13, v0, Lkawa/lang/Translator;->mainClass:Lgnu/bytecode/ClassType;

    sget-object v14, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    invoke-direct {v12, v13, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    invoke-virtual {v6, v12}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 87
    const-wide/32 v12, 0x1004000

    invoke-virtual {v6, v12, v13}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 88
    iget-object v12, v8, Lgnu/expr/ModuleExp;->outer:Lgnu/expr/ScopeExp;

    if-nez v12, :cond_f

    .line 89
    const-wide/16 v12, 0x800

    invoke-virtual {v6, v12, v13}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 90
    :cond_f
    invoke-virtual {v6, v9}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 91
    sget-object v9, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v6, v9}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 93
    :cond_10
    invoke-virtual/range {p3 .. p3}, Lkawa/lang/Translator;->mustCompileHere()V

    .line 95
    .end local v7    # "index":I
    .end local v8    # "module":Lgnu/expr/ModuleExp;
    .end local v11    # "className":Ljava/lang/String;
    :goto_7
    return-void
.end method
