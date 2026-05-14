.class public Lcom/google/api/client/http/GenericUrl;
.super Lcom/google/api/client/util/GenericData;
.source "GenericUrl.java"


# static fields
.field private static final URI_FRAGMENT_ESCAPER:Lcom/google/api/client/util/escape/Escaper;


# instance fields
.field private fragment:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private pathParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private port:I

.field private scheme:Ljava/lang/String;

.field private userInfo:Ljava/lang/String;

.field private verbatim:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    const-string v1, "=&-_.!~*\'()@:$,;/?:"

    invoke-direct {v0, v1}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/http/GenericUrl;->URI_FRAGMENT_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/api/client/http/GenericUrl;->port:I

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "encodedUrl"    # Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;Z)V

    .line 109
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "fragment"    # Ljava/lang/String;
    .param p6, "query"    # Ljava/lang/String;
    .param p7, "userInfo"    # Ljava/lang/String;
    .param p8, "verbatim"    # Z

    .line 195
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/api/client/http/GenericUrl;->port:I

    .line 196
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/GenericUrl;->scheme:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lcom/google/api/client/http/GenericUrl;->host:Ljava/lang/String;

    .line 198
    iput p3, p0, Lcom/google/api/client/http/GenericUrl;->port:I

    .line 199
    invoke-static {p4, p8}, Lcom/google/api/client/http/GenericUrl;->toPathParts(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    .line 200
    iput-boolean p8, p0, Lcom/google/api/client/http/GenericUrl;->verbatim:Z

    .line 201
    if-eqz p8, :cond_1

    .line 202
    iput-object p5, p0, Lcom/google/api/client/http/GenericUrl;->fragment:Ljava/lang/String;

    .line 203
    if-eqz p6, :cond_0

    .line 204
    const/4 v0, 0x0

    invoke-static {p6, p0, v0}, Lcom/google/api/client/http/UrlEncodedParser;->parse(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 206
    :cond_0
    iput-object p7, p0, Lcom/google/api/client/http/GenericUrl;->userInfo:Ljava/lang/String;

    goto :goto_1

    .line 208
    :cond_1
    const/4 v0, 0x0

    if-eqz p5, :cond_2

    invoke-static {p5}, Lcom/google/api/client/util/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/google/api/client/http/GenericUrl;->fragment:Ljava/lang/String;

    .line 209
    if-eqz p6, :cond_3

    .line 210
    invoke-static {p6, p0}, Lcom/google/api/client/http/UrlEncodedParser;->parse(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    :cond_3
    if-eqz p7, :cond_4

    invoke-static {p7}, Lcom/google/api/client/util/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/google/api/client/http/GenericUrl;->userInfo:Ljava/lang/String;

    .line 214
    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "encodedUrl"    # Ljava/lang/String;
    .param p2, "verbatim"    # Z

    .line 125
    invoke-static {p1}, Lcom/google/api/client/http/GenericUrl;->parseURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/net/URL;Z)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/net/URI;Z)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Z)V
    .locals 9
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "verbatim"    # Z

    .line 146
    nop

    .line 147
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v3

    .line 150
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v6

    .line 153
    invoke-virtual {p1}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v7

    .line 146
    move-object v0, p0

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/net/URL;Z)V

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Z)V
    .locals 9
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "verbatim"    # Z

    .line 176
    nop

    .line 177
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v3

    .line 180
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    .line 176
    move-object v0, p0

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    return-void
.end method

