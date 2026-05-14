.class public abstract Lgnu/text/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field public static defaultPath:Lgnu/text/Path;

.field private static pathLocation:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lgnu/text/Path;",
            ">;"
        }
    .end annotation
.end field

.field public static final userDirPath:Lgnu/text/FilePath;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v0

    sput-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    .line 22
    sget-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    sput-object v0, Lgnu/text/Path;->defaultPath:Lgnu/text/Path;

    .line 25
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/text/Path;->pathLocation:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;
    .locals 2
    .param p0, "path"    # Ljava/lang/Object;

    .line 53
    instance-of v0, p0, Lgnu/text/Path;

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p0

    check-cast v0, Lgnu/text/Path;

    return-object v0

    .line 55
    :cond_0
    instance-of v0, p0, Ljava/net/URL;

    if-eqz v0, :cond_1

    .line 56
    move-object v0, p0

    check-cast v0, Ljava/net/URL;

    invoke-static {v0}, Lgnu/text/URLPath;->valueOf(Ljava/net/URL;)Lgnu/text/URLPath;

    move-result-object v0

    return-object v0

    .line 58
    :cond_1
    instance-of v0, p0, Ljava/net/URI;

    if-eqz v0, :cond_2

    .line 59
    move-object v0, p0

    check-cast v0, Ljava/net/URI;

    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object v0

    return-object v0

    .line 61
    :cond_2
    instance-of v0, p0, Ljava/io/File;

    if-eqz v0, :cond_3

    .line 62
    move-object v0, p0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/io/File;)Lgnu/text/FilePath;

    move-result-object v0

    return-object v0

    .line 64
    :cond_3
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_4

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 66
    .end local v0    # "str":Ljava/lang/String;
    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_5

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_5
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 70
    .restart local v0    # "str":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 71
    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v1

    return-object v1

    .line 73
    :cond_6
    invoke-static {v0}, Lgnu/text/FilePath;->valueOf(Ljava/lang/String;)Lgnu/text/FilePath;

    move-result-object v1

    return-object v1
.end method

.method public static currentPath()Lgnu/text/Path;
    .locals 2

    .line 35
    sget-object v0, Lgnu/text/Path;->pathLocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/text/Path;

    .line 36
    .local v0, "path":Lgnu/text/Path;
    if-eqz v0, :cond_0

    .line 37
    return-object v0

    .line 39
    :cond_0
    sget-object v1, Lgnu/text/Path;->defaultPath:Lgnu/text/Path;

    return-object v1
.end method

