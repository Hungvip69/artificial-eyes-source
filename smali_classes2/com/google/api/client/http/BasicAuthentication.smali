.class public final Lcom/google/api/client/http/BasicAuthentication;
.super Ljava/lang/Object;
.source "BasicAuthentication.java"

# interfaces
.implements Lcom/google/api/client/http/HttpRequestInitializer;
.implements Lcom/google/api/client/http/HttpExecuteInterceptor;


# instance fields
.field private final password:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/BasicAuthentication;->username:Ljava/lang/String;

    .line 40
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/BasicAuthentication;->password:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/api/client/http/BasicAuthentication;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/api/client/http/BasicAuthentication;->username:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Lcom/google/api/client/http/HttpRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/HttpRequest;->setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;

    .line 45
    return-void
.end method

.method public intercept(Lcom/google/api/client/http/HttpRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/http/BasicAuthentication;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/api/client/http/BasicAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/HttpHeaders;->setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 49
    return-void
.end method
