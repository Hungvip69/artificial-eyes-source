.class public Lcom/google/appinventor/components/runtime/util/QUtil;
.super Ljava/lang/Object;
.source "QUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 95
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageDir(Landroid/content/Context;Z)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forcePrivate"    # Z

    .line 115
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;ZZ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageDir(Landroid/content/Context;ZZ)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forcePrivate"    # Z
    .param p2, "legacy"    # Z

    .line 137
    nop

    .line 141
    if-nez p2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    .line 143
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 144
    .local v0, "externalStorage":Ljava/io/File;
    if-nez v0, :cond_2

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 149
    :cond_2
    return-object v0

    .line 152
    .end local v0    # "externalStorage":Ljava/io/File;
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStoragePath(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forcePrivate"    # Z

    .line 59
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStoragePath(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forcePrivate"    # Z
    .param p2, "useLegacy"    # Z

    .line 39
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;ZZ)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReplAssetPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 218
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReplAssetPath(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forcePrivate"    # Z

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 174
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 176
    :cond_0
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AppInventor/assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReplDataPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 249
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplDataPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReplDataPath(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forcePrivate"    # Z

    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 234
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 236
    :cond_0
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AppInventor/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReplDatabasePath(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forcePrivate"    # Z

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 198
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 200
    :cond_0
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AppInventor/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
