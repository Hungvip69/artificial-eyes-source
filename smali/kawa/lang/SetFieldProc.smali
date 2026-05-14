.class public Lkawa/lang/SetFieldProc;
.super Lgnu/mapping/Procedure2;
.source "SetFieldProc.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field ctype:Lgnu/bytecode/ClassType;

.field field:Lgnu/bytecode/Field;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctype"    # Lgnu/bytecode/ClassType;
    .param p2, "fname"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 20
    iput-object p1, p0, Lkawa/lang/SetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    .line 21
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v0

    invoke-static {v0, p2}, Lgnu/bytecode/Field;->searchField(Lgnu/bytecode/Field;Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    iput-object v0, p0, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    .line 22
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/bytecode/Type;I)V
    .locals 1
    .param p1, "ctype"    # Lgnu/bytecode/ClassType;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ftype"    # Lgnu/bytecode/Type;
    .param p4, "flags"    # I

    .line 25
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 26
    iput-object p1, p0, Lkawa/lang/SetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    .line 27
    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    iput-object v0, p0, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    .line 28
    iget-object v0, p0, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p1, p2, p3, p4}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v0

    iput-object v0, p0, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    .line 30
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1, "clas"    # Ljava/lang/Class;
    .param p2, "fname"    # Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-direct {p0, v0, p2}, Lkawa/lang/SetFieldProc;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 36
    :try_start_0
    iget-object v0, p0, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 37
    .local v0, "reflectField":Ljava/lang/reflect/Field;
    iget-object v1, p0, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1, p2}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object p2, v1

    .line 38
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "reflectField":Ljava/lang/reflect/Field;
    nop

    .line 50
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 47
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal access for field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 42
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lkawa/lang/SetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 55
    iget-object v0, p0, Lkawa/lang/SetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 56
    .local v0, "loader":Ljava/lang/ClassLoader;
    instance-of v1, v0, Lgnu/bytecode/ArrayClassLoader;

    if-eqz v1, :cond_0

    .line 58
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 59
    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 62
    .local v1, "args":[Lgnu/expr/Expression;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget-object v3, p0, Lkawa/lang/SetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, p2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 63
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iget-object v3, p0, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v3}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 64
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 65
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    iget-object v3, p0, Lkawa/lang/SetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 66
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {p2, v3, p3}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 67
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 71
    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    return-object v0
.end method
