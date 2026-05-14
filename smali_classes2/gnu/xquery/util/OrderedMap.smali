.class public Lgnu/xquery/util/OrderedMap;
.super Lgnu/mapping/MethodProc;
.source "OrderedMap.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final orderedMap:Lgnu/xquery/util/OrderedMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lgnu/xquery/util/OrderedMap;

    invoke-direct {v0}, Lgnu/xquery/util/OrderedMap;-><init>()V

    sput-object v0, Lgnu/xquery/util/OrderedMap;->orderedMap:Lgnu/xquery/util/OrderedMap;

    .line 40
    sget-object v0, Lgnu/xquery/util/OrderedMap;->orderedMap:Lgnu/xquery/util/OrderedMap;

    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v2, "gnu.xquery.util.CompileMisc:validateApplyOrderedMap"

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/util/OrderedMap;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static makeTuple$V([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .param p0, "values"    # [Ljava/lang/Object;

    .line 46
    return-object p0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 7
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 54
    .local v2, "values":Ljava/lang/Object;
    array-length v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 56
    aget-object v1, v0, v4

    check-cast v1, Lgnu/xquery/util/OrderedTuples;

    .local v1, "tuples":Lgnu/xquery/util/OrderedTuples;
    goto :goto_0

    .line 60
    .end local v1    # "tuples":Lgnu/xquery/util/OrderedTuples;
    :cond_0
    array-length v3, v0

    sub-int/2addr v3, v5

    new-array v3, v3, [Ljava/lang/Object;

    .line 61
    .local v3, "comps":[Ljava/lang/Object;
    array-length v6, v3

    invoke-static {v0, v5, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    aget-object v1, v0, v4

    check-cast v1, Lgnu/mapping/Procedure;

    invoke-static {v1, v3}, Lgnu/xquery/util/OrderedTuples;->make$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Lgnu/xquery/util/OrderedTuples;

    move-result-object v1

    .line 64
    .end local v3    # "comps":[Ljava/lang/Object;
    .restart local v1    # "tuples":Lgnu/xquery/util/OrderedTuples;
    :goto_0
    invoke-static {v2, v1}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 65
    invoke-virtual {v1, p1}, Lgnu/xquery/util/OrderedTuples;->run$X(Lgnu/mapping/CallContext;)V

    .line 66
    return-void
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 70
    invoke-static {p1, p2, p3, p0}, Lgnu/xquery/util/CompileMisc;->compileOrderedMap(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/mapping/Procedure;)V

    .line 71
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 75
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method
