.class public Lgnu/kawa/slib/srfi13$frame90;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringReverse$Ex$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame90"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n1512#1,7:1512\n*E\n"
.end annotation


# instance fields
.field final lambda$Fn202:Lgnu/expr/ModuleMethod;

.field final lambda$Fn203:Lgnu/expr/ModuleMethod;

.field maybe$Mnstart$Plend:Lgnu/lists/LList;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x0

    const/16 v2, 0xb1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame90;->lambda$Fn202:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb2

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame90;->lambda$Fn203:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame90;->lambda202()Ljava/lang/Object;

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

    const/16 v1, 0xb2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame90;->lambda203(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda202()Ljava/lang/Object;
    .locals 3

    .line 1512
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnreverse$Ex:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame90;->s:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame90;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda203(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "end"    # Ljava/lang/Object;

    .line 1513
    const-string v0, "string-set!"

    const-string v1, "string-ref"

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v3, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v2, p2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "i":Ljava/lang/Object;
    move-object v3, p1

    .local v3, "j":Ljava/lang/Object;
    const/4 v4, 0x0

    :goto_0
    sget-object v5, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 1515
    invoke-virtual {v5, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v6, :cond_0

    .line 1516
    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame90;->s:Ljava/lang/Object;

    const/4 v6, 0x1

    :try_start_0
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_7

    const/4 v7, 0x2

    :try_start_1
    move-object v8, v2

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    invoke-static {v5, v8}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v5

    .local v4, "ci":C
    move v4, v5

    .line 1517
    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame90;->s:Ljava/lang/Object;

    :try_start_2
    check-cast v5, Lgnu/lists/CharSeq;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    move-object v8, v2

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_4

    iget-object v9, p0, Lgnu/kawa/slib/srfi13$frame90;->s:Ljava/lang/Object;

    :try_start_4
    check-cast v9, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    move-object v10, v3

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_2

    invoke-static {v9, v10}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v9

    invoke-static {v5, v8, v9}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 1518
    iget-object v5, p0, Lgnu/kawa/slib/srfi13$frame90;->s:Ljava/lang/Object;

    :try_start_6
    check-cast v5, Lgnu/lists/CharSeq;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    move-object v6, v3

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_0

    invoke-static {v5, v6, v4}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 1513
    .end local v4    # "ci":C
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v5, v2, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1514
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v6, v3, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v5

    goto :goto_0

    .line 1518
    .end local v2    # "i":Ljava/lang/Object;
    .end local v3    # "j":Ljava/lang/Object;
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame90;
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v6, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1517
    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v6, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_4
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v7, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_5
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v6, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1516
    :catch_6
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v7, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_7
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v6, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1514
    .restart local v2    # "i":Ljava/lang/Object;
    .restart local v3    # "j":Ljava/lang/Object;
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_0
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .end local v2    # "i":Ljava/lang/Object;
    .end local v3    # "j":Ljava/lang/Object;
    return-object v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb1

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

    const/16 v1, 0xb2

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
