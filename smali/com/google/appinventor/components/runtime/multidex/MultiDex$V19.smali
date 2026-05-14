.class final Lcom/google/appinventor/components/runtime/multidex/MultiDex$V19;
.super Ljava/lang/Object;
.source "MultiDex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/multidex/MultiDex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "V19"
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$sminstall(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/multidex/MultiDex$V19;->install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 9
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "optimizedDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 391
    .local p1, "additionalClassPathEntries":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-string v0, "pathList"

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->-$$Nest$smfindField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 392
    .local v0, "pathListField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 393
    .local v1, "dexPathList":Ljava/lang/Object;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v2, "suppressedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/IOException;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v3, p2, v2}, Lcom/google/appinventor/components/runtime/multidex/MultiDex$V19;->makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "dexElements"

    invoke-static {v1, v4, v3}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->-$$Nest$smexpandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 398
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/IOException;

    .line 399
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "MultiDex"

    const-string v6, "Exception in makeDexElement"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 401
    :cond_0
    nop

    .line 402
    const-string v3, "dexElementsSuppressedExceptions"

    invoke-static {p0, v3}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->-$$Nest$smfindField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 403
    .local v3, "suppressedExceptionsField":Ljava/lang/reflect/Field;
    nop

    .line 404
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/io/IOException;

    .line 406
    .local v4, "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    if-nez v4, :cond_1

    .line 407
    nop

    .line 409
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/io/IOException;

    .line 408
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, [Ljava/io/IOException;

    goto :goto_1

    .line 411
    :cond_1
    nop

    .line 412
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    array-length v6, v4

    add-int/2addr v5, v6

    new-array v5, v5, [Ljava/io/IOException;

    .line 414
    .local v5, "combined":[Ljava/io/IOException;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 415
    nop

    .line 416
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    array-length v7, v4

    .line 415
    const/4 v8, 0x0

    invoke-static {v4, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    move-object v4, v5

    .line 420
    .end local v5    # "combined":[Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 422
    .end local v3    # "suppressedExceptionsField":Ljava/lang/reflect/Field;
    .end local v4    # "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    :cond_2
    return-void
.end method

.method private static makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 6
    .param p0, "dexPathList"    # Ljava/lang/Object;
    .param p2, "optimizedDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Ljava/io/IOException;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 433
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .local p3, "suppressedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/IOException;>;"
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v4, Ljava/io/File;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 434
    const-string v2, "makeDexElements"

    invoke-static {p0, v2, v1}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->-$$Nest$smfindMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 437
    .local v1, "makeDexElements":Ljava/lang/reflect/Method;
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v5

    aput-object p3, v0, v4

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method
