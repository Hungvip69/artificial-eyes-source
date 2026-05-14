.class Lcom/google/appinventor/components/runtime/util/AssetFetcher$2$1;
.super Ljava/lang/Object;
.source "AssetFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;

.field final synthetic val$form:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;

    .line 104
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2$1;->this$0:Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2$1;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 106
    new-instance v0, Lcom/google/appinventor/components/runtime/Notifier;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2$1;->val$form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/Notifier;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2$1;->this$0:Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->val$projectName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Project "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Saved"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Notifier;->ShowAlert(Ljava/lang/String;)V

    .line 107
    return-void
.end method
