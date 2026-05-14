.class public Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;
.super Ljava/lang/Object;
.source "ProjectsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ProjectsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JavaInterface"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ProjectsActivity;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ProjectsActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ProjectsActivity;
    .param p2, "context"    # Landroid/content/Context;

    .line 52
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;->this$0:Lcom/google/appinventor/components/runtime/ProjectsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method public deleteProject(Ljava/lang/String;)V
    .locals 0
    .param p1, "projectName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 91
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ProjectManager;->deleteProject(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public finished()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;->this$0:Lcom/google/appinventor/components/runtime/ProjectsActivity;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ProjectsActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface$1;-><init>(Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method public listProjects()Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;->this$0:Lcom/google/appinventor/components/runtime/ProjectsActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ProjectsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "assets/__projects__"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 59
    .local v0, "projectsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "projectsDir = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProjectsActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "files":[Ljava/lang/String;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 62
    .local v2, "retval":Lorg/json/JSONArray;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 63
    .local v5, "file":Ljava/lang/String;
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 62
    .end local v5    # "file":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public loadProject(Ljava/lang/String;)V
    .locals 2
    .param p1, "projectName"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 70
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 71
    .local v0, "form":Lcom/google/appinventor/components/runtime/Form;
    move-object v1, v0

    check-cast v1, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ReplForm;->setInAppLibrary()V

    .line 72
    const-string v1, "0"

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/ProjectManager;->setProjectInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/ProjectManager;->loadAssets()V

    .line 74
    const-string v1, "Screen1"

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ProjectManager;->evalScreenYail(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;->finished()V

    .line 76
    return-void
.end method
