.class public Lgnu/math/FixedRealFormat;
.super Ljava/text/Format;
.source "FixedRealFormat.java"


# instance fields
.field private d:I

.field private i:I

.field public internalPad:Z

.field public overflowChar:C

.field public padChar:C

.field public scale:I

.field public showPlus:Z

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method

.method private format(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;IIIII)V
    .locals 7
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .param p2, "fpos"    # Ljava/text/FieldPosition;
    .param p3, "length"    # I
    .param p4, "digits"    # I
    .param p5, "decimals"    # I
    .param p6, "signLen"    # I
    .param p7, "oldSize"    # I

    .line 214
    add-int v0, p4, p5

    .line 216
    .local v0, "total_digits":I
    invoke-virtual {p0}, Lgnu/math/FixedRealFormat;->getMinimumIntegerDigits()I

    move-result v1

    .line 217
    .local v1, "zero_digits":I
    if-ltz p4, :cond_0

    if-le p4, v1, :cond_0

    .line 218
    const/4 v1, 0x0

    goto :goto_0

    .line 220
    :cond_0
    sub-int/2addr v1, p4

    .line 222
    :goto_0
    add-int v2, p4, v1

    if-gtz v2, :cond_2

    iget v2, p0, Lgnu/math/FixedRealFormat;->width:I

    if-lez v2, :cond_1

    iget v2, p0, Lgnu/math/FixedRealFormat;->width:I

    add-int/lit8 v3, p5, 0x1

    add-int/2addr v3, p6

    if-le v2, v3, :cond_2

    .line 224
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 225
    :cond_2
    add-int v2, p6, p3

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    .line 226
    .local v2, "needed":I
    iget v3, p0, Lgnu/math/FixedRealFormat;->width:I

    sub-int/2addr v3, v2

    .line 227
    .local v3, "padding":I
    move v4, v1

    .local v4, "i":I
    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3

    .line 228
    add-int v5, p7, p6

    const/16 v6, 0x30

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 229
    .end local v4    # "i":I
    :cond_3
    if-ltz v3, :cond_6

    .line 231
    move v4, p7

    .line 232
    .restart local v4    # "i":I
    iget-boolean v5, p0, Lgnu/math/FixedRealFormat;->internalPad:Z

    if-eqz v5, :cond_4

    if-lez p6, :cond_4

    .line 233
    add-int/lit8 v4, v4, 0x1

    .line 234
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_5

    .line 235
    iget-char v5, p0, Lgnu/math/FixedRealFormat;->padChar:C

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 236
    .end local v4    # "i":I
    :cond_5
    goto :goto_4

    .line 237
    :cond_6
    iget-char v4, p0, Lgnu/math/FixedRealFormat;->overflowChar:C

    if-eqz v4, :cond_8

    .line 239
    invoke-virtual {p1, p7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 240
    iget v4, p0, Lgnu/math/FixedRealFormat;->width:I

    iput v4, p0, Lgnu/math/FixedRealFormat;->i:I

    :goto_3
    iget v4, p0, Lgnu/math/FixedRealFormat;->i:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lgnu/math/FixedRealFormat;->i:I

    if-ltz v4, :cond_7

    .line 241
    iget-char v4, p0, Lgnu/math/FixedRealFormat;->overflowChar:C

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 242
    :cond_7
    return-void

    .line 244
    :cond_8
    :goto_4
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 245
    .local v4, "newSize":I
    sub-int v5, v4, p5

    const/16 v6, 0x2e

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 263
    return-void
.end method


# virtual methods
.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 29
    .param p1, "num"    # D
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;

    .line 68
    move-object/from16 v8, p0

    move-wide/from16 v0, p1

    move-object/from16 v9, p3

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_11

    .line 70
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgnu/math/FixedRealFormat;->getMaximumFractionDigits()I

    move-result v2

    if-ltz v2, :cond_1

    .line 71
    invoke-static/range {p1 .. p2}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v2

    move-object/from16 v10, p4

    invoke-virtual {v8, v2, v9, v10}, Lgnu/math/FixedRealFormat;->format(Lgnu/math/RealNum;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    move-wide v11, v0

    goto/16 :goto_10

    .line 75
    :cond_1
    move-object/from16 v10, p4

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    .line 77
    const/4 v2, 0x1

    .line 78
    .local v2, "negative":Z
    neg-double v0, v0

    move-wide v11, v0

    move v13, v2

    .end local p1    # "num":D
    .local v0, "num":D
    goto :goto_0

    .line 81
    .end local v0    # "num":D
    .end local v2    # "negative":Z
    .restart local p1    # "num":D
    :cond_2
    const/4 v2, 0x0

    move-wide v11, v0

    move v13, v2

    .line 82
    .end local p1    # "num":D
    .local v11, "num":D
    .local v13, "negative":Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    .line 83
    .local v14, "oldSize":I
    const/4 v0, 0x1

    .line 84
    .local v0, "signLen":I
    const/16 v1, 0x2b

    if-eqz v13, :cond_3

    .line 85
    const/16 v2, 0x2d

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 86
    :cond_3
    iget-boolean v2, v8, Lgnu/math/FixedRealFormat;->showPlus:Z

    if-eqz v2, :cond_4

    .line 87
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    :goto_1
    move v15, v0

    goto :goto_2

    .line 89
    :cond_4
    const/4 v0, 0x0

    move v15, v0

    .line 91
    .end local v0    # "signLen":I
    .local v15, "signLen":I
    :goto_2
    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "string":Ljava/lang/String;
    iget v2, v8, Lgnu/math/FixedRealFormat;->scale:I

    .line 93
    .local v2, "cur_scale":I
    const/16 v3, 0x45

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 94
    .local v7, "seenE":I
    const/4 v3, 0x0

    if-ltz v7, :cond_6

    .line 96
    add-int/lit8 v4, v7, 0x1

    .line 97
    .local v4, "expStart":I
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_5

    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 99
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v2, v1

    .line 100
    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 102
    .end local v4    # "expStart":I
    :cond_6
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 103
    .local v6, "seenDot":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 104
    .local v1, "length":I
    const/4 v4, 0x1

    if-ltz v6, :cond_7

    .line 106
    sub-int v5, v1, v6

    sub-int/2addr v5, v4

    sub-int/2addr v2, v5

    .line 107
    add-int/lit8 v1, v1, -0x1

    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 114
    .local v4, "i":I
    const/4 v5, 0x0

    .line 115
    .local v5, "initial_zeros":I
    :goto_3
    add-int/lit8 v3, v4, -0x1

    move/from16 v16, v1

    .end local v1    # "length":I
    .local v16, "length":I
    const/16 v1, 0x30

    if-ge v5, v3, :cond_8

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_8

    .line 116
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v16

    const/4 v3, 0x0

    goto :goto_3

    .line 117
    :cond_8
    if-lez v5, :cond_9

    .line 119
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    sub-int/2addr v4, v5

    move/from16 v28, v4

    move-object v4, v0

    move/from16 v0, v28

    goto :goto_4

    .line 117
    :cond_9
    move/from16 v28, v4

    move-object v4, v0

    move/from16 v0, v28

    .line 124
    .local v0, "i":I
    .local v4, "string":Ljava/lang/String;
    :goto_4
    add-int v3, v0, v2

    .line 125
    .local v3, "digits":I
    iget v1, v8, Lgnu/math/FixedRealFormat;->width:I

    if-lez v1, :cond_b

    .line 129
    :goto_5
    if-gez v3, :cond_a

    .line 131
    const/16 v1, 0x30

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    add-int/lit8 v3, v3, 0x1

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 135
    :cond_a
    iget v1, v8, Lgnu/math/FixedRealFormat;->width:I

    sub-int/2addr v1, v15

    const/16 v18, 0x1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v3

    .local v1, "decimals":I
    goto :goto_7

    .line 138
    .end local v1    # "decimals":I
    :cond_b
    const/16 v1, 0x10

    if-le v0, v1, :cond_c

    goto :goto_6

    :cond_c
    move v1, v0

    :goto_6
    sub-int/2addr v1, v3

    .line 139
    .restart local v1    # "decimals":I
    :goto_7
    if-gez v1, :cond_d

    .line 140
    const/4 v1, 0x0

    .line 141
    :cond_d
    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v18, v2

    .line 142
    .end local v2    # "cur_scale":I
    .local v18, "cur_scale":I
    :goto_8
    if-lez v18, :cond_e

    .line 144
    const/16 v2, 0x30

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 145
    add-int/lit8 v18, v18, -0x1

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 148
    :cond_e
    add-int v2, v14, v15

    .line 149
    .local v2, "digStart":I
    add-int v19, v2, v3

    move/from16 v20, v0

    .end local v0    # "i":I
    .local v20, "i":I
    add-int v0, v19, v1

    .line 150
    .local v0, "digEnd":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    .line 152
    .end local v20    # "i":I
    .local v10, "i":I
    if-lt v0, v10, :cond_f

    .line 154
    move v0, v10

    .line 155
    const/16 v19, 0x30

    move/from16 v28, v19

    move/from16 v19, v10

    move/from16 v10, v28

    .local v19, "nextDigit":C
    goto :goto_9

    .line 158
    .end local v19    # "nextDigit":C
    :cond_f
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v19

    move/from16 v28, v19

    move/from16 v19, v10

    move/from16 v10, v28

    .line 159
    .local v10, "nextDigit":C
    .local v19, "i":I
    :goto_9
    move/from16 v20, v0

    .end local v0    # "digEnd":I
    .local v20, "digEnd":I
    const/16 v0, 0x35

    if-lt v10, v0, :cond_10

    const/4 v0, 0x1

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    :goto_a
    move/from16 v21, v0

    .line 160
    .local v21, "addOne":Z
    if-eqz v21, :cond_11

    const/16 v0, 0x39

    goto :goto_b

    :cond_11
    const/16 v0, 0x30

    :goto_b
    move/from16 p2, v10

    move/from16 v10, v20

    .line 161
    .end local v20    # "digEnd":I
    .local v0, "skip":C
    .local v10, "digEnd":I
    .local p2, "nextDigit":C
    :goto_c
    move/from16 v20, v1

    .end local v1    # "decimals":I
    .local v20, "decimals":I
    add-int v1, v2, v3

    if-le v10, v1, :cond_12

    add-int/lit8 v1, v10, -0x1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_12

    .line 162
    add-int/lit8 v10, v10, -0x1

    move/from16 v1, v20

    goto :goto_c

    .line 163
    :cond_12
    sub-int v1, v10, v2

    .line 164
    .end local v16    # "length":I
    .local v1, "length":I
    sub-int v16, v1, v3

    .line 165
    .end local v20    # "decimals":I
    .local v16, "decimals":I
    if-eqz v21, :cond_13

    .line 167
    invoke-static {v9, v2, v10}, Lgnu/math/ExponentialFormat;->addOne(Ljava/lang/StringBuffer;II)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 169
    add-int/lit8 v3, v3, 0x1

    .line 170
    const/16 v16, 0x0

    .line 171
    move v1, v3

    move/from16 v28, v16

    move/from16 v16, v3

    move/from16 v3, v28

    goto :goto_d

    .line 174
    :cond_13
    move/from16 v28, v16

    move/from16 v16, v3

    move/from16 v3, v28

    .local v3, "decimals":I
    .local v16, "digits":I
    :goto_d
    if-nez v3, :cond_15

    move/from16 v20, v0

    .end local v0    # "skip":C
    .local v20, "skip":C
    iget v0, v8, Lgnu/math/FixedRealFormat;->width:I

    if-lez v0, :cond_14

    add-int v0, v15, v16

    const/16 v22, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 p1, v3

    .end local v3    # "decimals":I
    .local p1, "decimals":I
    iget v3, v8, Lgnu/math/FixedRealFormat;->width:I

    if-ge v0, v3, :cond_16

    goto :goto_e

    .end local p1    # "decimals":I
    .restart local v3    # "decimals":I
    :cond_14
    move/from16 p1, v3

    .line 177
    .end local v3    # "decimals":I
    .restart local p1    # "decimals":I
    :goto_e
    const/4 v3, 0x1

    .line 178
    .end local p1    # "decimals":I
    .restart local v3    # "decimals":I
    add-int/lit8 v1, v1, 0x1

    .line 180
    add-int v0, v2, v16

    move/from16 p1, v1

    const/16 v1, 0x30

    .end local v1    # "length":I
    .local p1, "length":I
    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move/from16 v17, p1

    move/from16 v22, v3

    goto :goto_f

    .line 174
    .end local v20    # "skip":C
    .end local p1    # "length":I
    .restart local v0    # "skip":C
    .restart local v1    # "length":I
    :cond_15
    move/from16 v20, v0

    move/from16 p1, v3

    .line 182
    .end local v0    # "skip":C
    .end local v3    # "decimals":I
    .restart local v20    # "skip":C
    .local p1, "decimals":I
    :cond_16
    move/from16 v22, p1

    move/from16 v17, v1

    .end local v1    # "length":I
    .end local p1    # "decimals":I
    .local v17, "length":I
    .local v22, "decimals":I
    :goto_f
    add-int v0, v2, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v23, v2

    .end local v2    # "digStart":I
    .local v23, "digStart":I
    move-object/from16 v2, p4

    move/from16 v3, v17

    move-object/from16 v24, v4

    .end local v4    # "string":Ljava/lang/String;
    .local v24, "string":Ljava/lang/String;
    move/from16 v4, v16

    move/from16 v25, v5

    .end local v5    # "initial_zeros":I
    .local v25, "initial_zeros":I
    move/from16 v5, v22

    move/from16 v26, v6

    .end local v6    # "seenDot":I
    .local v26, "seenDot":I
    move v6, v13

    move/from16 v27, v7

    .end local v7    # "seenE":I
    .local v27, "seenE":I
    move v7, v14

    invoke-direct/range {v0 .. v7}, Lgnu/math/FixedRealFormat;->format(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;IIIII)V

    .line 188
    .end local v10    # "digEnd":I
    .end local v13    # "negative":Z
    .end local v14    # "oldSize":I
    .end local v15    # "signLen":I
    .end local v16    # "digits":I
    .end local v17    # "length":I
    .end local v18    # "cur_scale":I
    .end local v19    # "i":I
    .end local v20    # "skip":C
    .end local v21    # "addOne":Z
    .end local v22    # "decimals":I
    .end local v23    # "digStart":I
    .end local v24    # "string":Ljava/lang/String;
    .end local v25    # "initial_zeros":I
    .end local v26    # "seenDot":I
    .end local v27    # "seenE":I
    .end local p2    # "nextDigit":C
    :goto_10
    return-object v9

    .line 69
    .end local v11    # "num":D
    .local p1, "num":D
    :cond_17
    :goto_11
    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v2

    return-object v2
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "num"    # J
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;

    .line 62
    invoke-static {p1, p2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lgnu/math/FixedRealFormat;->format(Lgnu/math/RealNum;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 63
    return-object p3
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "num"    # Ljava/lang/Object;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .param p3, "fpos"    # Ljava/text/FieldPosition;

    .line 193
    invoke-static {p1}, Lgnu/math/RealNum;->asRealNumOrNull(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v0

    .line 194
    .local v0, "rnum":Lgnu/math/RealNum;
    if-nez v0, :cond_2

    .line 196
    instance-of v1, p1, Lgnu/math/Complex;

    if-eqz v1, :cond_1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "str":Ljava/lang/String;
    iget v2, p0, Lgnu/math/FixedRealFormat;->width:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 201
    .local v2, "padding":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 202
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    return-object p2

    .line 206
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "padding":I
    :cond_1
    move-object v0, p1

    check-cast v0, Lgnu/math/RealNum;

    .line 208
    :cond_2
    invoke-virtual {v0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p2, p3}, Lgnu/math/FixedRealFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method

.method public format(Lgnu/math/RealNum;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V
    .locals 19
    .param p1, "number"    # Lgnu/math/RealNum;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .param p3, "fpos"    # Ljava/text/FieldPosition;

    .line 34
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    instance-of v0, v9, Lgnu/math/RatNum;

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lgnu/math/FixedRealFormat;->getMaximumFractionDigits()I

    move-result v0

    move v11, v0

    .local v11, "decimals":I
    if-ltz v0, :cond_3

    .line 37
    move-object v0, v9

    check-cast v0, Lgnu/math/RatNum;

    .line 38
    .local v0, "ratnum":Lgnu/math/RatNum;
    invoke-virtual {v0}, Lgnu/math/RatNum;->isNegative()Z

    move-result v12

    .line 39
    .local v12, "negative":Z
    if-eqz v12, :cond_0

    .line 40
    invoke-virtual {v0}, Lgnu/math/RatNum;->rneg()Lgnu/math/RatNum;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    .line 39
    :cond_0
    move-object v13, v0

    .line 41
    .end local v0    # "ratnum":Lgnu/math/RatNum;
    .local v13, "ratnum":Lgnu/math/RatNum;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    .line 42
    .local v14, "oldSize":I
    const/4 v0, 0x1

    .line 43
    .local v0, "signLen":I
    if-eqz v12, :cond_1

    .line 44
    const/16 v1, 0x2d

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 45
    :cond_1
    iget-boolean v1, v8, Lgnu/math/FixedRealFormat;->showPlus:Z

    if-eqz v1, :cond_2

    .line 46
    const/16 v1, 0x2b

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 49
    :goto_1
    move v15, v0

    goto :goto_2

    .line 48
    :cond_2
    const/4 v0, 0x0

    move v15, v0

    .line 49
    .end local v0    # "signLen":I
    .local v15, "signLen":I
    :goto_2
    iget v0, v8, Lgnu/math/FixedRealFormat;->scale:I

    add-int/2addr v0, v11

    invoke-static {v13, v0}, Lgnu/math/RealNum;->toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/IntNum;->toString()Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, "string":Ljava/lang/String;
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v16

    .line 53
    .local v16, "length":I
    sub-int v17, v16, v11

    .line 54
    .local v17, "digits":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v11

    move v6, v15

    move-object/from16 v18, v7

    .end local v7    # "string":Ljava/lang/String;
    .local v18, "string":Ljava/lang/String;
    move v7, v14

    invoke-direct/range {v0 .. v7}, Lgnu/math/FixedRealFormat;->format(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;IIIII)V

    .line 55
    .end local v12    # "negative":Z
    .end local v13    # "ratnum":Lgnu/math/RatNum;
    .end local v14    # "oldSize":I
    .end local v15    # "signLen":I
    .end local v16    # "length":I
    .end local v17    # "digits":I
    .end local v18    # "string":Ljava/lang/String;
    goto :goto_3

    .line 57
    .end local v11    # "decimals":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    move-object/from16 v2, p3

    invoke-virtual {v8, v0, v1, v10, v2}, Lgnu/math/FixedRealFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 58
    :goto_3
    return-void
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    .line 18
    iget v0, p0, Lgnu/math/FixedRealFormat;->d:I

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    .line 19
    iget v0, p0, Lgnu/math/FixedRealFormat;->i:I

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .line 267
    new-instance v0, Ljava/lang/Error;

    const-string v1, "RealFixedFormat.parse - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .line 271
    new-instance v0, Ljava/lang/Error;

    const-string v1, "RealFixedFormat.parseObject - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaximumFractionDigits(I)V
    .locals 0
    .param p1, "d"    # I

    .line 20
    iput p1, p0, Lgnu/math/FixedRealFormat;->d:I

    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 0
    .param p1, "i"    # I

    .line 21
    iput p1, p0, Lgnu/math/FixedRealFormat;->i:I

    return-void
.end method
