.class Lcom/google/appinventor/components/runtime/File$4;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->IsDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
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

    .line 327
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$4;->this$0:Lcom/google/appinventor/components/runtime/File;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/File$4;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .locals 4
    .param p1, "files"    # [Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 330
    const/4 v0, 0x0

    aget-object v1, p1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsDirectory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileComponent"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$4;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    aget-object v0, p1, v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$4;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->wakeup(Ljava/lang/Object;)V

    .line 332
    return-void
.end method
