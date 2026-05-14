.class public Lkawa/lang/ListRepeatPat;
.super Lkawa/lang/Pattern;
.source "ListRepeatPat.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# instance fields
.field element_pattern:Lkawa/lang/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Lkawa/lang/Pattern;)V
    .locals 0
    .param p1, "element_pattern"    # Lkawa/lang/Pattern;

    .line 15
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    .line 16
    iput-object p1, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    .line 17
    return-void
.end method

.method public static make(Lkawa/lang/Pattern;)Lkawa/lang/ListRepeatPat;
    .locals 1
    .param p0, "element_pattern"    # Lkawa/lang/Pattern;

    .line 21
    new-instance v0, Lkawa/lang/ListRepeatPat;

    invoke-direct {v0, p0}, Lkawa/lang/ListRepeatPat;-><init>(Lkawa/lang/Pattern;)V

    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vars"    # [Ljava/lang/Object;
    .param p3, "start_vars"    # I

    .line 40
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v1

    .line 41
    .local v1, "length":I
    if-gez v1, :cond_0

    .line 42
    return v0

    .line 44
    :cond_0
    iget-object v2, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    invoke-virtual {v2}, Lkawa/lang/Pattern;->varCount()I

    move-result v2

    .line 45
    .local v2, "var_count":I
    move v3, v2

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    .line 46
    add-int v4, p3, v3

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v5, p2, v4

    goto :goto_0

    .line 47
    .end local v3    # "i":I
    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    .line 48
    .local v3, "element_vars":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 50
    move-object v5, p1

    check-cast v5, Lgnu/lists/Pair;

    .line 58
    .local v5, "pair":Lgnu/lists/Pair;
    iget-object v6, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v3, v0}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 59
    return v0

    .line 60
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v2, :cond_3

    .line 61
    add-int v7, p3, v6

    aget-object v7, p2, v7

    check-cast v7, [Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    aget-object v8, v3, v6

    aput-object v8, v7, v4

    .line 60
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 62
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 48
    .end local v5    # "pair":Lgnu/lists/Pair;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 64
    .end local v4    # "j":I
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 26
    const-string v0, "#<list-repeat-pattern "

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    invoke-virtual {v0, p1}, Lkawa/lang/Pattern;->print(Lgnu/lists/Consumer;)V

    .line 28
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 29
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 80
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkawa/lang/Pattern;

    iput-object v0, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    .line 81
    return-void
.end method

.method public varCount()I
    .locals 1

    .line 67
    iget-object v0, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    invoke-virtual {v0}, Lkawa/lang/Pattern;->varCount()I

    move-result v0

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lkawa/lang/ListRepeatPat;->element_pattern:Lkawa/lang/Pattern;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 75
    return-void
.end method
