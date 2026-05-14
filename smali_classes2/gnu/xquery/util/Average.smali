.class public Lgnu/xquery/util/Average;
.super Lgnu/mapping/Procedure1;
.source "Average.java"


# static fields
.field public static final avg:Lgnu/xquery/util/Average;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lgnu/xquery/util/Average;

    const-string v1, "avg"

    invoke-direct {v0, v1}, Lgnu/xquery/util/Average;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xquery/util/Average;->avg:Lgnu/xquery/util/Average;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure1;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 22
    .local v0, "sum":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 23
    .local v1, "count":I
    instance-of v2, p1, Lgnu/mapping/Values;

    if-eqz v2, :cond_2

    .line 25
    move-object v2, p1

    check-cast v2, Lgnu/lists/TreeList;

    .line 26
    .local v2, "tlist":Lgnu/lists/TreeList;
    const/4 v3, 0x0

    .line 29
    .local v3, "index":I
    :goto_0
    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v4

    .line 30
    .local v4, "next":Ljava/lang/Object;
    sget-object v5, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v4, v5, :cond_0

    .line 31
    nop

    .line 36
    .end local v2    # "tlist":Lgnu/lists/TreeList;
    .end local v3    # "index":I
    .end local v4    # "next":Ljava/lang/Object;
    goto :goto_2

    .line 32
    .restart local v2    # "tlist":Lgnu/lists/TreeList;
    .restart local v3    # "index":I
    .restart local v4    # "next":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v0, v5, :cond_1

    move-object v5, v4

    goto :goto_1

    :cond_1
    sget-object v5, Lgnu/xquery/util/ArithOp;->add:Lgnu/xquery/util/ArithOp;

    invoke-virtual {v5, v0, v4}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    move-object v0, v5

    .line 34
    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v3

    .line 35
    .end local v4    # "next":Ljava/lang/Object;
    goto :goto_0

    .line 39
    .end local v2    # "tlist":Lgnu/lists/TreeList;
    .end local v3    # "index":I
    :cond_2
    const/4 v1, 0x1

    .line 40
    move-object v0, p1

    .line 42
    :goto_2
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v0, v2, :cond_3

    .line 43
    return-object v0

    .line 44
    :cond_3
    sget-object v2, Lgnu/xquery/util/ArithOp;->div:Lgnu/xquery/util/ArithOp;

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v2
.end method
