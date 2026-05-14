.class public Lcom/google/api/client/json/webtoken/DerEncoder;
.super Ljava/lang/Object;
.source "DerEncoder.java"


# static fields
.field private static DER_TAG_ASN1_INTEGER:B

.field private static DER_TAG_SIGNATURE_OBJECT:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/16 v0, 0x30

    sput-byte v0, Lcom/google/api/client/json/webtoken/DerEncoder;->DER_TAG_SIGNATURE_OBJECT:B

    .line 33
    const/4 v0, 0x2

    sput-byte v0, Lcom/google/api/client/json/webtoken/DerEncoder;->DER_TAG_ASN1_INTEGER:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static encode([B)[B
    .locals 7
    .param p0, "signature"    # [B

    .line 37
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x40

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkState(Z)V

    .line 39
    new-instance v0, Ljava/math/BigInteger;

    const/16 v4, 0x20

    invoke-static {p0, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-direct {v0, v1, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 40
    .local v0, "int1":[B
    new-instance v5, Ljava/math/BigInteger;

    invoke-static {p0, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v5, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 41
    .local v3, "int2":[B
    array-length v4, v0

    add-int/lit8 v4, v4, 0x6

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 44
    .local v4, "der":[B
    sget-byte v5, Lcom/google/api/client/json/webtoken/DerEncoder;->DER_TAG_SIGNATURE_OBJECT:B

    aput-byte v5, v4, v2

    .line 45
    array-length v5, v4

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 48
    sget-byte v1, Lcom/google/api/client/json/webtoken/DerEncoder;->DER_TAG_ASN1_INTEGER:B

    aput-byte v1, v4, v6

    .line 49
    array-length v1, v0

    int-to-byte v1, v1

    const/4 v5, 0x3

    aput-byte v1, v4, v5

    .line 50
    array-length v1, v0

    const/4 v5, 0x4

    invoke-static {v0, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    array-length v1, v0

    add-int/2addr v1, v5

    .line 54
    .local v1, "offset":I
    sget-byte v5, Lcom/google/api/client/json/webtoken/DerEncoder;->DER_TAG_ASN1_INTEGER:B

    aput-byte v5, v4, v1

    .line 55
    add-int/lit8 v5, v1, 0x1

    array-length v6, v3

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 56
    add-int/lit8 v5, v1, 0x2

    array-length v6, v3

    invoke-static {v3, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    return-object v4
.end method
