.class public Lcom/google/api/client/util/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"


# static fields
.field private static final CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Field;",
            "Lcom/google/api/client/util/FieldInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final field:Ljava/lang/reflect/Field;

.field private final isPrimitive:Z

.field private final name:Ljava/lang/String;

.field private final setters:[Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/api/client/util/FieldInfo;->CACHE:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "name"    # Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 131
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/util/FieldInfo;->name:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/google/api/client/util/FieldInfo;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/api/client/util/FieldInfo;->isPrimitive:Z

    .line 133
    invoke-direct {p0, p1}, Lcom/google/api/client/util/FieldInfo;->settersMethodForField(Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/FieldInfo;->setters:[Ljava/lang/reflect/Method;

    .line 134
    return-void
.end method

.method public static getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 247
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static of(Ljava/lang/Enum;)Lcom/google/api/client/util/FieldInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lcom/google/api/client/util/FieldInfo;"
        }
    .end annotation

    .line 51
    .local p0, "enumValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/reflect/Field;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v0

    .line 52
    .local v0, "result":Lcom/google/api/client/util/FieldInfo;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "enum constant missing @Value or @NullValue annotation: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v3, v4, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-object v0

    .line 55
    .end local v0    # "result":Lcom/google/api/client/util/FieldInfo;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static of(Ljava/lang/reflect/Field;)Lcom/google/api/client/util/FieldInfo;
    .locals 6
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 69
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 70
    return-object v0

    .line 72
    :cond_0
    sget-object v1, Lcom/google/api/client/util/FieldInfo;->CACHE:Ljava/util/Map;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v2, Lcom/google/api/client/util/FieldInfo;->CACHE:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/client/util/FieldInfo;

    .line 74
    .local v2, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v3

    .line 75
    .local v3, "isEnumContant":Z
    if-nez v2, :cond_7

    if-nez v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 77
    :cond_1
    if-eqz v3, :cond_4

    .line 79
    const-class v4, Lcom/google/api/client/util/Value;

    invoke-virtual {p0, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/google/api/client/util/Value;

    .line 80
    .local v4, "value":Lcom/google/api/client/util/Value;
    if-eqz v4, :cond_2

    .line 81
    invoke-interface {v4}, Lcom/google/api/client/util/Value;->value()Ljava/lang/String;

    move-result-object v0

    .local v0, "fieldName":Ljava/lang/String;
    goto :goto_0

    .line 84
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_2
    const-class v5, Lcom/google/api/client/util/NullValue;

    invoke-virtual {p0, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/google/api/client/util/NullValue;

    .line 85
    .local v5, "nullValue":Lcom/google/api/client/util/NullValue;
    if-eqz v5, :cond_3

    .line 86
    const/4 v0, 0x0

    .line 92
    .end local v4    # "value":Lcom/google/api/client/util/Value;
    .end local v5    # "nullValue":Lcom/google/api/client/util/NullValue;
    .restart local v0    # "fieldName":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 89
    .end local v0    # "fieldName":Ljava/lang/String;
    .restart local v4    # "value":Lcom/google/api/client/util/Value;
    .restart local v5    # "nullValue":Lcom/google/api/client/util/NullValue;
    :cond_3
    monitor-exit v1

    return-object v0

    .line 94
    .end local v4    # "value":Lcom/google/api/client/util/Value;
    .end local v5    # "nullValue":Lcom/google/api/client/util/NullValue;
    :cond_4
    const-class v4, Lcom/google/api/client/util/Key;

    invoke-virtual {p0, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/google/api/client/util/Key;

    .line 95
    .local v4, "key":Lcom/google/api/client/util/Key;
    if-nez v4, :cond_5

    .line 97
    monitor-exit v1

    return-object v0

    .line 99
    :cond_5
    invoke-interface {v4}, Lcom/google/api/client/util/Key;->value()Ljava/lang/String;

    move-result-object v0

    .line 100
    .restart local v0    # "fieldName":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 102
    .end local v4    # "key":Lcom/google/api/client/util/Key;
    :goto_1
    const-string v4, "##default"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 103
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 105
    :cond_6
    new-instance v4, Lcom/google/api/client/util/FieldInfo;

    invoke-direct {v4, p0, v0}, Lcom/google/api/client/util/FieldInfo;-><init>(Ljava/lang/reflect/Field;Ljava/lang/String;)V

    move-object v2, v4

    .line 106
    sget-object v4, Lcom/google/api/client/util/FieldInfo;->CACHE:Ljava/util/Map;

    invoke-interface {v4, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_7
    monitor-exit v1

    return-object v2

    .line 109
    .end local v2    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v3    # "isEnumContant":Z
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 260
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    invoke-static {p0, p1}, Lcom/google/api/client/util/FieldInfo;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 262
    .local v0, "finalValue":Ljava/lang/Object;
    if-nez p2, :cond_0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    .end local v0    # "finalValue":Ljava/lang/Object;
    :goto_0
    goto :goto_1

    .line 263
    .restart local v0    # "finalValue":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected final value <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> but was <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 269
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " field in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 271
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    .end local v0    # "finalValue":Ljava/lang/Object;
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    nop

    .line 282
    :goto_1
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 276
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private settersMethodForField(Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Method;
    .locals 9
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 140
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 142
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 145
    :cond_1
    new-array v1, v3, [Ljava/lang/reflect/Method;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    return-object v1
.end method


# virtual methods
.method public enumValue()Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>()TT;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public getClassInfo()Lcom/google/api/client/util/ClassInfo;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v0

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/google/api/client/util/FieldInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {v0, p1}, Lcom/google/api/client/util/FieldInfo;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isFinal()Z
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcom/google/api/client/util/FieldInfo;->isPrimitive:Z

    return v0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/google/api/client/util/FieldInfo;->setters:[Ljava/lang/reflect/Method;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/google/api/client/util/FieldInfo;->setters:[Ljava/lang/reflect/Method;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 221
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz p2, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 223
    :cond_0
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v2

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    return-void

    .line 225
    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    .line 220
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {v0, p1, p2}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    return-void
.end method
