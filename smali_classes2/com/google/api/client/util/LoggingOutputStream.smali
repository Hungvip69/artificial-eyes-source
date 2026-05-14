.class public Lcom/google/api/client/util/LoggingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LoggingOutputStream.java"


# instance fields
.field private final logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "logger"    # Ljava/util/logging/Logger;
    .param p3, "loggingLevel"    # Ljava/util/logging/Level;
    .param p4, "contentLoggingLimit"    # I

    .line 44
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 45
    new-instance v0, Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    iput-object v0, p0, Lcom/google/api/client/util/LoggingOutputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    .line 46
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/api/client/util/LoggingOutputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->close()V

    .line 63
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 64
    return-void
.end method

.method public final getLogStream()Lcom/google/api/client/util/LoggingByteArrayOutputStream;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/api/client/util/LoggingOutputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    return-object v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/api/client/util/LoggingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 51
    iget-object v0, p0, Lcom/google/api/client/util/LoggingOutputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->write(I)V

    .line 52
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/api/client/util/LoggingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 57
    iget-object v0, p0, Lcom/google/api/client/util/LoggingOutputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->write([BII)V

    .line 58
    return-void
.end method
