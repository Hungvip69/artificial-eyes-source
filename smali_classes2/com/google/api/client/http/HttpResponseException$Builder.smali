.class public Lcom/google/api/client/http/HttpResponseException$Builder;
.super Ljava/lang/Object;
.source "HttpResponseException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/HttpResponseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field content:Ljava/lang/String;

.field headers:Lcom/google/api/client/http/HttpHeaders;

.field message:Ljava/lang/String;

.field statusCode:I

.field statusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/api/client/http/HttpHeaders;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "statusMessage"    # Ljava/lang/String;
    .param p3, "headers"    # Lcom/google/api/client/http/HttpHeaders;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/HttpResponseException$Builder;->setStatusCode(I)Lcom/google/api/client/http/HttpResponseException$Builder;

    .line 155
    invoke-virtual {p0, p2}, Lcom/google/api/client/http/HttpResponseException$Builder;->setStatusMessage(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$Builder;

    .line 156
    invoke-virtual {p0, p3}, Lcom/google/api/client/http/HttpResponseException$Builder;->setHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/HttpResponseException$Builder;

    .line 157
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/google/api/client/http/HttpResponse;

    .line 161
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/api/client/http/HttpResponseException$Builder;-><init>(ILjava/lang/String;Lcom/google/api/client/http/HttpHeaders;)V

    .line 164
    :try_start_0
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->content:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->content:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "exception":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 168
    .end local v0    # "exception":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 170
    .local v0, "exception":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 173
    .end local v0    # "exception":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 175
    :goto_1
    invoke-static {p1}, Lcom/google/api/client/http/HttpResponseException;->computeMessageBuffer(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->content:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 177
    sget-object v1, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->message:Ljava/lang/String;

    .line 180
    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/client/http/HttpResponseException;
    .locals 1

    .line 265
    new-instance v0, Lcom/google/api/client/http/HttpResponseException;

    invoke-direct {v0, p0}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponseException$Builder;)V

    return-object v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->headers:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->statusCode:I

    return v0
.end method

.method public final getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$Builder;
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 259
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->content:Ljava/lang/String;

    .line 260
    return-object p0
.end method

.method public setHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/HttpResponseException$Builder;
    .locals 1
    .param p1, "headers"    # Lcom/google/api/client/http/HttpHeaders;

    .line 243
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/HttpHeaders;

    iput-object v0, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 244
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 194
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->message:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public setStatusCode(I)Lcom/google/api/client/http/HttpResponseException$Builder;
    .locals 1
    .param p1, "statusCode"    # I

    .line 210
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 211
    iput p1, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->statusCode:I

    .line 212
    return-object p0
.end method

.method public setStatusMessage(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$Builder;
    .locals 0
    .param p1, "statusMessage"    # Ljava/lang/String;

    .line 227
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->statusMessage:Ljava/lang/String;

    .line 228
    return-object p0
.end method
