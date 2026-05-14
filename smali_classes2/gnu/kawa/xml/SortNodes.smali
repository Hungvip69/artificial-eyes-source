.class public Lgnu/kawa/xml/SortNodes;
.super Lgnu/mapping/Procedure1;
.source "SortNodes.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final canonicalizeMethod:Lgnu/bytecode/Method;

.field public static final makeSortedNodesMethod:Lgnu/bytecode/Method;

.field public static final sortNodes:Lgnu/kawa/xml/SortNodes;

.field public static final typeSortedNodes:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lgnu/kawa/xml/SortNodes;

    invoke-direct {v0}, Lgnu/kawa/xml/SortNodes;-><init>()V

    sput-object v0, Lgnu/kawa/xml/SortNodes;->sortNodes:Lgnu/kawa/xml/SortNodes;

    .line 53
    const-string v0, "gnu.kawa.xml.SortedNodes"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/SortNodes;->typeSortedNodes:Lgnu/bytecode/ClassType;

    .line 55
    sget-object v0, Lgnu/kawa/xml/SortNodes;->typeSortedNodes:Lgnu/bytecode/ClassType;

    const-string v1, "<init>"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/SortNodes;->makeSortedNodesMethod:Lgnu/bytecode/Method;

    .line 57
    sget-object v0, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v1, "canonicalize"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/SortNodes;->canonicalizeMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "values"    # Ljava/lang/Object;

    .line 18
    new-instance v0, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v0}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 19
    .local v0, "nodes":Lgnu/kawa/xml/SortedNodes;
    invoke-static {p1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 20
    iget v1, v0, Lgnu/kawa/xml/SortedNodes;->count:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 21
    return-object v0

    .line 22
    :cond_0
    iget v1, v0, Lgnu/kawa/xml/SortedNodes;->count:I

    if-nez v1, :cond_1

    .line 23
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v1

    .line 25
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/SortedNodes;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 30
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 31
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-boolean v1, p2, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v1, :cond_0

    goto :goto_2

    .line 36
    :cond_0
    instance-of v1, p3, Lgnu/expr/ConsumerTarget;

    if-nez v1, :cond_2

    instance-of v1, p3, Lgnu/expr/StackTarget;

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    sget-object v2, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    sget-object v1, Lgnu/kawa/xml/SortNodes;->canonicalizeMethod:Lgnu/bytecode/Method;

    .local v1, "resultMethod":Lgnu/bytecode/Method;
    goto :goto_1

    .line 39
    .end local v1    # "resultMethod":Lgnu/bytecode/Method;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 42
    .restart local v1    # "resultMethod":Lgnu/bytecode/Method;
    :goto_1
    const/4 v2, 0x0

    aget-object v2, v0, v2

    sget-object v3, Lgnu/kawa/xml/SortNodes;->makeSortedNodesMethod:Lgnu/bytecode/Method;

    invoke-static {v2, p2, p3, v3, v1}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V

    goto :goto_3

    .line 32
    .end local v1    # "resultMethod":Lgnu/bytecode/Method;
    :cond_3
    :goto_2
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 46
    :goto_3
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 50
    sget-object v0, Lgnu/expr/Compilation;->typeObject:Lgnu/bytecode/ClassType;

    return-object v0
.end method
