.class public abstract Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
.super Lcom/google/api/client/util/GenericData;
.source "AbstractGoogleClientRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest$ApiClientVersion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/util/GenericData;"
    }
.end annotation


# static fields
.field private static final API_VERSION_HEADER:Ljava/lang/String; = "X-Goog-Api-Client"

.field public static final USER_AGENT_SUFFIX:Ljava/lang/String; = "Google-API-Java-Client"


# instance fields
.field private final abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

.field private disableGZipContent:Z

.field private downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

.field private final httpContent:Lcom/google/api/client/http/HttpContent;

.field private lastResponseHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private lastStatusCode:I

.field private lastStatusMessage:Ljava/lang/String;

.field private requestHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private final requestMethod:Ljava/lang/String;

.field private responseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private returnRawInputStream:Z

.field private uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

.field private final uriTemplate:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/api/client/googleapis/services/AbstractGoogleClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/HttpContent;Ljava/lang/Class;)V
    .locals 5
    .param p1, "abstractGoogleClient"    # Lcom/google/api/client/googleapis/services/AbstractGoogleClient;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .param p3, "uriTemplate"    # Ljava/lang/String;
    .param p4, "httpContent"    # Lcom/google/api/client/http/HttpContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/api/client/http/HttpContent;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    .local p5, "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 83
    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastStatusCode:I

    .line 121
    invoke-static {p5}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->responseClass:Ljava/lang/Class;

    .line 122
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    .line 123
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    .line 124
    invoke-static {p3}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uriTemplate:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    .line 127
    invoke-virtual {p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "applicationName":Ljava/lang/String;
    const-string v1, "Google-API-Java-Client"

    if-eqz v0, :cond_0

    .line 129
    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    goto :goto_0

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v2, v1}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 136
    invoke-static {}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest$ApiClientVersion;->access$000()Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest$ApiClientVersion;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest$ApiClientVersion;->build(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    const-string v3, "X-Goog-Api-Client"

    invoke-virtual {v1, v3, v2}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 138
    return-void
.end method

.method private buildHttpRequest(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 4
    .param p1, "usingHead"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 427
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 428
    if-eqz p1, :cond_3

    const-string v0, "HEAD"

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    .line 429
    .local v0, "requestMethodToUse":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    move-result-object v1

    .line 430
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequestUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v2

    iget-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v1

    .line 431
    .local v1, "httpRequest":Lcom/google/api/client/http/HttpRequest;
    new-instance v2, Lcom/google/api/client/googleapis/MethodOverride;

    invoke-direct {v2}, Lcom/google/api/client/googleapis/MethodOverride;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/api/client/googleapis/MethodOverride;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 432
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getObjectParser()Lcom/google/api/client/util/ObjectParser;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpRequest;->setParser(Lcom/google/api/client/util/ObjectParser;)Lcom/google/api/client/http/HttpRequest;

    .line 434
    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    .line 435
    const-string v3, "PUT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    const-string v3, "PATCH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 436
    :cond_4
    new-instance v2, Lcom/google/api/client/http/EmptyContent;

    invoke-direct {v2}, Lcom/google/api/client/http/EmptyContent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 438
    :cond_5
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    iget-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v2, v3}, Lcom/google/api/client/http/HttpHeaders;->putAll(Ljava/util/Map;)V

    .line 439
    iget-boolean v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->disableGZipContent:Z

    if-nez v2, :cond_6

    .line 440
    new-instance v2, Lcom/google/api/client/http/GZipEncoding;

    invoke-direct {v2}, Lcom/google/api/client/http/GZipEncoding;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpRequest;->setEncoding(Lcom/google/api/client/http/HttpEncoding;)Lcom/google/api/client/http/HttpRequest;

    .line 442
    :cond_6
    iget-boolean v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->returnRawInputStream:Z

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpRequest;->setResponseReturnRawInputStream(Z)Lcom/google/api/client/http/HttpRequest;

    .line 443
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequest;->getResponseInterceptor()Lcom/google/api/client/http/HttpResponseInterceptor;

    move-result-object v2

    .line 444
    .local v2, "responseInterceptor":Lcom/google/api/client/http/HttpResponseInterceptor;
    new-instance v3, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest$1;-><init>(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;Lcom/google/api/client/http/HttpResponseInterceptor;Lcom/google/api/client/http/HttpRequest;)V

    invoke-virtual {v1, v3}, Lcom/google/api/client/http/HttpRequest;->setResponseInterceptor(Lcom/google/api/client/http/HttpResponseInterceptor;)Lcom/google/api/client/http/HttpRequest;

    .line 455
    return-object v1
.end method

.method private executeUnparsed(Z)Lcom/google/api/client/http/HttpResponse;
    .locals 6
    .param p1, "usingHead"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    if-nez v0, :cond_0

    .line 549
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequest(Z)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .local v0, "response":Lcom/google/api/client/http/HttpResponse;
    goto :goto_1

    .line 552
    .end local v0    # "response":Lcom/google/api/client/http/HttpResponse;
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequestUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v0

    .line 553
    .local v0, "httpRequestUrl":Lcom/google/api/client/http/GenericUrl;
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    move-result-object v1

    .line 554
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v1

    .line 555
    .local v1, "httpRequest":Lcom/google/api/client/http/HttpRequest;
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequest;->getThrowExceptionOnExecuteError()Z

    move-result v2

    .line 557
    .local v2, "throwExceptionOnExecuteError":Z
    iget-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    iget-object v4, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v3, v4}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->setInitiationHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->disableGZipContent:Z

    .line 558
    invoke-virtual {v3, v4}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->setDisableGZipContent(Z)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->upload(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v3

    .line 559
    .local v3, "response":Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpResponse;->getRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getObjectParser()Lcom/google/api/client/util/ObjectParser;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/api/client/http/HttpRequest;->setParser(Lcom/google/api/client/util/ObjectParser;)Lcom/google/api/client/http/HttpRequest;

    .line 561
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 562
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->newExceptionOnError(Lcom/google/api/client/http/HttpResponse;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 566
    .end local v0    # "httpRequestUrl":Lcom/google/api/client/http/GenericUrl;
    .end local v1    # "httpRequest":Lcom/google/api/client/http/HttpRequest;
    .end local v2    # "throwExceptionOnExecuteError":Z
    :cond_2
    :goto_0
    move-object v0, v3

    .end local v3    # "response":Lcom/google/api/client/http/HttpResponse;
    .local v0, "response":Lcom/google/api/client/http/HttpResponse;
    :goto_1
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastResponseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 567
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastStatusCode:I

    .line 568
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastStatusMessage:Ljava/lang/String;

    .line 569
    return-object v0
.end method


# virtual methods
.method public buildHttpRequest()Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequest(Z)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildHttpRequestUrl()Lcom/google/api/client/http/GenericUrl;
    .locals 4

    .line 394
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    .line 395
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uriTemplate:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, p0, v3}, Lcom/google/api/client/http/UriTemplate;->expand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 394
    return-object v0
.end method

.method protected buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequest(Z)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected final checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .line 736
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    .line 737
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getSuppressRequiredParameterChecks()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 736
    const-string v1, "Required parameter %s must be specified"

    invoke-static {v0, v1, v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 739
    return-void
.end method

.method public execute()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->responseClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public executeAndDownloadTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 671
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/http/HttpResponse;->download(Ljava/io/OutputStream;)V

    .line 672
    return-void
.end method

.method public executeAsInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected executeMedia()Lcom/google/api/client/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    const-string v0, "alt"

    const-string v1, "media"

    invoke-virtual {p0, v0, v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;

    .line 510
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUnparsed()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected executeMediaAndDownloadTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 689
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    if-nez v0, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeMedia()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/http/HttpResponse;->download(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequestUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;->download(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpHeaders;Ljava/io/OutputStream;)V

    .line 694
    :goto_0
    return-void
.end method

.method protected executeMediaAsInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeMedia()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public executeUnparsed()Lcom/google/api/client/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUnparsed(Z)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected executeUsingHead()Lcom/google/api/client/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 536
    invoke-direct {p0, v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->executeUnparsed(Z)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 537
    .local v0, "response":Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 538
    return-object v0
.end method

.method public getAbstractGoogleClient()Lcom/google/api/client/googleapis/services/AbstractGoogleClient;
    .locals 1

    .line 299
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    return-object v0
.end method

.method public final getDisableGZipContent()Z
    .locals 1

    .line 225
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->disableGZipContent:Z

    return v0
.end method

.method public final getHttpContent()Lcom/google/api/client/http/HttpContent;
    .locals 1

    .line 287
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    return-object v0
.end method

.method public final getLastResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .line 329
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastResponseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public final getLastStatusCode()I
    .locals 1

    .line 336
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastStatusCode:I

    return v0
.end method

.method public final getLastStatusMessage()Ljava/lang/String;
    .locals 1

    .line 344
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->lastStatusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaHttpDownloader()Lcom/google/api/client/googleapis/media/MediaHttpDownloader;
    .locals 1

    .line 374
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    return-object v0
.end method

.method public final getMediaHttpUploader()Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .locals 1

    .line 354
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    return-object v0
.end method

.method public final getRequestHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .line 304
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 277
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 349
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->responseClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getReturnRawInputSteam()Z
    .locals 1

    .line 234
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->returnRawInputStream:Z

    return v0
.end method

.method public final getUriTemplate()Ljava/lang/String;
    .locals 1

    .line 282
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uriTemplate:Ljava/lang/String;

    return-object v0
.end method

.method protected final initializeMediaDownload()V
    .locals 4

    .line 379
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    .line 380
    .local v0, "requestFactory":Lcom/google/api/client/http/HttpRequestFactory;
    new-instance v1, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    .line 381
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequestFactory;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequestFactory;->getInitializer()Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/api/client/googleapis/media/MediaHttpDownloader;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V

    iput-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->downloader:Lcom/google/api/client/googleapis/media/MediaHttpDownloader;

    .line 382
    return-void
.end method

.method protected final initializeMediaUpload(Lcom/google/api/client/http/AbstractInputStreamContent;)V
    .locals 4
    .param p1, "mediaContent"    # Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 363
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->abstractGoogleClient:Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    .line 364
    .local v0, "requestFactory":Lcom/google/api/client/http/HttpRequestFactory;
    new-instance v1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 365
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequestFactory;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequestFactory;->getInitializer()Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;-><init>(Lcom/google/api/client/http/AbstractInputStreamContent;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V

    iput-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 366
    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->setInitiationRequestMethod(Ljava/lang/String;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 367
    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    iget-object v2, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->httpContent:Lcom/google/api/client/http/HttpContent;

    invoke-virtual {v1, v2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->setMetadata(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 370
    :cond_0
    return-void
.end method

.method protected newExceptionOnError(Lcom/google/api/client/http/HttpResponse;)Ljava/io/IOException;
    .locals 1
    .param p1, "response"    # Lcom/google/api/client/http/HttpResponse;

    .line 586
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    new-instance v0, Lcom/google/api/client/http/HttpResponseException;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;)V

    return-object v0
.end method

.method public final queue(Lcom/google/api/client/googleapis/batch/BatchRequest;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)V
    .locals 2
    .param p1, "batchRequest"    # Lcom/google/api/client/googleapis/batch/BatchRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/googleapis/batch/BatchRequest;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/google/api/client/googleapis/batch/BatchCallback<",
            "TT;TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    .local p2, "errorClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p3, "callback":Lcom/google/api/client/googleapis/batch/BatchCallback;, "Lcom/google/api/client/googleapis/batch/BatchCallback<TT;TE;>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Batching media requests is not supported"

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 712
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->buildHttpRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->getResponseClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/google/api/client/googleapis/batch/BatchRequest;->queue(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Ljava/lang/Class;Lcom/google/api/client/googleapis/batch/BatchCallback;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    .line 713
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<",
            "TT;>;"
        }
    .end annotation

    .line 722
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 59
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;

    move-result-object p1

    return-object p1
.end method

.method public setDisableGZipContent(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 0
    .param p1, "disableGZipContent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<",
            "TT;>;"
        }
    .end annotation

    .line 250
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->disableGZipContent:Z

    .line 251
    return-object p0
.end method

.method public setRequestHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 0
    .param p1, "headers"    # Lcom/google/api/client/http/HttpHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/http/HttpHeaders;",
            ")",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<",
            "TT;>;"
        }
    .end annotation

    .line 321
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iput-object p1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->requestHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 322
    return-object p0
.end method

.method public setReturnRawInputStream(Z)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 0
    .param p1, "returnRawInputStream"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<",
            "TT;>;"
        }
    .end annotation

    .line 271
    .local p0, "this":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<TT;>;"
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->returnRawInputStream:Z

    .line 272
    return-object p0
.end method
