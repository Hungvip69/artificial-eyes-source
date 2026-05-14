.class public Lcom/google/appinventor/components/runtime/util/FileWriteOperation;
.super Lcom/google/appinventor/components/runtime/util/FileStreamOperation;
.source "FileWriteOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/util/FileStreamOperation<",
        "Ljava/io/OutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/ScopedFile;ZZ)V
    .locals 8
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "file"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;
    .param p5, "append"    # Z
    .param p6, "async"    # Z

    .line 65
    nop

    .line 66
    if-eqz p5, :cond_0

    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->APPEND:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    :goto_0
    move-object v6, v0

    .line 65
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/ScopedFile;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V

    .line 67
    invoke-virtual {p4}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-eq v0, v1, :cond_1

    .line 70
    return-void

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot perform a write operation on an asset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V
    .locals 9
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p6, "append"    # Z
    .param p7, "async"    # Z

    .line 44
    nop

    .line 45
    if-eqz p6, :cond_0

    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->APPEND:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    :goto_0
    move-object v7, v0

    .line 44
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/google/appinventor/components/runtime/util/FileStreamOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V

    .line 46
    const-string v0, "//"

    move-object v1, p4

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    return-void

    .line 47
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot perform a write operation on an asset"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected bridge synthetic openFile()Ljava/io/Closeable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->openFile()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method protected openFile()Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->fileName:Ljava/lang/String;

    const-string v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->fileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->accessMode:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    if-ne v2, v3, :cond_0

    const-string v2, "wt"

    goto :goto_0

    :cond_0
    const-string v2, "wa"

    .line 89
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->scope:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "path":Ljava/lang/String;
    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 95
    :cond_2
    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_3
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->mkdirs(Ljava/io/File;)V

    .line 100
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->APPEND:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->accessMode:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v2
.end method

.method protected bridge synthetic process(Ljava/io/Closeable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileWriteOperation;->process(Ljava/io/OutputStream;)Z

    move-result p1

    return p1
.end method

.method protected process(Ljava/io/OutputStream;)Z
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x1

    return v0
.end method
