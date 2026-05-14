.class public Lkawa/lang/RecordConstructor;
.super Lgnu/mapping/ProcedureN;
.source "RecordConstructor.java"


# instance fields
.field fields:[Lgnu/bytecode/Field;

.field type:Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 0
    .param p1, "type"    # Lgnu/bytecode/ClassType;

    .line 28
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lkawa/lang/RecordConstructor;->init(Lgnu/bytecode/ClassType;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/Object;)V
    .locals 9
    .param p1, "type"    # Lgnu/bytecode/ClassType;
    .param p2, "fieldsList"    # Ljava/lang/Object;

    .line 59
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 60
    iput-object p1, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    .line 61
    if-nez p2, :cond_0

    .line 62
    invoke-direct {p0, p1}, Lkawa/lang/RecordConstructor;->init(Lgnu/bytecode/ClassType;)V

    goto :goto_2

    .line 65
    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v0

    .line 66
    .local v0, "nfields":I
    new-array v1, v0, [Lgnu/bytecode/Field;

    iput-object v1, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    .line 67
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v1

    .line 68
    .local v1, "list":Lgnu/bytecode/Field;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 70
    move-object v3, p2

    check-cast v3, Lgnu/lists/Pair;

    .line 71
    .local v3, "pair":Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "fname":Ljava/lang/String;
    move-object v5, v1

    .line 74
    .local v5, "fld":Lgnu/bytecode/Field;
    :goto_1
    if-eqz v5, :cond_2

    .line 76
    invoke-virtual {v5}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v6

    if-ne v6, v4, :cond_1

    .line 78
    iget-object v6, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    aput-object v5, v6, v2

    .line 79
    nop

    .line 82
    .end local v5    # "fld":Lgnu/bytecode/Field;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    .line 68
    .end local v3    # "pair":Lgnu/lists/Pair;
    .end local v4    # "fname":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .restart local v3    # "pair":Lgnu/lists/Pair;
    .restart local v4    # "fname":Ljava/lang/String;
    .restart local v5    # "fld":Lgnu/bytecode/Field;
    :cond_1
    invoke-virtual {v5}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v5

    goto :goto_1

    .line 75
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no such field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 85
    .end local v0    # "nfields":I
    .end local v1    # "list":Lgnu/bytecode/Field;
    .end local v2    # "i":I
    .end local v3    # "pair":Lgnu/lists/Pair;
    .end local v4    # "fname":Ljava/lang/String;
    .end local v5    # "fld":Lgnu/bytecode/Field;
    :cond_3
    :goto_2
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;[Lgnu/bytecode/Field;)V
    .locals 0
    .param p1, "type"    # Lgnu/bytecode/ClassType;
    .param p2, "fields"    # [Lgnu/bytecode/Field;

    .line 12
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 13
    iput-object p1, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    .line 14
    iput-object p2, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .param p1, "clas"    # Ljava/lang/Class;

    .line 23
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 24
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-direct {p0, v0}, Lkawa/lang/RecordConstructor;->init(Lgnu/bytecode/ClassType;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .param p1, "clas"    # Ljava/lang/Class;
    .param p2, "fieldsList"    # Ljava/lang/Object;

    .line 55
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-direct {p0, v0, p2}, Lkawa/lang/RecordConstructor;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Lgnu/bytecode/Field;)V
    .locals 1
    .param p1, "clas"    # Ljava/lang/Class;
    .param p2, "fields"    # [Lgnu/bytecode/Field;

    .line 19
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-direct {p0, v0, p2}, Lkawa/lang/RecordConstructor;-><init>(Lgnu/bytecode/ClassType;[Lgnu/bytecode/Field;)V

    .line 20
    return-void
.end method

.method private init(Lgnu/bytecode/ClassType;)V
    .locals 7
    .param p1, "type"    # Lgnu/bytecode/ClassType;

    .line 34
    iput-object p1, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    .line 35
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v0

    .line 36
    .local v0, "list":Lgnu/bytecode/Field;
    const/4 v1, 0x0

    .line 37
    .local v1, "count":I
    move-object v2, v0

    .local v2, "fld":Lgnu/bytecode/Field;
    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 39
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x9

    if-ne v4, v3, :cond_0

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 37
    :cond_0
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v2

    goto :goto_0

    .line 43
    .end local v2    # "fld":Lgnu/bytecode/Field;
    :cond_1
    new-array v2, v1, [Lgnu/bytecode/Field;

    iput-object v2, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, "i":I
    move-object v4, v0

    .local v4, "fld":Lgnu/bytecode/Field;
    :goto_1
    if-eqz v4, :cond_3

    .line 47
    invoke-virtual {v4}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x9

    if-ne v5, v3, :cond_2

    .line 49
    iget-object v5, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    aput-object v4, v5, v2

    move v2, v6

    .line 45
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_2
    invoke-virtual {v4}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v4

    goto :goto_1

    .line 51
    .end local v4    # "fld":Lgnu/bytecode/Field;
    :cond_3
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "args"    # [Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    .local v0, "obj":Ljava/lang/Object;
    nop

    .line 113
    array-length v1, p1

    iget-object v2, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 115
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 117
    iget-object v2, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    aget-object v2, v2, v1

    .line 120
    .local v2, "fld":Lgnu/bytecode/Field;
    :try_start_1
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    nop

    .line 115
    .end local v2    # "fld":Lgnu/bytecode/Field;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .restart local v2    # "fld":Lgnu/bytecode/Field;
    :catch_0
    move-exception v3

    .line 124
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Lgnu/mapping/WrappedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal access for field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 127
    .end local v1    # "i":I
    .end local v2    # "fld":Lgnu/bytecode/Field;
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_0
    return-object v0

    .line 114
    :cond_1
    new-instance v1, Lgnu/mapping/WrongArguments;

    array-length v2, p1

    invoke-direct {v1, p0, v2}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v1

    .line 109
    .end local v0    # "obj":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 111
    .restart local v0    # "obj":Ljava/lang/Object;
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    new-instance v2, Lkawa/lang/GenericError;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    .end local v0    # "obj":Ljava/lang/Object;
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 107
    .restart local v0    # "obj":Ljava/lang/Object;
    .local v1, "ex":Ljava/lang/InstantiationException;
    new-instance v2, Lkawa/lang/GenericError;

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " constructor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .line 89
    iget-object v0, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    array-length v0, v0

    .line 90
    .local v0, "nargs":I
    shl-int/lit8 v1, v0, 0xc

    or-int/2addr v1, v0

    return v1
.end method
