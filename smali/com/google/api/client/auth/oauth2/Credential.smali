.class public Lcom/google/api/client/auth/oauth2/Credential;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Lcom/google/api/client/http/HttpExecuteInterceptor;
.implements Lcom/google/api/client/http/HttpRequestInitializer;
.implements Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth2/Credential$Builder;,
        Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
    }
.end annotation


# static fields
.field static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private final clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

.field private final clock:Lcom/google/api/client/util/Clock;

.field private expirationTimeMilliseconds:Ljava/lang/Long;

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

.field private final refreshListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;",
            ">;"
        }
    .end annotation
.end field

.field private refreshToken:Ljava/lang/String;

.field private final requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

.field private final tokenServerEncodedUrl:Ljava/lang/String;

.field private final transport:Lcom/google/api/client/http/HttpTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    const-class v0, Lcom/google/api/client/auth/oauth2/Credential;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/auth/oauth2/Credential;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;)V
    .locals 1
    .param p1, "method"    # Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    .line 178
    new-instance v0, Lcom/google/api/client/auth/oauth2/Credential$Builder;

    invoke-direct {v0, p1}, Lcom/google/api/client/auth/oauth2/Credential$Builder;-><init>(Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;)V

    invoke-direct {p0, v0}, Lcom/google/api/client/auth/oauth2/Credential;-><init>(Lcom/google/api/client/auth/oauth2/Credential$Builder;)V

    .line 179
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/auth/oauth2/Credential$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/api/client/auth/oauth2/Credential$Builder;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    .line 187
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/Credential$Builder;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    .line 188
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/Credential$Builder;->transport:Lcom/google/api/client/http/HttpTransport;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 189
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/Credential$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 190
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/Credential$Builder;->tokenServerUrl:Lcom/google/api/client/http/GenericUrl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/Credential$Builder;->tokenServerUrl:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->tokenServerEncodedUrl:Ljava/lang/String;

    .line 191
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/Credential$Builder;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 192
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/Credential$Builder;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 193
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/Credential$Builder;->refreshListeners:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshListeners:Ljava/util/Collection;

    .line 194
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/Credential$Builder;->clock:Lcom/google/api/client/util/Clock;

    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/Clock;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->clock:Lcom/google/api/client/util/Clock;

    .line 195
    return-void
.end method


# virtual methods
.method protected executeRefreshToken()Lcom/google/api/client/auth/oauth2/TokenResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 573
    const/4 v0, 0x0

    return-object v0

    .line 575
    :cond_0
    new-instance v0, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->transport:Lcom/google/api/client/http/HttpTransport;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/Credential;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    new-instance v3, Lcom/google/api/client/http/GenericUrl;

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/Credential;->tokenServerEncodedUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshToken:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 576
    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    .line 577
    invoke-virtual {v0, v1}, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/auth/oauth2/RefreshTokenRequest;->execute()Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object v0

    .line 575
    return-object v0
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->accessToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 294
    return-object v0

    .line 296
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 297
    throw v0
.end method

.method public final getClientAuthentication()Lcom/google/api/client/http/HttpExecuteInterceptor;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    return-object v0
.end method

.method public final getClock()Lcom/google/api/client/util/Clock;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->clock:Lcom/google/api/client/util/Clock;

    return-object v0
.end method

.method public final getExpirationTimeMilliseconds()Ljava/lang/Long;
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->expirationTimeMilliseconds:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 400
    return-object v0

    .line 402
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 403
    throw v0
.end method

.method public final getExpiresInSeconds()Ljava/lang/Long;
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->expirationTimeMilliseconds:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 433
    nop

    .line 437
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 433
    const/4 v0, 0x0

    return-object v0

    .line 435
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->expirationTimeMilliseconds:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/Credential;->clock:Lcom/google/api/client/util/Clock;

    invoke-interface {v2}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 435
    return-object v0

    .line 437
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 438
    throw v0
.end method

.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public final getMethod()Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    return-object v0
.end method

.method public final getRefreshListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;",
            ">;"
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshListeners:Ljava/util/Collection;

    return-object v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 361
    return-object v0

    .line 363
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 364
    throw v0
.end method

.method public final getRequestInitializer()Lcom/google/api/client/http/HttpRequestInitializer;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->requestInitializer:Lcom/google/api/client/http/HttpRequestInitializer;

    return-object v0
