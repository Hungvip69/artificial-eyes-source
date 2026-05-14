.class public Lgnu/bytecode/SourceDebugExtAttr;
.super Lgnu/bytecode/Attribute;
.source "SourceDebugExtAttr.java"


# instance fields
.field curFileIndex:I

.field curFileName:Ljava/lang/String;

.field curLineIndex:I

.field data:[B

.field private defaultStratumId:Ljava/lang/String;

.field dlength:I

.field fileCount:I

.field fileIDs:[I

.field fileNames:[Ljava/lang/String;

.field lineCount:I

.field lines:[I

.field maxFileID:I

.field private outputFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 1
    .param p1, "cl"    # Lgnu/bytecode/ClassType;

    .line 193
    const-string v0, "SourceDebugExtension"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    .line 38
    iput v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    .line 194
    invoke-virtual {p0, p1}, Lgnu/bytecode/SourceDebugExtAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 195
    return-void
.end method

.method private fixLine(II)I
    .locals 7
    .param p1, "sourceLine"    # I
    .param p2, "index"    # I

    .line 44
    iget-object v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    aget v0, v0, p2

    .line 45
    .local v0, "sourceMin":I
    iget-object v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v2, p2, 0x2

    aget v1, v1, v2

    .line 46
    .local v1, "repeat":I
    const/4 v2, -0x1

    if-ge p1, v0, :cond_1

    .line 48
    if-lez p2, :cond_0

    .line 49
    return v2

    .line 50
    :cond_0
    add-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    .line 51
    .local v3, "sourceMax":I
    iget-object v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    aput p1, v4, p2

    .line 52
    iget-object v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v5, p2, 0x2

    sub-int v6, v3, p1

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 53
    iget-object v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v5, p2, 0x3

    aput p1, v4, v5

    .line 54
    move v0, p1

    .line 56
    .end local v3    # "sourceMax":I
    :cond_1
    iget-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v4, p2, 0x3

    aget v3, v3, v4

    sub-int/2addr v3, v0

    .line 57
    .local v3, "delta":I
    add-int v4, v0, v1

    if-ge p1, v4, :cond_2

    .line 58
    add-int v2, p1, v3

    return v2

    .line 59
    :cond_2
    iget v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x5

    if-eq p2, v4, :cond_4

    if-nez p2, :cond_3

    iget-object v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    if-ge p1, v4, :cond_3

    goto :goto_0

    .line 65
    :cond_3
    return v2

    .line 62
    :cond_4
    :goto_0
    iget-object v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v4, p2, 0x2

    sub-int v5, p1, v0

    add-int/lit8 v5, v5, 0x1

    aput v5, v2, v4

    .line 63
    add-int v2, p1, v3

    return v2
.end method


# virtual methods
.method addFile(Ljava/lang/String;)V
    .locals 8
    .param p1, "fname"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileName:Ljava/lang/String;

    if-eq v0, p1, :cond_9

    if-eqz p1, :cond_0

    iget-object v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 129
    :cond_0
    iput-object p1, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileName:Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lgnu/bytecode/SourceFileAttr;->fixSourceFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 133
    .local v0, "slash":I
    if-ltz v0, :cond_1

    .line 135
    move-object v1, p1

    .line 136
    .local v1, "fpath":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "fentry":Ljava/lang/String;
    goto :goto_0

    .line 140
    .end local v1    # "fentry":Ljava/lang/String;
    :cond_1
    move-object v1, p1

    .line 142
    .restart local v1    # "fentry":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    if-ltz v2, :cond_2

    iget-object v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    iget v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    return-void

    .line 145
    :cond_2
    iget v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    .line 146
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v4, -0x1

    if-ge v3, v2, :cond_4

    .line 148
    iget v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    if-eq v3, v5, :cond_3

    iget-object v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    iput v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    .line 151
    iput v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    .line 152
    return-void

    .line 146
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 156
    .end local v3    # "i":I
    :cond_4
    iget-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    if-nez v3, :cond_5

    .line 158
    const/4 v3, 0x5

    new-array v5, v3, [I

    iput-object v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    .line 159
    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    goto :goto_2

    .line 161
    :cond_5
    iget-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    array-length v3, v3

    if-lt v2, v3, :cond_6

    .line 163
    mul-int/lit8 v3, v2, 0x2

    new-array v3, v3, [I

    .line 164
    .local v3, "newIDs":[I
    mul-int/lit8 v5, v2, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 165
    .local v5, "newNames":[Ljava/lang/String;
    iget-object v6, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    const/4 v7, 0x0

    invoke-static {v6, v7, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iget-object v6, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    invoke-static {v6, v7, v5, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iput-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    .line 168
    iput-object v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    .line 172
    .end local v3    # "newIDs":[I
    .end local v5    # "newNames":[Ljava/lang/String;
    :cond_6
    :goto_2
    iget v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    .line 173
    iget v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->maxFileID:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->maxFileID:I

    .line 174
    .local v3, "id":I
    shl-int/lit8 v3, v3, 0x1

    .line 175
    if-ltz v0, :cond_7

    .line 176
    add-int/lit8 v3, v3, 0x1

    .line 177
    :cond_7
    iget-object v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    aput-object v1, v5, v2

    .line 178
    iget-object v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->outputFileName:Ljava/lang/String;

    if-nez v5, :cond_8

    .line 179
    iput-object p1, p0, Lgnu/bytecode/SourceDebugExtAttr;->outputFileName:Ljava/lang/String;

    .line 180
    :cond_8
    iget-object v5, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    aput v3, v5, v2

    .line 181
    iput v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    .line 182
    iput v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    .line 183
    return-void

    .line 128
    .end local v0    # "slash":I
    .end local v1    # "fentry":Ljava/lang/String;
    .end local v2    # "n":I
    .end local v3    # "id":I
    :cond_9
    :goto_3
    return-void
.end method

.method public addStratum(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 187
    iput-object p1, p0, Lgnu/bytecode/SourceDebugExtAttr;->defaultStratumId:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 14
    .param p1, "cl"    # Lgnu/bytecode/ClassType;

    .line 206
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 208
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 210
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "SMAP\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    iget-object v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->outputFileName:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lgnu/bytecode/SourceDebugExtAttr;->nonAsteriskString(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 212
    iget-object v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->defaultStratumId:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "Java"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->defaultStratumId:Ljava/lang/String;

    .line 213
    .local v2, "stratum":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2, v0}, Lgnu/bytecode/SourceDebugExtAttr;->nonAsteriskString(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 216
    const-string v3, "*S "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 220
    const-string v3, "*F\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_3

    .line 223
    iget-object v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    aget v4, v4, v3

    .line 224
    .local v4, "id":I
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 225
    .local v5, "with_path":Z
    :goto_2
    shr-int/lit8 v4, v4, 0x1

    .line 226
    if-eqz v5, :cond_2

    .line 227
    const-string v6, "+ "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    iget-object v6, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileNames:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 221
    .end local v4    # "id":I
    .end local v5    # "with_path":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 232
    .end local v3    # "i":I
    :cond_3
    iget v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    if-lez v3, :cond_8

    .line 234
    const/4 v3, 0x0

    .line 235
    .local v3, "prevFileID":I
    const-string v4, "*L\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v6, 0x0

    .line 239
    .local v6, "i5":I
    :cond_4
    iget-object v7, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    aget v7, v7, v6

    .line 240
    .local v7, "inputStartLine":I
    iget-object v8, p0, Lgnu/bytecode/SourceDebugExtAttr;->fileIDs:[I

    iget-object v9, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v10, v6, 0x1

    aget v9, v9, v10

    aget v8, v8, v9

    shr-int/2addr v8, v5

    .line 241
    .local v8, "lineFileID":I
    iget-object v9, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v10, v6, 0x2

    aget v9, v9, v10

    .line 242
    .local v9, "repeatCount":I
    iget-object v10, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v11, v6, 0x3

    aget v10, v10, v11

    .line 243
    .local v10, "outputStartLine":I
    iget-object v11, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v12, v6, 0x4

    aget v11, v11, v12

    .line 244
    .local v11, "outputLineIncrement":I
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 245
    if-eq v8, v3, :cond_5

    .line 247
    const/16 v12, 0x23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 248
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 249
    move v3, v8

    .line 251
    :cond_5
    const/16 v12, 0x2c

    if-eq v9, v5, :cond_6

    .line 253
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 254
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 256
    :cond_6
    const/16 v13, 0x3a

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 257
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 258
    if-eq v11, v5, :cond_7

    .line 260
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 263
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 264
    nop

    .end local v7    # "inputStartLine":I
    .end local v8    # "lineFileID":I
    .end local v9    # "repeatCount":I
    .end local v10    # "outputStartLine":I
    .end local v11    # "outputLineIncrement":I
    add-int/lit8 v6, v6, 0x5

    .line 266
    add-int/2addr v4, v5

    iget v7, p0, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    if-lt v4, v7, :cond_4

    .line 269
    .end local v3    # "prevFileID":I
    .end local v4    # "i":I
    .end local v6    # "i5":I
    :cond_8
    const-string v1, "*E\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->data:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    nop

    .line 278
    iget-object v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    array-length v1, v1

    iput v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    .line 279
    return-void

    .line 274
    :catch_0
    move-exception v1

    .line 276
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v3

    :goto_4
    goto :goto_3
.end method

.method fixLine(I)I
    .locals 7
    .param p1, "sourceLine"    # I

    .line 71
    iget v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    if-ltz v0, :cond_0

    .line 73
    iget v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/SourceDebugExtAttr;->fixLine(II)I

    move-result v0

    .line 74
    .local v0, "outLine":I
    if-ltz v0, :cond_0

    .line 75
    return v0

    .line 77
    .end local v0    # "outLine":I
    :cond_0
    const/4 v0, 0x0

    .line 78
    .local v0, "i5":I
    iget v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->curFileIndex:I

    .line 79
    .local v1, "findex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    if-ge v2, v3, :cond_2

    .line 81
    iget v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-ne v1, v3, :cond_1

    .line 83
    invoke-direct {p0, p1, v0}, Lgnu/bytecode/SourceDebugExtAttr;->fixLine(II)I

    move-result v3

    .line 84
    .local v3, "outLine":I
    if-ltz v3, :cond_1

    .line 86
    iput v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    .line 87
    return v3

    .line 90
    .end local v3    # "outLine":I
    :cond_1
    add-int/lit8 v0, v0, 0x5

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    if-nez v2, :cond_3

    .line 93
    const/16 v2, 0x14

    new-array v2, v2, [I

    iput-object v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    goto :goto_1

    .line 94
    :cond_3
    iget-object v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    array-length v2, v2

    if-lt v0, v2, :cond_4

    .line 96
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    .line 97
    .local v2, "newLines":[I
    iget-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iput-object v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    .line 101
    .end local v2    # "newLines":[I
    :cond_4
    :goto_1
    move v2, p1

    .line 102
    .local v2, "inputStartLine":I
    if-nez v0, :cond_5

    .line 103
    move v3, p1

    .local v3, "outputStartLine":I
    goto :goto_2

    .line 106
    .end local v3    # "outputStartLine":I
    :cond_5
    iget-object v3, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v4, v0, -0x5

    add-int/lit8 v4, v4, 0x3

    aget v3, v3, v4

    iget-object v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v5, v0, -0x5

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    add-int/2addr v3, v4

    .line 107
    .restart local v3    # "outputStartLine":I
    const/4 v4, 0x5

    if-ne v0, v4, :cond_6

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_6

    .line 111
    const/16 v3, 0x2710

    .line 113
    :cond_6
    move p1, v3

    .line 115
    :goto_2
    iget-object v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    aput v2, v4, v0

    .line 116
    iget-object v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v5, v0, 0x1

    aput v1, v4, v5

    .line 117
    iget-object v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v5, v0, 0x2

    const/4 v6, 0x1

    aput v6, v4, v5

    .line 118
    iget-object v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v5, v0, 0x3

    aput v3, v4, v5

    .line 119
    iget-object v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lines:[I

    add-int/lit8 v5, v0, 0x4

    aput v6, v4, v5

    .line 120
    iput v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->curLineIndex:I

    .line 121
    iget v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    add-int/2addr v4, v6

    iput v4, p0, Lgnu/bytecode/SourceDebugExtAttr;->lineCount:I

    .line 122
    return p1
.end method

.method public getLength()I
    .locals 1

    .line 283
    iget v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    return v0
.end method

.method nonAsteriskString(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;

    .line 199
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    .line 200
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 201
    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    return-void
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 5
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .line 295
    const-string v0, "Attribute \""

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lgnu/bytecode/SourceDebugExtAttr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 297
    const-string v0, "\", length:"

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 298
    iget v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 301
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    iget v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    const-string v3, "UTF-8"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 305
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "(Caught "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/Object;)V

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 307
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    iget v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    iget v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    iget v1, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 308
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 309
    :cond_0
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "dstr"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    const/4 v1, 0x0

    iget v2, p0, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 291
    return-void
.end method
