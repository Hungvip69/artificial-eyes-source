.class public abstract Lcom/google/api/client/http/LowLevelHttpRequest;
.super Ljava/lang/Object;
.source "LowLevelHttpRequest.java"


# instance fields
.field private contentEncoding:Ljava/lang/String;

.field private contentLength:J

.field private contentType:Ljava/lang/String;

.field private streamingContent:Lcom/google/api/client/util/StreamingContent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/api/client/http/LowLevelHttpRequest;->contentLength:J

    return-void
.end method


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract execute()Lcom/google/api/client/http/LowLevelHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/api/client/http/LowLevelHttpRequest;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/google/api/client/http/LowLevelHttpRequest;->contentLength:J

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/api/client/http/LowLevelHttpRequest;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getStreamingContent()Lcom/google/api/client/util/StreamingContent;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/api/client/http/LowLevelHttpRequest;->streamingContent:Lcom/google/api/client/util/StreamingContent;

    return-object v0
.end method

.method public final setContentEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/google/api/client/http/LowLevelHttpRequest;->contentEncoding:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public final setContentLength(J)V
    .locals 0
    .param p1, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iput-wide p1, p0, Lcom/google/api/client/http/LowLevelHttpRequest;->contentLength:J

    .line 67
    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/google/api/client/http/LowLevelHttpRequest;->contentType:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public final setStreamingContent(Lcom/google/api/client/util/StreamingContent;)V
    .locals 0
    .param p1, "streamingContent"    # Lcom/google/api/client/util/StreamingContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/google/api/client/http/LowLevelHttpRequest;->streamingContent:Lcom/google/api/client/util/StreamingContent;

    .line 124
    return-void
.end method

.method public setTimeout(II)V
    .locals 0
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    return-void
.end method

.method public setWriteTimeout(I)V
    .locals 0
    .param p1, "writeTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    return-void
.end method
