.class public final Lcom/google/api/client/util/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/ByteStreams$LimitedInputStream;
    }
.end annotation


# static fields
.field private static final BUF_SIZE:I = 0x1000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .param p0, "from"    # Ljava/io/InputStream;
    .param p1, "to"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 47
    .local v0, "buf":[B
    const-wide/16 v1, 0x0

    .line 49
    .local v1, "total":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 50
    .local v3, "r":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 51
    nop

    .line 56
    .end local v3    # "r":I
    return-wide v1

    .line 53
    .restart local v3    # "r":I
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 54
    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 55
    .end local v3    # "r":I
    goto :goto_0
.end method

.method public static limit(Ljava/io/InputStream;J)Ljava/io/InputStream;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "limit"    # J

    .line 67
    new-instance v0, Lcom/google/api/client/util/ByteStreams$LimitedInputStream;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/api/client/util/ByteStreams$LimitedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-static {p0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    if-ltz p3, :cond_2

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "total":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 173
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 174
    .local v1, "result":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 175
    goto :goto_1

    .line 177
    :cond_0
    add-int/2addr v0, v1

    .line 178
    .end local v1    # "result":I
    goto :goto_0

    .line 179
    :cond_1
    :goto_1
    return v0

    .line 169
    .end local v0    # "total":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "len is negative"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
