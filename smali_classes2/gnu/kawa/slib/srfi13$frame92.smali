.class public Lgnu/kawa/slib/srfi13$frame92;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringReplace$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame92"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n1676#1,9:1676\n*E\n"
.end annotation


# instance fields
.field end1:Ljava/lang/Object;

.field final lambda$Fn206:Lgnu/expr/ModuleMethod;

.field final lambda$Fn207:Lgnu/expr/ModuleMethod;

.field maybe$Mnstart$Plend:Lgnu/lists/LList;

.field s1:Ljava/lang/Object;

.field s2:Ljava/lang/Object;

.field start1:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x0

    const/16 v2, 0xb5

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame92;->lambda$Fn206:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb6

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame92;->lambda$Fn207:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame92;->lambda206()Ljava/lang/Object;

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

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame92;->lambda207(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda206()Ljava/lang/Object;
    .locals 3

    .line 1676
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnreplace:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame92;->s2:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame92;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda207(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "start2"    # Ljava/lang/Object;
    .param p2, "end2"    # Ljava/lang/Object;

    .line 1677
    const-string v0, "%string-copy!"

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame92;->s1:Ljava/lang/Object;

    const/4 v2, 0x1

    :try_start_0
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_a

    invoke-static {v3}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v3

    const/4 v4, 0x0

    .line 1678
    .local v3, "slen1":I
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v4, p2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .local v1, "sublen2":Ljava/lang/Object;
    move-object v1, v4

    .line 1677
    nop

    .line 1679
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v5, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v8, p0, Lgnu/kawa/slib/srfi13$frame92;->end1:Ljava/lang/Object;

    iget-object v9, p0, Lgnu/kawa/slib/srfi13$frame92;->start1:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 1677
    .local v4, "alen":Ljava/lang/Object;
    nop

    .line 1680
    :try_start_1
    move-object v6, v4

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_9

    invoke-static {v6}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v6

    .local v5, "ans":Ljava/lang/CharSequence;
    move-object v5, v6

    .line 1681
    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame92;->s1:Ljava/lang/Object;

    const/4 v7, 0x2

    :try_start_2
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_8

    iget-object v8, p0, Lgnu/kawa/slib/srfi13$frame92;->start1:Ljava/lang/Object;

    const/4 v9, 0x4

    :try_start_3
    move-object v10, v8

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v8
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_7

    const/4 v10, 0x0

    invoke-static {v5, v10, v6, v10, v8}, Lgnu/kawa/slib/srfi13;->$PcStringCopy$Ex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Ljava/lang/Object;

    .line 1682
    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame92;->start1:Ljava/lang/Object;

    :try_start_4
    move-object v8, v6

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v6
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    iget-object v8, p0, Lgnu/kawa/slib/srfi13$frame92;->s2:Ljava/lang/Object;

    :try_start_5
    check-cast v8, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    const/4 v10, 0x3

    :try_start_6
    move-object v11, p1

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    move-object v12, p2

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v9
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_3

    invoke-static {v5, v6, v8, v11, v9}, Lgnu/kawa/slib/srfi13;->$PcStringCopy$Ex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Ljava/lang/Object;

    .line 1683
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v8, p0, Lgnu/kawa/slib/srfi13$frame92;->start1:Ljava/lang/Object;

    invoke-virtual {v6, v8, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :try_start_8
    move-object v8, v6

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v2
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_2

    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame92;->s1:Ljava/lang/Object;

    :try_start_9
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_1

    iget-object v7, p0, Lgnu/kawa/slib/srfi13$frame92;->end1:Ljava/lang/Object;

    :try_start_a
    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_0

    invoke-static {v5, v2, v6, v0, v3}, Lgnu/kawa/slib/srfi13;->$PcStringCopy$Ex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Ljava/lang/Object;

    .line 1684
    nop

    .end local v1    # "sublen2":Ljava/lang/Object;
    .end local v3    # "slen1":I
    .end local v4    # "alen":Ljava/lang/Object;
    .end local v5    # "ans":Ljava/lang/CharSequence;
    return-object v5

    .line 1683
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame92;
    .end local p1    # "start2":Ljava/lang/Object;
    .end local p2    # "end2":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v10, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v7, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v2, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1682
    :catch_3
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, v9, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_4
    move-exception p2

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p2, v0, v10, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_5
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v7, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_6
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v2, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1681
    :catch_7
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v9, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_8
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v7, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1680
    :catch_9
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "make-string"

    invoke-direct {p2, p1, v0, v2, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1677
    :catch_a
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "string-length"

    invoke-direct {p2, p1, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb5

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

    const/16 v1, 0xb6

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
