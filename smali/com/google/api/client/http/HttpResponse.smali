.class public final Lcom/google/api/client/http/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# static fields
.field private static final CONTENT_ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final CONTENT_ENCODING_XGZIP:Ljava/lang/String; = "x-gzip"


# instance fields
.field private content:Ljava/io/InputStream;

.field private final contentEncoding:Ljava/lang/String;

.field private contentLoggingLimit:I

.field private contentRead:Z

.field private final contentType:Ljava/lang/String;

.field private loggingEnabled:Z

.field private final mediaType:Lcom/google/api/client/http/HttpMediaType;

.field private final request:Lcom/google/api/client/http/HttpRequest;

.field response:Lcom/google/api/client/http/LowLevelHttpResponse;

.field private final returnRawInputStream:Z

.field private final statusCode:I

.field private final statusMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/LowLevelHttpResponse;)V
    .locals 7
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .param p2, "response"    # Lcom/google/api/client/http/LowLevelHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    .line 116
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getResponseReturnRawInputStream()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/api/client/http/HttpResponse;->returnRawInputStream:Z

    .line 117
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getContentLoggingLimit()I

    move-result v0

    iput v0, p0, Lcom/google/api/client/http/HttpResponse;->contentLoggingLimit:I

    .line 118
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->isLoggingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/api/client/http/HttpResponse;->loggingEnabled:Z

    .line 119
    iput-object p2, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    .line 120
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpResponse;->contentEncoding:Ljava/lang/String;

    .line 121
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getStatusCode()I

    move-result v0

    .line 122
    .local v0, "code":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput v2, p0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    .line 123
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "message":Ljava/lang/String;
    iput-object v2, p0, Lcom/google/api/client/http/HttpResponse;->statusMessage:Ljava/lang/String;

    .line 125
    sget-object v3, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 126
    .local v3, "logger":Ljava/util/logging/Logger;
    iget-boolean v4, p0, Lcom/google/api/client/http/HttpResponse;->loggingEnabled:Z

    if-eqz v4, :cond_1

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 127
    .local v1, "loggable":Z
    :cond_1
    const/4 v4, 0x0

    .line 128
    .local v4, "logbuf":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_4

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v5

    .line 130
    const-string v5, "-------------- RESPONSE --------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getStatusLine()Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "statusLine":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 135
    :cond_2
    iget v6, p0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    if-eqz v2, :cond_3

    .line 137
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_3
    :goto_1
    sget-object v6, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .end local v5    # "statusLine":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v5

    if-eqz v1, :cond_5

    move-object v6, v4

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5, p2, v6}, Lcom/google/api/client/http/HttpHeaders;->fromHttpResponse(Lcom/google/api/client/http/LowLevelHttpResponse;Ljava/lang/StringBuilder;)V

    .line 148
    invoke-virtual {p2}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "contentType":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 150
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/client/http/HttpHeaders;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 152
    :cond_6
    iput-object v5, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    .line 153
    invoke-static {v5}, Lcom/google/api/client/http/HttpResponse;->parseMediaType(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    move-result-object v6

    iput-object v6, p0, Lcom/google/api/client/http/HttpResponse;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    .line 156
    if-eqz v1, :cond_7

    .line 157
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 159
    :cond_7
    return-void
.end method

.method private hasMessageBody()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    .line 458
    .local v0, "statusCode":I
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    div-int/lit8 v1, v0, 0x64

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x130

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 465
    :cond_0
    return v2

    .line 462
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 463
    const/4 v1, 0x0

    return v1
.end method

.method private static parseMediaType(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;
    .locals 2
    .param p0, "contentType"    # Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 167
    return-object v0

    .line 170
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/api/client/http/HttpMediaType;

    invoke-direct {v1, p0}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 171
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return-object v0
.end method


# virtual methods
.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 434
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    invoke-virtual {v0}, Lcom/google/api/client/http/LowLevelHttpResponse;->disconnect()V

    .line 435
    return-void
.end method

.method public download(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 415
    .local v0, "inputStream":Ljava/io/InputStream;
    invoke-static {v0, p1}, Lcom/google/api/client/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 416
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpResponse;->contentRead:Z

    if-nez v0, :cond_5

    .line 346
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->response:Lcom/google/api/client/http/LowLevelHttpResponse;

    invoke-virtual {v0}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 347
    .local v0, "lowLevelResponseContent":Ljava/io/InputStream;
    if-eqz v0, :cond_4

    .line 350
    const/4 v1, 0x0

    .line 353
    .local v1, "contentProcessed":Z
    :try_start_0
    iget-boolean v2, p0, Lcom/google/api/client/http/HttpResponse;->returnRawInputStream:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/api/client/http/HttpResponse;->contentEncoding:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 354
    iget-object v2, p0, Lcom/google/api/client/http/HttpResponse;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, "oontentencoding":Ljava/lang/String;
    const-string v3, "gzip"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "x-gzip"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    :cond_0
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v4, Lcom/google/api/client/http/ConsumingInputStream;

    invoke-direct {v4, v0}, Lcom/google/api/client/http/ConsumingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v3

    .line 366
    .end local v2    # "oontentencoding":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 367
    .local v2, "logger":Ljava/util/logging/Logger;
    iget-boolean v3, p0, Lcom/google/api/client/http/HttpResponse;->loggingEnabled:Z

    if-eqz v3, :cond_2

    sget-object v3, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 368
    new-instance v3, Lcom/google/api/client/util/LoggingInputStream;

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    iget v5, p0, Lcom/google/api/client/http/HttpResponse;->contentLoggingLimit:I

    invoke-direct {v3, v0, v2, v4, v5}, Lcom/google/api/client/util/LoggingInputStream;-><init>(Ljava/io/InputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    move-object v0, v3

    .line 372
    :cond_2
    iput-object v0, p0, Lcom/google/api/client/http/HttpResponse;->content:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    const/4 v1, 0x1

    .line 378
    .end local v2    # "logger":Ljava/util/logging/Logger;
    if-nez v1, :cond_4

    .line 379
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    .line 378
    :catchall_0
    move-exception v2

    if-nez v1, :cond_3

    .line 379
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 381
    :cond_3
    throw v2

    .line 374
    :catch_0
    move-exception v2

    .line 378
    if-nez v1, :cond_4

    .line 379
    goto :goto_0

    .line 383
    .end local v1    # "contentProcessed":Z
    :cond_4
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/api/client/http/HttpResponse;->contentRead:Z

    .line 385
    .end local v0    # "lowLevelResponseContent":Ljava/io/InputStream;
    :cond_5
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->getCharsetParameter()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    .line 515
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->getCharsetParameter()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1

    .line 513
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/api/client/util/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    :goto_1
    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLoggingLimit()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/google/api/client/http/HttpResponse;->contentLoggingLimit:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lcom/google/api/client/http/HttpHeaders;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public getMediaType()Lcom/google/api/client/http/HttpMediaType;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->mediaType:Lcom/google/api/client/http/HttpMediaType;

    return-object v0
.end method

.method public getRequest()Lcom/google/api/client/http/HttpRequest;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTransport()Lcom/google/api/client/http/HttpTransport;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    return-object v0
.end method

.method public ignore()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 421
    .local v0, "content":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 424
    :cond_0
    return-void
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpResponse;->loggingEnabled:Z

    return v0
.end method

.method public isSuccessStatusCode()Z
    .locals 1

    .line 283
    iget v0, p0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    invoke-static {v0}, Lcom/google/api/client/http/HttpStatusCodes;->isSuccess(I)Z

    move-result v0

    return v0
.end method

.method public parseAs(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/google/api/client/http/HttpResponse;->hasMessageBody()Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x0

    return-object v0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getParser()Lcom/google/api/client/util/ObjectParser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/google/api/client/util/ObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .param p1, "dataType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    invoke-direct {p0}, Lcom/google/api/client/http/HttpResponse;->hasMessageBody()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    const/4 v0, 0x0

    return-object v0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponse;->request:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getParser()Lcom/google/api/client/util/ObjectParser;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/google/api/client/util/ObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseAsString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 498
    .local v0, "content":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 499
    const-string v1, ""

    return-object v1

    .line 501
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 502
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, v1}, Lcom/google/api/client/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 503
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setContentLoggingLimit(I)Lcom/google/api/client/http/HttpResponse;
    .locals 2
    .param p1, "contentLoggingLimit"    # I

    .line 210
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The content logging limit must be non-negative."

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 212
    iput p1, p0, Lcom/google/api/client/http/HttpResponse;->contentLoggingLimit:I

    .line 213
    return-object p0
.end method

.method public setLoggingEnabled(Z)Lcom/google/api/client/http/HttpResponse;
    .locals 0
    .param p1, "loggingEnabled"    # Z

    .line 235
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpResponse;->loggingEnabled:Z

    .line 236
    return-object p0
.end method
