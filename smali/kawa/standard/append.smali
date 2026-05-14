.class public Lkawa/standard/append;
.super Lgnu/mapping/ProcedureN;
.source "append.java"


# static fields
.field public static final append:Lkawa/standard/append;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lkawa/standard/append;

    invoke-direct {v0}, Lkawa/standard/append;-><init>()V

    sput-object v0, Lkawa/standard/append;->append:Lkawa/standard/append;

    .line 13
    sget-object v0, Lkawa/standard/append;->append:Lkawa/standard/append;

    const-string v1, "append"

    invoke-virtual {v0, v1}, Lkawa/standard/append;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static append$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p0, "args"    # [Ljava/lang/Object;

    .line 22
    array-length v0, p0

    .line 23
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 24
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    return-object v1

    .line 25
    :cond_0
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    .line 26
    .local v1, "result":Ljava/lang/Object;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_5

    .line 28
    aget-object v3, p0, v2

    .line 29
    .local v3, "list":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 30
    .local v4, "copy":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 31
    .local v5, "last":Lgnu/lists/Pair;
    :goto_1
    instance-of v6, v3, Lgnu/lists/Pair;

    if-eqz v6, :cond_2

    .line 33
    move-object v6, v3

    check-cast v6, Lgnu/lists/Pair;

    .line 34
    .local v6, "list_pair":Lgnu/lists/Pair;
    new-instance v7, Lgnu/lists/Pair;

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .local v7, "new_pair":Lgnu/lists/Pair;
    if-nez v5, :cond_1

    .line 36
    move-object v4, v7

    goto :goto_2

    .line 38
    :cond_1
    invoke-virtual {v5, v7}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .line 39
    :goto_2
    move-object v5, v7

    .line 40
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 41
    .end local v6    # "list_pair":Lgnu/lists/Pair;
    .end local v7    # "new_pair":Lgnu/lists/Pair;
    goto :goto_1

    .line 42
    :cond_2
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v6, :cond_4

    .line 44
    if-eqz v5, :cond_3

    .line 46
    invoke-virtual {v5, v1}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .line 47
    move-object v1, v4

    .line 49
    .end local v3    # "list":Ljava/lang/Object;
    .end local v4    # "copy":Ljava/lang/Object;
    .end local v5    # "last":Lgnu/lists/Pair;
    :cond_3
    goto :goto_0

    .line 43
    .restart local v3    # "list":Ljava/lang/Object;
    .restart local v4    # "copy":Ljava/lang/Object;
    .restart local v5    # "last":Lgnu/lists/Pair;
    :cond_4
    new-instance v6, Lgnu/mapping/WrongType;

    sget-object v7, Lkawa/standard/append;->append:Lkawa/standard/append;

    add-int/lit8 v8, v2, 0x1

    aget-object v9, p0, v2

    const-string v10, "list"

    invoke-direct {v6, v7, v8, v9, v10}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v6

    .line 50
    .end local v2    # "i":I
    .end local v3    # "list":Ljava/lang/Object;
    .end local v4    # "copy":Ljava/lang/Object;
    .end local v5    # "last":Lgnu/lists/Pair;
    :cond_5
    return-object v1
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
