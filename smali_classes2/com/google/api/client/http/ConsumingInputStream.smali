.class final Lcom/google/api/client/http/ConsumingInputStream;
.super Ljava/io/FilterInputStream;
.source "ConsumingInputStream.java"


# instance fields
.field private closed:Z


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 33
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/api/client/http/ConsumingInputStream;->closed:Z

    .line 34
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-boolean v0, p0, Lcom/google/api/client/http/ConsumingInputStream;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/api/client/http/ConsumingInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->exhaust(Ljava/io/InputStream;)J

    .line 41
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iput-boolean v0, p0, Lcom/google/api/client/http/ConsumingInputStream;->closed:Z

    .line 44
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/google/api/client/http/ConsumingInputStream;->closed:Z

    .line 44
    throw v1

    .line 46
    :cond_0
    :goto_0
    return-void
.end method
