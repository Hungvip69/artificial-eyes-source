.class Lgnu/kawa/functions/CompileTimeContinuation;
.super Lgnu/mapping/ProcedureN;
.source "CallCC.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field blockTarget:Lgnu/expr/Target;

.field exitableBlock:Lgnu/bytecode/ExitableBlock;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 102
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 103
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 104
    .local v1, "args":[Lgnu/expr/Expression;
    array-length v2, v1

    .line 105
    .local v2, "nargs":I
    iget-object v3, p0, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    instance-of v3, v3, Lgnu/expr/IgnoreTarget;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-object v3, p0, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    instance-of v3, v3, Lgnu/expr/ConsumerTarget;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 107
    .local v3, "noStack":Z
    :goto_1
    if-eqz v3, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p3}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 108
    .local v5, "typeNeeded":Lgnu/bytecode/Type;
    :goto_2
    if-nez v3, :cond_4

    if-ne v2, v4, :cond_3

    goto :goto_3

    .line 115
    :cond_3
    sget-object v4, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    .line 116
    .local v4, "app":Lgnu/kawa/functions/AppendValues;
    new-instance v6, Lgnu/expr/ApplyExp;

    invoke-direct {v6, v4, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    iget-object v7, p0, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    invoke-virtual {v4, v6, p2, v7}, Lgnu/kawa/functions/AppendValues;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_5

    .line 110
    .end local v4    # "app":Lgnu/kawa/functions/AppendValues;
    :cond_4
    :goto_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v2, :cond_5

    .line 111
    aget-object v6, v1, v4

    iget-object v7, p0, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    invoke-virtual {v6, p2, v7}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 118
    .end local v4    # "i":I
    :cond_5
    :goto_5
    iget-object v4, p0, Lgnu/kawa/functions/CompileTimeContinuation;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    invoke-virtual {v4}, Lgnu/bytecode/ExitableBlock;->exit()V

    .line 119
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 123
    sget-object v0, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    return-object v0
.end method
