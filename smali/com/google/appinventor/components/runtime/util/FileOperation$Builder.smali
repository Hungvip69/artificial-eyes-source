.class public Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
.super Ljava/lang/Object;
.source "FileOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/FileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private askPermission:Z

.field private async:Z

.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;",
            ">;"
        }
    .end annotation
.end field

.field private component:Lcom/google/appinventor/components/runtime/Component;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private method:Ljava/lang/String;

.field private final neededPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private needsExternalStorage:Z

.field private final scopedFiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/google/appinventor/components/runtime/util/ScopedFile;",
            "Lcom/google/appinventor/components/runtime/util/FileAccessMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetaskPermission(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->askPermission:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcommands(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->commands:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetneededPermissions(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->neededPermissions:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetneedsExternalStorage(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->needsExternalStorage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscopedFiles(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->scopedFiles:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->scopedFiles:Ljava/util/LinkedHashMap;

    .line 225
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->neededPermissions:Ljava/util/Set;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->commands:Ljava/util/List;

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->async:Z

    .line 228
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->needsExternalStorage:Z

    .line 229
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->askPermission:Z

    .line 232
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V
    .locals 2
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "method"    # Ljava/lang/String;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->scopedFiles:Ljava/util/LinkedHashMap;

    .line 225
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->neededPermissions:Ljava/util/Set;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->commands:Ljava/util/List;

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->async:Z

    .line 228
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->needsExternalStorage:Z

    .line 229
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->askPermission:Z

    .line 243
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 244
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->component:Lcom/google/appinventor/components/runtime/Component;

    .line 245
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->method:Ljava/lang/String;

    .line 246
    return-void
.end method


# virtual methods
.method public addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 1
    .param p1, "command"    # Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;

    .line 304
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    return-object p0
.end method

.method public addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 7
    .param p1, "scope"    # Lcom/google/appinventor/components/common/FileScope;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "accessMode"    # Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 272
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-direct {v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/ScopedFile;-><init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V

    .line 273
    .local v0, "file":Lcom/google/appinventor/components/runtime/util/ScopedFile;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    if-ne p3, v1, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->component:Lcom/google/appinventor/components/runtime/Component;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->method:Ljava/lang/String;

    .line 275
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 274
    const/16 v4, 0x83a

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 276
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw v1

    .line 278
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->scopedFiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, p2, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "resolvedFileName":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileOperation;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->method:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resolved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->needsExternalStorage:Z

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v3, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->needsExternalStorage:Z

    .line 282
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, v1, p3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getNeededPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "permission":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 284
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->neededPermissions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_5

    .line 287
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v3

    sget-object v4, Lcom/google/appinventor/components/common/FileScope;->Shared:Lcom/google/appinventor/components/common/FileScope;

    if-ne v3, v4, :cond_5

    sget-object v3, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    if-ne p3, v3, :cond_5

    .line 289
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->neededPermissions:Ljava/util/Set;

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 290
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "android.permission.READ_MEDIA_AUDIO"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->doesAppDeclarePermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 291
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->neededPermissions:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->doesAppDeclarePermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 294
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->neededPermissions:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_4
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "android.permission.READ_MEDIA_VIDEO"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->doesAppDeclarePermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 297
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->neededPermissions:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_5
    return-object p0
.end method

.method public build()Lcom/google/appinventor/components/runtime/util/FileOperation;
    .locals 7

    .line 324
    new-instance v6, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->component:Lcom/google/appinventor/components/runtime/Component;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->method:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->async:Z

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;-><init>(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public setAskPermission(Z)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 0
    .param p1, "askPermission"    # Z

    .line 314
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->askPermission:Z

    .line 315
    return-object p0
.end method

.method public setAsynchronous(Z)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 0
    .param p1, "async"    # Z

    .line 309
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->async:Z

    .line 310
    return-object p0
.end method

.method public setComponent(Lcom/google/appinventor/components/runtime/Component;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 0
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/Component;

    .line 254
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->component:Lcom/google/appinventor/components/runtime/Component;

    .line 255
    return-object p0
.end method

.method public setForm(Lcom/google/appinventor/components/runtime/Form;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 0
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;

    .line 249
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 250
    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .line 259
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->method:Ljava/lang/String;

    .line 260
    return-object p0
.end method
