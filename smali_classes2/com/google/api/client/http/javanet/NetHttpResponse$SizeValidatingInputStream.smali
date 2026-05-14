.class final Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;
.super Ljava/io/FilterInputStream;
.source "NetHttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/javanet/NetHttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SizeValidatingInputStream"
.end annotation


# instance fields
.field private bytesRead:J

.field final synthetic this$0:Lcom/google/api/client/http/javanet/NetHttpResponse;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/javanet/NetHttpResponse;Ljava/io/InputStream;)V
    .locals 2
    .param p2, "in"    # Ljava/io/InputStream;

    .line 151
    iput-object p1, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->this$0:Lcom/google/api/client/http/javanet/NetHttpResponse;

    .line 152
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->bytesRead:J

    .line 153
    return-void
.end method

.method private throwIfFalseEOF()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->this$0:Lcom/google/api/client/http/javanet/NetHttpResponse;

    invoke-virtual {v0}, Lcom/google/api/client/http/javanet/NetHttpResponse;->getContentLength()J

    move-result-wide v0

    .line 194
    .local v0, "contentLength":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 196
    return-void

    .line 203
    :cond_0
    iget-wide v2, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->bytesRead:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    iget-wide v2, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->bytesRead:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection closed prematurely: bytesRead = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->bytesRead:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Content-Length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 176
    .local v0, "n":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->throwIfFalseEOF()V

    goto :goto_0

    .line 179
    :cond_0
    iget-wide v1, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->bytesRead:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->bytesRead:J

    .line 181
    :goto_0
    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 165
    .local v0, "n":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->throwIfFalseEOF()V

    goto :goto_0

    .line 168
    :cond_0
    iget-wide v1, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->bytesRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->bytesRead:J

    .line 170
    :goto_0
    return v0
.end method

.method public skip(J)J
    .locals 4
    .param p1, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 187
    .local v0, "n":J
    iget-wide v2, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->bytesRead:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/api/client/http/javanet/NetHttpResponse$SizeValidatingInputStream;->bytesRead:J

    .line 188
    return-wide v0
.end method
