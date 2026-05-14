.class public Lkawa/standard/char_ready_p;
.super Ljava/lang/Object;
.source "char_ready_p.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ready(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "arg1"    # Ljava/lang/Object;

    .line 8
    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p0, Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 9
    move-object v1, p0

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 10
    :cond_1
    instance-of v1, p0, Ljava/io/Reader;

    if-eqz v1, :cond_2

    .line 11
    move-object v1, p0

    check-cast v1, Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->ready()Z

    move-result v0

    return v0

    .line 13
    :cond_2
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "invalid argument to char-ready?"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .end local p0    # "arg1":Ljava/lang/Object;
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .restart local p0    # "arg1":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 17
    .local v1, "ex":Ljava/io/IOException;
    return v0
.end method
