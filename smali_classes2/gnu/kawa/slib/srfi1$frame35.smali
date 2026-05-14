.class public Lgnu/kawa/slib/srfi1$frame35;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->lsetUnion$Ex$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame35"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi1.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi1.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm\n*L\n1483#1,10:1483\n*E\n"
.end annotation


# instance fields
.field $Eq:Lgnu/mapping/Procedure;

.field final lambda$Fn34:Lgnu/expr/ModuleMethod;

.field final lambda$Fn35:Lgnu/expr/ModuleMethod;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x23

    const/4 v2, 0x0

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1488"

    const-string v4, "source-location"

    invoke-virtual {v0, v4, v1}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame35;->lambda$Fn35:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x24

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1483"

    invoke-virtual {v0, v4, v1}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame35;->lambda$Fn34:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 1483
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi1$frame35;->lambda51(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1488
    :pswitch_1
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi1$frame35;->lambda52(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method lambda51(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "lis"    # Ljava/lang/Object;
    .param p2, "ans"    # Ljava/lang/Object;

    .line 1483
    nop

    .line 1484
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1485
    move-object v0, p1

    goto :goto_1

    :cond_1
    if-ne p1, p2, :cond_2

    .line 1486
    nop

    .line 1488
    :goto_0
    move-object v0, p2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lgnu/kawa/slib/srfi1$frame35;->lambda$Fn35:Lgnu/expr/ModuleMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, p1, v1}, Lgnu/kawa/slib/srfi1;->pairFold$V(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method lambda52(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "pair"    # Ljava/lang/Object;
    .param p2, "ans"    # Ljava/lang/Object;

    .line 1488
    new-instance v0, Lgnu/kawa/slib/srfi1$frame36;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi1$frame36;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame36;->staticLink:Lgnu/kawa/slib/srfi1$frame35;

    .line 1489
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lgnu/kawa/slib/srfi1$frame36;->elt:Ljava/lang/Object;

    .line 1490
    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame36;->lambda$Fn36:Lgnu/expr/ModuleMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, v1}, Lgnu/kawa/slib/srfi1;->any$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    move-object v0, p2

    goto :goto_0

    .line 1492
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, p2}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    move-object v0, p1

    :goto_0
    return-object v0

    .end local p0    # "this":Lgnu/kawa/slib/srfi1$frame35;
    .end local p1    # "pair":Ljava/lang/Object;
    .end local p2    # "ans":Ljava/lang/Object;
    :catch_0
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "set-cdr!"

    const/4 v2, 0x1

    invoke-direct {v0, p2, v1, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_0

    .line 1488
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 1483
    :pswitch_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 1488
    :pswitch_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
