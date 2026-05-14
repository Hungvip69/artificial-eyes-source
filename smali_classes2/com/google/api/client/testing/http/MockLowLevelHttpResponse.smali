.class public Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
.super Lcom/google/api/client/http/LowLevelHttpResponse;
.source "MockLowLevelHttpResponse.java"


# instance fields
.field private content:Ljava/io/InputStream;

.field private contentEncoding:Ljava/lang/String;

.field private contentLength:J

.field private contentType:Ljava/lang/String;

.field private headerNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private headerValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isDisconnected:Z

.field private reasonPhrase:Ljava/lang/String;

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/google/api/client/http/LowLevelHttpResponse;-><init>()V

    .line 46
    const/16 v0, 0xc8

    iput v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->statusCode:I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerNames:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerValues:Ljava/util/List;

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->contentLength:J

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerNames:Ljava/util/List;

    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerValues:Ljava/util/List;

    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    return-object p0
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->isDisconnected:Z

    .line 287
    invoke-super {p0}, Lcom/google/api/client/http/LowLevelHttpResponse;->disconnect()V

    .line 288
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 134
    iget-wide v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->contentLength:J

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 149
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getHeaderNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerNames:Ljava/util/List;

    return-object v0
.end method

.method public getHeaderValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 154
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getHeaderValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerValues:Ljava/util/List;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->statusCode:I

    return v0
.end method

.method public getStatusLine()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->reasonPhrase:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->reasonPhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isDisconnected()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->isDisconnected:Z

    return v0
.end method

.method public setContent(Ljava/io/InputStream;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 0
    .param p1, "content"    # Ljava/io/InputStream;

    .line 225
    iput-object p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->content:Ljava/io/InputStream;

    .line 226
    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 1
    .param p1, "stringContent"    # Ljava/lang/String;

    .line 87
    if-nez p1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->setZeroContent()Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p1}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->setContent([B)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0
.end method

.method public setContent([B)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 2
    .param p1, "byteContent"    # [B

    .line 102
    if-nez p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->setZeroContent()Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Lcom/google/api/client/testing/util/TestableByteArrayInputStream;

    invoke-direct {v0, p1}, Lcom/google/api/client/testing/util/TestableByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->content:Ljava/io/InputStream;

    .line 106
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->setContentLength(J)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    .line 107
    return-object p0
.end method

.method public setContentEncoding(Ljava/lang/String;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 0
    .param p1, "contentEncoding"    # Ljava/lang/String;

    .line 245
    iput-object p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->contentEncoding:Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public setContentLength(J)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 3
    .param p1, "contentLength"    # J

    .line 257
    iput-wide p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->contentLength:J

    .line 258
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 259
    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .line 235
    iput-object p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->contentType:Ljava/lang/String;

    .line 236
    return-object p0
.end method

.method public setHeaderNames(Ljava/util/List;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;"
        }
    .end annotation

    .line 194
    .local p1, "headerNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerNames:Ljava/util/List;

    .line 195
    return-object p0
.end method

.method public setHeaderValues(Ljava/util/List;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;"
        }
    .end annotation

    .line 215
    .local p1, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->headerValues:Ljava/util/List;

    .line 216
    return-object p0
.end method

.method public setReasonPhrase(Ljava/lang/String;)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 0
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    .line 280
    iput-object p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->reasonPhrase:Ljava/lang/String;

    .line 281
    return-object p0
.end method

.method public setStatusCode(I)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 0
    .param p1, "statusCode"    # I

    .line 270
    iput p1, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->statusCode:I

    .line 271
    return-object p0
.end method

.method public setZeroContent()Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;
    .locals 2

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->content:Ljava/io/InputStream;

    .line 118
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;->setContentLength(J)Lcom/google/api/client/testing/http/MockLowLevelHttpResponse;

    .line 119
    return-object p0
.end method
