.class public Lgnu/kawa/slib/srfi13$frame82;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringFill$Ex$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame82"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n1271#1,4:1271\n*E\n"
.end annotation


# instance fields
.field char:Ljava/lang/Object;

.field final lambda$Fn187:Lgnu/expr/ModuleMethod;

.field final lambda$Fn188:Lgnu/expr/ModuleMethod;

.field maybe$Mnstart$Plend:Lgnu/lists/LList;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x0

    const/16 v2, 0xa2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame82;->lambda$Fn187:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xa3

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame82;->lambda$Fn188:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame82;->lambda187()Ljava/lang/Object;

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

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame82;->lambda188(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda187()Ljava/lang/Object;
    .locals 3

    .line 1271
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnfill$Ex:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame82;->s:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame82;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda188(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "end"    # Ljava/lang/Object;

    .line 1272
    const-string v0, "string-set!"

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v2, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, p2, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "i":Ljava/lang/Object;
    :goto_0
    sget-object v2, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 1273
    invoke-virtual {v2, v1, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_0

    .line 1274
    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame82;->s:Ljava/lang/Object;

    :try_start_0
    check-cast v2, Lgnu/lists/CharSeq;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v4, p0, Lgnu/kawa/slib/srfi13$frame82;->char:Ljava/lang/Object;

    :try_start_2
    move-object v5, v4

    check-cast v5, Lgnu/text/Char;

    invoke-virtual {v5}, Lgnu/text/Char;->charValue()C

    move-result v4
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {v2, v3, v4}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 1272
    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v3, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v2, v1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 1274
    .end local v1    # "i":Ljava/lang/Object;
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame82;
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v1, 0x3

    invoke-direct {p2, p1, v0, v1, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v2, 0x2

    invoke-direct {p2, p1, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    invoke-direct {p2, p1, v0, v1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1272
    .restart local v1    # "i":Ljava/lang/Object;
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_0
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .end local v1    # "i":Ljava/lang/Object;
    return-object v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xa2

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

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_0

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x2

    iput p1, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method
