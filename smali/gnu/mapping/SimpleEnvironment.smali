.class public Lgnu/mapping/SimpleEnvironment;
.super Lgnu/mapping/Environment;
.source "SimpleEnvironment.java"


# instance fields
.field currentTimestamp:I

.field log2Size:I

.field private mask:I

.field num_bindings:I

.field sharedTail:Lgnu/mapping/NamedLocation;

.field table:[Lgnu/mapping/NamedLocation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lgnu/mapping/SimpleEnvironment;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 52
    invoke-direct {p0}, Lgnu/mapping/Environment;-><init>()V

    .line 53
    const/4 v0, 0x4

    iput v0, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    .line 54
    :goto_0
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    if-le p1, v0, :cond_0

    .line 55
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    goto :goto_0

    .line 56
    :cond_0
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    shl-int p1, v1, v0

    .line 57
    new-array v0, p1, [Lgnu/mapping/NamedLocation;

    iput-object v0, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    .line 58
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lgnu/mapping/SimpleEnvironment;->mask:I

    .line 60
    new-instance v0, Lgnu/mapping/PlainLocation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0}, Lgnu/mapping/PlainLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/mapping/SimpleEnvironment;->sharedTail:Lgnu/mapping/NamedLocation;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lgnu/mapping/SimpleEnvironment;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lgnu/mapping/SimpleEnvironment;->setName(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static getCurrentLocation(Ljava/lang/String;)Lgnu/mapping/Location;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    invoke-static {}, Lgnu/mapping/SimpleEnvironment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/Environment;->getLocation(Ljava/lang/Object;Z)Lgnu/mapping/Location;

    move-result-object v0

    return-object v0
.end method

.method public static lookup_global(Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .locals 2
    .param p0, "name"    # Lgnu/mapping/Symbol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/mapping/UnboundLocationException;
        }
    .end annotation

    .line 31
    invoke-static {}, Lgnu/mapping/SimpleEnvironment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;)Lgnu/mapping/Location;

    move-result-object v0

    .line 32
    .local v0, "binding":Lgnu/mapping/Location;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 33
    :cond_0
    new-instance v1, Lgnu/mapping/UnboundLocationException;

    invoke-direct {v1, p0}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;ILgnu/mapping/Location;)Lgnu/mapping/NamedLocation;
    .locals 6
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I
    .param p4, "loc"    # Lgnu/mapping/Location;

    .line 182
    instance-of v0, p4, Lgnu/mapping/ThreadLocation;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lgnu/mapping/ThreadLocation;

    iget-object v0, v0, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 184
    move-object v0, p4

    check-cast v0, Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object p4

    .line 185
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->lookupDirect(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0

    .line 186
    .local v0, "nloc":Lgnu/mapping/NamedLocation;
    if-ne p4, v0, :cond_1

    .line 187
    return-object v0

    .line 188
    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 189
    .local v3, "bound":Z
    :goto_0
    if-nez v3, :cond_3

    .line 190
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0

    .line 191
    :cond_3
    iget v4, p0, Lgnu/mapping/SimpleEnvironment;->flags:I

    const/4 v5, 0x3

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_6

    .line 193
    if-eqz v3, :cond_4

    .line 194
    invoke-virtual {v0}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v3

    .line 198
    :cond_4
    if-eqz v3, :cond_5

    iget v1, p0, Lgnu/mapping/SimpleEnvironment;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    goto :goto_1

    :cond_5
    iget v4, p0, Lgnu/mapping/SimpleEnvironment;->flags:I

    and-int/2addr v1, v4

    if-nez v1, :cond_6

    invoke-virtual {p4}, Lgnu/mapping/Location;->isBound()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 201
    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/SimpleEnvironment;->redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V

    .line 203
    :cond_6
    iget v1, p0, Lgnu/mapping/SimpleEnvironment;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_7

    .line 204
    move-object v1, p0

    check-cast v1, Lgnu/mapping/InheritingEnvironment;

    invoke-virtual {v1, v2}, Lgnu/mapping/InheritingEnvironment;->getParent(I)Lgnu/mapping/Environment;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleEnvironment;

    invoke-virtual {v1, p1, p2, p3, p4}, Lgnu/mapping/SimpleEnvironment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;ILgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    move-result-object v1

    iput-object v1, v0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    goto :goto_2

    .line 206
    :cond_7
    iput-object p4, v0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 207
    :goto_2
    sget-object v1, Lgnu/mapping/IndirectableLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    iput-object v1, v0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 208
    return-object v0
.end method

.method public addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;
    .locals 2
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "loc"    # Lgnu/mapping/Location;

    .line 175
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v0, p3}, Lgnu/mapping/SimpleEnvironment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;ILgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    move-result-object v0

    return-object v0
