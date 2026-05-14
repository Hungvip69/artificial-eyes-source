.class public Lkawa/lib/trace;
.super Lgnu/expr/ModuleBody;
.source "trace.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ntrace.scm\nScheme\n*S Scheme\n*F\n+ 1 trace.scm\n/u2/home/jis/ai2-kawa/kawa/lib/trace.scm\n*L\n1#1,22:1\n*E\n"
.end annotation


# static fields
.field public static final $Pcdo$Mntrace:Lkawa/lang/Macro;

.field public static final $instance:Lkawa/lib/trace;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxRules;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field public static final disassemble:Lgnu/expr/ModuleMethod;

.field public static final trace:Lkawa/lang/Macro;

.field public static final untrace:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "begin"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/trace;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "disassemble"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/trace;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "untrace"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/trace;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    new-array v1, v2, [Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v12, "\u000c\u0018\r\u0007\u0000\u0008\u0008"

    invoke-direct {v6, v12, v5, v2}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v7, "%do-trace"

    invoke-direct {v5, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/trace;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v9, 0x1301b

    const-string v13, "/u2/home/jis/ai2-kawa/kawa/lib/trace.scm"

    invoke-static {v7, v8, v13, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const/4 v14, 0x3

    new-array v9, v14, [Ljava/lang/Object;

    sget-object v8, Lkawa/lib/trace;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v8, v9, v4

    aput-object v5, v9, v2

    const/4 v15, 0x2

    aput-object v7, v9, v15

    const/4 v10, 0x1

    const-string v7, "\u0003"

    const-string v8, "\u0011\u0018\u0004\u0008\u0005\u0011\u0018\u000c\t\u0003\u0018\u0014"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v11, v1, v4

    invoke-direct {v0, v3, v1, v2}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lkawa/lib/trace;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v3, "trace"

    invoke-direct {v1, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/trace;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v4

    new-array v1, v2, [Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-direct {v6, v12, v5, v2}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v8, 0xe01b

    invoke-static {v5, v7, v13, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    new-array v9, v14, [Ljava/lang/Object;

    sget-object v7, Lkawa/lib/trace;->Lit7:Lgnu/mapping/SimpleSymbol;

    aput-object v7, v9, v4

    sget-object v7, Lkawa/lib/trace;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v7, v9, v2

    aput-object v5, v9, v15

    const-string v7, "\u0003"

    const-string v8, "\u0011\u0018\u0004\u0008\u0005\u0011\u0018\u000c\t\u0003\u0018\u0014"

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v11, v1, v4

    invoke-direct {v0, v3, v1, v2}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lkawa/lib/trace;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lang/SyntaxRules;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v3, Lkawa/lib/trace;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v3, v1, v4

    new-array v3, v2, [Lkawa/lang/SyntaxRule;

    new-instance v11, Lkawa/lang/SyntaxRule;

    new-instance v6, Lkawa/lang/SyntaxPattern;

    const-string v5, "\u000c\u0018\u000c\u0007\u000c\u000f\u0008"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-direct {v6, v5, v7, v15}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v7, "set!"

    invoke-direct {v5, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "invoke-static"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "<kawa.standard.TracedProcedure>"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "quote"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v12, "doTrace"

    invoke-direct {v10, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v14, 0x8026

    invoke-static {v10, v12, v13, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    invoke-static {v9, v10, v13, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v5, v10, v4

    aput-object v7, v10, v2

    aput-object v8, v10, v15

    const/4 v5, 0x3

    aput-object v9, v10, v5

    const/4 v12, 0x0

    const-string v7, "\u0001\u0001"

    const-string v8, "\u0011\u0018\u0004\t\u0003\u0008\u0011\u0018\u000c\u0011\u0018\u0014\u0011\u0018\u001c\t\u0003\u0008\u000b"

    move-object v5, v11

    move-object v9, v10

    move v10, v12

    invoke-direct/range {v5 .. v10}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v11, v3, v4

    invoke-direct {v0, v1, v3, v15}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lkawa/lib/trace;->Lit1:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lib/trace;

    invoke-direct {v0}, Lkawa/lib/trace;-><init>()V

    sput-object v0, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

    sget-object v0, Lkawa/lib/trace;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/trace;->Lit1:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

    invoke-static {v0, v1, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/trace;->$Pcdo$Mntrace:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/trace;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/trace;->Lit3:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

    invoke-static {v0, v1, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/trace;->trace:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/trace;->Lit4:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/trace;->Lit5:Lkawa/lang/SyntaxRules;

    sget-object v3, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

    invoke-static {v0, v1, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/trace;->untrace:Lkawa/lang/Macro;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

    sget-object v3, Lkawa/lib/trace;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/trace;->disassemble:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static disassemble(Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 3
    .param p0, "proc"    # Lgnu/mapping/Procedure;

    const/4 v0, 0x0

    .line 21
    .local v0, "$ctx":Lgnu/mapping/CallContext;
    nop

    .line 22
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v2

    :try_start_0
    invoke-static {p0, v1}, Lgnu/expr/PrimProcedure;->disassemble$X(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v2}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0, v2}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    throw v1
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 21
    :try_start_0
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lkawa/lib/trace;->disassemble(Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "disassemble"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 21
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    const p1, -0xbffff

    return p1

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 21
    return-void
.end method
