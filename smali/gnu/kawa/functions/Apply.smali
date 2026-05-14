.class public Lgnu/kawa/functions/Apply;
.super Lgnu/mapping/ProcedureN;
.source "Apply.java"


# instance fields
.field applyToArgs:Lgnu/kawa/functions/ApplyToArgs;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgnu/kawa/functions/ApplyToArgs;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "applyToArgs"    # Lgnu/kawa/functions/ApplyToArgs;

    .line 15
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lgnu/kawa/functions/Apply;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 17
    return-void
.end method

.method public static getArguments([Ljava/lang/Object;ILgnu/mapping/Procedure;)[Ljava/lang/Object;
    .locals 10
    .param p0, "args"    # [Ljava/lang/Object;
    .param p1, "skip"    # I
    .param p2, "proc"    # Lgnu/mapping/Procedure;

    .line 21
    array-length v0, p0

    .line 22
    .local v0, "count":I
    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x2

    if-lt v0, v1, :cond_8

    .line 24
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    .line 26
    .local v1, "last":Ljava/lang/Object;
    instance-of v3, v1, [Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 28
    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 29
    .local v3, "last_arr":[Ljava/lang/Object;
    if-ne v0, v2, :cond_0

    .line 30
    return-object v3

    .line 31
    :cond_0
    array-length v2, v3

    .line 32
    .end local v3    # "last_arr":[Ljava/lang/Object;
    .local v2, "last_count":I
    goto :goto_0

    .line 33
    .end local v2    # "last_count":I
    :cond_1
    instance-of v2, v1, Lgnu/lists/Sequence;

    if-eqz v2, :cond_2

    .line 34
    move-object v2, v1

    check-cast v2, Lgnu/lists/Sequence;

    invoke-interface {v2}, Lgnu/lists/Sequence;->size()I

    move-result v2

    .restart local v2    # "last_count":I
    goto :goto_0

    .line 36
    .end local v2    # "last_count":I
    :cond_2
    const/4 v2, -0x1

    .line 37
    .restart local v2    # "last_count":I
    :goto_0
    if-ltz v2, :cond_7

    .line 39
    sub-int v3, v0, p1

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v3, v2

    .line 40
    .local v3, "numArgs":I
    new-array v4, v3, [Ljava/lang/Object;

    .line 42
    .local v4, "proc_args":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    sub-int v6, v0, p1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_3

    .line 43
    add-int v6, v5, p1

    aget-object v6, p0, v6

    aput-object v6, v4, v5

    .line 42
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 44
    :cond_3
    instance-of v6, v1, [Ljava/lang/Object;

    if-eqz v6, :cond_4

    .line 46
    move-object v6, v1

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v6, v7, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 51
    :cond_4
    :goto_2
    instance-of v6, v1, Lgnu/lists/Pair;

    if-eqz v6, :cond_5

    .line 53
    move-object v6, v1

    check-cast v6, Lgnu/lists/Pair;

    .line 54
    .local v6, "pair":Lgnu/lists/Pair;
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "i":I
    .local v7, "i":I
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v4, v5

    .line 55
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 56
    nop

    .end local v6    # "pair":Lgnu/lists/Pair;
    add-int/lit8 v2, v2, -0x1

    .line 57
    move v5, v7

    goto :goto_2

    .line 58
    .end local v7    # "i":I
    .restart local v5    # "i":I
    :cond_5
    if-lez v2, :cond_6

    .line 60
    move-object v6, v1

    check-cast v6, Lgnu/lists/Sequence;

    .line 61
    .local v6, "last_seq":Lgnu/lists/Sequence;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    if-ge v7, v2, :cond_6

    .line 62
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    invoke-interface {v6, v7}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v4, v5

    .line 61
    add-int/lit8 v7, v7, 0x1

    move v5, v8

    goto :goto_3

    .line 65
    .end local v6    # "last_seq":Lgnu/lists/Sequence;
    .end local v7    # "j":I
    .end local v8    # "i":I
    .restart local v5    # "i":I
    :cond_6
    :goto_4
    return-object v4

    .line 38
    .end local v3    # "numArgs":I
    .end local v4    # "proc_args":[Ljava/lang/Object;
    .end local v5    # "i":I
    :cond_7
    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "sequence or array"

    invoke-direct {v3, p2, v0, v1, v4}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v3

    .line 23
    .end local v1    # "last":Ljava/lang/Object;
    .end local v2    # "last_count":I
    :cond_8
    new-instance v1, Lgnu/mapping/WrongArguments;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(apply proc [args] args) [count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " skip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "apply"

    invoke-direct {v1, v4, v2, v3}, Lgnu/mapping/WrongArguments;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 3
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, "args":[Ljava/lang/Object;
    iget-object v1, p0, Lgnu/kawa/functions/Apply;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Lgnu/kawa/functions/Apply;->getArguments([Ljava/lang/Object;ILgnu/mapping/Procedure;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lgnu/kawa/functions/ApplyToArgs;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 77
    return-void
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lgnu/kawa/functions/Apply;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    const/4 v1, 0x0

    invoke-static {p1, v1, p0}, Lgnu/kawa/functions/Apply;->getArguments([Ljava/lang/Object;ILgnu/mapping/Procedure;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/functions/ApplyToArgs;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
