.class public abstract Lcom/google/api/client/googleapis/services/AbstractGoogleClient;
.super Ljava/lang/Object;
.source "AbstractGoogleClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final applicationName:Ljava/lang/String;

.field private final batchPath:Ljava/lang/String;

.field private final googleClientRequestInitializer:Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;

.field private final objectParser:Lcom/google/api/client/util/ObjectParser;

.field private final requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

.field private final rootUrl:Ljava/lang/String;

.field private final servicePath:Ljava/lang/String;

.field private final suppressPatternChecks:Z

.field private final suppressRequiredParameterChecks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->googleClientRequestInitializer:Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->googleClientRequestInitializer:Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;

    .line 82
    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->rootUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->normalizeRootUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->rootUrl:Ljava/lang/String;

    .line 83
    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->servicePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->normalizeServicePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->servicePath:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->batchPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->batchPath:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->applicationName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/util/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->logger:Ljava/util/logging/Logger;

    const-string v1, "Application name is not set. Call Builder#setApplicationName."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->applicationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->applicationName:Ljava/lang/String;

    .line 89
    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->httpRequestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 90
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    iget-object v1, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->httpRequestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 91
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    .line 92
    iget-object v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->objectParser:Lcom/google/api/client/util/ObjectParser;

    iput-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->objectParser:Lcom/google/api/client/util/ObjectParser;

    .line 93
    iget-boolean v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->suppressPatternChecks:Z

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->suppressPatternChecks:Z

    .line 94
    iget-boolean v0, p1, Lcom/google/api/client/googleapis/services/AbstractGoogleClient$Builder;->suppressRequiredParameterChecks:Z

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->suppressRequiredParameterChecks:Z

    .line 95
    return-void
.end method

.method static normalizeRootUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "rootUrl"    # Ljava/lang/String;

    .line 262
    const-string v0, "root URL cannot be null."

    invoke-static {p0, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 266
    :cond_0
    return-object p0
.end method

.method static normalizeServicePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "servicePath"    # Ljava/lang/String;

    .line 274
    const-string v0, "service path cannot be null"

    invoke-static {p0, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "/"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 276
    nop

    .line 277
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 276
    const-string v1, "service path must equal \"/\" if it is of length 1."

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 278
    const-string p0, ""

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 280
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 283
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 287
    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final batch()Lcom/google/api/client/googleapis/batch/BatchRequest;
    .locals 1

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->batch(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public final batch(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/googleapis/batch/BatchRequest;
    .locals 4
    .param p1, "httpRequestInitializer"    # Lcom/google/api/client/http/HttpRequestInitializer;

    .line 236
    new-instance v0, Lcom/google/api/client/googleapis/batch/BatchRequest;

    .line 237
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequestFactory;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/api/client/googleapis/batch/BatchRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V

    .line 238
    .local v0, "batch":Lcom/google/api/client/googleapis/batch/BatchRequest;
    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->batchPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/api/client/util/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    new-instance v1, Lcom/google/api/client/http/GenericUrl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getRootUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "batch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/batch/BatchRequest;->setBatchUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    goto :goto_0

    .line 241
    :cond_0
    new-instance v1, Lcom/google/api/client/http/GenericUrl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getRootUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->batchPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/batch/BatchRequest;->setBatchUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/googleapis/batch/BatchRequest;

    .line 243
    :goto_0
    return-object v0
.end method

.method public final getApplicationName()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBaseUrl()Ljava/lang/String;
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->rootUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->servicePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGoogleClientRequestInitializer()Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->googleClientRequestInitializer:Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;

    return-object v0
.end method

.method public getObjectParser()Lcom/google/api/client/util/ObjectParser;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->objectParser:Lcom/google/api/client/util/ObjectParser;

    return-object v0
.end method

.method public final getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->requestFactory:Lcom/google/api/client/http/HttpRequestFactory;

    return-object v0
.end method

.method public final getRootUrl()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->rootUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getServicePath()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->servicePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuppressPatternChecks()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->suppressPatternChecks:Z

    return v0
.end method

.method public final getSuppressRequiredParameterChecks()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->suppressRequiredParameterChecks:Z

    return v0
.end method

.method protected initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    .local p1, "httpClientRequest":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<*>;"
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getGoogleClientRequestInitializer()Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/services/AbstractGoogleClient;->getGoogleClientRequestInitializer()Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 194
    :cond_0
    return-void
.end method
