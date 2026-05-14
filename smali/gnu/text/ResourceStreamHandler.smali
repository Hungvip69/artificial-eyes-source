.class public Lgnu/text/ResourceStreamHandler;
.super Ljava/net/URLStreamHandler;
.source "ResourceStreamHandler.java"


# static fields
.field public static final CLASS_RESOURCE_URI_PREFIX:Ljava/lang/String; = "class-resource:/"

.field public static final CLASS_RESOURCE_URI_PREFIX_LENGTH:I = 0x10


# instance fields
.field cloader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "cloader"    # Ljava/lang/ClassLoader;

    .line 32
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    .line 33
    iput-object p1, p0, Lgnu/text/ResourceStreamHandler;->cloader:Ljava/lang/ClassLoader;

    .line 34
    return-void
.end method

.method public static makeURL(Ljava/lang/Class;)Ljava/net/URL;
    .locals 8
    .param p0, "clas"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "cname":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 42
    .local v1, "dot":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .local v2, "sbuf":Ljava/lang/StringBuilder;
    const-string v3, "class-resource:/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    if-ltz v1, :cond_0

    .line 49
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 56
    .local v4, "loader":Ljava/lang/ClassLoader;
    new-instance v5, Ljava/net/URL;

    new-instance v6, Lgnu/text/ResourceStreamHandler;

    invoke-direct {v6, v4}, Lgnu/text/ResourceStreamHandler;-><init>(Ljava/lang/ClassLoader;)V

    const/4 v7, 0x0

    invoke-direct {v5, v7, v3, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    return-object v5
.end method


# virtual methods
.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 7
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "ustr":Ljava/lang/String;
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "rstr":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 64
    .local v3, "sl":I
    if-lez v3, :cond_0

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_0
    iget-object v2, p0, Lgnu/text/ResourceStreamHandler;->cloader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 67
    .local v2, "url":Ljava/net/URL;
    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    return-object v4

    .line 68
    :cond_1
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
