.class public abstract Lgnu/mapping/PropertySet;
.super Ljava/lang/Object;
.source "PropertySet.java"

# interfaces
.implements Lgnu/mapping/Named;


# static fields
.field public static final nameKey:Lgnu/mapping/Symbol;


# instance fields
.field private properties:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setProperty([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .param p0, "properties"    # [Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 61
    move-object v0, p0

    .line 62
    .local v0, "props":[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 64
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    move-object v0, v1

    move-object p0, v1

    .line 65
    const/4 v1, 0x0

    .local v1, "avail":I
    goto :goto_1

    .line 69
    .end local v1    # "avail":I
    :cond_0
    const/4 v1, -0x1

    .line 70
    .restart local v1    # "avail":I
    array-length v2, v0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_3

    .line 72
    aget-object v3, v0, v2

    .line 73
    .local v3, "k":Ljava/lang/Object;
    if-ne v3, p1, :cond_1

    .line 75
    add-int/lit8 v4, v2, 0x1

    aget-object v4, v0, v4

    .line 76
    .local v4, "old":Ljava/lang/Object;
    add-int/lit8 v5, v2, 0x1

    aput-object p2, v0, v5

    .line 77
    return-object p0

    .line 79
    .end local v4    # "old":Ljava/lang/Object;
    :cond_1
    if-nez v3, :cond_2

    .line 80
    move v1, v2

    .line 81
    .end local v3    # "k":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 82
    .end local v2    # "i":I
    :cond_3
    if-gez v1, :cond_4

    .line 84
    array-length v1, v0

    .line 85
    mul-int/lit8 v2, v1, 0x2

    new-array p0, v2, [Ljava/lang/Object;

    .line 86
    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    move-object v0, p0

    .line 90
    :cond_4
    :goto_1
    aput-object p1, v0, v1

    .line 91
    add-int/lit8 v2, v1, 0x1

    aput-object p2, v0, v2

    .line 92
    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 12
    sget-object v0, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/mapping/PropertySet;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    .local v0, "symbol":Ljava/lang/Object;
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    array-length v0, v0

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_1

    .line 39
    iget-object v1, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 40
    iget-object v1, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    return-object v1

    .line 43
    .end local v0    # "i":I
    :cond_1
    return-object p2
.end method

.method public getSymbol()Ljava/lang/Object;
    .locals 2

    .line 20
    sget-object v0, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/mapping/PropertySet;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    .line 98
    .local v0, "props":[Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 99
    return-object v1

    .line 100
    :cond_0
    array-length v2, v0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_2

    .line 102
    aget-object v3, v0, v2

    .line 103
    .local v3, "k":Ljava/lang/Object;
    if-ne v3, p1, :cond_1

    .line 105
    add-int/lit8 v4, v2, 0x1

    aget-object v4, v0, v4

    .line 106
    .local v4, "old":Ljava/lang/Object;
    aput-object v1, v0, v2

    .line 107
    add-int/lit8 v5, v2, 0x1

    aput-object v1, v0, v5

    .line 108
    return-object v4

    .line 110
    .end local v3    # "k":Ljava/lang/Object;
    .end local v4    # "old":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 111
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 30
    sget-object v0, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    invoke-virtual {p0, v0, p1}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public declared-synchronized setProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lgnu/mapping/PropertySet;->setProperty([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/mapping/PropertySet;->properties:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 47
    .end local p0    # "this":Lgnu/mapping/PropertySet;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setSymbol(Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;

    .line 25
    sget-object v0, Lgnu/mapping/PropertySet;->nameKey:Lgnu/mapping/Symbol;

    invoke-virtual {p0, v0, p1}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    return-void
.end method
