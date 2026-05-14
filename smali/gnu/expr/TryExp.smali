.class public Lgnu/expr/TryExp;
.super Lgnu/expr/Expression;
.source "TryExp.java"


# instance fields
.field catch_clauses:Lgnu/expr/CatchClause;

.field finally_clause:Lgnu/expr/Expression;

.field try_clause:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .locals 0
    .param p1, "try_clause"    # Lgnu/expr/Expression;
    .param p2, "finally_clause"    # Lgnu/expr/Expression;

    .line 26
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 27
    iput-object p1, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    .line 28
    iput-object p2, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    .line 29
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 5
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    :try_start_0
    iget-object v0, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 38
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v0, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    .line 61
    :cond_0
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 42
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .local v1, "clause":Lgnu/expr/CatchClause;
    :goto_0
    if-eqz v1, :cond_3

    .line 45
    invoke-virtual {v1}, Lgnu/expr/CatchClause;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    .line 46
    .local v2, "decl":Lgnu/expr/Declaration;
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getTypeExp()Lgnu/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    .line 47
    .local v3, "typeVal":Lgnu/bytecode/ClassType;
    invoke-virtual {v3, v0}, Lgnu/bytecode/ClassType;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    iput-object v0, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 50
    invoke-virtual {v1, p1}, Lgnu/expr/CatchClause;->apply(Lgnu/mapping/CallContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v4, :cond_1

    .line 59
    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    invoke-virtual {v4, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    :cond_1
    return-void

    .line 43
    .end local v2    # "decl":Lgnu/expr/Declaration;
    .end local v3    # "typeVal":Lgnu/bytecode/ClassType;
    :cond_2
    :try_start_2
    iget-object v2, v1, Lgnu/expr/CatchClause;->next:Lgnu/expr/CatchClause;

    move-object v1, v2

    goto :goto_0

    .line 54
    .end local v1    # "clause":Lgnu/expr/CatchClause;
    :cond_3
    nop

    .end local p1    # "ctx":Lgnu/mapping/CallContext;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local p1    # "ctx":Lgnu/mapping/CallContext;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v1, :cond_4

    .line 59
    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    :cond_4
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 6
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 65
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 66
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 68
    .local v1, "has_finally":Z
    :goto_0
    instance-of v2, p2, Lgnu/expr/StackTarget;

    if-nez v2, :cond_2

    instance-of v2, p2, Lgnu/expr/ConsumerTarget;

    if-nez v2, :cond_2

    instance-of v2, p2, Lgnu/expr/IgnoreTarget;

    if-nez v2, :cond_2

    instance-of v2, p2, Lgnu/expr/ConditionalTarget;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-nez v2, :cond_1

    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-static {v2}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v2

    .local v2, "ttarg":Lgnu/expr/Target;
    goto :goto_2

    .line 71
    .end local v2    # "ttarg":Lgnu/expr/Target;
    :cond_2
    :goto_1
    move-object v2, p2

    .line 74
    .restart local v2    # "ttarg":Lgnu/expr/Target;
    :goto_2
    instance-of v3, v2, Lgnu/expr/StackTarget;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 76
    iget-object v3, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v3, p1, v2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 77
    iget-object v3, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .line 78
    .local v3, "catch_clause":Lgnu/expr/CatchClause;
    :goto_4
    if-eqz v3, :cond_4

    .line 80
    invoke-virtual {v3, p1, v2}, Lgnu/expr/CatchClause;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 78
    invoke-virtual {v3}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v3

    goto :goto_4

    .line 83
    :cond_4
    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v4, :cond_5

    .line 85
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitFinallyStart()V

    .line 86
    iget-object v4, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    sget-object v5, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v4, p1, v5}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 87
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitFinallyEnd()V

    .line 89
    :cond_5
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 90
    if-eq v2, p2, :cond_6

    .line 91
    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {p2, p1, v4}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 92
    :cond_6
    return-void
.end method

.method public final getCatchClauses()Lgnu/expr/CatchClause;
    .locals 1

    .line 18
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    return-object v0
.end method

.method public final getFinallyClause()Lgnu/expr/Expression;
    .locals 1

    .line 19
    iget-object v0, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .line 115
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    invoke-super {p0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method protected mustCompile()Z
    .locals 1

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 3
    .param p1, "ps"    # Lgnu/mapping/OutPort;

    .line 123
    const/4 v0, 0x2

    const-string v1, "(Try"

    const-string v2, ")"

    invoke-virtual {p1, v1, v2, v0}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 125
    iget-object v0, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 126
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .line 127
    .local v0, "catch_clause":Lgnu/expr/CatchClause;
    :goto_0
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Lgnu/expr/CatchClause;->print(Lgnu/mapping/OutPort;)V

    .line 127
    invoke-virtual {v0}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 134
    const-string v1, " finally: "

    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 137
    :cond_1
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public final setCatchClauses(Lgnu/expr/CatchClause;)V
    .locals 0
    .param p1, "catch_clauses"    # Lgnu/expr/CatchClause;

    .line 22
    iput-object p1, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .line 23
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

    .line 96
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)V"
        }
    .end annotation

    .line 101
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    .line 102
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .line 103
    .local v0, "catch_clause":Lgnu/expr/CatchClause;
    :goto_0
    iget-object v1, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {v0}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v1, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    invoke-virtual {p1, v1, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    .line 111
    :cond_1
    return-void
.end method
