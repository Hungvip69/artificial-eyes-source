.class public Lcom/google/api/client/http/MultipartContent;
.super Lcom/google/api/client/http/AbstractHttpContent;
.source "MultipartContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/MultipartContent$Part;
    }
.end annotation


# static fields
.field static final NEWLINE:Ljava/lang/String; = "\r\n"

.field private static final TWO_DASHES:Ljava/lang/String; = "--"


# instance fields
.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/api/client/http/MultipartContent$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__END_OF_PART__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/http/MultipartContent;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "boundary"    # Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    const-string v1, "multipart/related"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    const-string v1, "boundary"

    invoke-virtual {v0, v1, p1}, Lcom/google/api/client/http/HttpMediaType;->setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/http/AbstractHttpContent;-><init>(Lcom/google/api/client/http/HttpMediaType;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/MultipartContent;->parts:Ljava/util/ArrayList;

    .line 59
    return-void
.end method


# virtual methods
.method public addPart(Lcom/google/api/client/http/MultipartContent$Part;)Lcom/google/api/client/http/MultipartContent;
    .locals 2
    .param p1, "part"    # Lcom/google/api/client/http/MultipartContent$Part;

    .line 149
    iget-object v0, p0, Lcom/google/api/client/http/MultipartContent;->parts:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    return-object p0
.end method

.method public final getBoundary()Ljava/lang/String;
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/google/api/client/http/MultipartContent;->getMediaType()Lcom/google/api/client/http/HttpMediaType;

    move-result-object v0

    const-string v1, "boundary"

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpMediaType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getParts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/api/client/http/MultipartContent$Part;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/google/api/client/http/MultipartContent;->parts:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public retrySupported()Z
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/google/api/client/http/MultipartContent;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/http/MultipartContent$Part;

    .line 124
    .local v1, "part":Lcom/google/api/client/http/MultipartContent$Part;
    iget-object v2, v1, Lcom/google/api/client/http/MultipartContent$Part;->content:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v2}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    const/4 v0, 0x0

    return v0

    .line 127
    .end local v1    # "part":Lcom/google/api/client/http/MultipartContent$Part;
    :cond_0
    goto :goto_0

    .line 128
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setBoundary(Ljava/lang/String;)Lcom/google/api/client/http/MultipartContent;
    .locals 3
    .param p1, "boundary"    # Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lcom/google/api/client/http/MultipartContent;->getMediaType()Lcom/google/api/client/http/HttpMediaType;

    move-result-object v0

    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "boundary"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/http/HttpMediaType;->setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    .line 194
    return-object p0
.end method

.method public setContentParts(Ljava/util/Collection;)Lcom/google/api/client/http/MultipartContent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/api/client/http/HttpContent;",
            ">;)",
            "Lcom/google/api/client/http/MultipartContent;"
        }
    .end annotation

    .line 172
    .local p1, "contentParts":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/api/client/http/HttpContent;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/api/client/http/MultipartContent;->parts:Ljava/util/ArrayList;

    .line 173
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/http/HttpContent;

    .line 174
    .local v1, "contentPart":Lcom/google/api/client/http/HttpContent;
    new-instance v2, Lcom/google/api/client/http/MultipartContent$Part;

    invoke-direct {v2, v1}, Lcom/google/api/client/http/MultipartContent$Part;-><init>(Lcom/google/api/client/http/HttpContent;)V

    invoke-virtual {p0, v2}, Lcom/google/api/client/http/MultipartContent;->addPart(Lcom/google/api/client/http/MultipartContent$Part;)Lcom/google/api/client/http/MultipartContent;

    .line 175
    .end local v1    # "contentPart":Lcom/google/api/client/http/HttpContent;
    goto :goto_0

    .line 176
    :cond_0
    return-object p0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/MultipartContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/MultipartContent;

    move-result-object p1

    return-object p1
.end method

.method public setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/MultipartContent;
    .locals 0
    .param p1, "mediaType"    # Lcom/google/api/client/http/HttpMediaType;

    .line 133
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;

    .line 134
    return-object p0
.end method

