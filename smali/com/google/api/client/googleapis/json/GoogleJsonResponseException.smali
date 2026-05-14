.class public Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
.super Lcom/google/api/client/http/HttpResponseException;
.source "GoogleJsonResponseException.java"


# static fields
.field private static final serialVersionUID:J = 0x5aff10c793dbb70L


# instance fields
.field private final transient details:Lcom/google/api/client/googleapis/json/GoogleJsonError;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpResponseException$Builder;Lcom/google/api/client/googleapis/json/GoogleJsonError;)V
    .locals 0
    .param p1, "builder"    # Lcom/google/api/client/http/HttpResponseException$Builder;
    .param p2, "details"    # Lcom/google/api/client/googleapis/json/GoogleJsonError;

    .line 68
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponseException$Builder;)V

    .line 69
    iput-object p2, p0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->details:Lcom/google/api/client/googleapis/json/GoogleJsonError;

    .line 70
    return-void
.end method

.method public static execute(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;
    .locals 3
    .param p0, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-static {p0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getThrowExceptionOnExecuteError()Z

    move-result v0

    .line 185
    .local v0, "originalThrowExceptionOnExecuteError":Z
    if-eqz v0, :cond_0

    .line 186
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 188
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 189
    .local v1, "response":Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 190
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 193
    :cond_1
    invoke-static {p0, v1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->from(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    move-result-object v2

    throw v2

    .line 191
    :cond_2
    :goto_0
    return-object v1
.end method

.method public static from(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
    .locals 7
    .param p0, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .param p1, "response"    # Lcom/google/api/client/http/HttpResponse;

    .line 94
    new-instance v0, Lcom/google/api/client/http/HttpResponseException$Builder;

    .line 95
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/http/HttpResponseException$Builder;-><init>(ILjava/lang/String;Lcom/google/api/client/http/HttpHeaders;)V

    .line 97
    .local v0, "builder":Lcom/google/api/client/http/HttpResponseException$Builder;
    invoke-static {p0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "details":Lcom/google/api/client/googleapis/json/GoogleJsonError;
    const/4 v2, 0x0

    .line 101
    .local v2, "detailString":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "application/json; charset=UTF-8"

    .line 102
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/api/client/http/HttpMediaType;->equalsIgnoreParameters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 103
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_8

    .line 104
    const/4 v3, 0x0

    .line 106
    .local v3, "parser":Lcom/google/api/client/json/JsonParser;
    :try_start_1
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;

    move-result-object v4

    move-object v3, v4

    .line 107
    invoke-virtual {v3}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v4

    .line 109
    .local v4, "currentToken":Lcom/google/api/client/json/JsonToken;
    if-nez v4, :cond_0

    .line 110
    invoke-virtual {v3}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v5

    move-object v4, v5

    .line 113
    :cond_0
    if-eqz v4, :cond_2

    .line 115
    const-string v5, "error"

    invoke-virtual {v3, v5}, Lcom/google/api/client/json/JsonParser;->skipToKey(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v3}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/google/api/client/json/JsonToken;->VALUE_STRING:Lcom/google/api/client/json/JsonToken;

    if-ne v5, v6, :cond_1

    .line 119
    invoke-virtual {v3}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v3}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/google/api/client/json/JsonToken;->START_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-ne v5, v6, :cond_2

    .line 121
    const-class v5, Lcom/google/api/client/googleapis/json/GoogleJsonError;

    invoke-virtual {v3, v5}, Lcom/google/api/client/json/JsonParser;->parseAndClose(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/client/googleapis/json/GoogleJsonError;

    move-object v1, v5

    .line 122
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/json/GoogleJsonError;->toPrettyString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v5

    .line 129
    .end local v4    # "currentToken":Lcom/google/api/client/json/JsonToken;
    :cond_2
    :goto_0
    if-nez v3, :cond_3

    .line 130
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    goto :goto_3

    .line 131
    :cond_3
    if-nez v1, :cond_5

    .line 132
    :goto_2
    invoke-virtual {v3}, Lcom/google/api/client/json/JsonParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 129
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 125
    :catch_0
    move-exception v4

    .line 127
    .local v4, "exception":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    .end local v4    # "exception":Ljava/io/IOException;
    if-nez v3, :cond_4

    .line 130
    goto :goto_1

    .line 131
    :cond_4
    if-nez v1, :cond_5

    .line 132
    goto :goto_2

    .line 135
    .end local v3    # "parser":Lcom/google/api/client/json/JsonParser;
    :cond_5
    :goto_3
    goto :goto_6

    .line 129
    .restart local v3    # "parser":Lcom/google/api/client/json/JsonParser;
    :goto_4
    if-eqz v3, :cond_6

    .line 131
    if-nez v1, :cond_7

    .line 132
    :try_start_4
    invoke-virtual {v3}, Lcom/google/api/client/json/JsonParser;->close()V

    goto :goto_5

    .line 130
    :cond_6
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 134
    :cond_7
    :goto_5
    nop

    .end local v0    # "builder":Lcom/google/api/client/http/HttpResponseException$Builder;
    .end local v1    # "details":Lcom/google/api/client/googleapis/json/GoogleJsonError;
    .end local v2    # "detailString":Ljava/lang/String;
    .end local p0    # "jsonFactory":Lcom/google/api/client/json/JsonFactory;
    .end local p1    # "response":Lcom/google/api/client/http/HttpResponse;
    throw v4

    .line 136
    .end local v3    # "parser":Lcom/google/api/client/json/JsonParser;
    .restart local v0    # "builder":Lcom/google/api/client/http/HttpResponseException$Builder;
    .restart local v1    # "details":Lcom/google/api/client/googleapis/json/GoogleJsonError;
    .restart local v2    # "detailString":Ljava/lang/String;
    .restart local p0    # "jsonFactory":Lcom/google/api/client/json/JsonFactory;
    .restart local p1    # "response":Lcom/google/api/client/http/HttpResponse;
    :cond_8
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v3

    .line 141
    :goto_6
    goto :goto_7

    .line 138
    :catch_1
    move-exception v3

    .line 140
    .local v3, "exception":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 143
    .end local v3    # "exception":Ljava/io/IOException;
    :goto_7
    invoke-static {p1}, Lcom/google/api/client/http/HttpResponseException;->computeMessageBuffer(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 144
    .local v3, "message":Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/google/api/client/util/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 145
    sget-object v4, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, v2}, Lcom/google/api/client/http/HttpResponseException$Builder;->setContent(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$Builder;

    .line 148
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/api/client/http/HttpResponseException$Builder;->setMessage(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$Builder;

    .line 150
    new-instance v4, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;

    invoke-direct {v4, v0, v1}, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;-><init>(Lcom/google/api/client/http/HttpResponseException$Builder;Lcom/google/api/client/googleapis/json/GoogleJsonError;)V

    return-object v4
.end method


# virtual methods
.method public final getDetails()Lcom/google/api/client/googleapis/json/GoogleJsonError;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;->details:Lcom/google/api/client/googleapis/json/GoogleJsonError;

    return-object v0
.end method
