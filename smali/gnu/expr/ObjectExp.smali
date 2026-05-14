.class public Lgnu/expr/ObjectExp;
.super Lgnu/expr/ClassExp;
.source "ObjectExp.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgnu/expr/ClassExp;-><init>(Z)V

    .line 9
    return-void
.end method


# virtual methods
.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 5
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 20
    invoke-virtual {p0, p1}, Lgnu/expr/ObjectExp;->compileMembers(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    .line 21
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 22
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    iget-object v1, p0, Lgnu/expr/ObjectExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 23
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 24
    iget-object v1, p0, Lgnu/expr/ObjectExp;->type:Lgnu/bytecode/ClassType;

    invoke-static {v1, p0}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v1

    .line 25
    .local v1, "init":Lgnu/bytecode/Method;
    iget-object v2, p0, Lgnu/expr/ObjectExp;->closureEnvField:Lgnu/bytecode/Field;

    if-eqz v2, :cond_3

    .line 27
    invoke-virtual {p0}, Lgnu/expr/ObjectExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v2

    .line 28
    .local v2, "caller":Lgnu/expr/LambdaExp;
    sget v3, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lgnu/expr/ObjectExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v3

    iget-object v3, v3, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    goto :goto_0

    :cond_0
    iget-object v3, v2, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 31
    .local v3, "closureEnv":Lgnu/bytecode/Variable;
    :goto_0
    if-nez v3, :cond_2

    .line 32
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 36
    .end local v2    # "caller":Lgnu/expr/LambdaExp;
    .end local v3    # "closureEnv":Lgnu/bytecode/Variable;
    :cond_3
    :goto_1
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 38
    invoke-virtual {p0, p1}, Lgnu/expr/ObjectExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 39
    return-void
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .line 11
    iget-object v0, p0, Lgnu/expr/ObjectExp;->type:Lgnu/bytecode/ClassType;

    return-object v0
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

    .line 15
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitObjectExp(Lgnu/expr/ObjectExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
