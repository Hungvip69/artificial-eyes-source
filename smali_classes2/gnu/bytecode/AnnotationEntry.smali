.class public Lgnu/bytecode/AnnotationEntry;
.super Ljava/lang/Object;
.source "AnnotationEntry.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# instance fields
.field annotationType:Lgnu/bytecode/ClassType;

.field elementsValue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public addMember(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lgnu/bytecode/AnnotationEntry;->annotationType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 47
    instance-of v0, p1, Lgnu/bytecode/AnnotationEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    return v1

    .line 49
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/AnnotationEntry;

    .line 50
    .local v0, "other":Lgnu/bytecode/AnnotationEntry;
    invoke-virtual {p0}, Lgnu/bytecode/AnnotationEntry;->getAnnotationType()Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lgnu/bytecode/AnnotationEntry;->getAnnotationType()Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    return v1

    .line 52
    :cond_1
    iget-object v2, p0, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 54
    .local v3, "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 55
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 56
    .local v5, "value1":Ljava/lang/Object;
    iget-object v6, v0, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 57
    .local v6, "value2":Ljava/lang/Object;
    if-eq v5, v6, :cond_3

    .line 59
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 61
    :cond_2
    return v1

    .line 63
    .end local v3    # "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value1":Ljava/lang/Object;
    .end local v6    # "value2":Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 64
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v2, v0, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 66
    .restart local v3    # "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 67
    .restart local v4    # "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 68
    .local v5, "value2":Ljava/lang/Object;
    iget-object v6, p0, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 69
    .local v6, "value1":Ljava/lang/Object;
    if-eq v6, v5, :cond_6

    .line 71
    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 73
    :cond_5
    return v1

    .line 75
    .end local v3    # "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value2":Ljava/lang/Object;
    .end local v6    # "value1":Ljava/lang/Object;
    :cond_6
    goto :goto_1

    .line 76
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    const/4 v1, 0x1

    return v1
.end method

.method public getAnnotationType()Lgnu/bytecode/ClassType;
    .locals 1

    .line 22
    iget-object v0, p0, Lgnu/bytecode/AnnotationEntry;->annotationType:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 81
    const/4 v0, 0x0

    .line 84
    .local v0, "hash":I
    iget-object v1, p0, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 86
    .local v2, "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 87
    .local v3, "khash":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 88
    .local v4, "vhash":I
    mul-int/lit8 v5, v3, 0x7f

    xor-int/2addr v5, v4

    add-int/2addr v0, v5

    .line 89
    .end local v2    # "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "khash":I
    .end local v4    # "vhash":I
    goto :goto_0

    .line 90
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Lgnu/bytecode/AnnotationEntry;->getAnnotationType()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, "count":I
    iget-object v2, p0, Lgnu/bytecode/AnnotationEntry;->elementsValue:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 102
    .local v3, "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-lez v1, :cond_0

    .line 103
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    nop

    .end local v3    # "it":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v1, v1, 0x1

    .line 108
    goto :goto_0

    .line 109
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
