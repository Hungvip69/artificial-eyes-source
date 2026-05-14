.class Lcom/google/appinventor/components/runtime/CloudDB$9;
.super Ljava/lang/Object;
.source "CloudDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->GetTagList()V
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

    .line 1126
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$9;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$9;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis()Lredis/clients/jedis/Jedis;

    move-result-object v0

    .line 1130
    .local v0, "jedis":Lredis/clients/jedis/Jedis;
    const/4 v1, 0x0

    .line 1132
    .local v1, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$9;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$fgetprojectID(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lredis/clients/jedis/Jedis;->keys(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2
    :try_end_0
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 1137
    nop

    .line 1138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1140
    .local v2, "listValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1141
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$9;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$fgetprojectID(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1140
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1144
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB$9;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/CloudDB;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/CloudDB$9$1;

    invoke-direct {v4, p0, v2}, Lcom/google/appinventor/components/runtime/CloudDB$9$1;-><init>(Lcom/google/appinventor/components/runtime/CloudDB$9;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1150
    return-void

    .line 1133
    .end local v2    # "listValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 1134
    .local v2, "e":Lredis/clients/jedis/exceptions/JedisException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB$9;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v2}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 1135
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/CloudDB$9;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$mflushJedis(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    .line 1136
    return-void
.end method
