.class Lcom/google/appinventor/components/runtime/util/ContinuationUtil$3;
.super Ljava/lang/Object;
.source "ContinuationUtil.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ContinuationUtil;->callWithContinuationSync(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$block:Ljava/util/concurrent/Callable;

.field final synthetic val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$3;->val$block:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$3;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$3;->val$block:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$3;->val$result:Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->caught(Ljava/lang/Throwable;)V

    .line 84
    const/4 v1, 0x0

    return-object v1
.end method
