.class Lcom/google/appinventor/components/runtime/File$6;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->MoveFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
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

    .line 433
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$6;->this$0:Lcom/google/appinventor/components/runtime/File;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/File$6;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .locals 5
    .param p1, "files"    # [Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 437
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$6;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$6;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    aget-object v3, p1, v0

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/FileUtil;->moveFile(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->wakeup(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    goto :goto_0

    .line 438
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$6;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->wakeup(Ljava/lang/Object;)V

    .line 442
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
