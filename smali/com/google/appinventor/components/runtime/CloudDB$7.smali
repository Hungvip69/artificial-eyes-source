.class Lcom/google/appinventor/components/runtime/CloudDB$7;
.super Ljava/lang/Object;
.source "CloudDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->ClearTag(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CloudDB;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .line 1078
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1081
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis()Lredis/clients/jedis/Jedis;

    move-result-object v0

    .line 1082
    .local v0, "jedis":Lredis/clients/jedis/Jedis;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$fgetprojectID(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->val$tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lredis/clients/jedis/Jedis;->del(Ljava/lang/String;)Ljava/lang/Long;

    .line 1084
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->val$tag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1085
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->val$tag:Ljava/lang/String;

    const-string v3, "ClearTag"

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->UpdateDone(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    .end local v0    # "jedis":Lredis/clients/jedis/Jedis;
    goto :goto_0

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 1088
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$7;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$mflushJedis(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    .line 1090
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
