.class Lcom/google/appinventor/components/runtime/CloudDB$1;
.super Ljava/lang/Thread;
.source "CloudDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->startListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CloudDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .line 390
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 392
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis(Z)Lredis/clients/jedis/Jedis;

    move-result-object v0

    .line 393
    .local v0, "jedis":Lredis/clients/jedis/Jedis;
    const/4 v2, 0x0

    const-wide/16 v3, 0xbb8

    if-eqz v0, :cond_0

    .line 395
    :try_start_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    new-instance v6, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$fputcurrentListener(Lcom/google/appinventor/components/runtime/CloudDB;Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;)V

    .line 396
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$fgetcurrentListener(Lcom/google/appinventor/components/runtime/CloudDB;)Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$fgetprojectID(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/String;

    aput-object v6, v1, v2

    invoke-virtual {v0, v5, v1}, Lredis/clients/jedis/Jedis;->subscribe(Lredis/clients/jedis/JedisPubSub;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 397
    :catch_0
    move-exception v1

    .line 398
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CloudDB"

    const-string v6, "Error in listener thread"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    :try_start_1
    invoke-virtual {v0}, Lredis/clients/jedis/Jedis;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 403
    goto :goto_0

    .line 401
    :catch_1
    move-exception v5

    .line 408
    :goto_0
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 410
    goto :goto_1

    .line 409
    :catch_2
    move-exception v3

    .line 414
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 420
    :cond_0
    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 422
    goto :goto_2

    .line 421
    :catch_3
    move-exception v1

    .line 427
    :goto_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$fputlistenerRunning(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    .line 428
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$fgetdead(Lcom/google/appinventor/components/runtime/CloudDB;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$fgetshutdown(Lcom/google/appinventor/components/runtime/CloudDB;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$mstartListener(Lcom/google/appinventor/components/runtime/CloudDB;)V

    .line 435
    :cond_1
    return-void
.end method
