.class Lcom/google/appinventor/components/runtime/CloudDB$13;
.super Ljava/lang/Object;
.source "CloudDB.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->getDataValue(Ljava/lang/String;)Ljava/util/concurrent/Future;
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
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CloudDB;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .line 1493
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$13;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB$13;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4

    .line 1498
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$13;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$13;->val$key:Ljava/lang/String;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$mgetValueByTag(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    .line 1501
    .local v0, "valueReference":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1504
    .local v1, "valueString":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1507
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_0

    .line 1508
    move-object v3, v2

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v3

    .line 1512
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1493
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/CloudDB$13;->call()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method
