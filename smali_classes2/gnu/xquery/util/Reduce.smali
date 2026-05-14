.class public Lgnu/xquery/util/Reduce;
.super Ljava/lang/Object;
.source "Reduce.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sum(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 15
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/xquery/util/Reduce;->sum(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static sum(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "zero"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_2

    .line 23
    move-object v0, p0

    check-cast v0, Lgnu/lists/TreeList;

    .line 24
    .local v0, "tlist":Lgnu/lists/TreeList;
    const/4 v1, 0x0

    .line 25
    .local v1, "pos":I
    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v2

    .line 26
    .local v2, "next":Ljava/lang/Object;
    sget-object v3, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    .line 27
    return-object p1

    .line 28
    :cond_0
    invoke-static {v2}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 31
    .local v3, "result":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v2

    .line 33
    sget-object v4, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v2, v4, :cond_1

    .line 34
    return-object v3

    .line 35
    :cond_1
    invoke-static {v2}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 36
    const/4 v4, 0x1

    invoke-static {v4, v3, v2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 40
    .end local v0    # "tlist":Lgnu/lists/TreeList;
    .end local v1    # "pos":I
    .end local v2    # "next":Ljava/lang/Object;
    .end local v3    # "result":Ljava/lang/Object;
    :cond_2
    invoke-static {p0}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method
