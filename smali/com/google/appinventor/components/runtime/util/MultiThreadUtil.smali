.class public final Lcom/google/appinventor/components/runtime/util/MultiThreadUtil;
.super Ljava/lang/Object;
.source "MultiThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$MultiThreadException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runAfterPeriod(JLcom/google/appinventor/components/runtime/util/YailProcedure;)V
    .locals 2
    .param p0, "millis"    # J
    .param p2, "procedure"    # Lcom/google/appinventor/components/runtime/util/YailProcedure;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$2;

    invoke-direct {v1, p2}, Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$2;-><init>(Lcom/google/appinventor/components/runtime/util/YailProcedure;)V

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    return-void
.end method

.method public static runInNewThread(Lcom/google/appinventor/components/runtime/util/YailProcedure;Lcom/google/appinventor/components/runtime/util/YailProcedure;)V
    .locals 7
    .param p0, "procedure"    # Lcom/google/appinventor/components/runtime/util/YailProcedure;
    .param p1, "callback"    # Lcom/google/appinventor/components/runtime/util/YailProcedure;

    .line 23
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$1;-><init>(Lcom/google/appinventor/components/runtime/util/YailProcedure;Lcom/google/appinventor/components/runtime/util/YailProcedure;)V

    .line 34
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    nop

    .line 49
    return-void

    .line 35
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "Multi-Thread Exception:"

    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 41
    .local v2, "exceptionInProcedure":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.view.ViewRootImpl$CalledFromWrongThreadException"

    if-ne v4, v5, :cond_0

    .line 42
    new-instance v3, Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$MultiThreadException;

    const-string v4, "Can not operate views in background task"

    invoke-direct {v3, v4, v1}, Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$MultiThreadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 44
    :cond_0
    new-instance v4, Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$MultiThreadException;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v1}, Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$MultiThreadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 47
    .end local v2    # "exceptionInProcedure":Ljava/lang/Throwable;
    :cond_1
    new-instance v2, Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$MultiThreadException;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/appinventor/components/runtime/util/MultiThreadUtil$MultiThreadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
