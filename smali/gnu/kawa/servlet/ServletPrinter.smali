.class public Lgnu/kawa/servlet/ServletPrinter;
.super Lgnu/kawa/xml/HttpPrinter;
.source "ServletPrinter.java"


# instance fields
.field hctx:Lgnu/kawa/servlet/HttpRequestContext;


# direct methods
.method public constructor <init>(Lgnu/kawa/servlet/HttpRequestContext;I)V
    .locals 1
    .param p1, "hctx"    # Lgnu/kawa/servlet/HttpRequestContext;
    .param p2, "bufSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    new-instance v0, Lgnu/kawa/servlet/HttpOutputStream;

    invoke-direct {v0, p1, p2}, Lgnu/kawa/servlet/HttpOutputStream;-><init>(Lgnu/kawa/servlet/HttpRequestContext;I)V

    invoke-direct {p0, v0}, Lgnu/kawa/xml/HttpPrinter;-><init>(Ljava/io/OutputStream;)V

    .line 21
    iput-object p1, p0, Lgnu/kawa/servlet/ServletPrinter;->hctx:Lgnu/kawa/servlet/HttpRequestContext;

    .line 22
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 26
    const-string v0, "Content-type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iput-object p2, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lgnu/kawa/servlet/ServletPrinter;->hctx:Lgnu/kawa/servlet/HttpRequestContext;

    invoke-virtual {v0, p2}, Lgnu/kawa/servlet/HttpRequestContext;->setContentType(Ljava/lang/String;)V

    goto :goto_2

    .line 31
    :cond_0
    const-string v0, "Status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 33
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 34
    .local v0, "lval":I
    const/4 v1, 0x0

    .line 36
    .local v1, "code":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 38
    if-lt v2, v0, :cond_1

    .line 40
    iget-object v3, p0, Lgnu/kawa/servlet/ServletPrinter;->hctx:Lgnu/kawa/servlet/HttpRequestContext;

    iput v1, v3, Lgnu/kawa/servlet/HttpRequestContext;->statusCode:I

    .line 41
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 44
    .local v3, "ch":C
    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 45
    .local v4, "digit":I
    if-ltz v4, :cond_2

    .line 46
    mul-int/lit8 v5, v1, 0xa

    add-int v1, v5, v4

    .line 36
    .end local v3    # "ch":C
    .end local v4    # "digit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .restart local v3    # "ch":C
    .restart local v4    # "digit":I
    :cond_2
    const/16 v5, 0x20

    if-ne v3, v5, :cond_3

    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    :cond_3
    iget-object v5, p0, Lgnu/kawa/servlet/ServletPrinter;->hctx:Lgnu/kawa/servlet/HttpRequestContext;

    iput v1, v5, Lgnu/kawa/servlet/HttpRequestContext;->statusCode:I

    .line 52
    iget-object v5, p0, Lgnu/kawa/servlet/ServletPrinter;->hctx:Lgnu/kawa/servlet/HttpRequestContext;

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lgnu/kawa/servlet/HttpRequestContext;->statusReasonPhrase:Ljava/lang/String;

    .line 53
    nop

    .line 56
    .end local v0    # "lval":I
    .end local v1    # "code":I
    .end local v2    # "i":I
    .end local v3    # "ch":C
    .end local v4    # "digit":I
    :cond_4
    :goto_1
    goto :goto_2

    .line 58
    :cond_5
    iget-object v0, p0, Lgnu/kawa/servlet/ServletPrinter;->hctx:Lgnu/kawa/servlet/HttpRequestContext;

    invoke-virtual {v0, p1, p2}, Lgnu/kawa/servlet/HttpRequestContext;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_2
    return-void
.end method

.method public printHeaders()V
    .locals 0

    .line 63
    return-void
.end method

.method public reset(Z)Z
    .locals 2
    .param p1, "headersAlso"    # Z

    .line 67
    iget-object v0, p0, Lgnu/kawa/servlet/ServletPrinter;->ostream:Ljava/io/OutputStream;

    check-cast v0, Lgnu/kawa/servlet/HttpOutputStream;

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpOutputStream;->reset()Z

    move-result v0

    invoke-super {p0, p1}, Lgnu/kawa/xml/HttpPrinter;->reset(Z)Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method
