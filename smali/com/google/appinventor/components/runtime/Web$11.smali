.class Lcom/google/appinventor/components/runtime/Web$11;
.super Ljava/lang/Object;
.source "Web.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;
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
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic val$currentTask:Ljava/util/concurrent/FutureTask;

.field final synthetic val$key:Lcom/google/appinventor/components/runtime/util/YailList;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;Ljava/util/concurrent/FutureTask;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Web;

    .line 1633
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$11;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Web$11;->val$currentTask:Ljava/util/concurrent/FutureTask;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Web$11;->val$key:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1638
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$11;->val$currentTask:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$11;->val$currentTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$11;->val$currentTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1640
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$11;->val$currentTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1643
    :catch_0
    move-exception v0

    .line 1644
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    .line 1641
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 1642
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1645
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    nop

    .line 1649
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$11;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$11;->val$key:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Web;->getColumns(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

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

    .line 1633
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Web$11;->call()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method
