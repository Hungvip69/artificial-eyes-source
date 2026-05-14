.class public Lgnu/kawa/sax/ContentConsumer;
.super Ljava/lang/Object;
.source "ContentConsumer.java"

# interfaces
.implements Lgnu/lists/Consumer;


# instance fields
.field attrLocalName:Ljava/lang/String;

.field attrQName:Ljava/lang/String;

.field attrURI:Ljava/lang/String;

.field attributes:Lorg/xml/sax/helpers/AttributesImpl;

.field chBuffer:[C

.field inStartTag:I

.field names:[Ljava/lang/String;

.field nesting:I

.field out:Lorg/xml/sax/ContentHandler;

.field strBuffer:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lgnu/kawa/sax/ContentConsumer;->nesting:I

    .line 20
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    .line 22
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 2
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lgnu/kawa/sax/ContentConsumer;->nesting:I

    .line 20
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    .line 22
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    .line 38
    iput-object p1, p0, Lgnu/kawa/sax/ContentConsumer;->out:Lorg/xml/sax/ContentHandler;

    .line 39
    return-void
.end method


# virtual methods
.method public append(C)Lgnu/kawa/sax/ContentConsumer;
    .locals 0
    .param p1, "c"    # C

    .line 250
    invoke-virtual {p0, p1}, Lgnu/kawa/sax/ContentConsumer;->write(I)V

    .line 251
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/kawa/sax/ContentConsumer;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 255
    if-nez p1, :cond_0

    .line 256
    const-string p1, "null"

    .line 257
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/kawa/sax/ContentConsumer;->write(Ljava/lang/CharSequence;II)V

    .line 258
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/kawa/sax/ContentConsumer;
    .locals 0
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 262
    if-nez p1, :cond_0

    .line 263
    const-string p1, "null"

    .line 264
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/sax/ContentConsumer;->write(Ljava/lang/CharSequence;II)V

    .line 265
    return-object p0
.end method

.method public bridge synthetic append(C)Lgnu/lists/Consumer;
    .locals 1
    .param p1, "x0"    # C

    .line 15
    invoke-virtual {p0, p1}, Lgnu/kawa/sax/ContentConsumer;->append(C)Lgnu/kawa/sax/ContentConsumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {p0, p1}, Lgnu/kawa/sax/ContentConsumer;->append(Ljava/lang/CharSequence;)Lgnu/kawa/sax/ContentConsumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/sax/ContentConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/kawa/sax/ContentConsumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Lgnu/kawa/sax/ContentConsumer;->append(C)Lgnu/kawa/sax/ContentConsumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Lgnu/kawa/sax/ContentConsumer;->append(Ljava/lang/CharSequence;)Lgnu/kawa/sax/ContentConsumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/sax/ContentConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/kawa/sax/ContentConsumer;

    move-result-object v0

    return-object v0
.end method

.method public endAttribute()V
    .locals 6

    .line 110
    iget-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    iget-object v1, p0, Lgnu/kawa/sax/ContentConsumer;->attrURI:Ljava/lang/String;

    iget-object v2, p0, Lgnu/kawa/sax/ContentConsumer;->attrLocalName:Ljava/lang/String;

    iget-object v3, p0, Lgnu/kawa/sax/ContentConsumer;->attrQName:Ljava/lang/String;

    iget-object v4, p0, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "CDATA"

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    .line 114
    return-void
.end method

.method public endDocument()V
    .locals 2

    .line 132
    :try_start_0
    iget-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->out:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "ex":Lorg/xml/sax/SAXException;
    const-string v1, "endDocument"

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/sax/ContentConsumer;->error(Ljava/lang/String;Lorg/xml/sax/SAXException;)V

    .line 138
    .end local v0    # "ex":Lorg/xml/sax/SAXException;
    :goto_0
    return-void
.end method

.method public endElement()V
    .locals 6

    .line 142
    invoke-virtual {p0}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 143
    invoke-virtual {p0}, Lgnu/kawa/sax/ContentConsumer;->flushStrBuffer()V

    .line 144
    iget v0, p0, Lgnu/kawa/sax/ContentConsumer;->nesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgnu/kawa/sax/ContentConsumer;->nesting:I

    .line 145
    iget v0, p0, Lgnu/kawa/sax/ContentConsumer;->nesting:I

    mul-int/lit8 v0, v0, 0x3

    .line 148
    .local v0, "i":I
    :try_start_0
    iget-object v1, p0, Lgnu/kawa/sax/ContentConsumer;->out:Lorg/xml/sax/ContentHandler;

    iget-object v2, p0, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    add-int/lit8 v5, v0, 0x2

    aget-object v4, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 152
    .local v1, "ex":Lorg/xml/sax/SAXException;
    const-string v2, "endElement"

    invoke-virtual {p0, v2, v1}, Lgnu/kawa/sax/ContentConsumer;->error(Ljava/lang/String;Lorg/xml/sax/SAXException;)V

    .line 154
    .end local v1    # "ex":Lorg/xml/sax/SAXException;
    :goto_0
    iget-object v1, p0, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 155
    iget-object v1, p0, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aput-object v2, v1, v3

    .line 156
    iget-object v1, p0, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aput-object v2, v1, v3

    .line 157
    return-void
.end method

.method public endStartTag()V
    .locals 6

    .line 48
    iget v0, p0, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 49
    return-void

    .line 50
    :cond_0
    iget v0, p0, Lgnu/kawa/sax/ContentConsumer;->nesting:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    .line 53
    .local v0, "i":I
    :try_start_0
    iget-object v1, p0, Lgnu/kawa/sax/ContentConsumer;->out:Lorg/xml/sax/ContentHandler;

    iget-object v2, p0, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    add-int/lit8 v5, v0, 0x2

    aget-object v4, v4, v5

    iget-object v5, p0, Lgnu/kawa/sax/ContentConsumer;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 57
    .local v1, "ex":Lorg/xml/sax/SAXException;
    const-string v2, "startElement"

    invoke-virtual {p0, v2, v1}, Lgnu/kawa/sax/ContentConsumer;->error(Ljava/lang/String;Lorg/xml/sax/SAXException;)V

    .line 59
    .end local v1    # "ex":Lorg/xml/sax/SAXException;
    :goto_0
    iget-object v1, p0, Lgnu/kawa/sax/ContentConsumer;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v1}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    .line 61
    return-void
.end method

.method public error(Ljava/lang/String;Lorg/xml/sax/SAXException;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "ex"    # Lorg/xml/sax/SAXException;

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finalize()V
    .locals 0

    .line 327
    invoke-virtual {p0}, Lgnu/kawa/sax/ContentConsumer;->flushStrBuffer()V

    .line 328
    return-void
.end method

.method flushStrBuffer()V
    .locals 7

    .line 161
    iget-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 163
    iget-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->chBuffer:[C

    if-nez v0, :cond_0

    .line 164
    const/16 v0, 0xc8

    new-array v0, v0, [C

    iput-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->chBuffer:[C

    .line 167
    :cond_0
    :try_start_0
    iget-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 168
    .local v0, "slen":I
    const/4 v1, 0x0

    .line 171
    .local v1, "start":I
    :goto_0
    sub-int v2, v0, v1

    .line 172
    .local v2, "len":I
    const/4 v3, 0x0

    if-gtz v2, :cond_1

    .line 173
    nop

    .line 180
    .end local v2    # "len":I
    iget-object v2, p0, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 185
    .end local v0    # "slen":I
    .end local v1    # "start":I
    goto :goto_1

    .line 174
    .restart local v0    # "slen":I
    .restart local v1    # "start":I
    .restart local v2    # "len":I
    :cond_1
    iget-object v4, p0, Lgnu/kawa/sax/ContentConsumer;->chBuffer:[C

    array-length v4, v4

    if-le v2, v4, :cond_2

    .line 175
    iget-object v4, p0, Lgnu/kawa/sax/ContentConsumer;->chBuffer:[C

    array-length v4, v4

    move v2, v4

    .line 176
    :cond_2
    iget-object v4, p0, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    add-int v5, v1, v2

    iget-object v6, p0, Lgnu/kawa/sax/ContentConsumer;->chBuffer:[C

    invoke-virtual {v4, v1, v5, v6, v1}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 177
    iget-object v4, p0, Lgnu/kawa/sax/ContentConsumer;->out:Lorg/xml/sax/ContentHandler;

    iget-object v5, p0, Lgnu/kawa/sax/ContentConsumer;->chBuffer:[C

    invoke-interface {v4, v5, v3, v2}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    add-int/2addr v1, v2

    .line 179
    .end local v2    # "len":I
    goto :goto_0

    .line 182
    .end local v0    # "slen":I
    .end local v1    # "start":I
    :catch_0
    move-exception v0

    .line 184
    .local v0, "ex":Lorg/xml/sax/SAXException;
    const-string v1, "characters"

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/sax/ContentConsumer;->error(Ljava/lang/String;Lorg/xml/sax/SAXException;)V

    .line 187
    .end local v0    # "ex":Lorg/xml/sax/SAXException;
    :cond_3
    :goto_1
    return-void
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .line 342
    iget-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->out:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public ignoring()Z
    .locals 1

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .line 337
    iput-object p1, p0, Lgnu/kawa/sax/ContentConsumer;->out:Lorg/xml/sax/ContentHandler;

    .line 338
    return-void
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 1
    .param p1, "attrType"    # Ljava/lang/Object;

    .line 102
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->attrURI:Ljava/lang/String;

    .line 103
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->attrLocalName:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->attrQName:Ljava/lang/String;

    .line 105
    const/4 v0, 0x2

    iput v0, p0, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    .line 106
    return-void
.end method

.method public startDocument()V
    .locals 2

    .line 120
    :try_start_0
    iget-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->out:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, "ex":Lorg/xml/sax/SAXException;
    const-string v1, "startDocument"

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/sax/ContentConsumer;->error(Ljava/lang/String;Lorg/xml/sax/SAXException;)V

    .line 126
    .end local v0    # "ex":Lorg/xml/sax/SAXException;
    :goto_0
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/Object;

    .line 65
    iget v0, p0, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/sax/ContentConsumer;->flushStrBuffer()V

    .line 68
    iget v0, p0, Lgnu/kawa/sax/ContentConsumer;->nesting:I

    mul-int/lit8 v0, v0, 0x3

    .line 69
    .local v0, "i":I
    iget-object v2, p0, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 71
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 72
    .local v2, "tmp":[Ljava/lang/String;
    iget-object v3, p0, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iput-object v2, p0, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    .line 76
    .end local v2    # "tmp":[Ljava/lang/String;
    :cond_1
    instance-of v2, p1, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_2

    .line 78
    move-object v2, p1

    check-cast v2, Lgnu/mapping/Symbol;

    .line 79
    .local v2, "sym":Lgnu/mapping/Symbol;
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "namespaceURI":Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "localName":Ljava/lang/String;
    goto :goto_0

    .line 82
    .end local v2    # "localName":Ljava/lang/String;
    .end local v3    # "namespaceURI":Ljava/lang/String;
    :cond_2
    instance-of v2, p1, Lgnu/xml/XName;

    if-eqz v2, :cond_3

    .line 84
    move-object v2, p1

    check-cast v2, Lgnu/xml/XName;

    .line 85
    .local v2, "sym":Lgnu/xml/XName;
    invoke-virtual {v2}, Lgnu/xml/XName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 86
    .restart local v3    # "namespaceURI":Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/xml/XName;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "localName":Ljava/lang/String;
    goto :goto_0

    .line 90
    .end local v2    # "localName":Ljava/lang/String;
    .end local v3    # "namespaceURI":Ljava/lang/String;
    :cond_3
    const-string v3, ""

    .line 91
    .restart local v3    # "namespaceURI":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .restart local v2    # "localName":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    aput-object v3, v4, v0

    .line 94
    iget-object v4, p0, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    aput-object v2, v4, v5

    .line 95
    iget-object v4, p0, Lgnu/kawa/sax/ContentConsumer;->names:[Ljava/lang/String;

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 96
    iput v1, p0, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    .line 97
    iget v4, p0, Lgnu/kawa/sax/ContentConsumer;->nesting:I

    add-int/2addr v4, v1

    iput v4, p0, Lgnu/kawa/sax/ContentConsumer;->nesting:I

    .line 98
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "v"    # I

    .line 211
    iget v0, p0, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 212
    invoke-virtual {p0}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 213
    :cond_0
    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_1

    .line 215
    iget-object v1, p0, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    sub-int v0, p1, v0

    shr-int/lit8 v0, v0, 0xa

    const v2, 0xd800

    add-int/2addr v0, v2

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    and-int/lit16 v0, p1, 0x3ff

    const v1, 0xdc00

    add-int p1, v0, v1

    .line 218
    :cond_1
    iget-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 2
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 234
    iget v0, p0, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 238
    :cond_0
    iget-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 245
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/String;

    .line 223
    iget v0, p0, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 225
    :cond_0
    iget-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    return-void
.end method

.method public write([CII)V
    .locals 2
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 191
    iget v0, p0, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 193
    :cond_0
    iget v0, p0, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 194
    iget-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0}, Lgnu/kawa/sax/ContentConsumer;->flushStrBuffer()V

    .line 200
    :try_start_0
    iget-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->out:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, "ex":Lorg/xml/sax/SAXException;
    const-string v1, "characters"

    invoke-virtual {p0, v1, v0}, Lgnu/kawa/sax/ContentConsumer;->error(Ljava/lang/String;Lorg/xml/sax/SAXException;)V

    .line 207
    .end local v0    # "ex":Lorg/xml/sax/SAXException;
    :goto_0
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 2
    .param p1, "v"    # Z

    .line 287
    iget v0, p0, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 288
    invoke-virtual {p0}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 290
    :cond_0
    iget-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 291
    return-void
.end method

.method public writeDouble(D)V
    .locals 2
    .param p1, "v"    # D

    .line 319
    iget v0, p0, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 320
    invoke-virtual {p0}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 322
    :cond_0
    iget-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 323
    return-void
.end method

.method public writeFloat(F)V
    .locals 2
    .param p1, "v"    # F

    .line 311
    iget v0, p0, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 312
    invoke-virtual {p0}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 314
    :cond_0
    iget-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 315
    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .param p1, "v"    # I

    .line 303
    iget v0, p0, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 304
    invoke-virtual {p0}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 306
    :cond_0
    iget-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    return-void
.end method

.method public writeLong(J)V
    .locals 2
    .param p1, "v"    # J

    .line 295
    iget v0, p0, Lgnu/kawa/sax/ContentConsumer;->inStartTag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lgnu/kawa/sax/ContentConsumer;->endStartTag()V

    .line 298
    :cond_0
    iget-object v0, p0, Lgnu/kawa/sax/ContentConsumer;->strBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 299
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/Object;

    .line 272
    instance-of v0, p1, Lgnu/lists/Consumable;

    if-eqz v0, :cond_0

    .line 273
    move-object v0, p1

    check-cast v0, Lgnu/lists/Consumable;

    invoke-interface {v0, p0}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto :goto_1

    .line 274
    :cond_0
    instance-of v0, p1, Lgnu/lists/SeqPosition;

    if-eqz v0, :cond_1

    .line 276
    move-object v0, p1

    check-cast v0, Lgnu/lists/SeqPosition;

    .line 277
    .local v0, "pos":Lgnu/lists/SeqPosition;
    iget-object v1, v0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v2, v0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v1, v2, p0}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    .line 278
    .end local v0    # "pos":Lgnu/lists/SeqPosition;
    goto :goto_1

    .line 279
    :cond_1
    instance-of v0, p1, Lgnu/text/Char;

    if-eqz v0, :cond_2

    .line 280
    move-object v0, p1

    check-cast v0, Lgnu/text/Char;

    invoke-virtual {v0, p0}, Lgnu/text/Char;->print(Lgnu/lists/Consumer;)V

    goto :goto_1

    .line 282
    :cond_2
    if-nez p1, :cond_3

    const-string v0, "(null)"

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/kawa/sax/ContentConsumer;->write(Ljava/lang/String;)V

    .line 283
    :goto_1
    return-void
.end method
