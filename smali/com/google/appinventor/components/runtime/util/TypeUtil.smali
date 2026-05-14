.class public final Lcom/google/appinventor/components/runtime/util/TypeUtil;
.super Ljava/lang/Object;
.source "TypeUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;
    .param p2, "expected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 19
    .local p1, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    .line 20
    const/4 v0, 0x0

    return-object v0

    .line 21
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 24
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p2, v2, v1

    const/16 v1, 0xd52

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v0
.end method

.method public static castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;
    .param p2, "expected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 29
    .local p1, "tClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p0, :cond_0

    .line 32
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->cast(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 30
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "null"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/16 v2, 0xd52

    invoke-direct {v0, v2, v1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v0
.end method

.method public static castToEnum(Ljava/lang/Object;Lgnu/mapping/Symbol;)Lcom/google/appinventor/components/common/OptionList;
    .locals 10
    .param p1, "className"    # Lgnu/mapping/Symbol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lgnu/mapping/Symbol;",
            ")",
            "Lcom/google/appinventor/components/common/OptionList<",
            "TT;>;"
        }
    .end annotation

    .line 46
    .local p0, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->stripEnumSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "classNameStr":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 49
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Lcom/google/appinventor/components/common/OptionList;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 55
    .local v7, "m":Ljava/lang/reflect/Method;
    const-string v8, "fromUnderlyingValue"

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 56
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 57
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-virtual {v7, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/common/OptionList;

    return-object v3

    .line 54
    .end local v7    # "m":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 60
    :cond_1
    return-object v1

    .line 51
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not identify an OptionList type."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "classNameStr":Ljava/lang/String;
    .end local p0    # "value":Ljava/lang/Object;, "TT;"
    .end local p1    # "className":Lgnu/mapping/Symbol;
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "classNameStr":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;, "TT;"
    .restart local p1    # "className":Lgnu/mapping/Symbol;
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/IllegalAccessException;
    return-object v1

    .line 63
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 64
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    return-object v1

    .line 61
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    return-object v1
.end method

.method private static stripEnumSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .line 71
    const-string v0, "Enum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    return-object p0
.end method
