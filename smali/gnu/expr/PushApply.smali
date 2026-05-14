.class public Lgnu/expr/PushApply;
.super Lgnu/expr/ExpVisitor;
.source "PushApply.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpVisitor<",
        "Lgnu/expr/Expression;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgnu/expr/ExpVisitor;-><init>()V

    return-void
.end method

.method public static pushApply(Lgnu/expr/Expression;)V
    .locals 2
    .param p0, "exp"    # Lgnu/expr/Expression;

    .line 14
    new-instance v0, Lgnu/expr/PushApply;

    invoke-direct {v0}, Lgnu/expr/PushApply;-><init>()V

    .line 15
    .local v0, "visitor":Lgnu/expr/PushApply;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lgnu/expr/PushApply;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    return-void
.end method


# virtual methods
.method protected defaultValue(Lgnu/expr/Expression;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 0
    .param p1, "r"    # Lgnu/expr/Expression;
    .param p2, "ignored"    # Ljava/lang/Void;

    .line 25
    return-object p1
.end method

.method protected bridge synthetic defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lgnu/expr/Expression;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 10
    move-object v0, p2

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/PushApply;->defaultValue(Lgnu/expr/Expression;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected update(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 0
    .param p1, "exp"    # Lgnu/expr/Expression;
    .param p2, "r"    # Lgnu/expr/Expression;

    .line 20
    return-object p2
.end method

.method protected bridge synthetic update(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "x0"    # Lgnu/expr/Expression;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 10
    move-object v0, p2

    check-cast v0, Lgnu/expr/Expression;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/PushApply;->update(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 5
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "ignored"    # Ljava/lang/Void;

    .line 30
    iget-object v0, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 31
    .local v0, "func":Lgnu/expr/Expression;
    instance-of v1, v0, Lgnu/expr/LetExp;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lgnu/expr/FluidLetExp;

    if-nez v1, :cond_0

    .line 35
    move-object v1, v0

    check-cast v1, Lgnu/expr/LetExp;

    .line 36
    .local v1, "let":Lgnu/expr/LetExp;
    iget-object v2, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 37
    .local v2, "body":Lgnu/expr/Expression;
    iput-object p1, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 38
    iput-object v2, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 39
    invoke-virtual {p0, v1, p2}, Lgnu/expr/PushApply;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/Expression;

    return-object v3

    .line 41
    .end local v1    # "let":Lgnu/expr/LetExp;
    .end local v2    # "body":Lgnu/expr/Expression;
    :cond_0
    instance-of v1, v0, Lgnu/expr/BeginExp;

    if-eqz v1, :cond_1

    .line 44
    move-object v1, v0

    check-cast v1, Lgnu/expr/BeginExp;

    .line 45
    .local v1, "begin":Lgnu/expr/BeginExp;
    iget-object v2, v1, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 46
    .local v2, "stmts":[Lgnu/expr/Expression;
    iget-object v3, v1, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 47
    .local v3, "last_index":I
    aget-object v4, v2, v3

    iput-object v4, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 48
    aput-object p1, v2, v3

    .line 49
    invoke-virtual {p0, v1, p2}, Lgnu/expr/PushApply;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Expression;

    return-object v4

    .line 51
    .end local v1    # "begin":Lgnu/expr/BeginExp;
    .end local v2    # "stmts":[Lgnu/expr/Expression;
    .end local v3    # "last_index":I
    :cond_1
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ApplyExp;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 52
    return-object p1
.end method

.method protected bridge synthetic visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lgnu/expr/ApplyExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 10
    move-object v0, p2

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/PushApply;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method
