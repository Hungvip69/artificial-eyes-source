.class public abstract Lcom/google/api/client/json/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static cachedTypemapFields:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/json/JsonParser;->cachedTypemapFields:Ljava/util/WeakHashMap;

    .line 69
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/google/api/client/json/JsonParser;->lock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCachedTypemapFieldFor(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 915
    .local p0, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, p0

    if-nez v1, :cond_0

    .line 916
    const/4 v0, 0x0

    return-object v0

    .line 918
    :cond_0
    sget-object v0, Lcom/google/api/client/json/JsonParser;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 922
    :try_start_0
    sget-object v0, Lcom/google/api/client/json/JsonParser;->cachedTypemapFields:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 923
    sget-object v0, Lcom/google/api/client/json/JsonParser;->cachedTypemapFields:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    sget-object v2, Lcom/google/api/client/json/JsonParser;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 923
    return-object v0

    .line 926
    :cond_1
    const/4 v0, 0x0

    .line 927
    .local v0, "value":Ljava/lang/reflect/Field;
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/util/ClassInfo;->getFieldInfos()Ljava/util/Collection;

    move-result-object v2

    .line 928
    .local v2, "fieldInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/api/client/util/FieldInfo;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/client/util/FieldInfo;

    .line 929
    .local v4, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    invoke-virtual {v4}, Lcom/google/api/client/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v5

    .line 930
    .local v5, "field":Ljava/lang/reflect/Field;
    const-class v6, Lcom/google/api/client/json/JsonPolymorphicTypeMap;

    .line 931
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/google/api/client/json/JsonPolymorphicTypeMap;

    .line 932
    .local v6, "typemapAnnotation":Lcom/google/api/client/json/JsonPolymorphicTypeMap;
    if-eqz v6, :cond_5

    .line 933
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    const-string v10, "Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s"

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v1, v11, v8

    invoke-static {v9, v10, v11}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 937
    nop

    .line 938
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v9

    const-string v10, "Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s"

    .line 941
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v1, v12, v8

    aput-object v11, v12, v7

    .line 937
    invoke-static {v9, v10, v12}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 942
    move-object v0, v5

    .line 944
    invoke-interface {v6}, Lcom/google/api/client/json/JsonPolymorphicTypeMap;->typeDefinitions()[Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;

    move-result-object v9

    .line 945
    .local v9, "typeDefs":[Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    invoke-static {}, Lcom/google/api/client/util/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v10

    .line 946
    .local v10, "typeDefKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v11, v9

    if-lez v11, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    const-string v12, "@JsonPolymorphicTypeMap must have at least one @TypeDef"

    invoke-static {v11, v12}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 948
    array-length v11, v9

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_4

    aget-object v13, v9, v12

    .line 949
    .local v13, "typeDef":Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    nop

    .line 950
    invoke-interface {v13}, Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;->key()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "Class contains two @TypeDef annotations with identical key: %s"

    .line 952
    invoke-interface {v13}, Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;->key()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v0

    .end local v0    # "value":Ljava/lang/reflect/Field;
    .local v17, "value":Ljava/lang/reflect/Field;
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v16, v0, v8

    .line 949
    invoke-static {v14, v15, v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 948
    .end local v13    # "typeDef":Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v17

    goto :goto_3

    .end local v17    # "value":Ljava/lang/reflect/Field;
    .restart local v0    # "value":Ljava/lang/reflect/Field;
    :cond_4
    move-object/from16 v17, v0

    .line 955
    .end local v4    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "typemapAnnotation":Lcom/google/api/client/json/JsonPolymorphicTypeMap;
    .end local v9    # "typeDefs":[Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    .end local v10    # "typeDefKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_5
    goto :goto_0

    .line 956
    :cond_6
    sget-object v3, Lcom/google/api/client/json/JsonParser;->cachedTypemapFields:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 957
    nop

    .line 959
    sget-object v3, Lcom/google/api/client/json/JsonParser;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 957
    return-object v0

    .line 959
    .end local v0    # "value":Ljava/lang/reflect/Field;
    .end local v2    # "fieldInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/api/client/util/FieldInfo;>;"
    :catchall_0
    move-exception v0

    sget-object v2, Lcom/google/api/client/json/JsonParser;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 960
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private parse(Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .locals 19
    .param p2, "destination"    # Ljava/lang/Object;
    .param p3, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    .local p1, "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    instance-of v0, v8, Lcom/google/api/client/json/GenericJson;

    if-eqz v0, :cond_0

    .line 414
    move-object v0, v8

    check-cast v0, Lcom/google/api/client/json/GenericJson;

    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/GenericJson;->setFactory(Lcom/google/api/client/json/JsonFactory;)V

    .line 416
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->startParsingObjectOrArray()Lcom/google/api/client/json/JsonToken;

    move-result-object v6

    .line 417
    .local v6, "curToken":Lcom/google/api/client/json/JsonToken;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 418
    .local v10, "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v10}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v11

    .line 419
    .local v11, "classInfo":Lcom/google/api/client/util/ClassInfo;
    const-class v0, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v0, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    .line 420
    .local v12, "isGenericData":Z
    if-nez v12, :cond_1

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    move-object v13, v8

    check-cast v13, Ljava/util/Map;

    .line 425
    .local v13, "destinationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    nop

    .line 428
    invoke-static {v10}, Lcom/google/api/client/util/Types;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 425
    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object v2, v13

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/json/JsonParser;->parseMap(Ljava/lang/reflect/Field;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 431
    return-void

    .line 433
    .end local v13    # "destinationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    move-object v13, v6

    .end local v6    # "curToken":Lcom/google/api/client/json/JsonToken;
    .local v13, "curToken":Lcom/google/api/client/json/JsonToken;
    :goto_0
    sget-object v0, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-ne v13, v0, :cond_8

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v14

    .line 435
    .local v14, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    .line 437
    if-eqz v9, :cond_2

    invoke-virtual {v9, v8, v14}, Lcom/google/api/client/json/CustomizeJsonParser;->stopAt(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    return-void

    .line 441
    :cond_2
    invoke-virtual {v11, v14}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v15

    .line 442
    .local v15, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    if-eqz v15, :cond_5

    .line 444
    invoke-virtual {v15}, Lcom/google/api/client/util/FieldInfo;->isFinal()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v15}, Lcom/google/api/client/util/FieldInfo;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 445
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "final array/object fields are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_4
    :goto_1
    invoke-virtual {v15}, Lcom/google/api/client/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v16

    .line 448
    .local v16, "field":Ljava/lang/reflect/Field;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 449
    .local v6, "contextSize":I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    nop

    .line 452
    invoke-virtual {v15}, Lcom/google/api/client/util/FieldInfo;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 451
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v18, v10

    move v10, v6

    .end local v6    # "contextSize":I
    .local v10, "contextSize":I
    .local v18, "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/json/JsonParser;->parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;Z)Ljava/lang/Object;

    move-result-object v0

    .line 453
    .local v0, "fieldValue":Ljava/lang/Object;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 454
    invoke-virtual {v15, v8, v0}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 455
    .end local v0    # "fieldValue":Ljava/lang/Object;
    .end local v10    # "contextSize":I
    .end local v16    # "field":Ljava/lang/reflect/Field;
    goto :goto_2

    .end local v18    # "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v10, "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    move-object/from16 v18, v10

    .end local v10    # "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v12, :cond_6

    .line 457
    move-object v10, v8

    check-cast v10, Lcom/google/api/client/util/GenericData;

    .line 458
    .local v10, "object":Lcom/google/api/client/util/GenericData;
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/json/JsonParser;->parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v14, v0}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 459
    .end local v10    # "object":Lcom/google/api/client/util/GenericData;
    goto :goto_2

    .line 461
    :cond_6
    if-eqz v9, :cond_7

    .line 462
    invoke-virtual {v9, v8, v14}, Lcom/google/api/client/json/CustomizeJsonParser;->handleUnrecognizedKey(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->skipChildren()Lcom/google/api/client/json/JsonParser;

    .line 466
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v13

    .line 467
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    move-object/from16 v10, v18

    goto/16 :goto_0

    .line 468
    .end local v18    # "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v10, "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    return-void
.end method

.method private parseArray(Ljava/lang/reflect/Field;Ljava/util/Collection;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .locals 9
    .param p1, "fieldContext"    # Ljava/lang/reflect/Field;
    .param p3, "destinationItemType"    # Ljava/lang/reflect/Type;
    .param p5, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    .local p2, "destinationCollection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p4, "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;->startParsingObjectOrArray()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 637
    .local v0, "curToken":Lcom/google/api/client/json/JsonToken;
    :goto_0
    sget-object v1, Lcom/google/api/client/json/JsonToken;->END_ARRAY:Lcom/google/api/client/json/JsonToken;

    if-eq v0, v1, :cond_0

    .line 639
    nop

    .line 641
    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/google/api/client/json/JsonParser;->parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;Z)Ljava/lang/Object;

    move-result-object v1

    .line 648
    .local v1, "parsedValue":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 650
    .end local v1    # "parsedValue":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 651
    :cond_0
    return-void
.end method

.method private parseMap(Ljava/lang/reflect/Field;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .locals 10
    .param p1, "fieldContext"    # Ljava/lang/reflect/Field;
    .param p3, "valueType"    # Ljava/lang/reflect/Type;
    .param p5, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 670
    .local p2, "destinationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;->startParsingObjectOrArray()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 671
    .local v0, "curToken":Lcom/google/api/client/json/JsonToken;
    :goto_0
    sget-object v1, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-ne v0, v1, :cond_1

    .line 672
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 673
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    .line 675
    if-eqz p5, :cond_0

    invoke-virtual {p5, p2, v1}, Lcom/google/api/client/json/CustomizeJsonParser;->stopAt(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 676
    return-void

    .line 678
    :cond_0
    nop

    .line 679
    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p2

    move-object v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/google/api/client/json/JsonParser;->parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;Z)Ljava/lang/Object;

    move-result-object v2

    .line 680
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 682
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 683
    :cond_1
    return-void
.end method

.method private final parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;Z)Ljava/lang/Object;
    .locals 24
    .param p1, "fieldContext"    # Ljava/lang/reflect/Field;
    .param p2, "valueType"    # Ljava/lang/reflect/Type;
    .param p4, "destination"    # Ljava/lang/Object;
    .param p5, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .param p6, "handlePolymorphic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 706
    .local p3, "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v12

    .line 708
    .end local p2    # "valueType":Ljava/lang/reflect/Type;
    .local v12, "valueType":Ljava/lang/reflect/Type;
    instance-of v0, v12, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v12

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 709
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    instance-of v2, v12, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    .line 710
    move-object v2, v12

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v2}, Lcom/google/api/client/util/Types;->getRawClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    move-object v13, v0

    goto :goto_1

    .line 709
    :cond_1
    move-object v13, v0

    .line 713
    .end local v0    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v13, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const-class v0, Ljava/lang/Void;

    if-ne v13, v0, :cond_2

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->skipChildren()Lcom/google/api/client/json/JsonParser;

    .line 715
    return-object v1

    .line 718
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v14

    .line 720
    .local v14, "token":Lcom/google/api/client/json/JsonToken;
    :try_start_0
    sget-object v0, Lcom/google/api/client/json/JsonParser$1;->$SwitchMap$com$google$api$client$json$JsonToken:[I

    invoke-virtual {v14}, Lcom/google/api/client/json/JsonToken;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 885
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_1c

    .line 871
    :pswitch_0
    if-eqz v13, :cond_3

    .line 872
    invoke-virtual {v13}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    const-string v0, "primitive number field but found a JSON null"

    .line 871
    invoke-static {v2, v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 874
    if-eqz v13, :cond_6

    .line 875
    invoke-virtual {v13}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x600

    if-eqz v0, :cond_6

    .line 876
    const-class v0, Ljava/util/Collection;

    invoke-static {v13, v0}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 877
    invoke-static {v12}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 879
    :cond_5
    const-class v0, Ljava/util/Map;

    invoke-static {v13, v0}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 880
    invoke-static {v13}, Lcom/google/api/client/util/Data;->newMapInstance(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 883
    :cond_6
    invoke-static {v9, v12}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 856
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "text":Ljava/lang/String;
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v13, v1, :cond_7

    const-class v1, Ljava/lang/Float;

    if-eq v13, v1, :cond_7

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v13, v1, :cond_7

    const-class v1, Ljava/lang/Double;

    if-ne v13, v1, :cond_8

    :cond_7
    const-string v1, "nan"

    .line 862
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "-infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 863
    :cond_8
    if-eqz v13, :cond_a

    const-class v1, Ljava/lang/Number;

    .line 865
    invoke-virtual {v1, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v8, :cond_9

    const-class v1, Lcom/google/api/client/json/JsonString;

    .line 866
    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    goto :goto_3

    :cond_a
    :goto_2
    const/4 v2, 0x1

    :goto_3
    const-string v1, "number field formatted as a JSON string must use the @JsonString annotation"

    .line 863
    invoke-static {v2, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 869
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/google/api/client/util/Data;->parsePrimitiveValue(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 826
    .end local v0    # "text":Ljava/lang/String;
    :pswitch_2
    if-eqz v8, :cond_c

    const-class v0, Lcom/google/api/client/json/JsonString;

    .line 827
    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_c
    const/4 v2, 0x1

    :cond_d
    const-string v0, "number type formatted as a JSON number cannot use @JsonString annotation"

    .line 826
    invoke-static {v2, v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 829
    if-eqz v13, :cond_1c

    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_a

    .line 832
    :cond_e
    const-class v0, Ljava/math/BigInteger;

    if-ne v13, v0, :cond_f

    .line 833
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 835
    :cond_f
    const-class v0, Ljava/lang/Double;

    if-eq v13, v0, :cond_1b

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v13, v0, :cond_10

    goto/16 :goto_9

    .line 838
    :cond_10
    const-class v0, Ljava/lang/Long;

    if-eq v13, v0, :cond_1a

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v13, v0, :cond_11

    goto :goto_8

    .line 841
    :cond_11
    const-class v0, Ljava/lang/Float;

    if-eq v13, v0, :cond_19

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v13, v0, :cond_12

    goto :goto_7

    .line 844
    :cond_12
    const-class v0, Ljava/lang/Integer;

    if-eq v13, v0, :cond_18

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v13, v0, :cond_13

    goto :goto_6

    .line 847
    :cond_13
    const-class v0, Ljava/lang/Short;

    if-eq v13, v0, :cond_17

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v13, v0, :cond_14

    goto :goto_5

    .line 850
    :cond_14
    const-class v0, Ljava/lang/Byte;

    if-eq v13, v0, :cond_16

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v13, v0, :cond_15

    goto :goto_4

    .line 853
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected numeric type but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v12    # "valueType":Ljava/lang/reflect/Type;
    .end local v13    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "token":Lcom/google/api/client/json/JsonToken;
    .end local p1    # "fieldContext":Ljava/lang/reflect/Field;
    .end local p3    # "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    .end local p4    # "destination":Ljava/lang/Object;
    .end local p5    # "customizeParser":Lcom/google/api/client/json/CustomizeJsonParser;
    .end local p6    # "handlePolymorphic":Z
    throw v0

    .line 851
    .restart local v12    # "valueType":Ljava/lang/reflect/Type;
    .restart local v13    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "token":Lcom/google/api/client/json/JsonToken;
    .restart local p1    # "fieldContext":Ljava/lang/reflect/Field;
    .restart local p3    # "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    .restart local p4    # "destination":Ljava/lang/Object;
    .restart local p5    # "customizeParser":Lcom/google/api/client/json/CustomizeJsonParser;
    .restart local p6    # "handlePolymorphic":Z
    :cond_16
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getByteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 848
    :cond_17
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getShortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 845
    :cond_18
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 842
    :cond_19
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getFloatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 839
    :cond_1a
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getLongValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 836
    :cond_1b
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 830
    :cond_1c
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 817
    :pswitch_3
    if-eqz v12, :cond_1e

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v13, v0, :cond_1e

    if-eqz v13, :cond_1d

    const-class v0, Ljava/lang/Boolean;

    .line 820
    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_b

    :cond_1d
    const/4 v0, 0x0

    goto :goto_c

    :cond_1e
    :goto_b
    const/4 v0, 0x1

    :goto_c
    const-string v1, "expected type Boolean or boolean but got %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v12, v3, v2

    .line 817
    invoke-static {v0, v1, v3}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 823
    sget-object v0, Lcom/google/api/client/json/JsonToken;->VALUE_TRUE:Lcom/google/api/client/json/JsonToken;

    if-ne v14, v0, :cond_1f

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_d

    :cond_1f
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_d
    return-object v0

    .line 723
    :pswitch_4
    invoke-static {v12}, Lcom/google/api/client/util/Types;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v0

    .line 724
    .local v0, "isArray":Z
    if-eqz v12, :cond_21

    if-nez v0, :cond_21

    if-eqz v13, :cond_20

    const-class v1, Ljava/util/Collection;

    .line 727
    invoke-static {v13, v1}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_e

    :cond_20
    const/4 v1, 0x0

    goto :goto_f

    :cond_21
    :goto_e
    const/4 v1, 0x1

    :goto_f
    const-string v4, "expected collection or array type but got %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v12, v3, v2

    .line 724
    invoke-static {v1, v4, v3}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 730
    const/4 v1, 0x0

    .line 731
    .local v1, "collectionValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    if-eqz v11, :cond_22

    if-eqz v8, :cond_22

    .line 732
    invoke-virtual {v11, v10, v8}, Lcom/google/api/client/json/CustomizeJsonParser;->newInstanceForArray(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/util/Collection;

    move-result-object v2

    move-object v1, v2

    .line 734
    :cond_22
    if-nez v1, :cond_23

    .line 735
    invoke-static {v12}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v2

    move-object v1, v2

    move-object v7, v1

    goto :goto_10

    .line 734
    :cond_23
    move-object v7, v1

    .line 737
    .end local v1    # "collectionValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .local v7, "collectionValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :goto_10
    const/4 v1, 0x0

    .line 738
    .local v1, "subType":Ljava/lang/reflect/Type;
    if-eqz v0, :cond_24

    .line 739
    invoke-static {v12}, Lcom/google/api/client/util/Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v1, v2

    goto :goto_11

    .line 740
    :cond_24
    if-eqz v13, :cond_25

    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 741
    invoke-static {v12}, Lcom/google/api/client/util/Types;->getIterableParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v1, v2

    .line 743
    :cond_25
    :goto_11
    invoke-static {v9, v1}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v15, v2

    .line 744
    .end local v1    # "subType":Ljava/lang/reflect/Type;
    .local v15, "subType":Ljava/lang/reflect/Type;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move-object v4, v15

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/lang/reflect/Field;Ljava/util/Collection;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 745
    if-eqz v0, :cond_26

    .line 746
    invoke-static {v9, v15}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/google/api/client/util/Types;->toArray(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 748
    :cond_26
    return-object v7

    .line 752
    .end local v0    # "isArray":Z
    .end local v7    # "collectionValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v15    # "subType":Ljava/lang/reflect/Type;
    :pswitch_5
    nop

    .line 753
    invoke-static {v12}, Lcom/google/api/client/util/Types;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_12

    :cond_27
    const/4 v0, 0x0

    :goto_12
    const-string v4, "expected object or map type but got %s"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v12, v5, v2

    .line 752
    invoke-static {v0, v4, v5}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 755
    if-eqz p6, :cond_28

    invoke-static {v13}, Lcom/google/api/client/json/JsonParser;->getCachedTypemapFieldFor(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_13

    :cond_28
    move-object v0, v1

    .line 756
    .local v0, "typemapField":Ljava/lang/reflect/Field;
    :goto_13
    const/4 v4, 0x0

    .line 757
    .local v4, "newInstance":Ljava/lang/Object;
    if-eqz v13, :cond_29

    if-eqz v11, :cond_29

    .line 758
    invoke-virtual {v11, v10, v13}, Lcom/google/api/client/json/CustomizeJsonParser;->newInstanceForObject(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 760
    :cond_29
    if-eqz v13, :cond_2a

    const-class v5, Ljava/util/Map;

    invoke-static {v13, v5}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v5, 0x1

    goto :goto_14

    :cond_2a
    const/4 v5, 0x0

    :goto_14
    move v15, v5

    .line 761
    .local v15, "isMap":Z
    if-eqz v0, :cond_2b

    .line 762
    new-instance v5, Lcom/google/api/client/json/GenericJson;

    invoke-direct {v5}, Lcom/google/api/client/json/GenericJson;-><init>()V

    move-object v4, v5

    move-object v7, v4

    goto :goto_16

    .line 763
    :cond_2b
    if-nez v4, :cond_2e

    .line 765
    if-nez v15, :cond_2d

    if-nez v13, :cond_2c

    goto :goto_15

    .line 768
    :cond_2c
    invoke-static {v13}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    move-object v7, v4

    goto :goto_16

    .line 766
    :cond_2d
    :goto_15
    invoke-static {v13}, Lcom/google/api/client/util/Data;->newMapInstance(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v5

    move-object v4, v5

    move-object v7, v4

    goto :goto_16

    .line 763
    :cond_2e
    move-object v7, v4

    .line 771
    .end local v4    # "newInstance":Ljava/lang/Object;
    .local v7, "newInstance":Ljava/lang/Object;
    :goto_16
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v4

    .line 772
    .local v6, "contextSize":I
    if-eqz v12, :cond_2f

    .line 773
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_2f
    if-eqz v15, :cond_32

    const-class v4, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v4, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 776
    const-class v4, Ljava/util/Map;

    .line 777
    invoke-virtual {v4, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 778
    invoke-static {v12}, Lcom/google/api/client/util/Types;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    :cond_30
    move-object/from16 v16, v1

    .line 780
    .local v16, "subValueType":Ljava/lang/reflect/Type;
    if-eqz v16, :cond_31

    .line 782
    move-object v3, v7

    check-cast v3, Ljava/util/Map;

    .line 783
    .local v3, "destinationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, v16

    move-object/from16 v5, p3

    move v10, v6

    .end local v6    # "contextSize":I
    .local v10, "contextSize":I
    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/api/client/json/JsonParser;->parseMap(Ljava/lang/reflect/Field;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 784
    return-object v7

    .line 780
    .end local v3    # "destinationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "contextSize":I
    .restart local v6    # "contextSize":I
    :cond_31
    move v10, v6

    .end local v6    # "contextSize":I
    .restart local v10    # "contextSize":I
    goto :goto_17

    .line 775
    .end local v10    # "contextSize":I
    .end local v16    # "subValueType":Ljava/lang/reflect/Type;
    .restart local v6    # "contextSize":I
    :cond_32
    move v10, v6

    .line 787
    .end local v6    # "contextSize":I
    .restart local v10    # "contextSize":I
    :goto_17
    move-object/from16 v6, p0

    invoke-direct {v6, v9, v7, v11}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 788
    if-eqz v12, :cond_33

    .line 789
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 791
    :cond_33
    if-nez v0, :cond_34

    .line 792
    return-object v7

    .line 796
    :cond_34
    move-object v1, v7

    check-cast v1, Lcom/google/api/client/json/GenericJson;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/api/client/json/GenericJson;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    .line 797
    .local v16, "typeValueObject":Ljava/lang/Object;
    if-eqz v16, :cond_35

    const/4 v1, 0x1

    goto :goto_18

    :cond_35
    const/4 v1, 0x0

    :goto_18
    const-string v4, "No value specified for @JsonPolymorphicTypeMap field"

    invoke-static {v1, v4}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 799
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 800
    .local v5, "typeValue":Ljava/lang/String;
    const-class v1, Lcom/google/api/client/json/JsonPolymorphicTypeMap;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/json/JsonPolymorphicTypeMap;

    move-object/from16 v17, v1

    .line 801
    .local v17, "typeMap":Lcom/google/api/client/json/JsonPolymorphicTypeMap;
    const/4 v1, 0x0

    .line 802
    .local v1, "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface/range {v17 .. v17}, Lcom/google/api/client/json/JsonPolymorphicTypeMap;->typeDefinitions()[Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;

    move-result-object v4

    array-length v2, v4

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_37

    aget-object v19, v4, v3

    .line 803
    .local v19, "typeDefinition":Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    move-object/from16 v20, v0

    .end local v0    # "typemapField":Ljava/lang/reflect/Field;
    .local v20, "typemapField":Ljava/lang/reflect/Field;
    invoke-interface/range {v19 .. v19}, Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 804
    invoke-interface/range {v19 .. v19}, Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;->ref()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .line 805
    goto :goto_1a

    .line 802
    .end local v19    # "typeDefinition":Lcom/google/api/client/json/JsonPolymorphicTypeMap$TypeDef;
    :cond_36
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v20

    goto :goto_19

    .end local v20    # "typemapField":Ljava/lang/reflect/Field;
    .restart local v0    # "typemapField":Ljava/lang/reflect/Field;
    :cond_37
    move-object/from16 v20, v0

    .end local v0    # "typemapField":Ljava/lang/reflect/Field;
    .restart local v20    # "typemapField":Ljava/lang/reflect/Field;
    move-object v0, v1

    .line 808
    .end local v1    # "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1a
    if-eqz v0, :cond_38

    const/4 v2, 0x1

    goto :goto_1b

    :cond_38
    const/4 v2, 0x0

    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No TypeDef annotation found with key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 810
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v1

    move-object v4, v1

    .line 812
    .local v4, "factory":Lcom/google/api/client/json/JsonFactory;
    invoke-virtual {v4, v7}, Lcom/google/api/client/json/JsonFactory;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;

    move-result-object v1

    .line 813
    .local v1, "parser":Lcom/google/api/client/json/JsonParser;
    invoke-direct {v1}, Lcom/google/api/client/json/JsonParser;->startParsing()Lcom/google/api/client/json/JsonToken;

    .line 814
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v2, p1

    move-object v3, v0

    move-object/from16 v22, v4

    .end local v4    # "factory":Lcom/google/api/client/json/JsonFactory;
    .local v22, "factory":Lcom/google/api/client/json/JsonFactory;
    move-object/from16 v4, p3

    move-object/from16 v23, v5

    .end local v5    # "typeValue":Ljava/lang/String;
    .local v23, "typeValue":Ljava/lang/String;
    move-object/from16 v5, v21

    move-object/from16 v6, v18

    move-object/from16 v18, v7

    .end local v7    # "newInstance":Ljava/lang/Object;
    .local v18, "newInstance":Ljava/lang/Object;
    move/from16 v7, v19

    invoke-direct/range {v1 .. v7}, Lcom/google/api/client/json/JsonParser;->parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;Z)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 885
    .end local v0    # "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "parser":Lcom/google/api/client/json/JsonParser;
    .end local v10    # "contextSize":I
    .end local v15    # "isMap":Z
    .end local v16    # "typeValueObject":Ljava/lang/Object;
    .end local v17    # "typeMap":Lcom/google/api/client/json/JsonPolymorphicTypeMap;
    .end local v18    # "newInstance":Ljava/lang/Object;
    .end local v20    # "typemapField":Ljava/lang/reflect/Field;
    .end local v22    # "factory":Lcom/google/api/client/json/JsonFactory;
    .end local v23    # "typeValue":Ljava/lang/String;
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected JSON node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v12    # "valueType":Ljava/lang/reflect/Type;
    .end local v13    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "token":Lcom/google/api/client/json/JsonToken;
    .end local p1    # "fieldContext":Ljava/lang/reflect/Field;
    .end local p3    # "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    .end local p4    # "destination":Ljava/lang/Object;
    .end local p5    # "customizeParser":Lcom/google/api/client/json/CustomizeJsonParser;
    .end local p6    # "handlePolymorphic":Z
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 887
    .restart local v12    # "valueType":Ljava/lang/reflect/Type;
    .restart local v13    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v14    # "token":Lcom/google/api/client/json/JsonToken;
    .restart local p1    # "fieldContext":Ljava/lang/reflect/Field;
    .restart local p3    # "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    .restart local p4    # "destination":Ljava/lang/Object;
    .restart local p5    # "customizeParser":Lcom/google/api/client/json/CustomizeJsonParser;
    .restart local p6    # "handlePolymorphic":Z
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 890
    .local v1, "contextStringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/json/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 891
    .local v2, "currentName":Ljava/lang/String;
    if-eqz v2, :cond_39

    .line 892
    const-string v3, "key "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    :cond_39
    if-eqz v8, :cond_3b

    .line 895
    if-eqz v2, :cond_3a

    .line 896
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    :cond_3a
    const-string v3, "field "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 900
    :cond_3b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    :goto_1d
    throw v3

    :goto_1e
    goto :goto_1d

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startParsing()Lcom/google/api/client/json/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 212
    .local v0, "currentToken":Lcom/google/api/client/json/JsonToken;
    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 215
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "no JSON input found"

    invoke-static {v1, v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 216
    return-object v0
.end method

.method private startParsingObjectOrArray()Lcom/google/api/client/json/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;->startParsing()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 231
    .local v0, "currentToken":Lcom/google/api/client/json/JsonToken;
    sget-object v1, Lcom/google/api/client/json/JsonParser$1;->$SwitchMap$com$google$api$client$json$JsonToken:[I

    invoke-virtual {v0}, Lcom/google/api/client/json/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 239
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 240
    goto :goto_2

    .line 233
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 234
    sget-object v1, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 237
    nop

    .line 244
    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBigIntegerValue()Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getByteValue()B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCurrentName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCurrentToken()Lcom/google/api/client/json/JsonToken;
.end method

.method public abstract getDecimalValue()Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDoubleValue()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFactory()Lcom/google/api/client/json/JsonFactory;
.end method

.method public abstract getFloatValue()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getIntValue()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getLongValue()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getShortValue()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getText()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract nextToken()Lcom/google/api/client/json/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final parse(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    .local p1, "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    .locals 1
    .param p2, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    .local p1, "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/reflect/Type;ZLcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    .line 319
    .local v0, "result":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public parse(Ljava/lang/reflect/Type;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "dataType"    # Ljava/lang/reflect/Type;
    .param p2, "close"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/reflect/Type;ZLcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/reflect/Type;ZLcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    .locals 8
    .param p1, "dataType"    # Ljava/lang/reflect/Type;
    .param p2, "close"    # Z
    .param p3, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    :try_start_0
    const-class v0, Ljava/lang/Void;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;->startParsing()Lcom/google/api/client/json/JsonToken;

    .line 360
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/api/client/json/JsonParser;->parseValue(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    if-eqz p2, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    .line 360
    :cond_1
    return-object v0

    .line 362
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_2

    .line 363
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    .line 365
    :cond_2
    throw v0
.end method

.method public final parse(Ljava/lang/Object;)V
    .locals 1
    .param p1, "destination"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 380
    return-void
.end method

.method public final parse(Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .locals 2
    .param p1, "destination"    # Ljava/lang/Object;
    .param p2, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v0, "context":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-direct {p0, v0, p1, p2}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/util/ArrayList;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 400
    return-void
.end method

.method public final parseAndClose(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    .local p1, "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/json/JsonParser;->parseAndClose(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final parseAndClose(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    .locals 1
    .param p2, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    .local p1, "destinationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    .line 162
    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    .line 165
    throw v0
.end method

.method public final parseAndClose(Ljava/lang/Object;)V
    .locals 1
    .param p1, "destination"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/api/client/json/JsonParser;->parseAndClose(Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 259
    return-void
.end method

.method public final parseAndClose(Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .locals 1
    .param p1, "destination"    # Ljava/lang/Object;
    .param p2, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    .line 279
    nop

    .line 280
    return-void

    .line 278
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    .line 279
    throw v0
.end method

.method public final parseArray(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    .local p1, "destinationCollectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final parseArray(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/util/Collection;
    .locals 1
    .param p3, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    .local p1, "destinationCollectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    nop

    .line 580
    invoke-static {p1}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    .line 581
    .local v0, "destinationCollection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 582
    return-object v0
.end method

.method public final parseArray(Ljava/util/Collection;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "-TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 596
    .local p1, "destinationCollection":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 597
    return-void
.end method

.method public final parseArray(Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .locals 6
    .param p3, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "-TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 615
    .local p1, "destinationCollection":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/lang/reflect/Field;Ljava/util/Collection;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 617
    return-void
.end method

.method public final parseArrayAndClose(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    .local p1, "destinationCollectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/api/client/json/JsonParser;->parseArrayAndClose(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final parseArrayAndClose(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/util/Collection;
    .locals 1
    .param p3, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    .local p1, "destinationCollectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    .line 503
    return-object v0

    .line 505
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    .line 506
    throw v0
.end method

.method public final parseArrayAndClose(Ljava/util/Collection;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "-TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    .local p1, "destinationCollection":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/api/client/json/JsonParser;->parseArrayAndClose(Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 522
    return-void
.end method

.method public final parseArrayAndClose(Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .locals 1
    .param p3, "customizeParser"    # Lcom/google/api/client/json/CustomizeJsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "-TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    .local p1, "destinationCollection":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    .local p2, "destinationItemClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/json/JsonParser;->parseArray(Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    .line 544
    nop

    .line 545
    return-void

    .line 543
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->close()V

    .line 544
    throw v0
.end method

.method public abstract skipChildren()Lcom/google/api/client/json/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final skipToKey(Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    .local p1, "keysToFind":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;->startParsingObjectOrArray()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 196
    .local v0, "curToken":Lcom/google/api/client/json/JsonToken;
    :goto_0
    sget-object v1, Lcom/google/api/client/json/JsonToken;->FIELD_NAME:Lcom/google/api/client/json/JsonToken;

    if-ne v0, v1, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    .line 199
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    return-object v1

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->skipChildren()Lcom/google/api/client/json/JsonParser;

    .line 203
    invoke-virtual {p0}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v0

    .line 204
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 205
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public final skipToKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyToFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/json/JsonParser;->skipToKey(Ljava/util/Set;)Ljava/lang/String;

    .line 180
    return-void
.end method