.method public static openInputStream(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .param p0, "uri"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "base"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    move-object v0, p1

    .line 330
    .local v0, "baseStr":Ljava/lang/String;
    move-object v1, p0

    .line 332
    .local v1, "inStr":Ljava/lang/String;
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {p0}, Lgnu/text/URLPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/text/URIPath;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 336
    .local v2, "baseLen":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 337
    .local v3, "inLen":I
    const/4 v4, 0x0

    .line 338
    .local v4, "i":I
    const/4 v5, 0x0

    .line 339
    .local v5, "sl":I
    const/4 v6, 0x0

    .line 340
    .local v6, "colon":I
    :goto_0
    const/16 v7, 0x2f

    if-ge v4, v2, :cond_3

    if-ge v4, v3, :cond_3

    .line 342
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 343
    .local v8, "cb":C
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 344
    .local v9, "ci":C
    if-eq v8, v9, :cond_0

    .line 345
    goto :goto_1

    .line 346
    :cond_0
    if-ne v8, v7, :cond_1

    .line 347
    move v5, v4

    .line 348
    :cond_1
    const/16 v7, 0x3a

    if-ne v8, v7, :cond_2

    .line 349
    move v6, v4

    .line 340
    .end local v8    # "cb":C
    .end local v9    # "ci":C
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 351
    :cond_3
    :goto_1
    if-lez v6, :cond_7

    add-int/lit8 v8, v6, 0x2

    if-gt v5, v8, :cond_4

    add-int/lit8 v8, v6, 0x2

    if-le v2, v8, :cond_4

    add-int/lit8 v8, v6, 0x2

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v7, :cond_7

    .line 360
    :cond_4
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 366
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .local v8, "sbuf":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 371
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    move v2, v9

    move v4, v9

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_6

    .line 372
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_5

    .line 373
    const-string v9, "../"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 374
    :cond_6
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 364
    .end local v8    # "sbuf":Ljava/lang/StringBuilder;
    :cond_7
    return-object p0
.end method

.method public static setCurrentPath(Lgnu/text/Path;)V
    .locals 1
    .param p0, "path"    # Lgnu/text/Path;

    .line 45
    sget-object v0, Lgnu/text/Path;->pathLocation:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public static toURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 88
    :try_start_0
    invoke-static {p0}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v0

    .line 91
    .local v0, "cur":Lgnu/text/Path;
    invoke-virtual {v0, p0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v1

    .line 92
    .local v1, "path":Lgnu/text/Path;
    invoke-virtual {v1}, Lgnu/text/Path;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v1}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v2

    return-object v2

    .line 94
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object p0, v2

    .line 96
    .end local v0    # "cur":Lgnu/text/Path;
    .end local v1    # "path":Lgnu/text/Path;
    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    .line 100
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static uriSchemeLength(Ljava/lang/String;)I
    .locals 5
    .param p0, "uri"    # Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 113
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_3

    .line 115
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 116
    .local v3, "ch":C
    const/16 v4, 0x3a

    if-ne v3, v4, :cond_0

    .line 117
    return v1

    .line 118
    :cond_0
    if-nez v1, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    goto :goto_2

    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 121
    :goto_2
    return v2

    .line 113
    .end local v3    # "ch":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    :cond_3
    return v2
.end method

.method public static uriSchemeSpecified(Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 131
    invoke-static {p0}, Lgnu/text/Path;->uriSchemeLength(Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, "ulen":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_3

    .line 134
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 135
    .local v3, "drive":C
    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7a

    if-le v3, v4, :cond_2

    :cond_0
    const/16 v4, 0x41

    if-lt v3, v4, :cond_1

    const/16 v4, 0x5a

    if-le v3, v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 138
    .end local v3    # "drive":C
    :cond_3
    if-lez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static valueOf(Ljava/lang/Object;)Lgnu/text/Path;
    .locals 5
    .param p0, "arg"    # Ljava/lang/Object;

    .line 78
    invoke-static {p0}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    .line 79
    .local v0, "path":Lgnu/text/Path;
    if-eqz v0, :cond_0

    .line 81
    return-object v0

    .line 80
    :cond_0
    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/4 v3, -0x4

    const-string v4, "path"

    invoke-direct {v1, v2, v3, p0, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public delete()Z
    .locals 1

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public exists()Z
    .locals 5

    .line 167
    invoke-virtual {p0}, Lgnu/text/Path;->getLastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAbsolute()Lgnu/text/Path;
    .locals 1

    .line 385
    sget-object v0, Lgnu/text/Path;->userDirPath:Lgnu/text/FilePath;

    if-ne p0, v0, :cond_0

    .line 386
    const-string v0, ""

    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    return-object v0

    .line 388
    :cond_0
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCanonical()Lgnu/text/Path;
    .locals 1

    .line 393
    invoke-virtual {p0}, Lgnu/text/Path;->getAbsolute()Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public getCharContent(Z)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "ignoreEncodingErrors"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentLength()J
    .locals 2

    .line 174
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDirectory()Lgnu/text/Path;
    .locals 1

    .line 198
    invoke-virtual {p0}, Lgnu/text/Path;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    return-object p0

    .line 201
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 7

    .line 235
    invoke-virtual {p0}, Lgnu/text/Path;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "p":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 237
    return-object v1

    .line 238
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 239
    .local v2, "len":I
    move v3, v2

    .line 241
    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_1

    .line 242
    return-object v1

    .line 243
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 244
    .local v4, "c":C
    const/4 v5, 0x0

    .line 245
    .local v5, "sawDot":Z
    const/16 v6, 0x2e

    if-ne v4, v6, :cond_2

    .line 247
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 248
    const/4 v5, 0x1

    .line 250
    :cond_2
    const/16 v6, 0x2f

    if-eq v4, v6, :cond_5

    instance-of v6, p0, Lgnu/text/FilePath;

    if-eqz v6, :cond_3

    sget-char v6, Ljava/io/File;->separatorChar:C

    if-ne v4, v6, :cond_3

    goto :goto_1

    .line 254
    :cond_3
    if-eqz v5, :cond_4

    .line 255
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 256
    .end local v4    # "c":C
    .end local v5    # "sawDot":Z
    :cond_4
    goto :goto_0

    .line 253
    .restart local v4    # "c":C
    .restart local v5    # "sawDot":Z
    :cond_5
    :goto_1
    return-object v1
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLast()Ljava/lang/String;
    .locals 6

    .line 211
    invoke-virtual {p0}, Lgnu/text/Path;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "p":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 213
    const/4 v1, 0x0

    return-object v1

    .line 214
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 215
    .local v1, "len":I
    move v2, v1

    .line 216
    .local v2, "end":I
    move v3, v1

    .line 218
    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_1

    .line 219
    const-string v4, ""

    return-object v4

    .line 220
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 221
    .local v4, "c":C
    const/16 v5, 0x2f

    if-eq v4, v5, :cond_2

    instance-of v5, p0, Lgnu/text/FilePath;

    if-eqz v5, :cond_3

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-ne v4, v5, :cond_3

    .line 225
    :cond_2
    add-int/lit8 v5, v3, 0x1

    if-ne v5, v1, :cond_4

    .line 226
    move v2, v3

    .line 230
    .end local v4    # "c":C
    :cond_3
    goto :goto_0

    .line 228
    .restart local v4    # "c":C
    :cond_4
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public abstract getLastModified()J
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 380
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lgnu/text/Path;
    .locals 1

    .line 206
    invoke-virtual {p0}, Lgnu/text/Path;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".."

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public getPort()I
    .locals 1

    .line 261
    const/4 v0, -0x1

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 266
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isAbsolute()Z
.end method

.method public isDirectory()Z
    .locals 4

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 151
    .local v1, "len":I
    if-lez v1, :cond_1

    .line 153
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 154
    .local v2, "last":C
    const/16 v3, 0x2f

    if-eq v2, v3, :cond_0

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-ne v2, v3, :cond_1

    .line 155
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 157
    .end local v2    # "last":C
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public abstract openInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public openReader(Z)Ljava/io/Reader;
    .locals 1
    .param p1, "ignoreEncodingErrors"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public openWriter()Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public resolve(Lgnu/text/Path;)Lgnu/text/Path;
    .locals 1
    .param p1, "relative"    # Lgnu/text/Path;

    .line 289
    invoke-virtual {p1}, Lgnu/text/Path;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    return-object p1

    .line 291
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public abstract resolve(Ljava/lang/String;)Lgnu/text/Path;
.end method

.method public final toURI()Ljava/net/URI;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lgnu/text/Path;->toUri()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public toURIString()Ljava/lang/String;
    .locals 1

    .line 285
    invoke-virtual {p0}, Lgnu/text/Path;->toUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toURL()Ljava/net/URL;
.end method

.method public abstract toUri()Ljava/net/URI;
.end method
