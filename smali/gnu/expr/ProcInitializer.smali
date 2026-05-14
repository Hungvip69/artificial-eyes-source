.class public Lgnu/expr/ProcInitializer;
.super Lgnu/expr/Initializer;
.source "ProcInitializer.java"


# instance fields
.field proc:Lgnu/expr/LambdaExp;


# direct methods
.method public constructor <init>(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V
    .locals 2
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "field"    # Lgnu/bytecode/Field;

    .line 10
    invoke-direct {p0}, Lgnu/expr/Initializer;-><init>()V

    .line 11
    iput-object p3, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    .line 12
    iput-object p1, p0, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    .line 13
    invoke-virtual {p3}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 15
    .local v0, "heapLambda":Lgnu/expr/LambdaExp;
    :goto_0
    instance-of v1, v0, Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lgnu/expr/Compilation;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    iget-object v1, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    iput-object v1, p0, Lgnu/expr/ProcInitializer;->next:Lgnu/expr/Initializer;

    .line 18
    iput-object p0, p2, Lgnu/expr/Compilation;->clinitChain:Lgnu/expr/Initializer;

    goto :goto_1

    .line 22
    :cond_1
    iget-object v1, v0, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    iput-object v1, p0, Lgnu/expr/ProcInitializer;->next:Lgnu/expr/Initializer;

    .line 23
    iput-object p0, v0, Lgnu/expr/LambdaExp;->initChain:Lgnu/expr/Initializer;

    .line 25
    :goto_1
    return-void
.end method

.method public static emitLoadModuleMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V
    .locals 16
    .param p0, "proc"    # Lgnu/expr/LambdaExp;
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 30
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    .line 31
    .local v2, "pdecl":Lgnu/expr/Declaration;
    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    .line 32
    .local v3, "pname":Ljava/lang/Object;
    :goto_0
    const/4 v4, 0x0

    .line 33
    .local v4, "oldproc":Lgnu/expr/ModuleMethod;
    iget-boolean v5, v1, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 37
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v5

    .line 38
    .local v5, "env":Lgnu/mapping/Environment;
    instance-of v6, v3, Lgnu/mapping/Symbol;

    if-eqz v6, :cond_1

    move-object v6, v3

    check-cast v6, Lgnu/mapping/Symbol;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {v7, v6}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v6

    .line 40
    .local v6, "sym":Lgnu/mapping/Symbol;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v7

    iget-object v8, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v7, v8}, Lgnu/expr/Language;->getEnvPropertyFor(Lgnu/expr/Declaration;)Ljava/lang/Object;

    move-result-object v7

    .line 41
    .local v7, "property":Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 42
    .local v8, "old":Ljava/lang/Object;
    instance-of v9, v8, Lgnu/expr/ModuleMethod;

    if-eqz v9, :cond_2

    .line 43
    move-object v4, v8

    check-cast v4, Lgnu/expr/ModuleMethod;

    .line 45
    .end local v5    # "env":Lgnu/mapping/Environment;
    .end local v6    # "sym":Lgnu/mapping/Symbol;
    .end local v7    # "property":Ljava/lang/Object;
    .end local v8    # "old":Ljava/lang/Object;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    .line 46
    .local v5, "code":Lgnu/bytecode/CodeAttr;
    sget-object v6, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 48
    .local v6, "procClass":Lgnu/bytecode/ClassType;
    const/4 v7, 0x1

    if-nez v4, :cond_3

    .line 50
    invoke-virtual {v5, v6}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 51
    invoke-virtual {v5, v7}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 52
    const-string v8, "<init>"

    .local v8, "initName":Ljava/lang/String;
    goto :goto_2

    .line 56
    .end local v8    # "initName":Ljava/lang/String;
    :cond_3
    invoke-static {v6}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 57
    const-string v8, "init"

    .line 59
    .restart local v8    # "initName":Ljava/lang/String;
    :goto_2
    const/4 v9, 0x4

    invoke-virtual {v6, v8, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v9

    .line 60
    .local v9, "initModuleMethod":Lgnu/bytecode/Method;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v10

    goto :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v10

    .line 62
    .local v10, "owning":Lgnu/expr/LambdaExp;
    :goto_3
    instance-of v11, v10, Lgnu/expr/ClassExp;

    if-eqz v11, :cond_5

    iget-object v11, v10, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    if-eqz v11, :cond_5

    .line 63
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v11

    invoke-virtual {v11, v7}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v11

    invoke-virtual {v5, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_6

    .line 64
    :cond_5
    instance-of v11, v10, Lgnu/expr/ModuleExp;

    if-eqz v11, :cond_9

    iget-object v11, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iget-object v12, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-ne v11, v12, :cond_6

    iget-object v11, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v11}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_5

    .line 70
    :cond_6
    iget-object v11, v1, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    if-nez v11, :cond_8

    .line 72
    iget-object v11, v5, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v11, v11, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    iget-object v12, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    const-string v13, "$instance"

    invoke-virtual {v11, v5, v12, v13}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v11

    iput-object v11, v1, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    .line 76
    iget-object v11, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iget-object v12, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eq v11, v12, :cond_7

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->isStatic()Z

    move-result v11

    if-nez v11, :cond_7

    .line 78
    iget-object v11, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v11}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 79
    iget-object v11, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v11}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 80
    iget-object v11, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iget-object v11, v11, Lgnu/bytecode/ClassType;->constructor:Lgnu/bytecode/Method;

    invoke-virtual {v5, v11}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 81
    iget-object v11, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    iget-object v12, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    const/4 v13, 0x0

    const-string v14, "$main"

    invoke-virtual {v11, v14, v12, v13}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v11

    iput-object v11, v1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    .line 83
    iget-object v11, v1, Lgnu/expr/Compilation;->moduleClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v11}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 84
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 85
    iget-object v11, v1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v5, v11}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto :goto_4

    .line 88
    :cond_7
    iget-object v11, v1, Lgnu/expr/Compilation;->moduleInstanceMainField:Lgnu/bytecode/Field;

    invoke-virtual {v5, v11}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 89
    :goto_4
    iget-object v11, v1, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    invoke-virtual {v5, v11}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 91
    :cond_8
    iget-object v11, v1, Lgnu/expr/Compilation;->moduleInstanceVar:Lgnu/bytecode/Variable;

    invoke-virtual {v5, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_6

    .line 67
    :cond_9
    :goto_5
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 93
    :goto_6
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->getSelectorValue(Lgnu/expr/Compilation;)I

    move-result v11

    invoke-virtual {v5, v11}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 94
    sget-object v11, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v1, v3, v11}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 97
    iget v11, v0, Lgnu/expr/LambdaExp;->min_args:I

    iget-object v12, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v12, :cond_a

    iget v12, v0, Lgnu/expr/LambdaExp;->max_args:I

    goto :goto_7

    :cond_a
    const/4 v12, -0x1

    :goto_7
    shl-int/lit8 v12, v12, 0xc

    or-int/2addr v11, v12

    invoke-virtual {v5, v11}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 99
    invoke-virtual {v5, v9}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 101
    iget-object v11, v0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    if-eqz v11, :cond_d

    .line 103
    iget-object v11, v0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    array-length v11, v11

    .line 104
    .local v11, "len":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8
    if-ge v12, v11, :cond_d

    .line 106
    iget-object v13, v0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    aget-object v13, v13, v12

    .line 108
    .local v13, "key":Ljava/lang/Object;
    if-eqz v13, :cond_c

    sget-object v14, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    if-eq v13, v14, :cond_c

    .line 110
    iget-object v14, v0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    add-int/lit8 v15, v12, 0x1

    aget-object v14, v14, v15

    .line 111
    .local v14, "val":Ljava/lang/Object;
    invoke-virtual {v5, v7}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 112
    invoke-virtual {v1, v13}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 113
    sget-object v15, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    .line 114
    .local v15, "target":Lgnu/expr/Target;
    instance-of v7, v14, Lgnu/expr/Expression;

    if-eqz v7, :cond_b

    .line 115
    move-object v7, v14

    check-cast v7, Lgnu/expr/Expression;

    invoke-virtual {v7, v1, v15}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_9

    .line 117
    :cond_b
    invoke-virtual {v1, v14, v15}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 118
    :goto_9
    const-string v7, "gnu.mapping.PropertySet"

    invoke-static {v7}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v7

    const-string v0, "setProperty"

    const/4 v1, 0x2

    invoke-virtual {v7, v0, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 120
    .local v0, "m":Lgnu/bytecode/Method;
    invoke-virtual {v5, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 104
    .end local v0    # "m":Lgnu/bytecode/Method;
    .end local v13    # "key":Ljava/lang/Object;
    .end local v14    # "val":Ljava/lang/Object;
    .end local v15    # "target":Lgnu/expr/Target;
    :cond_c
    add-int/lit8 v12, v12, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_8

    .line 124
    .end local v11    # "len":I
    .end local v12    # "i":I
    :cond_d
    return-void
.end method


# virtual methods
.method public emit(Lgnu/expr/Compilation;)V
    .locals 2
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 128
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 129
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    iget-object v1, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 132
    :cond_0
    iget-object v1, p0, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    invoke-static {v1, p1}, Lgnu/expr/ProcInitializer;->emitLoadModuleMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 134
    iget-object v1, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v1, p0, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 138
    :goto_0
    return-void
.end method

.method public reportError(Ljava/lang/String;Lgnu/expr/Compilation;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "comp"    # Lgnu/expr/Compilation;

    .line 142
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "saveFile":Ljava/lang/String;
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v1

    .line 144
    .local v1, "saveLine":I
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v2

    .line 145
    .local v2, "saveColumn":I
    iget-object v3, p0, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    invoke-virtual {p2, v3}, Lgnu/expr/Compilation;->setLocation(Lgnu/text/SourceLocator;)V

    .line 146
    iget-object v3, p0, Lgnu/expr/ProcInitializer;->proc:Lgnu/expr/LambdaExp;

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 148
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    if-nez v3, :cond_0

    .line 149
    const-string v5, "unnamed procedure"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 152
    :cond_0
    const-string v5, "procedure "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :goto_0
    const/16 v5, 0x65

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 156
    invoke-virtual {p2, v0, v1, v2}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V

    .line 157
    return-void
.end method
