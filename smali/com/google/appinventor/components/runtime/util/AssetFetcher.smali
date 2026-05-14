.class public Lcom/google/appinventor/components/runtime/util/AssetFetcher;
.super Ljava/lang/Object;
.source "AssetFetcher.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static background:Ljava/util/concurrent/ExecutorService;

.field private static context:Landroid/content/Context;

.field private static db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

.field private static volatile inError:Z

.field private static final semaphore:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 61
    invoke-static {}, Lcom/google/appinventor/components/runtime/ReplForm;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->context:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/google/appinventor/components/runtime/util/HashDatabase;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/HashDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

    .line 64
    const-class v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    .line 67
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->background:Ljava/util/concurrent/ExecutorService;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->inError:Z

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->semaphore:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static UpdateLibraryAsset(Ljava/lang/String;[B)V
    .locals 10
    .param p0, "assetName"    # Ljava/lang/String;
    .param p1, "assetContent"    # [B

    .line 310
    const-string v0, "/classes.jar"

    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    .line 311
    .local v1, "form":Lcom/google/appinventor/components/runtime/Form;
    invoke-static {v1, p0}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->getDestinationFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 312
    .local v2, "outFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 313
    .local v3, "parentOutFile":Ljava/io/File;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 316
    :cond_0
    move-object v4, p0

    .line 317
    .local v4, "destinationFilename":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 318
    const-string v5, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 320
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x22

    if-lt v5, v8, :cond_2

    const-string v5, "/external_comps/"

    .line 321
    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 322
    .local v0, "makeReadonly":Z
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-nez v5, :cond_3

    .line 323
    invoke-virtual {v2, v6}, Ljava/io/File;->setWritable(Z)Z

    .line 325
    :cond_3
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v8, 0x1000

    invoke-direct {v5, v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 326
    .local v5, "out":Ljava/io/BufferedOutputStream;
    array-length v6, p1

    invoke-virtual {v5, p1, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 327
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 328
    if-eqz v0, :cond_4

    .line 329
    invoke-virtual {v2}, Ljava/io/File;->setReadOnly()Z

    .line 335
    :cond_4
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

    invoke-virtual {v6, v4}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->getHashFile(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/HashFile;

    move-result-object v6

    .line 336
    .local v6, "file":Lcom/google/appinventor/components/runtime/util/HashFile;
    if-eqz v6, :cond_5

    .line 337
    sget-object v7, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

    invoke-virtual {v7, v6}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->deleteOne(Lcom/google/appinventor/components/runtime/util/HashFile;)V

    .line 341
    .end local v0    # "makeReadonly":Z
    .end local v1    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v2    # "outFile":Ljava/io/File;
    .end local v3    # "parentOutFile":Ljava/io/File;
    .end local v4    # "destinationFilename":Ljava/lang/String;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .end local v6    # "file":Lcom/google/appinventor/components/runtime/util/HashFile;
    :cond_5
    goto :goto_1

    .line 314
    .restart local v1    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local v2    # "outFile":Ljava/io/File;
    .restart local v3    # "parentOutFile":Ljava/io/File;
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create assets directory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "assetName":Ljava/lang/String;
    .end local p1    # "assetContent":[B
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v1    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v2    # "outFile":Ljava/io/File;
    .end local v3    # "parentOutFile":Ljava/io/File;
    .restart local p0    # "assetName":Ljava/lang/String;
    .restart local p1    # "assetContent":[B
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error Updating Library Assets"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static byteArray2Hex([B)Ljava/lang/String;
    .locals 7
    .param p0, "hash"    # [B

    .line 380
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 381
    .local v0, "formatter":Ljava/util/Formatter;
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    .line 382
    .local v4, "b":B
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v2

    const-string v5, "%02x"

    invoke-virtual {v0, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 381
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 384
    :cond_0
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fetchAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "cookieValue"    # Ljava/lang/String;
    .param p1, "projectId"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "asset"    # Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;

    invoke-direct {v1, p2, p1, p3, p0}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 87
    return-void
.end method

.method public static fetchCachedProject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "cookieValue"    # Ljava/lang/String;
    .param p1, "projectId"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "projectName"    # Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;

    invoke-direct {v1, p2, p1, p0, p3}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 111
    return-void
.end method

.method private static getDestinationFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "asset"    # Ljava/lang/String;

    .line 357
    const-string v0, "/external_comps/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "assets/"

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v0, v3, :cond_4

    .line 359
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 360
    .local v0, "dest":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 361
    .local v1, "parent":Ljava/io/File;
    if-eqz v1, :cond_3

    .line 364
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Extensions"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 368
    :cond_1
    :goto_0
    const-string v3, "/classes.jar"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 369
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "filename":Ljava/lang/String;
    goto :goto_1

    .line 371
    .end local v2    # "filename":Ljava/lang/String;
    :cond_2
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "parts":[Ljava/lang/String;
    array-length v4, v3

    sub-int/2addr v4, v2

    aget-object v2, v3, v4

    .line 374
    .end local v3    # "parts":[Ljava/lang/String;
    .restart local v2    # "filename":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v3

    .line 362
    .end local v2    # "filename":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to determine parent directory for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 376
    .end local v0    # "dest":Ljava/io/File;
    .end local v1    # "parent":Ljava/io/File;
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 22
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "cookieValue"    # Ljava/lang/String;
    .param p2, "asset"    # Ljava/lang/String;
    .param p3, "depth"    # I

    .line 175
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    .line 176
    .local v5, "form":Lcom/google/appinventor/components/runtime/Form;
    const/4 v6, 0x0

    const/4 v0, 0x1

    if-le v4, v0, :cond_1

    .line 177
    sget-object v7, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->semaphore:Ljava/lang/Object;

    monitor-enter v7

    .line 178
    :try_start_0
    sget-boolean v8, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->inError:Z

    if-nez v8, :cond_0

    .line 179
    sput-boolean v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->inError:Z

    .line 180
    new-instance v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$4;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 188
    :cond_0
    monitor-exit v7

    return-object v6

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 192
    :cond_1
    move-object/from16 v7, p2

    .line 193
    .local v7, "destinationFilename":Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->getDestinationFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 194
    .local v8, "outFile":Ljava/io/File;
    const-string v9, "/classes.jar"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    .line 195
    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v0

    invoke-virtual {v3, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 197
    :cond_2
    sget-object v9, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "target file = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x22

    if-lt v9, v11, :cond_3

    const-string v9, "/external_comps/"

    .line 202
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "/classes.jar"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    nop

    :goto_0
    move v9, v10

    .line 204
    .local v9, "makeReadonly":Z
    const/4 v10, 0x0

    .line 205
    .local v10, "connection":Ljava/net/HttpURLConnection;
    const/4 v11, 0x0

    .line 206
    .local v11, "responseCode":I
    const/4 v12, 0x0

    .line 207
    .local v12, "fileHash":Ljava/lang/String;
    const/4 v13, 0x0

    .line 210
    .local v13, "error":Z
    :try_start_1
    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 211
    .local v14, "url":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    check-cast v15, Ljava/net/HttpURLConnection;

    move-object v10, v15

    .line 212
    if-eqz v10, :cond_13

    .line 213
    const-string v15, "Cookie"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AppInventor = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v15, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

    invoke-virtual {v0, v7}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->getHashFile(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/HashFile;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    move-object v6, v0

    .line 215
    .local v6, "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    if-eqz v6, :cond_4

    :try_start_2
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    const-string v0, "If-None-Match"

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/HashFile;->getHash()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v0, v15}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 272
    .end local v6    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    .end local v14    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_e

    .line 267
    :catch_0
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_d

    .line 218
    .restart local v6    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    .restart local v14    # "url":Ljava/net/URL;
    :cond_4
    :goto_1
    :try_start_3
    const-string v0, "GET"

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    move v11, v0

    .line 220
    :try_start_4
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    move-object/from16 v17, v5

    .end local v5    # "form":Lcom/google/appinventor/components/runtime/Form;
    .local v17, "form":Lcom/google/appinventor/components/runtime/Form;
    :try_start_5
    const-string v5, "asset = "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, " responseCode = "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move-object v5, v0

    .line 222
    .local v5, "parentOutFile":Ljava/io/File;
    const-string v0, "ETag"

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    move-object v12, v0

    .line 224
    const/16 v0, 0x130

    if-ne v11, v0, :cond_7

    .line 225
    nop

    .line 272
    if-eqz v9, :cond_5

    .line 277
    invoke-virtual {v8}, Ljava/io/File;->setReadOnly()Z

    .line 279
    :cond_5
    if-eqz v10, :cond_6

    .line 280
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 225
    :cond_6
    return-object v8

    .line 228
    :cond_7
    if-eqz v5, :cond_12

    :try_start_6
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-nez v0, :cond_9

    :try_start_7
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    move-object/from16 v16, v6

    move/from16 v19, v11

    move-object/from16 v18, v12

    move/from16 v20, v13

    goto/16 :goto_a

    .line 234
    :cond_9
    :goto_2
    :try_start_8
    invoke-virtual {v8}, Ljava/io/File;->canWrite()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-nez v0, :cond_a

    .line 235
    const/4 v0, 0x1

    :try_start_9
    invoke-virtual {v8, v0}, Ljava/io/File;->setWritable(Z)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    .line 237
    :cond_a
    :try_start_a
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    move-object/from16 v16, v6

    .end local v6    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    .local v16, "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    const/16 v6, 0x1000

    invoke-direct {v0, v15, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v15, v0

    .line 238
    .local v15, "in":Ljava/io/BufferedInputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move/from16 v19, v11

    const/16 v11, 0x1000

    .end local v11    # "responseCode":I
    .local v19, "responseCode":I
    :try_start_b
    invoke-direct {v0, v6, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object v6, v0

    .line 242
    .local v6, "out":Ljava/io/BufferedOutputStream;
    :goto_3
    :try_start_c
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 243
    .local v0, "b":I
    const/4 v11, -0x1

    if-ne v0, v11, :cond_d

    .line 244
    nop

    .line 248
    .end local v0    # "b":I
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 253
    :try_start_d
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 254
    if-eqz v9, :cond_c

    .line 255
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move-object/from16 v18, v12

    .end local v12    # "fileHash":Ljava/lang/String;
    .local v18, "fileHash":Ljava/lang/String;
    :try_start_e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move/from16 v20, v13

    .end local v13    # "error":Z
    .local v20, "error":Z
    :try_start_f
    const-string v13, "Making file read-only: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v8}, Ljava/io/File;->setReadOnly()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_4
    goto :goto_6

    .line 257
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to make "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " read-only."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "destinationFilename":Ljava/lang/String;
    .end local v8    # "outFile":Ljava/io/File;
    .end local v9    # "makeReadonly":Z
    .end local v10    # "connection":Ljava/net/HttpURLConnection;
    .end local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v18    # "fileHash":Ljava/lang/String;
    .end local v19    # "responseCode":I
    .end local v20    # "error":Z
    .end local p0    # "fileName":Ljava/lang/String;
    .end local p1    # "cookieValue":Ljava/lang/String;
    .end local p2    # "asset":Ljava/lang/String;
    .end local p3    # "depth":I
    :goto_5
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 254
    .restart local v7    # "destinationFilename":Ljava/lang/String;
    .restart local v8    # "outFile":Ljava/io/File;
    .restart local v9    # "makeReadonly":Z
    .restart local v10    # "connection":Ljava/net/HttpURLConnection;
    .restart local v12    # "fileHash":Ljava/lang/String;
    .restart local v13    # "error":Z
    .restart local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local v19    # "responseCode":I
    .restart local p0    # "fileName":Ljava/lang/String;
    .restart local p1    # "cookieValue":Ljava/lang/String;
    .restart local p2    # "asset":Ljava/lang/String;
    .restart local p3    # "depth":I
    :cond_c
    move-object/from16 v18, v12

    move/from16 v20, v13

    .line 261
    .end local v5    # "parentOutFile":Ljava/io/File;
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .end local v12    # "fileHash":Ljava/lang/String;
    .end local v13    # "error":Z
    .end local v15    # "in":Ljava/io/BufferedInputStream;
    .end local v16    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    .restart local v18    # "fileHash":Ljava/lang/String;
    .restart local v20    # "error":Z
    :goto_6
    move/from16 v13, v20

    goto/16 :goto_8

    .line 246
    .end local v18    # "fileHash":Ljava/lang/String;
    .end local v20    # "error":Z
    .restart local v0    # "b":I
    .restart local v5    # "parentOutFile":Ljava/io/File;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v12    # "fileHash":Ljava/lang/String;
    .restart local v13    # "error":Z
    .restart local v15    # "in":Ljava/io/BufferedInputStream;
    .restart local v16    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    :cond_d
    move-object/from16 v18, v12

    move/from16 v20, v13

    .end local v12    # "fileHash":Ljava/lang/String;
    .end local v13    # "error":Z
    .restart local v18    # "fileHash":Ljava/lang/String;
    .restart local v20    # "error":Z
    :try_start_10
    invoke-virtual {v6, v0}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 247
    .end local v0    # "b":I
    move-object/from16 v12, v18

    move/from16 v13, v20

    goto :goto_3

    .line 249
    :catch_1
    move-exception v0

    goto :goto_7

    .line 253
    .end local v18    # "fileHash":Ljava/lang/String;
    .end local v20    # "error":Z
    .restart local v12    # "fileHash":Ljava/lang/String;
    .restart local v13    # "error":Z
    :catchall_2
    move-exception v0

    move-object/from16 v18, v12

    move/from16 v20, v13

    .end local v12    # "fileHash":Ljava/lang/String;
    .end local v13    # "error":Z
    .restart local v18    # "fileHash":Ljava/lang/String;
    .restart local v20    # "error":Z
    goto/16 :goto_9

    .line 249
    .end local v18    # "fileHash":Ljava/lang/String;
    .end local v20    # "error":Z
    .restart local v12    # "fileHash":Ljava/lang/String;
    .restart local v13    # "error":Z
    :catch_2
    move-exception v0

    move-object/from16 v18, v12

    move/from16 v20, v13

    .line 250
    .end local v12    # "fileHash":Ljava/lang/String;
    .end local v13    # "error":Z
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "fileHash":Ljava/lang/String;
    .restart local v20    # "error":Z
    :goto_7
    :try_start_11
    sget-object v11, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v12, "copying assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 251
    const/4 v13, 0x1

    .line 253
    .end local v0    # "e":Ljava/io/IOException;
    .end local v20    # "error":Z
    .restart local v13    # "error":Z
    :try_start_12
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 254
    if-eqz v9, :cond_f

    .line 255
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    move/from16 v20, v13

    .end local v13    # "error":Z
    .restart local v20    # "error":Z
    :try_start_13
    const-string v13, "Making file read-only: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v8}, Ljava/io/File;->setReadOnly()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4

    .line 257
    :cond_e
    new-instance v0, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to make "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " read-only."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 254
    .end local v20    # "error":Z
    .restart local v13    # "error":Z
    :cond_f
    move/from16 v20, v13

    .end local v13    # "error":Z
    .restart local v20    # "error":Z
    goto :goto_6

    .line 261
    .end local v5    # "parentOutFile":Ljava/io/File;
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .end local v15    # "in":Ljava/io/BufferedInputStream;
    .end local v16    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    .end local v20    # "error":Z
    .restart local v13    # "error":Z
    :goto_8
    move-object/from16 v12, v18

    move/from16 v11, v19

    goto/16 :goto_b

    .line 272
    .end local v14    # "url":Ljava/net/URL;
    :catchall_3
    move-exception v0

    move/from16 v20, v13

    move-object/from16 v12, v18

    move/from16 v11, v19

    .end local v13    # "error":Z
    .restart local v20    # "error":Z
    goto/16 :goto_e

    .line 267
    .end local v20    # "error":Z
    .restart local v13    # "error":Z
    :catch_3
    move-exception v0

    move/from16 v20, v13

    move-object/from16 v12, v18

    move/from16 v11, v19

    .end local v13    # "error":Z
    .restart local v20    # "error":Z
    goto/16 :goto_d

    .line 253
    .restart local v5    # "parentOutFile":Ljava/io/File;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v14    # "url":Ljava/net/URL;
    .restart local v15    # "in":Ljava/io/BufferedInputStream;
    .restart local v16    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    :catchall_4
    move-exception v0

    :goto_9
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 254
    if-eqz v9, :cond_10

    .line 255
    sget-object v11, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v6

    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .local v21, "out":Ljava/io/BufferedOutputStream;
    const-string v6, "Making file read-only: "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v8}, Ljava/io/File;->setReadOnly()Z

    move-result v6

    if-nez v6, :cond_11

    .line 257
    new-instance v0, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to make "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " read-only."

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "destinationFilename":Ljava/lang/String;
    .end local v8    # "outFile":Ljava/io/File;
    .end local v9    # "makeReadonly":Z
    .end local v10    # "connection":Ljava/net/HttpURLConnection;
    .end local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v18    # "fileHash":Ljava/lang/String;
    .end local v19    # "responseCode":I
    .end local v20    # "error":Z
    .end local p0    # "fileName":Ljava/lang/String;
    .end local p1    # "cookieValue":Ljava/lang/String;
    .end local p2    # "asset":Ljava/lang/String;
    .end local p3    # "depth":I
    throw v0

    .line 254
    .end local v21    # "out":Ljava/io/BufferedOutputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "destinationFilename":Ljava/lang/String;
    .restart local v8    # "outFile":Ljava/io/File;
    .restart local v9    # "makeReadonly":Z
    .restart local v10    # "connection":Ljava/net/HttpURLConnection;
    .restart local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local v18    # "fileHash":Ljava/lang/String;
    .restart local v19    # "responseCode":I
    .restart local v20    # "error":Z
    .restart local p0    # "fileName":Ljava/lang/String;
    .restart local p1    # "cookieValue":Ljava/lang/String;
    .restart local p2    # "asset":Ljava/lang/String;
    .restart local p3    # "depth":I
    :cond_10
    move-object/from16 v21, v6

    .line 260
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v21    # "out":Ljava/io/BufferedOutputStream;
    :cond_11
    nop

    .end local v7    # "destinationFilename":Ljava/lang/String;
    .end local v8    # "outFile":Ljava/io/File;
    .end local v9    # "makeReadonly":Z
    .end local v10    # "connection":Ljava/net/HttpURLConnection;
    .end local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v18    # "fileHash":Ljava/lang/String;
    .end local v19    # "responseCode":I
    .end local v20    # "error":Z
    .end local p0    # "fileName":Ljava/lang/String;
    .end local p1    # "cookieValue":Ljava/lang/String;
    .end local p2    # "asset":Ljava/lang/String;
    .end local p3    # "depth":I
    throw v0

    .line 272
    .end local v5    # "parentOutFile":Ljava/io/File;
    .end local v14    # "url":Ljava/net/URL;
    .end local v15    # "in":Ljava/io/BufferedInputStream;
    .end local v16    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    .end local v21    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "destinationFilename":Ljava/lang/String;
    .restart local v8    # "outFile":Ljava/io/File;
    .restart local v9    # "makeReadonly":Z
    .restart local v10    # "connection":Ljava/net/HttpURLConnection;
    .restart local v12    # "fileHash":Ljava/lang/String;
    .restart local v13    # "error":Z
    .restart local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local v19    # "responseCode":I
    .restart local p0    # "fileName":Ljava/lang/String;
    .restart local p1    # "cookieValue":Ljava/lang/String;
    .restart local p2    # "asset":Ljava/lang/String;
    .restart local p3    # "depth":I
    :catchall_5
    move-exception v0

    move-object/from16 v18, v12

    move/from16 v20, v13

    move/from16 v11, v19

    .end local v12    # "fileHash":Ljava/lang/String;
    .end local v13    # "error":Z
    .restart local v18    # "fileHash":Ljava/lang/String;
    .restart local v20    # "error":Z
    goto/16 :goto_e

    .line 267
    .end local v18    # "fileHash":Ljava/lang/String;
    .end local v20    # "error":Z
    .restart local v12    # "fileHash":Ljava/lang/String;
    .restart local v13    # "error":Z
    :catch_4
    move-exception v0

    move-object/from16 v18, v12

    move/from16 v20, v13

    move/from16 v11, v19

    .end local v12    # "fileHash":Ljava/lang/String;
    .end local v13    # "error":Z
    .restart local v18    # "fileHash":Ljava/lang/String;
    .restart local v20    # "error":Z
    goto/16 :goto_d

    .line 272
    .end local v18    # "fileHash":Ljava/lang/String;
    .end local v19    # "responseCode":I
    .end local v20    # "error":Z
    .restart local v11    # "responseCode":I
    .restart local v12    # "fileHash":Ljava/lang/String;
    .restart local v13    # "error":Z
    :catchall_6
    move-exception v0

    move/from16 v19, v11

    move-object/from16 v18, v12

    move/from16 v20, v13

    .end local v11    # "responseCode":I
    .end local v12    # "fileHash":Ljava/lang/String;
    .end local v13    # "error":Z
    .restart local v18    # "fileHash":Ljava/lang/String;
    .restart local v19    # "responseCode":I
    .restart local v20    # "error":Z
    goto/16 :goto_e

    .line 267
    .end local v18    # "fileHash":Ljava/lang/String;
    .end local v19    # "responseCode":I
    .end local v20    # "error":Z
    .restart local v11    # "responseCode":I
    .restart local v12    # "fileHash":Ljava/lang/String;
    .restart local v13    # "error":Z
    :catch_5
    move-exception v0

    move/from16 v19, v11

    move-object/from16 v18, v12

    move/from16 v20, v13

    .end local v11    # "responseCode":I
    .end local v12    # "fileHash":Ljava/lang/String;
    .end local v13    # "error":Z
    .restart local v18    # "fileHash":Ljava/lang/String;
    .restart local v19    # "responseCode":I
    .restart local v20    # "error":Z
    goto/16 :goto_d

    .line 228
    .end local v18    # "fileHash":Ljava/lang/String;
    .end local v19    # "responseCode":I
    .end local v20    # "error":Z
    .restart local v5    # "parentOutFile":Ljava/io/File;
    .local v6, "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    .restart local v11    # "responseCode":I
    .restart local v12    # "fileHash":Ljava/lang/String;
    .restart local v13    # "error":Z
    .restart local v14    # "url":Ljava/net/URL;
    :cond_12
    move-object/from16 v16, v6

    move/from16 v19, v11

    move-object/from16 v18, v12

    move/from16 v20, v13

    .line 229
    .end local v6    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    .end local v11    # "responseCode":I
    .end local v12    # "fileHash":Ljava/lang/String;
    .end local v13    # "error":Z
    .restart local v16    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    .restart local v18    # "fileHash":Ljava/lang/String;
    .restart local v19    # "responseCode":I
    .restart local v20    # "error":Z
    :goto_a
    new-instance v0, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to create assets directory "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v7    # "destinationFilename":Ljava/lang/String;
    .end local v8    # "outFile":Ljava/io/File;
    .end local v9    # "makeReadonly":Z
    .end local v10    # "connection":Ljava/net/HttpURLConnection;
    .end local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v18    # "fileHash":Ljava/lang/String;
    .end local v19    # "responseCode":I
    .end local v20    # "error":Z
    .end local p0    # "fileName":Ljava/lang/String;
    .end local p1    # "cookieValue":Ljava/lang/String;
    .end local p2    # "asset":Ljava/lang/String;
    .end local p3    # "depth":I
    throw v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 272
    .end local v5    # "parentOutFile":Ljava/io/File;
    .end local v14    # "url":Ljava/net/URL;
    .end local v16    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    .restart local v7    # "destinationFilename":Ljava/lang/String;
    .restart local v8    # "outFile":Ljava/io/File;
    .restart local v9    # "makeReadonly":Z
    .restart local v10    # "connection":Ljava/net/HttpURLConnection;
    .restart local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local v18    # "fileHash":Ljava/lang/String;
    .restart local v19    # "responseCode":I
    .restart local v20    # "error":Z
    .restart local p0    # "fileName":Ljava/lang/String;
    .restart local p1    # "cookieValue":Ljava/lang/String;
    .restart local p2    # "asset":Ljava/lang/String;
    .restart local p3    # "depth":I
    :catchall_7
    move-exception v0

    move-object/from16 v12, v18

    move/from16 v11, v19

    move/from16 v13, v20

    goto/16 :goto_e

    .line 267
    :catch_6
    move-exception v0

    move-object/from16 v12, v18

    move/from16 v11, v19

    move/from16 v13, v20

    goto/16 :goto_d

    .line 272
    .end local v18    # "fileHash":Ljava/lang/String;
    .end local v19    # "responseCode":I
    .end local v20    # "error":Z
    .restart local v11    # "responseCode":I
    .restart local v12    # "fileHash":Ljava/lang/String;
    .restart local v13    # "error":Z
    :catchall_8
    move-exception v0

    move/from16 v19, v11

    move/from16 v20, v13

    .end local v11    # "responseCode":I
    .end local v13    # "error":Z
    .restart local v19    # "responseCode":I
    .restart local v20    # "error":Z
    goto/16 :goto_e

    .line 267
    .end local v19    # "responseCode":I
    .end local v20    # "error":Z
    .restart local v11    # "responseCode":I
    .restart local v13    # "error":Z
    :catch_7
    move-exception v0

    move/from16 v19, v11

    move/from16 v20, v13

    .end local v11    # "responseCode":I
    .end local v13    # "error":Z
    .restart local v19    # "responseCode":I
    .restart local v20    # "error":Z
    goto/16 :goto_d

    .line 272
    .end local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v19    # "responseCode":I
    .end local v20    # "error":Z
    .local v5, "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local v11    # "responseCode":I
    .restart local v13    # "error":Z
    :catchall_9
    move-exception v0

    move-object/from16 v17, v5

    move/from16 v19, v11

    move/from16 v20, v13

    .end local v5    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v11    # "responseCode":I
    .end local v13    # "error":Z
    .restart local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local v19    # "responseCode":I
    .restart local v20    # "error":Z
    goto/16 :goto_e

    .line 267
    .end local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v19    # "responseCode":I
    .end local v20    # "error":Z
    .restart local v5    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local v11    # "responseCode":I
    .restart local v13    # "error":Z
    :catch_8
    move-exception v0

    move-object/from16 v17, v5

    move/from16 v19, v11

    move/from16 v20, v13

    .end local v5    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v11    # "responseCode":I
    .end local v13    # "error":Z
    .restart local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local v19    # "responseCode":I
    .restart local v20    # "error":Z
    goto :goto_d

    .line 262
    .end local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v19    # "responseCode":I
    .end local v20    # "error":Z
    .restart local v5    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local v11    # "responseCode":I
    .restart local v13    # "error":Z
    .restart local v14    # "url":Ljava/net/URL;
    :cond_13
    move-object/from16 v17, v5

    move/from16 v20, v13

    .end local v5    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v13    # "error":Z
    .restart local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local v20    # "error":Z
    const/4 v0, 0x1

    move v13, v0

    .line 264
    .end local v20    # "error":Z
    .restart local v13    # "error":Z
    :goto_b
    if-eqz v13, :cond_16

    .line 265
    add-int/lit8 v0, v4, 0x1

    :try_start_14
    invoke-static {v1, v2, v3, v0}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    .line 272
    if-eqz v9, :cond_14

    .line 277
    invoke-virtual {v8}, Ljava/io/File;->setReadOnly()Z

    .line 279
    :cond_14
    if-eqz v10, :cond_15

    .line 280
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 265
    :cond_15
    return-object v0

    .line 267
    .end local v14    # "url":Ljava/net/URL;
    :catch_9
    move-exception v0

    goto :goto_d

    .line 272
    :cond_16
    if-eqz v9, :cond_17

    .line 277
    invoke-virtual {v8}, Ljava/io/File;->setReadOnly()Z

    .line 279
    :cond_17
    if-eqz v10, :cond_18

    .line 280
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 284
    :cond_18
    const/16 v0, 0xc8

    if-ne v11, v0, :cond_1a

    .line 285
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 286
    .local v0, "timeStamp":Ljava/util/Date;
    new-instance v5, Lcom/google/appinventor/components/runtime/util/HashFile;

    invoke-direct {v5, v7, v12, v0}, Lcom/google/appinventor/components/runtime/util/HashFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 287
    .local v5, "file":Lcom/google/appinventor/components/runtime/util/HashFile;
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->getHashFile(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/HashFile;

    move-result-object v6

    if-nez v6, :cond_19

    .line 288
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

    invoke-virtual {v6, v5}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->insertHashFile(Lcom/google/appinventor/components/runtime/util/HashFile;)V

    goto :goto_c

    .line 290
    :cond_19
    sget-object v6, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->db:Lcom/google/appinventor/components/runtime/util/HashDatabase;

    invoke-virtual {v6, v5}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->updateHashFile(Lcom/google/appinventor/components/runtime/util/HashFile;)I

    .line 292
    :goto_c
    return-object v8

    .line 294
    .end local v0    # "timeStamp":Ljava/util/Date;
    .end local v5    # "file":Lcom/google/appinventor/components/runtime/util/HashFile;
    :cond_1a
    const/4 v5, 0x0

    return-object v5

    .line 272
    .end local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .local v5, "form":Lcom/google/appinventor/components/runtime/Form;
    :catchall_a
    move-exception v0

    move-object/from16 v17, v5

    move/from16 v20, v13

    .end local v5    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v13    # "error":Z
    .restart local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local v20    # "error":Z
    goto :goto_e

    .line 267
    .end local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v20    # "error":Z
    .restart local v5    # "form":Lcom/google/appinventor/components/runtime/Form;
    .restart local v13    # "error":Z
    :catch_a
    move-exception v0

    move-object/from16 v17, v5

    move/from16 v20, v13

    .line 268
    .end local v5    # "form":Lcom/google/appinventor/components/runtime/Form;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "form":Lcom/google/appinventor/components/runtime/Form;
    :goto_d
    :try_start_15
    sget-object v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception while fetching "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    add-int/lit8 v5, v4, 0x1

    invoke-static {v1, v2, v3, v5}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    .line 272
    if-eqz v9, :cond_1b

    .line 277
    invoke-virtual {v8}, Ljava/io/File;->setReadOnly()Z

    .line 279
    :cond_1b
    if-eqz v10, :cond_1c

    .line 280
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 270
    :cond_1c
    return-object v5

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_b
    move-exception v0

    :goto_e
    if-eqz v9, :cond_1d

    .line 277
    invoke-virtual {v8}, Ljava/io/File;->setReadOnly()Z

    .line 279
    :cond_1d
    if-eqz v10, :cond_1e

    .line 280
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 282
    :cond_1e
    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method

.method public static loadExtensions(Ljava/lang/String;)V
    .locals 8
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 141
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadExtensions called jsonString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    .line 144
    .local v0, "form":Lcom/google/appinventor/components/runtime/ReplForm;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "array":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v2, "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 147
    sget-object v3, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v4, "loadExtensions: No Extensions"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->extensionsLoaded()V

    .line 149
    return-void

    .line 151
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 152
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "extensionName":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 154
    sget-object v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadExtensions, extensionName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v4    # "extensionName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .restart local v4    # "extensionName":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v6, "extensionName was null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    return-void

    .line 162
    .end local v3    # "i":I
    .end local v4    # "extensionName":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/ReplForm;->loadComponents(Ljava/util/List;)V

    .line 163
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->extensionsLoaded()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    goto :goto_1

    .line 164
    :catch_0
    move-exception v3

    .line 165
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v4, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Error in form.loadComponents"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load extensions."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/RetValManager;->sendError(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 170
    .end local v0    # "form":Lcom/google/appinventor/components/runtime/ReplForm;
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 168
    :catch_1
    move-exception v0

    .line 169
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v2, "JSON Exception parsing extension string"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method public static upgradeCompanion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "cookieValue"    # Ljava/lang/String;
    .param p1, "inputUri"    # Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher$3;

    invoke-direct {v1, p1, p0}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 137
    return-void
.end method
