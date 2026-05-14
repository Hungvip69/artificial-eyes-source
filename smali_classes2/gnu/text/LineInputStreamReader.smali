.class public Lgnu/text/LineInputStreamReader;
.super Lgnu/text/LineBufferedReader;
.source "LineInputStreamReader.java"


# instance fields
.field barr:[B

.field bbuf:Ljava/nio/ByteBuffer;

.field carr:[C

.field cbuf:Ljava/nio/CharBuffer;

.field cset:Ljava/nio/charset/Charset;

.field decoder:Ljava/nio/charset/CharsetDecoder;

.field istrm:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 62
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/io/Reader;

    invoke-direct {p0, v0}, Lgnu/text/LineBufferedReader;-><init>(Ljava/io/Reader;)V

    .line 23
    const/16 v1, 0x2000

    new-array v1, v1, [B

    iput-object v1, p0, Lgnu/text/LineInputStreamReader;->barr:[B

    .line 26
    iput-object v0, p0, Lgnu/text/LineInputStreamReader;->cbuf:Ljava/nio/CharBuffer;

    .line 64
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->barr:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    .line 65
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->barr:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    iput-object p1, p0, Lgnu/text/LineInputStreamReader;->istrm:Ljava/io/InputStream;

    .line 70
    return-void
.end method

.method private fillBytes(I)I
    .locals 3
    .param p1, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->istrm:Ljava/io/InputStream;

    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->barr:[B

    iget-object v2, p0, Lgnu/text/LineInputStreamReader;->barr:[B

    array-length v2, v2

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 83
    .local v0, "n":I
    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 85
    return v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->in:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 76
    :cond_0
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->istrm:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 77
    return-void
.end method

.method public fill(I)I
    .locals 5
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->cset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 126
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->buffer:[C

    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->carr:[C

    if-eq v0, v1, :cond_1

    .line 129
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->buffer:[C

    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lgnu/text/LineInputStreamReader;->cbuf:Ljava/nio/CharBuffer;

    .line 130
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->buffer:[C

    iput-object v0, p0, Lgnu/text/LineInputStreamReader;->carr:[C

    .line 132
    :cond_1
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->cbuf:Ljava/nio/CharBuffer;

    iget v1, p0, Lgnu/text/LineInputStreamReader;->pos:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 133
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->cbuf:Ljava/nio/CharBuffer;

    iget v1, p0, Lgnu/text/LineInputStreamReader;->pos:I

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    const/4 v0, 0x0

    .line 138
    .local v0, "eof":Z
    :goto_0
    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lgnu/text/LineInputStreamReader;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 139
    .local v1, "cres":Ljava/nio/charset/CoderResult;
    iget-object v2, p0, Lgnu/text/LineInputStreamReader;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    iget v3, p0, Lgnu/text/LineInputStreamReader;->pos:I

    sub-int/2addr v2, v3

    .line 140
    .local v2, "count":I
    if-gtz v2, :cond_5

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-nez v3, :cond_2

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    iget-object v3, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 143
    .local v3, "rem":I
    if-lez v3, :cond_3

    .line 145
    iget-object v4, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 147
    :cond_3
    invoke-direct {p0, v3}, Lgnu/text/LineInputStreamReader;->fillBytes(I)I

    move-result v4

    .line 148
    .local v4, "n":I
    if-gez v4, :cond_4

    .line 150
    const/4 v0, 0x1

    .line 151
    goto :goto_1

    .line 153
    .end local v1    # "cres":Ljava/nio/charset/CoderResult;
    .end local v3    # "rem":I
    .end local v4    # "n":I
    :cond_4
    goto :goto_0

    .line 154
    :cond_5
    :goto_1
    if-nez v2, :cond_6

    if-eqz v0, :cond_6

    const/4 v1, -0x1

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1
.end method

.method public getByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/text/LineInputStreamReader;->fillBytes(I)I

    move-result v0

    .line 113
    .local v0, "n":I
    if-gtz v0, :cond_0

    .line 114
    const/4 v1, -0x1

    return v1

    .line 116
    .end local v0    # "n":I
    :cond_0
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public markStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    return-void
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget v0, p0, Lgnu/text/LineInputStreamReader;->pos:I

    iget v1, p0, Lgnu/text/LineInputStreamReader;->limit:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->istrm:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public resetStart(I)V
    .locals 1
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->bbuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 41
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 42
    .local v0, "cset":Ljava/nio/charset/Charset;
    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->cset:Ljava/nio/charset/Charset;

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {p0, v0}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/nio/charset/Charset;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->cset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    :goto_0
    return-void

    .line 45
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match previous "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgnu/text/LineInputStreamReader;->cset:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "cset"    # Ljava/nio/charset/Charset;

    .line 33
    iput-object p1, p0, Lgnu/text/LineInputStreamReader;->cset:Ljava/nio/charset/Charset;

    .line 34
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lgnu/text/LineInputStreamReader;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 35
    return-void
.end method
