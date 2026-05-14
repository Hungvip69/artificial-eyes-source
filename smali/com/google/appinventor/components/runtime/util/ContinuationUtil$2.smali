.class Lcom/google/appinventor/components/runtime/util/ContinuationUtil$2;
.super Ljava/lang/Object;
.source "ContinuationUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ContinuationUtil;->callWithContinuation(Ljava/util/concurrent/Callable;Lcom/google/appinventor/components/runtime/util/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$block:Ljava/util/concurrent/Callable;

.field final synthetic val$continuation:Lcom/google/appinventor/components/runtime/util/Continuation;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$2;->val$block:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$2;->val$block:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$2;->val$continuation:Lcom/google/appinventor/components/runtime/util/Continuation;

    invoke-interface {v1, v0}, Lcom/google/appinventor/components/runtime/util/Continuation;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    nop

    .line 61
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
