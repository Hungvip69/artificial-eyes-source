.class public Lcom/google/api/client/http/UrlEncodedContent;
.super Lcom/google/api/client/http/AbstractHttpContent;
.source "UrlEncodedContent.java"


# instance fields
.field private data:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/google/api/client/http/UrlEncodedParser;->MEDIA_TYPE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/AbstractHttpContent;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/UrlEncodedContent;->setData(Ljava/lang/Object;)Lcom/google/api/client/http/UrlEncodedContent;

    .line 57
    return-void
.end method

.method private static appendParam(ZLjava/io/Writer;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "first"    # Z
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    if-eqz p3, :cond_4

    invoke-static {p3}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 135
    :cond_0
    if-eqz p0, :cond_1

    .line 136
    const/4 p0, 0x0

    goto :goto_0

    .line 138
    :cond_1
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 140
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 141
    instance-of v0, p3, Ljava/lang/Enum;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Ljava/lang/Enum;

    .line 143
    invoke-static {v0}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/Enum;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_1
    invoke-static {v0}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "stringValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 148
    :cond_3
    return p0

    .line 132
    .end local v0    # "stringValue":Ljava/lang/String;
    :cond_4
    :goto_2
    return p0
.end method

.method public static getContent(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/UrlEncodedContent;
    .locals 3
    .param p0, "request"    # Lcom/google/api/client/http/HttpRequest;

    .line 119
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpRequest;->getContent()Lcom/google/api/client/http/HttpContent;

    move-result-object v0

    .line 120
    .local v0, "content":Lcom/google/api/client/http/HttpContent;
    if-eqz v0, :cond_0

    .line 121
    move-object v1, v0

    check-cast v1, Lcom/google/api/client/http/UrlEncodedContent;

    return-object v1

    .line 123
    :cond_0
    new-instance v1, Lcom/google/api/client/http/UrlEncodedContent;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v1, v2}, Lcom/google/api/client/http/UrlEncodedContent;-><init>(Ljava/lang/Object;)V

    .line 124
    .local v1, "result":Lcom/google/api/client/http/UrlEncodedContent;
    invoke-virtual {p0, v1}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 125
    return-object v1
.end method


# virtual methods
.method public final getData()Ljava/lang/Object;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/api/client/http/UrlEncodedContent;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)Lcom/google/api/client/http/UrlEncodedContent;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .line 103
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/UrlEncodedContent;->data:Ljava/lang/Object;

    .line 104
    return-object p0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/UrlEncodedContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/UrlEncodedContent;

    move-result-object p1

    return-object p1
.end method

.method public setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/UrlEncodedContent;
    .locals 0
    .param p1, "mediaType"    # Lcom/google/api/client/http/HttpMediaType;

    .line 81
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;

    .line 82
    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lcom/google/api/client/http/UrlEncodedContent;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 61
    .local v0, "writer":Ljava/io/Writer;
    const/4 v1, 0x1

    .line 62
    .local v1, "first":Z
    iget-object v2, p0, Lcom/google/api/client/http/UrlEncodedContent;->data:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 63
    .local v3, "nameValueEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 64
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_3

    .line 65
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 67
    .local v6, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    instance-of v7, v4, Ljava/lang/Iterable;

    if-nez v7, :cond_1

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    invoke-static {v1, v0, v5, v4}, Lcom/google/api/client/http/UrlEncodedContent;->appendParam(ZLjava/io/Writer;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3

    .line 68
    :cond_1
    :goto_1
    invoke-static {v4}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 69
    .local v8, "repeatedValue":Ljava/lang/Object;
    invoke-static {v1, v0, v5, v8}, Lcom/google/api/client/http/UrlEncodedContent;->appendParam(ZLjava/io/Writer;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    .line 70
    .end local v8    # "repeatedValue":Ljava/lang/Object;
    goto :goto_2

    :cond_2
    nop

    .line 75
    .end local v3    # "nameValueEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_3
    :goto_3
    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 77
    return-void
.end method