.method static addQueryParams(Ljava/util/Set;Ljava/lang/StringBuilder;Z)V
    .locals 8
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "verbatim"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/StringBuilder;",
            "Z)V"
        }
    .end annotation

    .line 614
    .local p0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v0, 0x1

    .line 615
    .local v0, "first":Z
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 616
    .local v2, "nameValueEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 617
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 618
    if-eqz p2, :cond_0

    .line 620
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    .line 621
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUriQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    nop

    .line 622
    .local v4, "name":Ljava/lang/String;
    instance-of v5, v3, Ljava/util/Collection;

    if-eqz v5, :cond_2

    .line 623
    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    .line 624
    .local v5, "collectionValue":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 625
    .local v7, "repeatedValue":Ljava/lang/Object;
    invoke-static {v0, p1, v4, v7, p2}, Lcom/google/api/client/http/GenericUrl;->appendParam(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    .line 626
    .end local v7    # "repeatedValue":Ljava/lang/Object;
    goto :goto_2

    .line 627
    .end local v5    # "collectionValue":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_1
    goto :goto_3

    .line 628
    :cond_2
    invoke-static {v0, p1, v4, v3, p2}, Lcom/google/api/client/http/GenericUrl;->appendParam(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    .line 631
    .end local v2    # "nameValueEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    :goto_3
    goto :goto_0

    .line 632
    :cond_4
    return-void
.end method

.method private static appendParam(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)Z
    .locals 2
    .param p0, "first"    # Z
    .param p1, "buf"    # Ljava/lang/StringBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "verbatim"    # Z

    .line 636
    if-eqz p0, :cond_0

    .line 637
    const/4 p0, 0x0

    .line 638
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 640
    :cond_0
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 642
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    if-eqz p4, :cond_1

    .line 644
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUriQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "stringValue":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 646
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :cond_2
    return p0
.end method

.method private appendRawPathFromParts(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "buf"    # Ljava/lang/StringBuilder;

    .line 598
    iget-object v0, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 599
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 600
    iget-object v2, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 601
    .local v2, "pathPart":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 602
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 604
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 605
    iget-boolean v3, p0, Lcom/google/api/client/http/GenericUrl;->verbatim:Z

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .end local v2    # "pathPart":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private static parseURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p0, "encodedUrl"    # Ljava/lang/String;

    .line 677
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 678
    :catch_0
    move-exception v0

    .line 679
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toPathParts(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "encodedPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 561
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/api/client/http/GenericUrl;->toPathParts(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static toPathParts(Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .param p0, "encodedPath"    # Ljava/lang/String;
    .param p1, "verbatim"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 576
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 579
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 581
    .local v1, "cur":I
    const/4 v2, 0x1

    .line 582
    .local v2, "notDone":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 583
    const/16 v3, 0x2f

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 584
    .local v3, "slash":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move v2, v4

    .line 586
    if-eqz v2, :cond_2

    .line 587
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "sub":Ljava/lang/String;
    goto :goto_2

    .line 589
    .end local v4    # "sub":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 591
    .restart local v4    # "sub":Ljava/lang/String;
    :goto_2
    if-eqz p1, :cond_3

    move-object v5, v4

    goto :goto_3

    :cond_3
    invoke-static {v4}, Lcom/google/api/client/util/escape/CharEscapers;->decodeUriPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    add-int/lit8 v1, v3, 0x1

    .line 593
    .end local v3    # "slash":I
    .end local v4    # "sub":Ljava/lang/String;
    goto :goto_0

    .line 594
    :cond_4
    return-object v0

    .line 577
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "cur":I
    .end local v2    # "notDone":Z
    :cond_5
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private static toURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 2
    .param p0, "encodedUrl"    # Ljava/lang/String;

    .line 661
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public appendRawPath(Ljava/lang/String;)V
    .locals 7
    .param p1, "encodedPath"    # Ljava/lang/String;

    .line 540
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 541
    iget-boolean v0, p0, Lcom/google/api/client/http/GenericUrl;->verbatim:Z

    invoke-static {p1, v0}, Lcom/google/api/client/http/GenericUrl;->toPathParts(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 542
    .local v0, "appendedPathParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 546
    .local v1, "size":I
    iget-object v2, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 547
    iget-object v2, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 543
    .end local v1    # "size":I
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    .line 550
    .end local v0    # "appendedPathParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    return-void
.end method

.method public final build()Ljava/lang/String;
    .locals 2

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/api/client/http/GenericUrl;->buildAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/http/GenericUrl;->buildRelativeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final buildAuthority()Ljava/lang/String;
    .locals 3

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/api/client/http/GenericUrl;->scheme:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    iget-object v1, p0, Lcom/google/api/client/http/GenericUrl;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 392
    iget-boolean v1, p0, Lcom/google/api/client/http/GenericUrl;->verbatim:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/api/client/http/GenericUrl;->userInfo:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/api/client/http/GenericUrl;->userInfo:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUriUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/google/api/client/http/GenericUrl;->host:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    iget v1, p0, Lcom/google/api/client/http/GenericUrl;->port:I

    .line 396
    .local v1, "port":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 397
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final buildRelativeUrl()Ljava/lang/String;
    .locals 4

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 414
    invoke-direct {p0, v0}, Lcom/google/api/client/http/GenericUrl;->appendRawPathFromParts(Ljava/lang/StringBuilder;)V

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/http/GenericUrl;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/api/client/http/GenericUrl;->verbatim:Z

    invoke-static {v1, v0, v2}, Lcom/google/api/client/http/GenericUrl;->addQueryParams(Ljava/util/Set;Ljava/lang/StringBuilder;Z)V

    .line 419
    iget-object v1, p0, Lcom/google/api/client/http/GenericUrl;->fragment:Ljava/lang/String;

    .line 420
    .local v1, "fragment":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 421
    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/api/client/http/GenericUrl;->verbatim:Z

    if-eqz v3, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/api/client/http/GenericUrl;->URI_FRAGMENT_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    invoke-virtual {v3, v1}, Lcom/google/api/client/util/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public clone()Lcom/google/api/client/http/GenericUrl;
    .locals 3

    .line 240
    invoke-super {p0}, Lcom/google/api/client/util/GenericData;->clone()Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/GenericUrl;

    .line 241
    .local v0, "result":Lcom/google/api/client/http/GenericUrl;
    iget-object v1, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    .line 244
    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/google/api/client/http/GenericUrl;->clone()Lcom/google/api/client/http/GenericUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/google/api/client/http/GenericUrl;->clone()Lcom/google/api/client/http/GenericUrl;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 223
    if-ne p0, p1, :cond_0

    .line 224
    const/4 v0, 0x1

    return v0

    .line 226
    :cond_0
    invoke-super {p0, p1}, Lcom/google/api/client/util/GenericData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/google/api/client/http/GenericUrl;

    if-nez v0, :cond_1

    goto :goto_0

    .line 229
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/api/client/http/GenericUrl;

    .line 230
    .local v0, "other":Lcom/google/api/client/http/GenericUrl;
    invoke-virtual {p0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 227
    .end local v0    # "other":Lcom/google/api/client/http/GenericUrl;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 492
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/GenericUrl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 493
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 494
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 496
    :cond_0
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 498
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    .line 499
    .local v1, "collectionValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    return-object v2

    .line 501
    .end local v1    # "collectionValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 475
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/GenericUrl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 476
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 478
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    .line 479
    .local v1, "collectionValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 480
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 482
    .end local v1    # "collectionValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_1
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/google/api/client/http/GenericUrl;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/api/client/http/GenericUrl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPathParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/google/api/client/http/GenericUrl;->port:I

    return v0
.end method

.method public getRawPath()Ljava/lang/String;
    .locals 3

    .line 511
    iget-object v0, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    .line 512
    .local v0, "pathParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 513
    const/4 v1, 0x0

    return-object v1

    .line 515
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-direct {p0, v1}, Lcom/google/api/client/http/GenericUrl;->appendRawPathFromParts(Ljava/lang/StringBuilder;)V

    .line 517
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final getScheme()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/google/api/client/http/GenericUrl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserInfo()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/api/client/http/GenericUrl;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/GenericUrl;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 249
    invoke-super {p0, p1, p2}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/GenericUrl;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/http/GenericUrl;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/GenericUrl;

    move-result-object p1

    return-object p1
.end method

.method public final setFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/String;

    .line 366
    iput-object p1, p0, Lcom/google/api/client/http/GenericUrl;->fragment:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public final setHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .line 285
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/GenericUrl;->host:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setPathParts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 348
    .local p1, "pathParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    .line 349
    return-void
.end method

.method public final setPort(I)V
    .locals 2
    .param p1, "port"    # I

    .line 321
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "expected port >= -1"

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 322
    iput p1, p0, Lcom/google/api/client/http/GenericUrl;->port:I

    .line 323
    return-void
.end method

.method public setRawPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "encodedPath"    # Ljava/lang/String;

    .line 526
    iget-boolean v0, p0, Lcom/google/api/client/http/GenericUrl;->verbatim:Z

    invoke-static {p1, v0}, Lcom/google/api/client/http/GenericUrl;->toPathParts(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/GenericUrl;->pathParts:Ljava/util/List;

    .line 527
    return-void
.end method

.method public final setScheme(Ljava/lang/String;)V
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;

    .line 267
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/GenericUrl;->scheme:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public final setUserInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "userInfo"    # Ljava/lang/String;

    .line 303
    iput-object p1, p0, Lcom/google/api/client/http/GenericUrl;->userInfo:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toURI()Ljava/net/URI;
    .locals 1

    .line 435
    invoke-virtual {p0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/http/GenericUrl;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public final toURL()Ljava/net/URL;
    .locals 1

    .line 447
    invoke-virtual {p0}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/http/GenericUrl;->parseURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final toURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p1, "relativeUrl"    # Ljava/lang/String;

    .line 461
    :try_start_0
    invoke-virtual {p0}, Lcom/google/api/client/http/GenericUrl;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 462
    .local v0, "url":Ljava/net/URL;
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 463
    .end local v0    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
