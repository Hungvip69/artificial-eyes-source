.class Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;
.super Ljava/lang/Object;
.source "WebRTCNativeMgr.java"

# interfaces
.implements Lorg/webrtc/SdpObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .line 92
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppInvWebRTC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public onCreateSuccess(Lorg/webrtc/SessionDescription;)V
    .locals 5
    .param p1, "sessionDescription"    # Lorg/webrtc/SessionDescription;

    .line 103
    const-string v0, "AppInvWebRTC"

    :try_start_0
    iget-object v1, p1, Lorg/webrtc/SessionDescription;->type:Lorg/webrtc/SessionDescription$Type;

    invoke-virtual {v1}, Lorg/webrtc/SessionDescription$Type;->canonicalForm()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdp.type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p1, Lorg/webrtc/SessionDescription;->description:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdp.description = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    new-instance v1, Lorg/webrtc/DataChannel$Init;

    invoke-direct {v1}, Lorg/webrtc/DataChannel$Init;-><init>()V

    .line 107
    .local v1, "init":Lorg/webrtc/DataChannel$Init;
    iget-object v2, p1, Lorg/webrtc/SessionDescription;->type:Lorg/webrtc/SessionDescription$Type;

    sget-object v3, Lorg/webrtc/SessionDescription$Type;->OFFER:Lorg/webrtc/SessionDescription$Type;

    if-ne v2, v3, :cond_0

    .line 109
    const-string v2, "Got offer, about to set remote description (again?)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->-$$Nest$fgetpeerConnection(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Lorg/webrtc/PeerConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    invoke-virtual {v2, v3, p1}, Lorg/webrtc/PeerConnection;->setRemoteDescription(Lorg/webrtc/SdpObserver;Lorg/webrtc/SessionDescription;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v2, p1, Lorg/webrtc/SessionDescription;->type:Lorg/webrtc/SessionDescription$Type;

    sget-object v3, Lorg/webrtc/SessionDescription$Type;->ANSWER:Lorg/webrtc/SessionDescription$Type;

    if-ne v2, v3, :cond_1

    .line 114
    const-string v2, "onCreateSuccess: type = ANSWER"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->-$$Nest$fgetpeerConnection(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Lorg/webrtc/PeerConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    invoke-virtual {v2, v3, p1}, Lorg/webrtc/PeerConnection;->setLocalDescription(Lorg/webrtc/SdpObserver;Lorg/webrtc/SessionDescription;)V

    .line 117
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->-$$Nest$fputhaveLocalDescription(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)V

    .line 119
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 120
    .local v2, "offer":Lorg/json/JSONObject;
    const-string v3, "type"

    const-string v4, "answer"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v3, "sdp"

    iget-object v4, p1, Lorg/webrtc/SessionDescription;->description:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 123
    .local v3, "response":Lorg/json/JSONObject;
    const-string v4, "offer"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v4, v3}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->-$$Nest$msendRendezvous(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1    # "init":Lorg/webrtc/DataChannel$Init;
    .end local v2    # "offer":Lorg/json/JSONObject;
    .end local v3    # "response":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    goto :goto_1

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Exception during onCreateSuccess"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onSetFailure(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .line 132
    return-void
.end method

.method public onSetSuccess()V
    .locals 0

    .line 135
    return-void
.end method
