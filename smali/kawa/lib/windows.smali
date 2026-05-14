.class public Lkawa/lib/windows;
.super Lgnu/expr/ModuleBody;
.source "windows.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nwindows.scm\nScheme\n*S Scheme\n*F\n+ 1 windows.scm\n/u2/home/jis/ai2-kawa/kawa/lib/windows.scm\n*L\n1#1,9:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/windows;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field public static final scheme$Mnwindow:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "scheme-window"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/windows;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lib/windows;

    invoke-direct {v0}, Lkawa/lib/windows;-><init>()V

    sput-object v0, Lkawa/lib/windows;->$instance:Lkawa/lib/windows;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/windows;->$instance:Lkawa/lib/windows;

    sget-object v2, Lkawa/lib/windows;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x1000

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/windows;->scheme$Mnwindow:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/windows;->$instance:Lkawa/lib/windows;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static schemeWindow()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkawa/lib/windows;->schemeWindow(Ljava/lang/Object;)V

    return-void
.end method

.method public static schemeWindow(Ljava/lang/Object;)V
    .locals 4
    .param p0, "share"    # Ljava/lang/Object;

    .line 3
    nop

    .line 4
    nop

    .line 5
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 4
    .local v0, "language":Lgnu/expr/Language;
    nop

    .line 7
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p0, v2, :cond_0

    invoke-static {}, Lkawa/lib/misc;->interactionEnvironment()Lgnu/mapping/Environment;

    move-result-object v2

    .local v1, "env":Lgnu/mapping/Environment;
    goto :goto_0

    .line 8
    .end local v1    # "env":Lgnu/mapping/Environment;
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Language;->getNewEnvironment()Lgnu/mapping/Environment;

    move-result-object v2

    .restart local v1    # "env":Lgnu/mapping/Environment;
    :goto_0
    move-object v1, v2

    .line 9
    new-instance v2, Lkawa/GuiConsole;

    :try_start_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p0, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-direct {v2, v0, v1, v3}, Lkawa/GuiConsole;-><init>(Lgnu/expr/Language;Lgnu/mapping/Environment;Z)V

    return-void

    .end local v0    # "language":Lgnu/expr/Language;
    .end local v1    # "env":Lgnu/mapping/Environment;
    .end local p0    # "share":Ljava/lang/Object;
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "kawa.GuiConsole.<init>(gnu.expr.Language,gnu.mapping.Environment,boolean)"

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lkawa/lib/windows;->schemeWindow()V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {p2}, Lkawa/lib/windows;->schemeWindow(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x0

    iput p1, p2, Lgnu/mapping/CallContext;->pc:I

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
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

    .line 3
    return-void
.end method