.end method

.method public final getTokenServerEncodedUrl()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->tokenServerEncodedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z
    .locals 8
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .param p2, "response"    # Lcom/google/api/client/http/HttpResponse;
    .param p3, "supportsRetry"    # Z

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "refreshToken":Z
    const/4 v1, 0x0

    .line 245
    .local v1, "bearer":Z
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpHeaders;->getAuthenticateAsList()Ljava/util/List;

    move-result-object v2

    .line 251
    .local v2, "authenticateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 252
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 253
    .local v4, "authenticate":Ljava/lang/String;
    const-string v5, "Bearer "

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    const/4 v1, 0x1

    .line 256
    sget-object v3, Lcom/google/api/client/auth/oauth2/BearerToken;->INVALID_TOKEN_ERROR:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 257
    goto :goto_1

    .line 259
    .end local v4    # "authenticate":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 263
    :cond_1
    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 264
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v5

    const/16 v6, 0x191

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    move v0, v5

    .line 267
    :cond_3
    if-eqz v0, :cond_6

    .line 269
    :try_start_0
    iget-object v5, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :try_start_1
    iget-object v5, p0, Lcom/google/api/client/auth/oauth2/Credential;->accessToken:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/api/client/auth/oauth2/Credential;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    invoke-interface {v6, p1}, Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;->getAccessTokenFromRequest(Lcom/google/api/client/http/HttpRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/api/client/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 273
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/Credential;->refreshToken()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    nop

    .line 275
    :goto_4
    :try_start_2
    iget-object v5, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 272
    return v3

    .line 275
    :catchall_0
    move-exception v3

    iget-object v5, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 276
    nop

    .end local v0    # "refreshToken":Z
    .end local v1    # "bearer":Z
    .end local v2    # "authenticateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "request":Lcom/google/api/client/http/HttpRequest;
    .end local p2    # "response":Lcom/google/api/client/http/HttpResponse;
    .end local p3    # "supportsRetry":Z
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 277
    .restart local v0    # "refreshToken":Z
    .restart local v1    # "bearer":Z
    .restart local v2    # "authenticateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "request":Lcom/google/api/client/http/HttpRequest;
    .restart local p2    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local p3    # "supportsRetry":Z
    :catch_0
    move-exception v3

    .line 278
    .local v3, "exception":Ljava/io/IOException;
    sget-object v5, Lcom/google/api/client/auth/oauth2/Credential;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v7, "unable to refresh token"

    invoke-virtual {v5, v6, v7, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    .end local v3    # "exception":Ljava/io/IOException;
    :cond_6
    return v4
.end method

.method public initialize(Lcom/google/api/client/http/HttpRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;

    .line 286
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;

    .line 287
    return-void
.end method

.method public intercept(Lcom/google/api/client/http/HttpRequest;)V
    .locals 6
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 214
    :try_start_0
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/Credential;->getExpiresInSeconds()Ljava/lang/Long;

    move-result-object v0

    .line 216
    .local v0, "expiresIn":Ljava/lang/Long;
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->accessToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3c

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/Credential;->refreshToken()Z

    .line 218
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->accessToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 220
    return-void

    .line 223
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->method:Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/Credential;->accessToken:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Lcom/google/api/client/auth/oauth2/Credential$AccessMethod;->intercept(Lcom/google/api/client/http/HttpRequest;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    .end local v0    # "expiresIn":Ljava/lang/Long;
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 226
    nop

    .line 227
    return-void

    .line 225
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 226
    throw v0
.end method

.method public final refreshToken()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 494
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/Credential;->executeRefreshToken()Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object v2

    .line 495
    .local v2, "tokenResponse":Lcom/google/api/client/auth/oauth2/TokenResponse;
    if-eqz v2, :cond_1

    .line 496
    invoke-virtual {p0, v2}, Lcom/google/api/client/auth/oauth2/Credential;->setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 497
    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshListeners:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;

    .line 498
    .local v4, "refreshListener":Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;
    invoke-interface {v4, p0, v2}, Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;->onTokenResponse(Lcom/google/api/client/auth/oauth2/Credential;Lcom/google/api/client/auth/oauth2/TokenResponse;)V
    :try_end_0
    .catch Lcom/google/api/client/auth/oauth2/TokenResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    .end local v4    # "refreshListener":Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;
    goto :goto_0

    .line 500
    :cond_0
    nop

    .line 520
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 500
    return v0

    .line 517
    .end local v2    # "tokenResponse":Lcom/google/api/client/auth/oauth2/TokenResponse;
    :cond_1
    goto :goto_3

    .line 520
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 502
    :catch_0
    move-exception v2

    .line 503
    .local v2, "e":Lcom/google/api/client/auth/oauth2/TokenResponseException;
    :try_start_1
    invoke-virtual {v2}, Lcom/google/api/client/auth/oauth2/TokenResponseException;->getStatusCode()I

    move-result v3

    const/16 v4, 0x190

    if-gt v4, v3, :cond_2

    invoke-virtual {v2}, Lcom/google/api/client/auth/oauth2/TokenResponseException;->getStatusCode()I

    move-result v3

    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 505
    .local v0, "statusCode4xx":Z
    :goto_1
    invoke-virtual {v2}, Lcom/google/api/client/auth/oauth2/TokenResponseException;->getDetails()Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 508
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/api/client/auth/oauth2/Credential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 509
    invoke-virtual {p0, v3}, Lcom/google/api/client/auth/oauth2/Credential;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 511
    :cond_3
    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshListeners:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;

    .line 512
    .restart local v4    # "refreshListener":Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;
    invoke-virtual {v2}, Lcom/google/api/client/auth/oauth2/TokenResponseException;->getDetails()Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    move-result-object v5

    invoke-interface {v4, p0, v5}, Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;->onTokenErrorResponse(Lcom/google/api/client/auth/oauth2/Credential;Lcom/google/api/client/auth/oauth2/TokenErrorResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    .end local v4    # "refreshListener":Lcom/google/api/client/auth/oauth2/CredentialRefreshListener;
    goto :goto_2

    .line 514
    :cond_4
    if-nez v0, :cond_5

    .line 518
    .end local v0    # "statusCode4xx":Z
    .end local v2    # "e":Lcom/google/api/client/auth/oauth2/TokenResponseException;
    :goto_3
    nop

    .line 520
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 518
    return v1

    .line 515
    .restart local v0    # "statusCode4xx":Z
    .restart local v2    # "e":Lcom/google/api/client/auth/oauth2/TokenResponseException;
    :cond_5
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 520
    .end local v0    # "statusCode4xx":Z
    .end local v2    # "e":Lcom/google/api/client/auth/oauth2/TokenResponseException;
    :goto_4
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 521
    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 2
    .param p1, "accessToken"    # Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 313
    :try_start_0
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/Credential;->accessToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 316
    nop

    .line 317
    return-object p0

    .line 315
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 316
    throw v0
.end method

.method public setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 2
    .param p1, "expirationTimeMilliseconds"    # Ljava/lang/Long;

    .line 416
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 418
    :try_start_0
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/Credential;->expirationTimeMilliseconds:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 421
    nop

    .line 422
    return-object p0

    .line 420
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 421
    throw v0
.end method

.method public setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 6
    .param p1, "expiresIn"    # Ljava/lang/Long;

    .line 454
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->clock:Lcom/google/api/client/util/Clock;

    .line 455
    invoke-interface {v0}, Lcom/google/api/client/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 454
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setExpirationTimeMilliseconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    move-result-object v0

    return-object v0
.end method

.method public setFromTokenResponse(Lcom/google/api/client/auth/oauth2/TokenResponse;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 1
    .param p1, "tokenResponse"    # Lcom/google/api/client/auth/oauth2/TokenResponse;

    .line 541
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 544
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 547
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/client/auth/oauth2/TokenResponse;->getExpiresInSeconds()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/auth/oauth2/Credential;->setExpiresInSeconds(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/Credential;

    .line 548
    return-object p0
.end method

.method public setRefreshToken(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/Credential;
    .locals 2
    .param p1, "refreshToken"    # Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 380
    if-eqz p1, :cond_1

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->transport:Lcom/google/api/client/http/HttpTransport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->clientAuthentication:Lcom/google/api/client/http/HttpExecuteInterceptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->tokenServerEncodedUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Please use the Builder and call setJsonFactory, setTransport, setClientAuthentication and setTokenServerUrl/setTokenServerEncodedUrl"

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 386
    :cond_1
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/Credential;->refreshToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 389
    nop

    .line 390
    return-object p0

    .line 388
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/Credential;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 389
    throw v0
.end method
