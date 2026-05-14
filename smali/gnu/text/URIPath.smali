.class public Lgnu/text/URIPath;
.super Lgnu/text/Path;
.source "URIPath.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/text/Path;",
        "Ljava/lang/Comparable<",
        "Lgnu/text/URIPath;",
        ">;"
    }
.end annotation


# instance fields
.field final uri:Ljava/net/URI;


# direct methods
.method constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .line 26
    invoke-direct {p0}, Lgnu/text/Path;-><init>()V

    iput-object p1, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    return-void
.end method

.method public static coerceToURIPathOrNull(Ljava/lang/Object;)Lgnu/text/URIPath;
    .locals 2
    .param p0, "path"    # Ljava/lang/Object;

    .line 34
    instance-of v0, p0, Lgnu/text/URIPath;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p0

    check-cast v0, Lgnu/text/URIPath;

    return-object v0

    .line 36
    :cond_0
    instance-of v0, p0, Ljava/net/URL;

    if-eqz v0, :cond_1

    .line 37
    move-object v0, p0

    check-cast v0, Ljava/net/URL;

    invoke-static {v0}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v0

    return-object v0

    .line 39
    :cond_1
    instance-of v0, p0, Ljava/net/URI;

    if-eqz v0, :cond_2

    .line 40
    move-object v0, p0

    check-cast v0, Ljava/net/URI;

    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v0

    return-object v0

    .line 43
    :cond_2
    instance-of v0, p0, Ljava/io/File;

    if-nez v0, :cond_5

    instance-of v0, p0, Lgnu/text/Path;

    if-nez v0, :cond_5

    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 45
    :cond_3
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 46
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .local v0, "str":Ljava/lang/String;
    goto :goto_1

    .line 48
    .end local v0    # "str":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_5
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .restart local v0    # "str":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v1

    return-object v1
.end method

