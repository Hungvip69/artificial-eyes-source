.class public Lgnu/kawa/reflect/TypeSwitch;
.super Lgnu/mapping/MethodProc;
.source "TypeSwitch.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final typeSwitch:Lgnu/kawa/reflect/TypeSwitch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lgnu/kawa/reflect/TypeSwitch;

    const-string v1, "typeswitch"

    invoke-direct {v0, v1}, Lgnu/kawa/reflect/TypeSwitch;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/reflect/TypeSwitch;->typeSwitch:Lgnu/kawa/reflect/TypeSwitch;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lgnu/kawa/reflect/TypeSwitch;->setName(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.reflect.CompileReflect:validateApplyTypeSwitch"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/reflect/TypeSwitch;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 6
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 34
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 35
    .local v1, "selector":Ljava/lang/Object;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .line 36
    .local v2, "n":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 38
    aget-object v4, v0, v3

    check-cast v4, Lgnu/mapping/MethodProc;

    .line 39
    .local v4, "caseProc":Lgnu/mapping/MethodProc;
    invoke-virtual {v4, v1, p1}, Lgnu/mapping/MethodProc;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v5

    .line 40
    .local v5, "m":I
    if-ltz v5, :cond_0

    .line 41
    return-void

    .line 36
    .end local v4    # "caseProc":Lgnu/mapping/MethodProc;
    .end local v5    # "m":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    .end local v3    # "i":I
    :cond_1
    aget-object v3, v0, v2

    check-cast v3, Lgnu/mapping/Procedure;

    .line 44
    .local v3, "defaultProc":Lgnu/mapping/Procedure;
    invoke-virtual {v3, v1, p1}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 45
    return-void
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 9
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 49
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 51
    .local v0, "args":[Lgnu/expr/Expression;
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 52
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 53
    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v2

    .line 54
    .local v2, "selector":Lgnu/bytecode/Variable;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    sget-object v4, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v3, p2, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 55
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 57
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 59
    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 60
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 62
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-object v3, v0, v3

    .line 64
    .local v3, "arg":Lgnu/expr/Expression;
    instance-of v5, v3, Lgnu/expr/LambdaExp;

    if-eqz v5, :cond_5

    .line 66
    move-object v5, v3

    check-cast v5, Lgnu/expr/LambdaExp;

    .line 67
    .local v5, "lambda":Lgnu/expr/LambdaExp;
    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v6

    .line 68
    .local v6, "param":Lgnu/expr/Declaration;
    invoke-virtual {v6}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    .line 69
    .local v7, "type":Lgnu/bytecode/Type;
    invoke-virtual {v6}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v8

    if-nez v8, :cond_1

    .line 70
    const/4 v6, 0x0

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v6, v1}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    .line 74
    :goto_1
    instance-of v8, v7, Lgnu/expr/TypeValue;

    if-eqz v8, :cond_2

    .line 75
    move-object v8, v7

    check-cast v8, Lgnu/expr/TypeValue;

    invoke-interface {v8, v2, v6, p2}, Lgnu/expr/TypeValue;->emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    goto :goto_2

    .line 78
    :cond_2
    array-length v8, v0

    if-ge v4, v8, :cond_3

    .line 80
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 81
    invoke-virtual {v7, v1}, Lgnu/bytecode/Type;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 82
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 84
    :cond_3
    if-eqz v6, :cond_4

    .line 86
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 87
    invoke-virtual {v6, p2}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 90
    :cond_4
    :goto_2
    invoke-virtual {v5, p2}, Lgnu/expr/LambdaExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 91
    iget-object v8, v5, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v8, p2, p3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 92
    .end local v5    # "lambda":Lgnu/expr/LambdaExp;
    .end local v6    # "param":Lgnu/expr/Declaration;
    .end local v7    # "type":Lgnu/bytecode/Type;
    nop

    .line 97
    .end local v3    # "arg":Lgnu/expr/Expression;
    move v3, v4

    goto :goto_0

    .line 95
    .restart local v3    # "arg":Lgnu/expr/Expression;
    :cond_5
    new-instance v5, Ljava/lang/Error;

    const-string v6, "not implemented: typeswitch arg not LambdaExp"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 98
    .end local v3    # "arg":Lgnu/expr/Expression;
    .end local v4    # "i":I
    :cond_6
    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    .local v3, "i":I
    :goto_3
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_7

    .line 99
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto :goto_3

    .line 101
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 102
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 107
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public numArgs()I
    .locals 1

    .line 29
    const/16 v0, -0xffe

    return v0
.end method
