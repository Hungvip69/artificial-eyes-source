.class Lcom/google/appinventor/components/runtime/File$2;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->RemoveDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;ZLcom/google/appinventor/components/runtime/util/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/File;

.field final synthetic val$recursive:Z

.field final synthetic val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/File;

    .line 236
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/File$2;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/File$2;->val$recursive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .locals 4
    .param p1, "files"    # [Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 240
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    .line 241
    .local v0, "file":Lcom/google/appinventor/components/runtime/util/ScopedFile;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$2;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$2;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/File$2;->val$recursive:Z

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->removeDirectory(Ljava/io/File;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->wakeup(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v0    # "file":Lcom/google/appinventor/components/runtime/util/ScopedFile;
    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$2;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->caught(Ljava/lang/Throwable;)V

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
