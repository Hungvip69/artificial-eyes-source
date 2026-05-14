.class Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;
.super Ljava/lang/Object;
.source "AssetFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/AssetFetcher;->fetchCachedProject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cookieValue:Ljava/lang/String;

.field final synthetic val$projectId:Ljava/lang/String;

.field final synthetic val$projectName:Ljava/lang/String;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$uri:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$projectId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$cookieValue:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$projectName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$uri:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$projectId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/ode/download/project-cached/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "fileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$cookieValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$projectName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "assets/__projects__/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->-$$Nest$smgetFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    .line 103
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    .line 104
    .local v1, "form":Lcom/google/appinventor/components/runtime/Form;
    new-instance v2, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2$1;

    invoke-direct {v2, p0, v1}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2$1;-><init>(Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;Lcom/google/appinventor/components/runtime/Form;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method
