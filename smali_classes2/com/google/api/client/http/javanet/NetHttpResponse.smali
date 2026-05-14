.class final Lcom/google/api/client/http/javanet/NetHttpResponse;
.super Lcom/google/api/client/http/LowLevelHttpResponse;
.source "NetHttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;
    }
.end annotation


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private final headerNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final headerValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final responseCode:I

.field private final responseMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 8
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/google/api/client/http/LowLevelHttpResponse;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerNames:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerValues:Ljava/util/ArrayList;

    .line 35
    iput-object p1, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    .line 36
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 37
    .local v0, "responseCode":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->responseCode:I

    .line 38
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->responseMessage:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerNames:Ljava/util/ArrayList;

    .line 40
    .local v1, "headerNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerValues:Ljava/util/ArrayList;

    .line 41
    .local v2, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 42
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 43
    .local v5, "key":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 44
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 45
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 46
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 51
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 52
    :cond_3
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 140
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 87
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;

    invoke-direct {v1, p0, v0}, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;-><init>(Lcom/google/api/client/http/javanet/NetHttpResponse;Ljava/io/InputStream;)V

    :goto_1
    return-object v1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "string":Ljava/lang/String;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 124
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 129
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->headerValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->responseCode:I

    return v0
.end method

.method public getStatusLine()Ljava/lang/String;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse;->connection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "HTTP/1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
