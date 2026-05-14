.class public Lgnu/kawa/functions/MakeList;
.super Lgnu/mapping/ProcedureN;
.source "MakeList.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final list:Lgnu/kawa/functions/MakeList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lgnu/kawa/functions/MakeList;

    invoke-direct {v0}, Lgnu/kawa/functions/MakeList;-><init>()V

    sput-object v0, Lgnu/kawa/functions/MakeList;->list:Lgnu/kawa/functions/MakeList;

    .line 16
    sget-object v0, Lgnu/kawa/functions/MakeList;->list:Lgnu/kawa/functions/MakeList;

    const-string v1, "list"

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/MakeList;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static compile([Lgnu/expr/Expression;ILgnu/expr/Compilation;)V
    .locals 8
    .param p0, "args"    # [Lgnu/expr/Expression;
    .param p1, "offset"    # I
    .param p2, "comp"    # Lgnu/expr/Compilation;

    .line 41
    array-length v0, p0

    sub-int/2addr v0, p1

    .line 42
    .local v0, "len":I
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 43
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    if-nez v0, :cond_0

    .line 45
    new-instance v2, Lgnu/expr/QuoteExp;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v2, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v2, p2, v3}, Lgnu/expr/QuoteExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_3

    .line 47
    :cond_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-gt v0, v2, :cond_2

    .line 49
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 50
    add-int v4, p1, v2

    aget-object v4, p0, v4

    sget-object v5, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v4, p2, v5}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v2    # "i":I
    :cond_1
    sget-object v2, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    .line 53
    .local v2, "method":Lgnu/bytecode/Method;
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 54
    .end local v2    # "method":Lgnu/bytecode/Method;
    goto :goto_3

    .line 57
    :cond_2
    aget-object v4, p0, p1

    sget-object v5, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v4, p2, v5}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 58
    sget-object v4, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string v5, "list1"

    invoke-virtual {v4, v5, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v4

    .line 60
    .local v4, "method":Lgnu/bytecode/Method;
    invoke-virtual {v1, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 61
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 62
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v0, v0, -0x1

    .line 64
    :goto_1
    if-lt v0, v2, :cond_3

    .line 66
    aget-object v6, p0, p1

    sget-object v7, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, p2, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 67
    add-int/lit8 v6, p1, 0x1

    aget-object v6, p0, v6

    sget-object v7, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, p2, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 68
    add-int/lit8 v6, p1, 0x2

    aget-object v6, p0, v6

    sget-object v7, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, p2, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 69
    add-int/lit8 v6, p1, 0x3

    aget-object v6, p0, v6

    sget-object v7, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v6, p2, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 70
    add-int/lit8 v0, v0, -0x4

    add-int/lit8 p1, p1, 0x4

    .line 71
    sget-object v6, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string v7, "chain4"

    invoke-virtual {v6, v7, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v4

    .line 72
    invoke-virtual {v1, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 75
    :cond_3
    :goto_2
    if-lez v0, :cond_4

    .line 77
    aget-object v2, p0, p1

    sget-object v6, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v2, p2, v6}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 78
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, 0x1

    .line 79
    sget-object v2, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string v6, "chain1"

    invoke-virtual {v2, v6, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v4

    .line 80
    invoke-virtual {v1, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {v1, v5}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 84
    .end local v4    # "method":Lgnu/bytecode/Method;
    :goto_3
    return-void
.end method

.method public static list$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "args"    # [Ljava/lang/Object;

    .line 20
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 21
    .local v0, "result":Ljava/lang/Object;
    array-length v1, p0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 22
    new-instance v2, Lgnu/lists/Pair;

    aget-object v3, p0, v1

    invoke-direct {v2, v3, v0}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0

    .line 23
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .line 28
    invoke-static {p1}, Lgnu/kawa/functions/MakeList;->list$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 2
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 33
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 34
    .local v0, "args":[Lgnu/expr/Expression;
    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lgnu/kawa/functions/MakeList;->compile([Lgnu/expr/Expression;ILgnu/expr/Compilation;)V

    .line 35
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {p3, p2, v1}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 36
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 88
    array-length v0, p1

    if-lez v0, :cond_0

    sget-object v0, Lgnu/expr/Compilation;->typePair:Lgnu/bytecode/ClassType;

    goto :goto_0

    :cond_0
    sget-object v0, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    :goto_0
    return-object v0
.end method
