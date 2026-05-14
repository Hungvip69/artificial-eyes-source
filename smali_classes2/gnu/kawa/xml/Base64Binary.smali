.class public Lgnu/kawa/xml/Base64Binary;
.super Lgnu/kawa/xml/BinaryObject;
.source "Base64Binary.java"


# static fields
.field public static final ENCODING:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 13
    .param p1, "str"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Lgnu/kawa/xml/BinaryObject;-><init>()V

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 23
    .local v0, "len":I
    const/4 v1, 0x0

    .line 24
    .local v1, "blen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x3d

    if-ge v2, v0, :cond_1

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 27
    .local v4, "ch":C
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_0

    if-eq v4, v3, :cond_0

    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 24
    .end local v4    # "ch":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    .end local v2    # "i":I
    :cond_1
    mul-int/lit8 v2, v1, 0x3

    const/4 v4, 0x4

    div-int/2addr v2, v4

    .line 31
    .end local v1    # "blen":I
    .local v2, "blen":I
    new-array v1, v2, [B

    .line 33
    .local v1, "bytes":[B
    const/4 v5, 0x0

    .line 34
    .local v5, "value":I
    const/4 v6, 0x0

    .line 35
    .local v6, "buffered":I
    const/4 v7, 0x0

    .line 36
    .local v7, "padding":I
    const/4 v2, 0x0

    .line 37
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v0, :cond_b

    .line 39
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 41
    .local v9, "ch":C
    const/16 v10, 0x41

    if-lt v9, v10, :cond_2

    const/16 v10, 0x5a

    if-gt v9, v10, :cond_2

    .line 42
    add-int/lit8 v10, v9, -0x41

    .local v10, "v":I
    goto :goto_2

    .line 43
    .end local v10    # "v":I
    :cond_2
    const/16 v10, 0x61

    if-lt v9, v10, :cond_3

    const/16 v10, 0x7a

    if-gt v9, v10, :cond_3

    .line 44
    add-int/lit8 v10, v9, -0x61

    add-int/lit8 v10, v10, 0x1a

    .restart local v10    # "v":I
    goto :goto_2

    .line 45
    .end local v10    # "v":I
    :cond_3
    const/16 v10, 0x30

    if-lt v9, v10, :cond_4

    const/16 v10, 0x39

    if-gt v9, v10, :cond_4

    .line 46
    add-int/lit8 v10, v9, -0x30

    add-int/lit8 v10, v10, 0x34

    .restart local v10    # "v":I
    goto :goto_2

    .line 47
    .end local v10    # "v":I
    :cond_4
    const/16 v10, 0x2b

    if-ne v9, v10, :cond_5

    .line 48
    const/16 v10, 0x3e

    .restart local v10    # "v":I
    goto :goto_2

    .line 49
    .end local v10    # "v":I
    :cond_5
    const/16 v10, 0x2f

    if-ne v9, v10, :cond_6

    .line 50
    const/16 v10, 0x3f

    .restart local v10    # "v":I
    goto :goto_2

    .line 51
    .end local v10    # "v":I
    :cond_6
    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 52
    goto :goto_3

    .line 53
    :cond_7
    if-ne v9, v3, :cond_8

    .line 55
    add-int/lit8 v7, v7, 0x1

    .line 56
    goto :goto_3

    .line 59
    :cond_8
    const/4 v10, -0x1

    .line 60
    .restart local v10    # "v":I
    :goto_2
    if-ltz v10, :cond_a

    if-gtz v7, :cond_a

    .line 62
    shl-int/lit8 v11, v5, 0x6

    add-int/2addr v11, v10

    .line 63
    .end local v5    # "value":I
    .local v11, "value":I
    add-int/lit8 v6, v6, 0x1

    .line 64
    if-ne v6, v4, :cond_9

    .line 66
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "blen":I
    .local v5, "blen":I
    shr-int/lit8 v12, v11, 0x10

    int-to-byte v12, v12

    aput-byte v12, v1, v2

    .line 67
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "blen":I
    .restart local v2    # "blen":I
    shr-int/lit8 v12, v11, 0x8

    int-to-byte v12, v12

    aput-byte v12, v1, v5

    .line 68
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "blen":I
    .restart local v5    # "blen":I
    int-to-byte v12, v11

    aput-byte v12, v1, v2

    .line 69
    const/4 v2, 0x0

    move v6, v2

    move v2, v5

    move v5, v11

    .end local v6    # "buffered":I
    .local v2, "buffered":I
    goto :goto_3

    .line 64
    .end local v5    # "blen":I
    .local v2, "blen":I
    .restart local v6    # "buffered":I
    :cond_9
    move v5, v11

    .line 37
    .end local v9    # "ch":C
    .end local v10    # "v":I
    .end local v11    # "value":I
    .local v5, "value":I
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 61
    .restart local v9    # "ch":C
    .restart local v10    # "v":I
    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "illegal character in base64Binary string at position "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 87
    .end local v8    # "i":I
    .end local v9    # "ch":C
    .end local v10    # "v":I
    :cond_b
    add-int v3, v6, v7

    if-lez v3, :cond_c

    add-int v3, v6, v7

    if-ne v3, v4, :cond_d

    const/4 v3, 0x1

    shl-int v4, v3, v7

    sub-int/2addr v4, v3

    and-int v3, v5, v4

    if-nez v3, :cond_d

    add-int/lit8 v3, v2, 0x3

    sub-int/2addr v3, v7

    array-length v4, v1

    if-ne v3, v4, :cond_d

    goto :goto_4

    :cond_c
    array-length v3, v1

    if-ne v2, v3, :cond_d

    .line 93
    :goto_4
    packed-switch v7, :pswitch_data_0

    goto :goto_5

    .line 100
    :pswitch_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "blen":I
    .local v3, "blen":I
    shr-int/lit8 v4, v5, 0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    move v2, v3

    goto :goto_5

    .line 96
    .end local v3    # "blen":I
    .restart local v2    # "blen":I
    :pswitch_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "blen":I
    .restart local v3    # "blen":I
    shl-int/lit8 v4, v5, 0xa

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 97
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "blen":I
    .restart local v2    # "blen":I
    shr-int/lit8 v4, v5, 0x2

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 98
    nop

    .line 104
    :goto_5
    iput-object v1, p0, Lgnu/kawa/xml/Base64Binary;->data:[B

    .line 105
    return-void

    .line 92
    :cond_d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_7

    :goto_6
    throw v3

    :goto_7
    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 8
    invoke-direct {p0}, Lgnu/kawa/xml/BinaryObject;-><init>()V

    .line 9
    iput-object p1, p0, Lgnu/kawa/xml/Base64Binary;->data:[B

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/kawa/xml/Base64Binary;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 17
    new-instance v0, Lgnu/kawa/xml/Base64Binary;

    invoke-direct {v0, p0}, Lgnu/kawa/xml/Base64Binary;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/Base64Binary;->toString(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 8
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 109
    iget-object v0, p0, Lgnu/kawa/xml/Base64Binary;->data:[B

    .line 110
    .local v0, "bb":[B
    array-length v1, v0

    .line 111
    .local v1, "len":I
    const/4 v2, 0x0

    .line 112
    .local v2, "value":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    if-ge v3, v1, :cond_1

    .line 114
    aget-byte v5, v0, v3

    .line 115
    .local v5, "b":B
    shl-int/lit8 v6, v2, 0x8

    and-int/lit16 v7, v5, 0xff

    or-int v2, v6, v7

    .line 116
    add-int/lit8 v3, v3, 0x1

    .line 117
    rem-int/lit8 v6, v3, 0x3

    if-nez v6, :cond_0

    .line 119
    shr-int/lit8 v6, v2, 0x12

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    shr-int/lit8 v6, v2, 0xc

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    shr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 122
    and-int/lit8 v6, v2, 0x3f

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    .end local v5    # "b":B
    :cond_0
    goto :goto_0

    .line 125
    .end local v3    # "i":I
    :cond_1
    rem-int/lit8 v3, v1, 0x3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 133
    :pswitch_0
    shr-int/lit8 v3, v2, 0xa

    and-int/lit8 v3, v3, 0x3f

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0x3f

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    shl-int/lit8 v3, v2, 0x2

    and-int/lit8 v3, v3, 0x3f

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    const/16 v3, 0x3d

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 128
    :pswitch_1
    shr-int/lit8 v3, v2, 0x2

    and-int/lit8 v3, v3, 0x3f

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    shl-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0x3f

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    const-string v3, "=="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    nop

    .line 139
    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
