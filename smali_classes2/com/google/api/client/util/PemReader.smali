.class public final Lcom/google/api/client/util/PemReader;
.super Ljava/lang/Object;
.source "PemReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/PemReader$Section;
    }
.end annotation


# static fields
.field private static final BEGIN_PATTERN:Ljava/util/regex/Pattern;

.field private static final END_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private reader:Ljava/io/BufferedReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-string v0, "-----BEGIN ([A-Z ]+)-----"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/PemReader;->BEGIN_PATTERN:Ljava/util/regex/Pattern;

    .line 52
    const-string v0, "-----END ([A-Z ]+)-----"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/PemReader;->END_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/google/api/client/util/PemReader;->reader:Ljava/io/BufferedReader;

    .line 60
    return-void
.end method

.method public static readFirstSectionAndClose(Ljava/io/Reader;)Lcom/google/api/client/util/PemReader$Section;
    .locals 1
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/api/client/util/PemReader;->readFirstSectionAndClose(Ljava/io/Reader;Ljava/lang/String;)Lcom/google/api/client/util/PemReader$Section;

    move-result-object v0

    return-object v0
.end method

.method public static readFirstSectionAndClose(Ljava/io/Reader;Ljava/lang/String;)Lcom/google/api/client/util/PemReader$Section;
    .locals 2
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "titleToLookFor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/google/api/client/util/PemReader;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/PemReader;-><init>(Ljava/io/Reader;)V

    .line 126
    .local v0, "pemReader":Lcom/google/api/client/util/PemReader;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/api/client/util/PemReader;->readNextSection(Ljava/lang/String;)Lcom/google/api/client/util/PemReader$Section;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v0}, Lcom/google/api/client/util/PemReader;->close()V

    .line 126
    return-object v1

    .line 128
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/api/client/util/PemReader;->close()V

    .line 129
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/api/client/util/PemReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 139
    return-void
.end method

.method public readNextSection()Lcom/google/api/client/util/PemReader$Section;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/api/client/util/PemReader;->readNextSection(Ljava/lang/String;)Lcom/google/api/client/util/PemReader$Section;

    move-result-object v0

    return-object v0
.end method

.method public readNextSection(Ljava/lang/String;)Lcom/google/api/client/util/PemReader$Section;
    .locals 9
    .param p1, "titleToLookFor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 77
    .local v1, "keyBuilder":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v2, p0, Lcom/google/api/client/util/PemReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "line":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 79
    if-nez v0, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v3

    const-string v3, "missing end tag (%s)"

    invoke-static {v5, v3, v4}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 80
    const/4 v3, 0x0

    return-object v3

    .line 82
    :cond_1
    if-nez v1, :cond_4

    .line 83
    sget-object v3, Lcom/google/api/client/util/PemReader;->BEGIN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 84
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 85
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "curTitle":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 87
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v5

    .line 88
    move-object v0, v4

    .line 91
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "curTitle":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 92
    :cond_4
    sget-object v5, Lcom/google/api/client/util/PemReader;->END_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 93
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 94
    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "endTitle":Ljava/lang/String;
    nop

    .line 96
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v3

    aput-object v0, v8, v4

    .line 95
    const-string v3, "end tag (%s) doesn\'t match begin tag (%s)"

    invoke-static {v7, v3, v8}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v3, Lcom/google/api/client/util/PemReader$Section;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/api/client/util/PemReader$Section;-><init>(Ljava/lang/String;[B)V

    return-object v3

    .line 99
    .end local v6    # "endTitle":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .end local v2    # "line":Ljava/lang/String;
    .end local v5    # "m":Ljava/util/regex/Matcher;
    :goto_2
    goto :goto_0
.end method
