.class public final Lcom/google/api/client/googleapis/batch/BatchRequest;
.super Ljava/lang/Object;
.source "BatchRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/batch/BatchRequest$BatchInterceptor;,
        Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;
    }
.end annotation


# static fields
.field private static final GLOBAL_BATCH_ENDPOINT:Ljava/lang/String; = "https://www.googleapis.com/batch"

.field private static final GLOBAL_BATCH_ENDPOINT_WARNING:Ljava/lang/String; = "You are using the global batch endpoint which will soon be shut down. Please instantiate your BatchRequest via your service client\'s `batch(HttpRequestInitializer)` method. For an example, please see https://github.com/googleapis/google-api-java-client#batching."

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private batchUrl:Lcom/google/api/client/http/GenericUrl;

.field private final requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

.field requestInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<",
            "**>;>;"
        }
    .end annotation
.end field

.field private sleeper:Lcom/google/api/client/util/Sleeper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    const-class v0, Lcom/google/api/client/googleapis/batch/BatchRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/googleapis/batch/BatchRequest;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 2
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "httpRequestInitializer"    # Lcom/google/api/client/http/HttpRequestInitializer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    const-string v1, "https://www.googleapis.com/batch"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->batchUrl:Lcom/google/api/client/http/GenericUrl;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    .line 122
    sget-object v0, Lcom/google/api/client/util/Sleeper;->DEFAULT:Lcom/google/api/client/util/Sleeper;

    iput-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->sleeper:Lcom/google/api/client/util/Sleeper;

    .line 151
    if-nez p2, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    .line 153
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkState(Z)V

    .line 237
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->batchUrl:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v0}, Lcom/google/api/client/http/GenericUrl;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://www.googleapis.com/batch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    sget-object v0, Lcom/google/api/client/googleapis/batch/BatchRequest;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "You are using the global batch endpoint which will soon be shut down. Please instantiate your BatchRequest via your service client\'s `batch(HttpRequestInitializer)` method. For an example, please see https://github.com/googleapis/google-api-java-client#batching."

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    iget-object v2, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->batchUrl:Lcom/google/api/client/http/GenericUrl;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/api/client/http/HttpRequestFactory;->buildPostRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 243
    .local v0, "batchRequest":Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getInterceptor()Lcom/google/api/client/http/HttpExecuteInterceptor;

    move-result-object v2

    .line 244
    .local v2, "originalInterceptor":Lcom/google/api/client/http/HttpExecuteInterceptor;
    new-instance v4, Lcom/google/api/client/googleapis/batch/BatchRequest$BatchInterceptor;

    invoke-direct {v4, p0, v2}, Lcom/google/api/client/googleapis/batch/BatchRequest$BatchInterceptor;-><init>(Lcom/google/api/client/googleapis/batch/BatchRequest;Lcom/google/api/client/http/HttpExecuteInterceptor;)V

    invoke-virtual {v0, v4}, Lcom/google/api/client/http/HttpRequest;->setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;

    .line 245
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getNumberOfRetries()I

    move-result v4

    .line 248
    .local v4, "retriesRemaining":I
    :cond_1
    if-lez v4, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 249
    .local v5, "retryAllowed":Z
    :goto_0
    new-instance v6, Lcom/google/api/client/http/MultipartContent;

    invoke-direct {v6}, Lcom/google/api/client/http/MultipartContent;-><init>()V

    .line 250
    .local v6, "batchContent":Lcom/google/api/client/http/MultipartContent;
    invoke-virtual {v6}, Lcom/google/api/client/http/MultipartContent;->getMediaType()Lcom/google/api/client/http/HttpMediaType;

    move-result-object v7

    const-string v8, "mixed"

    invoke-virtual {v7, v8}, Lcom/google/api/client/http/HttpMediaType;->setSubType(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    .line 251
    const/4 v7, 0x1

    .line 252
    .local v7, "contentId":I
    iget-object v8, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;

    .line 253
    .local v9, "requestInfo":Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;, "Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<**>;"
    new-instance v10, Lcom/google/api/client/http/MultipartContent$Part;

    new-instance v11, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v11}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    .line 254
    invoke-virtual {v11, v3}, Lcom/google/api/client/http/HttpHeaders;->setAcceptEncoding(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v11

    add-int/lit8 v12, v7, 0x1

    .end local v7    # "contentId":I
    .local v12, "contentId":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v13, "Content-ID"

    invoke-virtual {v11, v13, v7}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v7

    new-instance v11, Lcom/google/api/client/googleapis/batch/HttpRequestContent;

    iget-object v13, v9, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-direct {v11, v13}, Lcom/google/api/client/googleapis/batch/HttpRequestContent;-><init>(Lcom/google/api/client/http/HttpRequest;)V

    invoke-direct {v10, v7, v11}, Lcom/google/api/client/http/MultipartContent$Part;-><init>(Lcom/google/api/client/http/HttpHeaders;Lcom/google/api/client/http/HttpContent;)V

    .line 253
    invoke-virtual {v6, v10}, Lcom/google/api/client/http/MultipartContent;->addPart(Lcom/google/api/client/http/MultipartContent$Part;)Lcom/google/api/client/http/MultipartContent;

    .line 256
    .end local v9    # "requestInfo":Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;, "Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<**>;"
    move v7, v12

    goto :goto_1

    .line 257
    .end local v12    # "contentId":I
    .restart local v7    # "contentId":I
    :cond_3
    invoke-virtual {v0, v6}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 258
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v8

    .line 262
    .local v8, "response":Lcom/google/api/client/http/HttpResponse;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/api/client/http/HttpResponse;->getMediaType()Lcom/google/api/client/http/HttpMediaType;

    move-result-object v10

    const-string v11, "boundary"

    invoke-virtual {v10, v11}, Lcom/google/api/client/http/HttpMediaType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 265
    .local v9, "boundary":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 266
    .local v10, "contentStream":Ljava/io/InputStream;
    new-instance v11, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;

    iget-object v12, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    invoke-direct {v11, v10, v9, v12, v5}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/List;Z)V

    .line 269
    .local v11, "batchResponse":Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;
    :goto_2
    iget-boolean v12, v11, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->hasNext:Z

    if-eqz v12, :cond_4

    .line 270
    invoke-virtual {v11}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->parseNextResponse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 273
    .end local v9    # "boundary":Ljava/lang/String;
    .end local v10    # "contentStream":Ljava/io/InputStream;
    :cond_4
    invoke-virtual {v8}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 274
    nop

    .line 276
    iget-object v9, v11, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->unsuccessfulRequestInfos:Ljava/util/List;

    .line 277
    .local v9, "unsuccessfulRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<**>;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 278
    iput-object v9, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    .line 282
    nop

    .end local v6    # "batchContent":Lcom/google/api/client/http/MultipartContent;
    .end local v7    # "contentId":I
    .end local v8    # "response":Lcom/google/api/client/http/HttpResponse;
    .end local v9    # "unsuccessfulRequestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<**>;>;"
    .end local v11    # "batchResponse":Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;
    add-int/lit8 v4, v4, -0x1

    .line 283
    if-nez v5, :cond_1

    .line 284
    :cond_5
    iget-object v1, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 285
    return-void

    .line 273
    .restart local v6    # "batchContent":Lcom/google/api/client/http/MultipartContent;
    .restart local v7    # "contentId":I
    .restart local v8    # "response":Lcom/google/api/client/http/HttpResponse;
    :catchall_0
    move-exception v1

    invoke-virtual {v8}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 274
    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public getBatchUrl()Lcom/google/api/client/http/GenericUrl;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->batchUrl:Lcom/google/api/client/http/GenericUrl;

    return-object v0
