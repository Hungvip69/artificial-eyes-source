.class Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport$1;
.super Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;
.source "MockMetadataServerTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;->buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;


# direct methods
.method constructor <init>(Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;
    .param p2, "x0"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport$1;->this$0:Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;

    invoke-direct {p0, p2}, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/google/api/client/http/LowLevelHttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport$1;->this$0:Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;

    iget-object v0, v0, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;->tokenRequestStatusCode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    invoke-direct {v0}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;-><init>()V

    iget-object v1, p0, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport$1;->this$0:Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;

    iget-object v1, v1, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;->tokenRequestStatusCode:Ljava/lang/Integer;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->setStatusCode(I)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    move-result-object v0

    .line 70
    const-string v1, "Token Fetch Error"

    invoke-virtual {v0, v1}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->setContent(Ljava/lang/String;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    move-result-object v0

    .line 71
    .local v0, "response":Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    return-object v0

    .line 74
    .end local v0    # "response":Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    :cond_0
    const-string v0, "Metadata-Flavor"

    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport$1;->getFirstHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "metadataRequestHeader":Ljava/lang/String;
    const-string v1, "Google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    new-instance v1, Lcom/google/api/client/json/GenericJson;

    invoke-direct {v1}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 81
    .local v1, "refreshContents":Lcom/google/api/client/json/GenericJson;
    sget-object v2, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;->JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {v1, v2}, Lcom/google/api/client/json/GenericJson;->setFactory(Lcom/google/api/client/json/JsonFactory;)V

    .line 82
    iget-object v2, p0, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport$1;->this$0:Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;

    iget-object v2, v2, Lcom/google/api/client/googleapis/testing/compute/MockMetadataServerTransport;->accessToken:Ljava/lang/String;

    const-string v3, "access_token"

    invoke-virtual {v1, v3, v2}, Lcom/google/api/client/json/GenericJson;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const v2, 0x36ee80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "expires_in"

    invoke-virtual {v1, v3, v2}, Lcom/google/api/client/json/GenericJson;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v2, "token_type"

    const-string v3, "Bearer"

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/json/GenericJson;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {v1}, Lcom/google/api/client/json/GenericJson;->toPrettyString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "refreshText":Ljava/lang/String;
    new-instance v3, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    invoke-direct {v3}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;-><init>()V

    .line 88
    const-string v4, "application/json; charset=UTF-8"

    invoke-virtual {v3, v4}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->setContentType(Ljava/lang/String;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    move-result-object v3

    .line 89
    invoke-virtual {v3, v2}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->setContent(Ljava/lang/String;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    move-result-object v3

    .line 90
    .local v3, "response":Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    return-object v3

    .line 76
    .end local v1    # "refreshContents":Lcom/google/api/client/json/GenericJson;
    .end local v2    # "refreshText":Ljava/lang/String;
    .end local v3    # "response":Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Metadata request header not found."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
