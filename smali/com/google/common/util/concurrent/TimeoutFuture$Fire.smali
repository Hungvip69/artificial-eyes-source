.class final Lcom/google/common/util/concurrent/TimeoutFuture$Fire;
.super Ljava/lang/Object;
.source "TimeoutFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/TimeoutFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Fire"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field timeoutFutureRef:Lcom/google/common/util/concurrent/TimeoutFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/TimeoutFuture<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/TimeoutFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/TimeoutFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/google/common/util/concurrent/TimeoutFuture$Fire;, "Lcom/google/common/util/concurrent/TimeoutFuture$Fire<TV;>;"
    .local p1, "timeoutFuture":Lcom/google/common/util/concurrent/TimeoutFuture;, "Lcom/google/common/util/concurrent/TimeoutFuture<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/google/common/util/concurrent/TimeoutFuture$Fire;->timeoutFutureRef:Lcom/google/common/util/concurrent/TimeoutFuture;

    .line 87
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 93
    .local p0, "this":Lcom/google/common/util/concurrent/TimeoutFuture$Fire;, "Lcom/google/common/util/concurrent/TimeoutFuture$Fire<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/TimeoutFuture$Fire;->timeoutFutureRef:Lcom/google/common/util/concurrent/TimeoutFuture;

    .line 94
    .local v0, "timeoutFuture":Lcom/google/common/util/concurrent/TimeoutFuture;, "Lcom/google/common/util/concurrent/TimeoutFuture<TV;>;"
    if-nez v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/TimeoutFuture;->access$000(Lcom/google/common/util/concurrent/TimeoutFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 98
    .local v1, "delegate":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    if-nez v1, :cond_1

    .line 99
    return-void

    .line 114
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/common/util/concurrent/TimeoutFuture$Fire;->timeoutFutureRef:Lcom/google/common/util/concurrent/TimeoutFuture;

    .line 115
    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/TimeoutFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    goto :goto_0

    .line 119
    :cond_2
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/TimeoutFuture;->access$100(Lcom/google/common/util/concurrent/TimeoutFuture;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    .line 120
    .local v4, "timer":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    const-string v5, "Timed out"

    .line 121
    .local v5, "message":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 122
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v6}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 123
    .local v6, "overDelayMs":J
    const-wide/16 v8, 0xa

    cmp-long v10, v6, v8

    if-lez v10, :cond_3

    .line 124
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (timeout delayed by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms after scheduled time)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 127
    .end local v6    # "overDelayMs":J
    :cond_3
    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/TimeoutFuture;->access$102(Lcom/google/common/util/concurrent/TimeoutFuture;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 128
    new-instance v6, Lcom/google/common/util/concurrent/TimeoutFuture$TimeoutFutureException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/google/common/util/concurrent/TimeoutFuture$TimeoutFutureException;-><init>(Ljava/lang/String;Lcom/google/common/util/concurrent/TimeoutFuture$1;)V

    invoke-virtual {v0, v6}, Lcom/google/common/util/concurrent/TimeoutFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    nop

    .end local v4    # "timer":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    .end local v5    # "message":Ljava/lang/String;
    invoke-interface {v1, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 131
    nop

    .line 133
    :goto_0
    return-void

    .line 130
    :catchall_0
    move-exception v2

    invoke-interface {v1, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 131
    throw v2
.end method
