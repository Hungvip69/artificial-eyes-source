.class Lcom/google/appinventor/components/runtime/File$9;
.super Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;
.source "File.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/File;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/File;
    .param p2, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p3, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p7, "append"    # Z
    .param p8, "async"    # Z

    .line 625
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lcom/google/appinventor/components/runtime/File$9;->this$0:Lcom/google/appinventor/components/runtime/File;

    move-object/from16 v0, p9

    iput-object v0, v8, Lcom/google/appinventor/components/runtime/File$9;->val$text:Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, v8, Lcom/google/appinventor/components/runtime/File$9;->val$filename:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/io/IOException;)V
    .locals 6
    .param p1, "e"    # Ljava/io/IOException;

    .line 661
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->onError(Ljava/io/IOException;)V

    .line 663
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/File$9;->getFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 664
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/File$9;->getScopedFile()Lcom/google/appinventor/components/runtime/util/ScopedFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    .local v0, "fileName":Ljava/lang/String;
    goto :goto_0

    .line 666
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/File$9;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 668
    .restart local v0    # "fileName":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$9;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$9;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$9;->method:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/16 v5, 0x838

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 670
    return-void
.end method

.method public process(Ljava/io/OutputStreamWriter;)Z
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStreamWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$9;->val$text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 650
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$9;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/File$9$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/File$9$1;-><init>(Lcom/google/appinventor/components/runtime/File$9;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 656
    const/4 v0, 0x1

    return v0
.end method

.method public processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .locals 8
    .param p1, "scopedFile"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 628
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$9;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v0

    .line 629
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 630
    const/4 v1, 0x0

    .line 632
    .local v1, "success":Z
    :try_start_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/IOUtils;->mkdirs(Ljava/io/File;)V

    .line 633
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 636
    goto :goto_0

    .line 634
    :catch_0
    move-exception v2

    .line 635
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FileComponent"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    if-nez v1, :cond_0

    .line 638
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$9;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File$9;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File$9;->method:Ljava/lang/String;

    .line 639
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 638
    const/16 v5, 0x837

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 640
    return-void

    .line 643
    .end local v1    # "success":Z
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/util/FileStreamWriteOperation;->processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V

    .line 644
    return-void
.end method
