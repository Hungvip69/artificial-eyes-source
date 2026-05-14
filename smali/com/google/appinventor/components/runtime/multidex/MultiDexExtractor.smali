.class final Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;
.super Ljava/lang/Object;
.source "MultiDexExtractor.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final DEX_PREFIX:Ljava/lang/String; = "classes"

.field private static final DEX_SUFFIX:Ljava/lang/String; = ".dex"

.field private static final EXTRACTED_NAME_EXT:Ljava/lang/String; = ".classes"

.field private static final EXTRACTED_SUFFIX:Ljava/lang/String; = ".zip"

.field private static final KEY_CRC:Ljava/lang/String; = "crc"

.field private static final KEY_DEX_NUMBER:Ljava/lang/String; = "dex.number"

.field private static final KEY_TIME_STAMP:Ljava/lang/String; = "timestamp"

.field private static final MAX_EXTRACT_ATTEMPTS:I = 0x3

.field private static final NO_VALUE:J = -0x1L

.field private static final PREFS_FILE:Ljava/lang/String; = "multidex.version"

.field private static final TAG:Ljava/lang/String; = "MultiDex"

.field private static sApplyMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 370
    :try_start_0
    const-class v0, Landroid/content/SharedPreferences$Editor;

    .line 371
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "apply"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->sApplyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "unused":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    sput-object v1, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->sApplyMethod:Ljava/lang/reflect/Method;

    .line 375
    .end local v0    # "unused":Ljava/lang/NoSuchMethodException;
    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .line 378
    sget-object v0, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->sApplyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 380
    :try_start_0
    sget-object v0, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->sApplyMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    return-void

    .line 384
    :catch_0
    move-exception v0

    goto :goto_0

    .line 382
    :catch_1
    move-exception v0

    .line 386
    nop

    .line 388
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 389
    return-void
.end method

