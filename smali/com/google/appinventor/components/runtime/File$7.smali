.class Lcom/google/appinventor/components/runtime/File$7;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->Exists(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
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

    .line 460
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$7;->this$0:Lcom/google/appinventor/components/runtime/File;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/File$7;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .locals 7
    .param p1, "files"    # [Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 463
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$7;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v1

    if-nez v1, :cond_2

    .line 464
    const/4 v1, 0x0

    .line 466
    .local v1, "success":Z
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$7;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "items":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 468
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 469
    .local v5, "item":Ljava/lang/String;
    aget-object v6, p1, v0

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    .line 470
    const/4 v0, 0x1

    .line 471
    .end local v1    # "success":Z
    .local v0, "success":Z
    move v1, v0

    goto :goto_1

    .line 468
    .end local v0    # "success":Z
    .end local v5    # "item":Ljava/lang/String;
    .restart local v1    # "success":Z
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 477
    .end local v2    # "items":[Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_2

    .line 475
    :catch_0
    move-exception v0

    .line 478
    :goto_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$7;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->wakeup(Ljava/lang/Object;)V

    .line 479
    .end local v1    # "success":Z
    goto :goto_3

    .line 480
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$7;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    aget-object v0, p1, v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$7;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->wakeup(Ljava/lang/Object;)V

    .line 482
    :goto_3
    return-void
.end method
