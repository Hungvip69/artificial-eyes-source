.class public final Lcom/google/api/client/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field public static final DEFAULT_NUMBER_OF_RETRIES:I = 0xa

.field public static final USER_AGENT_SUFFIX:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String;


# instance fields
.field private backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private connectTimeout:I

.field private content:Lcom/google/api/client/http/HttpContent;

.field private contentLoggingLimit:I

.field private curlLoggingEnabled:Z

.field private encoding:Lcom/google/api/client/http/HttpEncoding;

.field private executeInterceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

.field private followRedirects:Z

.field private headers:Lcom/google/api/client/http/HttpHeaders;

.field private ioExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

.field private loggingEnabled:Z

.field private numRetries:I

.field private objectParser:Lcom/google/api/client/util/ObjectParser;

.field private readTimeout:I

.field private requestMethod:Ljava/lang/String;

.field private responseHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private responseInterceptor:Lcom/google/api/client/http/HttpResponseInterceptor;

.field private responseReturnRawInputStream:Z

.field private retryOnExecuteIOException:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private sleeper:Lcom/google/api/client/util/Sleeper;

.field private suppressUserAgentSuffix:Z

.field private throwExceptionOnExecuteError:Z

.field private final tracer:Lio/opencensus/trace/Tracer;

.field private final transport:Lcom/google/api/client/http/HttpTransport;

.field private unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

.field private url:Lcom/google/api/client/http/GenericUrl;

.field private useRawRedirectUrls:Z

.field private writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    invoke-static {}, Lcom/google/api/client/http/HttpRequest;->getVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/HttpRequest;->VERSION:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Google-HTTP-Java-Client/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/api/client/http/HttpRequest;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (gzip)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/HttpRequest;->USER_AGENT_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Ljava/lang/String;)V
    .locals 2
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "requestMethod"    # Ljava/lang/String;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 102
    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 110
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    .line 124
    const/16 v0, 0x4000

    iput v0, p0, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    .line 130
    iput-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->curlLoggingEnabled:Z

    .line 145
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    .line 151
    iput v1, p0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    .line 154
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/api/client/http/HttpRequest;->writeTimeout:I

    .line 175
    iput-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->followRedirects:Z

    .line 178
    iput-boolean v1, p0, Lcom/google/api/client/http/HttpRequest;->useRawRedirectUrls:Z

    .line 184
    iput-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    .line 190
    iput-boolean v1, p0, Lcom/google/api/client/http/HttpRequest;->retryOnExecuteIOException:Z

    .line 200
    sget-object v0, Lcom/google/api/client/util/Sleeper;->DEFAULT:Lcom/google/api/client/util/Sleeper;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->sleeper:Lcom/google/api/client/util/Sleeper;

    .line 203
    invoke-static {}, Lcom/google/api/client/http/OpenCensusUtils;->getTracer()Lio/opencensus/trace/Tracer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->tracer:Lio/opencensus/trace/Tracer;

    .line 211
    iput-boolean v1, p0, Lcom/google/api/client/http/HttpRequest;->responseReturnRawInputStream:Z

    .line 218
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 219
    invoke-virtual {p0, p2}, Lcom/google/api/client/http/HttpRequest;->setRequestMethod(Ljava/lang/String;)Lcom/google/api/client/http/HttpRequest;

    .line 220
    return-void
.end method

