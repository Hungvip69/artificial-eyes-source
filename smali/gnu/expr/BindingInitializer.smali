.class public Lgnu/expr/BindingInitializer;
.super Lgnu/expr/Initializer;
.source "BindingInitializer.java"


# static fields
.field static final typeThreadLocation:Lgnu/bytecode/ClassType;


# instance fields
.field decl:Lgnu/expr/Declaration;

.field value:Lgnu/expr/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    const-string v0, "gnu.mapping.ThreadLocation"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/expr/BindingInitializer;->typeThreadLocation:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V
    .locals 1
    .param p1, "decl"    # Lgnu/expr/Declaration;
    .param p2, "value"    # Lgnu/expr/Expression;

    .line 30
    invoke-direct {p0}, Lgnu/expr/Initializer;-><init>()V

    .line 31
    iput-object p1, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    .line 32
    iput-object p2, p0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    .line 33
    iget-object v0, p1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    iput-object v0, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    .line 34
    return-void
.end method

.method public static create(Lgnu/expr/Declaration;Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 2
    .param p0, "decl"    # Lgnu/expr/Declaration;
    .param p1, "value"    # Lgnu/expr/Expression;
    .param p2, "comp"    # Lgnu/expr/Compilation;

    .line 16
    new-instance v0, Lgnu/expr/BindingInitializer;

    invoke-direct {v0, p0, p1}, Lgnu/expr/BindingInitializer;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 17
    .local v0, "init":Lgnu/expr/BindingInitializer;
    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    :goto_0
    iget-object v1, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    iput-object v1, v0, Lgnu/expr/BindingInitializer;->next:Lgnu/expr/Initializer;

    .line 20
    iput-object v0, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    goto :goto_1

    .line 24
    :cond_1
    iget-object v1, p2, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iget-object v1, v1, Lgnu/expr/ModuleExp;->initChain:Lgnu/expr/Initializer;

    iput-object v1, v0, Lgnu/expr/BindingInitializer;->next:Lgnu/expr/Initializer;

    .line 25
    iget-object v1, p2, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    iput-object v0, v1, Lgnu/expr/ModuleExp;->initChain:Lgnu/expr/Initializer;

    .line 27
    :goto_1
    return-void
.end method

.method public static makeLocationMethod(Ljava/lang/Object;)Lgnu/bytecode/Method;
    .locals 3
    .param p0, "name"    # Ljava/lang/Object;

    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/bytecode/Type;

    .line 130
    .local v0, "atypes":[Lgnu/bytecode/Type;
    instance-of v1, p0, Lgnu/mapping/Symbol;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 131
    sget-object v1, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v2

    goto :goto_0

    .line 133
    :cond_0
    sget-object v1, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v2

    .line 134
    :goto_0
    sget-object v1, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string v2, "make"

    invoke-virtual {v1, v2, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public emit(Lgnu/expr/Compilation;)V
    .locals 10
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 38
    iget-object v0, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v0, p1, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 42
    :cond_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 46
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    iget-object v1, p0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    instance-of v1, v1, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_2

    .line 48
    iget-object v1, p0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    check-cast v1, Lgnu/expr/QuoteExp;

    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 49
    .local v1, "val":Ljava/lang/Object;
    if-eqz v1, :cond_2

    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_2

    .line 51
    iget-object v2, p1, Lgnu/expr/Compilation;->litTable:Lgnu/expr/LitTable;

    invoke-virtual {v2, v1}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v2

    .line 52
    .local v2, "lit":Lgnu/expr/Literal;
    iget-object v3, v2, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    iget-object v4, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    if-ne v3, v4, :cond_2

    .line 53
    return-void

    .line 57
    .end local v1    # "val":Ljava/lang/Object;
    .end local v2    # "lit":Lgnu/expr/Literal;
    :cond_2
    iget-object v1, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getLineNumber()I

    move-result v1

    .line 58
    .local v1, "line":I
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    .line 59
    .local v2, "messages":Lgnu/text/SourceMessages;
    iget-object v3, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v2, v3}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    move-result-object v3

    .line 60
    .local v3, "saveLoc":Lgnu/text/SourceLocator;
    if-lez v1, :cond_3

    .line 61
    iget-object v4, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 62
    :cond_3
    iget-object v4, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v4

    if-nez v4, :cond_4

    .line 63
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 65
    :cond_4
    iget-object v4, p0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    if-nez v4, :cond_b

    .line 67
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v4

    .line 68
    .local v4, "func":Z
    if-eqz v4, :cond_5

    iget-object v5, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v5}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    .line 71
    .local v5, "property":Ljava/lang/Object;
    :goto_0
    iget-object v6, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v6}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    .line 73
    .local v6, "name":Ljava/lang/Object;
    iget-object v7, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    const-wide/32 v8, 0x10010000

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 75
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 76
    sget-object v7, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v6

    .line 77
    :cond_6
    sget-object v7, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v6, v7}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 78
    if-nez v5, :cond_7

    .line 79
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    goto :goto_1

    .line 81
    :cond_7
    sget-object v7, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v5, v7}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 82
    :goto_1
    sget-object v7, Lgnu/expr/BindingInitializer;->typeThreadLocation:Lgnu/bytecode/ClassType;

    const-string v8, "getInstance"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_3

    .line 84
    :cond_8
    iget-object v7, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 89
    const/4 v7, 0x1

    new-array v7, v7, [Lgnu/bytecode/Type;

    .line 90
    .local v7, "atypes":[Lgnu/bytecode/Type;
    instance-of v8, v6, Lgnu/mapping/Symbol;

    if-eqz v8, :cond_9

    sget-object v8, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    goto :goto_2

    :cond_9
    sget-object v8, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    :goto_2
    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 92
    sget-object v8, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v6, v8}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 93
    sget-object v8, Lgnu/expr/BindingInitializer;->typeThreadLocation:Lgnu/bytecode/ClassType;

    const-string v9, "makeAnonymous"

    invoke-virtual {v8, v9, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v8

    .line 95
    .local v8, "m":Lgnu/bytecode/Method;
    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 96
    .end local v7    # "atypes":[Lgnu/bytecode/Type;
    .end local v8    # "m":Lgnu/bytecode/Method;
    goto :goto_3

    .line 99
    :cond_a
    sget-object v7, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v6, v7}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 100
    invoke-static {v6}, Lgnu/expr/BindingInitializer;->makeLocationMethod(Ljava/lang/Object;)Lgnu/bytecode/Method;

    move-result-object v7

    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 102
    .end local v4    # "func":Z
    .end local v5    # "property":Ljava/lang/Object;
    .end local v6    # "name":Ljava/lang/Object;
    :goto_3
    goto :goto_5

    .line 105
    :cond_b
    iget-object v4, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    if-nez v4, :cond_c

    iget-object v4, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    goto :goto_4

    :cond_c
    iget-object v4, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 106
    .local v4, "type":Lgnu/bytecode/Type;
    :goto_4
    iget-object v5, p0, Lgnu/expr/BindingInitializer;->value:Lgnu/expr/Expression;

    invoke-static {v4}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 110
    .end local v4    # "type":Lgnu/bytecode/Type;
    :goto_5
    iget-object v4, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    if-nez v4, :cond_e

    .line 112
    iget-object v4, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v4

    .line 113
    .local v4, "var":Lgnu/bytecode/Variable;
    if-nez v4, :cond_d

    .line 114
    iget-object v5, p0, Lgnu/expr/BindingInitializer;->decl:Lgnu/expr/Declaration;

    invoke-virtual {v5, v0}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v4

    .line 115
    :cond_d
    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 116
    .end local v4    # "var":Lgnu/bytecode/Variable;
    goto :goto_6

    .line 117
    :cond_e
    iget-object v4, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 118
    iget-object v4, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    goto :goto_6

    .line 120
    :cond_f
    iget-object v4, p0, Lgnu/expr/BindingInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 121
    :goto_6
    invoke-virtual {v2, v3}, Lgnu/text/SourceMessages;->swapSourceLocator(Lgnu/text/SourceLocator;)Lgnu/text/SourceLocator;

    .line 122
    return-void
.end method
