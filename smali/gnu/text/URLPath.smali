.class public Lgnu/text/URLPath;
.super Lgnu/text/URIPath;
.source "URLPath.java"


# instance fields
.field final url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .line 15
    invoke-static {p1}, Lgnu/text/URLPath;->toUri(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {p0, v0}, Lgnu/text/URIPath;-><init>(Ljava/net/URI;)V

    .line 19
    iput-object p1, p0, Lgnu/text/URLPath;->url:Ljava/net/URL;

    .line 20
    return-void
.end method

.method public static classResourcePath(Ljava/lang/Class;)Lgnu/text/URLPath;
    .locals 6
    .param p0, "clas"    # Ljava/lang/Class;

    .line 151
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lgnu/text/ResourceStreamHandler;->makeURL(Ljava/lang/Class;)Ljava/net/URL;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .local v0, "url":Ljava/net/URL;
    goto :goto_0

    .line 163
    .end local v0    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v1

    .restart local v0    # "url":Ljava/net/URL;
    goto :goto_1

    .line 153
    .end local v0    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 159
    .restart local v0    # "url":Ljava/net/URL;
    .local v1, "ex":Ljava/lang/SecurityException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "classFileName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v3

    .line 166
    .end local v1    # "ex":Ljava/lang/SecurityException;
    .end local v2    # "classFileName":Ljava/lang/String;
    :goto_0
    nop

    .line 167
    invoke-static {v0}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v1

    return-object v1

    .line 163
    :catchall_1
    move-exception v1

    .line 165
    .local v1, "ex":Ljava/lang/Throwable;
    :goto_1
    invoke-static {v1}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static getContentLength(Ljava/net/URL;)I
    .locals 2
    .param p0, "url"    # Ljava/net/URL;

    .line 58
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 60
    :catchall_0
    move-exception v0

    .line 62
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v1, -0x1

    return v1
.end method

.method public static getLastModified(Ljava/net/URL;)J
    .locals 3
    .param p0, "url"    # Ljava/net/URL;

    .line 41
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 43
    :catchall_0
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/Throwable;
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public static openInputStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static openOutputStream(Ljava/net/URL;)Ljava/io/OutputStream;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "str":Ljava/lang/String;
    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 127
    :catchall_0
    move-exception v1

    .line 132
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 133
    .local v1, "conn":Ljava/net/URLConnection;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 134
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 135
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    return-object v2
.end method

.method public static toUri(Ljava/net/URL;)Ljava/net/URI;
    .locals 2
    .param p0, "url"    # Ljava/net/URL;

    .line 77
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static valueOf(Ljava/net/URL;)Lgnu/text/URLPath;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;

    .line 24
    new-instance v0, Lgnu/text/URLPath;

    invoke-direct {v0, p0}, Lgnu/text/URLPath;-><init>(Ljava/net/URL;)V

    return-object v0
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .line 51
    iget-object v0, p0, Lgnu/text/URLPath;->url:Ljava/net/URL;

    invoke-static {v0}, Lgnu/text/URLPath;->getContentLength(Ljava/net/URL;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLastModified()J
    .locals 2

    .line 34
    iget-object v0, p0, Lgnu/text/URLPath;->url:Ljava/net/URL;

    invoke-static {v0}, Lgnu/text/URLPath;->getLastModified(Ljava/net/URL;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isAbsolute()Z
    .locals 1

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lgnu/text/URLPath;->url:Ljava/net/URL;

    invoke-static {v0}, Lgnu/text/URLPath;->openInputStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lgnu/text/URLPath;->url:Ljava/net/URL;

    invoke-static {v0}, Lgnu/text/URLPath;->openOutputStream(Ljava/net/URL;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Lgnu/text/Path;
    .locals 2
    .param p1, "relative"    # Ljava/lang/String;

    .line 99
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lgnu/text/URLPath;->url:Ljava/net/URL;

    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-static {v0}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    .line 103
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public toURIString()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lgnu/text/URLPath;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 1

    .line 68
    iget-object v0, p0, Lgnu/text/URLPath;->url:Ljava/net/URL;

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 1

    .line 88
    iget-object v0, p0, Lgnu/text/URLPath;->url:Ljava/net/URL;

    invoke-static {v0}, Lgnu/text/URLPath;->toUri(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
