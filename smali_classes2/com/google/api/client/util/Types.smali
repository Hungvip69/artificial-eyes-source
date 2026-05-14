.class public Lcom/google/api/client/util/Types;
.super Ljava/lang/Object;
.source "Types.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActualParameterAtPosition(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;
    .locals 4
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 316
    .local p1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcom/google/api/client/util/Types;->getSuperParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 317
    .local v0, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    if-nez v0, :cond_0

    .line 318
    const/4 v1, 0x0

    return-object v1

    .line 320
    :cond_0
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, p2

    .line 323
    .local v1, "valueType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_1

    .line 324
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    invoke-static {v2, v3}, Lcom/google/api/client/util/Types;->resolveTypeVariable(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 325
    .local v2, "resolve":Ljava/lang/reflect/Type;
    if-eqz v2, :cond_1

    .line 326
    return-object v2

    .line 329
    .end local v2    # "resolve":Ljava/lang/reflect/Type;
    :cond_1
    return-object v1
.end method

.method public static getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "array"    # Ljava/lang/reflect/Type;

    .line 180
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 181
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 182
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0
.end method

.method public static getBound(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;
    .locals 3
    .param p0, "wildcardType"    # Ljava/lang/reflect/WildcardType;

    .line 203
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 204
    .local v0, "lowerBounds":[Ljava/lang/reflect/Type;
    array-length v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 205
    aget-object v1, v0, v2

    return-object v1

    .line 207
    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static getIterableParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2
    .param p0, "iterableType"    # Ljava/lang/reflect/Type;

    .line 299
    const-class v0, Ljava/lang/Iterable;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/api/client/util/Types;->getActualParameterAtPosition(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2
    .param p0, "mapType"    # Ljava/lang/reflect/Type;

    .line 312
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/api/client/util/Types;->getActualParameterAtPosition(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 3
    .param p1, "componentType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 271
    .local p0, "context":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Type;>;"
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 272
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, v0}, Lcom/google/api/client/util/Types;->resolveTypeVariable(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 274
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 275
    invoke-static {p1}, Lcom/google/api/client/util/Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 276
    .local v0, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 278
    .end local v0    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 279
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 281
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    .line 282
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Lcom/google/api/client/util/Types;->getRawClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 284
    :cond_3
    const/4 v0, 0x1

    if-nez p1, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string v1, "wildcard type is not supported: %s"

    invoke-static {v2, v1, v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 286
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public static getRawClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;
    .locals 1
    .param p0, "parameterType"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 193
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static getSuperParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/ParameterizedType;
    .locals 8
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .line 54
    .local p1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v0, p0, Ljava/lang/Class;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_6

    .line 56
    :cond_0
    :goto_0
    if-eqz p0, :cond_6

    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_6

    .line 58
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 60
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_3

    .line 63
    .end local v0    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 64
    .local v0, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v0}, Lcom/google/api/client/util/Types;->getRawClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v1

    .line 66
    .local v1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v1, p1, :cond_2

    .line 68
    return-object v0

    .line 70
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 71
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 73
    .local v5, "interfaceType":Ljava/lang/reflect/Type;
    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, Ljava/lang/Class;

    goto :goto_2

    :cond_3
    move-object v6, v5

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    .line 76
    invoke-static {v6}, Lcom/google/api/client/util/Types;->getRawClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v6

    :goto_2
    nop

    .line 77
    .local v6, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 78
    move-object p0, v5

    .line 79
    goto :goto_0

    .line 71
    .end local v5    # "interfaceType":Ljava/lang/reflect/Type;
    .end local v6    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 85
    .end local v0    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_5
    move-object v0, v1

    .end local v1    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 86
    .end local v0    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 88
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method private static handleExceptionForNewInstance(Ljava/lang/Exception;Ljava/lang/Class;)Ljava/lang/IllegalArgumentException;
    .locals 6
    .param p0, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/IllegalArgumentException;"
        }
    .end annotation

    .line 123
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to create new instance of class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    .local v0, "buf":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v1, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const-string v2, "because it is an array"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    const-string v2, "because it is primitive"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 130
    :cond_1
    const-class v2, Ljava/lang/Void;

    if-ne p1, v2, :cond_2

    .line 131
    const-string v2, "because it is void"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    const-string v2, "because it is an interface"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 136
    const-string v2, "because it is abstract"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 139
    const-string v2, "because it is not static"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 143
    const-string v2, "possibly because it is not public"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :cond_6
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_1

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e1":Ljava/lang/NoSuchMethodException;
    const-string v3, "because it has no accessible default constructor"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v2    # "e1":Ljava/lang/NoSuchMethodException;
    :goto_1
    const/4 v2, 0x0

    .line 154
    .local v2, "and":Z
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 155
    .local v4, "reason":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 156
    const-string v5, " and"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 158
    :cond_7
    const/4 v2, 0x1

    .line 160
    :goto_3
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .end local v4    # "reason":Ljava/lang/String;
    goto :goto_2

    .line 162
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method

.method public static isArray(Ljava/lang/reflect/Type;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .line 167
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 168
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 167
    :goto_1
    return v0
.end method

.method public static isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 98
    .local p0, "classToCheck":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "anotherClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 98
    :goto_1
    return v0
.end method

.method public static iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 344
    instance-of v0, p0, Ljava/lang/Iterable;

    if-eqz v0, :cond_0

    .line 345
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0

    .line 347
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 348
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "not an array or Iterable: %s"

    invoke-static {v1, v3, v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 349
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 350
    .local v1, "subClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 351
    move-object v2, p0

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 353
    :cond_1
    new-instance v2, Lcom/google/api/client/util/Types$1;

    invoke-direct {v2, p0}, Lcom/google/api/client/util/Types$1;-><init>(Ljava/lang/Object;)V

    return-object v2
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 113
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-static {v0, p0}, Lcom/google/api/client/util/Types;->handleExceptionForNewInstance(Ljava/lang/Exception;Ljava/lang/Class;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 114
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v0, p0}, Lcom/google/api/client/util/Types;->handleExceptionForNewInstance(Ljava/lang/Exception;Ljava/lang/Class;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public static resolveTypeVariable(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 225
    .local p0, "context":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Type;>;"
    .local p1, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 226
    .local v0, "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_4

    .line 227
    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    .line 229
    .local v1, "rawGenericDeclaration":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 230
    .local v2, "contextIndex":I
    const/4 v3, 0x0

    .line 231
    .local v3, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :goto_0
    if-nez v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 232
    nop

    .line 233
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    invoke-static {v4, v1}, Lcom/google/api/client/util/Types;->getSuperParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v3

    goto :goto_0

    .line 235
    :cond_0
    if-eqz v3, :cond_4

    .line 237
    invoke-interface {v0}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v4

    .line 238
    .local v4, "typeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v5, 0x0

    .line 239
    .local v5, "index":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 240
    aget-object v6, v4, v5

    .line 241
    .local v6, "typeParameter":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 242
    goto :goto_2

    .line 239
    .end local v6    # "typeParameter":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 246
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    aget-object v6, v6, v5

    .line 247
    .local v6, "result":Ljava/lang/reflect/Type;
    instance-of v7, v6, Ljava/lang/reflect/TypeVariable;

    if-eqz v7, :cond_3

    .line 249
    move-object v7, v6

    check-cast v7, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, v7}, Lcom/google/api/client/util/Types;->resolveTypeVariable(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 250
    .local v7, "resolve":Ljava/lang/reflect/Type;
    if-eqz v7, :cond_3

    .line 251
    return-object v7

    .line 255
    .end local v7    # "resolve":Ljava/lang/reflect/Type;
    :cond_3
    return-object v6

    .line 258
    .end local v1    # "rawGenericDeclaration":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "contextIndex":I
    .end local v3    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v4    # "typeParameters":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .end local v5    # "index":I
    .end local v6    # "result":Ljava/lang/reflect/Type;
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method public static toArray(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 389
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 391
    .local v0, "array":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 392
    .local v1, "index":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 393
    .local v3, "value":Ljava/lang/Object;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    invoke-static {v0, v1, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 394
    .end local v3    # "value":Ljava/lang/Object;
    move v1, v4

    goto :goto_0

    .line 395
    .end local v4    # "index":I
    .restart local v1    # "index":I
    :cond_0
    return-object v0

    .line 397
    .end local v0    # "array":Ljava/lang/Object;
    .end local v1    # "index":I
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
