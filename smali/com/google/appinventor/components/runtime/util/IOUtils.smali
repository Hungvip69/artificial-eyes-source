.class public final Lcom/google/appinventor/components/runtime/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final BUFFER_LENGTH:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "closeable"    # Ljava/io/Closeable;

    .line 25
    if-eqz p1, :cond_0

    .line 26
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Failed to close resource"

    invoke-static {p0, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 30
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    nop

    .line 31
    :goto_1
    return-void
.end method

.method public static mkdirs(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 116
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create directory for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_1
    :goto_0
    return-void
.end method

.method public static normalizeNewLines(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 103
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readReader(Ljava/io/InputStreamReader;)Ljava/lang/String;
    .locals 4
    .param p0, "reader"    # Ljava/io/InputStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x1000

    new-array v1, v1, [C

    .line 87
    .local v1, "buffer":[C
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v2

    move v3, v2

    .local v3, "read":I
    if-lez v2, :cond_0

    .line 88
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "fis"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 42
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 44
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "read":I
    if-lez v2, :cond_0

    .line 45
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "fis"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/IOUtils;->readStreamAsString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readStreamAsString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fis"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/IOUtils;->readStream(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
