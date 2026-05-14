.class public Lcom/google/appinventor/components/runtime/util/PropertyUtil;
.super Ljava/lang/Object;
.source "PropertyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyComponentProperties(Lcom/google/appinventor/components/runtime/Component;Lcom/google/appinventor/components/runtime/Component;)Lcom/google/appinventor/components/runtime/Component;
    .locals 13
    .param p0, "source"    # Lcom/google/appinventor/components/runtime/Component;
    .param p1, "target"    # Lcom/google/appinventor/components/runtime/Component;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 36
    .local v0, "componentClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 37
    .local v1, "componentMethods":[Ljava/lang/reflect/Method;
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 39
    .local v5, "componentMethod":Ljava/lang/reflect/Method;
    const-class v6, Lcom/google/appinventor/components/annotations/SimpleProperty;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 40
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 41
    move-object v6, v5

    .line 43
    .local v6, "propertySetterMethod":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 46
    .local v8, "propertyName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Copy"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 47
    invoke-static {v9, v0}, Lcom/google/appinventor/components/runtime/util/PropertyUtil;->getPropertyCopierMethod(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 48
    .local v9, "propertyCopierMethod":Ljava/lang/reflect/Method;
    if-eqz v9, :cond_0

    .line 49
    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v3

    invoke-virtual {v9, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    goto :goto_1

    .line 55
    :cond_0
    new-array v10, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 56
    .local v10, "propertyGetterMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    aget-object v11, v11, v3

    .line 59
    .local v11, "propertySetterParameterType":Ljava/lang/Class;
    const-class v12, Lcom/google/appinventor/components/annotations/SimpleProperty;

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 60
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 61
    new-array v12, v3, [Ljava/lang/Object;

    invoke-virtual {v10, p0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 62
    .local v12, "propertyValue":Ljava/lang/Object;
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v12, v7, v3

    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v8    # "propertyName":Ljava/lang/String;
    .end local v9    # "propertyCopierMethod":Ljava/lang/reflect/Method;
    .end local v10    # "propertyGetterMethod":Ljava/lang/reflect/Method;
    .end local v11    # "propertySetterParameterType":Ljava/lang/Class;
    .end local v12    # "propertyValue":Ljava/lang/Object;
    :cond_1
    goto :goto_1

    .line 67
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e2":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    throw v3

    .line 64
    .end local v2    # "e2":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v7

    .line 66
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    nop

    .line 37
    .end local v5    # "componentMethod":Ljava/lang/reflect/Method;
    .end local v6    # "propertySetterMethod":Ljava/lang/reflect/Method;
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    :cond_3
    return-object p1

    .line 32
    .end local v0    # "componentClass":Ljava/lang/Class;
    .end local v1    # "componentMethods":[Ljava/lang/reflect/Method;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source and target classes must be identical"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static getPropertyCopierMethod(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "copierMethodName"    # Ljava/lang/String;
    .param p1, "componentClass"    # Ljava/lang/Class;

    .line 84
    nop

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 85
    .local v0, "propertyCopierMethod":Ljava/lang/reflect/Method;
    const-class v1, Lcom/google/appinventor/components/annotations/SimplePropertyCopier;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 86
    return-object v0

    .line 90
    .end local v0    # "propertyCopierMethod":Ljava/lang/reflect/Method;
    :cond_1
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 91
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    .line 92
    if-nez p1, :cond_0

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method
