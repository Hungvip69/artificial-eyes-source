.class public Lkawa/lang/ListPat;
.super Lkawa/lang/Pattern;
.source "ListPat.java"


# instance fields
.field default_value:Ljava/lang/Object;

.field max_length:I

.field min_length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "len"    # I

    .line 15
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    iput p1, p0, Lkawa/lang/ListPat;->min_length:I

    iput p1, p0, Lkawa/lang/ListPat;->max_length:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 16
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    iput p1, p0, Lkawa/lang/ListPat;->min_length:I

    iput p2, p0, Lkawa/lang/ListPat;->max_length:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "default_val"    # Ljava/lang/Object;

    .line 18
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    iput p1, p0, Lkawa/lang/ListPat;->min_length:I

    iput p2, p0, Lkawa/lang/ListPat;->max_length:I

    iput-object p3, p0, Lkawa/lang/ListPat;->default_value:Ljava/lang/Object;

    return-void
.end method

.method public static match(IILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 4
    .param p0, "min"    # I
    .param p1, "max"    # I
    .param p2, "default_val"    # Ljava/lang/Object;
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "vars"    # [Ljava/lang/Object;
    .param p5, "start_vars"    # I

    .line 24
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    if-ge v0, p1, :cond_1

    .line 26
    instance-of v2, p3, Lgnu/lists/Pair;

    if-eqz v2, :cond_0

    .line 28
    move-object v1, p3

    check-cast v1, Lgnu/lists/Pair;

    .line 29
    .local v1, "p":Lgnu/lists/Pair;
    add-int v2, p5, v0

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p4, v2

    .line 30
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p3

    .line 31
    .end local v1    # "p":Lgnu/lists/Pair;
    nop

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    if-ge v0, p0, :cond_1

    .line 33
    return v1

    .line 37
    :cond_1
    if-ne v0, p1, :cond_2

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p3, v2, :cond_2

    .line 38
    return v1

    .line 39
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_3

    .line 40
    add-int v1, p5, v0

    aput-object p2, p4, v1

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public static match(IILjava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .param p0, "min"    # I
    .param p1, "max"    # I
    .param p2, "default_val"    # Ljava/lang/Object;
    .param p3, "obj"    # Ljava/lang/Object;

    .line 55
    new-array v6, p1, [Ljava/lang/Object;

    .line 56
    .local v6, "vars":[Ljava/lang/Object;
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Lkawa/lang/ListPat;->match(IILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vars"    # [Ljava/lang/Object;
    .param p3, "start_vars"    # I

    .line 69
    iget v0, p0, Lkawa/lang/ListPat;->min_length:I

    iget v1, p0, Lkawa/lang/ListPat;->max_length:I

    iget-object v2, p0, Lkawa/lang/ListPat;->default_value:Ljava/lang/Object;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lkawa/lang/ListPat;->match(IILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 77
    const-string v0, "#<list-pattern min:"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lkawa/lang/ListPat;->min_length:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 79
    const-string v0, " max:"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lkawa/lang/ListPat;->max_length:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 81
    const-string v0, " default:"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lkawa/lang/ListPat;->default_value:Ljava/lang/Object;

    invoke-static {v0, p1}, Lgnu/text/ReportFormat;->print(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 83
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 84
    return-void
.end method

.method public varCount()I
    .locals 1

    .line 73
    iget v0, p0, Lkawa/lang/ListPat;->max_length:I

    return v0
.end method
