.class public Lgnu/bytecode/Variable;
.super Lgnu/bytecode/Location;
.source "Variable.java"

# interfaces
.implements Ljava/util/Enumeration;


# static fields
.field private static final LIVE_FLAG:I = 0x4

.field private static final PARAMETER_FLAG:I = 0x2

.field private static final SIMPLE_FLAG:I = 0x1

.field static final UNASSIGNED:I = -0x1


# instance fields
.field private flags:I

.field next:Lgnu/bytecode/Variable;

.field offset:I

.field scope:Lgnu/bytecode/Scope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lgnu/bytecode/Location;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lgnu/bytecode/Variable;->flags:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/Variable;->offset:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Lgnu/bytecode/Location;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lgnu/bytecode/Variable;->flags:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/Variable;->offset:I

    .line 27
    invoke-virtual {p0, p1}, Lgnu/bytecode/Variable;->setName(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/bytecode/Type;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lgnu/bytecode/Type;

    .line 31
    invoke-direct {p0}, Lgnu/bytecode/Location;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lgnu/bytecode/Variable;->flags:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/Variable;->offset:I

    .line 32
    invoke-virtual {p0, p1}, Lgnu/bytecode/Variable;->setName(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p2}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 34
    return-void
.end method

.method private setFlag(ZI)V
    .locals 2
    .param p1, "setting"    # Z
    .param p2, "flag"    # I

    .line 57
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/bytecode/Variable;->flags:I

    or-int/2addr v0, p2

    iput v0, p0, Lgnu/bytecode/Variable;->flags:I

    goto :goto_0

    .line 58
    :cond_0
    iget v0, p0, Lgnu/bytecode/Variable;->flags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lgnu/bytecode/Variable;->flags:I

    .line 59
    :goto_0
    return-void
.end method


# virtual methods
.method public allocateLocal(Lgnu/bytecode/CodeAttr;)V
    .locals 2
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 124
    iget v0, p0, Lgnu/bytecode/Variable;->offset:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 125
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 128
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/Variable;->reserveLocal(ILgnu/bytecode/CodeAttr;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    return-void

    .line 126
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final dead()Z
    .locals 1

    .line 53
    iget v0, p0, Lgnu/bytecode/Variable;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public freeLocal(Lgnu/bytecode/CodeAttr;)V
    .locals 4
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 135
    iget v0, p0, Lgnu/bytecode/Variable;->flags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgnu/bytecode/Variable;->flags:I

    .line 136
    invoke-virtual {p0}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    iget v0, v0, Lgnu/bytecode/Type;->size:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 137
    .local v0, "size":I
    :goto_0
    iget v1, p0, Lgnu/bytecode/Variable;->offset:I

    add-int/2addr v1, v0

    .local v1, "vnum":I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lgnu/bytecode/Variable;->offset:I

    if-lt v1, v2, :cond_2

    .line 139
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v2, v2, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 140
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    .line 141
    .local v2, "local_types":[Lgnu/bytecode/Type;
    if-eqz v2, :cond_1

    .line 142
    aput-object v3, v2, v1

    .line 143
    .end local v2    # "local_types":[Lgnu/bytecode/Type;
    :cond_1
    goto :goto_1

    .line 144
    .end local v1    # "vnum":I
    :cond_2
    return-void
.end method

.method public final hasMoreElements()Z
    .locals 1

    .line 13
    iget-object v0, p0, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isAssigned()Z
    .locals 2

    .line 49
    iget v0, p0, Lgnu/bytecode/Variable;->offset:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isParameter()Z
    .locals 1

    .line 77
    iget v0, p0, Lgnu/bytecode/Variable;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSimple()Z
    .locals 2

    .line 69
    iget v0, p0, Lgnu/bytecode/Variable;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    .line 16
    iget-object v0, p0, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    return-object v0

    .line 17
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Variable enumeration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextVar()Lgnu/bytecode/Variable;
    .locals 1

    .line 12
    iget-object v0, p0, Lgnu/bytecode/Variable;->next:Lgnu/bytecode/Variable;

    return-object v0
.end method

.method public reserveLocal(ILgnu/bytecode/CodeAttr;)Z
    .locals 5
    .param p1, "varIndex"    # I
    .param p2, "code"    # Lgnu/bytecode/CodeAttr;

    .line 90
    invoke-virtual {p0}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getSizeInWords()I

    move-result v0

    .line 91
    .local v0, "size":I
    iget-object v1, p2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v1, v1, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 92
    iget-object v1, p2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    add-int/lit8 v3, v0, 0x14

    new-array v3, v3, [Lgnu/bytecode/Variable;

    iput-object v3, v1, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->getMaxLocals()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v3, p2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v3, v3, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 94
    iget-object v1, p2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v1, v1, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    new-array v1, v1, [Lgnu/bytecode/Variable;

    .line 95
    .local v1, "new_locals":[Lgnu/bytecode/Variable;
    iget-object v3, p2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v3, v3, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->getMaxLocals()I

    move-result v4

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iget-object v3, p2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iput-object v1, v3, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    .line 98
    .end local v1    # "new_locals":[Lgnu/bytecode/Variable;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 100
    iget-object v3, p2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v3, v3, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    add-int v4, p1, v1

    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    .line 101
    return v2

    .line 98
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    .end local v1    # "j":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_2
    if-ge v1, v0, :cond_4

    .line 104
    iget-object v3, p2, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v3, v3, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    add-int v4, p1, v1

    aput-object p0, v3, v4

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 105
    .end local v1    # "j":I
    :cond_4
    add-int v1, p1, v0

    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->getMaxLocals()I

    move-result v3

    if-le v1, v3, :cond_5

    .line 106
    add-int v1, p1, v0

    invoke-virtual {p2, v1}, Lgnu/bytecode/CodeAttr;->setMaxLocals(I)V

    .line 107
    :cond_5
    iput p1, p0, Lgnu/bytecode/Variable;->offset:I

    .line 108
    iget v1, p0, Lgnu/bytecode/Variable;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lgnu/bytecode/Variable;->flags:I

    .line 109
    iget v1, p0, Lgnu/bytecode/Variable;->offset:I

    if-nez v1, :cond_6

    .line 113
    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "<init>"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 114
    iget-object v1, p2, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 116
    :cond_6
    const/4 v1, 0x1

    return v1
.end method

.method public final setParameter(Z)V
    .locals 1
    .param p1, "parameter"    # Z

    .line 82
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/Variable;->setFlag(ZI)V

    .line 83
    return-void
.end method

.method public final setSimple(Z)V
    .locals 1
    .param p1, "simple"    # Z

    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/Variable;->setFlag(ZI)V

    return-void
.end method

.method shouldEmit()Z
    .locals 5

    .line 148
    iget-object v0, p0, Lgnu/bytecode/Variable;->scope:Lgnu/bytecode/Scope;

    .line 151
    .local v0, "sc":Lgnu/bytecode/Scope;
    invoke-virtual {p0}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/bytecode/Variable;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    move-object v2, v1

    .local v2, "start":Lgnu/bytecode/Label;
    if-eqz v1, :cond_0

    iget v1, v2, Lgnu/bytecode/Label;->position:I

    move v3, v1

    .local v3, "pos":I
    if-ltz v1, :cond_0

    iget-object v1, v0, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    move-object v4, v1

    .local v4, "end":Lgnu/bytecode/Label;
    if-eqz v1, :cond_0

    iget v1, v4, Lgnu/bytecode/Label;->position:I

    if-le v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local v2    # "start":Lgnu/bytecode/Label;
    .end local v3    # "pos":I
    .end local v4    # "end":Lgnu/bytecode/Label;
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Variable["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/bytecode/Variable;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