.end method

.method protected addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 3
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I

    .line 94
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->mask:I

    and-int/2addr v0, p3

    .line 95
    .local v0, "index":I
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/SimpleEnvironment;->newEntry(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v1

    .line 96
    .local v1, "loc":Lgnu/mapping/NamedLocation;
    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 97
    sget-object v2, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    iput-object v2, v1, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 98
    return-object v1
.end method

.method public define(Lgnu/mapping/Symbol;Ljava/lang/Object;ILjava/lang/Object;)Lgnu/mapping/NamedLocation;
    .locals 4
    .param p1, "sym"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I
    .param p4, "newValue"    # Ljava/lang/Object;

    .line 137
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->mask:I

    and-int/2addr v0, p3

    .line 138
    .local v0, "index":I
    iget-object v1, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    aget-object v1, v1, v0

    .line 139
    .local v1, "first":Lgnu/mapping/NamedLocation;
    move-object v2, v1

    .line 142
    .local v2, "loc":Lgnu/mapping/NamedLocation;
    :goto_0
    if-nez v2, :cond_0

    .line 145
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/SimpleEnvironment;->newEntry(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v2

    .line 146
    invoke-virtual {v2, p4}, Lgnu/mapping/NamedLocation;->set(Ljava/lang/Object;)V

    .line 147
    return-object v2

    .line 149
    :cond_0
    invoke-virtual {v2, p1, p2}, Lgnu/mapping/NamedLocation;->matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    invoke-virtual {v2}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->getCanDefine()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->getCanRedefine()Z

    move-result v3

    if-nez v3, :cond_3

    .line 152
    :cond_2
    invoke-virtual {p0, p1, p2, v2}, Lgnu/mapping/SimpleEnvironment;->redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V

    .line 153
    :cond_3
    :goto_1
    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 154
    iput-object p4, v2, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 155
    return-object v2

    .line 157
    :cond_4
    iget-object v2, v2, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    goto :goto_0
.end method

.method public define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "sym"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .line 163
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 164
    .local v0, "hash":I
    invoke-virtual {p0, p1, p2, v0, p3}, Lgnu/mapping/SimpleEnvironment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;ILjava/lang/Object;)Lgnu/mapping/NamedLocation;

    .line 165
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 326
    new-instance v0, Lgnu/mapping/EnvironmentMappings;

    invoke-direct {v0, p0}, Lgnu/mapping/EnvironmentMappings;-><init>(Lgnu/mapping/SimpleEnvironment;)V

    return-object v0
.end method

.method public enumerateAllLocations()Lgnu/mapping/LocationEnumeration;
    .locals 1

    .line 277
    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->enumerateLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public enumerateLocations()Lgnu/mapping/LocationEnumeration;
    .locals 4

    .line 269
    new-instance v0, Lgnu/mapping/LocationEnumeration;

    iget-object v1, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    const/4 v2, 0x1

    iget v3, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    shl-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lgnu/mapping/LocationEnumeration;-><init>([Lgnu/mapping/NamedLocation;I)V

    .line 270
    .local v0, "it":Lgnu/mapping/LocationEnumeration;
    iput-object p0, v0, Lgnu/mapping/LocationEnumeration;->env:Lgnu/mapping/SimpleEnvironment;

    .line 271
    return-object v0
.end method

.method public declared-synchronized getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;
    .locals 2
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I
    .param p4, "create"    # Z

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .local v0, "loc":Lgnu/mapping/NamedLocation;
    if-eqz v0, :cond_0

    .line 85
    monitor-exit p0

    return-object v0

    .line 86
    :cond_0
    if-nez p4, :cond_1

    .line 87
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 88
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 82
    .end local v0    # "loc":Lgnu/mapping/NamedLocation;
    .end local p0    # "this":Lgnu/mapping/SimpleEnvironment;
    .end local p1    # "name":Lgnu/mapping/Symbol;
    .end local p2    # "property":Ljava/lang/Object;
    .end local p3    # "hash":I
    .end local p4    # "create":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z
    .locals 3
    .param p1, "it"    # Lgnu/mapping/LocationEnumeration;

    .line 284
    nop

    :goto_0
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 286
    const/4 v0, 0x0

    iput-object v0, p1, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    .line 287
    iget v0, p1, Lgnu/mapping/LocationEnumeration;->index:I

    sub-int/2addr v0, v1

    iput v0, p1, Lgnu/mapping/LocationEnumeration;->index:I

    if-gez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    return v0

    .line 289
    :cond_0
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    iget v2, p1, Lgnu/mapping/LocationEnumeration;->index:I

    aget-object v0, v0, v2

    iput-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 290
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-nez v0, :cond_1

    .line 291
    goto :goto_0

    .line 293
    :cond_1
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iget-object v0, v0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    if-nez v0, :cond_2

    .line 294
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iget-object v0, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    iput-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    goto :goto_0

    .line 298
    :cond_2
    return v1
.end method

.method public lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 1
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->lookupDirect(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0

    return-object v0
.end method

.method public lookupDirect(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 3
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I

    .line 70
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->mask:I

    and-int/2addr v0, p3

    .line 71
    .local v0, "index":I
    iget-object v1, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    aget-object v1, v1, v0

    .line 72
    .local v1, "loc":Lgnu/mapping/NamedLocation;
    :goto_0
    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v1, p1, p2}, Lgnu/mapping/NamedLocation;->matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    return-object v1

    .line 72
    :cond_0
    iget-object v1, v1, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    goto :goto_0

    .line 77
    .end local v1    # "loc":Lgnu/mapping/NamedLocation;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method newEntry(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .locals 4
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "index"    # I

    .line 124
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/SimpleEnvironment;->newLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/NamedLocation;

    move-result-object v0

    .line 125
    .local v0, "loc":Lgnu/mapping/NamedLocation;
    iget-object v1, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    aget-object v1, v1, p3

    .line 126
    .local v1, "first":Lgnu/mapping/NamedLocation;
    if-nez v1, :cond_0

    iget-object v2, p0, Lgnu/mapping/SimpleEnvironment;->sharedTail:Lgnu/mapping/NamedLocation;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 127
    iget-object v2, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    aput-object v0, v2, p3

    .line 128
    iget v2, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    .line 129
    iget v2, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    iget-object v3, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 130
    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->rehash()V

    .line 131
    :cond_1
    return-object v0
.end method

.method newLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/NamedLocation;
    .locals 2
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;

    .line 116
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lgnu/mapping/SharedLocation;

    iget v1, p0, Lgnu/mapping/SimpleEnvironment;->currentTimestamp:I

    invoke-direct {v0, p1, p2, v1}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Lgnu/mapping/PlainLocation;

    invoke-direct {v0, p1, p2}, Lgnu/mapping/PlainLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    return-object v0
.end method

.method public put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "key"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .line 103
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 104
    .local v0, "create":Z
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/SimpleEnvironment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Z)Lgnu/mapping/NamedLocation;

    move-result-object v1

    .line 105
    .local v1, "loc":Lgnu/mapping/Location;
    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {v1}, Lgnu/mapping/Location;->isConstant()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    invoke-virtual {v1, p3}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 111
    return-void

    .line 108
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempt to modify read-only location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " loc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_2
    new-instance v2, Lgnu/mapping/UnboundLocationException;

    invoke-direct {v2, p1}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;)V

    throw v2
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

    .line 309
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/SimpleEnvironment;->setSymbol(Ljava/lang/Object;)V

    .line 310
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->getName()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lgnu/mapping/SimpleEnvironment;->envTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Environment;

    .line 316
    .local v1, "env":Lgnu/mapping/Environment;
    if-eqz v1, :cond_0

    .line 317
    return-object v1

    .line 318
    :cond_0
    sget-object v2, Lgnu/mapping/SimpleEnvironment;->envTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-object p0
.end method

.method protected redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V
    .locals 3
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "loc"    # Lgnu/mapping/Location;

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prohibited define/redefine of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method rehash()V
    .locals 13

    .line 213
    iget-object v0, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    .line 214
    .local v0, "oldTable":[Lgnu/mapping/NamedLocation;
    array-length v1, v0

    .line 215
    .local v1, "oldCapacity":I
    mul-int/lit8 v2, v1, 0x2

    .line 216
    .local v2, "newCapacity":I
    new-array v3, v2, [Lgnu/mapping/NamedLocation;

    .line 217
    .local v3, "newTable":[Lgnu/mapping/NamedLocation;
    add-int/lit8 v4, v2, -0x1

    .line 218
    .local v4, "newMask":I
    move v5, v1

    .local v5, "i":I
    :goto_0
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_2

    .line 220
    aget-object v6, v0, v5

    .line 221
    .local v6, "element":Lgnu/mapping/NamedLocation;
    :goto_1
    if-eqz v6, :cond_1

    iget-object v7, p0, Lgnu/mapping/SimpleEnvironment;->sharedTail:Lgnu/mapping/NamedLocation;

    if-eq v6, v7, :cond_1

    .line 223
    iget-object v7, v6, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 224
    .local v7, "next":Lgnu/mapping/NamedLocation;
    iget-object v8, v6, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    .line 225
    .local v8, "name":Lgnu/mapping/Symbol;
    iget-object v9, v6, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    .line 226
    .local v9, "property":Ljava/lang/Object;
    invoke-virtual {v8}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v10

    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    xor-int/2addr v10, v11

    .line 227
    .local v10, "hash":I
    and-int v11, v10, v4

    .line 228
    .local v11, "j":I
    aget-object v12, v3, v11

    .line 229
    .local v12, "head":Lgnu/mapping/NamedLocation;
    if-nez v12, :cond_0

    .line 230
    iget-object v12, p0, Lgnu/mapping/SimpleEnvironment;->sharedTail:Lgnu/mapping/NamedLocation;

    .line 231
    :cond_0
    iput-object v12, v6, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 232
    aput-object v6, v3, v11

    .line 233
    move-object v6, v7

    .line 234
    .end local v7    # "next":Lgnu/mapping/NamedLocation;
    .end local v8    # "name":Lgnu/mapping/Symbol;
    .end local v9    # "property":Ljava/lang/Object;
    .end local v10    # "hash":I
    .end local v11    # "j":I
    .end local v12    # "head":Lgnu/mapping/NamedLocation;
    goto :goto_1

    .end local v6    # "element":Lgnu/mapping/NamedLocation;
    :cond_1
    goto :goto_0

    .line 236
    .end local v5    # "i":I
    :cond_2
    iput-object v3, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    .line 237
    iget v5, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    .line 238
    iput v4, p0, Lgnu/mapping/SimpleEnvironment;->mask:I

    .line 239
    return-void
.end method

.method public size()I
    .locals 1

    .line 21
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    return v0
.end method

.method protected toStringBase(Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 338
    return-void
.end method

.method public toStringVerbose()Ljava/lang/String;
    .locals 3

    .line 332
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 333
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lgnu/mapping/SimpleEnvironment;->toStringBase(Ljava/lang/StringBuffer;)V

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#<environment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgnu/mapping/SimpleEnvironment;->currentTimestamp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unlink(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/Location;
    .locals 5
    .param p1, "symbol"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I

    .line 243
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->mask:I

    and-int/2addr v0, p3

    .line 244
    .local v0, "index":I
    const/4 v1, 0x0

    .line 245
    .local v1, "prev":Lgnu/mapping/NamedLocation;
    iget-object v2, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    aget-object v2, v2, v0

    .line 246
    .local v2, "loc":Lgnu/mapping/NamedLocation;
    :goto_0
    if-eqz v2, :cond_3

    .line 248
    iget-object v3, v2, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 249
    .local v3, "next":Lgnu/mapping/NamedLocation;
    invoke-virtual {v2, p1, p2}, Lgnu/mapping/NamedLocation;->matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 251
    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->getCanRedefine()Z

    move-result v4

    if-nez v4, :cond_0

    .line 252
    invoke-virtual {p0, p1, p2, v2}, Lgnu/mapping/SimpleEnvironment;->redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V

    .line 253
    :cond_0
    if-nez v1, :cond_1

    .line 254
    iget-object v4, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    aput-object v3, v4, v0

    goto :goto_1

    .line 256
    :cond_1
    iput-object v2, v1, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 257
    :goto_1
    iget v4, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    .line 258
    return-object v2

    .line 260
    :cond_2
    move-object v1, v2

    .line 261
    move-object v2, v3

    .line 262
    .end local v3    # "next":Lgnu/mapping/NamedLocation;
    goto :goto_0

    .line 263
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 304
    return-void
.end method
