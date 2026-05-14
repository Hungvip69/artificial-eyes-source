.class public Lgnu/expr/FluidLetExp;
.super Lgnu/expr/LetExp;
.source "FluidLetExp.java"


# direct methods
.method public constructor <init>([Lgnu/expr/Expression;)V
    .locals 0
    .param p1, "i"    # [Lgnu/expr/Expression;

    .line 15
    invoke-direct {p0, p1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    return-void
.end method

.method private doInits(Lgnu/expr/Declaration;I[Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/bytecode/Variable;)V
    .locals 9
    .param p1, "decl"    # Lgnu/expr/Declaration;
    .param p2, "i"    # I
    .param p3, "save"    # [Lgnu/bytecode/Variable;
    .param p4, "comp"    # Lgnu/expr/Compilation;
    .param p5, "ctx"    # Lgnu/bytecode/Variable;

    .line 62
    iget-object v0, p0, Lgnu/expr/FluidLetExp;->inits:[Lgnu/expr/Expression;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    .line 63
    return-void

    .line 64
    :cond_0
    invoke-virtual {p4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 65
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v1

    aput-object v1, p3, p2

    .line 66
    invoke-virtual {p1, v0}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    .line 67
    iget-object v1, p1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    const/4 v2, 0x2

    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, p4, v3}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 69
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 70
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 71
    iget-object v1, p0, Lgnu/expr/FluidLetExp;->inits:[Lgnu/expr/Expression;

    aget-object v1, v1, p2

    sget-object v2, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v1, p4, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 72
    invoke-virtual {p1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    add-int/lit8 v5, p2, 0x1

    move-object v3, p0

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lgnu/expr/FluidLetExp;->doInits(Lgnu/expr/Declaration;I[Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/bytecode/Variable;)V

    .line 73
    sget-object v1, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string v2, "setWithSave"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 75
    aget-object v1, p3, p2

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 76
    return-void
.end method


# virtual methods
.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 17
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 21
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v9

    .line 22
    .local v9, "code":Lgnu/bytecode/CodeAttr;
    instance-of v0, v8, Lgnu/expr/IgnoreTarget;

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    move-object v0, v10

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/FluidLetExp;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    :goto_0
    move-object v11, v0

    .line 25
    .local v11, "result_type":Lgnu/bytecode/Type;
    if-nez v11, :cond_1

    .line 26
    sget-object v0, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    move-object v12, v0

    .local v0, "ttarg":Lgnu/expr/Target;
    goto :goto_1

    .line 27
    .end local v0    # "ttarg":Lgnu/expr/Target;
    :cond_1
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne v11, v0, :cond_2

    .line 28
    sget-object v0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object v12, v0

    .restart local v0    # "ttarg":Lgnu/expr/Target;
    goto :goto_1

    .line 30
    .end local v0    # "ttarg":Lgnu/expr/Target;
    :cond_2
    new-instance v0, Lgnu/expr/StackTarget;

    invoke-direct {v0, v11}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    move-object v12, v0

    .line 31
    .local v12, "ttarg":Lgnu/expr/Target;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/FluidLetExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v13

    .line 32
    .local v13, "scope":Lgnu/bytecode/Scope;
    invoke-virtual {v9, v13}, Lgnu/bytecode/CodeAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 33
    sget-object v0, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-virtual {v13, v9, v0, v10}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v14

    .line 34
    .local v14, "ctx":Lgnu/bytecode/Variable;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 35
    invoke-virtual {v9, v14}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 36
    iget-object v0, v6, Lgnu/expr/FluidLetExp;->inits:[Lgnu/expr/Expression;

    array-length v0, v0

    new-array v15, v0, [Lgnu/bytecode/Variable;

    .line 38
    .local v15, "save":[Lgnu/bytecode/Variable;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/FluidLetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v16

    .line 39
    .local v16, "decl":Lgnu/expr/Declaration;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v3, v15

    move-object/from16 v4, p1

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lgnu/expr/FluidLetExp;->doInits(Lgnu/expr/Declaration;I[Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/bytecode/Variable;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {v9, v0, v11}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 41
    iget-object v1, v6, Lgnu/expr/FluidLetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v1, v7, v12}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 42
    invoke-virtual {v9}, Lgnu/bytecode/CodeAttr;->emitFinallyStart()V

    .line 44
    const/4 v1, 0x0

    move-object/from16 v2, v16

    .end local v16    # "decl":Lgnu/expr/Declaration;
    .local v1, "i":I
    .local v2, "decl":Lgnu/expr/Declaration;
    :goto_2
    iget-object v3, v6, Lgnu/expr/FluidLetExp;->inits:[Lgnu/expr/Expression;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 46
    const/4 v3, 0x2

    sget-object v4, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v2, v10, v3, v7, v4}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 48
    aget-object v3, v15, v1

    invoke-virtual {v9, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 49
    sget-object v3, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string v4, "setRestore"

    invoke-virtual {v3, v4, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    invoke-virtual {v9, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 44
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v2

    goto :goto_2

    .line 53
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v9}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 54
    invoke-virtual {v6, v9}, Lgnu/expr/FluidLetExp;->popScope(Lgnu/bytecode/CodeAttr;)V

    .line 55
    if-eqz v11, :cond_4

    .line 56
    invoke-virtual {v8, v7, v11}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 57
    :cond_4
    return-void
.end method

.method protected mustCompile()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 2
    .param p1, "out"    # Lgnu/mapping/OutPort;

    .line 85
    const-string v0, "(FluidLet"

    const-string v1, ")"

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/FluidLetExp;->print(Lgnu/mapping/OutPort;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 80
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
