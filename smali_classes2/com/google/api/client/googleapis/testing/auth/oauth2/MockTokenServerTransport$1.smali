.class Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport$1;
.super Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;
.source "MockTokenServerTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;->buildTokenRequest(Ljava/lang/String;)Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;


# direct methods
.method constructor <init>(Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;
    .param p2, "x0"    # Ljava/lang/String;

    .line 90
    iput-object p1, p0, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport$1;->this$0:Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;

    invoke-direct {p0, p2}, Lcom/google/api/client/testing/http/MockLowLevelHttpRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/google/api/client/http/LowLevelHttpResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport$1;->getContentAsString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/api/client/googleapis/testing/TestUtils;->parseQuery(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 95
    .local v1, "query":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 97
    .local v2, "accessToken":Ljava/lang/String;
    const-string v3, "client_id"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 98
    .local v3, "foundId":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 99
    iget-object v4, p0, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport$1;->this$0:Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;

    iget-object v4, v4, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;->clients:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    const-string v4, "client_secret"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 103
    .local v4, "foundSecret":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport$1;->this$0:Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;

    iget-object v5, v5, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;->clients:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 104
    .local v5, "expectedSecret":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 107
    const-string v6, "refresh_token"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 108
    .local v6, "foundRefresh":Ljava/lang/String;
    iget-object v7, p0, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport$1;->this$0:Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;

    iget-object v7, v7, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;->refreshTokens:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 111
    iget-object v7, p0, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport$1;->this$0:Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;

    iget-object v7, v7, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;->refreshTokens:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    check-cast v2, Ljava/lang/String;

    .line 112
    .end local v4    # "foundSecret":Ljava/lang/String;
    .end local v5    # "expectedSecret":Ljava/lang/String;
    .end local v6    # "foundRefresh":Ljava/lang/String;
    goto :goto_0

    .line 109
    .restart local v4    # "foundSecret":Ljava/lang/String;
    .restart local v5    # "expectedSecret":Ljava/lang/String;
    .restart local v6    # "foundRefresh":Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Refresh Token not found."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 105
    .end local v6    # "foundRefresh":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Client secret not found."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 100
    .end local v4    # "foundSecret":Ljava/lang/String;
    .end local v5    # "expectedSecret":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Client ID not found."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 112
    :cond_3
    const-string v4, "grant_type"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 113
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 114
    .local v4, "grantType":Ljava/lang/String;
    const-string v5, "urn:ietf:params:oauth:grant-type:jwt-bearer"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 117
    const-string v5, "assertion"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 118
    .local v5, "assertion":Ljava/lang/String;
    sget-object v6, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;->JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

    invoke-static {v6, v5}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->parse(Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;)Lcom/google/api/client/json/webtoken/JsonWebSignature;

    move-result-object v6

    .line 119
    .local v6, "signature":Lcom/google/api/client/json/webtoken/JsonWebSignature;
    invoke-virtual {v6}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getPayload()Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->getIssuer()Ljava/lang/String;

    move-result-object v7

    .line 120
    .local v7, "foundEmail":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport$1;->this$0:Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;

    iget-object v8, v8, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;->serviceAccounts:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 123
    iget-object v8, p0, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport$1;->this$0:Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;

    iget-object v8, v8, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;->serviceAccounts:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    check-cast v2, Ljava/lang/String;

    .line 124
    invoke-virtual {v6}, Lcom/google/api/client/json/webtoken/JsonWebSignature;->getPayload()Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;

    move-result-object v8

    const-string v9, "scope"

    invoke-virtual {v8, v9}, Lcom/google/api/client/json/webtoken/JsonWebToken$Payload;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 125
    .local v8, "foundScopes":Ljava/lang/String;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4

    .line 128
    .end local v4    # "grantType":Ljava/lang/String;
    .end local v5    # "assertion":Ljava/lang/String;
    .end local v6    # "signature":Lcom/google/api/client/json/webtoken/JsonWebSignature;
    .end local v7    # "foundEmail":Ljava/lang/String;
    .end local v8    # "foundScopes":Ljava/lang/String;
    nop

    .line 133
    :goto_0
    new-instance v4, Lcom/google/api/client/json/GenericJson;

    invoke-direct {v4}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 134
    .local v4, "refreshContents":Lcom/google/api/client/json/GenericJson;
    sget-object v5, Lcom/google/api/client/googleapis/testing/auth/oauth2/MockTokenServerTransport;->JSON_FACTORY:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {v4, v5}, Lcom/google/api/client/json/GenericJson;->setFactory(Lcom/google/api/client/json/JsonFactory;)V

    .line 135
    const-string v5, "access_token"

    invoke-virtual {v4, v5, v2}, Lcom/google/api/client/json/GenericJson;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/16 v5, 0xe10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "expires_in"

    invoke-virtual {v4, v6, v5}, Lcom/google/api/client/json/GenericJson;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v5, "token_type"

    const-string v6, "Bearer"

    invoke-virtual {v4, v5, v6}, Lcom/google/api/client/json/GenericJson;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v4}, Lcom/google/api/client/json/GenericJson;->toPrettyString()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "refreshText":Ljava/lang/String;
    new-instance v6, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    invoke-direct {v6}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;-><init>()V

    .line 141
    const-string v7, "application/json; charset=UTF-8"

    invoke-virtual {v6, v7}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->setContentType(Ljava/lang/String;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    move-result-object v6

    .line 142
    invoke-virtual {v6, v5}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->setContent(Ljava/lang/String;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    move-result-object v6

    .line 143
    .local v6, "response":Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    return-object v6

    .line 126
    .local v4, "grantType":Ljava/lang/String;
    .local v5, "assertion":Ljava/lang/String;
    .local v6, "signature":Lcom/google/api/client/json/webtoken/JsonWebSignature;
    .restart local v7    # "foundEmail":Ljava/lang/String;
    .restart local v8    # "foundScopes":Ljava/lang/String;
    :cond_4
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Scopes not found."

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 121
    .end local v8    # "foundScopes":Ljava/lang/String;
    :cond_5
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Service Account Email not found as issuer."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 115
    .end local v5    # "assertion":Ljava/lang/String;
    .end local v6    # "signature":Lcom/google/api/client/json/webtoken/JsonWebSignature;
    .end local v7    # "foundEmail":Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Unexpected Grant Type."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 129
    .end local v4    # "grantType":Ljava/lang/String;
    :cond_7
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unknown token type."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
