.class public Lcom/google/api/client/auth/oauth2/TokenResponseException;
.super Lcom/google/api/client/http/HttpResponseException;
.source "TokenResponseException.java"


# static fields
.field private static final serialVersionUID:J = 0x37cc5b6d7204050cL


# instance fields
.field private final transient details:Lcom/google/api/client/auth/oauth2/TokenErrorResponse;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpResponseException$Builder;Lcom/google/api/client/auth/oauth2/TokenErrorResponse;)V
    .locals 0
    .param p1, "builder"    # Lcom/google/api/client/http/HttpResponseException$Builder;
    .param p2, "details"    # Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    .line 55
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponseException$Builder;)V

    .line 56
    iput-object p2, p0, Lcom/google/api/client/auth/oauth2/TokenResponseException;->details:Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    .line 57
    return-void
.end method

.method public static from(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/auth/oauth2/TokenResponseException;
    .locals 8
    .param p0, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p1, "response"    # Lcom/google/api/client/http/HttpResponse;

    .line 78
    new-instance v0, Lcom/google/api/client/http/HttpResponseException$Builder;

    .line 79
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/http/HttpResponseException$Builder;-><init>(ILjava/lang/String;Lcom/google/api/client/http/HttpHeaders;)V

    .line 81
    .local v0, "builder":Lcom/google/api/client/http/HttpResponseException$Builder;
    invoke-static {p0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "details":Lcom/google/api/client/auth/oauth2/TokenErrorResponse;
    const/4 v2, 0x0

    .line 84
    .local v2, "detailString":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "contentType":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v4, "application/json; charset=UTF-8"

    .line 87
    invoke-static {v4, v3}, Lcom/google/api/client/http/HttpMediaType;->equalsIgnoreParameters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    new-instance v4, Lcom/google/api/client/json/JsonObjectParser;

    invoke-direct {v4, p0}, Lcom/google/api/client/json/JsonObjectParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    .line 89
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    const-class v7, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    .line 88
    invoke-virtual {v4, v5, v6, v7}, Lcom/google/api/client/json/JsonObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    move-object v1, v4

    .line 90
    invoke-virtual {v1}, Lcom/google/api/client/auth/oauth2/TokenErrorResponse;->toPrettyString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 97
    :goto_0
    goto :goto_1

    .line 94
    :catch_0
    move-exception v4

    .line 96
    .local v4, "exception":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 99
    .end local v4    # "exception":Ljava/io/IOException;
    :goto_1
    invoke-static {p1}, Lcom/google/api/client/http/HttpResponseException;->computeMessageBuffer(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 100
    .local v4, "message":Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/google/api/client/util/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 101
    sget-object v5, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0, v2}, Lcom/google/api/client/http/HttpResponseException$Builder;->setContent(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$Builder;

    .line 104
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/api/client/http/HttpResponseException$Builder;->setMessage(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$Builder;

    .line 105
    new-instance v5, Lcom/google/api/client/auth/oauth2/TokenResponseException;

    invoke-direct {v5, v0, v1}, Lcom/google/api/client/auth/oauth2/TokenResponseException;-><init>(Lcom/google/api/client/http/HttpResponseException$Builder;Lcom/google/api/client/auth/oauth2/TokenErrorResponse;)V

    return-object v5
.end method


# virtual methods
.method public final getDetails()Lcom/google/api/client/auth/oauth2/TokenErrorResponse;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/TokenResponseException;->details:Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    return-object v0
.end method
