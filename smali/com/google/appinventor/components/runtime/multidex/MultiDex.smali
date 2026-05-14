.class public final Lcom/google/appinventor/components/runtime/multidex/MultiDex;
.super Ljava/lang/Object;
.source "MultiDex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/multidex/MultiDex$V4;,
        Lcom/google/appinventor/components/runtime/multidex/MultiDex$V14;,
        Lcom/google/appinventor/components/runtime/multidex/MultiDex$V19;
    }
.end annotation


# static fields
.field private static final IS_VM_MULTIDEX_CAPABLE:Z

.field private static final MAX_SUPPORTED_SDK_VERSION:I = 0x14

.field private static final MIN_SDK_VERSION:I = 0x4

.field private static final OLD_SECONDARY_FOLDER_NAME:Ljava/lang/String; = "secondary-dexes"

.field private static final SECONDARY_FOLDER_NAME:Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "MultiDex"

.field private static final VM_WITH_MULTIDEX_VERSION_MAJOR:I = 0x2

.field private static final VM_WITH_MULTIDEX_VERSION_MINOR:I = 0x1

.field private static final installedApk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smexpandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smfindField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smfindMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 63
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code_cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "secondary-dexes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->SECONDARY_FOLDER_NAME:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->installedApk:Ljava/util/Set;

    .line 76
    nop

    .line 77
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->isVMMultidexCapable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->IS_VM_MULTIDEX_CAPABLE:Z

    .line 76
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkValidZipFiles(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .line 267
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 268
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->verifyZipFile(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 269
    const/4 v0, 0x0

    return v0

    .line 271
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 272
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static clearOldDexDir(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 352
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "secondary-dexes"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 353
    .local v0, "dexDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 354
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing old secondary dex dir ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MultiDex"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 356
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 357
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to list secondary dex dir content ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 360
    :cond_0
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 361
    .local v5, "oldFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 362
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trying to delete old file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " of size "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 361
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 364
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to delete old file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 366
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleted old file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v5    # "oldFile":Ljava/io/File;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 369
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 370
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete secondary dex dir "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 372
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleted old secondary dex dir "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .end local v1    # "files":[Ljava/io/File;
    :cond_4
    :goto_2
    return-void
.end method

.method private static expandFieldArray(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "extraElements"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 342
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 343
    .local v0, "jlrField":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 344
    .local v1, "original":[Ljava/lang/Object;
    nop

    .line 345
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    array-length v3, v1

    array-length v4, p2

    add-int/2addr v3, v4

    .line 344
    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 346
    .local v2, "combined":[Ljava/lang/Object;
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    array-length v3, v1

    array-length v5, p2

    invoke-static {p2, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method private static findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 286
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 289
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_0
    return-object v1

    .line 294
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 284
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 299
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static varargs findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 313
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 315
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 318
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_0
    return-object v1

    .line 323
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 313
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 328
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 329
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with parameters "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not found in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 200
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .local v2, "packageName":Ljava/lang/String;
    nop

    .line 210
    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    nop

    .line 215
    const/16 v0, 0x80

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 216
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    return-object v0

    .line 212
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    return-object v0

    .line 201
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "MultiDex"

    const-string v3, "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    return-object v0
.end method

.method public static install(Landroid/content/Context;Z)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "doIt"    # Z

    .line 95
    sget-object v0, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->installedApk:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 96
    const-string v0, "MultiDex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install: doIt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-boolean v0, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->IS_VM_MULTIDEX_CAPABLE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "MultiDex"

    const-string v2, "VM has multidex support, MultiDex support library is disabled."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return v1

    .line 102
    :cond_0
    nop

    .line 108
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 109
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_1

    .line 111
    const-string v2, "MultiDex"

    const-string v3, "applicationInfo is null, returning"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v1

    .line 115
    :cond_1
    sget-object v2, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->installedApk:Ljava/util/Set;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :try_start_1
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 117
    .local v3, "apkPath":Ljava/lang/String;
    sget-object v4, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->installedApk:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    monitor-exit v2

    return v1

    .line 120
    :cond_2
    sget-object v4, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->installedApk:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-le v4, v5, :cond_3

    .line 123
    const-string v4, "MultiDex"

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v6, "java.vm.version"

    .line 128
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MultiDex is not guaranteed to work in SDK version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it\'s not the case here: java.vm.version=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    .local v4, "loader":Ljava/lang/ClassLoader;
    nop

    .line 148
    if-nez v4, :cond_4

    .line 150
    :try_start_3
    const-string v5, "MultiDex"

    const-string v6, "Context class loader is null. Must be running in test mode. Skip patching."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v1

    .line 157
    :cond_4
    :try_start_4
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->clearOldDexDir(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    goto :goto_0

    .line 158
    :catchall_0
    move-exception v5

    .line 159
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_5
    const-string v6, "MultiDex"

    const-string v7, "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_0
    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    sget-object v7, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->SECONDARY_FOLDER_NAME:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v5, "dexDir":Ljava/io/File;
    const/4 v6, 0x0

    if-nez p1, :cond_5

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->mustLoad(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 165
    const-string v1, "MultiDex"

    const-string v7, "Returning because of mustLoad"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    monitor-exit v2

    return v6

    .line 168
    :cond_5
    const-string v7, "MultiDex"

    const-string v8, "Proceeding with installation..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {p0, v0, v5, v6}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->load(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/io/File;Z)Ljava/util/List;

    move-result-object v6

    .line 170
    .local v6, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->checkValidZipFiles(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 171
    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V

    goto :goto_1

    .line 173
    :cond_6
    const-string v7, "MultiDex"

    const-string v8, "Files were not valid zip files.  Forcing a reload."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {p0, v0, v5, v1}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->load(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/io/File;Z)Ljava/util/List;

    move-result-object v7

    move-object v6, v7

    .line 177
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->checkValidZipFiles(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 178
    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/multidex/MultiDex;->installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V

    .line 184
    .end local v3    # "apkPath":Ljava/lang/String;
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    .end local v5    # "dexDir":Ljava/io/File;
    .end local v6    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :goto_1
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 189
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 190
    const-string v0, "MultiDex"

    const-string v2, "install done"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return v1

    .line 181
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "apkPath":Ljava/lang/String;
    .restart local v4    # "loader":Ljava/lang/ClassLoader;
    .restart local v5    # "dexDir":Ljava/io/File;
    .restart local v6    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_7
    :try_start_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v7, "Zip files were not valid."

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "doIt":Z
    throw v1

    .line 139
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    .end local v5    # "dexDir":Ljava/io/File;
    .end local v6    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "doIt":Z
    :catch_0
    move-exception v4

    .line 144
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v5, "MultiDex"

    const-string v6, "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    monitor-exit v2

    return v1

    .line 184
    .end local v3    # "apkPath":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "doIt":Z
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 186
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "doIt":Z
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultiDex"

    const-string v2, "Multidex installation failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multi dex installation failed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static installSecondaryDexes(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/util/List;)V
    .locals 2
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "dexDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 253
    invoke-static {p0, p2, p1}, Lcom/google/appinventor/components/runtime/multidex/MultiDex$V19;->-$$Nest$sminstall(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    goto :goto_0

    .line 254
    :cond_0
    nop

    .line 255
    invoke-static {p0, p2, p1}, Lcom/google/appinventor/components/runtime/multidex/MultiDex$V14;->-$$Nest$sminstall(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V

    .line 260
    :cond_1
    :goto_0
    return-void
.end method

.method static isVMMultidexCapable(Ljava/lang/String;)Z
    .locals 6
    .param p0, "versionString"    # Ljava/lang/String;

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "isMultidexCapable":Z
    if-eqz p0, :cond_2

    .line 228
    const-string v1, "(\\d+)\\.(\\d+)(\\.\\d+)?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 229
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 232
    .local v3, "major":I
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .local v5, "minor":I
    if-gt v3, v4, :cond_1

    if-ne v3, v4, :cond_0

    if-lt v5, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    move v0, v2

    .line 238
    .end local v3    # "major":I
    .end local v5    # "minor":I
    goto :goto_1

    .line 236
    :catch_0
    move-exception v2

    .line 241
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    :goto_1
    nop

    .line 242
    if-eqz v0, :cond_3

    .line 243
    const-string v1, " has multidex support"

    goto :goto_2

    .line 244
    :cond_3
    const-string v1, " does not have multidex support"

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VM with version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    const-string v2, "MultiDex"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return v0
.end method
