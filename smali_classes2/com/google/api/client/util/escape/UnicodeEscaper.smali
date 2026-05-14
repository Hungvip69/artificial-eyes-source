.class public abstract Lcom/google/api/client/util/escape/UnicodeEscaper;
.super Lcom/google/api/client/util/escape/Escaper;
.source "UnicodeEscaper.java"


# static fields
.field private static final DEST_PAD:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/google/api/client/util/escape/Escaper;-><init>()V

    return-void
.end method

.method protected static codePointAt(Ljava/lang/CharSequence;II)I
    .locals 7
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "end"    # I

    .line 208
    if-ge p1, p2, :cond_5

    .line 209
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "index":I
    .local v0, "index":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 210
    .local p1, "c1":C
    const v1, 0xd800

    if-lt p1, v1, :cond_4

    const v1, 0xdfff

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    const v1, 0xdbff

    const-string v2, " at index "

    const-string v3, "\' with value "

    if-gt p1, v1, :cond_3

    .line 215
    if-ne v0, p2, :cond_1

    .line 216
    neg-int v1, p1

    return v1

    .line 219
    :cond_1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 220
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 221
    invoke-static {p1, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 223
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected low surrogate but got char \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 231
    .end local v1    # "c2":C
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected low surrogate character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_4
    :goto_0
    return p1

    .line 240
    .end local v0    # "index":I
    .local p1, "index":I
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index exceeds specified range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static growBuffer([CII)[C
    .locals 2
    .param p0, "dest"    # [C
    .param p1, "index"    # I
    .param p2, "size"    # I

    .line 248
    new-array v0, p2, [C

    .line 249
    .local v0, "copy":[C
    if-lez p1, :cond_0

    .line 250
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract escape(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract escape(I)[C
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 123
    .local v0, "end":I
    invoke-static {}, Lcom/google/api/client/util/escape/Platform;->charBufferFromThreadLocal()[C

    move-result-object v1

    .line 124
    .local v1, "dest":[C
    const/4 v2, 0x0

    .line 125
    .local v2, "destIndex":I
    const/4 v3, 0x0

    .line 127
    .local v3, "unescapedChunkStart":I
    :goto_0
    const/4 v4, 0x0

    if-ge p2, v0, :cond_6

    .line 128
    invoke-static {p1, p2, v0}, Lcom/google/api/client/util/escape/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v5

    .line 129
    .local v5, "cp":I
    if-ltz v5, :cond_5

    .line 135
    invoke-virtual {p0, v5}, Lcom/google/api/client/util/escape/UnicodeEscaper;->escape(I)[C

    move-result-object v6

    .line 136
    .local v6, "escaped":[C
    invoke-static {v5}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x2

    goto :goto_1

    :cond_0
    const/4 v7, 0x1

    :goto_1
    add-int/2addr v7, p2

    .line 137
    .local v7, "nextIndex":I
    if-eqz v6, :cond_4

    .line 138
    sub-int v8, p2, v3

    .line 142
    .local v8, "charsSkipped":I
    add-int v9, v2, v8

    array-length v10, v6

    add-int/2addr v9, v10

    .line 143
    .local v9, "sizeNeeded":I
    array-length v10, v1

    if-ge v10, v9, :cond_1

    .line 144
    add-int v10, v9, v0

    sub-int/2addr v10, p2

    add-int/lit8 v10, v10, 0x20

    .line 145
    .local v10, "destLength":I
    invoke-static {v1, v2, v10}, Lcom/google/api/client/util/escape/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v1

    .line 148
    .end local v10    # "destLength":I
    :cond_1
    if-lez v8, :cond_2

    .line 149
    invoke-virtual {p1, v3, p2, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 150
    add-int/2addr v2, v8

    .line 152
    :cond_2
    array-length v10, v6

    if-lez v10, :cond_3

    .line 153
    array-length v10, v6

    invoke-static {v6, v4, v1, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    array-length v4, v6

    add-int/2addr v2, v4

    .line 157
    :cond_3
    move v3, v7

    .line 159
    .end local v8    # "charsSkipped":I
    .end local v9    # "sizeNeeded":I
    :cond_4
    invoke-virtual {p0, p1, v7, v0}, Lcom/google/api/client/util/escape/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 160
    .end local v5    # "cp":I
    .end local v6    # "escaped":[C
    .end local v7    # "nextIndex":I
    goto :goto_0

    .line 130
    .restart local v5    # "cp":I
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Trailing high surrogate at end of input"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    .end local v5    # "cp":I
    :cond_6
    sub-int v5, v0, v3

    .line 165
    .local v5, "charsSkipped":I
    if-lez v5, :cond_8

    .line 166
    add-int v6, v2, v5

    .line 167
    .local v6, "endIndex":I
    array-length v7, v1

    if-ge v7, v6, :cond_7

    .line 168
    invoke-static {v1, v2, v6}, Lcom/google/api/client/util/escape/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v1

    .line 170
    :cond_7
    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 171
    move v2, v6

    .line 173
    .end local v6    # "endIndex":I
    :cond_8
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v6
.end method

.method protected abstract nextEscapeIndex(Ljava/lang/CharSequence;II)I
.end method
