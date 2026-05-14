.class public Lgnu/expr/SynchronizedExp;
.super Lgnu/expr/Expression;
.source "SynchronizedExp.java"


# instance fields
.field body:Lgnu/expr/Expression;

.field object:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .locals 0
    .param p1, "object"    # Lgnu/expr/Expression;
    .param p2, "body"    # Lgnu/expr/Expression;

    .line 11
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 12
    iput-object p1, p0, Lgnu/expr/SynchronizedExp;->object:Lgnu/expr/Expression;

    .line 13
    iput-object p2, p0, Lgnu/expr/SynchronizedExp;->body:Lgnu/expr/Expression;

    .line 14
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 3
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lgnu/expr/SynchronizedExp;->object:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    .local v0, "value":Ljava/lang/Object;
    monitor-enter v0

    .line 24
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lgnu/expr/SynchronizedExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v2, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .local v1, "result":Ljava/lang/Object;
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    invoke-virtual {p1, v1}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 27
    return-void

    .line 25
    .end local v1    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    .restart local v1    # "result":Ljava/lang/Object;
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_0
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 6
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 31
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 32
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    iget-object v1, p0, Lgnu/expr/SynchronizedExp;->object:Lgnu/expr/Expression;

    sget-object v2, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v1, p1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 33
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 34
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v1

    .line 35
    .local v1, "scope":Lgnu/bytecode/Scope;
    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v2

    .line 36
    .local v2, "objvar":Lgnu/bytecode/Variable;
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 37
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitMonitorEnter()V

    .line 38
    instance-of v4, p2, Lgnu/expr/IgnoreTarget;

    if-nez v4, :cond_1

    instance-of v4, p2, Lgnu/expr/ConsumerTarget;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, v3

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 43
    iget-object v4, p0, Lgnu/expr/SynchronizedExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v4, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 44
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 45
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitMonitorExit()V

    .line 46
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 47
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 48
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 49
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitMonitorExit()V

    .line 50
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 51
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 52
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 53
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 54
    return-void
.end method

.method protected mustCompile()Z
    .locals 1

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 1
    .param p1, "ps"    # Lgnu/mapping/OutPort;

    .line 70
    const-string v0, "(Synchronized "

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lgnu/expr/SynchronizedExp;->object:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 72
    const-string v0, " "

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lgnu/expr/SynchronizedExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 74
    const-string v0, ")"

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 75
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

    .line 58
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitSynchronizedExp(Lgnu/expr/SynchronizedExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 1
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

    .line 63
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Lgnu/expr/SynchronizedExp;->object:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/SynchronizedExp;->object:Lgnu/expr/Expression;

    .line 64
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lgnu/expr/SynchronizedExp;->body:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/SynchronizedExp;->body:Lgnu/expr/Expression;

    .line 66
    :cond_0
    return-void
.end method
