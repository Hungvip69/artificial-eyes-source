.class public Lkawa/standard/vector_append;
.super Lgnu/mapping/ProcedureN;
.source "vector_append.java"


# static fields
.field public static final vectorAppend:Lkawa/standard/vector_append;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lkawa/standard/vector_append;

    const-string v1, "vector-append"

    invoke-direct {v0, v1}, Lkawa/standard/vector_append;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/standard/vector_append;->vectorAppend:Lkawa/standard/vector_append;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static apply$V([Ljava/lang/Object;)Lgnu/lists/FVector;
    .locals 11
    .param p0, "args"    # [Ljava/lang/Object;

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "length":I
    array-length v1, p0

    .line 29
    .local v1, "args_length":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 31
    aget-object v3, p0, v2

    .line 32
    .local v3, "arg":Ljava/lang/Object;
    instance-of v4, v3, Lgnu/lists/FVector;

    if-eqz v4, :cond_0

    .line 33
    move-object v4, v3

    check-cast v4, Lgnu/lists/FVector;

    invoke-virtual {v4}, Lgnu/lists/FVector;->size()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 36
    :cond_0
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v4

    .line 37
    .local v4, "n":I
    if-ltz v4, :cond_1

    .line 39
    add-int/2addr v0, v4

    .line 41
    .end local v3    # "arg":Ljava/lang/Object;
    .end local v4    # "n":I
    :goto_1
    goto :goto_0

    .line 38
    .restart local v3    # "arg":Ljava/lang/Object;
    .restart local v4    # "n":I
    :cond_1
    new-instance v5, Lgnu/mapping/WrongType;

    sget-object v6, Lkawa/standard/vector_append;->vectorAppend:Lkawa/standard/vector_append;

    const-string v7, "list or vector"

    invoke-direct {v5, v6, v2, v3, v7}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v5

    .line 42
    .end local v2    # "i":I
    .end local v3    # "arg":Ljava/lang/Object;
    .end local v4    # "n":I
    :cond_2
    new-array v2, v0, [Ljava/lang/Object;

    .line 43
    .local v2, "result":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 44
    .local v3, "position":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v1, :cond_6

    .line 46
    aget-object v5, p0, v4

    .line 47
    .local v5, "arg":Ljava/lang/Object;
    instance-of v6, v5, Lgnu/lists/FVector;

    if-eqz v6, :cond_4

    .line 49
    move-object v6, v5

    check-cast v6, Lgnu/lists/FVector;

    .line 50
    .local v6, "vec":Lgnu/lists/FVector;
    invoke-virtual {v6}, Lgnu/lists/FVector;->size()I

    move-result v7

    .line 51
    .local v7, "vec_length":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    if-ge v8, v7, :cond_3

    .line 52
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "position":I
    .local v9, "position":I
    invoke-virtual {v6, v8}, Lgnu/lists/FVector;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v2, v3

    .line 51
    add-int/lit8 v8, v8, 0x1

    move v3, v9

    goto :goto_3

    .line 53
    .end local v6    # "vec":Lgnu/lists/FVector;
    .end local v7    # "vec_length":I
    .end local v8    # "j":I
    .end local v9    # "position":I
    .restart local v3    # "position":I
    :cond_3
    goto :goto_5

    .line 54
    :cond_4
    instance-of v6, v5, Lgnu/lists/Pair;

    if-eqz v6, :cond_5

    .line 56
    :goto_4
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v5, v6, :cond_5

    .line 58
    move-object v6, v5

    check-cast v6, Lgnu/lists/Pair;

    .line 59
    .local v6, "pair":Lgnu/lists/Pair;
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "position":I
    .local v7, "position":I
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v2, v3

    .line 60
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .line 61
    .end local v6    # "pair":Lgnu/lists/Pair;
    move v3, v7

    goto :goto_4

    .line 44
    .end local v5    # "arg":Ljava/lang/Object;
    .end local v7    # "position":I
    .restart local v3    # "position":I
    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 64
    .end local v4    # "i":I
    :cond_6
    new-instance v4, Lgnu/lists/FVector;

    invoke-direct {v4, v2}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    return-object v4
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Lkawa/standard/vector_append;->apply$V([Ljava/lang/Object;)Lgnu/lists/FVector;

    move-result-object v0

    return-object v0
.end method
