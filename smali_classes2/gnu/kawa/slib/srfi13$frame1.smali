.class public Lgnu/kawa/slib/srfi13$frame1;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->substring$SlShared$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame1"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n223#1,8:223\n*E\n"
.end annotation


# instance fields
.field final lambda$Fn6:Lgnu/expr/ModuleMethod;

.field slen:I

.field start:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x0

    const/16 v2, 0x1001

    const/4 v3, 0x5

    invoke-direct {v0, p0, v3, v1, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:227"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame1;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda5(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "start"    # Ljava/lang/Object;

    .line 223
    invoke-static {p0}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .local v0, "x":Z
    if-eqz v0, :cond_1

    invoke-static {p0}, Lkawa/lib/numbers;->isExact(Ljava/lang/Object;)Z

    move-result v2

    .local v1, "x":Z
    move v1, v2

    if-eqz v1, :cond_0

    sget-object v2, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    sget-object v3, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v2, v3, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v1, v2

    .end local v1    # "x":Z
    :cond_0
    move v0, v1

    .end local v0    # "x":Z
    :cond_1
    return v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 227
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/srfi13$frame1;->lambda6(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    :cond_1
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda6(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "end"    # Ljava/lang/Object;

    .line 227
    invoke-static {p1}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .local v0, "x":Z
    if-eqz v0, :cond_2

    .line 228
    invoke-static {p1}, Lkawa/lib/numbers;->isExact(Ljava/lang/Object;)Z

    move-result v2

    move v3, v1

    .line 227
    .local v2, "x":Z
    if-eqz v2, :cond_1

    .line 229
    sget-object v3, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame1;->start:Ljava/lang/Object;

    invoke-virtual {v3, v4, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_0
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "x":Z
    move v1, v3

    .line 227
    if-eqz v1, :cond_0

    sget-object v3, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 230
    iget v4, p0, Lgnu/kawa/slib/srfi13$frame1;->slen:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v1, v3

    .line 227
    .end local v1    # "x":Z
    :cond_0
    move v2, v1

    goto :goto_0

    .line 229
    .end local v0    # "x":Z
    .end local v2    # "x":Z
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame1;
    .end local p1    # "end":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "x"

    const/4 v2, -0x2

    invoke-direct {v0, p1, v1, v2, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 227
    .restart local v0    # "x":Z
    .restart local p1    # "end":Ljava/lang/Object;
    :cond_1
    :goto_0
    move v0, v2

    .end local v0    # "x":Z
    :cond_2
    return v0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 227
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x1

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method
