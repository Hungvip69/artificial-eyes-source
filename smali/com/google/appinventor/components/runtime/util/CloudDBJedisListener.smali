.class public Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;
.super Lredis/clients/jedis/JedisPubSub;
.source "CloudDBJedisListener.java"


# static fields
.field private static final DEBUG:Z = false

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field public cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

.field private myThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-string v0, "CloudDB"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;)V
    .locals 1
    .param p1, "thisCloudDB"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .line 31
    invoke-direct {p0}, Lredis/clients/jedis/JedisPubSub;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    .line 33
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->myThread:Ljava/lang/Thread;

    .line 34
    return-void
.end method


# virtual methods
.method public onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2, v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v0, v2

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 57
    .local v2, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 60
    .local v4, "value":Ljava/lang/Object;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/CloudDB;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentationIfValueFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "retValue":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 62
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v6, v1, v4}, Lcom/google/appinventor/components/runtime/CloudDB;->DataChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 64
    :cond_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v6, v1, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->DataChanged(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "retValue":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 72
    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1    # "tag":Ljava/lang/String;
    .end local v2    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    goto :goto_2

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onMessage: JSONException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 73
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method public onSubscribe(Ljava/lang/String;I)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "subscribedChannels"    # I

    .line 41
    return-void
.end method

.method public terminate()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 77
    return-void
.end method
