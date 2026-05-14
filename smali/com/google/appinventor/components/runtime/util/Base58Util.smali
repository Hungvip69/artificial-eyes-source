.class public Lcom/google/appinventor/components/runtime/util/Base58Util;
.super Ljava/lang/Object;
.source "Base58Util.java"


# static fields
.field public static final ALPHABET:[C

.field private static final ENCODED_ZERO:C

.field private static final INDEXES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    const-string v0, "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/Base58Util;->ALPHABET:[C

    .line 49
    sget-object v0, Lcom/google/appinventor/components/runtime/util/Base58Util;->ALPHABET:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    sput-char v0, Lcom/google/appinventor/components/runtime/util/Base58Util;->ENCODED_ZERO:C

    .line 50
    const/16 v0, 0x80

    new-array v0, v0, [I

    sput-object v0, Lcom/google/appinventor/components/runtime/util/Base58Util;->INDEXES:[I

    .line 52
    sget-object v0, Lcom/google/appinventor/components/runtime/util/Base58Util;->INDEXES:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/appinventor/components/runtime/util/Base58Util;->ALPHABET:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 54
    sget-object v1, Lcom/google/appinventor/components/runtime/util/Base58Util;->INDEXES:[I

    sget-object v2, Lcom/google/appinventor/components/runtime/util/Base58Util;->ALPHABET:[C

    aget-char v2, v2, v0

    aput v0, v1, v2

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyOfRange([BII)[B
    .locals 4
    .param p0, "original"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 145
    sub-int v0, p2, p1

    .line 146
    .local v0, "newLength":I
    if-ltz v0, :cond_0

    .line 148
    new-array v1, v0, [B

    .line 149
    .local v1, "copy":[B
    array-length v2, p0

    sub-int/2addr v2, p1

    .line 150
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 149
    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    return-object v1

    .line 147
    .end local v1    # "copy":[B
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 7
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 107
    .local v0, "input58":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 108
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 109
    .local v2, "c":C
    const/16 v3, 0x80

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/google/appinventor/components/runtime/util/Base58Util;->INDEXES:[I

    aget v3, v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    .line 110
    .local v3, "digit":I
    :goto_1
    if-ltz v3, :cond_2

    .line 113
    int-to-byte v4, v3

    aput-byte v4, v0, v1

    .line 107
    .end local v2    # "c":C
    .end local v3    # "digit":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .restart local v2    # "c":C
    .restart local v3    # "digit":I
    :cond_2
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal character "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    .end local v1    # "i":I
    .end local v2    # "c":C
    .end local v3    # "digit":I
    :cond_3
    const/4 v1, 0x0

    .line 117
    .local v1, "zeros":I
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_4

    aget-byte v2, v0, v1

    if-nez v2, :cond_4

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 121
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [B

    .line 122
    .local v2, "decoded":[B
    array-length v3, v2

    .line 123
    .local v3, "outputStart":I
    move v4, v1

    .local v4, "inputStart":I
    :cond_5
    :goto_3
    array-length v5, v0

    if-ge v4, v5, :cond_6

    .line 124
    add-int/lit8 v3, v3, -0x1

    const/16 v5, 0x3a

    const/16 v6, 0x100

    invoke-static {v0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/Base58Util;->divmod([BIII)B

    move-result v5

    aput-byte v5, v2, v3

    .line 125
    aget-byte v5, v0, v4

    if-nez v5, :cond_5

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 130
    .end local v4    # "inputStart":I
    :cond_6
    :goto_4
    array-length v4, v2

    if-ge v3, v4, :cond_7

    aget-byte v4, v2, v3

    if-nez v4, :cond_7

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 134
    :cond_7
    sub-int v4, v3, v1

    array-length v5, v2

    invoke-static {v2, v4, v5}, Lcom/google/appinventor/components/runtime/util/Base58Util;->copyOfRange([BII)[B

    move-result-object v4

    return-object v4
.end method

.method public static decodeToBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Base58Util;->decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method private static divmod([BIII)B
    .locals 5
    .param p0, "number"    # [B
    .param p1, "firstDigit"    # I
    .param p2, "base"    # I
    .param p3, "divisor"    # I

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "remainder":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 170
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 171
    .local v2, "digit":I
    mul-int v3, v0, p2

    add-int/2addr v3, v2

    .line 172
    .local v3, "temp":I
    div-int v4, v3, p3

    int-to-byte v4, v4

    aput-byte v4, p0, v1

    .line 173
    rem-int v0, v3, p3

    .line 169
    .end local v2    # "digit":I
    .end local v3    # "temp":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "i":I
    :cond_0
    int-to-byte v1, v0

    return v1
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # [B

    .line 65
    array-length v0, p0

    if-nez v0, :cond_0

    .line 66
    const-string v0, ""

    return-object v0

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 70
    .local v0, "zeros":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    if-nez v1, :cond_1

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 75
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 76
    .local v1, "encoded":[C
    array-length v2, v1

    .line 77
    .local v2, "outputStart":I
    move v3, v0

    .local v3, "inputStart":I
    :cond_2
    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_3

    .line 78
    add-int/lit8 v2, v2, -0x1

    sget-object v4, Lcom/google/appinventor/components/runtime/util/Base58Util;->ALPHABET:[C

    const/16 v5, 0x100

    const/16 v6, 0x3a

    invoke-static {p0, v3, v5, v6}, Lcom/google/appinventor/components/runtime/util/Base58Util;->divmod([BIII)B

    move-result v5

    aget-char v4, v4, v5

    aput-char v4, v1, v2

    .line 79
    aget-byte v4, p0, v3

    if-nez v4, :cond_2

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 84
    .end local v3    # "inputStart":I
    :cond_3
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_4

    aget-char v3, v1, v2

    sget-char v4, Lcom/google/appinventor/components/runtime/util/Base58Util;->ENCODED_ZERO:C

    if-ne v3, v4, :cond_4

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 87
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    .line 88
    add-int/lit8 v2, v2, -0x1

    sget-char v3, Lcom/google/appinventor/components/runtime/util/Base58Util;->ENCODED_ZERO:C

    aput-char v3, v1, v2

    goto :goto_3

    .line 91
    :cond_5
    new-instance v3, Ljava/lang/String;

    array-length v4, v1

    sub-int/2addr v4, v2

    invoke-direct {v3, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method
