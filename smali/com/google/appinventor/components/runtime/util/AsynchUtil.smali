.class public Lcom/google/appinventor/components/runtime/util/AsynchUtil;
.super Ljava/lang/Object;
.source "AsynchUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/google/appinventor/components/runtime/util/AsynchUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/util/Synchronizer<",
            "TT;>;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "TT;>;)V"
        }
    .end annotation

    .line 75
    .local p0, "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<TT;>;"
    .local p1, "continuation":Lcom/google/appinventor/components/runtime/util/Continuation;, "Lcom/google/appinventor/components/runtime/util/Continuation<TT;>;"
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Waiting for synchronizer result"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->waitfor()V

    .line 79
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/appinventor/components/runtime/util/Continuation;->call(Ljava/lang/Object;)V

    .line 89
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    .line 83
    .local v0, "e":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 84
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 86
    :cond_1
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public static isUiThread()Z
    .locals 2

    .line 61
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static runAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "androidUIHandler"    # Landroid/os/Handler;
    .param p1, "call"    # Ljava/lang/Runnable;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .line 44
    new-instance v0, Lcom/google/appinventor/components/runtime/util/AsynchUtil$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 56
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 57
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 58
    return-void
.end method

.method public static runAsynchronously(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "call"    # Ljava/lang/Runnable;

    .line 31
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 32
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    return-void
.end method