.method private static extract(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;)V
    .locals 9
    .param p0, "apk"    # Ljava/util/zip/ZipFile;
    .param p1, "dexFile"    # Ljava/util/zip/ZipEntry;
    .param p2, "extractTo"    # Ljava/io/File;
    .param p3, "extractedFilePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 311
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 312
    .local v0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 313
    .local v1, "out":Ljava/util/zip/ZipOutputStream;
    nop

    .line 314
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 313
    const-string v3, ".zip"

    invoke-static {p3, v3, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 315
    .local v2, "tmp":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extracting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MultiDex"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v3

    .line 319
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipEntry;

    const-string v5, "classes.dex"

    invoke-direct {v3, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 321
    .local v3, "classesDex":Ljava/util/zip/ZipEntry;
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 322
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 324
    const/16 v5, 0x4000

    new-array v5, v5, [B

    .line 325
    .local v5, "buffer":[B
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 326
    .local v6, "length":I
    :goto_0
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 327
    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 328
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v6, v7

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    .end local v3    # "classesDex":Ljava/util/zip/ZipEntry;
    .end local v5    # "buffer":[B
    .end local v6    # "length":I
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 333
    nop

    .line 334
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Renaming to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v2, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_1

    .line 340
    invoke-static {v4, v0}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 341
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 342
    nop

    .line 343
    return-void

    .line 336
    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 337
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to rename \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\" to \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v2    # "tmp":Ljava/io/File;
    .end local p0    # "apk":Ljava/util/zip/ZipFile;
    .end local p1    # "dexFile":Ljava/util/zip/ZipEntry;
    .end local p2    # "extractTo":Ljava/io/File;
    .end local p3    # "extractedFilePrefix":Ljava/lang/String;
    throw v3

    .line 332
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "tmp":Ljava/io/File;
    .restart local p0    # "apk":Ljava/util/zip/ZipFile;
    .restart local p1    # "dexFile":Ljava/util/zip/ZipEntry;
    .restart local p2    # "extractTo":Ljava/io/File;
    .restart local p3    # "extractedFilePrefix":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 333
    nop

    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v2    # "tmp":Ljava/io/File;
    .end local p0    # "apk":Ljava/util/zip/ZipFile;
    .end local p1    # "dexFile":Ljava/util/zip/ZipEntry;
    .end local p2    # "extractTo":Ljava/io/File;
    .end local p3    # "extractedFilePrefix":Ljava/lang/String;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 340
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "tmp":Ljava/io/File;
    .restart local p0    # "apk":Ljava/util/zip/ZipFile;
    .restart local p1    # "dexFile":Ljava/util/zip/ZipEntry;
    .restart local p2    # "extractTo":Ljava/io/File;
    .restart local p3    # "extractedFilePrefix":Ljava/lang/String;
    :catchall_1
    move-exception v3

    invoke-static {v4, v0}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 341
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 342
    goto :goto_2

    :goto_1
    throw v3

    :goto_2
    goto :goto_1
.end method

.method private static getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 268
    nop

    .line 269
    nop

    .line 271
    nop

    .line 268
    const-string v0, "multidex.version"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getTimeStamp(Ljava/io/File;)J
    .locals 5
    .param p0, "archive"    # Ljava/io/File;

    .line 166
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 167
    .local v0, "timeStamp":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 169
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 171
    :cond_0
    return-wide v0
.end method

.method private static getZipCrc(Ljava/io/File;)J
    .locals 5
    .param p0, "archive"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/multidex/ZipUtil;->getZipCrc(Ljava/io/File;)J

    move-result-wide v0

    .line 177
    .local v0, "computedValue":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 179
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 181
    :cond_0
    return-wide v0
.end method

.method private static isModified(Landroid/content/Context;Ljava/io/File;J)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "archive"    # Ljava/io/File;
    .param p2, "currentCrc"    # J

    .line 160
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 161
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "timestamp"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->getTimeStamp(Ljava/io/File;)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 162
    const-string v1, "crc"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 161
    :goto_1
    return v1
.end method

.method static load(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/io/File;Z)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "dexDir"    # Ljava/io/File;
    .param p3, "forceReload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiDexExtractor.load("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiDex"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "sourceApk":Ljava/io/File;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->getZipCrc(Ljava/io/File;)J

    move-result-wide v8

    .line 113
    .local v8, "currentCrc":J
    if-nez p3, :cond_0

    invoke-static {p0, v0, v8, v9}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->isModified(Landroid/content/Context;Ljava/io/File;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    :try_start_0
    invoke-static {p0, v0, p2}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->loadExistingExtractions(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .local v2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    goto :goto_0

    .line 116
    .end local v2    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :catch_0
    move-exception v2

    move-object v10, v2

    .line 117
    .local v10, "ioe":Ljava/io/IOException;
    const-string v2, "Failed to reload existing extracted secondary dex files, falling back to fresh extraction"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->performExtractions(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v11

    .line 120
    .local v11, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->getTimeStamp(Ljava/io/File;)J

    move-result-wide v3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v7, v2, 0x1

    move-object v2, p0

    move-wide v5, v8

    invoke-static/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->putStoredApkInfo(Landroid/content/Context;JJI)V

    .line 122
    .end local v10    # "ioe":Ljava/io/IOException;
    move-object v2, v11

    goto :goto_0

    .line 124
    .end local v11    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_0
    const-string v2, "Detected that extraction must be performed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->performExtractions(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object v10

    .line 126
    .local v10, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->getTimeStamp(Ljava/io/File;)J

    move-result-wide v3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v7, v2, 0x1

    move-object v2, p0

    move-wide v5, v8

    invoke-static/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->putStoredApkInfo(Landroid/content/Context;JJI)V

    move-object v2, v10

    .line 129
    .end local v10    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v2    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " secondary dex files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-object v2
.end method

.method private static loadExistingExtractions(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceApk"    # Ljava/io/File;
    .param p2, "dexDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    const-string v0, "loading existing secondary dex files"

    const-string v1, "MultiDex"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".classes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "extractedFilePrefix":Ljava/lang/String;
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "dex.number"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 139
    .local v2, "totalDexNumber":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v3, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v4, 0x2

    .local v4, "secondaryNumber":I
    :goto_0
    if-gt v4, v2, :cond_2

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .local v6, "extractedFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 145
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-static {v6}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->verifyZipFile(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 141
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "extractedFile":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 147
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v6    # "extractedFile":Ljava/io/File;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid zip file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v1, Ljava/io/IOException;

    const-string v7, "Invalid ZIP file."

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_1
    new-instance v1, Ljava/io/IOException;

    .line 152
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing extracted secondary dex file \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    .end local v4    # "secondaryNumber":I
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "extractedFile":Ljava/io/File;
    :cond_2
    return-object v3
.end method

.method public static mustLoad(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 83
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "sourceApk":Ljava/io/File;
    :try_start_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->getZipCrc(Ljava/io/File;)J

    move-result-wide v1

    .line 87
    .local v1, "currentCrc":J
    invoke-static {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->isModified(Landroid/content/Context;Ljava/io/File;J)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 88
    const/4 v3, 0x1

    return v3

    .line 92
    :cond_0
    goto :goto_0

    .line 90
    .end local v1    # "currentCrc":J
    :catch_0
    move-exception v1

    .line 93
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private static performExtractions(Ljava/io/File;Ljava/io/File;)Ljava/util/List;
    .locals 19
    .param p0, "sourceApk"    # Ljava/io/File;
    .param p1, "dexDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    move-object/from16 v1, p1

    const-string v0, ".dex"

    const-string v2, "Failed to close resource"

    const-string v3, "classes"

    const-string v4, "MultiDex"

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".classes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "extractedFilePrefix":Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->prepareDexDir(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v6, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v7, Ljava/util/zip/ZipFile;

    move-object/from16 v8, p0

    invoke-direct {v7, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 200
    .local v7, "apk":Ljava/util/zip/ZipFile;
    const/4 v9, 0x2

    .line 202
    .local v9, "secondaryNumber":I
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    .line 203
    .local v10, "dexFile":Ljava/util/zip/ZipEntry;
    :goto_0
    if-eqz v10, :cond_4

    .line 204
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".zip"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 205
    .local v11, "fileName":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v1, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    .local v12, "extractedFile":Ljava/io/File;
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Extraction is needed for file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v13, 0x0

    .line 210
    .local v13, "numAttempts":I
    const/4 v14, 0x0

    .line 211
    .local v14, "isExtractionSuccessful":Z
    :goto_1
    const/4 v15, 0x3

    if-ge v13, v15, :cond_2

    if-nez v14, :cond_2

    .line 212
    add-int/lit8 v13, v13, 0x1

    .line 216
    invoke-static {v7, v10, v12, v5}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->extract(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;)V

    .line 219
    invoke-static {v12}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->verifyZipFile(Ljava/io/File;)Z

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v14, v15

    .line 222
    if-eqz v14, :cond_0

    :try_start_1
    const-string v15, "success"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 243
    .end local v9    # "secondaryNumber":I
    .end local v10    # "dexFile":Ljava/util/zip/ZipEntry;
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v12    # "extractedFile":Ljava/io/File;
    .end local v13    # "numAttempts":I
    .end local v14    # "isExtractionSuccessful":Z
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v5

    goto/16 :goto_4

    .line 222
    .restart local v9    # "secondaryNumber":I
    .restart local v10    # "dexFile":Ljava/util/zip/ZipEntry;
    .restart local v11    # "fileName":Ljava/lang/String;
    .restart local v12    # "extractedFile":Ljava/io/File;
    .restart local v13    # "numAttempts":I
    .restart local v14    # "isExtractionSuccessful":Z
    :cond_0
    :try_start_2
    const-string v15, "failed"

    .line 223
    :goto_2
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 224
    move-object/from16 v16, v10

    move-object/from16 v17, v11

    .end local v10    # "dexFile":Ljava/util/zip/ZipEntry;
    .end local v11    # "fileName":Ljava/lang/String;
    .local v16, "dexFile":Ljava/util/zip/ZipEntry;
    .local v17, "fileName":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v18, v5

    .end local v5    # "extractedFilePrefix":Ljava/lang/String;
    .local v18, "extractedFilePrefix":Ljava/lang/String;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Extraction "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " - length "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-nez v14, :cond_1

    .line 227
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 228
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    nop

    .line 230
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to delete corrupted secondary dex \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v5, v18

    goto/16 :goto_1

    .end local v16    # "dexFile":Ljava/util/zip/ZipEntry;
    .end local v17    # "fileName":Ljava/lang/String;
    .end local v18    # "extractedFilePrefix":Ljava/lang/String;
    .restart local v5    # "extractedFilePrefix":Ljava/lang/String;
    .restart local v10    # "dexFile":Ljava/util/zip/ZipEntry;
    .restart local v11    # "fileName":Ljava/lang/String;
    :cond_2
    move-object/from16 v18, v5

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    .line 234
    .end local v5    # "extractedFilePrefix":Ljava/lang/String;
    .end local v10    # "dexFile":Ljava/util/zip/ZipEntry;
    .end local v11    # "fileName":Ljava/lang/String;
    .restart local v16    # "dexFile":Ljava/util/zip/ZipEntry;
    .restart local v17    # "fileName":Ljava/lang/String;
    .restart local v18    # "extractedFilePrefix":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 239
    add-int/lit8 v9, v9, 0x1

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    move-object v10, v1

    .line 241
    .end local v12    # "extractedFile":Ljava/io/File;
    .end local v13    # "numAttempts":I
    .end local v14    # "isExtractionSuccessful":Z
    .end local v16    # "dexFile":Ljava/util/zip/ZipEntry;
    .end local v17    # "fileName":Ljava/lang/String;
    .restart local v10    # "dexFile":Ljava/util/zip/ZipEntry;
    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move-object/from16 v5, v18

    goto/16 :goto_0

    .line 243
    .end local v9    # "secondaryNumber":I
    .end local v10    # "dexFile":Ljava/util/zip/ZipEntry;
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_4

    .line 235
    .restart local v9    # "secondaryNumber":I
    .restart local v12    # "extractedFile":Ljava/io/File;
    .restart local v13    # "numAttempts":I
    .restart local v14    # "isExtractionSuccessful":Z
    .restart local v16    # "dexFile":Ljava/util/zip/ZipEntry;
    .restart local v17    # "fileName":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 236
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create zip file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for secondary dex ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v6    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v7    # "apk":Ljava/util/zip/ZipFile;
    .end local v18    # "extractedFilePrefix":Ljava/lang/String;
    .end local p0    # "sourceApk":Ljava/io/File;
    .end local p1    # "dexDir":Ljava/io/File;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 203
    .end local v12    # "extractedFile":Ljava/io/File;
    .end local v13    # "numAttempts":I
    .end local v14    # "isExtractionSuccessful":Z
    .end local v16    # "dexFile":Ljava/util/zip/ZipEntry;
    .end local v17    # "fileName":Ljava/lang/String;
    .restart local v5    # "extractedFilePrefix":Ljava/lang/String;
    .restart local v6    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v7    # "apk":Ljava/util/zip/ZipFile;
    .restart local v10    # "dexFile":Ljava/util/zip/ZipEntry;
    .restart local p0    # "sourceApk":Ljava/io/File;
    .restart local p1    # "dexDir":Ljava/io/File;
    :cond_4
    move-object/from16 v18, v5

    move-object/from16 v16, v10

    .line 244
    .end local v5    # "extractedFilePrefix":Ljava/lang/String;
    .end local v9    # "secondaryNumber":I
    .end local v10    # "dexFile":Ljava/util/zip/ZipEntry;
    .restart local v18    # "extractedFilePrefix":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 247
    goto :goto_3

    .line 245
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 246
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 250
    :goto_3
    return-object v6

    .line 243
    .end local v18    # "extractedFilePrefix":Ljava/lang/String;
    .restart local v5    # "extractedFilePrefix":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v18, v5

    move-object v1, v0

    .line 244
    .end local v5    # "extractedFilePrefix":Ljava/lang/String;
    .restart local v18    # "extractedFilePrefix":Ljava/lang/String;
    :goto_4
    :try_start_5
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 247
    goto :goto_5

    .line 245
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 246
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method

.method private static prepareDexDir(Ljava/io/File;Ljava/lang/String;)V
    .locals 11
    .param p0, "dexDir"    # Ljava/io/File;
    .param p1, "extractedFilePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 280
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    new-instance v0, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor$1;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor$1;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, "filter":Ljava/io/FileFilter;
    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 293
    .local v1, "files":[Ljava/io/File;
    const-string v2, "MultiDex"

    if-nez v1, :cond_0

    .line 294
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to list secondary dex dir content ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void

    .line 297
    :cond_0
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 298
    .local v5, "oldFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 299
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

    .line 298
    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 301
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

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 303
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

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v5    # "oldFile":Ljava/io/File;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 306
    :cond_2
    return-void

    .line 281
    .end local v0    # "filter":Ljava/io/FileFilter;
    .end local v1    # "files":[Ljava/io/File;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create dex directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static putStoredApkInfo(Landroid/content/Context;JJI)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeStamp"    # J
    .param p3, "crc"    # J
    .param p5, "totalDexNumber"    # I

    .line 255
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->getMultiDexPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 256
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 257
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "timestamp"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 258
    const-string v2, "crc"

    invoke-interface {v1, v2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 263
    const-string v2, "dex.number"

    invoke-interface {v1, v2, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 264
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/multidex/MultiDexExtractor;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 265
    return-void
.end method

.method static verifyZipFile(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .line 350
    const-string v0, "MultiDex"

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 352
    .local v1, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_2

    .line 353
    const/4 v0, 0x1

    return v0

    .line 354
    :catch_0
    move-exception v2

    .line 355
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close zip file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 361
    nop

    .end local v1    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 359
    :catch_1
    move-exception v1

    .line 360
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got an IOException trying to open zip file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 357
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 358
    .local v1, "ex":Ljava/util/zip/ZipException;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid zip file."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    .end local v1    # "ex":Ljava/util/zip/ZipException;
    nop

    .line 362
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
