.class public final Lcom/google/api/client/util/ClassInfo;
.super Ljava/lang/Object;
.source "ClassInfo.java"


# static fields
.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/api/client/util/ClassInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final CACHE_IGNORE_CASE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/api/client/util/ClassInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final ignoreCase:Z

.field private final nameToFieldInfoMap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/api/client/util/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/util/ClassInfo;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/util/ClassInfo;->CACHE_IGNORE_CASE:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Z)V
    .locals 17
    .param p2, "ignoreCase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 159
    .local p1, "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v3, v0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    .line 160
    iput-object v1, v0, Lcom/google/api/client/util/ClassInfo;->clazz:Ljava/lang/Class;

    .line 161
    iput-boolean v2, v0, Lcom/google/api/client/util/ClassInfo;->ignoreCase:Z

    .line 162
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot ignore case on an enum: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 162
    invoke-static {v5, v6}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 165
    new-instance v5, Ljava/util/TreeSet;

    new-instance v6, Lcom/google/api/client/util/ClassInfo$1;

    invoke-direct {v6, v0}, Lcom/google/api/client/util/ClassInfo$1;-><init>(Lcom/google/api/client/util/ClassInfo;)V

    invoke-direct {v5, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 175
    .local v5, "nameSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_7

    aget-object v9, v6, v8

    .line 176
    .local v9, "field":Ljava/lang/reflect/Field;
    invoke-static {v9}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/reflect/Field;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v10

    .line 177
    .local v10, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    if-nez v10, :cond_2

    .line 178
    const/4 v14, 0x1

    goto :goto_6

    .line 180
    :cond_2
    invoke-virtual {v10}, Lcom/google/api/client/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v11

    .line 181
    .local v11, "fieldName":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 182
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    .line 184
    :cond_3
    iget-object v12, v0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v12, v11}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/api/client/util/FieldInfo;

    .line 185
    .local v12, "conflictingFieldInfo":Lcom/google/api/client/util/FieldInfo;
    if-nez v12, :cond_4

    const/4 v13, 0x1

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    if-eqz v2, :cond_5

    const-string v14, "case-insensitive "

    goto :goto_4

    :cond_5
    const-string v14, ""

    :goto_4
    if-nez v12, :cond_6

    const/4 v15, 0x0

    goto :goto_5

    .line 191
    :cond_6
    invoke-virtual {v12}, Lcom/google/api/client/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v15

    :goto_5
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v14, v4, v3

    const/4 v14, 0x1

    aput-object v11, v4, v14

    const/16 v16, 0x2

    aput-object v9, v4, v16

    const/16 v16, 0x3

    aput-object v15, v4, v16

    .line 185
    const-string v15, "two fields have the same %sname <%s>: %s and %s"

    invoke-static {v13, v15, v4}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v4, v0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v11, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {v5, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v11    # "fieldName":Ljava/lang/String;
    .end local v12    # "conflictingFieldInfo":Lcom/google/api/client/util/FieldInfo;
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 196
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 197
    .local v3, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_9

    .line 198
    invoke-static {v3, v2}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;Z)Lcom/google/api/client/util/ClassInfo;

    move-result-object v4

    .line 199
    .local v4, "superClassInfo":Lcom/google/api/client/util/ClassInfo;
    iget-object v6, v4, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 200
    iget-object v6, v4, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 201
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/api/client/util/FieldInfo;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 202
    .local v8, "name":Ljava/lang/String;
    iget-object v9, v0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v9, v8}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 203
    iget-object v9, v0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/api/client/util/FieldInfo;>;"
    .end local v8    # "name":Ljava/lang/String;
    :cond_8
    goto :goto_7

    .line 207
    .end local v4    # "superClassInfo":Lcom/google/api/client/util/ClassInfo;
    :cond_9
    nop

    .line 208
    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_8

    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 210
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    :goto_8
    iput-object v4, v0, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    .line 211
    return-void
.end method

.method public static of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/api/client/util/ClassInfo;"
        }
    .end annotation

    .line 71
    .local p0, "underlyingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;Z)Lcom/google/api/client/util/ClassInfo;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Class;Z)Lcom/google/api/client/util/ClassInfo;
    .locals 4
    .param p1, "ignoreCase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lcom/google/api/client/util/ClassInfo;"
        }
    .end annotation

    .line 83
    .local p0, "underlyingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 86
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/google/api/client/util/ClassInfo;->CACHE_IGNORE_CASE:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/api/client/util/ClassInfo;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 90
    .local v0, "cache":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Class<*>;Lcom/google/api/client/util/ClassInfo;>;"
    :goto_0
    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/util/ClassInfo;

    move-object v2, v1

    .local v2, "v":Lcom/google/api/client/util/ClassInfo;
    if-nez v1, :cond_2

    new-instance v1, Lcom/google/api/client/util/ClassInfo;

    invoke-direct {v1, p0, p1}, Lcom/google/api/client/util/ClassInfo;-><init>(Ljava/lang/Class;Z)V

    .line 92
    .local v1, "newValue":Lcom/google/api/client/util/ClassInfo;
    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/client/util/ClassInfo;

    move-object v2, v3

    if-nez v3, :cond_2

    goto :goto_1

    .end local v1    # "newValue":Lcom/google/api/client/util/ClassInfo;
    :cond_2
    move-object v1, v2

    .line 90
    :goto_1
    return-object v1
.end method


# virtual methods
.method public getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 138
    invoke-virtual {p0, p1}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v0

    .line 139
    .local v0, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/api/client/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 122
    if-eqz p1, :cond_1

    .line 123
    iget-boolean v0, p0, Lcom/google/api/client/util/ClassInfo;->ignoreCase:Z

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 126
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/FieldInfo;

    return-object v0
.end method

.method public getFieldInfos()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/api/client/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/google/api/client/util/ClassInfo;->nameToFieldInfoMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getIgnoreCase()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/google/api/client/util/ClassInfo;->ignoreCase:Z

    return v0
.end method

.method public getNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/api/client/util/ClassInfo;->names:Ljava/util/List;

    return-object v0
.end method

.method public getUnderlyingClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/google/api/client/util/ClassInfo;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public isEnum()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/api/client/util/ClassInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method
