.class public Lcom/google/api/client/util/GenericData;
.super Ljava/util/AbstractMap;
.source "GenericData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/GenericData$EntryIterator;,
        Lcom/google/api/client/util/GenericData$EntrySet;,
        Lcom/google/api/client/util/GenericData$Flags;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field final classInfo:Lcom/google/api/client/util/ClassInfo;

.field unknownFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    const-class v0, Lcom/google/api/client/util/GenericData$Flags;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/util/GenericData;-><init>(Ljava/util/EnumSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/google/api/client/util/GenericData$Flags;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p1, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/google/api/client/util/GenericData$Flags;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 46
    invoke-static {}, Lcom/google/api/client/util/ArrayMap;->create()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/GenericData;->unknownFields:Ljava/util/Map;

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/google/api/client/util/GenericData$Flags;->IGNORE_CASE:Lcom/google/api/client/util/GenericData$Flags;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;Z)Lcom/google/api/client/util/ClassInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    .line 75
    return-void
.end method


# virtual methods
.method public clone()Lcom/google/api/client/util/GenericData;
    .locals 2

    .line 164
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/GenericData;

    .line 165
    .local v0, "result":Lcom/google/api/client/util/GenericData;
    invoke-static {p0, v0}, Lcom/google/api/client/util/Data;->deepCopy(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    iget-object v1, p0, Lcom/google/api/client/util/GenericData;->unknownFields:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/api/client/util/Data;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iput-object v1, v0, Lcom/google/api/client/util/GenericData;->unknownFields:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-object v0

    .line 168
    .end local v0    # "result":Lcom/google/api/client/util/GenericData;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/google/api/client/util/GenericData;->clone()Lcom/google/api/client/util/GenericData;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 153
    new-instance v0, Lcom/google/api/client/util/GenericData$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/GenericData$EntrySet;-><init>(Lcom/google/api/client/util/GenericData;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 193
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 194
    return v0

    .line 196
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Lcom/google/api/client/util/GenericData;

    if-nez v2, :cond_1

    goto :goto_1

    .line 199
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/api/client/util/GenericData;

    .line 200
    .local v2, "that":Lcom/google/api/client/util/GenericData;
    invoke-super {p0, v2}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    iget-object v4, v2, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 197
    .end local v2    # "that":Lcom/google/api/client/util/GenericData;
    :cond_3
    :goto_1
    return v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/Object;

    .line 79
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 83
    .local v0, "fieldName":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-virtual {v1, v0}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v1

    .line 84
    .local v1, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {v1, p0}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-virtual {v2}, Lcom/google/api/client/util/ClassInfo;->getIgnoreCase()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/google/api/client/util/GenericData;->unknownFields:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public final getClassInfo()Lcom/google/api/client/util/ClassInfo;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    return-object v0
.end method

.method public final getUnknownKeys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/google/api/client/util/GenericData;->unknownFields:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 205
    invoke-super {p0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/util/GenericData;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v0

    .line 96
    .local v0, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p0}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 98
    .local v1, "oldValue":Ljava/lang/Object;
    invoke-virtual {v0, p0, p2}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    return-object v1

    .line 101
    .end local v1    # "oldValue":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-virtual {v1}, Lcom/google/api/client/util/ClassInfo;->getIgnoreCase()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/google/api/client/util/GenericData;->unknownFields:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 130
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;*>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 131
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 132
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;*>;"
    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/Object;

    .line 137
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 141
    .local v0, "fieldName":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-virtual {v1, v0}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v1

    .line 142
    .local v1, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    if-nez v1, :cond_2

    .line 145
    iget-object v2, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-virtual {v2}, Lcom/google/api/client/util/ClassInfo;->getIgnoreCase()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/google/api/client/util/GenericData;->unknownFields:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 143
    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v0

    .line 117
    .local v0, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p0, p2}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    invoke-virtual {v1}, Lcom/google/api/client/util/ClassInfo;->getIgnoreCase()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/google/api/client/util/GenericData;->unknownFields:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :goto_0
    return-object p0
.end method

.method public final setUnknownKeys(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 188
    .local p1, "unknownFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/google/api/client/util/GenericData;->unknownFields:Ljava/util/Map;

    .line 189
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GenericData{classInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/util/GenericData;->classInfo:Lcom/google/api/client/util/ClassInfo;

    iget-object v1, v1, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/util/AbstractMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
