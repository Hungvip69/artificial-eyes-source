.class Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;
.super Ljava/lang/Object;
.source "ContinuationUtil.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ContinuationUtil;->wrap(Lgnu/mapping/Procedure;Ljava/lang/Class;)Lcom/google/appinventor/components/runtime/util/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/Continuation<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$procedure:Lgnu/mapping/Procedure;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lgnu/mapping/Procedure;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;->val$clazz:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;->val$procedure:Lgnu/mapping/Procedure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 30
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;->val$clazz:Ljava/lang/Class;

    const-class v1, Ljava/lang/Void;

    if-ne v0, v1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;->val$procedure:Lgnu/mapping/Procedure;

    invoke-virtual {v0}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;->val$procedure:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :goto_0
    nop

    .line 38
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method
