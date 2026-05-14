.class public final Lcom/google/api/client/http/ByteArrayContent;
.super Lcom/google/api/client/http/AbstractInputStreamContent;
.source "ByteArrayContent.java"


# instance fields
.field private final byteArray:[B

.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "array"    # [B

    .line 60
    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/api/client/http/ByteArrayContent;-><init>(Ljava/lang/String;[BII)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "array"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 74
    invoke-direct {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/api/client/http/ByteArrayContent;->byteArray:[B

    .line 76
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    add-int v2, p3, p4

    array-length v3, p2

    if-gt v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 79
    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 80
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    array-length v5, p2

    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    aput-object v4, v6, v0

    const/4 v0, 0x2

    aput-object v5, v6, v0

    .line 76
    const-string v0, "offset %s, length %s, array length %s"

    invoke-static {v2, v0, v6}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iput p3, p0, Lcom/google/api/client/http/ByteArrayContent;->offset:I

    .line 83
    iput p4, p0, Lcom/google/api/client/http/ByteArrayContent;->length:I

    .line 84
    return-void
.end method

.method public static fromString(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "contentString"    # Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/google/api/client/http/ByteArrayContent;

    invoke-static {p1}, Lcom/google/api/client/util/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/http/ByteArrayContent;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 4

    .line 118
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/api/client/http/ByteArrayContent;->byteArray:[B

    iget v2, p0, Lcom/google/api/client/http/ByteArrayContent;->offset:I

    iget v3, p0, Lcom/google/api/client/http/ByteArrayContent;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 109
    iget v0, p0, Lcom/google/api/client/http/ByteArrayContent;->length:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public retrySupported()Z
    .locals 1

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic setCloseInputStream(Z)Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/ByteArrayContent;->setCloseInputStream(Z)Lcom/google/api/client/http/ByteArrayContent;

    move-result-object p1

    return-object p1
.end method

.method public setCloseInputStream(Z)Lcom/google/api/client/http/ByteArrayContent;
    .locals 1
    .param p1, "closeInputStream"    # Z

    .line 128
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setCloseInputStream(Z)Lcom/google/api/client/http/AbstractInputStreamContent;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/ByteArrayContent;

    return-object v0
.end method

.method public bridge synthetic setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/ByteArrayContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;

    move-result-object p1

    return-object p1
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/http/ByteArrayContent;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 123
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/ByteArrayContent;

    return-object v0
.end method
