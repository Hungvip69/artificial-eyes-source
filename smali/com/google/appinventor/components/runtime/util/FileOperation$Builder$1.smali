.class Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;
.super Lcom/google/appinventor/components/runtime/util/FileOperation;
.source "FileOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .param p2, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p3, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "async"    # Z

    .line 324
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/appinventor/components/runtime/util/FileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetneededPermissions(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected needsExternalStorage()Z
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetneedsExternalStorage(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Z

    move-result v0

    return v0
.end method

.method protected needsPermission()Z
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetneededPermissions(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected performOperation()V
    .locals 7

    .line 332
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetaskPermission(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetneededPermissions(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 334
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetneededPermissions(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 335
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 337
    .local v2, "perm":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 338
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 340
    .end local v2    # "perm":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->needsPermission()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 343
    :cond_2
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileOperation;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->method:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetneededPermissions(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " need permissions: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1$1;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->component:Lcom/google/appinventor/components/runtime/Component;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->method:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetneededPermissions(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/String;

    .line 345
    invoke-interface {v6, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1$1;-><init>(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    .line 344
    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 352
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw v1

    .line 357
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetscopedFiles(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 358
    .local v0, "filesArray":[Lcom/google/appinventor/components/runtime/util/ScopedFile;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->this$0:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->-$$Nest$fgetcommands(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;

    .line 360
    .local v2, "command":Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;
    :try_start_0
    invoke-interface {v2, v0}, Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;->call([Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    nop

    .line 364
    .end local v2    # "command":Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;
    goto :goto_2

    .line 361
    .restart local v2    # "command":Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 365
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "command":Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;
    :cond_4
    return-void
.end method
