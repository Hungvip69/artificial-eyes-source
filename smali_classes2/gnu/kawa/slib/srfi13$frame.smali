.class public Lgnu/kawa/slib/srfi13$frame;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringParseStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n150#1,10:150\n*E\n"
.end annotation


# instance fields
.field args:Ljava/lang/Object;

.field final lambda$Fn1:Lgnu/expr/ModuleMethod;

.field final lambda$Fn2:Lgnu/expr/ModuleMethod;

.field proc:Ljava/lang/Object;

.field s:Ljava/lang/Object;

.field slen:I

.field start:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x2

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:150"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame;->lambda1()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 150
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame;->lambda2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda1()Ljava/lang/Object;
    .locals 9

    .line 151
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame;->args:Ljava/lang/Object;

    invoke-static {v0}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    .line 152
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame;->args:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 153
    sget-object v4, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame;->args:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 154
    .local v0, "end":Ljava/lang/Object;
    .local v4, "args":Ljava/lang/Object;
    invoke-static {v0}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    .local v5, "x":Z
    if-eqz v5, :cond_1

    invoke-static {v0}, Lkawa/lib/numbers;->isExact(Ljava/lang/Object;)Z

    move-result v7

    .local v6, "x":Z
    move v6, v7

    if-eqz v6, :cond_0

    sget-object v7, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    iget v8, p0, Lgnu/kawa/slib/srfi13$frame;->slen:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_2

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_2

    :goto_0
    goto :goto_1

    .end local v6    # "x":Z
    :cond_1
    if-eqz v5, :cond_2

    .line 155
    .end local v5    # "x":Z
    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object v4, v3, v1

    invoke-static {v3}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 156
    :cond_2
    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame;->proc:Ljava/lang/Object;

    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame;->s:Ljava/lang/Object;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v2

    aput-object v0, v7, v1

    aput-object v6, v7, v3

    const-string v1, "Illegal substring END spec"

    invoke-static {v1, v7}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v0    # "end":Ljava/lang/Object;
    .end local v4    # "args":Ljava/lang/Object;
    :goto_2
    goto :goto_3

    .line 157
    :cond_3
    iget v0, p0, Lgnu/kawa/slib/srfi13$frame;->slen:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame;->args:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    aput-object v4, v3, v1

    invoke-static {v3}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    return-object v1
.end method

.method lambda2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "end"    # Ljava/lang/Object;
    .param p2, "args"    # Ljava/lang/Object;

    .line 150
    nop

    .line 158
    sget-object v0, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame;->start:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame;->start:Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v5

    aput-object v0, v1, v4

    aput-object p1, v1, v3

    invoke-static {v1}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame;->proc:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame;->start:Ljava/lang/Object;

    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame;->s:Ljava/lang/Object;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v5

    aput-object v1, v7, v4

    aput-object p1, v7, v3

    aput-object v6, v7, v2

    const-string v0, "Illegal substring START/END spec"

    invoke-static {v0, v7}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x0

    iput p1, p2, Lgnu/mapping/CallContext;->pc:I

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 150
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method