.method public static encodeForUri(Ljava/lang/String;C)Ljava/lang/String;
    .locals 16
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "mode"    # C

    .line 323
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 324
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 325
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_10

    .line 327
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 329
    .local v4, "ch":I
    const/high16 v6, 0x10000

    const v7, 0xd800

    if-lt v4, v7, :cond_0

    const v8, 0xdc00

    if-ge v4, v8, :cond_0

    if-ge v5, v3, :cond_0

    .line 330
    sub-int v7, v4, v7

    mul-int/lit16 v7, v7, 0x400

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "i":I
    .local v9, "i":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sub-int/2addr v5, v8

    add-int/2addr v7, v5

    add-int v4, v7, v6

    move v5, v9

    .line 332
    .end local v9    # "i":I
    .restart local v5    # "i":I
    :cond_0
    const/16 v7, 0x48

    const/16 v8, 0x25

    const/16 v9, 0x7e

    const/16 v10, 0x41

    if-ne v1, v7, :cond_1

    const/16 v7, 0x20

    if-lt v4, v7, :cond_5

    if-gt v4, v9, :cond_5

    goto/16 :goto_6

    :cond_1
    const/16 v7, 0x61

    if-lt v4, v7, :cond_2

    const/16 v7, 0x7a

    if-le v4, v7, :cond_f

    :cond_2
    if-lt v4, v10, :cond_3

    const/16 v7, 0x5a

    if-le v4, v7, :cond_f

    :cond_3
    const/16 v7, 0x30

    if-lt v4, v7, :cond_4

    const/16 v7, 0x39

    if-le v4, v7, :cond_f

    :cond_4
    const/16 v7, 0x2d

    if-eq v4, v7, :cond_f

    const/16 v7, 0x5f

    if-eq v4, v7, :cond_f

    const/16 v7, 0x2e

    if-eq v4, v7, :cond_f

    if-eq v4, v9, :cond_f

    const/16 v7, 0x49

    if-ne v1, v7, :cond_5

    const/16 v7, 0x3b

    if-eq v4, v7, :cond_f

    const/16 v7, 0x2f

    if-eq v4, v7, :cond_f

    const/16 v7, 0x3f

    if-eq v4, v7, :cond_f

    const/16 v7, 0x3a

    if-eq v4, v7, :cond_f

    const/16 v7, 0x2a

    if-eq v4, v7, :cond_f

    const/16 v7, 0x27

    if-eq v4, v7, :cond_f

    const/16 v7, 0x28

    if-eq v4, v7, :cond_f

    const/16 v7, 0x29

    if-eq v4, v7, :cond_f

    const/16 v7, 0x40

    if-eq v4, v7, :cond_f

    const/16 v7, 0x26

    if-eq v4, v7, :cond_f

    const/16 v7, 0x3d

    if-eq v4, v7, :cond_f

    const/16 v7, 0x2b

    if-eq v4, v7, :cond_f

    const/16 v7, 0x24

    if-eq v4, v7, :cond_f

    const/16 v7, 0x2c

    if-eq v4, v7, :cond_f

    const/16 v7, 0x5b

    if-eq v4, v7, :cond_f

    const/16 v7, 0x5d

    if-eq v4, v7, :cond_f

    const/16 v7, 0x23

    if-eq v4, v7, :cond_f

    const/16 v7, 0x21

    if-eq v4, v7, :cond_f

    if-ne v4, v8, :cond_5

    goto :goto_6

    .line 345
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    .line 346
    .local v7, "pos":I
    const/4 v9, 0x0

    .line 347
    .local v9, "nbytes":I
    const/16 v11, 0x80

    const/4 v12, 0x1

    if-ge v4, v11, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/16 v13, 0x800

    if-ge v4, v13, :cond_7

    const/4 v6, 0x2

    goto :goto_1

    :cond_7
    if-ge v4, v6, :cond_8

    const/4 v6, 0x3

    goto :goto_1

    :cond_8
    const/4 v6, 0x4

    .line 354
    .local v6, "needed":I
    :goto_1
    if-nez v9, :cond_9

    const/4 v13, 0x7

    goto :goto_2

    :cond_9
    rsub-int/lit8 v13, v9, 0x6

    .line 356
    .local v13, "availbits":I
    :goto_2
    shl-int v14, v12, v13

    if-ge v4, v14, :cond_b

    .line 359
    move v14, v4

    .line 360
    .local v14, "b":I
    if-lez v9, :cond_a

    .line 361
    const v15, 0xff80

    shr-int/2addr v15, v9

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v14, v15

    .line 362
    :cond_a
    const/4 v4, 0x0

    goto :goto_3

    .line 366
    .end local v14    # "b":I
    :cond_b
    and-int/lit8 v14, v4, 0x3f

    or-int/2addr v14, v11

    .line 367
    .restart local v14    # "b":I
    shr-int/lit8 v4, v4, 0x6

    .line 369
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 370
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_4
    if-gt v15, v12, :cond_d

    .line 372
    and-int/lit8 v11, v14, 0xf

    .line 373
    .local v11, "hex":I
    const/16 v12, 0x9

    if-gt v11, v12, :cond_c

    add-int/lit8 v12, v11, 0x30

    goto :goto_5

    :cond_c
    add-int/lit8 v12, v11, -0xa

    add-int/2addr v12, v10

    :goto_5
    int-to-char v12, v12

    invoke-virtual {v2, v7, v12}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 375
    shr-int/lit8 v14, v14, 0x4

    .line 370
    .end local v11    # "hex":I
    add-int/lit8 v15, v15, 0x1

    const/16 v11, 0x80

    const/4 v12, 0x1

    goto :goto_4

    .line 377
    .end local v15    # "j":I
    :cond_d
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 379
    .end local v13    # "availbits":I
    .end local v14    # "b":I
    if-nez v4, :cond_e

    goto :goto_7

    :cond_e
    const/16 v11, 0x80

    const/4 v12, 0x1

    goto :goto_1

    .line 342
    .end local v6    # "needed":I
    .end local v7    # "pos":I
    .end local v9    # "nbytes":I
    :cond_f
    :goto_6
    int-to-char v6, v4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 381
    .end local v4    # "ch":I
    :goto_7
    move v4, v5

    goto/16 :goto_0

    .line 382
    .end local v5    # "i":I
    :cond_10
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;
    .locals 5
    .param p0, "arg"    # Ljava/lang/Object;

    .line 54
    invoke-static {p0}, Lgnu/text/URIPath;->coerceToURIPathOrNull(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v0

    .line 55
    .local v0, "path":Lgnu/text/URIPath;
    if-eqz v0, :cond_0

    .line 57
    return-object v0

    .line 56
    :cond_0
    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/4 v3, -0x4

    const-string v4, "URI"

    invoke-direct {v1, v2, v3, p0, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/text/URIPath;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;

    .line 70
    :try_start_0
    new-instance v0, Lgnu/text/URIStringPath;

    new-instance v1, Ljava/net/URI;

    const/16 v2, 0x49

    invoke-static {p0, v2}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lgnu/text/URIStringPath;-><init>(Ljava/net/URI;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    .line 74
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static valueOf(Ljava/net/URI;)Lgnu/text/URIPath;
    .locals 1
    .param p0, "uri"    # Ljava/net/URI;

    .line 62
    new-instance v0, Lgnu/text/URIPath;

    invoke-direct {v0, p0}, Lgnu/text/URIPath;-><init>(Ljava/net/URI;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lgnu/text/URIPath;)I
    .locals 2
    .param p1, "path"    # Lgnu/text/URIPath;

    .line 190
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    iget-object v1, p1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 14
    move-object v0, p1

    check-cast v0, Lgnu/text/URIPath;

    invoke-virtual {p0, v0}, Lgnu/text/URIPath;->compareTo(Lgnu/text/URIPath;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 202
    instance-of v0, p1, Lgnu/text/URIPath;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    move-object v1, p1

    check-cast v1, Lgnu/text/URIPath;

    iget-object v1, v1, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public exists()Z
    .locals 8

    .line 94
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 95
    .local v1, "conn":Ljava/net/URLConnection;
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 96
    move-object v2, v1

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 99
    :cond_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 101
    .end local v1    # "conn":Ljava/net/URLConnection;
    :catchall_0
    move-exception v1

    .line 103
    .local v1, "ex":Ljava/lang/Throwable;
    return v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCanonical()Lgnu/text/Path;
    .locals 2

    .line 306
    invoke-virtual {p0}, Lgnu/text/URIPath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    .line 310
    .local v0, "norm":Ljava/net/URI;
    iget-object v1, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    if-ne v0, v1, :cond_0

    .line 311
    return-object p0

    .line 312
    :cond_0
    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v1

    return-object v1

    .line 318
    .end local v0    # "norm":Ljava/net/URI;
    :cond_1
    invoke-virtual {p0}, Lgnu/text/URIPath;->getAbsolute()Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/Path;->getCanonical()Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 114
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->getContentLength(Ljava/net/URL;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()J
    .locals 2

    .line 109
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->getLastModified(Ljava/net/URL;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 270
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 207
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    return v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

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

    .line 228
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URLPath;->openOutputStream(Ljava/net/URL;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Lgnu/text/Path;
    .locals 6
    .param p1, "rstr"    # Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p1}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    sget-char v0, Ljava/io/File;->separatorChar:C

    .line 130
    .local v0, "fileSep":C
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_4

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_3

    .line 137
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v1

    return-object v1

    .line 139
    :cond_3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 145
    :cond_4
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    new-instance v3, Ljava/net/URI;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p1, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .local v1, "resolved":Ljava/net/URI;
    nop

    .line 185
    invoke-static {v1}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v2

    return-object v2

    .line 147
    .end local v1    # "resolved":Ljava/net/URI;
    :catchall_0
    move-exception v2

    .line 149
    .restart local v1    # "resolved":Ljava/net/URI;
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lgnu/text/URIPath;->toURIString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURIString()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .locals 1

    .line 217
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/Path;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 1

    .line 118
    iget-object v0, p0, Lgnu/text/URIPath;->uri:Ljava/net/URI;

    return-object v0
.end method
