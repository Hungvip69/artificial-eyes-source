.class Lcom/google/appinventor/components/runtime/Spreadsheet$19;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;Z)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$currentTask:Ljava/util/concurrent/FutureTask;

.field final synthetic val$key:Lcom/google/appinventor/components/runtime/util/YailList;

.field final synthetic val$useHeaders:Z


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/util/concurrent/FutureTask;Lcom/google/appinventor/components/runtime/util/YailList;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .line 2077
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$19;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$19;->val$currentTask:Ljava/util/concurrent/FutureTask;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$19;->val$key:Lcom/google/appinventor/components/runtime/util/YailList;

    iput-boolean p4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$19;->val$useHeaders:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2080
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$19;->val$currentTask:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$19;->val$currentTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$19;->val$currentTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2082
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$19;->val$currentTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2085
    goto :goto_0

    .line 2083
    :catch_0
    move-exception v0

    .line 2084
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SPREADSHEET"

    const-string v2, "Error in RetrieveSheet"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2088
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$19;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$19;->val$key:Lcom/google/appinventor/components/runtime/util/YailList;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$19;->val$useHeaders:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->getColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2077
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spreadsheet$19;->call()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method
