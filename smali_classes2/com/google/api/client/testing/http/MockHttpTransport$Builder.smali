.class public Lcom/google/api/client/testing/http/MockHttpTransport$Builder;
.super Ljava/lang/Object;
.source "MockHttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/testing/http/MockHttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field lowLevelHttpRequest:Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

.field lowLevelHttpResponse:Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

.field supportedMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/client/testing/http/MockHttpTransport;
    .locals 1

    .line 138
    new-instance v0, Lcom/google/api/client/testing/http/MockHttpTransport;

    invoke-direct {v0, p0}, Lcom/google/api/client/testing/http/MockHttpTransport;-><init>(Lcom/google/api/client/testing/http/MockHttpTransport$Builder;)V

    return-object v0
.end method

.method public final getLowLevelHttpRequest()Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;->lowLevelHttpRequest:Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    return-object v0
.end method

.method getLowLevelHttpResponse()Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;->lowLevelHttpResponse:Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    return-object v0
.end method

.method public final getSupportedMethods()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;->supportedMethods:Ljava/util/Set;

    return-object v0
.end method

.method public final setLowLevelHttpRequest(Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;)Lcom/google/api/client/testing/http/MockHttpTransport$Builder;
    .locals 2
    .param p1, "lowLevelHttpRequest"    # Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    .line 167
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;->lowLevelHttpResponse:Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannnot set a low level HTTP request when a low level HTTP response has been set."

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 170
    iput-object p1, p0, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;->lowLevelHttpRequest:Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    .line 171
    return-object p0
.end method

.method public final setLowLevelHttpResponse(Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;)Lcom/google/api/client/testing/http/MockHttpTransport$Builder;
    .locals 2
    .param p1, "lowLevelHttpResponse"    # Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    .line 195
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;->lowLevelHttpRequest:Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot set a low level HTTP response when a low level HTTP request has been set."

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 198
    iput-object p1, p0, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;->lowLevelHttpResponse:Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    .line 199
    return-object p0
.end method

.method public final setSupportedMethods(Ljava/util/Set;)Lcom/google/api/client/testing/http/MockHttpTransport$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/testing/http/MockHttpTransport$Builder;"
        }
    .end annotation

    .line 152
    .local p1, "supportedMethods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/api/client/testing/http/MockHttpTransport$Builder;->supportedMethods:Ljava/util/Set;

    .line 153
    return-object p0
.end method
