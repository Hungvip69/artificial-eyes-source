.class public Lgnu/math/NamedUnit;
.super Lgnu/math/Unit;
.source "NamedUnit.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field base:Lgnu/math/Unit;

.field chain:Lgnu/math/NamedUnit;

.field name:Ljava/lang/String;

.field scale:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lgnu/math/Unit;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DLgnu/math/Unit;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "factor"    # D
    .param p4, "base"    # Lgnu/math/Unit;

    .line 38
    invoke-direct {p0}, Lgnu/math/Unit;-><init>()V

    .line 39
    iput-object p1, p0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    .line 41
    iput-wide p2, p0, Lgnu/math/NamedUnit;->scale:D

    .line 42
    invoke-virtual {p0}, Lgnu/math/NamedUnit;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/math/DQuantity;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lgnu/math/DQuantity;

    .line 30
    invoke-direct {p0}, Lgnu/math/Unit;-><init>()V

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    .line 32
    iget-wide v0, p2, Lgnu/math/DQuantity;->factor:D

    iput-wide v0, p0, Lgnu/math/NamedUnit;->scale:D

    .line 33
    iget-object v0, p2, Lgnu/math/DQuantity;->unt:Lgnu/math/Unit;

    iput-object v0, p0, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    .line 34
    invoke-virtual {p0}, Lgnu/math/NamedUnit;->init()V

    .line 35
    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lgnu/math/NamedUnit;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 62
    .local v0, "hash":I
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    sget-object v2, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    array-length v2, v2

    rem-int/2addr v1, v2

    .line 63
    .local v1, "index":I
    sget-object v2, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    aget-object v2, v2, v1

    .local v2, "unit":Lgnu/math/NamedUnit;
    :goto_0
    if-eqz v2, :cond_1

    .line 65
    iget-object v3, v2, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    if-ne v3, p0, :cond_0

    .line 66
    return-object v2

    .line 63
    :cond_0
    iget-object v2, v2, Lgnu/math/NamedUnit;->chain:Lgnu/math/NamedUnit;

    goto :goto_0

    .line 68
    .end local v2    # "unit":Lgnu/math/NamedUnit;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static lookup(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/NamedUnit;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "scale"    # D
    .param p3, "base"    # Lgnu/math/Unit;

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 75
    .local v0, "hash":I
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    sget-object v2, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    array-length v2, v2

    rem-int/2addr v1, v2

    .line 76
    .local v1, "index":I
    sget-object v2, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    aget-object v2, v2, v1

    .local v2, "unit":Lgnu/math/NamedUnit;
    :goto_0
    if-eqz v2, :cond_1

    .line 78
    iget-object v3, v2, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    if-ne v3, p0, :cond_0

    iget-wide v3, v2, Lgnu/math/NamedUnit;->scale:D

    cmpl-double v5, v3, p1

    if-nez v5, :cond_0

    iget-object v3, v2, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    if-ne v3, p3, :cond_0

    .line 79
    return-object v2

    .line 76
    :cond_0
    iget-object v2, v2, Lgnu/math/NamedUnit;->chain:Lgnu/math/NamedUnit;

    goto :goto_0

    .line 81
    .end local v2    # "unit":Lgnu/math/NamedUnit;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static make(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/NamedUnit;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "scale"    # D
    .param p3, "base"    # Lgnu/math/Unit;

    .line 86
    invoke-static {p0, p1, p2, p3}, Lgnu/math/NamedUnit;->lookup(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/NamedUnit;

    move-result-object v0

    .line 87
    .local v0, "old":Lgnu/math/NamedUnit;
    if-nez v0, :cond_0

    new-instance v1, Lgnu/math/NamedUnit;

    invoke-direct {v1, p0, p1, p2, p3}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;DLgnu/math/Unit;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static make(Ljava/lang/String;Lgnu/math/Quantity;)Lgnu/math/NamedUnit;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Lgnu/math/Quantity;

    .line 93
    instance-of v0, p1, Lgnu/math/DQuantity;

    if-eqz v0, :cond_0

    .line 94
    move-object v0, p1

    check-cast v0, Lgnu/math/DQuantity;

    iget-wide v0, v0, Lgnu/math/DQuantity;->factor:D

    .local v0, "scale":D
    goto :goto_0

    .line 95
    .end local v0    # "scale":D
    :cond_0
    invoke-virtual {p1}, Lgnu/math/Quantity;->imValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    .line 99
    invoke-virtual {p1}, Lgnu/math/Quantity;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    .line 100
    .restart local v0    # "scale":D
    :goto_0
    invoke-virtual {p1}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v2

    .line 101
    .local v2, "base":Lgnu/math/Unit;
    invoke-static {p0, v0, v1, v2}, Lgnu/math/NamedUnit;->lookup(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/NamedUnit;

    move-result-object v3

    .line 102
    .local v3, "old":Lgnu/math/NamedUnit;
    if-nez v3, :cond_1

    new-instance v4, Lgnu/math/NamedUnit;

    invoke-direct {v4, p0, v0, v1, v2}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;DLgnu/math/Unit;)V

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    return-object v4

    .line 96
    .end local v0    # "scale":D
    .end local v2    # "base":Lgnu/math/Unit;
    .end local v3    # "old":Lgnu/math/NamedUnit;
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defining "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " using complex value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 4

    .line 47
    iget-wide v0, p0, Lgnu/math/NamedUnit;->scale:D

    iget-object v2, p0, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    iget-wide v2, v2, Lgnu/math/Unit;->factor:D

    mul-double v0, v0, v2

    iput-wide v0, p0, Lgnu/math/NamedUnit;->factor:D

    .line 48
    iget-object v0, p0, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    iget-object v0, v0, Lgnu/math/Unit;->dims:Lgnu/math/Dimensions;

    iput-object v0, p0, Lgnu/math/NamedUnit;->dims:Lgnu/math/Dimensions;

    .line 49
    iget-object v0, p0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 51
    .local v0, "hash":I
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    sget-object v2, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    array-length v2, v2

    rem-int/2addr v1, v2

    .line 52
    .local v1, "index":I
    sget-object v2, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    aget-object v2, v2, v1

    iput-object v2, p0, Lgnu/math/NamedUnit;->chain:Lgnu/math/NamedUnit;

    .line 53
    sget-object v2, Lgnu/math/NamedUnit;->table:[Lgnu/math/NamedUnit;

    aput-object p0, v2, v1

    .line 54
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 120
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    .line 121
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/NamedUnit;->scale:D

    .line 122
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/Unit;

    iput-object v0, p0, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    .line 123
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    iget-wide v1, p0, Lgnu/math/NamedUnit;->scale:D

    iget-object v3, p0, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    invoke-static {v0, v1, v2, v3}, Lgnu/math/NamedUnit;->lookup(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/NamedUnit;

    move-result-object v0

    .line 128
    .local v0, "unit":Lgnu/math/NamedUnit;
    if-eqz v0, :cond_0

    .line 129
    return-object v0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lgnu/math/NamedUnit;->init()V

    .line 131
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lgnu/math/NamedUnit;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 113
    iget-wide v0, p0, Lgnu/math/NamedUnit;->scale:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 114
    iget-object v0, p0, Lgnu/math/NamedUnit;->base:Lgnu/math/Unit;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 115
    return-void
.end method
