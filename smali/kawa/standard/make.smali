.class public Lkawa/standard/make;
.super Lgnu/mapping/ProcedureN;
.source "make.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "args"    # [Ljava/lang/Object;

    .line 12
    array-length v0, p1

    .line 13
    .local v0, "nargs":I
    if-eqz v0, :cond_4

    .line 15
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 17
    .local v1, "arg_0":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 18
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    .local v2, "clas":Ljava/lang/Class;
    goto :goto_0

    .line 19
    .end local v2    # "clas":Ljava/lang/Class;
    :cond_0
    instance-of v2, v1, Lgnu/bytecode/ClassType;

    if-eqz v2, :cond_1

    .line 20
    move-object v2, v1

    check-cast v2, Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v2

    .restart local v2    # "clas":Ljava/lang/Class;
    goto :goto_0

    .line 22
    .end local v2    # "clas":Ljava/lang/Class;
    :cond_1
    const/4 v2, 0x0

    .line 23
    .restart local v2    # "clas":Ljava/lang/Class;
    :goto_0
    if-eqz v2, :cond_3

    .line 28
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .local v3, "result":Ljava/lang/Object;
    nop

    .line 34
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 36
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aget-object v4, p1, v4

    check-cast v4, Lgnu/expr/Keyword;

    .line 37
    .local v4, "key":Lgnu/expr/Keyword;
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget-object v5, p1, v5

    .line 38
    .local v5, "arg":Ljava/lang/Object;
    invoke-virtual {v4}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v3}, Lkawa/lang/Record;->set1(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .end local v4    # "key":Lgnu/expr/Keyword;
    .end local v5    # "arg":Ljava/lang/Object;
    move v4, v6

    goto :goto_1

    .line 40
    .end local v6    # "i":I
    :cond_2
    return-object v3

    .line 30
    .end local v3    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v3

    const/4 v4, 0x0

    .line 32
    .local v3, "ex":Ljava/lang/Exception;
    .local v4, "result":Ljava/lang/Object;
    new-instance v5, Lgnu/mapping/WrappedException;

    invoke-direct {v5, v3}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 24
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "result":Ljava/lang/Object;
    :cond_3
    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "class"

    const/4 v5, 0x1

    invoke-direct {v3, p0, v5, v1, v4}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v3

    .line 14
    .end local v1    # "arg_0":Ljava/lang/Object;
    .end local v2    # "clas":Ljava/lang/Class;
    :cond_4
    new-instance v1, Lgnu/mapping/WrongArguments;

    invoke-direct {v1, p0, v0}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public numArgs()I
    .locals 1

    .line 8
    const/16 v0, -0xfff

    return v0
.end method
