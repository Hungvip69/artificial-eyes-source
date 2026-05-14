.class public Lkawa/lib/thread;
.super Lgnu/expr/ModuleBody;
.source "thread.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nthread.scm\nScheme\n*S Scheme\n*F\n+ 1 thread.scm\n/u2/home/jis/ai2-kawa/kawa/lib/thread.scm\n*L\n1#1,19:1\n*E\n"
.end annotation


# static fields
.field public static final $Prvt$$Pcmake$Mnfuture:Lgnu/expr/ModuleMethod;

.field public static final $instance:Lkawa/lib/thread;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lkawa/lang/SyntaxRules;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field public static final future:Lkawa/lang/Macro;

.field public static final runnable:Lgnu/expr/ModuleMethod;

.field public static final sleep:Lgnu/expr/ModuleMethod;


# direct methods
.method public static $PcMakeFuture(Lgnu/mapping/Procedure;)Lgnu/mapping/Future;
    .locals 2
    .param p0, "p"    # Lgnu/mapping/Procedure;

    .line 13
    nop

    .line 14
    new-instance v0, Lgnu/mapping/Future;

    invoke-direct {v0, p0}, Lgnu/mapping/Future;-><init>(Lgnu/mapping/Procedure;)V

    const/4 v1, 0x0

    .line 15
    .local v0, "f":Lgnu/mapping/Future;
    invoke-virtual {v0}, Lgnu/mapping/Future;->start()V

    .line 16
    nop

    .end local v0    # "f":Lgnu/mapping/Future;
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "runnable"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/thread;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "%make-future"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/thread;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "future"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/thread;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    new-array v1, v2, [Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    const-string v5, "\u000c\u0018\u000c\u0007\u0008"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-direct {v6, v5, v7, v2}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v7, "lambda"

    invoke-direct {v5, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    const/4 v12, 0x2

    new-array v9, v12, [Ljava/lang/Object;

    sget-object v7, Lkawa/lib/thread;->Lit3:Lgnu/mapping/SimpleSymbol;

    aput-object v7, v9, v4

    aput-object v5, v9, v2

    const/4 v10, 0x0

    const-string v7, "\u0001"

    const-string v8, "\u0011\u0018\u0004\u0008\u0011\u0018\u000c\t\u0010\u0008\u0003"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v11, v1, v4

    invoke-direct {v0, v3, v1, v2}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lkawa/lib/thread;->Lit2:Lkawa/lang/SyntaxRules;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "sleep"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/thread;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lib/thread;

    invoke-direct {v0}, Lkawa/lib/thread;-><init>()V

    sput-object v0, Lkawa/lib/thread;->$instance:Lkawa/lib/thread;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/thread;->$instance:Lkawa/lib/thread;

    sget-object v3, Lkawa/lib/thread;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/thread;->sleep:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/thread;->Lit1:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lkawa/lib/thread;->Lit2:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/thread;->$instance:Lkawa/lib/thread;

    invoke-static {v0, v2, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/thread;->future:Lkawa/lang/Macro;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/thread;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v12, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/thread;->$Prvt$$Pcmake$Mnfuture:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lkawa/lib/thread;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/thread;->runnable:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/thread;->$instance:Lkawa/lib/thread;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static runnable(Lgnu/mapping/Procedure;)Lgnu/mapping/RunnableClosure;
    .locals 1
    .param p0, "p"    # Lgnu/mapping/Procedure;

    .line 18
    nop

    .line 19
    new-instance v0, Lgnu/mapping/RunnableClosure;

    invoke-direct {v0, p0}, Lgnu/mapping/RunnableClosure;-><init>(Lgnu/mapping/Procedure;)V

    return-object v0
.end method

.method public static sleep(Lgnu/math/Quantity;)V
    .locals 0
    .param p0, "time"    # Lgnu/math/Quantity;

    .line 4
    nop

    .line 5
    invoke-static {p0}, Lkawa/standard/sleep;->sleep(Lgnu/math/Quantity;)V

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 18
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    :try_start_0
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lkawa/lib/thread;->runnable(Lgnu/mapping/Procedure;)Lgnu/mapping/RunnableClosure;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "runnable"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 13
    :pswitch_1
    :try_start_1
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2}, Lkawa/lib/thread;->$PcMakeFuture(Lgnu/mapping/Procedure;)Lgnu/mapping/Future;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "%make-future"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 4
    :pswitch_2
    :try_start_2
    check-cast p2, Lgnu/math/Quantity;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2}, Lkawa/lib/thread;->sleep(Lgnu/math/Quantity;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_2
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "sleep"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 18
    :pswitch_0
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 13
    :pswitch_1
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 4
    :pswitch_2
    instance-of v0, p2, Lgnu/math/Quantity;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 4
    nop

    .line 13
    nop

    .line 18
    return-void
.end method
