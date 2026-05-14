.class public Lgnu/kawa/functions/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTempFile(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    if-nez p0, :cond_0

    .line 19
    const-string p0, "kawa~d.tmp"

    .line 20
    :cond_0
    const/16 v0, 0x7e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 22
    .local v0, "tilde":I
    const/4 v1, 0x0

    .line 23
    .local v1, "directory":Ljava/io/File;
    const/4 v2, 0x0

    if-gez v0, :cond_1

    .line 25
    move-object v3, p0

    .line 26
    .local v3, "prefix":Ljava/lang/String;
    const-string v4, ".tmp"

    .local v4, "suffix":Ljava/lang/String;
    goto :goto_0

    .line 30
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "suffix":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 31
    .restart local v3    # "prefix":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 33
    .restart local v4    # "suffix":Ljava/lang/String;
    :goto_0
    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 34
    .local v5, "sep":I
    if-ltz v5, :cond_2

    .line 36
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    .line 37
    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 40
    :cond_2
    invoke-static {v3, v4, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    return-object v2
.end method
