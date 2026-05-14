.class public Lcom/google/api/client/util/escape/PercentEscaper;
.super Lcom/google/api/client/util/escape/UnicodeEscaper;
.source "PercentEscaper.java"


# static fields
.field public static final SAFECHARS_URLENCODER:Ljava/lang/String; = "-_.*"

.field public static final SAFEPATHCHARS_URLENCODER:Ljava/lang/String; = "-_.!~*\'()@:$&,;=+"

.field public static final SAFEQUERYSTRINGCHARS_URLENCODER:Ljava/lang/String; = "-_.!~*\'()@:$,;/?:"

.field public static final SAFEUSERINFOCHARS_URLENCODER:Ljava/lang/String; = "-_.!~*\'():$&,;="

.field public static final SAFE_PLUS_RESERVED_CHARS_URLENCODER:Ljava/lang/String; = "-_.!~*\'()@:$&,;=+/?"

.field private static final UPPER_HEX_DIGITS:[C

.field private static final URI_ESCAPED_SPACE:[C


# instance fields
.field private final plusForSpace:Z

.field private final safeOctets:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x2b

    const/4 v2, 0x0

    aput-char v1, v0, v2

    sput-object v0, Lcom/google/api/client/util/escape/PercentEscaper;->URI_ESCAPED_SPACE:[C

    .line 95
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "safeChars"    # Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "safeChars"    # Ljava/lang/String;
    .param p2, "plusForSpace"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    invoke-direct {p0}, Lcom/google/api/client/util/escape/UnicodeEscaper;-><init>()V

    .line 136
    const-string v0, ".*[0-9A-Za-z].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    if-eqz p2, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "plusForSpace cannot be specified when space is a \'safe\' character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    :goto_0
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    iput-boolean p2, p0, Lcom/google/api/client/util/escape/PercentEscaper;->plusForSpace:Z

    .line 150
    invoke-static {p1}, Lcom/google/api/client/util/escape/PercentEscaper;->createSafeOctets(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/escape/PercentEscaper;->safeOctets:[Z

    .line 151
    return-void

    .line 147
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'%\' character cannot be specified as \'safe\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Alphanumeric ASCII characters are always \'safe\' and should not be escaped."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createSafeOctets(Ljava/lang/String;)[Z
    .locals 7
    .param p0, "safeChars"    # Ljava/lang/String;

    .line 159
    const/16 v0, 0x7a

    .line 160
    .local v0, "maxChar":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 161
    .local v1, "safeCharArray":[C
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-char v5, v1, v4

    .line 162
    .local v5, "c":C
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 161
    .end local v5    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    :cond_0
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Z

    .line 165
    .local v2, "octets":[Z
    const/16 v4, 0x30

    .local v4, "c":I
    :goto_1
    const/16 v5, 0x39

    const/4 v6, 0x1

    if-gt v4, v5, :cond_1

    .line 166
    aput-boolean v6, v2, v4

    .line 165
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 168
    .end local v4    # "c":I
    :cond_1
    const/16 v4, 0x41

    .restart local v4    # "c":I
    :goto_2
    const/16 v5, 0x5a

    if-gt v4, v5, :cond_2

    .line 169
    aput-boolean v6, v2, v4

    .line 168
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 171
    .end local v4    # "c":I
    :cond_2
    const/16 v4, 0x61

    .restart local v4    # "c":I
    :goto_3
    const/16 v5, 0x7a

    if-gt v4, v5, :cond_3

    .line 172
    aput-boolean v6, v2, v4

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 174
    .end local v4    # "c":I
    :cond_3
    array-length v4, v1

    :goto_4
    if-ge v3, v4, :cond_4

    aget-char v5, v1, v3

    .line 175
    .restart local v5    # "c":C
    aput-boolean v6, v2, v5

    .line 174
    .end local v5    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 177
    :cond_4
    return-object v2
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 202
    .local v0, "slen":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 203
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 204
    .local v2, "c":C
    iget-object v3, p0, Lcom/google/api/client/util/escape/PercentEscaper;->safeOctets:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/google/api/client/util/escape/PercentEscaper;->safeOctets:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 202
    .end local v2    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .restart local v2    # "c":C
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/google/api/client/util/escape/PercentEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 208
    .end local v1    # "index":I
    .end local v2    # "c":C
    :cond_2
    return-object p1
.end method

.method protected escape(I)[C
    .locals 12
    .param p1, "cp"    # I

    .line 216
    iget-object v0, p0, Lcom/google/api/client/util/escape/PercentEscaper;->safeOctets:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/api/client/util/escape/PercentEscaper;->safeOctets:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x0

    return-object v0

    .line 218
    :cond_0
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/google/api/client/util/escape/PercentEscaper;->plusForSpace:Z

    if-eqz v0, :cond_1

    .line 219
    sget-object v0, Lcom/google/api/client/util/escape/PercentEscaper;->URI_ESCAPED_SPACE:[C

    return-object v0

    .line 220
    :cond_1
    const/16 v0, 0x7f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x25

    const/4 v5, 0x3

    if-gt p1, v0, :cond_2

    .line 223
    new-array v0, v5, [C

    .line 224
    .local v0, "dest":[C
    aput-char v4, v0, v2

    .line 225
    sget-object v2, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v4, p1, 0xf

    aget-char v2, v2, v4

    aput-char v2, v0, v3

    .line 226
    sget-object v2, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    ushr-int/lit8 v3, p1, 0x4

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 227
    return-object v0

    .line 228
    .end local v0    # "dest":[C
    :cond_2
    const/16 v0, 0x7ff

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/16 v8, 0x8

    const/4 v9, 0x4

    if-gt p1, v0, :cond_3

    .line 231
    new-array v0, v7, [C

    .line 232
    .restart local v0    # "dest":[C
    aput-char v4, v0, v2

    .line 233
    aput-char v4, v0, v5

    .line 234
    sget-object v2, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v4, p1, 0xf

    aget-char v2, v2, v4

    aput-char v2, v0, v6

    .line 235
    ushr-int/2addr p1, v9

    .line 236
    sget-object v2, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v4, p1, 0x3

    or-int/2addr v4, v8

    aget-char v2, v2, v4

    aput-char v2, v0, v9

    .line 237
    ushr-int/2addr p1, v3

    .line 238
    sget-object v2, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v4, p1, 0xf

    aget-char v2, v2, v4

    aput-char v2, v0, v3

    .line 239
    ushr-int/2addr p1, v9

    .line 240
    sget-object v2, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    or-int/lit8 v3, p1, 0xc

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 241
    return-object v0

    .line 242
    .end local v0    # "dest":[C
    :cond_3
    const v0, 0xffff

    const/16 v10, 0x9

    const/4 v11, 0x7

    if-gt p1, v0, :cond_4

    .line 245
    new-array v0, v10, [C

    .line 246
    .restart local v0    # "dest":[C
    aput-char v4, v0, v2

    .line 247
    const/16 v2, 0x45

    aput-char v2, v0, v1

    .line 248
    aput-char v4, v0, v5

    .line 249
    aput-char v4, v0, v7

    .line 250
    sget-object v1, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v8

    .line 251
    ushr-int/2addr p1, v9

    .line 252
    sget-object v1, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0x3

    or-int/2addr v2, v8

    aget-char v1, v1, v2

    aput-char v1, v0, v11

    .line 253
    ushr-int/2addr p1, v3

    .line 254
    sget-object v1, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 255
    ushr-int/2addr p1, v9

    .line 256
    sget-object v1, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0x3

    or-int/2addr v2, v8

    aget-char v1, v1, v2

    aput-char v1, v0, v9

    .line 257
    ushr-int/2addr p1, v3

    .line 258
    sget-object v1, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    aget-char v1, v1, p1

    aput-char v1, v0, v3

    .line 259
    return-object v0

    .line 260
    .end local v0    # "dest":[C
    :cond_4
    const v0, 0x10ffff

    if-gt p1, v0, :cond_5

    .line 261
    const/16 v0, 0xc

    new-array v0, v0, [C

    .line 264
    .restart local v0    # "dest":[C
    aput-char v4, v0, v2

    .line 265
    const/16 v2, 0x46

    aput-char v2, v0, v1

    .line 266
    aput-char v4, v0, v5

    .line 267
    aput-char v4, v0, v7

    .line 268
    aput-char v4, v0, v10

    .line 269
    sget-object v1, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    const/16 v2, 0xb

    aput-char v1, v0, v2

    .line 270
    ushr-int/2addr p1, v9

    .line 271
    sget-object v1, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0x3

    or-int/2addr v2, v8

    aget-char v1, v1, v2

    const/16 v2, 0xa

    aput-char v1, v0, v2

    .line 272
    ushr-int/2addr p1, v3

    .line 273
    sget-object v1, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v8

    .line 274
    ushr-int/2addr p1, v9

    .line 275
    sget-object v1, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0x3

    or-int/2addr v2, v8

    aget-char v1, v1, v2

    aput-char v1, v0, v11

    .line 276
    ushr-int/2addr p1, v3

    .line 277
    sget-object v1, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 278
    ushr-int/2addr p1, v9

    .line 279
    sget-object v1, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0x3

    or-int/2addr v2, v8

    aget-char v1, v1, v2

    aput-char v1, v0, v9

    .line 280
    ushr-int/2addr p1, v3

    .line 281
    sget-object v1, Lcom/google/api/client/util/escape/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0x7

    aget-char v1, v1, v2

    aput-char v1, v0, v3

    .line 282
    return-object v0

    .line 285
    .end local v0    # "dest":[C
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid unicode character value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "end"    # I

    .line 186
    nop

    :goto_0
    if-ge p2, p3, :cond_1

    .line 187
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 188
    .local v0, "c":C
    iget-object v1, p0, Lcom/google/api/client/util/escape/PercentEscaper;->safeOctets:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/api/client/util/escape/PercentEscaper;->safeOctets:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    .line 189
    goto :goto_1

    .line 186
    .end local v0    # "c":C
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 192
    :cond_1
    :goto_1
    return p2
.end method
