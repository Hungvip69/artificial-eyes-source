.class public abstract Lgnu/kawa/util/AbstractWeakHashTable;
.super Lgnu/kawa/util/AbstractHashTable;
.source "AbstractWeakHashTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgnu/kawa/util/AbstractHashTable<",
        "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<",
        "TK;TV;>;TK;TV;>;"
    }
.end annotation


# instance fields
.field rqueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 13
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 24
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    invoke-direct {p0, p1}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 13
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    .line 25
    return-void
.end method

.method static cleanup(Lgnu/kawa/util/AbstractHashTable;Ljava/lang/ref/ReferenceQueue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Entry::",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/kawa/util/AbstractHashTable<",
            "TEntry;**>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "*>;)V"
        }
    .end annotation

    .line 118
    .local p0, "map":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;**>;"
    .local p1, "rqueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<*>;"
    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 119
    .local v0, "oldref":Ljava/util/Map$Entry;, "TEntry;"
    if-nez v0, :cond_0

    .line 120
    nop

    .line 141
    .end local v0    # "oldref":Ljava/util/Map$Entry;, "TEntry;"
    return-void

    .line 121
    .restart local v0    # "oldref":Ljava/util/Map$Entry;, "TEntry;"
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractHashTable;->getEntryHashCode(Ljava/util/Map$Entry;)I

    move-result v1

    invoke-virtual {p0, v1}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v1

    .line 122
    .local v1, "index":I
    const/4 v2, 0x0

    .line 123
    .local v2, "prev":Ljava/util/Map$Entry;, "TEntry;"
    iget-object v3, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aget-object v3, v3, v1

    .line 124
    .local v3, "node":Ljava/util/Map$Entry;, "TEntry;"
    :goto_1
    if-eqz v3, :cond_3

    .line 126
    invoke-virtual {p0, v3}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v4

    .line 127
    .local v4, "next":Ljava/util/Map$Entry;, "TEntry;"
    if-ne v3, v0, :cond_2

    .line 129
    if-nez v2, :cond_1

    .line 130
    iget-object v5, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aput-object v4, v5, v1

    goto :goto_2

    .line 132
    :cond_1
    invoke-virtual {p0, v2, v4}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 133
    goto :goto_2

    .line 135
    :cond_2
    move-object v2, v3

    .line 136
    move-object v3, v4

    .line 137
    .end local v4    # "next":Ljava/util/Map$Entry;, "TEntry;"
    goto :goto_1

    .line 138
    .end local v3    # "node":Ljava/util/Map$Entry;, "TEntry;"
    :cond_3
    :goto_2
    iget v3, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    .line 139
    .end local v0    # "oldref":Ljava/util/Map$Entry;, "TEntry;"
    .end local v1    # "index":I
    .end local v2    # "prev":Ljava/util/Map$Entry;, "TEntry;"
    goto :goto_0
.end method


