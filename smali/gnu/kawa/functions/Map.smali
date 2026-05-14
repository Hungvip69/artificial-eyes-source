.class public Lgnu/kawa/functions/Map;
.super Lgnu/mapping/ProcedureN;
.source "Map.java"


# instance fields
.field final applyFieldDecl:Lgnu/expr/Declaration;

.field final applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

.field collect:Z

.field final isEq:Lgnu/kawa/functions/IsEq;


# direct methods
.method public constructor <init>(ZLgnu/kawa/functions/ApplyToArgs;Lgnu/expr/Declaration;Lgnu/kawa/functions/IsEq;)V
    .locals 2
    .param p1, "collect"    # Z
    .param p2, "applyToArgs"    # Lgnu/kawa/functions/ApplyToArgs;
    .param p3, "applyFieldDecl"    # Lgnu/expr/Declaration;
    .param p4, "isEq"    # Lgnu/kawa/functions/IsEq;

    .line 24
    if-eqz p1, :cond_0

    const-string v0, "map"

    goto :goto_0

    :cond_0
    const-string v0, "for-each"

    :goto_0
    invoke-direct {p0, v0}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 25
    iput-boolean p1, p0, Lgnu/kawa/functions/Map;->collect:Z

    .line 26
    iput-object p2, p0, Lgnu/kawa/functions/Map;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 27
    iput-object p3, p0, Lgnu/kawa/functions/Map;->applyFieldDecl:Lgnu/expr/Declaration;

    .line 28
    iput-object p4, p0, Lgnu/kawa/functions/Map;->isEq:Lgnu/kawa/functions/IsEq;

    .line 29
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileMisc:validateApplyMap"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/Map;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static forEach1(Lgnu/mapping/Procedure;Ljava/lang/Object;)V
    .locals 2
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "list"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55
    nop

    :goto_0
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v0, :cond_0

    .line 57
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    .line 58
    .local v0, "pair":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 60
    .end local v0    # "pair":Lgnu/lists/Pair;
    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public static map1(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "list"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 37
    .local v0, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 38
    .local v1, "last":Lgnu/lists/Pair;
    :goto_0
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v2, :cond_1

    .line 40
    move-object v2, p1

    check-cast v2, Lgnu/lists/Pair;

    .line 41
    .local v2, "pair":Lgnu/lists/Pair;
    new-instance v3, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v3, v4, v5}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .local v3, "new_pair":Lgnu/lists/Pair;
    if-nez v1, :cond_0

    .line 43
    move-object v0, v3

    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {v1, v3}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .line 46
    :goto_1
    move-object v1, v3

    .line 47
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 48
    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v3    # "new_pair":Lgnu/lists/Pair;
    goto :goto_0

    .line 49
    :cond_1
    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_1

    .line 67
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Procedure;

    .line 68
    .local v0, "proc":Lgnu/mapping/Procedure;
    iget-boolean v1, p0, Lgnu/kawa/functions/Map;->collect:Z

    if-eqz v1, :cond_0

    .line 69
    invoke-static {v0, p2}, Lgnu/kawa/functions/Map;->map1(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 70
    :cond_0
    invoke-static {v0, p2}, Lgnu/kawa/functions/Map;->forEach1(Lgnu/mapping/Procedure;Ljava/lang/Object;)V

    .line 71
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v1

    .line 73
    .end local v0    # "proc":Lgnu/mapping/Procedure;
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Lgnu/kawa/functions/Map;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 78
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 79
    .local v0, "arity":I
    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    aget-object v3, p1, v2

    instance-of v3, v3, Lgnu/mapping/Procedure;

    if-eqz v3, :cond_1

    .line 81
    aget-object v2, p1, v2

    check-cast v2, Lgnu/mapping/Procedure;

    check-cast v2, Lgnu/mapping/Procedure;

    .line 82
    .local v2, "proc":Lgnu/mapping/Procedure;
    iget-boolean v3, p0, Lgnu/kawa/functions/Map;->collect:Z

    if-eqz v3, :cond_0

    .line 83
    aget-object v1, p1, v1

    invoke-static {v2, v1}, Lgnu/kawa/functions/Map;->map1(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 84
    :cond_0
    aget-object v1, p1, v1

    invoke-static {v2, v1}, Lgnu/kawa/functions/Map;->forEach1(Lgnu/mapping/Procedure;Ljava/lang/Object;)V

    .line 85
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v1

    .line 88
    .end local v2    # "proc":Lgnu/mapping/Procedure;
    :cond_1
    const/4 v3, 0x0

    .line 89
    .local v3, "last":Lgnu/lists/Pair;
    iget-boolean v4, p0, Lgnu/kawa/functions/Map;->collect:Z

    if-eqz v4, :cond_2

    .line 90
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .local v4, "result":Ljava/lang/Object;
    goto :goto_0

    .line 92
    .end local v4    # "result":Ljava/lang/Object;
    :cond_2
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 93
    .restart local v4    # "result":Ljava/lang/Object;
    :goto_0
    new-array v5, v0, [Ljava/lang/Object;

    .line 94
    .local v5, "rest":[Ljava/lang/Object;
    invoke-static {p1, v1, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    aget-object v1, p1, v2

    instance-of v1, v1, Lgnu/mapping/Procedure;

    if-eqz v1, :cond_3

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "need_apply":I
    new-array v6, v0, [Ljava/lang/Object;

    .line 102
    .local v6, "each_args":[Ljava/lang/Object;
    aget-object v2, p1, v2

    check-cast v2, Lgnu/mapping/Procedure;

    .restart local v2    # "proc":Lgnu/mapping/Procedure;
    goto :goto_1

    .line 106
    .end local v1    # "need_apply":I
    .end local v2    # "proc":Lgnu/mapping/Procedure;
    .end local v6    # "each_args":[Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x1

    .line 107
    .restart local v1    # "need_apply":I
    add-int/lit8 v6, v0, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 108
    .restart local v6    # "each_args":[Ljava/lang/Object;
    aget-object v7, p1, v2

    aput-object v7, v6, v2

    .line 109
    iget-object v2, p0, Lgnu/kawa/functions/Map;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 113
    .restart local v2    # "proc":Lgnu/mapping/Procedure;
    :goto_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v0, :cond_5

    .line 115
    aget-object v8, v5, v7

    .line 116
    .local v8, "list":Ljava/lang/Object;
    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v8, v9, :cond_4

    .line 117
    return-object v4

    .line 118
    :cond_4
    move-object v9, v8

    check-cast v9, Lgnu/lists/Pair;

    .line 119
    .local v9, "pair":Lgnu/lists/Pair;
    add-int v10, v1, v7

    invoke-virtual {v9}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v6, v10

    .line 120
    invoke-virtual {v9}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v5, v7

    .line 113
    .end local v8    # "list":Ljava/lang/Object;
    .end local v9    # "pair":Lgnu/lists/Pair;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 122
    .end local v7    # "i":I
    :cond_5
    invoke-virtual {v2, v6}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 123
    .local v7, "value":Ljava/lang/Object;
    iget-boolean v8, p0, Lgnu/kawa/functions/Map;->collect:Z

    if-eqz v8, :cond_7

    .line 125
    new-instance v8, Lgnu/lists/Pair;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v8, v7, v9}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .local v8, "new_pair":Lgnu/lists/Pair;
    if-nez v3, :cond_6

    .line 127
    move-object v4, v8

    goto :goto_3

    .line 129
    :cond_6
    invoke-virtual {v3, v8}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .line 130
    :goto_3
    move-object v3, v8

    .line 132
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "new_pair":Lgnu/lists/Pair;
    :cond_7
    goto :goto_1
.end method
