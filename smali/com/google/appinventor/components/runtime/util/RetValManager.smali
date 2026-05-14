.class public Lcom/google/appinventor/components/runtime/util/RetValManager;
.super Ljava/lang/Object;
.source "RetValManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RetValManager"

.field private static final TENSECONDS:J = 0x2710L

.field private static currentArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final semaphore:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static appendLogValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "item"    # Ljava/lang/String;
    .param p1, "blockid"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "level"    # Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "status"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v2, "type"

    const-string v3, "log"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v2, "item"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v2, "blockid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v2, "level"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    nop

    .line 86
    :try_start_2
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 87
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    goto :goto_0

    .line 90
    :cond_0
    if-eqz v2, :cond_1

    .line 91
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 93
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "sendNotify":Z
    :cond_1
    :goto_0
    monitor-exit v0

    .line 94
    return-void

    .line 82
    .restart local v1    # "retval":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v4, "Error building retval"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    monitor-exit v0

    return-void

    .line 93
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static appendReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "blockid"    # Ljava/lang/String;
    .param p1, "ok"    # Ljava/lang/String;
    .param p2, "item"    # Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "status"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v2, "type"

    const-string v3, "return"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v2, "blockid"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    nop

    .line 63
    :try_start_2
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 64
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    goto :goto_0

    .line 67
    :cond_0
    if-eqz v2, :cond_1

    .line 68
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 70
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "sendNotify":Z
    :cond_1
    :goto_0
    monitor-exit v0

    .line 71
    return-void

    .line 59
    .restart local v1    # "retval":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v4, "Error building retval"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    monitor-exit v0

    return-void

    .line 70
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static assetTransferred(Ljava/lang/String;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 180
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "status"

    const-string v3, "OK"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v2, "type"

    const-string v3, "assetTransferred"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    if-eqz p0, :cond_0

    .line 186
    const-string v2, "value"

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :cond_0
    nop

    .line 191
    :try_start_2
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 192
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    goto :goto_0

    .line 195
    :cond_1
    if-eqz v2, :cond_2

    .line 196
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 198
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "sendNotify":Z
    :cond_2
    :goto_0
    monitor-exit v0

    .line 199
    return-void

    .line 187
    .restart local v1    # "retval":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v4, "Error building retval"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    monitor-exit v0

    return-void

    .line 198
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static extensionsLoaded()V
    .locals 5

    .line 206
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "status"

    const-string v3, "OK"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v2, "type"

    const-string v3, "extensionsLoaded"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    nop

    .line 215
    :try_start_2
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 216
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    goto :goto_0

    .line 219
    :cond_0
    if-eqz v2, :cond_1

    .line 220
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 222
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "sendNotify":Z
    :cond_1
    :goto_0
    monitor-exit v0

    .line 223
    return-void

    .line 211
    .restart local v1    # "retval":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 212
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v4, "Error building retval"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    monitor-exit v0

    return-void

    .line 222
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static fetch(Z)Ljava/lang/String;
    .locals 10
    .param p0, "block"    # Z

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 259
    .local v0, "startTime":J
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v2

    .line 260
    :goto_0
    :try_start_0
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p0, :cond_1

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .local v3, "time":J
    sub-long v5, v3, v0

    const-wide/16 v7, 0x26ac

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    .line 263
    goto :goto_2

    .line 265
    :cond_0
    :try_start_1
    sget-object v5, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    goto :goto_1

    .line 266
    :catch_0
    move-exception v5

    .line 268
    .end local v3    # "time":J
    :goto_1
    goto :goto_0

    .line 269
    :cond_1
    :goto_2
    :try_start_2
    new-instance v3, Lorg/json/JSONArray;

    sget-object v4, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 270
    .local v3, "arrayoutput":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    .local v4, "output":Lorg/json/JSONObject;
    :try_start_3
    const-string v5, "status"

    const-string v6, "OK"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v5, "values"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    nop

    .line 278
    :try_start_4
    sget-object v5, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 279
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    monitor-exit v2

    return-object v5

    .line 274
    :catch_1
    move-exception v5

    .line 275
    .local v5, "e":Lorg/json/JSONException;
    const-string v6, "RetValManager"

    const-string v7, "Error fetching retvals"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    const-string v6, "{\"status\" : \"BAD\", \"message\" : \"Failure in RetValManager\"}"

    monitor-exit v2

    return-object v6

    .line 280
    .end local v3    # "arrayoutput":Lorg/json/JSONArray;
    .end local v4    # "output":Lorg/json/JSONObject;
    .end local v5    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :goto_3
    throw v3

    :goto_4
    goto :goto_3
.end method

.method public static popScreen(Ljava/lang/String;)V
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 153
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "status"

    const-string v3, "OK"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v2, "type"

    const-string v3, "popScreen"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    if-eqz p0, :cond_0

    .line 159
    const-string v2, "value"

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :cond_0
    nop

    .line 164
    :try_start_2
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 165
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    goto :goto_0

    .line 168
    :cond_1
    if-eqz v2, :cond_2

    .line 169
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 171
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "sendNotify":Z
    :cond_2
    :goto_0
    monitor-exit v0

    .line 172
    return-void

    .line 160
    .restart local v1    # "retval":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v4, "Error building retval"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    monitor-exit v0

    return-void

    .line 171
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static pushScreen(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p0, "screenName"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "status"

    const-string v3, "OK"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v2, "type"

    const-string v3, "pushScreen"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v2, "screen"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    if-eqz p1, :cond_0

    .line 131
    const-string v2, "value"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :cond_0
    nop

    .line 136
    :try_start_2
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 137
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    goto :goto_0

    .line 140
    :cond_1
    if-eqz v2, :cond_2

    .line 141
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 143
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "sendNotify":Z
    :cond_2
    :goto_0
    monitor-exit v0

    .line 144
    return-void

    .line 132
    .restart local v1    # "retval":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v4, "Error building retval"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    monitor-exit v0

    return-void

    .line 143
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static sendError(Ljava/lang/String;)V
    .locals 5
    .param p0, "error"    # Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "status"

    const-string v3, "OK"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v2, "type"

    const-string v3, "error"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v2, "value"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    nop

    .line 107
    :try_start_2
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 108
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    goto :goto_0

    .line 111
    :cond_0
    if-eqz v2, :cond_1

    .line 112
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 114
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "sendNotify":Z
    :cond_1
    :goto_0
    monitor-exit v0

    .line 115
    return-void

    .line 103
    .restart local v1    # "retval":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 104
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v4, "Error building retval"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    monitor-exit v0

    return-void

    .line 114
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static startCache()V
    .locals 5

    .line 230
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .local v1, "retval":Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "status"

    const-string v3, "OK"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v2, "type"

    const-string v3, "startCache"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    nop

    .line 239
    :try_start_2
    sget-object v2, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 240
    .local v2, "sendNotify":Z
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getUseWebRTC()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->webRTCsendCurrent()V

    goto :goto_0

    .line 243
    :cond_0
    if-eqz v2, :cond_1

    .line 244
    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->semaphore:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 246
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "sendNotify":Z
    :cond_1
    :goto_0
    monitor-exit v0

    .line 247
    return-void

    .line 235
    .restart local v1    # "retval":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 236
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "RetValManager"

    const-string v4, "Error building retval"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    monitor-exit v0

    return-void

    .line 246
    .end local v1    # "retval":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static webRTCsendCurrent()V
    .locals 4

    .line 287
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 288
    .local v0, "output":Lorg/json/JSONObject;
    const-string v1, "status"

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v1, "values"

    new-instance v2, Lorg/json/JSONArray;

    sget-object v3, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ReplForm;->returnRetvals(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v0    # "output":Lorg/json/JSONObject;
    nop

    .line 295
    sget-object v0, Lcom/google/appinventor/components/runtime/util/RetValManager;->currentArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 296
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "RetValManager"

    const-string v2, "Error building retval"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    return-void
.end method
