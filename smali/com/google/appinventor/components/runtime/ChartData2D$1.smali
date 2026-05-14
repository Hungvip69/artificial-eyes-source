.class Lcom/google/appinventor/components/runtime/ChartData2D$1;
.super Ljava/lang/Object;
.source "ChartData2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChartData2D;->AddEntry(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

.field final synthetic val$isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$x:Ljava/lang/String;

.field final synthetic val$y:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ChartData2D;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ChartData2D;

    .line 68
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$x:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$y:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 73
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$x:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$y:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v2, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    .line 75
    .local v1, "pair":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ChartData2D;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    check-cast v2, Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Chart;->Labels()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    .line 76
    .local v2, "labelList":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$x:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 77
    .local v4, "indexList":I
    const/4 v6, -0x1

    if-le v4, v6, :cond_0

    .line 78
    new-array v3, v3, [Ljava/io/Serializable;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$y:Ljava/lang/String;

    aput-object v5, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    move-object v1, v3

    .line 81
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v3, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v3, v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 84
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ChartData2D;->onDataChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    .end local v1    # "pair":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v2    # "labelList":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v4    # "indexList":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    monitor-enter v1

    .line 87
    :try_start_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 89
    monitor-exit v1

    .line 90
    nop

    .line 91
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 86
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    monitor-enter v2

    .line 87
    :try_start_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->val$isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D$1;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 89
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 90
    throw v1

    .line 89
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