.method public setParts(Ljava/util/Collection;)Lcom/google/api/client/http/MultipartContent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/api/client/http/MultipartContent$Part;",
            ">;)",
            "Lcom/google/api/client/http/MultipartContent;"
        }
    .end annotation

    .line 160
    .local p1, "parts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/api/client/http/MultipartContent$Part;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/api/client/http/MultipartContent;->parts:Ljava/util/ArrayList;

    .line 161
    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 18
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    move-object/from16 v0, p1

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/http/MultipartContent;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 63
    .local v1, "writer":Ljava/io/Writer;
    invoke-virtual/range {p0 .. p0}, Lcom/google/api/client/http/MultipartContent;->getBoundary()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "boundary":Ljava/lang/String;
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/google/api/client/http/MultipartContent;->parts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "--"

    const-string v7, "\r\n"

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/client/http/MultipartContent$Part;

    .line 65
    .local v5, "part":Lcom/google/api/client/http/MultipartContent$Part;
    new-instance v8, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v8}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/api/client/http/HttpHeaders;->setAcceptEncoding(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v8

    .line 66
    .local v8, "headers":Lcom/google/api/client/http/HttpHeaders;
    iget-object v10, v5, Lcom/google/api/client/http/MultipartContent$Part;->headers:Lcom/google/api/client/http/HttpHeaders;

    if-eqz v10, :cond_0

    .line 67
    iget-object v10, v5, Lcom/google/api/client/http/MultipartContent$Part;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v8, v10}, Lcom/google/api/client/http/HttpHeaders;->fromHttpHeaders(Lcom/google/api/client/http/HttpHeaders;)V

    .line 69
    :cond_0
    nop

    .line 70
    invoke-virtual {v8, v9}, Lcom/google/api/client/http/HttpHeaders;->setContentEncoding(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v10

    .line 71
    invoke-virtual {v10, v9}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v10

    .line 72
    invoke-virtual {v10, v9}, Lcom/google/api/client/http/HttpHeaders;->setContentType(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v10

    .line 73
    invoke-virtual {v10, v9}, Lcom/google/api/client/http/HttpHeaders;->setContentLength(Ljava/lang/Long;)Lcom/google/api/client/http/HttpHeaders;

    move-result-object v10

    .line 74
    const-string v11, "Content-Transfer-Encoding"

    invoke-virtual {v10, v11, v9}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 76
    iget-object v10, v5, Lcom/google/api/client/http/MultipartContent$Part;->content:Lcom/google/api/client/http/HttpContent;

    .line 77
    .local v10, "content":Lcom/google/api/client/http/HttpContent;
    const/4 v12, 0x0

    .line 78
    .local v12, "streamingContent":Lcom/google/api/client/util/StreamingContent;
    if-eqz v10, :cond_2

    .line 79
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const-string v14, "binary"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v8, v11, v13}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 80
    invoke-interface {v10}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/api/client/http/HttpHeaders;->setContentType(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 81
    iget-object v11, v5, Lcom/google/api/client/http/MultipartContent$Part;->encoding:Lcom/google/api/client/http/HttpEncoding;

    .line 83
    .local v11, "encoding":Lcom/google/api/client/http/HttpEncoding;
    if-nez v11, :cond_1

    .line 84
    invoke-interface {v10}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v13

    .line 85
    .local v13, "contentLength":J
    move-object v12, v10

    goto :goto_1

    .line 87
    .end local v13    # "contentLength":J
    :cond_1
    invoke-interface {v11}, Lcom/google/api/client/http/HttpEncoding;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/api/client/http/HttpHeaders;->setContentEncoding(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 88
    new-instance v13, Lcom/google/api/client/http/HttpEncodingStreamingContent;

    invoke-direct {v13, v10, v11}, Lcom/google/api/client/http/HttpEncodingStreamingContent;-><init>(Lcom/google/api/client/util/StreamingContent;Lcom/google/api/client/http/HttpEncoding;)V

    move-object v12, v13

    .line 89
    invoke-static {v10}, Lcom/google/api/client/http/AbstractHttpContent;->computeLength(Lcom/google/api/client/http/HttpContent;)J

    move-result-wide v13

    .line 91
    .restart local v13    # "contentLength":J
    :goto_1
    const-wide/16 v15, -0x1

    cmp-long v17, v13, v15

    if-eqz v17, :cond_2

    .line 92
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/google/api/client/http/HttpHeaders;->setContentLength(Ljava/lang/Long;)Lcom/google/api/client/http/HttpHeaders;

    .line 98
    .end local v11    # "encoding":Lcom/google/api/client/http/HttpEncoding;
    .end local v13    # "contentLength":J
    :cond_2
    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 103
    invoke-static {v8, v9, v9, v1}, Lcom/google/api/client/http/HttpHeaders;->serializeHeadersForMultipartRequests(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Ljava/io/Writer;)V

    .line 104
    if-eqz v12, :cond_3

    .line 105
    invoke-virtual {v1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 108
    invoke-interface {v12, v0}, Lcom/google/api/client/util/StreamingContent;->writeTo(Ljava/io/OutputStream;)V

    .line 111
    :cond_3
    invoke-virtual {v1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 112
    .end local v5    # "part":Lcom/google/api/client/http/MultipartContent$Part;
    .end local v8    # "headers":Lcom/google/api/client/http/HttpHeaders;
    .end local v10    # "content":Lcom/google/api/client/http/HttpContent;
    .end local v12    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    goto/16 :goto_0

    .line 114
    :cond_4
    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 119
    return-void
.end method
