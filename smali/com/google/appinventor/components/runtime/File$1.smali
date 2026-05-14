.class Lcom/google/appinventor/components/runtime/File$1;
.super Lcom/google/appinventor/components/runtime/util/SingleFileOperation;
.source "File.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->MakeDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/File;

.field final synthetic val$continuation:Lcom/google/appinventor/components/runtime/util/Continuation;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;ZLcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 10
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/File;
    .param p2, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p3, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p4, "method"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p7, "accessMode"    # Lcom/google/appinventor/components/runtime/util/FileAccessMode;
    .param p8, "async"    # Z

    .line 183
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lcom/google/appinventor/components/runtime/File$1;->this$0:Lcom/google/appinventor/components/runtime/File;

    move-object/from16 v0, p9

    iput-object v0, v8, Lcom/google/appinventor/components/runtime/File$1;->val$continuation:Lcom/google/appinventor/components/runtime/util/Continuation;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$1;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/File$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/File$1$1;-><init>(Lcom/google/appinventor/components/runtime/File$1;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 211
    return-void
.end method

.method public processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .locals 4
    .param p1, "scopedFile"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$1;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object v0

    .line 187
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/File$1;->onSuccess()V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const/16 v1, 0x83d

    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/File$1;->reportError(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/File$1;->onSuccess()V

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const/16 v1, 0x83c

    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/File$1;->reportError(I[Ljava/lang/Object;)V

    .line 202
    :goto_0
    return-void
.end method
