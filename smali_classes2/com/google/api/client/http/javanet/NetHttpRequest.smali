.class final Lcom/google/api/client/http/javanet/NetHttpRequest;
.super Lcom/google/api/client/http/LowLevelHttpRequest;
.source "NetHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/javanet/NetHttpRequest$DefaultOutputWriter;,
        Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONNECTION_WRITER:Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpRequest$DefaultOutputWriter;

    invoke-direct {v0}, Lcom/google/api/client/http/javanet/NetHttpRequest$DefaultOutputWriter;-><init>()V

    sput-object v0, Lcom/google/api/client/http/javanet/NetHttpRequest;->DEFAULT_CONNECTION_WRITER:Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;

    return-void
.end method

.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .line 41
    invoke-direct {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->writeTimeout:I

    .line 44
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 45
    return-void
.end method

.method private hasResponse(Ljava/net/HttpURLConnection;)Z
    .locals 2
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .line 161
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 162
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/io/IOException;
    return v0
.end method

.method private writeContentToOutputStream(Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "outputWriter"    # Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->writeTimeout:I

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/google/api/client/http/javanet/NetHttpRequest;->getStreamingContent()Lcom/google/api/client/util/StreamingContent;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;->write(Ljava/io/OutputStream;Lcom/google/api/client/util/StreamingContent;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/http/javanet/NetHttpRequest;->getStreamingContent()Lcom/google/api/client/util/StreamingContent;

    move-result-object v0

    .line 175
    .local v0, "content":Lcom/google/api/client/util/StreamingContent;
    new-instance v1, Lcom/google/api/client/http/javanet/NetHttpRequest$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/api/client/http/javanet/NetHttpRequest$1;-><init>(Lcom/google/api/client/http/javanet/NetHttpRequest;Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;Ljava/io/OutputStream;Lcom/google/api/client/util/StreamingContent;)V

    .line 184
    .local v1, "writeContent":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 185
    .local v2, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v3, Ljava/util/concurrent/FutureTask;

    invoke-direct {v3, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 186
    .local v3, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 189
    :try_start_0
    iget v4, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->writeTimeout:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    nop

    .line 197
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 198
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 201
    .end local v0    # "content":Lcom/google/api/client/util/StreamingContent;
    .end local v1    # "writeContent":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .end local v2    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    :cond_1
    :goto_0
    return-void

    .line 194
    .restart local v0    # "content":Lcom/google/api/client/util/StreamingContent;
    .restart local v1    # "writeContent":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    .restart local v2    # "executor":Ljava/util/concurrent/ExecutorService;
    .restart local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v4

    .line 195
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Socket write timed out"

    invoke-direct {v5, v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 192
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v4

    .line 193
    .local v4, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Exception in socket write"

    invoke-direct {v5, v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 190
    .end local v4    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v4

    .line 191
    .local v4, "e":Ljava/lang/InterruptedException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Socket write interrupted"

    invoke-direct {v5, v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public execute()Lcom/google/api/client/http/LowLevelHttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/google/api/client/http/javanet/NetHttpRequest;->DEFAULT_CONNECTION_WRITER:Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/javanet/NetHttpRequest;->execute(Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;)Lcom/google/api/client/http/LowLevelHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method execute(Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;)Lcom/google/api/client/http/LowLevelHttpResponse;
    .locals 11
    .param p1, "outputWriter"    # Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 91
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {p0}, Lcom/google/api/client/http/javanet/NetHttpRequest;->getStreamingContent()Lcom/google/api/client/util/StreamingContent;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 92
    invoke-virtual {p0}, Lcom/google/api/client/http/javanet/NetHttpRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 94
    const-string v2, "Content-Type"

    invoke-virtual {p0, v2, v1}, Lcom/google/api/client/http/javanet/NetHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/http/javanet/NetHttpRequest;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "contentEncoding":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 98
    const-string v3, "Content-Encoding"

    invoke-virtual {p0, v3, v2}, Lcom/google/api/client/http/javanet/NetHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/client/http/javanet/NetHttpRequest;->getContentLength()J

    move-result-wide v3

    .line 101
    .local v3, "contentLength":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    .line 102
    const-string v7, "Content-Length"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "requestMethod":Ljava/lang/String;
    const-string v8, "POST"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v8, :cond_5

    const-string v8, "PUT"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 141
    :cond_3
    cmp-long v8, v3, v5

    if-nez v8, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    new-array v6, v10, [Ljava/lang/Object;

    aput-object v7, v6, v9

    const-string v8, "%s with non-zero content length is not supported"

    invoke-static {v5, v8, v6}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 106
    :cond_5
    :goto_1
    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 108
    cmp-long v8, v3, v5

    if-ltz v8, :cond_6

    const-wide/32 v5, 0x7fffffff

    cmp-long v8, v3, v5

    if-gtz v8, :cond_6

    .line 109
    long-to-int v5, v3

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_2

    .line 111
    :cond_6
    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 113
    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 115
    .local v5, "out":Ljava/io/OutputStream;
    const/4 v6, 0x1

    .line 117
    .local v6, "threw":Z
    :try_start_0
    invoke-direct {p0, p1, v5}, Lcom/google/api/client/http/javanet/NetHttpRequest;->writeContentToOutputStream(Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    const/4 v6, 0x0

    .line 128
    :try_start_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :goto_3
    goto :goto_5

    .line 129
    :catch_0
    move-exception v8

    .line 133
    .local v8, "exception":Ljava/io/IOException;
    if-eqz v6, :cond_7

    .line 137
    .end local v8    # "exception":Ljava/io/IOException;
    :goto_4
    goto :goto_5

    .line 134
    .restart local v8    # "exception":Ljava/io/IOException;
    :cond_7
    throw v8

    .line 127
    .end local v8    # "exception":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    goto :goto_6

    .line 120
    :catch_1
    move-exception v8

    .line 123
    .local v8, "e":Ljava/io/IOException;
    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/api/client/http/javanet/NetHttpRequest;->hasResponse(Ljava/net/HttpURLConnection;)Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_9

    .line 128
    .end local v8    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 129
    :catch_2
    move-exception v8

    .line 133
    .local v8, "exception":Ljava/io/IOException;
    if-eqz v6, :cond_8

    goto :goto_4

    .line 138
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "threw":Z
    .end local v8    # "exception":Ljava/io/IOException;
    :goto_5
    goto :goto_8

    .line 134
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "threw":Z
    .restart local v8    # "exception":Ljava/io/IOException;
    :cond_8
    throw v8

    .line 124
    .local v8, "e":Ljava/io/IOException;
    :cond_9
    nop

    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v2    # "contentEncoding":Ljava/lang/String;
    .end local v3    # "contentLength":J
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "threw":Z
    .end local v7    # "requestMethod":Ljava/lang/String;
    .end local p1    # "outputWriter":Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 128
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v1    # "contentType":Ljava/lang/String;
    .restart local v2    # "contentEncoding":Ljava/lang/String;
    .restart local v3    # "contentLength":J
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "threw":Z
    .restart local v7    # "requestMethod":Ljava/lang/String;
    .restart local p1    # "outputWriter":Lcom/google/api/client/http/javanet/NetHttpRequest$OutputWriter;
    :goto_6
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 136
    goto :goto_7

    .line 129
    :catch_3
    move-exception v9

    .line 133
    .local v9, "exception":Ljava/io/IOException;
    if-nez v6, :cond_a

    .line 134
    throw v9

    .line 137
    .end local v9    # "exception":Ljava/io/IOException;
    :cond_a
    :goto_7
    throw v8

    .line 146
    .end local v1    # "contentType":Ljava/lang/String;
    .end local v2    # "contentEncoding":Ljava/lang/String;
    .end local v3    # "contentLength":J
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "threw":Z
    .end local v7    # "requestMethod":Ljava/lang/String;
    :cond_b
    :goto_8
    const/4 v1, 0x0

    .line 148
    .local v1, "successfulConnection":Z
    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 149
    new-instance v2, Lcom/google/api/client/http/javanet/NetHttpResponse;

    invoke-direct {v2, v0}, Lcom/google/api/client/http/javanet/NetHttpResponse;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 150
    .local v2, "response":Lcom/google/api/client/http/javanet/NetHttpResponse;
    const/4 v1, 0x1

    .line 151
    nop

    .line 153
    if-nez v1, :cond_c

    .line 154
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 151
    :cond_c
    return-object v2

    .line 153
    .end local v2    # "response":Lcom/google/api/client/http/javanet/NetHttpResponse;
    :catchall_1
    move-exception v2

    if-nez v1, :cond_d

    .line 154
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 156
    :cond_d
    goto :goto_a

    :goto_9
    throw v2

    :goto_a
    goto :goto_9
.end method

.method getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setTimeout(II)V
    .locals 1
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I

    .line 59
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 60
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 61
    return-void
.end method

.method public setWriteTimeout(I)V
    .locals 0
    .param p1, "writeTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iput p1, p0, Lcom/google/api/client/http/javanet/NetHttpRequest;->writeTimeout:I

    .line 66
    return-void
.end method
