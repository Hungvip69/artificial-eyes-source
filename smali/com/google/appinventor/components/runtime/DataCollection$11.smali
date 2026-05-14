.class Lcom/google/appinventor/components/runtime/DataCollection$11;
.super Ljava/lang/Object;
.source "DataCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataCollection;->importFromDataFileAsync(Lcom/google/appinventor/components/runtime/DataFile;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/DataCollection;

.field final synthetic val$dataFileColumns:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/util/concurrent/Future;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/DataCollection;

    .line 718
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$11;, "Lcom/google/appinventor/components/runtime/DataCollection$11;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection$11;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection$11;->val$dataFileColumns:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 722
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$11;, "Lcom/google/appinventor/components/runtime/DataCollection$11;"
    const/4 v0, 0x0

    .line 728
    .local v0, "dataResult":Lcom/google/appinventor/components/runtime/util/YailList;
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$11;->val$dataFileColumns:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 733
    :goto_0
    goto :goto_1

    .line 731
    :catch_0
    move-exception v1

    .line 732
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 729
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 730
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 736
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$11;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DataCollection;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/appinventor/components/runtime/DataModel;->importFromColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)V

    .line 738
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$11;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/DataCollection;->onDataChange()V

    .line 739
    return-void
.end method
