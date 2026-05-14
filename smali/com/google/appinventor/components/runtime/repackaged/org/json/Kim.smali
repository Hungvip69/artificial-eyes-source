.class public Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
.super Ljava/lang/Object;
.source "Kim.java"


# instance fields
.field private bytes:[B

.field private hashcode:I

.field public length:I

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;II)V
    .locals 1
    .param p1, "kim"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    .param p2, "from"    # I
    .param p3, "thru"    # I

    .line 143
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    invoke-direct {p0, v0, p2, p3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;-><init>([BII)V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    .line 80
    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    .line 85
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->string:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 156
    .local v0, "stringLength":I
    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    .line 157
    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    .line 162
    if-lez v0, :cond_9

    .line 163
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const v2, 0xdbff

    const v3, 0xd800

    const/16 v4, 0x3fff

    const/16 v5, 0x7f

    if-ge v1, v0, :cond_4

    .line 164
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 165
    .local v6, "c":I
    if-gt v6, v5, :cond_0

    .line 166
    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    goto :goto_2

    .line 167
    :cond_0
    if-gt v6, v4, :cond_1

    .line 168
    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    goto :goto_2

    .line 170
    :cond_1
    if-lt v6, v3, :cond_3

    const v3, 0xdfff

    if-gt v6, v3, :cond_3

    .line 171
    add-int/lit8 v1, v1, 0x1

    .line 172
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 173
    .local v4, "d":I
    if-gt v6, v2, :cond_2

    const v2, 0xdc00

    if-lt v4, v2, :cond_2

    if-gt v4, v3, :cond_2

    goto :goto_1

    .line 174
    :cond_2
    new-instance v2, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    const-string v3, "Bad UTF16"

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    .end local v4    # "d":I
    :cond_3
    :goto_1
    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    .line 163
    .end local v6    # "c":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "i":I
    :cond_4
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    .line 185
    const/4 v1, 0x0

    .line 187
    .local v1, "at":I
    const/4 v6, 0x1

    .line 188
    .local v6, "sum":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    if-ge v7, v0, :cond_8

    .line 189
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 190
    .local v8, "character":I
    if-gt v8, v5, :cond_5

    .line 191
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    int-to-byte v10, v8

    aput-byte v10, v9, v1

    .line 192
    add-int/2addr v6, v8

    .line 193
    iget v9, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    add-int/2addr v9, v6

    iput v9, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 195
    :cond_5
    if-gt v8, v4, :cond_6

    .line 196
    ushr-int/lit8 v9, v8, 0x7

    or-int/lit16 v9, v9, 0x80

    .line 197
    .local v9, "b":I
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    int-to-byte v11, v9

    aput-byte v11, v10, v1

    .line 198
    add-int/2addr v6, v9

    .line 199
    iget v10, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    add-int/2addr v10, v6

    iput v10, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    .line 200
    add-int/lit8 v1, v1, 0x1

    .line 201
    and-int/lit8 v9, v8, 0x7f

    .line 202
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    int-to-byte v11, v9

    aput-byte v11, v10, v1

    .line 203
    add-int/2addr v6, v9

    .line 204
    iget v10, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    add-int/2addr v10, v6

    iput v10, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 207
    .end local v9    # "b":I
    :cond_6
    if-lt v8, v3, :cond_7

    if-gt v8, v2, :cond_7

    .line 208
    add-int/lit8 v7, v7, 0x1

    .line 209
    and-int/lit16 v9, v8, 0x3ff

    shl-int/lit8 v9, v9, 0xa

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    and-int/lit16 v10, v10, 0x3ff

    or-int/2addr v9, v10

    const/high16 v10, 0x10000

    add-int v8, v9, v10

    .line 212
    :cond_7
    ushr-int/lit8 v9, v8, 0xe

    or-int/lit16 v9, v9, 0x80

    .line 213
    .restart local v9    # "b":I
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    int-to-byte v11, v9

    aput-byte v11, v10, v1

    .line 214
    add-int/2addr v6, v9

    .line 215
    iget v10, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    add-int/2addr v10, v6

    iput v10, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    .line 216
    add-int/lit8 v1, v1, 0x1

    .line 217
    ushr-int/lit8 v10, v8, 0x7

    and-int/lit16 v10, v10, 0xff

    or-int/lit16 v9, v10, 0x80

    .line 218
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    int-to-byte v11, v9

    aput-byte v11, v10, v1

    .line 219
    add-int/2addr v6, v9

    .line 220
    iget v10, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    add-int/2addr v10, v6

    iput v10, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    .line 221
    add-int/lit8 v1, v1, 0x1

    .line 222
    and-int/lit8 v9, v8, 0x7f

    .line 223
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    int-to-byte v11, v9

    aput-byte v11, v10, v1

    .line 224
    add-int/2addr v6, v9

    .line 225
    iget v10, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    add-int/2addr v10, v6

    iput v10, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    .line 226
    add-int/lit8 v1, v1, 0x1

    .line 188
    .end local v8    # "character":I
    .end local v9    # "b":I
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 229
    .end local v7    # "i":I
    :cond_8
    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    shl-int/lit8 v3, v6, 0x10

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    .line 231
    .end local v1    # "at":I
    .end local v6    # "sum":I
    :cond_9
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "length"    # I

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;-><init>([BII)V

    .line 128
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "from"    # I
    .param p3, "thru"    # I

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    .line 74
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    .line 80
    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    .line 85
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->string:Ljava/lang/String;

    .line 102
    const/4 v0, 0x1

    .line 104
    .local v0, "sum":I
    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    .line 105
    sub-int v1, p3, p2

    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    .line 106
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    if-lez v1, :cond_1

    .line 107
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    .line 108
    const/4 v1, 0x0

    .local v1, "at":I
    :goto_0
    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    if-ge v1, v2, :cond_0

    .line 109
    add-int v2, v1, p2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 110
    .local v2, "value":I
    add-int/2addr v0, v2

    .line 111
    iget v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    .line 112
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "at":I
    .end local v2    # "value":I
    :cond_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    shl-int/lit8 v2, v0, 0x10

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    .line 116
    :cond_1
    return-void
.end method

.method public static characterSize(I)I
    .locals 3
    .param p0, "character"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 278
    if-ltz p0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    .line 281
    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3fff

    if-gt p0, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    return v0

    .line 279
    :cond_2
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Bad character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public characterAt(I)I
    .locals 6
    .param p1, "at"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->get(I)I

    move-result v0

    .line 246
    .local v0, "c":I
    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_0

    .line 247
    return v0

    .line 250
    :cond_0
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->get(I)I

    move-result v1

    .line 251
    .local v1, "c1":I
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_1

    .line 252
    and-int/lit8 v2, v0, 0x7f

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v2, v1

    .line 253
    .local v2, "character":I
    const/16 v3, 0x7f

    if-le v2, v3, :cond_4

    .line 254
    return v2

    .line 257
    .end local v2    # "character":I
    :cond_1
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->get(I)I

    move-result v2

    .line 258
    .local v2, "c2":I
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0xe

    and-int/lit8 v4, v1, 0x7f

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    or-int/2addr v3, v2

    .line 259
    .local v3, "character":I
    and-int/lit16 v4, v2, 0x80

    if-nez v4, :cond_3

    const/16 v4, 0x3fff

    if-le v3, v4, :cond_3

    const v4, 0x10ffff

    if-gt v3, v4, :cond_3

    const v4, 0xd800

    if-lt v3, v4, :cond_2

    const v4, 0xdfff

    if-le v3, v4, :cond_3

    .line 261
    :cond_2
    return v3

    .line 264
    .end local v2    # "c2":I
    :cond_3
    move v2, v3

    .end local v3    # "character":I
    .local v2, "character":I
    :cond_4
    new-instance v3, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Bad character at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public copy([BI)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "at"    # I

    .line 294
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    add-int/2addr v0, p2

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 308
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 309
    return v1

    .line 311
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    .line 312
    .local v0, "that":Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
    if-ne p0, v0, :cond_1

    .line 313
    const/4 v1, 0x1

    return v1

    .line 315
    :cond_1
    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    iget v3, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    if-eq v2, v3, :cond_2

    .line 316
    return v1

    .line 318
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public get(I)I
    .locals 3
    .param p1, "at"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 330
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    if-gt p1, v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 331
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Bad character at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 340
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->string:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "length":I
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    new-array v1, v1, [C

    .line 357
    .local v1, "chars":[C
    const/4 v2, 0x0

    .local v2, "at":I
    :goto_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    if-ge v2, v3, :cond_1

    .line 358
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->characterAt(I)I

    move-result v3

    .line 359
    .local v3, "c":I
    const/high16 v4, 0x10000

    if-ge v3, v4, :cond_0

    .line 360
    int-to-char v4, v3

    aput-char v4, v1, v0

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 363
    :cond_0
    sub-int v4, v3, v4

    ushr-int/lit8 v4, v4, 0xa

    const v5, 0xd800

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v0

    .line 364
    add-int/lit8 v0, v0, 0x1

    .line 365
    and-int/lit16 v4, v3, 0x3ff

    const v5, 0xdc00

    or-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v0

    .line 366
    add-int/lit8 v0, v0, 0x1

    .line 357
    :goto_1
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->characterSize(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 369
    .end local v2    # "at":I
    .end local v3    # "c":I
    :cond_1
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->string:Ljava/lang/String;

    .line 371
    .end local v0    # "length":I
    .end local v1    # "chars":[C
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->string:Ljava/lang/String;

    return-object v0
.end method