.end method

.method public getSleeper()Lcom/google/api/client/util/Sleeper;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->sleeper:Lcom/google/api/client/util/Sleeper;

    return-object v0
.end method

.method public queue(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)Lcom/google/api/client/googleapis/batch/BatchRequest;
    .locals 2
    .param p1, "httpRequest"    # Lcom/google/api/client/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/HttpRequest;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/google/api/client/googleapis/batch/BatchCallback<",
            "TT;TE;>;)",
            "Lcom/google/api/client/googleapis/batch/BatchRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "errorClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p4, "callback":Lcom/google/api/client/googleapis/batch/BatchCallback;, "Lcom/google/api/client/googleapis/batch/BatchCallback<TT;TE;>;"
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-static {p4}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-static {p3}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    new-instance v1, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;

    invoke-direct {v1, p4, p2, p3, p1}, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;-><init>(Lcom/google/api/client/googleapis/batch/BatchCallback;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/http/HttpRequest;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    return-object p0
.end method

.method public setBatchUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/googleapis/batch/BatchRequest;
    .locals 0
    .param p1, "batchUrl"    # Lcom/google/api/client/http/GenericUrl;

    .line 160
    iput-object p1, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->batchUrl:Lcom/google/api/client/http/GenericUrl;

    .line 161
    return-object p0
.end method

.method public setSleeper(Lcom/google/api/client/util/Sleeper;)Lcom/google/api/client/googleapis/batch/BatchRequest;
    .locals 1
    .param p1, "sleeper"    # Lcom/google/api/client/util/Sleeper;

    .line 184
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/Sleeper;

    iput-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->sleeper:Lcom/google/api/client/util/Sleeper;

    .line 185
    return-object p0
.end method

.method public size()I
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
