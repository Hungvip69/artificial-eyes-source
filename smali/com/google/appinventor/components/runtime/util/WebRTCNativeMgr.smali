.class public Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;
.super Ljava/lang/Object;
.source "WebRTCNativeMgr.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AppInvWebRTC"

.field private static final utf8Decoder:Ljava/nio/charset/CharsetDecoder;


# instance fields
.field private dataChannel:Lorg/webrtc/DataChannel;

.field dataObserver:Lorg/webrtc/DataChannel$Observer;

.field private first:Z

.field private form:Lcom/google/appinventor/components/runtime/ReplForm;

.field private volatile haveLocalDescription:Z

.field private haveOffer:Z

.field private iceServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/webrtc/PeerConnection$IceServer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile keepPolling:Z

.field observer:Lorg/webrtc/PeerConnection$Observer;

.field private peerConnection:Lorg/webrtc/PeerConnection;

.field private rCode:Ljava/lang/String;

.field private random:Ljava/util/Random;

.field private rendezvousServer:Ljava/lang/String;

.field private rendezvousServer2:Ljava/lang/String;

.field sdpObserver:Lorg/webrtc/SdpObserver;

.field private seenNonces:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field timer:Ljava/util/Timer;


# direct methods
.method static bridge synthetic -$$Nest$fgetfirst(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->first:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetform(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Lcom/google/appinventor/components/runtime/ReplForm;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpeerConnection(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Lorg/webrtc/PeerConnection;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrCode(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrandom(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/util/Random;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->random:Ljava/util/Random;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrendezvousServer2(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer2:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetseenNonces(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/util/TreeSet;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->seenNonces:Ljava/util/TreeSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdataChannel(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/webrtc/DataChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfirst(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->first:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhaveLocalDescription(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveLocalDescription:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputkeepPolling(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mPoller(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->Poller()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendRendezvous(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sendRendezvous(Lorg/json/JSONObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetutf8Decoder()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "rendezvousServer"    # Ljava/lang/String;
    .param p2, "rendezvousResult"    # Ljava/lang/String;

    .line 236
    const-string v0, "password"

    const-string v1, "username"

    const-string v2, "server"

    const-string v3, "AppInvWebRTC"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->seenNonces:Ljava/util/TreeSet;

    .line 78
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveOffer:Z

    .line 80
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    .line 81
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveLocalDescription:Z

    .line 82
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->first:Z

    .line 83
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->random:Ljava/util/Random;

    .line 84
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    .line 85
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer:Ljava/lang/String;

    .line 86
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer2:Ljava/lang/String;

    .line 87
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->iceServers:Ljava/util/List;

    .line 89
    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->timer:Ljava/util/Timer;

    .line 92
    new-instance v4, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$1;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    .line 139
    new-instance v4, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$2;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->observer:Lorg/webrtc/PeerConnection$Observer;

    .line 214
    new-instance v4, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$3;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$3;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataObserver:Lorg/webrtc/DataChannel$Observer;

    .line 237
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer:Ljava/lang/String;

    .line 238
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "OK"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    :cond_0
    const-string p2, "{\"rendezvous2\" : \"rendezvous.appinventor.mit.edu\",\"iceservers\" : [{ \"server\" : \"stun:stun.l.google.com:19302\" },{ \"server\" : \"turn:turn.appinventor.mit.edu:3478\",\"username\" : \"oh\",\"password\" : \"boy\"}]}"

    .line 248
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 249
    .local v4, "resultJson":Lorg/json/JSONObject;
    const-string v5, "rendezvous2"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer2:Ljava/lang/String;

    .line 250
    const-string v5, "iceservers"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 251
    .local v5, "iceServerArray":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->iceServers:Ljava/util/List;

    .line 252
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 253
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 254
    .local v7, "jsonServer":Lorg/json/JSONObject;
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/webrtc/PeerConnection$IceServer;->builder(Ljava/lang/String;)Lorg/webrtc/PeerConnection$IceServer$Builder;

    move-result-object v8

    .line 256
    .local v8, "builder":Lorg/webrtc/PeerConnection$IceServer$Builder;
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding iceServer = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 259
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/webrtc/PeerConnection$IceServer$Builder;->setUsername(Ljava/lang/String;)Lorg/webrtc/PeerConnection$IceServer$Builder;

    .line 261
    :cond_2
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 262
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/webrtc/PeerConnection$IceServer$Builder;->setPassword(Ljava/lang/String;)Lorg/webrtc/PeerConnection$IceServer$Builder;

    .line 264
    :cond_3
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->iceServers:Ljava/util/List;

    invoke-virtual {v8}, Lorg/webrtc/PeerConnection$IceServer$Builder;->createIceServer()Lorg/webrtc/PeerConnection$IceServer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    nop

    .end local v7    # "jsonServer":Lorg/json/JSONObject;
    .end local v8    # "builder":Lorg/webrtc/PeerConnection$IceServer$Builder;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 268
    .end local v4    # "resultJson":Lorg/json/JSONObject;
    .end local v5    # "iceServerArray":Lorg/json/JSONArray;
    .end local v6    # "i":I
    :cond_4
    goto :goto_1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "parsing iceServers:"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method private Poller()V
    .locals 20

    .line 301
    move-object/from16 v1, p0

    const-string v0, "nonce"

    const-string v2, "candidate"

    const-string v3, "AppInvWebRTC"

    :try_start_0
    iget-boolean v4, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    if-nez v4, :cond_0

    .line 302
    return-void

    .line 306
    :cond_0
    const-string v4, "Poller() Called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v4, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer2:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Poller: rendezvousServer2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 310
    .local v4, "client":Lorg/apache/http/client/HttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    iget-object v6, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rendezvousServer2:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rCode:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/rendezvous2/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 311
    .local v5, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 312
    .local v6, "response":Lorg/apache/http/HttpResponse;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 316
    .local v8, "rd":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    .line 318
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v9

    .line 319
    const-string v9, ""

    move-object v10, v9

    .line 320
    .local v10, "line":Ljava/lang/String;
    :goto_0
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v10, v11

    if-eqz v11, :cond_1

    .line 321
    :try_start_3
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 324
    .end local v10    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_3

    :cond_1
    nop

    .line 325
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 329
    iget-boolean v10, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->keepPolling:Z

    if-nez v10, :cond_2

    .line 331
    const-string v0, "keepPolling is false, we\'re done!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void

    .line 336
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 339
    .local v10, "responseText":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "response = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 344
    const-string v0, "Received an empty response"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void

    .line 350
    :cond_3
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 352
    .local v9, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "jsonArray.length() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v11, 0x0

    .line 355
    .local v11, "i":I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_b

    .line 357
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "i = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "element = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    .line 361
    .local v12, "element":Lorg/json/JSONObject;
    iget-boolean v13, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveOffer:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v14, "offer"

    if-nez v13, :cond_6

    .line 362
    :try_start_5
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 363
    add-int/lit8 v11, v11, 0x1

    .line 364
    goto :goto_1

    .line 366
    :cond_4
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 367
    .local v13, "offer":Lorg/json/JSONObject;
    const-string v14, "sdp"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 368
    .local v14, "sdp":Ljava/lang/String;
    const-string v15, "type"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 369
    .local v15, "type":Ljava/lang/String;
    move-object/from16 v16, v4

    const/4 v4, 0x1

    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .local v16, "client":Lorg/apache/http/client/HttpClient;
    iput-boolean v4, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveOffer:Z

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    .end local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    .local v17, "request":Lorg/apache/http/client/methods/HttpGet;
    const-string v5, "sdb = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v4, "About to set remote offer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v4, "Got offer, about to set remote description (maincode)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v4, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    iget-object v5, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    move-object/from16 v18, v6

    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .local v18, "response":Lorg/apache/http/HttpResponse;
    new-instance v6, Lorg/webrtc/SessionDescription;

    move-object/from16 v19, v7

    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .local v19, "sb":Ljava/lang/StringBuilder;
    sget-object v7, Lorg/webrtc/SessionDescription$Type;->OFFER:Lorg/webrtc/SessionDescription$Type;

    invoke-direct {v6, v7, v14}, Lorg/webrtc/SessionDescription;-><init>(Lorg/webrtc/SessionDescription$Type;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lorg/webrtc/PeerConnection;->setRemoteDescription(Lorg/webrtc/SdpObserver;Lorg/webrtc/SessionDescription;)V

    .line 380
    iget-object v4, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    iget-object v5, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sdpObserver:Lorg/webrtc/SdpObserver;

    new-instance v6, Lorg/webrtc/MediaConstraints;

    invoke-direct {v6}, Lorg/webrtc/MediaConstraints;-><init>()V

    invoke-virtual {v4, v5, v6}, Lorg/webrtc/PeerConnection;->createAnswer(Lorg/webrtc/SdpObserver;Lorg/webrtc/MediaConstraints;)V

    .line 382
    const-string v4, "createAnswer returned"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v11, -0x1

    .line 385
    .end local v13    # "offer":Lorg/json/JSONObject;
    .end local v14    # "sdp":Ljava/lang/String;
    .end local v15    # "type":Ljava/lang/String;
    :cond_5
    goto/16 :goto_2

    .end local v16    # "client":Lorg/apache/http/client/HttpClient;
    .end local v17    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v17    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 386
    iget-boolean v4, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->haveLocalDescription:Z

    if-nez v4, :cond_7

    .line 388
    const-string v0, "Incoming candidate before local description set, punting"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void

    .line 392
    :cond_7
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 393
    add-int/lit8 v11, v11, 0x1

    .line 395
    const-string v4, "skipping offer, already processed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto/16 :goto_1

    .line 399
    :cond_8
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 400
    add-int/lit8 v11, v11, 0x1

    .line 402
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto/16 :goto_1

    .line 404
    :cond_9
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 405
    .local v4, "nonce":Ljava/lang/String;
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 406
    .local v5, "candidate":Lorg/json/JSONObject;
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 407
    .local v6, "sdpcandidate":Ljava/lang/String;
    const-string v7, "sdpMid"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 408
    .local v7, "sdpMid":Ljava/lang/String;
    const-string v13, "sdpMLineIndex"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 409
    .local v13, "sdpMLineIndex":I
    iget-object v14, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->seenNonces:Ljava/util/TreeSet;

    invoke-virtual {v14, v4}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 410
    iget-object v14, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->seenNonces:Ljava/util/TreeSet;

    invoke-virtual {v14, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 412
    const-string v14, "new nonce, about to add candidate!"

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "candidate = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v14, Lorg/webrtc/IceCandidate;

    invoke-direct {v14, v7, v13, v6}, Lorg/webrtc/IceCandidate;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 416
    .local v14, "iceCandidate":Lorg/webrtc/IceCandidate;
    iget-object v15, v1, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    invoke-virtual {v15, v14}, Lorg/webrtc/PeerConnection;->addIceCandidate(Lorg/webrtc/IceCandidate;)Z

    .line 418
    const-string v15, "addIceCandidate returned"

    invoke-static {v3, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .end local v4    # "nonce":Ljava/lang/String;
    .end local v5    # "candidate":Lorg/json/JSONObject;
    .end local v6    # "sdpcandidate":Ljava/lang/String;
    .end local v7    # "sdpMid":Ljava/lang/String;
    .end local v13    # "sdpMLineIndex":I
    .end local v14    # "iceCandidate":Lorg/webrtc/IceCandidate;
    :cond_a
    :goto_2
    const/4 v4, 0x1

    .end local v12    # "element":Lorg/json/JSONObject;
    add-int/2addr v11, v4

    .line 423
    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto/16 :goto_1

    .line 425
    .end local v16    # "client":Lorg/apache/http/client/HttpClient;
    .end local v17    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .local v4, "client":Lorg/apache/http/client/HttpClient;
    .local v5, "request":Lorg/apache/http/client/methods/HttpGet;
    .local v6, "response":Lorg/apache/http/HttpResponse;
    .local v7, "sb":Ljava/lang/StringBuilder;
    :cond_b
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v17    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    const-string v0, "exited loop"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    nop

    .end local v8    # "rd":Ljava/io/BufferedReader;
    .end local v9    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "responseText":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v16    # "client":Lorg/apache/http/client/HttpClient;
    .end local v17    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    goto :goto_5

    .line 324
    .restart local v4    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "rd":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v4    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v17    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    :goto_3
    if-eqz v8, :cond_c

    .line 325
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 327
    :cond_c
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 431
    .end local v8    # "rd":Ljava/io/BufferedReader;
    .end local v16    # "client":Lorg/apache/http/client/HttpClient;
    .end local v17    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 429
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 430
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught JSONException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Lorg/json/JSONException;
    goto :goto_4

    .line 427
    :catch_2
    move-exception v0

    .line 428
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    nop

    .line 434
    :goto_5
    return-void
.end method

.method private sendRendezvous(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "data"    # Lorg/json/JSONObject;

    .line 437
    new-instance v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 464
    return-void
.end method


# virtual methods
.method public initiate(Lcom/google/appinventor/components/runtime/ReplForm;Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/ReplForm;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "code"    # Ljava/lang/String;

    .line 273
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 274
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->rCode:Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/webrtc/PeerConnectionFactory;->initializeAndroidGlobals(Landroid/content/Context;Z)V

    .line 278
    new-instance v0, Lorg/webrtc/PeerConnectionFactory$Options;

    invoke-direct {v0}, Lorg/webrtc/PeerConnectionFactory$Options;-><init>()V

    .line 280
    .local v0, "options":Lorg/webrtc/PeerConnectionFactory$Options;
    new-instance v1, Lorg/webrtc/PeerConnectionFactory;

    invoke-direct {v1, v0}, Lorg/webrtc/PeerConnectionFactory;-><init>(Lorg/webrtc/PeerConnectionFactory$Options;)V

    .line 282
    .local v1, "factory":Lorg/webrtc/PeerConnectionFactory;
    new-instance v2, Lorg/webrtc/PeerConnection$RTCConfiguration;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->iceServers:Ljava/util/List;

    invoke-direct {v2, v3}, Lorg/webrtc/PeerConnection$RTCConfiguration;-><init>(Ljava/util/List;)V

    .line 283
    .local v2, "rtcConfig":Lorg/webrtc/PeerConnection$RTCConfiguration;
    sget-object v3, Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;->GATHER_CONTINUALLY:Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;

    iput-object v3, v2, Lorg/webrtc/PeerConnection$RTCConfiguration;->continualGatheringPolicy:Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;

    .line 284
    new-instance v3, Lorg/webrtc/MediaConstraints;

    invoke-direct {v3}, Lorg/webrtc/MediaConstraints;-><init>()V

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->observer:Lorg/webrtc/PeerConnection$Observer;

    invoke-virtual {v1, v2, v3, v4}, Lorg/webrtc/PeerConnectionFactory;->createPeerConnection(Lorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/MediaConstraints;Lorg/webrtc/PeerConnection$Observer;)Lorg/webrtc/PeerConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->peerConnection:Lorg/webrtc/PeerConnection;

    .line 286
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->timer:Ljava/util/Timer;

    new-instance v5, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;

    invoke-direct {v5, p0}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$4;-><init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x3e8

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 292
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 4
    .param p1, "output"    # Ljava/lang/String;

    .line 468
    const-string v0, "AppInvWebRTC"

    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    if-nez v1, :cond_0

    .line 469
    const-string v1, "No Data Channel in Send"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void

    .line 472
    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 473
    .local v1, "bbuffer":Ljava/nio/ByteBuffer;
    new-instance v2, Lorg/webrtc/DataChannel$Buffer;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/webrtc/DataChannel$Buffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 474
    .local v2, "buffer":Lorg/webrtc/DataChannel$Buffer;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->dataChannel:Lorg/webrtc/DataChannel;

    invoke-virtual {v3, v2}, Lorg/webrtc/DataChannel;->send(Lorg/webrtc/DataChannel$Buffer;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    nop

    .end local v1    # "bbuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "buffer":Lorg/webrtc/DataChannel$Buffer;
    goto :goto_0

    .line 475
    :catch_0
    move-exception v1

    .line 476
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "While encoding data to send to companion"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-void
.end method
