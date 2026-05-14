.class public Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;
.super Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.source "AppInvHTTPD.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppInvHTTPD"

.field private static final MIME_JSON:Ljava/lang/String; = "application/json"

.field private static final YAV_SKEW_BACKWARD:I = 0x4

.field private static final YAV_SKEW_FORWARD:I = 0x1

.field private static hmacKey:[B

.field private static seq:I


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field private form:Lcom/google/appinventor/components/runtime/ReplForm;

.field private rootDir:Ljava/io/File;

.field private scheme:Lgnu/expr/Language;

.field private secure:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetform(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)Lcom/google/appinventor/components/runtime/ReplForm;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    return-object p0
.end method

.method public constructor <init>(ILjava/io/File;ZLcom/google/appinventor/components/runtime/ReplForm;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "wwwroot"    # Ljava/io/File;
    .param p3, "secure"    # Z
    .param p4, "form"    # Lcom/google/appinventor/components/runtime/ReplForm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;-><init>(ILjava/io/File;)V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->androidUIHandler:Landroid/os/Handler;

    .line 66
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    .line 67
    const-string v0, "scheme"

    invoke-static {v0}, Lkawa/standard/Scheme;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->scheme:Lgnu/expr/Language;

    .line 68
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 69
    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    .line 70
    invoke-static {}, Lgnu/expr/ModuleExp;->mustNeverCompile()V

    .line 71
    return-void
.end method

.method private addHeaders(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 2
    .param p1, "res"    # Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    .line 405
    const-string v0, "Access-Control-Allow-Origin"

    const-string v1, "*"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v0, "Access-Control-Allow-Headers"

    const-string v1, "origin, content-type"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v0, "Access-Control-Allow-Methods"

    const-string v1, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v0, "Allow"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-object p1
.end method

.method private adoptMainThreadClassLoader()V
    .locals 3

    .line 374
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 375
    .local v0, "mainClassLoader":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 376
    .local v1, "myThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eq v2, v0, :cond_0

    .line 377
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 379
    :cond_0
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 6
    .param p1, "infile"    # Ljava/io/File;
    .param p2, "outfile"    # Ljava/io/File;

    .line 325
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 326
    .local v0, "in":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 327
    .local v1, "out":Ljava/io/FileOutputStream;
    const v2, 0x8000

    new-array v2, v2, [B

    .line 330
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    move v4, v3

    .local v4, "len":I
    const/4 v5, 0x0

    if-lez v3, :cond_0

    .line 331
    invoke-virtual {v1, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 335
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    return v5

    .line 337
    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "buffer":[B
    .end local v4    # "len":I
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 339
    const/4 v1, 0x1

    return v1
.end method

.method private error(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 390
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 392
    .local v0, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "status"

    const-string v2, "BAD"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    goto :goto_0

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "AppInvHTTPD"

    const-string v3, "Unable to write basic JSON content"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v2, "application/json"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "200 OK"

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->addHeaders(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v1

    return-object v1
.end method

.method private error(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 401
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->error(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method private json(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .line 386
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v1, "200 OK"

    const-string v2, "application/json"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->addHeaders(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method private message(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 3
    .param p1, "txt"    # Ljava/lang/String;

    .line 382
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v1, "200 OK"

    const-string v2, "text/plain"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->addHeaders(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method

.method private processLoadExtensionsRequest(Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 6
    .param p1, "parms"    # Ljava/util/Properties;

    .line 345
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    const-string v1, "extensions"

    const-string v2, "[]"

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v1, "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 348
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, "extensionName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 350
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v3    # "extensionName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 352
    .restart local v3    # "extensionName":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid JSON content at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->error(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v4

    .line 356
    .end local v2    # "i":I
    .end local v3    # "extensionName":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/ReplForm;->loadComponents(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 359
    nop

    .line 360
    :try_start_2
    const-string v2, "OK"

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->message(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v2

    return-object v2

    .line 357
    :catch_0
    move-exception v2

    .line 358
    .local v2, "e":Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->error(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v3

    .line 361
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "extensionsToLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 362
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->error(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v1

    return-object v1
.end method

.method public static setHmacKey(Ljava/lang/String;)V
    .locals 1
    .param p0, "inputKey"    # Ljava/lang/String;

    .line 417
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    .line 418
    const/4 v0, 0x1

    sput v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 419
    return-void
.end method


# virtual methods
.method public resetSeq()V
    .locals 1

    .line 422
    const/4 v0, 0x1

    sput v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 423
    return-void
.end method

.method public serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 32
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/util/Properties;
    .param p4, "parms"    # Ljava/util/Properties;
    .param p5, "files"    # Ljava/util/Properties;
    .param p6, "mySocket"    # Ljava/net/Socket;

    .line 83
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " \'"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\' "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "AppInvHTTPD"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-boolean v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    const-string v7, "Allow"

    const-string v8, "Access-Control-Allow-Methods"

    const-string v9, "origin, content-type"

    const-string v10, "Access-Control-Allow-Headers"

    const-string v11, "*"

    const-string v12, "Access-Control-Allow-Origin"

    const-string v13, "application/json"

    const-string v14, "200 OK"

    const-string v15, "POST,OPTIONS,GET,HEAD,PUT"

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual/range {p6 .. p6}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 92
    .local v0, "myAddress":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "hostAddress":Ljava/lang/String;
    move-object/from16 v16, v0

    .end local v0    # "myAddress":Ljava/net/InetAddress;
    .local v16, "myAddress":Ljava/net/InetAddress;
    const-string v0, "127.0.0.1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug: hostAddress = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " while in secure mode, closing connection."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Source Location "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\"}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v14, v13, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v0, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    invoke-virtual {v0, v12, v11}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, v10, v9}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v8, v15}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0, v7, v15}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-object v0

    .line 107
    .end local v0    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v5    # "hostAddress":Ljava/lang/String;
    .end local v16    # "myAddress":Ljava/net/InetAddress;
    :cond_0
    const-string v0, "OPTIONS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "OK"

    const-string v5, "text/plain"

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual/range {p3 .. p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 112
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 114
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 115
    .local v13, "value":Ljava/lang/String;
    nop

    .line 116
    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/util/Enumeration;
    .local v16, "e":Ljava/util/Enumeration;
    invoke-virtual {v4, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  HDR: \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v13    # "value":Ljava/lang/String;
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v0, v16

    goto :goto_0

    .line 118
    .end local v16    # "e":Ljava/util/Enumeration;
    .restart local v0    # "e":Ljava/util/Enumeration;
    :cond_1
    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/util/Enumeration;
    .restart local v16    # "e":Ljava/util/Enumeration;
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    invoke-direct {v0, v1, v14, v5, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v0, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    invoke-virtual {v0, v12, v11}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, v10, v9}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v8, v15}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v7, v15}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-object v0

    .line 127
    .end local v0    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v16    # "e":Ljava/util/Enumeration;
    :cond_2
    const-string v0, "/_newblocks"

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 128
    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->adoptMainThreadClassLoader()V

    .line 129
    const-string v0, "seq"

    const-string v2, "0"

    move-object/from16 v4, p4

    invoke-virtual {v4, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "inSeq":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 131
    .local v3, "iseq":I
    const-string v0, "blockid"

    move-object/from16 v17, v5

    invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "blockid":Ljava/lang/String;
    const-string v0, "code"

    move-object/from16 v18, v7

    invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, "code":Ljava/lang/String;
    const-string v0, "mac"

    move-object/from16 v19, v8

    const-string v8, "no key provided"

    invoke-virtual {v4, v0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, "inMac":Ljava/lang/String;
    const-string v20, ""

    .line 135
    .local v20, "compMac":Ljava/lang/String;
    move-object/from16 v21, v7

    .line 136
    .local v21, "input_code":Ljava/lang/String;
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    if-eqz v0, :cond_8

    .line 138
    :try_start_0
    const-string v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 139
    .local v0, "hmacSha1":Ljavax/crypto/Mac;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v22, v15

    sget-object v15, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hmacKey:[B

    move-object/from16 v23, v9

    const-string v9, "RAW"

    invoke-direct {v4, v15, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 140
    .local v4, "key":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v0, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 141
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v9

    .line 142
    .local v9, "tmpMac":[B
    new-instance v15, Ljava/lang/StringBuffer;

    move-object/from16 v24, v0

    .end local v0    # "hmacSha1":Ljavax/crypto/Mac;
    .local v24, "hmacSha1":Ljavax/crypto/Mac;
    array-length v0, v9

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v15, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v0, v15

    .line 143
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v15, Ljava/util/Formatter;

    invoke-direct {v15, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 144
    .local v15, "formatter":Ljava/util/Formatter;
    move-object/from16 v25, v4

    .end local v4    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .local v25, "key":Ljavax/crypto/spec/SecretKeySpec;
    array-length v4, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v26, v10

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v4, :cond_3

    :try_start_1
    aget-byte v27, v9, v10

    .line 145
    .local v27, "b":B
    move/from16 v28, v4

    const-string v4, "%02x"

    invoke-static/range {v27 .. v27}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v29

    move-object/from16 v30, v9

    move-object/from16 v31, v11

    const/4 v9, 0x1

    .end local v9    # "tmpMac":[B
    .local v30, "tmpMac":[B
    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v29, v11, v9

    invoke-virtual {v15, v4, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    nop

    .end local v27    # "b":B
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v28

    move-object/from16 v9, v30

    move-object/from16 v11, v31

    goto :goto_1

    .line 147
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    .end local v15    # "formatter":Ljava/util/Formatter;
    .end local v24    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v25    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v30    # "tmpMac":[B
    :catch_0
    move-exception v0

    move-object/from16 v9, v21

    goto/16 :goto_5

    .line 146
    .restart local v0    # "sb":Ljava/lang/StringBuffer;
    .restart local v9    # "tmpMac":[B
    .restart local v15    # "formatter":Ljava/util/Formatter;
    .restart local v24    # "hmacSha1":Ljavax/crypto/Mac;
    .restart local v25    # "key":Ljavax/crypto/spec/SecretKeySpec;
    :cond_3
    move-object/from16 v30, v9

    move-object/from16 v31, v11

    .end local v9    # "tmpMac":[B
    .restart local v30    # "tmpMac":[B
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 153
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    .end local v15    # "formatter":Ljava/util/Formatter;
    .end local v20    # "compMac":Ljava/lang/String;
    .end local v24    # "hmacSha1":Ljavax/crypto/Mac;
    .end local v25    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v30    # "tmpMac":[B
    .local v4, "compMac":Ljava/lang/String;
    nop

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incoming Mac = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Computed Mac = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incoming seq = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Computed seq = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "blockid = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 160
    const-string v0, "Hmac does not match"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    iget-object v9, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "Invalid HMAC"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/16 v11, 0x709

    invoke-virtual {v0, v9, v6, v11, v10}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 163
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v6, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid MAC\"}"

    invoke-direct {v0, v1, v14, v13, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v0, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    return-object v0

    .line 166
    .end local v0    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_4
    sget v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    if-eq v0, v3, :cond_5

    sget v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    add-int/lit8 v9, v3, 0x1

    if-eq v0, v9, :cond_5

    .line 167
    const-string v0, "Seq does not match"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    iget-object v9, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "Invalid Seq"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/16 v11, 0x709

    invoke-virtual {v0, v9, v6, v11, v10}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 170
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v6, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Seq\"}"

    invoke-direct {v0, v1, v14, v13, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .restart local v0    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    return-object v0

    .line 175
    .end local v0    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_5
    sget v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    add-int/lit8 v9, v3, 0x1

    if-ne v0, v9, :cond_6

    .line 176
    const-string v0, "Seq Fixup Invoked"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_6
    add-int/lit8 v0, v3, 0x1

    sput v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(begin (require <com.google.youngandroid.runtime>) (process-repl-input "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " (begin "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " )))"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "To Eval: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :try_start_3
    const-string v0, "#f"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v9, v21

    .end local v21    # "input_code":Ljava/lang/String;
    .local v9, "input_code":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 195
    const-string v0, "Skipping evaluation of #f"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 197
    :cond_7
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->scheme:Lgnu/expr/Language;

    invoke-virtual {v0, v7}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    :goto_2
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v1, v14, v13, v11}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    .restart local v0    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto :goto_4

    .line 200
    .end local v0    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :catchall_0
    move-exception v0

    goto :goto_3

    .end local v9    # "input_code":Ljava/lang/String;
    .restart local v21    # "input_code":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v9, v21

    .line 201
    .end local v21    # "input_code":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Throwable;
    .restart local v9    # "input_code":Ljava/lang/String;
    :goto_3
    const-string v10, "newblocks: Scheme Failure"

    invoke-static {v6, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    const-string v6, "BAD"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v6, v10}, Lcom/google/appinventor/components/runtime/util/RetValManager;->appendReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v6, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v1, v14, v13, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 205
    .local v0, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_4
    move-object/from16 v10, v31

    invoke-virtual {v0, v12, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    move-object/from16 v11, v23

    move-object/from16 v15, v26

    invoke-virtual {v0, v15, v11}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    move-object/from16 v6, v19

    move-object/from16 v10, v22

    invoke-virtual {v0, v6, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    move-object/from16 v6, v18

    invoke-virtual {v0, v6, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-object v0

    .line 147
    .end local v0    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v4    # "compMac":Ljava/lang/String;
    .end local v9    # "input_code":Ljava/lang/String;
    .restart local v20    # "compMac":Ljava/lang/String;
    .restart local v21    # "input_code":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v9, v21

    .line 148
    .end local v21    # "input_code":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v9    # "input_code":Ljava/lang/String;
    :goto_5
    const-string v4, "Error working with hmac"

    invoke-static {v6, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    iget-object v4, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    iget-object v10, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const-string v12, "Exception working on HMAC"

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const/16 v12, 0x709

    invoke-virtual {v4, v10, v6, v12, v11}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 151
    new-instance v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v6, "NOT"

    move-object/from16 v10, v17

    invoke-direct {v4, v1, v14, v10, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v4, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    return-object v4

    .line 179
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v9    # "input_code":Ljava/lang/String;
    .restart local v21    # "input_code":Ljava/lang/String;
    :cond_8
    const-string v0, "No HMAC Key"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v4, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    iget-object v10, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/16 v12, 0x709

    invoke-virtual {v4, v10, v6, v12, v11}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 182
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v4, "{\"status\" : \"BAD\", \"message\" : \"Security Error: No HMAC Key\"}"

    invoke-direct {v0, v1, v14, v13, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v0, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    return-object v0

    .line 210
    .end local v0    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v2    # "inSeq":Ljava/lang/String;
    .end local v3    # "iseq":I
    .end local v5    # "blockid":Ljava/lang/String;
    .end local v7    # "code":Ljava/lang/String;
    .end local v8    # "inMac":Ljava/lang/String;
    .end local v20    # "compMac":Ljava/lang/String;
    .end local v21    # "input_code":Ljava/lang/String;
    :cond_9
    move-object v3, v5

    move-object v4, v7

    move-object v5, v8

    move-object v7, v15

    move-object v15, v10

    move-object v10, v11

    move-object v11, v9

    const-string v0, "/_values"

    move-object/from16 v8, p1

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 211
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v14, v13, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .restart local v0    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    invoke-virtual {v0, v12, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, v15, v11}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0, v5, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, v4, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-object v0

    .line 217
    .end local v0    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_a
    const-string v0, "/_getversion"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 220
    :try_start_5
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 223
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v3
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v6, 0x5

    const-string v9, "Not Known"

    if-lt v3, v6, :cond_b

    .line 224
    :try_start_6
    const-string v3, "edu.mit.appinventor.aicompanion3"

    iget-object v6, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-static {v3, v6}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->getInstallerPackageName(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    .local v3, "installer":Ljava/lang/String;
    goto :goto_6

    .line 226
    .end local v3    # "installer":Ljava/lang/String;
    :cond_b
    move-object v3, v9

    .line 231
    .restart local v3    # "installer":Ljava/lang/String;
    :goto_6
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 232
    .local v6, "versionName":Ljava/lang/String;
    if-nez v3, :cond_c

    .line 233
    move-object v3, v9

    .line 237
    :cond_c
    new-instance v9, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v16, v2

    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    .local v16, "pInfo":Landroid/content/pm/PackageInfo;
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v18, v4

    :try_start_7
    const-string v4, "{\"version\" : \""

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\", \"fingerprint\" : \""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\", \"installer\" : \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\", \"package\" : \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\", \"fqcn\" : true }"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v1, v14, v13, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    move-object v0, v9

    .line 244
    .end local v3    # "installer":Ljava/lang/String;
    .end local v6    # "versionName":Ljava/lang/String;
    .end local v16    # "pInfo":Landroid/content/pm/PackageInfo;
    .local v0, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto :goto_8

    .line 241
    .end local v0    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v18, v4

    .line 242
    .local v0, "n":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_7
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 243
    new-instance v2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v3, "{\"verison\" : \"Unknown\""

    invoke-direct {v2, v1, v14, v13, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 245
    .local v0, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_8
    invoke-virtual {v0, v12, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, v15, v11}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, v5, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    move-object/from16 v4, v18

    invoke-virtual {v0, v4, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-boolean v2, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    if-eqz v2, :cond_d

    .line 250
    const/4 v2, 0x1

    sput v2, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->seq:I

    .line 251
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;

    invoke-direct {v3, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;-><init>(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    :cond_d
    return-object v0

    .line 258
    .end local v0    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_e
    const-string v0, "/_extensions"

    move-object/from16 v8, p1

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 259
    move-object/from16 v9, p4

    invoke-direct {v1, v9}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->processLoadExtensionsRequest(Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    .line 260
    :cond_f
    move-object/from16 v9, p4

    const-string v0, "/_proxy"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 261
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->getPopup()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "popup":Ljava/lang/String;
    new-instance v2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v3, "text/html"

    invoke-direct {v2, v1, v14, v3, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .local v2, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    invoke-virtual {v2, v12, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v2, v15, v11}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v2, v5, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v2, v4, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-object v2

    .line 270
    .end local v0    # "popup":Ljava/lang/String;
    .end local v2    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_10
    const-string v0, "PUT"

    move-object/from16 v13, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 271
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 272
    .local v0, "error":Ljava/lang/Boolean;
    move-object/from16 v16, v0

    .end local v0    # "error":Ljava/lang/Boolean;
    .local v16, "error":Ljava/lang/Boolean;
    const-string v0, "content"

    const/4 v13, 0x0

    move-object/from16 v8, p5

    invoke-virtual {v8, v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "tmpFileName":Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 274
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v13, "fileFrom":Ljava/io/File;
    move-object/from16 v18, v0

    .end local v0    # "tmpFileName":Ljava/lang/String;
    .local v18, "tmpFileName":Ljava/lang/String;
    const-string v0, "filename"

    const/4 v8, 0x0

    invoke-virtual {v9, v0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "filename":Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 277
    const-string v8, ".."

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_11

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 278
    const-string v8, "../"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_12

    .line 279
    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Ignoring invalid filename: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x0

    .line 283
    :cond_12
    if-eqz v0, :cond_15

    .line 285
    new-instance v6, Ljava/io/File;

    iget-object v8, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v6, "fileTo":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 287
    .local v8, "parentFileTo":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_13

    .line 288
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 290
    :cond_13
    invoke-virtual {v13, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 291
    invoke-direct {v1, v13, v6}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 292
    .end local v16    # "error":Ljava/lang/Boolean;
    .local v9, "error":Ljava/lang/Boolean;
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    goto :goto_9

    .line 290
    .end local v9    # "error":Ljava/lang/Boolean;
    .restart local v16    # "error":Ljava/lang/Boolean;
    :cond_14
    move-object/from16 v9, v16

    .line 294
    .end local v6    # "fileTo":Ljava/io/File;
    .end local v8    # "parentFileTo":Ljava/io/File;
    .end local v16    # "error":Ljava/lang/Boolean;
    .restart local v9    # "error":Ljava/lang/Boolean;
    :goto_9
    goto :goto_a

    .line 295
    .end local v9    # "error":Ljava/lang/Boolean;
    .restart local v16    # "error":Ljava/lang/Boolean;
    :cond_15
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 296
    const-string v8, "Received content without a file name!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 299
    .end local v0    # "filename":Ljava/lang/String;
    .end local v13    # "fileFrom":Ljava/io/File;
    .end local v16    # "error":Ljava/lang/Boolean;
    .restart local v9    # "error":Ljava/lang/Boolean;
    :goto_a
    goto :goto_b

    .line 300
    .end local v9    # "error":Ljava/lang/Boolean;
    .end local v18    # "tmpFileName":Ljava/lang/String;
    .local v0, "tmpFileName":Ljava/lang/String;
    .restart local v16    # "error":Ljava/lang/Boolean;
    :cond_16
    move-object/from16 v18, v0

    const/4 v8, 0x1

    .end local v0    # "tmpFileName":Ljava/lang/String;
    .restart local v18    # "tmpFileName":Ljava/lang/String;
    const-string v0, "Received PUT without content."

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 303
    .end local v16    # "error":Ljava/lang/Boolean;
    .restart local v9    # "error":Ljava/lang/Boolean;
    :goto_b
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 304
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v2, "500 Internal Server Error"

    const-string v6, "NOTOK"

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .local v0, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    invoke-virtual {v0, v12, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0, v15, v11}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, v5, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0, v4, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-object v0

    .line 311
    .end local v0    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_17
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    invoke-direct {v0, v1, v14, v3, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .restart local v0    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    invoke-virtual {v0, v12, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, v15, v11}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0, v5, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0, v4, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-object v0

    .line 320
    .end local v0    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v9    # "error":Ljava/lang/Boolean;
    .end local v18    # "tmpFileName":Ljava/lang/String;
    :cond_18
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->rootDir:Ljava/io/File;

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    return-object v0
.end method
