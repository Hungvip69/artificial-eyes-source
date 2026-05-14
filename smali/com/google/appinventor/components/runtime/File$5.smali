.class Lcom/google/appinventor/components/runtime/File$5;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->CopyFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/File;

.field final synthetic val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/File;

    .line 363
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$5;->this$0:Lcom/google/appinventor/components/runtime/File;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/File$5;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .locals 10
    .param p1, "files"    # [Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 366
    const-string v0, "FileComponent"

    const/4 v1, 0x0

    .line 367
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 368
    .local v2, "out":Ljava/io/OutputStream;
    const/4 v3, 0x1

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "CopyFile"

    const/4 v6, 0x0

    if-nez v4, :cond_0

    .line 370
    aget-object v4, p1, v3

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/File$5;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4, v7}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 371
    .local v4, "parent":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_0

    .line 372
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$5;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/File$5;->this$0:Lcom/google/appinventor/components/runtime/File;

    .line 373
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v6

    .line 372
    const/16 v6, 0x83c

    invoke-virtual {v0, v7, v5, v6, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$5;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->caught(Ljava/lang/Throwable;)V

    .line 375
    return-void

    .line 379
    .end local v4    # "parent":Ljava/io/File;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$5;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    aget-object v7, p1, v6

    invoke-static {v4, v7}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openForReading(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/io/InputStream;

    move-result-object v4

    move-object v1, v4

    .line 380
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$5;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    aget-object v7, p1, v3

    invoke-static {v4, v7}, Lcom/google/appinventor/components/runtime/util/FileUtil;->openForWriting(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/io/OutputStream;

    move-result-object v4

    move-object v2, v4

    .line 381
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/FileUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 390
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 391
    nop

    .line 392
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$5;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->wakeup(Ljava/lang/Object;)V

    .line 393
    return-void

    .line 389
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 382
    :catch_0
    move-exception v4

    .line 383
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    const-string v7, "Unable to copy file"

    invoke-static {v0, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/File$5;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/File$5;->this$0:Lcom/google/appinventor/components/runtime/File;

    aget-object v9, p1, v6

    .line 385
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v9

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v9, v3, v6

    .line 384
    const/16 v6, 0x642

    invoke-virtual {v7, v8, v5, v6, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 386
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$5;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->caught(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 390
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 387
    return-void

    .line 389
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 390
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 391
    throw v3
.end method
