.class public Lcom/google/appinventor/components/runtime/File;
.super Lcom/google/appinventor/components/runtime/FileBase;
.source "File.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component for storing and retrieving files. Use this component to write or read files on your device. The default behaviour is to write files to the private data directory associated with your App. The Companion is special cased to write files to a public directory for debugging. Use the More information link to read more about how the File component uses paths and scopes to manage access to files."
    iconName = "images/file.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileComponent"


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 119
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/FileBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 120
    return-void
.end method

.method private write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 15
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "append"    # Z

    .line 616
    move-object v12, p0

    move-object/from16 v13, p1

    const-string v0, "//"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, v12, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v13, v1, v2

    const/16 v2, 0x83a

    move-object/from16 v14, p2

    invoke-virtual {v0, p0, v14, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 619
    return-void

    .line 621
    :cond_0
    move-object/from16 v14, p2

    const-string v0, "/"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileUtil;->checkExternalStorageWriteable()V

    .line 625
    :cond_1
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/File$9;

    iget-object v3, v12, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v7, v12, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    const/4 v9, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move/from16 v8, p4

    move-object/from16 v10, p3

    move-object/from16 v11, p1

    invoke-direct/range {v1 .. v11}, Lcom/google/appinventor/components/runtime/File$9;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/File$9;->run()V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    .line 675
    :goto_0
    return-void
.end method


# virtual methods
.method public AfterFileSaved(Ljava/lang/String;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the contents of the file have been written."
    .end annotation

    .line 696
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "AfterFileSaved"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 697
    return-void
.end method

.method public AppendToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Appends text to the end of a file storage, creating the file if it does not exist. See the help text under SaveFile for information about where files are written."
    .end annotation

    .line 544
    const-string v0, "AppendToFile"

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/google/appinventor/components/runtime/File;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 545
    return-void
.end method

.method public CopyFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 5
    .param p1, "fromScope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "fromFileName"    # Ljava/lang/String;
    .param p3, "toScope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p4, "toFileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 349
    .local p5, "continuation":Lcom/google/appinventor/components/runtime/util/Continuation;, "Lcom/google/appinventor/components/runtime/util/Continuation<Ljava/lang/Boolean;>;"
    const-string v0, "CopyFile"

    .line 352
    .local v0, "method":Ljava/lang/String;
    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    const-string v2, "CopyFile"

    if-eq p3, v1, :cond_0

    .line 359
    new-instance v1, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 360
    .local v1, "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    new-instance v3, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v3, v4, p0, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 361
    invoke-virtual {v3, p1, p2, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 362
    invoke-virtual {v2, p3, p4, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/File$5;

    invoke-direct {v3, p0, v1}, Lcom/google/appinventor/components/runtime/File$5;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 363
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v2

    .line 394
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 395
    invoke-static {v1, p5}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    .line 396
    return-void

    .line 353
    .end local v1    # "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    const/16 v4, 0x83a

    invoke-virtual {v1, p0, v2, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 355
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw v1
.end method

.method public Delete(Ljava/lang/String;)V
    .locals 13
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes a file from storage. Prefix the filename with / to delete a specific file in the SD card, for instance /myFile.txt. will delete the file /sdcard/myFile.txt. If the file does not begin with a /, then the file located in the programs private storage will be deleted. Starting the file with // is an error because assets files cannot be deleted."
    .end annotation

    .line 584
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Delete"

    const/16 v3, 0x839

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 587
    return-void

    .line 590
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/File$8;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v8, "Delete"

    iget-object v10, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v4, v0

    move-object v5, p0

    move-object v7, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v12}, Lcom/google/appinventor/components/runtime/File$8;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZZ)V

    .line 601
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/File$8;->run()V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 605
    :goto_0
    return-void
.end method

.method public Exists(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 4
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 457
    .local p3, "continuation":Lcom/google/appinventor/components/runtime/util/Continuation;, "Lcom/google/appinventor/components/runtime/util/Continuation<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 458
    .local v0, "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "Exists"

    invoke-direct {v1, v2, p0, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 459
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/File$7;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/File$7;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 460
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v1

    .line 483
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 484
    invoke-static {v0, p3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    .line 485
    return-void
.end method

.method public GotText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the contents from the file have been read."
    .end annotation

    .line 685
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "GotText"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 686
    return-void
.end method

.method public IsDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 9
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 311
    .local p3, "continuation":Lcom/google/appinventor/components/runtime/util/Continuation;, "Lcom/google/appinventor/components/runtime/util/Continuation<Ljava/lang/Boolean;>;"
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    const-string v1, "IsDirectory"

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 314
    .local v0, "manager":Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "files":[Ljava/lang/String;
    const-string v5, "FileComponent"

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contents of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p3, v5}, Lcom/google/appinventor/components/runtime/util/Continuation;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v4    # "files":[Ljava/lang/String;
    goto :goto_1

    .line 317
    :catch_0
    move-exception v4

    .line 318
    .local v4, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    const/16 v2, 0x83e

    invoke-virtual {v5, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 321
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 324
    .end local v0    # "manager":Landroid/content/res/AssetManager;
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 325
    .local v0, "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v2, v3, p0, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 326
    invoke-virtual {v2, p1, p2, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/File$4;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/File$4;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 327
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v1

    .line 333
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 334
    invoke-static {v0, p3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    .line 335
    return-void
.end method

.method public ListDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 7
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "directoryName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 260
    .local p3, "continuation":Lcom/google/appinventor/components/runtime/util/Continuation;, "Lcom/google/appinventor/components/runtime/util/Continuation<Ljava/util/List<Ljava/lang/String;>;>;"
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    const/4 v1, 0x0

    const-string v2, "ListDirectory"

    const/4 v3, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v4, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-direct {v4, p1, p2}, Lcom/google/appinventor/components/runtime/util/ScopedFile;-><init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/util/FileUtil;->listDirectory(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/appinventor/components/runtime/util/Continuation;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const/16 v1, 0x840

    invoke-virtual {v4, p0, v2, v1, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 268
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 269
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Shared:Lcom/google/appinventor/components/common/FileScope;

    if-ne p1, v0, :cond_2

    const-string v0, "content:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_2

    .line 271
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    .line 272
    .local v0, "dir":Landroidx/documentfile/provider/DocumentFile;
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v2

    .line 273
    .local v2, "files":[Landroidx/documentfile/provider/DocumentFile;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v2

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v2, v1

    .line 275
    .local v5, "file":Landroidx/documentfile/provider/DocumentFile;
    invoke-virtual {v5}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v5    # "file":Landroidx/documentfile/provider/DocumentFile;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    :cond_1
    invoke-interface {p3, v3}, Lcom/google/appinventor/components/runtime/util/Continuation;->call(Ljava/lang/Object;)V

    .line 278
    return-void

    .line 280
    .end local v0    # "dir":Landroidx/documentfile/provider/DocumentFile;
    .end local v2    # "files":[Landroidx/documentfile/provider/DocumentFile;
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 283
    :cond_3
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 284
    .local v0, "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v1, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v1, v4, p0, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->setAskPermission(Z)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v1

    .line 286
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->setAsynchronous(Z)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 287
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/File$3;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/File$3;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 288
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v1

    .line 298
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 299
    invoke-static {v0, p3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    .line 300
    return-void
.end method

.method public MakeDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 13
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "directoryName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 177
    .local p3, "continuation":Lcom/google/appinventor/components/runtime/util/Continuation;, "Lcom/google/appinventor/components/runtime/util/Continuation<Ljava/lang/Boolean;>;"
    move-object v10, p0

    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    move-object v11, p1

    if-ne v11, v0, :cond_0

    .line 178
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "MakeDirectory"

    const/16 v3, 0x83c

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 180
    return-void

    .line 182
    :cond_0
    new-instance v12, Lcom/google/appinventor/components/runtime/File$1;

    iget-object v2, v10, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    sget-object v7, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    const/4 v8, 0x0

    const-string v4, "MakeDirectory"

    move-object v0, v12

    move-object v1, p0

    move-object v3, p0

    move-object v5, p2

    move-object v6, p1

    move-object/from16 v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/appinventor/components/runtime/File$1;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;ZLcom/google/appinventor/components/runtime/util/Continuation;)V

    .line 212
    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/File$1;->run()V

    .line 213
    return-void
.end method

.method public MakeFullPath(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p2, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MoveFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 5
    .param p1, "fromScope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "fromFileName"    # Ljava/lang/String;
    .param p3, "toScope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p4, "toFileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 414
    .local p5, "continuation":Lcom/google/appinventor/components/runtime/util/Continuation;, "Lcom/google/appinventor/components/runtime/util/Continuation<Ljava/lang/Boolean;>;"
    const-string v0, "MoveFile"

    .line 417
    .local v0, "method":Ljava/lang/String;
    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "MoveFile"

    if-ne p1, v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    const/16 v2, 0x839

    invoke-virtual {v1, p0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 420
    return-void

    .line 422
    :cond_0
    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne p3, v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p4, v3, v2

    const/16 v2, 0x83a

    invoke-virtual {v1, p0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 425
    return-void

    .line 429
    :cond_1
    new-instance v1, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 430
    .local v1, "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v2, v3, p0, v4}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 431
    invoke-virtual {v2, p1, p2, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 432
    invoke-virtual {v2, p3, p4, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/File$6;

    invoke-direct {v3, p0, v1}, Lcom/google/appinventor/components/runtime/File$6;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 433
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v2

    .line 443
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 444
    invoke-static {v1, p5}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    .line 445
    return-void
.end method

.method public ReadFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads text from a file in storage. Prefix the filename with / to read from a specific file on the SD card. for instance /myFile.txt will read the file /sdcard/myFile.txt. To read assets packaged with an application (also works for the Companion) start the filename with // (two slashes). If a filename does not start with a slash, it will be read from the applications private storage (for packaged apps) and from /sdcard/AppInventor/data for the Companion."
    .end annotation

    .line 565
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/File;->readFromFile(Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method public ReadPermission(Z)V
    .locals 0
    .param p1, "required"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    .line 134
    return-void
.end method

.method public RemoveDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;ZLcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 4
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "directoryName"    # Ljava/lang/String;
    .param p3, "recursive"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 227
    .local p4, "continuation":Lcom/google/appinventor/components/runtime/util/Continuation;, "Lcom/google/appinventor/components/runtime/util/Continuation<Ljava/lang/Boolean;>;"
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    const-string v1, "RemoveDirectory"

    if-ne p1, v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/16 v3, 0x841

    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 230
    return-void

    .line 233
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 234
    .local v0, "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v2, v3, p0, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 235
    invoke-virtual {v2, p1, p2, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/File$2;

    invoke-direct {v2, p0, v0, p3}, Lcom/google/appinventor/components/runtime/File$2;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;Z)V

    .line 236
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 247
    invoke-static {v0, p4}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    .line 248
    return-void
.end method

.method public SaveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves text to a file. If the filename begins with a slash (/) the file is written to the sdcard. For example writing to /myFile.txt will write the file to /sdcard/myFile.txt. If the filename does not start with a slash, it will be written in the programs private data directory where it will not be accessible to other programs on the phone. There is a special exception for the AI Companion where these files are written to /sdcard/AppInventor/data to facilitate debugging. Note that this block will overwrite a file if it already exists.\n\nIf you want to add content to a file use the append block."
    .end annotation

    .line 526
    const-string v0, "SaveFile"

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/google/appinventor/components/runtime/File;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 527
    return-void
.end method

.method public Scope()Lcom/google/appinventor/components/common/FileScope;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method

.method public Scope(Lcom/google/appinventor/components/common/FileScope;)V
    .locals 0
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    .line 144
    return-void
.end method

.method public WritePermission(Z)V
    .locals 0
    .param p1, "required"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.WRITE_EXTERNAL_STORAGE"
        }
    .end annotation

    .line 163
    return-void
.end method

.method protected afterRead(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .line 701
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/File$10;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/File$10;-><init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 707
    return-void
.end method
