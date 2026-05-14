.class public Lgnu/kawa/functions/IsEq;
.super Lgnu/mapping/Procedure2;
.source "IsEq.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Lgnu/expr/Language;
    .param p2, "name"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 15
    iput-object p1, p0, Lgnu/kawa/functions/IsEq;->language:Lgnu/expr/Language;

    .line 16
    invoke-virtual {p0, p2}, Lgnu/kawa/functions/IsEq;->setName(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static compile([Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Language;)V
    .locals 5
    .param p0, "args"    # [Lgnu/expr/Expression;
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;
    .param p3, "language"    # Lgnu/expr/Language;

    .line 37
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 38
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    const/4 v1, 0x0

    aget-object v2, p0, v1

    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v2, p1, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 39
    const/4 v2, 0x1

    aget-object v3, p0, v2

    sget-object v4, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v3, p1, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 40
    instance-of v3, p2, Lgnu/expr/ConditionalTarget;

    if-eqz v3, :cond_1

    .line 42
    move-object v1, p2

    check-cast v1, Lgnu/expr/ConditionalTarget;

    .line 43
    .local v1, "ctarget":Lgnu/expr/ConditionalTarget;
    iget-boolean v2, v1, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, v1, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitGotoIfNE(Lgnu/bytecode/Label;)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v2, v1, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitGotoIfEq(Lgnu/bytecode/Label;)V

    .line 47
    :goto_0
    invoke-virtual {v1, v0}, Lgnu/expr/ConditionalTarget;->emitGotoFirstBranch(Lgnu/bytecode/CodeAttr;)V

    .line 48
    .end local v1    # "ctarget":Lgnu/expr/ConditionalTarget;
    goto :goto_3

    .line 52
    :cond_1
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfEq()V

    .line 53
    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    instance-of v3, v3, Lgnu/bytecode/ClassType;

    if-eqz v3, :cond_3

    .line 55
    invoke-virtual {p3, v2}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    .line 56
    .local v2, "trueValue":Ljava/lang/Object;
    invoke-virtual {p3, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, "falseValue":Ljava/lang/Object;
    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v2, v3}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 58
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 59
    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v1, v3}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 60
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 61
    sget-object v3, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    .local v3, "type":Lgnu/bytecode/Type;
    goto :goto_1

    .line 63
    .end local v3    # "type":Lgnu/bytecode/Type;
    :cond_2
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 64
    .end local v1    # "falseValue":Ljava/lang/Object;
    .end local v2    # "trueValue":Ljava/lang/Object;
    .restart local v3    # "type":Lgnu/bytecode/Type;
    :goto_1
    goto :goto_2

    .line 67
    .end local v3    # "type":Lgnu/bytecode/Type;
    :cond_3
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 68
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 69
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 70
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p3, v1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    .line 72
    .restart local v3    # "type":Lgnu/bytecode/Type;
    :goto_2
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 73
    invoke-virtual {p2, p1, v3}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 75
    .end local v3    # "type":Lgnu/bytecode/Type;
    :goto_3
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 21
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lgnu/kawa/functions/IsEq;->language:Lgnu/expr/Language;

    if-ne p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 2
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 31
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/functions/IsEq;->language:Lgnu/expr/Language;

    invoke-static {v0, p2, p3, v1}, Lgnu/kawa/functions/IsEq;->compile([Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Language;)V

    .line 32
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 2
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 79
    iget-object v0, p0, Lgnu/kawa/functions/IsEq;->language:Lgnu/expr/Language;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method
