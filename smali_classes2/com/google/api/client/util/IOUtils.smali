.class public Lcom/google/api/client/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeLength(Lcom/google/api/client/util/StreamingContent;)J
    .locals 3
    .param p0, "content"    # Lcom/google/api/client/util/StreamingContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/google/api/client/util/ByteCountingOutputStream;

    invoke-direct {v0}, Lcom/google/api/client/util/ByteCountingOutputStream;-><init>()V

    .line 104
    .local v0, "countingStream":Lcom/google/api/client/util/ByteCountingOutputStream;
    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/api/client/util/StreamingContent;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v0}, Lcom/google/api/client/util/ByteCountingOutputStream;->close()V

    .line 107
    nop

    .line 108
    iget-wide v1, v0, Lcom/google/api/client/util/ByteCountingOutputStream;->count:J

    return-wide v1

    .line 106
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/api/client/util/ByteCountingOutputStream;->close()V

    .line 107
    throw v1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/api/client/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 60
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "closeInputStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/api/client/util/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 93
    :cond_0
    return-void

    .line 89
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_1

    .line 90
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 92
    :cond_1
    throw v0
.end method

.method public static deserialize(Ljava/io/InputStream;)Ljava/io/Serializable;
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/io/InputStream;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 162
    return-object v0

    .line 168
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "exception":Ljava/lang/ClassNotFoundException;
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to deserialize object"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 166
    nop

    .end local p0    # "inputStream":Ljava/io/InputStream;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .end local v0    # "exception":Ljava/lang/ClassNotFoundException;
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local p0    # "inputStream":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 169
    throw v0
.end method

.method public static deserialize([B)Ljava/io/Serializable;
    .locals 1
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/io/Serializable;",
            ">([B)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    if-nez p0, :cond_0

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/google/api/client/util/IOUtils;->deserialize(Ljava/io/InputStream;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public static isSymbolicLink(Ljava/io/File;)Z
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "java.nio.file.Files"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 182
    .local v2, "filesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "java.nio.file.Path"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 183
    .local v3, "pathClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/io/File;

    const-string v5, "toPath"

    new-array v6, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 184
    .local v4, "path":Ljava/lang/Object;
    const-string v5, "isSymbolicLink"

    new-array v6, v0, [Ljava/lang/Class;

    aput-object v3, v6, v1

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v4, v6, v1

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 185
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    return v0

    .line 199
    .end local v2    # "filesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "pathClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "path":Ljava/lang/Object;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 197
    :catch_1
    move-exception v2

    goto :goto_0

    .line 195
    :catch_2
    move-exception v2

    goto :goto_0

    .line 193
    :catch_3
    move-exception v2

    goto :goto_0

    .line 191
    :catch_4
    move-exception v2

    .line 201
    :goto_0
    nop

    .line 204
    :goto_1
    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    .line 205
    return v1

    .line 207
    :cond_0
    move-object v1, p0

    .line 208
    .local v1, "canonical":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 209
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 211
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v0, v2

    return v0

    .line 186
    .end local v1    # "canonical":Ljava/io/File;
    :catch_5
    move-exception v0

    .line 187
    .local v0, "exception":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 188
    .local v1, "cause":Ljava/lang/Throwable;
    const-class v2, Ljava/io/IOException;

    invoke-static {v1, v2}, Lcom/google/api/client/util/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 190
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static serialize(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 135
    nop

    .line 136
    return-void

    .line 134
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 135
    throw v0
.end method

.method public static serialize(Ljava/lang/Object;)[B
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 119
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/google/api/client/util/IOUtils;->serialize(Ljava/lang/Object;Ljava/io/OutputStream;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
