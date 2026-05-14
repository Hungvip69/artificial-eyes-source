.class public abstract Lcom/google/appinventor/components/runtime/util/FileOperation;
.super Ljava/lang/Object;
.source "FileOperation.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;,
        Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected volatile askedForPermission:Z

.field protected final async:Z

.field protected final component:Lcom/google/appinventor/components/runtime/Component;

.field protected final form:Lcom/google/appinventor/components/runtime/Form;

.field protected volatile hasPermission:Z

.field protected final method:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileOperation;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/google/appinventor/components/runtime/util/FileOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/FileOperation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "async"    # Z

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->askedForPermission:Z

    .line 47
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    .line 50
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 51
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->component:Lcom/google/appinventor/components/runtime/Component;

    .line 52
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->method:Ljava/lang/String;

    .line 53
    iput-boolean p4, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->async:Z

    .line 54
    return-void
.end method

.method private getNeededPermissions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 199
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileOperation;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 203
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 204
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 205
    .local v3, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4, v3}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 206
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v3    # "permission":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 209
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->askedForPermission:Z

    .line 152
    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    .line 153
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 154
    return-void
.end method

.method public abstract getPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract needsExternalStorage()Z
.end method

.method protected abstract needsPermission()Z
.end method

.method protected abstract performOperation()V
.end method

.method protected varargs reportError(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "errorNumber"    # I
    .param p2, "messageArgs"    # [Ljava/lang/Object;

    .line 190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/FileOperation$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/FileOperation$2;-><init>(Lcom/google/appinventor/components/runtime/util/FileOperation;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method public final run()V
    .locals 6

    .line 85
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/FileOperation;->getNeededPermissions()Ljava/util/List;

    move-result-object v0

    .line 86
    .local v0, "neededPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->isUiThread()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 89
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileOperation;->needsExternalStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileUtil;->checkExternalStorageWriteable()V

    .line 92
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_4

    .line 93
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    if-nez v1, :cond_2

    .line 94
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->askedForPermission:Z

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->component:Lcom/google/appinventor/components/runtime/Component;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->method:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->askedForPermission:Z

    goto :goto_0

    .line 98
    :cond_1
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->askedForPermission:Z

    .line 99
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/FileOperation$1;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->component:Lcom/google/appinventor/components/runtime/Component;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->method:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    .line 100
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$1;-><init>(Lcom/google/appinventor/components/runtime/util/FileOperation;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 111
    :goto_0
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw v1

    .line 112
    :cond_2
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->async:Z

    if-eqz v1, :cond_3

    .line 113
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileOperation;->performOperation()V

    .line 117
    :goto_1
    return-void

    .line 121
    :cond_4
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    .line 123
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->async:Z

    if-eqz v1, :cond_5

    .line 124
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 126
    :cond_5
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileOperation;->performOperation()V

    goto :goto_2

    .line 128
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 131
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    .line 132
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->askedForPermission:Z

    .line 133
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 135
    :cond_7
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FileOperation;->performOperation()V

    .line 137
    :goto_2
    return-void
.end method
