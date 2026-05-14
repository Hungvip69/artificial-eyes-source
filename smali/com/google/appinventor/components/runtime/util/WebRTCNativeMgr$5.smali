.class Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;
.super Ljava/lang/Object;
.source "WebRTCNativeMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sendRendezvous(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

.field final synthetic val$data:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .line 437
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->val$data:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 441
    const-string v0, "AppInvWebRTC"

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->val$data:Lorg/json/JSONObject;

    const-string v2, "first"

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->-$$Nest$fgetfirst(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 442
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->val$data:Lorg/json/JSONObject;

    const-string v2, "webrtc"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 443
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->val$data:Lorg/json/JSONObject;

    const-string v2, "key"

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->-$$Nest$fgetrCode(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->-$$Nest$fgetfirst(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->-$$Nest$fputfirst(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)V

    .line 446
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->val$data:Lorg/json/JSONObject;

    const-string v2, "apiversion"

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 448
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 449
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->-$$Nest$fgetrendezvousServer2(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/rendezvous2/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 452
    .local v2, "post":Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->val$data:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "About to send = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->val$data:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 455
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 458
    goto :goto_0

    .line 456
    :catch_0
    move-exception v3

    .line 457
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "sendRedezvous IOException"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 461
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 459
    :catch_1
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Exception in sendRendezvous"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