# virtual methods
.method protected allocEntries(I)[Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 32
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    new-array v0, p1, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    check-cast v0, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    return-object v0
.end method

.method protected bridge synthetic allocEntries(I)[Ljava/util/Map$Entry;
    .locals 1
    .param p1, "x0"    # I

    .line 9
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->allocEntries(I)[Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object v0

    return-object v0
.end method

.method protected cleanup()V
    .locals 1

    .line 108
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    iget-object v0, p0, Lgnu/kawa/util/AbstractWeakHashTable;->rqueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {p0, v0}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup(Lgnu/kawa/util/AbstractHashTable;Ljava/lang/ref/ReferenceQueue;)V

    .line 110
    return-void
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 44
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup()V

    .line 45
    invoke-super {p0, p1, p2}, Lgnu/kawa/util/AbstractHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getEntryHashCode(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 29
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, "entry":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    iget v0, p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->hash:I

    return v0
.end method

.method protected bridge synthetic getEntryHashCode(Ljava/util/Map$Entry;)I
    .locals 1
    .param p1, "x0"    # Ljava/util/Map$Entry;

    .line 9
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractWeakHashTable;->getEntryHashCode(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)I

    move-result v0

    return v0
.end method

.method protected getEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<",
            "TK;TV;>;)",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 30
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, "entry":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    iget-object v0, p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    return-object v0
.end method

.method protected bridge synthetic getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "x0"    # Ljava/util/Map$Entry;

    .line 9
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractWeakHashTable;->getEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TK;"
        }
    .end annotation
.end method

.method protected getValueIfMatching(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, "node":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    invoke-virtual {p1}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "val":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractWeakHashTable;->getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->matches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    return-object v0

    .line 39
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public hash(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 50
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;
    .locals 1
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    invoke-direct {v0, p3, p0, p2}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;-><init>(Ljava/lang/Object;Lgnu/kawa/util/AbstractWeakHashTable;I)V

    return-object v0
.end method

.method protected bridge synthetic makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;

    .line 9
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/util/AbstractWeakHashTable;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup()V

    .line 66
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractWeakHashTable;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 67
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractWeakHashTable;->hashToIndex(I)I

    move-result v1

    .line 68
    .local v1, "index":I
    iget-object v2, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v2, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    aget-object v2, v2, v1

    .line 69
    .local v2, "first":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    move-object v3, v2

    .line 70
    .local v3, "node":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    const/4 v4, 0x0

    .line 71
    .local v4, "prev":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    const/4 v5, 0x0

    .line 74
    .local v5, "oldValue":Ljava/lang/Object;, "TV;"
    :goto_0
    if-nez v3, :cond_1

    .line 76
    iget v6, p0, Lgnu/kawa/util/AbstractWeakHashTable;->num_bindings:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lgnu/kawa/util/AbstractWeakHashTable;->num_bindings:I

    iget-object v7, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v7, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    array-length v7, v7

    if-lt v6, v7, :cond_0

    .line 78
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractWeakHashTable;->rehash()V

    .line 79
    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractWeakHashTable;->hashToIndex(I)I

    move-result v1

    .line 80
    iget-object v6, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v6, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    aget-object v2, v6, v1

    .line 82
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v0, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-result-object v3

    .line 83
    iput-object v2, v3, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    .line 84
    iget-object v6, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v6, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    aput-object v3, v6, v1

    .line 85
    return-object v5

    .line 87
    :cond_1
    invoke-virtual {v3}, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 88
    .local v6, "curValue":Ljava/lang/Object;, "TV;"
    if-ne v6, p2, :cond_2

    .line 89
    return-object v6

    .line 90
    :cond_2
    iget-object v7, v3, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    .line 91
    .local v7, "next":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    if-eqz v6, :cond_4

    invoke-virtual {p0, v6, p2}, Lgnu/kawa/util/AbstractWeakHashTable;->valuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 93
    if-nez v4, :cond_3

    .line 94
    iget-object v8, p0, Lgnu/kawa/util/AbstractWeakHashTable;->table:[Ljava/util/Map$Entry;

    check-cast v8, [Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    aput-object v7, v8, v1

    goto :goto_1

    .line 96
    :cond_3
    iput-object v7, v4, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    .line 97
    :goto_1
    move-object v5, v6

    goto :goto_2

    .line 100
    :cond_4
    move-object v4, v3

    .line 101
    :goto_2
    move-object v3, v7

    .line 102
    .end local v6    # "curValue":Ljava/lang/Object;, "TV;"
    .end local v7    # "next":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    goto :goto_0
.end method

.method protected setEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<",
            "TK;TV;>;",
            "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, "entry":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    .local p2, "next":Lgnu/kawa/util/AbstractWeakHashTable$WEntry;, "Lgnu/kawa/util/AbstractWeakHashTable$WEntry<TK;TV;>;"
    iput-object p2, p1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;->next:Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    return-void
.end method

.method protected bridge synthetic setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V
    .locals 2
    .param p1, "x0"    # Ljava/util/Map$Entry;
    .param p2, "x1"    # Ljava/util/Map$Entry;

    .line 9
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    move-object v1, p2

    check-cast v1, Lgnu/kawa/util/AbstractWeakHashTable$WEntry;

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/util/AbstractWeakHashTable;->setEntryNext(Lgnu/kawa/util/AbstractWeakHashTable$WEntry;Lgnu/kawa/util/AbstractWeakHashTable$WEntry;)V

    return-void
.end method

.method protected valuesEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)Z"
        }
    .end annotation

    .line 55
    .local p0, "this":Lgnu/kawa/util/AbstractWeakHashTable;, "Lgnu/kawa/util/AbstractWeakHashTable<TK;TV;>;"
    .local p1, "oldValue":Ljava/lang/Object;, "TV;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
