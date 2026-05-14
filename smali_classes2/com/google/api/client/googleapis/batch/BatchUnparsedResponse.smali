.class final Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;
.super Ljava/lang/Object;
.source "BatchUnparsedResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpResponse;,
        Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeLowLevelHttpRequest;,
        Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeResponseHttpTransport;
    }
.end annotation


# instance fields
.field private final boundary:Ljava/lang/String;

.field private contentId:I

.field hasNext:Z

.field private final inputStream:Ljava/io/InputStream;

.field private final requestInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final retryAllowed:Z

.field unsuccessfulRequestInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "boundary"    # Ljava/lang/String;
    .param p4, "retryAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<",
            "**>;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    .local p3, "requestInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<**>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->hasNext:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->unsuccessfulRequestInfos:Ljava/util/List;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->contentId:I

    .line 78
    iput-object p2, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->boundary:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->requestInfos:Ljava/util/List;

    .line 80
    iput-boolean p4, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->retryAllowed:Z

    .line 81
    iput-object p1, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->inputStream:Ljava/io/InputStream;

    .line 83
    invoke-direct {p0}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->checkForFinalBoundary(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private checkForFinalBoundary(Ljava/lang/String;)V
    .locals 2
    .param p1, "boundaryLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->hasNext:Z

    .line 299
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 301
    :cond_0
    return-void
.end method

.method private getFakeResponse(ILjava/io/InputStream;Ljava/util/List;Ljava/util/List;)Lcom/google/api/client/http/HttpResponse;
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "partContent"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    .local p3, "headerNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeResponseHttpTransport;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeResponseHttpTransport;-><init>(ILjava/io/InputStream;Ljava/util/List;Ljava/util/List;)V

    .line 231
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$FakeResponseHttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    new-instance v1, Lcom/google/api/client/http/GenericUrl;

    const-string v2, "http://google.com/"

    invoke-direct {v1, v2}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 232
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/HttpRequestFactory;->buildPostRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 233
    .local v0, "request":Lcom/google/api/client/http/HttpRequest;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setLoggingEnabled(Z)Lcom/google/api/client/http/HttpRequest;

    .line 234
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 235
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method private getParsedDataClass(Ljava/lang/Class;Lcom/google/api/client/http/HttpResponse;Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;)Ljava/lang/Object;
    .locals 3
    .param p2, "response"    # Lcom/google/api/client/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;",
            "Lcom/google/api/client/http/HttpResponse;",
            "Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<",
            "TT;TE;>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    .local p3, "requestInfo":Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;, "Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<TT;TE;>;"
    const-class v0, Ljava/lang/Void;

    if-ne p1, v0, :cond_0

    .line 220
    const/4 v0, 0x0

    return-object v0

    .line 222
    :cond_0
    iget-object v0, p3, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getParser()Lcom/google/api/client/util/ObjectParser;

    move-result-object v0

    .line 223
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    .line 222
    invoke-interface {v0, v1, v2, p1}, Lcom/google/api/client/util/ObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private parseAndCallback(Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;ILcom/google/api/client/http/HttpResponse;)V
    .locals 10
    .param p2, "statusCode"    # I
    .param p3, "response"    # Lcom/google/api/client/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<",
            "TT;TE;>;I",
            "Lcom/google/api/client/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    .local p1, "requestInfo":Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;, "Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo<TT;TE;>;"
    iget-object v0, p1, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->callback:Lcom/google/api/client/googleapis/batch/BatchCallback;

    .line 178
    .local v0, "callback":Lcom/google/api/client/googleapis/batch/BatchCallback;, "Lcom/google/api/client/googleapis/batch/BatchCallback<TT;TE;>;"
    invoke-virtual {p3}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    .line 179
    .local v1, "responseHeaders":Lcom/google/api/client/http/HttpHeaders;
    iget-object v2, p1, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->request:Lcom/google/api/client/http/HttpRequest;

    .line 180
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->getUnsuccessfulResponseHandler()Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    move-result-object v2

    .line 182
    .local v2, "unsuccessfulResponseHandler":Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;
    invoke-static {p2}, Lcom/google/api/client/http/HttpStatusCodes;->isSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    if-nez v0, :cond_0

    .line 185
    return-void

    .line 187
    :cond_0
    iget-object v3, p1, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->dataClass:Ljava/lang/Class;

    invoke-direct {p0, v3, p3, p1}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->getParsedDataClass(Ljava/lang/Class;Lcom/google/api/client/http/HttpResponse;Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;)Ljava/lang/Object;

    move-result-object v3

    .line 188
    .local v3, "parsed":Ljava/lang/Object;, "TT;"
    invoke-interface {v0, v3, v1}, Lcom/google/api/client/googleapis/batch/BatchCallback;->onSuccess(Ljava/lang/Object;Lcom/google/api/client/http/HttpHeaders;)V

    .line 189
    .end local v3    # "parsed":Ljava/lang/Object;, "TT;"
    goto :goto_1

    .line 190
    :cond_1
    iget-object v3, p1, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v3}, Lcom/google/api/client/http/HttpRequest;->getContent()Lcom/google/api/client/http/HttpContent;

    move-result-object v3

    .line 191
    .local v3, "content":Lcom/google/api/client/http/HttpContent;
    iget-boolean v4, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->retryAllowed:Z

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 192
    .local v4, "retrySupported":Z
    :goto_0
    const/4 v5, 0x0

    .line 193
    .local v5, "errorHandled":Z
    const/4 v6, 0x0

    .line 194
    .local v6, "redirectRequest":Z
    if-eqz v2, :cond_4

    .line 195
    iget-object v7, p1, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-interface {v2, v7, p3, v4}, Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;->handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z

    move-result v5

    .line 198
    :cond_4
    if-nez v5, :cond_5

    .line 199
    iget-object v7, p1, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {p3}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v8

    invoke-virtual {p3}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/api/client/http/HttpRequest;->handleRedirect(ILcom/google/api/client/http/HttpHeaders;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 200
    const/4 v6, 0x1

    .line 203
    :cond_5
    if-eqz v4, :cond_7

    if-nez v5, :cond_6

    if-eqz v6, :cond_7

    .line 204
    :cond_6
    iget-object v7, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->unsuccessfulRequestInfos:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 206
    :cond_7
    if-nez v0, :cond_8

    .line 208
    return-void

    .line 210
    :cond_8
    iget-object v7, p1, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->errorClass:Ljava/lang/Class;

    invoke-direct {p0, v7, p3, p1}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->getParsedDataClass(Ljava/lang/Class;Lcom/google/api/client/http/HttpResponse;Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;)Ljava/lang/Object;

    move-result-object v7

    .line 211
    .local v7, "parsed":Ljava/lang/Object;, "TE;"
    invoke-interface {v0, v7, v1}, Lcom/google/api/client/googleapis/batch/BatchCallback;->onFailure(Ljava/lang/Object;Lcom/google/api/client/http/HttpHeaders;)V

    .line 214
    .end local v3    # "content":Lcom/google/api/client/http/HttpContent;
    .end local v4    # "retrySupported":Z
    .end local v5    # "errorHandled":Z
    .end local v6    # "redirectRequest":Z
    .end local v7    # "parsed":Ljava/lang/Object;, "TE;"
    :goto_1
    return-void
.end method

.method private readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-direct {p0}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->readRawLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->trimCrlf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readRawLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 245
    .local v0, "b":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 246
    const/4 v1, 0x0

    return-object v1

    .line 248
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v2, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    if-eq v0, v1, :cond_2

    .line 250
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    .line 252
    goto :goto_1

    .line 249
    :cond_1
    iget-object v3, p0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 255
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static trimCrlf([B)Ljava/io/InputStream;
    .locals 3
    .param p0, "bytes"    # [B

    .line 282
    array-length v0, p0

    .line 283
    .local v0, "length":I
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p0, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 284
    add-int/lit8 v0, v0, -0x1

    .line 286
    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, p0, v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 287
    add-int/lit8 v0, v0, -0x1

    .line 289
    :cond_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v1
.end method

.method private static trimCrlf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .line 272
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 274
    :cond_0
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 277
    :cond_1
    return-object p0
.end method


# virtual methods
.method parseNextResponse()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->contentId:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->contentId:I

    .line 98
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .local v3, "line":Ljava/lang/String;
    const-string v4, ""

    if-eqz v1, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "statusLine":Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "statusParts":[Ljava/lang/String;
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 110
    .local v6, "statusCode":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v7, "headerNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v8, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v9, -0x1

    .line 113
    .local v9, "contentLength":J
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    if-eqz v11, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 114
    const-string v11, ": "

    const/4 v12, 0x2

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, "headerParts":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v11, v12

    .line 116
    .local v12, "headerName":Ljava/lang/String;
    aget-object v13, v11, v2

    .line 117
    .local v13, "headerValue":Ljava/lang/String;
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v14, "Content-Length"

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 120
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 122
    .end local v11    # "headerParts":[Ljava/lang/String;
    .end local v12    # "headerName":Ljava/lang/String;
    .end local v13    # "headerValue":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 125
    :cond_2
    const-wide/16 v11, -0x1

    cmp-long v4, v9, v11

    if-nez v4, :cond_4

    .line 127
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 128
    .local v4, "buffer":Ljava/io/ByteArrayOutputStream;
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->readRawLine()Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    if-eqz v13, :cond_3

    iget-object v13, v0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->boundary:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 130
    const-string v13, "ISO-8859-1"

    invoke-virtual {v3, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2

    .line 134
    :cond_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-static {v13}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->trimCrlf([B)Ljava/io/InputStream;

    move-result-object v13

    .line 137
    .local v13, "body":Ljava/io/InputStream;
    invoke-static {v3}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->trimCrlf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .end local v4    # "buffer":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 139
    .end local v13    # "body":Ljava/io/InputStream;
    :cond_4
    new-instance v4, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$1;

    iget-object v13, v0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->inputStream:Ljava/io/InputStream;

    invoke-static {v13, v9, v10}, Lcom/google/api/client/util/ByteStreams;->limit(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v4, v0, v13}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse$1;-><init>(Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;Ljava/io/InputStream;)V

    move-object v13, v4

    .line 147
    .restart local v13    # "body":Ljava/io/InputStream;
    :goto_3
    nop

    .line 148
    invoke-direct {v0, v6, v13, v7, v8}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->getFakeResponse(ILjava/io/InputStream;Ljava/util/List;Ljava/util/List;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v4

    .line 150
    .local v4, "response":Lcom/google/api/client/http/HttpResponse;
    iget-object v14, v0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->requestInfos:Ljava/util/List;

    iget v15, v0, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->contentId:I

    sub-int/2addr v15, v2

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;

    invoke-direct {v0, v2, v6, v4}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->parseAndCallback(Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;ILcom/google/api/client/http/HttpResponse;)V

    .line 153
    :cond_5
    :goto_4
    invoke-virtual {v13, v9, v10}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-gtz v2, :cond_5

    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v14, -0x1

    if-eq v2, v14, :cond_6

    goto :goto_4

    .line 156
    :cond_6
    cmp-long v2, v9, v11

    if-eqz v2, :cond_7

    .line 157
    invoke-direct/range {p0 .. p0}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 162
    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_8

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 166
    :cond_8
    invoke-direct {v0, v3}, Lcom/google/api/client/googleapis/batch/BatchUnparsedResponse;->checkForFinalBoundary(Ljava/lang/String;)V

    .line 167
    return-void
.end method