.method private static addSpanAttribute(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "span"    # Lio/opencensus/trace/Span;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1217
    if-eqz p2, :cond_0

    .line 1218
    invoke-static {p2}, Lio/opencensus/trace/AttributeValue;->stringAttributeValue(Ljava/lang/String;)Lio/opencensus/trace/AttributeValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/opencensus/trace/Span;->putAttribute(Ljava/lang/String;Lio/opencensus/trace/AttributeValue;)V

    .line 1220
    :cond_0
    return-void
.end method

.method private static getVersion()Ljava/lang/String;
    .locals 5

    .line 1225
    const-string v0, "unknown-version"

    .line 1226
    .local v0, "version":Ljava/lang/String;
    :try_start_0
    const-class v1, Lcom/google/api/client/http/HttpRequest;

    const-string v2, "/google-http-client.properties"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 1228
    :try_start_1
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 1229
    .local v2, "properties":Ljava/util/Properties;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1230
    const-string v3, "google-http-client.version"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_1

    .line 1226
    .end local v2    # "properties":Ljava/util/Properties;
    :catchall_0
    move-exception v2

    .end local v0    # "version":Ljava/lang/String;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1232
    .restart local v0    # "version":Ljava/lang/String;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_4
    invoke-static {v2, v4}, Landroidx/core/content/pm/ShortcutXmlParser$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .end local v0    # "version":Ljava/lang/String;
    :cond_0
    :goto_0
    throw v3

    .restart local v0    # "version":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1234
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_2
    goto :goto_2

    .line 1232
    :catch_0
    move-exception v1

    .line 1235
    :goto_2
    return-object v0
.end method


# virtual methods
.method public execute()Lcom/google/api/client/http/HttpResponse;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 850
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 851
    .local v0, "retryRequest":Z
    iget v2, v1, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 852
    iget v2, v1, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    .line 853
    .local v2, "retriesRemaining":I
    iget-object v5, v1, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    if-eqz v5, :cond_1

    .line 855
    iget-object v5, v1, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    invoke-interface {v5}, Lcom/google/api/client/http/BackOffPolicy;->reset()V

    .line 857
    :cond_1
    const/4 v5, 0x0

    .line 860
    .local v5, "response":Lcom/google/api/client/http/HttpResponse;
    iget-object v6, v1, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    iget-object v6, v1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    invoke-static {v6}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    iget-object v6, v1, Lcom/google/api/client/http/HttpRequest;->tracer:Lio/opencensus/trace/Tracer;

    sget-object v7, Lcom/google/api/client/http/OpenCensusUtils;->SPAN_NAME_HTTP_REQUEST_EXECUTE:Ljava/lang/String;

    .line 865
    invoke-virtual {v6, v7}, Lio/opencensus/trace/Tracer;->spanBuilder(Ljava/lang/String;)Lio/opencensus/trace/SpanBuilder;

    move-result-object v6

    .line 866
    invoke-static {}, Lcom/google/api/client/http/OpenCensusUtils;->isRecordEvent()Z

    move-result v7

    invoke-virtual {v6, v7}, Lio/opencensus/trace/SpanBuilder;->setRecordEvents(Z)Lio/opencensus/trace/SpanBuilder;

    move-result-object v6

    .line 867
    invoke-virtual {v6}, Lio/opencensus/trace/SpanBuilder;->startSpan()Lio/opencensus/trace/Span;

    move-result-object v6

    .line 869
    .local v6, "span":Lio/opencensus/trace/Span;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retry #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    sub-int/2addr v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lio/opencensus/trace/Span;->addAnnotation(Ljava/lang/String;)V

    .line 871
    if-eqz v5, :cond_2

    .line 872
    invoke-virtual {v5}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 875
    :cond_2
    const/4 v5, 0x0

    .line 876
    const/4 v7, 0x0

    .line 879
    .local v7, "executeException":Ljava/io/IOException;
    iget-object v8, v1, Lcom/google/api/client/http/HttpRequest;->executeInterceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    if-eqz v8, :cond_3

    .line 880
    iget-object v8, v1, Lcom/google/api/client/http/HttpRequest;->executeInterceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    invoke-interface {v8, v1}, Lcom/google/api/client/http/HttpExecuteInterceptor;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 883
    :cond_3
    iget-object v8, v1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v8}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v8

    .line 884
    .local v8, "urlString":Ljava/lang/String;
    const-string v9, "http.method"

    iget-object v10, v1, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    invoke-static {v6, v9, v10}, Lcom/google/api/client/http/HttpRequest;->addSpanAttribute(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v9, v1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v9}, Lcom/google/api/client/http/GenericUrl;->getHost()Ljava/lang/String;

    move-result-object v9

    const-string v10, "http.host"

    invoke-static {v6, v10, v9}, Lcom/google/api/client/http/HttpRequest;->addSpanAttribute(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iget-object v9, v1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v9}, Lcom/google/api/client/http/GenericUrl;->getRawPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "http.path"

    invoke-static {v6, v10, v9}, Lcom/google/api/client/http/HttpRequest;->addSpanAttribute(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v9, "http.url"

    invoke-static {v6, v9, v8}, Lcom/google/api/client/http/HttpRequest;->addSpanAttribute(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v9, v1, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    iget-object v10, v1, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Lcom/google/api/client/http/HttpTransport;->buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v9

    .line 890
    .local v9, "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    sget-object v10, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 891
    .local v10, "logger":Ljava/util/logging/Logger;
    iget-boolean v11, v1, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    if-eqz v11, :cond_4

    sget-object v11, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    .line 892
    .local v11, "loggable":Z
    :goto_2
    const/4 v12, 0x0

    .line 893
    .local v12, "logbuf":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .line 895
    .local v13, "curlbuf":Ljava/lang/StringBuilder;
    if-eqz v11, :cond_5

    .line 896
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v14

    .line 897
    const-string v14, "-------------- REQUEST  --------------"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    iget-object v14, v1, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    .line 899
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 900
    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 901
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 902
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    iget-boolean v14, v1, Lcom/google/api/client/http/HttpRequest;->curlLoggingEnabled:Z

    if-eqz v14, :cond_5

    .line 906
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "curl -v --compressed"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v13, v14

    .line 907
    iget-object v14, v1, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    const-string v15, "GET"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 908
    const-string v14, " -X "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    :cond_5
    iget-object v14, v1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v14}, Lcom/google/api/client/http/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v14

    .line 914
    .local v14, "originalUserAgent":Ljava/lang/String;
    iget-boolean v15, v1, Lcom/google/api/client/http/HttpRequest;->suppressUserAgentSuffix:Z

    if-nez v15, :cond_7

    .line 915
    const-string v15, "http.user_agent"

    if-nez v14, :cond_6

    .line 916
    iget-object v3, v1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    sget-object v4, Lcom/google/api/client/http/HttpRequest;->USER_AGENT_SUFFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 917
    sget-object v3, Lcom/google/api/client/http/HttpRequest;->USER_AGENT_SUFFIX:Ljava/lang/String;

    invoke-static {v6, v15, v3}, Lcom/google/api/client/http/HttpRequest;->addSpanAttribute(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 919
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/api/client/http/HttpRequest;->USER_AGENT_SUFFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 920
    .local v3, "newUserAgent":Ljava/lang/String;
    iget-object v4, v1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v4, v3}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 921
    invoke-static {v6, v15, v3}, Lcom/google/api/client/http/HttpRequest;->addSpanAttribute(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    .end local v3    # "newUserAgent":Ljava/lang/String;
    :cond_7
    :goto_3
    iget-object v3, v1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-static {v6, v3}, Lcom/google/api/client/http/OpenCensusUtils;->propagateTracingContext(Lio/opencensus/trace/Span;Lcom/google/api/client/http/HttpHeaders;)V

    .line 927
    iget-object v3, v1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-static {v3, v12, v13, v10, v9}, Lcom/google/api/client/http/HttpHeaders;->serializeHeaders(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/LowLevelHttpRequest;)V

    .line 928
    iget-boolean v3, v1, Lcom/google/api/client/http/HttpRequest;->suppressUserAgentSuffix:Z

    if-nez v3, :cond_8

    .line 930
    iget-object v3, v1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v3, v14}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 934
    :cond_8
    iget-object v3, v1, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 935
    .local v3, "streamingContent":Lcom/google/api/client/util/StreamingContent;
    if-eqz v3, :cond_a

    iget-object v4, v1, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v4}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v4, 0x1

    .line 936
    .local v4, "contentRetrySupported":Z
    :goto_5
    const-string v15, "\'"

    if-eqz v3, :cond_13

    .line 938
    const-wide/16 v16, -0x1

    .line 939
    .local v16, "contentLength":J
    move/from16 v18, v0

    .end local v0    # "retryRequest":Z
    .local v18, "retryRequest":Z
    iget-object v0, v1, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v0}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 941
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v11, :cond_b

    .line 942
    move-object/from16 v19, v5

    .end local v5    # "response":Lcom/google/api/client/http/HttpResponse;
    .local v19, "response":Lcom/google/api/client/http/HttpResponse;
    new-instance v5, Lcom/google/api/client/util/LoggingStreamingContent;

    move-object/from16 v20, v7

    .end local v7    # "executeException":Ljava/io/IOException;
    .local v20, "executeException":Ljava/io/IOException;
    sget-object v7, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v21, v14

    .end local v14    # "originalUserAgent":Ljava/lang/String;
    .local v21, "originalUserAgent":Ljava/lang/String;
    sget-object v14, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    move-object/from16 v22, v6

    .end local v6    # "span":Lio/opencensus/trace/Span;
    .local v22, "span":Lio/opencensus/trace/Span;
    iget v6, v1, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    invoke-direct {v5, v3, v7, v14, v6}, Lcom/google/api/client/util/LoggingStreamingContent;-><init>(Lcom/google/api/client/util/StreamingContent;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    move-object v3, v5

    goto :goto_6

    .line 941
    .end local v19    # "response":Lcom/google/api/client/http/HttpResponse;
    .end local v20    # "executeException":Ljava/io/IOException;
    .end local v21    # "originalUserAgent":Ljava/lang/String;
    .end local v22    # "span":Lio/opencensus/trace/Span;
    .restart local v5    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v6    # "span":Lio/opencensus/trace/Span;
    .restart local v7    # "executeException":Ljava/io/IOException;
    .restart local v14    # "originalUserAgent":Ljava/lang/String;
    :cond_b
    move-object/from16 v19, v5

    move-object/from16 v22, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v14

    .line 947
    .end local v5    # "response":Lcom/google/api/client/http/HttpResponse;
    .end local v6    # "span":Lio/opencensus/trace/Span;
    .end local v7    # "executeException":Ljava/io/IOException;
    .end local v14    # "originalUserAgent":Ljava/lang/String;
    .restart local v19    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v20    # "executeException":Ljava/io/IOException;
    .restart local v21    # "originalUserAgent":Ljava/lang/String;
    .restart local v22    # "span":Lio/opencensus/trace/Span;
    :goto_6
    iget-object v5, v1, Lcom/google/api/client/http/HttpRequest;->encoding:Lcom/google/api/client/http/HttpEncoding;

    if-nez v5, :cond_c

    .line 948
    const/4 v5, 0x0

    .line 949
    .local v5, "contentEncoding":Ljava/lang/String;
    iget-object v6, v1, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v6}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v16

    move-wide/from16 v6, v16

    goto :goto_7

    .line 951
    .end local v5    # "contentEncoding":Ljava/lang/String;
    :cond_c
    iget-object v5, v1, Lcom/google/api/client/http/HttpRequest;->encoding:Lcom/google/api/client/http/HttpEncoding;

    invoke-interface {v5}, Lcom/google/api/client/http/HttpEncoding;->getName()Ljava/lang/String;

    move-result-object v5

    .line 952
    .restart local v5    # "contentEncoding":Ljava/lang/String;
    new-instance v6, Lcom/google/api/client/http/HttpEncodingStreamingContent;

    iget-object v7, v1, Lcom/google/api/client/http/HttpRequest;->encoding:Lcom/google/api/client/http/HttpEncoding;

    invoke-direct {v6, v3, v7}, Lcom/google/api/client/http/HttpEncodingStreamingContent;-><init>(Lcom/google/api/client/util/StreamingContent;Lcom/google/api/client/http/HttpEncoding;)V

    move-object v3, v6

    move-wide/from16 v6, v16

    .line 955
    .end local v16    # "contentLength":J
    .local v6, "contentLength":J
    :goto_7
    if-eqz v11, :cond_10

    .line 956
    const-string v14, " -H \'"

    if-eqz v0, :cond_d

    .line 957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v2

    .end local v2    # "retriesRemaining":I
    .local v16, "retriesRemaining":I
    const-string v2, "Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 958
    .local v1, "header":Ljava/lang/String;
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v17, v4

    .end local v4    # "contentRetrySupported":Z
    .local v17, "contentRetrySupported":Z
    sget-object v4, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    if-eqz v13, :cond_e

    .line 960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 956
    .end local v1    # "header":Ljava/lang/String;
    .end local v16    # "retriesRemaining":I
    .end local v17    # "contentRetrySupported":Z
    .restart local v2    # "retriesRemaining":I
    .restart local v4    # "contentRetrySupported":Z
    :cond_d
    move/from16 v16, v2

    move/from16 v17, v4

    .line 963
    .end local v2    # "retriesRemaining":I
    .end local v4    # "contentRetrySupported":Z
    .restart local v16    # "retriesRemaining":I
    .restart local v17    # "contentRetrySupported":Z
    :cond_e
    :goto_8
    if-eqz v5, :cond_f

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 965
    .restart local v1    # "header":Ljava/lang/String;
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    if-eqz v13, :cond_f

    .line 967
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    .end local v1    # "header":Ljava/lang/String;
    :cond_f
    const-wide/16 v1, 0x0

    cmp-long v4, v6, v1

    if-ltz v4, :cond_11

    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 972
    .restart local v1    # "header":Ljava/lang/String;
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 955
    .end local v1    # "header":Ljava/lang/String;
    .end local v16    # "retriesRemaining":I
    .end local v17    # "contentRetrySupported":Z
    .restart local v2    # "retriesRemaining":I
    .restart local v4    # "contentRetrySupported":Z
    :cond_10
    move/from16 v16, v2

    move/from16 v17, v4

    .line 976
    .end local v2    # "retriesRemaining":I
    .end local v4    # "contentRetrySupported":Z
    .restart local v16    # "retriesRemaining":I
    .restart local v17    # "contentRetrySupported":Z
    :cond_11
    :goto_9
    if-eqz v13, :cond_12

    .line 977
    const-string v1, " -d \'@-\'"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    :cond_12
    invoke-virtual {v9, v0}, Lcom/google/api/client/http/LowLevelHttpRequest;->setContentType(Ljava/lang/String;)V

    .line 981
    invoke-virtual {v9, v5}, Lcom/google/api/client/http/LowLevelHttpRequest;->setContentEncoding(Ljava/lang/String;)V

    .line 982
    invoke-virtual {v9, v6, v7}, Lcom/google/api/client/http/LowLevelHttpRequest;->setContentLength(J)V

    .line 983
    invoke-virtual {v9, v3}, Lcom/google/api/client/http/LowLevelHttpRequest;->setStreamingContent(Lcom/google/api/client/util/StreamingContent;)V

    goto :goto_a

    .line 936
    .end local v16    # "retriesRemaining":I
    .end local v17    # "contentRetrySupported":Z
    .end local v18    # "retryRequest":Z
    .end local v19    # "response":Lcom/google/api/client/http/HttpResponse;
    .end local v20    # "executeException":Ljava/io/IOException;
    .end local v21    # "originalUserAgent":Ljava/lang/String;
    .end local v22    # "span":Lio/opencensus/trace/Span;
    .local v0, "retryRequest":Z
    .restart local v2    # "retriesRemaining":I
    .restart local v4    # "contentRetrySupported":Z
    .local v5, "response":Lcom/google/api/client/http/HttpResponse;
    .local v6, "span":Lio/opencensus/trace/Span;
    .restart local v7    # "executeException":Ljava/io/IOException;
    .restart local v14    # "originalUserAgent":Ljava/lang/String;
    :cond_13
    move/from16 v18, v0

    move/from16 v16, v2

    move/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v22, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v14

    .line 986
    .end local v0    # "retryRequest":Z
    .end local v2    # "retriesRemaining":I
    .end local v4    # "contentRetrySupported":Z
    .end local v5    # "response":Lcom/google/api/client/http/HttpResponse;
    .end local v6    # "span":Lio/opencensus/trace/Span;
    .end local v7    # "executeException":Ljava/io/IOException;
    .end local v14    # "originalUserAgent":Ljava/lang/String;
    .restart local v16    # "retriesRemaining":I
    .restart local v17    # "contentRetrySupported":Z
    .restart local v18    # "retryRequest":Z
    .restart local v19    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v20    # "executeException":Ljava/io/IOException;
    .restart local v21    # "originalUserAgent":Ljava/lang/String;
    .restart local v22    # "span":Lio/opencensus/trace/Span;
    :goto_a
    if-eqz v11, :cond_15

    .line 987
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 988
    if-eqz v13, :cond_15

    .line 989
    const-string v0, " -- \'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const-string v0, "\'\"\'\"\'"

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    if-eqz v3, :cond_14

    .line 993
    const-string v0, " << $$$"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    :cond_14
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 1001
    :cond_15
    if-eqz v17, :cond_16

    if-lez v16, :cond_16

    const/4 v0, 0x1

    goto :goto_b

    :cond_16
    const/4 v0, 0x0

    :goto_b
    move v1, v0

    .line 1004
    .end local v18    # "retryRequest":Z
    .local v1, "retryRequest":Z
    move-object/from16 v2, p0

    iget v0, v2, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    iget v4, v2, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    invoke-virtual {v9, v0, v4}, Lcom/google/api/client/http/LowLevelHttpRequest;->setTimeout(II)V

    .line 1005
    iget v0, v2, Lcom/google/api/client/http/HttpRequest;->writeTimeout:I

    invoke-virtual {v9, v0}, Lcom/google/api/client/http/LowLevelHttpRequest;->setWriteTimeout(I)V

    .line 1009
    iget-object v0, v2, Lcom/google/api/client/http/HttpRequest;->tracer:Lio/opencensus/trace/Tracer;

    move-object/from16 v4, v22

    .end local v22    # "span":Lio/opencensus/trace/Span;
    .local v4, "span":Lio/opencensus/trace/Span;
    invoke-virtual {v0, v4}, Lio/opencensus/trace/Tracer;->withSpan(Lio/opencensus/trace/Span;)Lio/opencensus/common/Scope;

    move-result-object v5

    .line 1010
    .local v5, "ws":Lio/opencensus/common/Scope;
    invoke-virtual {v9}, Lcom/google/api/client/http/LowLevelHttpRequest;->getContentLength()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/google/api/client/http/OpenCensusUtils;->recordSentMessageEvent(Lio/opencensus/trace/Span;J)V

    .line 1012
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v9}, Lcom/google/api/client/http/LowLevelHttpRequest;->execute()Lcom/google/api/client/http/LowLevelHttpResponse;

    move-result-object v0

    move-object v7, v0

    .line 1013
    .local v7, "lowLevelHttpResponse":Lcom/google/api/client/http/LowLevelHttpResponse;
    if-eqz v7, :cond_17

    .line 1014
    invoke-virtual {v7}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContentLength()J

    move-result-wide v14

    invoke-static {v4, v14, v15}, Lcom/google/api/client/http/OpenCensusUtils;->recordReceivedMessageEvent(Lio/opencensus/trace/Span;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1017
    :cond_17
    const/4 v14, 0x0

    .line 1019
    .local v14, "responseConstructed":Z
    :try_start_1
    new-instance v0, Lcom/google/api/client/http/HttpResponse;

    invoke-direct {v0, v2, v7}, Lcom/google/api/client/http/HttpResponse;-><init>(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/LowLevelHttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v15, v0

    .line 1020
    .end local v19    # "response":Lcom/google/api/client/http/HttpResponse;
    .local v15, "response":Lcom/google/api/client/http/HttpResponse;
    const/4 v0, 0x1

    .line 1022
    .end local v14    # "responseConstructed":Z
    .local v0, "responseConstructed":Z
    if-nez v0, :cond_19

    .line 1023
    :try_start_2
    invoke-virtual {v7}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v14

    .line 1024
    .local v14, "lowLevelContent":Ljava/io/InputStream;
    if-eqz v14, :cond_18

    .line 1025
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1027
    .end local v14    # "lowLevelContent":Ljava/io/InputStream;
    :cond_18
    goto :goto_c

    .line 1043
    .end local v0    # "responseConstructed":Z
    .end local v7    # "lowLevelHttpResponse":Lcom/google/api/client/http/LowLevelHttpResponse;
    :catchall_0
    move-exception v0

    move-object/from16 v22, v3

    move-object v3, v8

    move-object/from16 v25, v9

    move-object/from16 v19, v15

    move-object/from16 v7, v20

    goto/16 :goto_1a

    .line 1029
    :catch_0
    move-exception v0

    move-object/from16 v19, v15

    goto :goto_d

    .line 1043
    :cond_19
    :goto_c
    invoke-interface {v5}, Lio/opencensus/common/Scope;->close()V

    .line 1044
    move-object/from16 v7, v20

    goto :goto_10

    .line 1022
    .end local v15    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v7    # "lowLevelHttpResponse":Lcom/google/api/client/http/LowLevelHttpResponse;
    .local v14, "responseConstructed":Z
    .restart local v19    # "response":Lcom/google/api/client/http/HttpResponse;
    :catchall_1
    move-exception v0

    if-nez v14, :cond_1a

    .line 1023
    :try_start_3
    invoke-virtual {v7}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v15

    .line 1024
    .local v15, "lowLevelContent":Ljava/io/InputStream;
    if-eqz v15, :cond_1a

    .line 1025
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 1028
    .end local v15    # "lowLevelContent":Ljava/io/InputStream;
    :cond_1a
    nop

    .end local v1    # "retryRequest":Z
    .end local v3    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .end local v4    # "span":Lio/opencensus/trace/Span;
    .end local v5    # "ws":Lio/opencensus/common/Scope;
    .end local v8    # "urlString":Ljava/lang/String;
    .end local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .end local v10    # "logger":Ljava/util/logging/Logger;
    .end local v11    # "loggable":Z
    .end local v12    # "logbuf":Ljava/lang/StringBuilder;
    .end local v13    # "curlbuf":Ljava/lang/StringBuilder;
    .end local v16    # "retriesRemaining":I
    .end local v17    # "contentRetrySupported":Z
    .end local v19    # "response":Lcom/google/api/client/http/HttpResponse;
    .end local v20    # "executeException":Ljava/io/IOException;
    .end local v21    # "originalUserAgent":Ljava/lang/String;
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1043
    .end local v7    # "lowLevelHttpResponse":Lcom/google/api/client/http/LowLevelHttpResponse;
    .end local v14    # "responseConstructed":Z
    .restart local v1    # "retryRequest":Z
    .restart local v3    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .restart local v4    # "span":Lio/opencensus/trace/Span;
    .restart local v5    # "ws":Lio/opencensus/common/Scope;
    .restart local v8    # "urlString":Ljava/lang/String;
    .restart local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .restart local v10    # "logger":Ljava/util/logging/Logger;
    .restart local v11    # "loggable":Z
    .restart local v12    # "logbuf":Ljava/lang/StringBuilder;
    .restart local v13    # "curlbuf":Ljava/lang/StringBuilder;
    .restart local v16    # "retriesRemaining":I
    .restart local v17    # "contentRetrySupported":Z
    .restart local v19    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v20    # "executeException":Ljava/io/IOException;
    .restart local v21    # "originalUserAgent":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v22, v3

    move-object v3, v8

    move-object/from16 v25, v9

    move-object/from16 v7, v20

    goto/16 :goto_1a

    .line 1029
    :catch_1
    move-exception v0

    .line 1030
    .local v0, "e":Ljava/io/IOException;
    :goto_d
    :try_start_4
    iget-boolean v7, v2, Lcom/google/api/client/http/HttpRequest;->retryOnExecuteIOException:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    if-nez v7, :cond_1c

    :try_start_5
    iget-object v7, v2, Lcom/google/api/client/http/HttpRequest;->ioExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

    if-eqz v7, :cond_1b

    iget-object v7, v2, Lcom/google/api/client/http/HttpRequest;->ioExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

    .line 1032
    invoke-interface {v7, v2, v1}, Lcom/google/api/client/http/HttpIOExceptionHandler;->handleIOException(Lcom/google/api/client/http/HttpRequest;Z)Z

    move-result v7

    if-eqz v7, :cond_1b

    goto :goto_e

    .line 1034
    :cond_1b
    invoke-static {v6}, Lcom/google/api/client/http/OpenCensusUtils;->getEndSpanOptions(Ljava/lang/Integer;)Lio/opencensus/trace/EndSpanOptions;

    move-result-object v6

    invoke-virtual {v4, v6}, Lio/opencensus/trace/Span;->end(Lio/opencensus/trace/EndSpanOptions;)V

    .line 1035
    nop

    .end local v1    # "retryRequest":Z
    .end local v3    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .end local v4    # "span":Lio/opencensus/trace/Span;
    .end local v5    # "ws":Lio/opencensus/common/Scope;
    .end local v8    # "urlString":Ljava/lang/String;
    .end local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .end local v10    # "logger":Ljava/util/logging/Logger;
    .end local v11    # "loggable":Z
    .end local v12    # "logbuf":Ljava/lang/StringBuilder;
    .end local v13    # "curlbuf":Ljava/lang/StringBuilder;
    .end local v16    # "retriesRemaining":I
    .end local v17    # "contentRetrySupported":Z
    .end local v19    # "response":Lcom/google/api/client/http/HttpResponse;
    .end local v20    # "executeException":Ljava/io/IOException;
    .end local v21    # "originalUserAgent":Ljava/lang/String;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1038
    .restart local v1    # "retryRequest":Z
    .restart local v3    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .restart local v4    # "span":Lio/opencensus/trace/Span;
    .restart local v5    # "ws":Lio/opencensus/common/Scope;
    .restart local v8    # "urlString":Ljava/lang/String;
    .restart local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .restart local v10    # "logger":Ljava/util/logging/Logger;
    .restart local v11    # "loggable":Z
    .restart local v12    # "logbuf":Ljava/lang/StringBuilder;
    .restart local v13    # "curlbuf":Ljava/lang/StringBuilder;
    .restart local v16    # "retriesRemaining":I
    .restart local v17    # "contentRetrySupported":Z
    .restart local v19    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v20    # "executeException":Ljava/io/IOException;
    .restart local v21    # "originalUserAgent":Ljava/lang/String;
    :cond_1c
    :goto_e
    move-object v7, v0

    .line 1039
    .end local v20    # "executeException":Ljava/io/IOException;
    .local v7, "executeException":Ljava/io/IOException;
    if-eqz v11, :cond_1d

    .line 1040
    :try_start_6
    sget-object v14, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v15, "exception thrown while executing request"

    invoke-virtual {v10, v14, v15, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_f

    .line 1043
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v0

    move-object/from16 v22, v3

    move-object v3, v8

    move-object/from16 v25, v9

    goto/16 :goto_1a

    :cond_1d
    :goto_f
    invoke-interface {v5}, Lio/opencensus/common/Scope;->close()V

    .line 1044
    move-object/from16 v15, v19

    .line 1048
    .end local v19    # "response":Lcom/google/api/client/http/HttpResponse;
    .local v15, "response":Lcom/google/api/client/http/HttpResponse;
    :goto_10
    const/4 v14, 0x0

    .line 1050
    .local v14, "responseProcessed":Z
    if-eqz v15, :cond_26

    :try_start_7
    invoke-virtual {v15}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1051
    const/4 v0, 0x0

    .line 1052
    .local v0, "errorHandled":Z
    iget-object v6, v2, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-eqz v6, :cond_1e

    .line 1056
    :try_start_8
    iget-object v6, v2, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    invoke-interface {v6, v2, v15, v1}, Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;->handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z

    move-result v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move v0, v6

    goto :goto_11

    .line 1095
    .end local v0    # "errorHandled":Z
    :catchall_4
    move-exception v0

    move-object/from16 v22, v3

    move-object v3, v8

    move-object/from16 v25, v9

    goto/16 :goto_15

    .line 1052
    .restart local v0    # "errorHandled":Z
    :cond_1e
    move v6, v0

    .line 1058
    .end local v0    # "errorHandled":Z
    .local v6, "errorHandled":Z
    :goto_11
    if-nez v6, :cond_22

    .line 1059
    :try_start_9
    invoke-virtual {v15}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-object/from16 v22, v3

    .end local v3    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .local v22, "streamingContent":Lcom/google/api/client/util/StreamingContent;
    :try_start_a
    invoke-virtual {v15}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/api/client/http/HttpRequest;->handleRedirect(ILcom/google/api/client/http/HttpHeaders;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1061
    const/4 v6, 0x1

    move-object v3, v8

    move-object/from16 v25, v9

    goto :goto_13

    .line 1062
    :cond_1f
    if-eqz v1, :cond_21

    iget-object v0, v2, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    if-eqz v0, :cond_21

    iget-object v0, v2, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    .line 1064
    invoke-virtual {v15}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/google/api/client/http/BackOffPolicy;->isBackOffRequired(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1067
    iget-object v0, v2, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    invoke-interface {v0}, Lcom/google/api/client/http/BackOffPolicy;->getNextBackOffMillis()J

    move-result-wide v19
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-wide/from16 v23, v19

    .line 1068
    .local v23, "backOffTime":J
    const-wide/16 v19, -0x1

    move-object v3, v8

    move-object/from16 v25, v9

    move-wide/from16 v8, v23

    .end local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .end local v23    # "backOffTime":J
    .local v3, "urlString":Ljava/lang/String;
    .local v8, "backOffTime":J
    .local v25, "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    cmp-long v0, v8, v19

    if-eqz v0, :cond_23

    .line 1070
    :try_start_b
    iget-object v0, v2, Lcom/google/api/client/http/HttpRequest;->sleeper:Lcom/google/api/client/util/Sleeper;

    invoke-interface {v0, v8, v9}, Lcom/google/api/client/util/Sleeper;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 1073
    goto :goto_12

    .line 1071
    :catch_2
    move-exception v0

    .line 1074
    :goto_12
    const/4 v6, 0x1

    goto :goto_13

    .line 1064
    .end local v3    # "urlString":Ljava/lang/String;
    .end local v25    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .local v8, "urlString":Ljava/lang/String;
    .restart local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    :cond_20
    move-object v3, v8

    move-object/from16 v25, v9

    .end local v8    # "urlString":Ljava/lang/String;
    .end local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .restart local v3    # "urlString":Ljava/lang/String;
    .restart local v25    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    goto :goto_13

    .line 1062
    .end local v3    # "urlString":Ljava/lang/String;
    .end local v25    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .restart local v8    # "urlString":Ljava/lang/String;
    .restart local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    :cond_21
    move-object v3, v8

    move-object/from16 v25, v9

    .end local v8    # "urlString":Ljava/lang/String;
    .end local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .restart local v3    # "urlString":Ljava/lang/String;
    .restart local v25    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    goto :goto_13

    .line 1095
    .end local v3    # "urlString":Ljava/lang/String;
    .end local v6    # "errorHandled":Z
    .end local v25    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .restart local v8    # "urlString":Ljava/lang/String;
    .restart local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    :catchall_5
    move-exception v0

    move-object v3, v8

    move-object/from16 v25, v9

    .end local v8    # "urlString":Ljava/lang/String;
    .end local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .restart local v3    # "urlString":Ljava/lang/String;
    .restart local v25    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    goto :goto_15

    .line 1058
    .end local v22    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .end local v25    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .local v3, "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .restart local v6    # "errorHandled":Z
    .restart local v8    # "urlString":Ljava/lang/String;
    .restart local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    :cond_22
    move-object/from16 v22, v3

    move-object v3, v8

    move-object/from16 v25, v9

    .line 1080
    .end local v8    # "urlString":Ljava/lang/String;
    .end local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .local v3, "urlString":Ljava/lang/String;
    .restart local v22    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .restart local v25    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    :cond_23
    :goto_13
    and-int/2addr v1, v6

    .line 1082
    if-eqz v1, :cond_24

    .line 1083
    :try_start_c
    invoke-virtual {v15}, Lcom/google/api/client/http/HttpResponse;->ignore()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_14

    .line 1095
    .end local v6    # "errorHandled":Z
    :catchall_6
    move-exception v0

    goto :goto_15

    .line 1085
    :cond_24
    :goto_14
    goto :goto_17

    .line 1095
    .end local v22    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .end local v25    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .local v3, "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .restart local v8    # "urlString":Ljava/lang/String;
    .restart local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    :catchall_7
    move-exception v0

    move-object/from16 v22, v3

    move-object v3, v8

    move-object/from16 v25, v9

    .end local v8    # "urlString":Ljava/lang/String;
    .end local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .local v3, "urlString":Ljava/lang/String;
    .restart local v22    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .restart local v25    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    :goto_15
    if-eqz v15, :cond_25

    if-nez v14, :cond_25

    .line 1096
    invoke-virtual {v15}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 1098
    :cond_25
    throw v0

    .line 1050
    .end local v22    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .end local v25    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .local v3, "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .restart local v8    # "urlString":Ljava/lang/String;
    .restart local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    :cond_26
    move-object/from16 v22, v3

    move-object v3, v8

    move-object/from16 v25, v9

    .line 1087
    .end local v8    # "urlString":Ljava/lang/String;
    .end local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .local v3, "urlString":Ljava/lang/String;
    .restart local v22    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .restart local v25    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    if-nez v15, :cond_27

    const/4 v0, 0x1

    goto :goto_16

    :cond_27
    const/4 v0, 0x0

    :goto_16
    and-int/2addr v0, v1

    move v1, v0

    .line 1091
    :goto_17
    add-int/lit8 v6, v16, -0x1

    .line 1093
    .end local v16    # "retriesRemaining":I
    .local v6, "retriesRemaining":I
    const/4 v0, 0x1

    .line 1095
    .end local v14    # "responseProcessed":Z
    .local v0, "responseProcessed":Z
    if-eqz v15, :cond_28

    if-nez v0, :cond_28

    .line 1096
    invoke-virtual {v15}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 1099
    .end local v0    # "responseProcessed":Z
    .end local v3    # "urlString":Ljava/lang/String;
    .end local v5    # "ws":Lio/opencensus/common/Scope;
    .end local v10    # "logger":Ljava/util/logging/Logger;
    .end local v11    # "loggable":Z
    .end local v12    # "logbuf":Ljava/lang/StringBuilder;
    .end local v13    # "curlbuf":Ljava/lang/StringBuilder;
    .end local v17    # "contentRetrySupported":Z
    .end local v21    # "originalUserAgent":Ljava/lang/String;
    .end local v22    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .end local v25    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    :cond_28
    if-nez v1, :cond_2e

    .line 1100
    if-nez v15, :cond_29

    const/4 v0, 0x0

    goto :goto_18

    :cond_29
    invoke-virtual {v15}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_18
    invoke-static {v0}, Lcom/google/api/client/http/OpenCensusUtils;->getEndSpanOptions(Ljava/lang/Integer;)Lio/opencensus/trace/EndSpanOptions;

    move-result-object v0

    invoke-virtual {v4, v0}, Lio/opencensus/trace/Span;->end(Lio/opencensus/trace/EndSpanOptions;)V

    .line 1102
    if-eqz v15, :cond_2d

    .line 1107
    iget-object v0, v2, Lcom/google/api/client/http/HttpRequest;->responseInterceptor:Lcom/google/api/client/http/HttpResponseInterceptor;

    if-eqz v0, :cond_2a

    .line 1108
    iget-object v0, v2, Lcom/google/api/client/http/HttpRequest;->responseInterceptor:Lcom/google/api/client/http/HttpResponseInterceptor;

    invoke-interface {v0, v15}, Lcom/google/api/client/http/HttpResponseInterceptor;->interceptResponse(Lcom/google/api/client/http/HttpResponse;)V

    .line 1111
    :cond_2a
    iget-boolean v0, v2, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    if-eqz v0, :cond_2c

    invoke-virtual {v15}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_19

    .line 1113
    :cond_2b
    :try_start_d
    new-instance v0, Lcom/google/api/client/http/HttpResponseException;

    invoke-direct {v0, v15}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;)V

    .end local v1    # "retryRequest":Z
    .end local v4    # "span":Lio/opencensus/trace/Span;
    .end local v6    # "retriesRemaining":I
    .end local v7    # "executeException":Ljava/io/IOException;
    .end local v15    # "response":Lcom/google/api/client/http/HttpResponse;
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 1115
    .restart local v1    # "retryRequest":Z
    .restart local v4    # "span":Lio/opencensus/trace/Span;
    .restart local v6    # "retriesRemaining":I
    .restart local v7    # "executeException":Ljava/io/IOException;
    .restart local v15    # "response":Lcom/google/api/client/http/HttpResponse;
    :catchall_8
    move-exception v0

    invoke-virtual {v15}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 1116
    throw v0

    .line 1118
    :cond_2c
    :goto_19
    return-object v15

    .line 1104
    :cond_2d
    throw v7

    .line 1099
    :cond_2e
    move v0, v1

    move-object v1, v2

    move v2, v6

    move-object v5, v15

    move-object v6, v4

    goto/16 :goto_1

    .line 1043
    .end local v6    # "retriesRemaining":I
    .end local v7    # "executeException":Ljava/io/IOException;
    .end local v15    # "response":Lcom/google/api/client/http/HttpResponse;
    .local v3, "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .restart local v5    # "ws":Lio/opencensus/common/Scope;
    .restart local v8    # "urlString":Ljava/lang/String;
    .restart local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .restart local v10    # "logger":Ljava/util/logging/Logger;
    .restart local v11    # "loggable":Z
    .restart local v12    # "logbuf":Ljava/lang/StringBuilder;
    .restart local v13    # "curlbuf":Ljava/lang/StringBuilder;
    .restart local v16    # "retriesRemaining":I
    .restart local v17    # "contentRetrySupported":Z
    .restart local v19    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v20    # "executeException":Ljava/io/IOException;
    .restart local v21    # "originalUserAgent":Ljava/lang/String;
    :catchall_9
    move-exception v0

    move-object/from16 v22, v3

    move-object v3, v8

    move-object/from16 v25, v9

    move-object/from16 v7, v20

    .end local v8    # "urlString":Ljava/lang/String;
    .end local v9    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .end local v20    # "executeException":Ljava/io/IOException;
    .local v3, "urlString":Ljava/lang/String;
    .restart local v7    # "executeException":Ljava/io/IOException;
    .restart local v22    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .restart local v25    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    :goto_1a
    invoke-interface {v5}, Lio/opencensus/common/Scope;->close()V

    .line 1044
    goto :goto_1c

    :goto_1b
    throw v0

    :goto_1c
    goto :goto_1b
.end method

.method public executeAsync()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/api/client/http/HttpResponse;",
            ">;"
        }
    .end annotation

    .line 1153
    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    .line 1154
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setDaemon(Z)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 1153
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/HttpRequest;->executeAsync(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public executeAsync(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/api/client/http/HttpResponse;",
            ">;"
        }
    .end annotation

    .line 1131
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/google/api/client/http/HttpRequest$1;

    invoke-direct {v1, p0}, Lcom/google/api/client/http/HttpRequest$1;-><init>(Lcom/google/api/client/http/HttpRequest;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1139
    .local v0, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/google/api/client/http/HttpResponse;>;"
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1140
    return-object v0
.end method

.method public getBackOffPolicy()Lcom/google/api/client/http/BackOffPolicy;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .line 429
    iget v0, p0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    return v0
.end method

.method public getContent()Lcom/google/api/client/http/HttpContent;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    return-object v0
.end method

.method public getContentLoggingLimit()I
    .locals 1

    .line 354
    iget v0, p0, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    return v0
.end method

.method public getEncoding()Lcom/google/api/client/http/HttpEncoding;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->encoding:Lcom/google/api/client/http/HttpEncoding;

    return-object v0
.end method

.method public getFollowRedirects()Z
    .locals 1

    .line 685
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->followRedirects:Z

    return v0
.end method

.method public getHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getIOExceptionHandler()Lcom/google/api/client/http/HttpIOExceptionHandler;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->ioExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

    return-object v0
.end method

.method public getInterceptor()Lcom/google/api/client/http/HttpExecuteInterceptor;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->executeInterceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    return-object v0
.end method

.method public getNumberOfRetries()I
    .locals 1

    .line 638
    iget v0, p0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    return v0
.end method

.method public final getParser()Lcom/google/api/client/util/ObjectParser;
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->objectParser:Lcom/google/api/client/util/ObjectParser;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 455
    iget v0, p0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public getResponseInterceptor()Lcom/google/api/client/http/HttpResponseInterceptor;
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseInterceptor:Lcom/google/api/client/http/HttpResponseInterceptor;

    return-object v0
.end method

.method public getResponseReturnRawInputStream()Z
    .locals 1

    .line 799
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->responseReturnRawInputStream:Z

    return v0
.end method

.method public getRetryOnExecuteIOException()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 750
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->retryOnExecuteIOException:Z

    return v0
.end method

.method public getSleeper()Lcom/google/api/client/util/Sleeper;
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->sleeper:Lcom/google/api/client/util/Sleeper;

    return-object v0
.end method

.method public getSuppressUserAgentSuffix()Z
    .locals 1

    .line 777
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->suppressUserAgentSuffix:Z

    return v0
.end method

.method public getThrowExceptionOnExecuteError()Z
    .locals 1

    .line 722
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    return v0
.end method

.method public getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public getUnsuccessfulResponseHandler()Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    return-object v0
.end method

.method public getUrl()Lcom/google/api/client/http/GenericUrl;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    return-object v0
.end method

.method public getUseRawRedirectUrls()Z
    .locals 1

    .line 702
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->useRawRedirectUrls:Z

    return v0
.end method

.method public getWriteTimeout()I
    .locals 1

    .line 478
    iget v0, p0, Lcom/google/api/client/http/HttpRequest;->writeTimeout:I

    return v0
.end method

.method public handleRedirect(ILcom/google/api/client/http/HttpHeaders;)Z
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "responseHeaders"    # Lcom/google/api/client/http/HttpHeaders;

    .line 1173
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 1174
    .local v0, "redirectLocation":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpRequest;->getFollowRedirects()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1175
    invoke-static {p1}, Lcom/google/api/client/http/HttpStatusCodes;->isRedirect(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1178
    new-instance v1, Lcom/google/api/client/http/GenericUrl;

    iget-object v2, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v2, v0}, Lcom/google/api/client/http/GenericUrl;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/api/client/http/HttpRequest;->useRawRedirectUrls:Z

    invoke-direct {v1, v2, v3}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/net/URL;Z)V

    invoke-virtual {p0, v1}, Lcom/google/api/client/http/HttpRequest;->setUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    .line 1180
    const/16 v1, 0x12f

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 1181
    const-string v1, "GET"

    invoke-virtual {p0, v1}, Lcom/google/api/client/http/HttpRequest;->setRequestMethod(Ljava/lang/String;)Lcom/google/api/client/http/HttpRequest;

    .line 1183
    invoke-virtual {p0, v2}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 1186
    :cond_0
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpHeaders;->setAuthorization(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 1187
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpHeaders;->setIfMatch(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 1188
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpHeaders;->setIfNoneMatch(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 1189
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpHeaders;->setIfModifiedSince(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 1190
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpHeaders;->setIfUnmodifiedSince(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 1191
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpHeaders;->setIfRange(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 1192
    const/4 v1, 0x1

    return v1

    .line 1194
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isCurlLoggingEnabled()Z
    .locals 1

    .line 407
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->curlLoggingEnabled:Z

    return v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    return v0
.end method

.method public setBackOffPolicy(Lcom/google/api/client/http/BackOffPolicy;)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "backOffPolicy"    # Lcom/google/api/client/http/BackOffPolicy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 335
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    .line 336
    return-object p0
.end method

.method public setConnectTimeout(I)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "connectTimeout"    # I

    .line 441
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 442
    iput p1, p0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    .line 443
    return-object p0
.end method

.method public setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "content"    # Lcom/google/api/client/http/HttpContent;

    .line 285
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 286
    return-object p0
.end method

.method public setContentLoggingLimit(I)Lcom/google/api/client/http/HttpRequest;
    .locals 2
    .param p1, "contentLoggingLimit"    # I

    .line 372
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The content logging limit must be non-negative."

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 374
    iput p1, p0, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    .line 375
    return-object p0
.end method

.method public setCurlLoggingEnabled(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "curlLoggingEnabled"    # Z

    .line 418
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->curlLoggingEnabled:Z

    .line 419
    return-object p0
.end method

.method public setEncoding(Lcom/google/api/client/http/HttpEncoding;)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "encoding"    # Lcom/google/api/client/http/HttpEncoding;

    .line 304
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->encoding:Lcom/google/api/client/http/HttpEncoding;

    .line 305
    return-object p0
.end method

.method public setFollowRedirects(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "followRedirects"    # Z

    .line 696
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->followRedirects:Z

    .line 697
    return-object p0
.end method

.method public setHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "headers"    # Lcom/google/api/client/http/HttpHeaders;

    .line 509
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpHeaders;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 510
    return-object p0
.end method

.method public setIOExceptionHandler(Lcom/google/api/client/http/HttpIOExceptionHandler;)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "ioExceptionHandler"    # Lcom/google/api/client/http/HttpIOExceptionHandler;

    .line 606
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->ioExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

    .line 607
    return-object p0
.end method

.method public setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "interceptor"    # Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 563
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->executeInterceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 564
    return-object p0
.end method

.method public setLoggingEnabled(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "loggingEnabled"    # Z

    .line 397
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    .line 398
    return-object p0
.end method

.method public setNumberOfRetries(I)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "numRetries"    # I

    .line 652
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 653
    iput p1, p0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    .line 654
    return-object p0
.end method

.method public setParser(Lcom/google/api/client/util/ObjectParser;)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "parser"    # Lcom/google/api/client/util/ObjectParser;

    .line 666
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->objectParser:Lcom/google/api/client/util/ObjectParser;

    .line 667
    return-object p0
.end method

.method public setReadTimeout(I)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "readTimeout"    # I

    .line 465
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 466
    iput p1, p0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    .line 467
    return-object p0
.end method

.method public setRequestMethod(Ljava/lang/String;)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "requestMethod"    # Ljava/lang/String;

    .line 246
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/google/api/client/http/HttpMediaType;->matchesToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 247
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "responseHeaders"    # Lcom/google/api/client/http/HttpHeaders;

    .line 542
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpHeaders;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 543
    return-object p0
.end method

.method public setResponseInterceptor(Lcom/google/api/client/http/HttpResponseInterceptor;)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "responseInterceptor"    # Lcom/google/api/client/http/HttpResponseInterceptor;

    .line 625
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->responseInterceptor:Lcom/google/api/client/http/HttpResponseInterceptor;

    .line 626
    return-object p0
.end method

.method public setResponseReturnRawInputStream(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "responseReturnRawInputStream"    # Z

    .line 810
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->responseReturnRawInputStream:Z

    .line 811
    return-object p0
.end method

.method public setRetryOnExecuteIOException(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "retryOnExecuteIOException"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 767
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->retryOnExecuteIOException:Z

    .line 768
    return-object p0
.end method

.method public setSleeper(Lcom/google/api/client/util/Sleeper;)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "sleeper"    # Lcom/google/api/client/util/Sleeper;

    .line 1212
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/Sleeper;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->sleeper:Lcom/google/api/client/util/Sleeper;

    .line 1213
    return-object p0
.end method

.method public setSuppressUserAgentSuffix(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "suppressUserAgentSuffix"    # Z

    .line 788
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->suppressUserAgentSuffix:Z

    .line 789
    return-object p0
.end method

.method public setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "throwExceptionOnExecuteError"    # Z

    .line 734
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    .line 735
    return-object p0
.end method

.method public setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "unsuccessfulResponseHandler"    # Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    .line 583
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    .line 584
    return-object p0
.end method

.method public setUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "url"    # Lcom/google/api/client/http/GenericUrl;

    .line 266
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/GenericUrl;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 267
    return-object p0
.end method

.method public setUseRawRedirectUrls(Z)Lcom/google/api/client/http/HttpRequest;
    .locals 0
    .param p1, "useRawRedirectUrls"    # Z

    .line 711
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->useRawRedirectUrls:Z

    .line 712
    return-object p0
.end method

.method public setWriteTimeout(I)Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .param p1, "writeTimeout"    # I

    .line 487
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 488
    iput p1, p0, Lcom/google/api/client/http/HttpRequest;->writeTimeout:I

    .line 489
    return-object p0
.end method
