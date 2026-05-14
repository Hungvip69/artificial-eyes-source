.class Lcom/google/appinventor/components/runtime/ChartData2D$2;
.super Ljava/lang/Object;
.source "ChartData2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChartData2D;->RemoveEntry(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 118
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->val$x:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->val$y:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->val$isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 123
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->val$x:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->val$y:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v2, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    .line 125
    .local v1, "pair":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ChartData2D;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    check-cast v2, Lcom/google/appinventor/components/runtime/Chart;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Chart;->Labels()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    .line 126
    .local v2, "labelList":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->val$x:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 127
    .local v4, "indexList":I
    const/4 v6, 0x0

    .line 128
    .local v6, "currEntry":Lcom/github/mikephil/charting/data/Entry;
    const/4 v7, -0x1

    if-le v4, v7, :cond_0

    .line 129
    new-array v3, v3, [Ljava/io/Serializable;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->val$y:Ljava/lang/String;

    aput-object v5, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    move-object v1, v3

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v3, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v3, v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    .line 134
    .end local v6    # "currEntry":Lcom/github/mikephil/charting/data/Entry;
    .local v3, "currEntry":Lcom/github/mikephil/charting/data/Entry;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v5, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v5, v3}, Lcom/google/appinventor/components/runtime/ChartDataModel;->findEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v5

    .line 136
    .local v5, "index":I
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v6, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v6, v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->removeEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 138
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    invoke-static {v6, v5}, Lcom/google/appinventor/components/runtime/ChartData2D;->-$$Nest$mresetHighlightAtIndex(Lcom/google/appinventor/components/runtime/ChartData2D;I)V

    .line 139
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/ChartData2D;->onDataChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    .end local v1    # "pair":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v2    # "labelList":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v3    # "currEntry":Lcom/github/mikephil/charting/data/Entry;
    .end local v4    # "indexList":I
    .end local v5    # "index":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    monitor-enter v1

    .line 142
    :try_start_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->val$isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 144
    monitor-exit v1

    .line 145
    nop

    .line 146
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 141
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    monitor-enter v2

    .line 142
    :try_start_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->val$isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D$2;->this$0:Lcom/google/appinventor/components/runtime/ChartData2D;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 144
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 145
    throw v1

    .line 144
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
