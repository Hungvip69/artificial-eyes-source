.class Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$3;
.super Ljava/lang/Object;
.source "WebRTCNativeMgr.java"

# interfaces
.implements Lorg/webrtc/DataChannel$Observer;


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

    .line 214
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$3;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferedAmountChange(J)V
    .locals 0
    .param p1, "j"    # J

    .line 216
    return-void
.end method

.method public onMessage(Lorg/webrtc/DataChannel$Buffer;)V
    .locals 4
    .param p1, "buffer"    # Lorg/webrtc/DataChannel$Buffer;

    .line 221
    const-string v0, "AppInvWebRTC"

    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->-$$Nest$sfgetutf8Decoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    iget-object v2, p1, Lorg/webrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .local v1, "input":Ljava/lang/String;
    nop

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessage: received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$3;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->-$$Nest$fgetform(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Lcom/google/appinventor/components/runtime/ReplForm;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ReplForm;->evalScheme(Ljava/lang/String;)V

    .line 230
    return-void

    .line 222
    .end local v1    # "input":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/nio/charset/CharacterCodingException;
    const-string v2, "onMessage decoder error"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    return-void
.end method

.method public onStateChange()V
    .locals 0

    .line 233
    return-void
.end method
