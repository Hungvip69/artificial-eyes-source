.class public Lgnu/math/ExponentialFormat;
.super Ljava/text/Format;
.source "ExponentialFormat.java"


# static fields
.field static final LOG10:D


# instance fields
.field public expDigits:I

.field public exponentChar:C

.field public exponentShowSign:Z

.field public fracDigits:I

.field public general:Z

.field public intDigits:I

.field public overflowChar:C

.field public padChar:C

.field public showPlus:Z

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lgnu/math/ExponentialFormat;->LOG10:D

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lgnu/math/ExponentialFormat;->fracDigits:I

    .line 31
    const/16 v0, 0x45

    iput-char v0, p0, Lgnu/math/ExponentialFormat;->exponentChar:C

    return-void
.end method

.method static addOne(Ljava/lang/StringBuffer;II)Z
    .locals 3
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "digStart"    # I
    .param p2, "digEnd"    # I

    .line 47
    move v0, p2

    .line 49
    .local v0, "j":I
    :goto_0
    if-ne v0, p1, :cond_0

    .line 51
    const/16 v1, 0x31

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 52
    const/4 v1, 0x1

    return v1

    .line 54
    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 55
    .local v1, "ch":C
    const/16 v2, 0x39

    if-eq v1, v2, :cond_1

    .line 57
    add-int/lit8 v2, v1, 0x1

    int-to-char v2, v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 58
    const/4 v2, 0x0

    return v2

    .line 60
    :cond_1
    const/16 v2, 0x30

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 61
    .end local v1    # "ch":C
    goto :goto_0
.end method


# virtual methods
.method format(DLjava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 27
    .param p1, "value"    # D
    .param p3, "dstr"    # Ljava/lang/String;
    .param p4, "sbuf"    # Ljava/lang/StringBuffer;
    .param p5, "fpos"    # Ljava/text/FieldPosition;

    .line 81
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    iget v4, v0, Lgnu/math/ExponentialFormat;->intDigits:I

    .line 82
    .local v4, "k":I
    iget v5, v0, Lgnu/math/ExponentialFormat;->fracDigits:I

    .line 83
    .local v5, "d":I
    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    cmpg-double v10, v1, v6

    if-gez v10, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 84
    .local v6, "negative":Z
    :goto_0
    if-eqz v6, :cond_1

    .line 85
    neg-double v1, v1

    .line 86
    .end local p1    # "value":D
    .local v1, "value":D
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    .line 87
    .local v7, "oldLen":I
    const/4 v10, 0x1

    .line 88
    .local v10, "signLen":I
    const/16 v11, 0x2b

    const/16 v12, 0x2d

    if-eqz v6, :cond_2

    .line 90
    if-ltz v5, :cond_4

    .line 91
    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 94
    :cond_2
    iget-boolean v13, v0, Lgnu/math/ExponentialFormat;->showPlus:Z

    if-eqz v13, :cond_3

    .line 95
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 97
    :cond_3
    const/4 v10, 0x0

    .line 100
    :cond_4
    :goto_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    .line 102
    .local v13, "digStart":I
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-nez v14, :cond_6

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v14, 0x1

    .line 103
    .local v14, "nonFinite":Z
    :goto_3
    const/16 v15, 0x3e8

    const/16 v8, 0xa

    const/16 v17, 0x2

    if-ltz v5, :cond_a

    if-eqz v14, :cond_7

    goto :goto_6

    .line 140
    :cond_7
    if-lez v4, :cond_8

    const/16 v18, 0x1

    goto :goto_4

    :cond_8
    move/from16 v18, v4

    :goto_4
    add-int v18, v5, v18

    .line 141
    .local v18, "digits":I
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v19

    sget-wide v21, Lgnu/math/ExponentialFormat;->LOG10:D

    div-double v19, v19, v21

    const-wide v21, 0x408f400000000000L    # 1000.0

    add-double v11, v19, v21

    double-to-int v11, v11

    .line 142
    .local v11, "log":I
    const/high16 v12, -0x80000000

    if-ne v11, v12, :cond_9

    .line 143
    const/4 v11, 0x0

    goto :goto_5

    .line 145
    :cond_9
    sub-int/2addr v11, v15

    .line 146
    :goto_5
    sub-int v12, v18, v11

    sub-int/2addr v12, v9

    .line 147
    .local v12, "scale":I
    invoke-static {v1, v2, v12}, Lgnu/math/RealNum;->toScaledInt(DI)Lgnu/math/IntNum;

    move-result-object v15

    invoke-virtual {v15, v8, v3}, Lgnu/math/IntNum;->format(ILjava/lang/StringBuffer;)V

    .line 148
    add-int/lit8 v15, v18, -0x1

    sub-int/2addr v15, v12

    move-object/from16 v11, p3

    move-wide/from16 v21, v1

    move/from16 v2, v18

    .local v15, "exponent":I
    goto/16 :goto_c

    .line 105
    .end local v11    # "log":I
    .end local v12    # "scale":I
    .end local v15    # "exponent":I
    .end local v18    # "digits":I
    :cond_a
    :goto_6
    if-nez p3, :cond_b

    .line 106
    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    .end local p3    # "dstr":Ljava/lang/String;
    .local v11, "dstr":Ljava/lang/String;
    goto :goto_7

    .line 105
    .end local v11    # "dstr":Ljava/lang/String;
    .restart local p3    # "dstr":Ljava/lang/String;
    :cond_b
    move-object/from16 v11, p3

    .line 107
    .end local p3    # "dstr":Ljava/lang/String;
    .restart local v11    # "dstr":Ljava/lang/String;
    :goto_7
    const/16 v12, 0x45

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 108
    .local v12, "indexE":I
    if-ltz v12, :cond_10

    .line 110
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    add-int/2addr v12, v13

    .line 112
    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v8, 0x2d

    if-ne v15, v8, :cond_c

    const/4 v15, 0x1

    goto :goto_8

    :cond_c
    const/4 v15, 0x0

    .line 113
    .local v15, "negexp":Z
    :goto_8
    const/16 v20, 0x0

    .line 114
    .local v20, "exponent":I
    if-eqz v15, :cond_d

    const/16 v21, 0x2

    goto :goto_9

    :cond_d
    const/16 v21, 0x1

    :goto_9
    add-int v21, v12, v21

    move/from16 v8, v20

    move/from16 v9, v21

    .end local v20    # "exponent":I
    .local v8, "exponent":I
    .local v9, "i":I
    :goto_a
    move-wide/from16 v21, v1

    .end local v1    # "value":D
    .local v21, "value":D
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v9, v1, :cond_e

    .line 115
    mul-int/lit8 v1, v8, 0xa

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v23, 0x30

    add-int/lit8 v2, v2, -0x30

    add-int v8, v1, v2

    .line 114
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v1, v21

    goto :goto_a

    .line 116
    .end local v9    # "i":I
    :cond_e
    if-eqz v15, :cond_f

    .line 117
    neg-int v8, v8

    .line 118
    :cond_f
    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 119
    .end local v15    # "negexp":Z
    move v15, v8

    goto :goto_b

    .line 121
    .end local v8    # "exponent":I
    .end local v21    # "value":D
    .restart local v1    # "value":D
    :cond_10
    move-wide/from16 v21, v1

    .end local v1    # "value":D
    .restart local v21    # "value":D
    invoke-static {v11, v3}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v1

    move v15, v1

    .line 122
    .local v15, "exponent":I
    :goto_b
    if-eqz v6, :cond_11

    .line 123
    add-int/lit8 v13, v13, 0x1

    .line 124
    :cond_11
    add-int/lit8 v1, v13, 0x1

    .line 126
    .local v1, "dot":I
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int/2addr v2, v13

    .line 134
    .local v2, "digits":I
    const/4 v8, 0x1

    if-le v2, v8, :cond_12

    add-int v9, v13, v2

    sub-int/2addr v9, v8

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_12

    .line 135
    add-int/lit8 v2, v2, -0x1

    add-int v8, v13, v2

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 136
    :cond_12
    sub-int v8, v2, v15

    const/4 v9, 0x1

    add-int/lit8 v12, v8, -0x1

    .line 137
    .end local v1    # "dot":I
    .local v12, "scale":I
    nop

    .line 151
    :goto_c
    add-int/lit8 v1, v4, -0x1

    sub-int/2addr v15, v1

    .line 152
    if-gez v15, :cond_13

    neg-int v1, v15

    goto :goto_d

    :cond_13
    move v1, v15

    .line 153
    .local v1, "exponentAbs":I
    :goto_d
    const/16 v9, 0x3e8

    if-lt v1, v9, :cond_14

    const/4 v9, 0x4

    goto :goto_e

    :cond_14
    const/16 v9, 0x64

    if-lt v1, v9, :cond_15

    const/4 v9, 0x3

    goto :goto_e

    :cond_15
    const/16 v9, 0xa

    if-lt v1, v9, :cond_16

    const/4 v9, 0x2

    goto :goto_e

    :cond_16
    const/4 v9, 0x1

    .line 155
    .local v9, "exponentLen":I
    :goto_e
    iget v8, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    if-le v8, v9, :cond_17

    .line 156
    iget v9, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    .line 157
    :cond_17
    const/4 v8, 0x1

    .line 158
    .local v8, "showExponent":Z
    move/from16 v19, v6

    .end local v6    # "negative":Z
    .local v19, "negative":Z
    iget-boolean v6, v0, Lgnu/math/ExponentialFormat;->general:Z

    if-nez v6, :cond_18

    const/4 v6, 0x0

    goto :goto_f

    :cond_18
    iget v6, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    if-lez v6, :cond_19

    iget v6, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    add-int/lit8 v6, v6, 0x2

    goto :goto_f

    :cond_19
    const/4 v6, 0x4

    .line 159
    .local v6, "ee":I
    :goto_f
    if-gez v5, :cond_1a

    const/16 v17, 0x1

    goto :goto_10

    :cond_1a
    const/16 v17, 0x0

    .line 160
    .local v17, "fracUnspecified":Z
    :goto_10
    move/from16 v24, v5

    .end local v5    # "d":I
    .local v24, "d":I
    iget-boolean v5, v0, Lgnu/math/ExponentialFormat;->general:Z

    if-nez v5, :cond_1c

    if-eqz v17, :cond_1b

    goto :goto_11

    :cond_1b
    move/from16 p3, v6

    move/from16 v5, v24

    goto/16 :goto_15

    .line 162
    :cond_1c
    :goto_11
    sub-int v5, v2, v12

    .line 163
    .local v5, "n":I
    if-eqz v17, :cond_1e

    .line 165
    move/from16 p3, v6

    .end local v6    # "ee":I
    .local p3, "ee":I
    const/4 v6, 0x7

    if-ge v5, v6, :cond_1d

    move v6, v5

    .line 166
    .end local v24    # "d":I
    .local v6, "d":I
    :cond_1d
    if-le v2, v6, :cond_1f

    .line 167
    move v6, v2

    goto :goto_12

    .line 163
    .end local p3    # "ee":I
    .local v6, "ee":I
    .restart local v24    # "d":I
    :cond_1e
    move/from16 p3, v6

    .end local v6    # "ee":I
    .restart local p3    # "ee":I
    move/from16 v6, v24

    .line 169
    .end local v24    # "d":I
    .local v6, "d":I
    :cond_1f
    :goto_12
    sub-int v24, v6, v5

    .line 170
    .local v24, "dd":I
    move/from16 v25, v2

    .end local v2    # "digits":I
    .local v25, "digits":I
    iget-boolean v2, v0, Lgnu/math/ExponentialFormat;->general:Z

    if-eqz v2, :cond_20

    if-ltz v5, :cond_20

    if-ltz v24, :cond_20

    .line 174
    move v2, v6

    .line 175
    .end local v25    # "digits":I
    .restart local v2    # "digits":I
    move v4, v5

    .line 176
    const/4 v8, 0x0

    move v5, v6

    goto :goto_15

    .line 178
    .end local v2    # "digits":I
    .restart local v25    # "digits":I
    :cond_20
    if-eqz v17, :cond_25

    .line 180
    iget v2, v0, Lgnu/math/ExponentialFormat;->width:I

    if-gtz v2, :cond_21

    .line 181
    move v2, v6

    .end local v25    # "digits":I
    .restart local v2    # "digits":I
    goto :goto_14

    .line 184
    .end local v2    # "digits":I
    .restart local v25    # "digits":I
    :cond_21
    iget v2, v0, Lgnu/math/ExponentialFormat;->width:I

    sub-int/2addr v2, v10

    sub-int/2addr v2, v9

    const/16 v18, 0x3

    add-int/lit8 v2, v2, -0x3

    .line 185
    .local v2, "avail":I
    move/from16 v18, v2

    .line 186
    .end local v25    # "digits":I
    .restart local v18    # "digits":I
    if-gez v4, :cond_22

    .line 187
    sub-int v18, v18, v4

    move/from16 v26, v2

    move/from16 v2, v18

    goto :goto_13

    .line 186
    :cond_22
    move/from16 v26, v2

    move/from16 v2, v18

    .line 188
    .end local v18    # "digits":I
    .local v2, "digits":I
    .local v26, "avail":I
    :goto_13
    if-le v2, v6, :cond_23

    .line 189
    move v2, v6

    .line 191
    .end local v26    # "avail":I
    :cond_23
    :goto_14
    if-gtz v2, :cond_24

    .line 192
    const/4 v2, 0x1

    move v5, v6

    goto :goto_15

    .line 191
    :cond_24
    move v5, v6

    goto :goto_15

    .line 178
    .end local v2    # "digits":I
    .restart local v25    # "digits":I
    :cond_25
    move v5, v6

    move/from16 v2, v25

    .line 196
    .end local v6    # "d":I
    .end local v24    # "dd":I
    .end local v25    # "digits":I
    .restart local v2    # "digits":I
    .local v5, "d":I
    :goto_15
    add-int v6, v13, v2

    .line 197
    .local v6, "digEnd":I
    :goto_16
    move/from16 v18, v2

    .end local v2    # "digits":I
    .restart local v18    # "digits":I
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v2, v6, :cond_26

    .line 198
    const/16 v2, 0x30

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move/from16 v2, v18

    goto :goto_16

    .line 201
    :cond_26
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ne v6, v2, :cond_27

    const/16 v2, 0x30

    goto :goto_17

    :cond_27
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 202
    .local v2, "nextDigit":C
    :goto_17
    move/from16 v24, v5

    .end local v5    # "d":I
    .local v24, "d":I
    const/16 v5, 0x35

    if-lt v2, v5, :cond_28

    const/16 v16, 0x1

    goto :goto_18

    :cond_28
    const/16 v16, 0x0

    :goto_18
    move/from16 v5, v16

    .line 205
    .local v5, "addOne":Z
    if-eqz v5, :cond_29

    invoke-static {v3, v13, v6}, Lgnu/math/ExponentialFormat;->addOne(Ljava/lang/StringBuffer;II)Z

    move-result v16

    if-eqz v16, :cond_29

    .line 206
    add-int/lit8 v12, v12, 0x1

    .line 208
    :cond_29
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v16

    sub-int v16, v16, v6

    sub-int v12, v12, v16

    .line 209
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 211
    move/from16 v16, v13

    .line 212
    .local v16, "dot":I
    if-gez v4, :cond_2b

    .line 215
    move/from16 v25, v4

    .local v25, "j":I
    :goto_19
    const/16 v20, 0x1

    add-int/lit8 v25, v25, 0x1

    if-gtz v25, :cond_2a

    .line 216
    move/from16 v26, v2

    const/16 v2, 0x30

    .end local v2    # "nextDigit":C
    .local v26, "nextDigit":C
    invoke-virtual {v3, v13, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move/from16 v2, v26

    goto :goto_19

    .line 215
    .end local v26    # "nextDigit":C
    .restart local v2    # "nextDigit":C
    :cond_2a
    move/from16 v26, v2

    .line 216
    .end local v2    # "nextDigit":C
    .end local v25    # "j":I
    .restart local v26    # "nextDigit":C
    move/from16 v2, v16

    goto :goto_1b

    .line 212
    .end local v26    # "nextDigit":C
    .restart local v2    # "nextDigit":C
    :cond_2b
    move/from16 v26, v2

    .line 221
    .end local v2    # "nextDigit":C
    .restart local v26    # "nextDigit":C
    :goto_1a
    add-int v2, v13, v4

    if-le v2, v6, :cond_2c

    .line 222
    const/16 v2, 0x30

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 221
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 223
    :cond_2c
    add-int v16, v16, v4

    move/from16 v2, v16

    .line 225
    .end local v16    # "dot":I
    .local v2, "dot":I
    :goto_1b
    if-eqz v14, :cond_2d

    .line 226
    const/4 v8, 0x0

    move/from16 v16, v5

    goto :goto_1c

    .line 228
    :cond_2d
    move/from16 v16, v5

    .end local v5    # "addOne":Z
    .local v16, "addOne":Z
    const/16 v5, 0x2e

    invoke-virtual {v3, v2, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 231
    :goto_1c
    if-eqz v8, :cond_33

    .line 234
    iget-char v5, v0, Lgnu/math/ExponentialFormat;->exponentChar:C

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 235
    iget-boolean v5, v0, Lgnu/math/ExponentialFormat;->exponentShowSign:Z

    if-nez v5, :cond_2e

    if-gez v15, :cond_30

    .line 236
    :cond_2e
    if-ltz v15, :cond_2f

    const/16 v5, 0x2b

    goto :goto_1d

    :cond_2f
    const/16 v5, 0x2d

    :goto_1d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    :cond_30
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 238
    .local v5, "i":I
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 239
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v20

    .line 240
    .local v20, "newLen":I
    move/from16 p1, v1

    .end local v1    # "exponentAbs":I
    .local p1, "exponentAbs":I
    iget v1, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    sub-int v25, v20, v5

    sub-int v1, v1, v25

    .line 241
    .local v1, "j":I
    if-lez v1, :cond_32

    .line 243
    add-int v20, v20, v1

    .line 244
    :goto_1e
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_31

    .line 245
    move/from16 p2, v1

    const/16 v1, 0x30

    .end local v1    # "j":I
    .local p2, "j":I
    invoke-virtual {v3, v5, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move/from16 v1, p2

    goto :goto_1e

    .line 244
    .end local p2    # "j":I
    .restart local v1    # "j":I
    :cond_31
    move/from16 p2, v1

    .line 247
    .end local v1    # "j":I
    :cond_32
    goto :goto_1f

    .line 250
    .end local v5    # "i":I
    .end local v20    # "newLen":I
    .end local p1    # "exponentAbs":I
    .local v1, "exponentAbs":I
    :cond_33
    move/from16 p1, v1

    .end local v1    # "exponentAbs":I
    .restart local p1    # "exponentAbs":I
    const/4 v9, 0x0

    .line 252
    :goto_1f
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 253
    .local v1, "newLen":I
    sub-int v5, v1, v7

    .line 254
    .local v5, "used":I
    move/from16 p2, v1

    .end local v1    # "newLen":I
    .local p2, "newLen":I
    iget v1, v0, Lgnu/math/ExponentialFormat;->width:I

    sub-int/2addr v1, v5

    .line 257
    .local v1, "i":I
    if-eqz v17, :cond_36

    move/from16 v20, v5

    .end local v5    # "used":I
    .local v20, "used":I
    add-int/lit8 v5, v2, 0x1

    move/from16 v25, v6

    .end local v6    # "digEnd":I
    .local v25, "digEnd":I
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-eq v5, v6, :cond_34

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    iget-char v6, v0, Lgnu/math/ExponentialFormat;->exponentChar:C

    if-ne v5, v6, :cond_37

    :cond_34
    iget v5, v0, Lgnu/math/ExponentialFormat;->width:I

    if-lez v5, :cond_35

    if-lez v1, :cond_37

    .line 261
    :cond_35
    add-int/lit8 v1, v1, -0x1

    .line 262
    add-int/lit8 v5, v2, 0x1

    const/16 v6, 0x30

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_20

    .line 257
    .end local v20    # "used":I
    .end local v25    # "digEnd":I
    .restart local v5    # "used":I
    .restart local v6    # "digEnd":I
    :cond_36
    move/from16 v20, v5

    move/from16 v25, v6

    .line 265
    .end local v5    # "used":I
    .end local v6    # "digEnd":I
    .restart local v20    # "used":I
    .restart local v25    # "digEnd":I
    :cond_37
    :goto_20
    if-gez v1, :cond_38

    iget v5, v0, Lgnu/math/ExponentialFormat;->width:I

    if-gtz v5, :cond_39

    :cond_38
    if-eqz v8, :cond_3c

    iget v5, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    if-le v9, v5, :cond_3c

    iget v5, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    if-lez v5, :cond_3c

    iget-char v5, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    if-nez v5, :cond_39

    goto :goto_22

    .line 289
    :cond_39
    iget-char v5, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    if-eqz v5, :cond_3b

    .line 291
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 292
    iget v1, v0, Lgnu/math/ExponentialFormat;->width:I

    :goto_21
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3a

    .line 293
    iget-char v5, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_21

    .line 292
    :cond_3a
    move/from16 v6, p3

    goto :goto_25

    .line 289
    :cond_3b
    move/from16 v6, p3

    goto :goto_25

    .line 270
    :cond_3c
    :goto_22
    if-gtz v4, :cond_3e

    if-gtz v1, :cond_3d

    iget v5, v0, Lgnu/math/ExponentialFormat;->width:I

    if-gtz v5, :cond_3e

    .line 272
    :cond_3d
    const/16 v5, 0x30

    invoke-virtual {v3, v13, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 273
    add-int/lit8 v1, v1, -0x1

    .line 275
    :cond_3e
    if-nez v8, :cond_3f

    iget v5, v0, Lgnu/math/ExponentialFormat;->width:I

    if-lez v5, :cond_3f

    move/from16 v6, p3

    .line 282
    .end local p3    # "ee":I
    .local v6, "ee":I
    :goto_23
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_40

    .line 283
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 282
    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    .line 286
    .end local v6    # "ee":I
    .restart local p3    # "ee":I
    :cond_3f
    move/from16 v6, p3

    .end local p3    # "ee":I
    .restart local v6    # "ee":I
    :cond_40
    :goto_24
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_41

    .line 287
    iget-char v5, v0, Lgnu/math/ExponentialFormat;->padChar:C

    invoke-virtual {v3, v7, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_24

    .line 295
    :cond_41
    :goto_25
    return-object v3
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7
    .param p1, "value"    # D
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;

    .line 74
    iget v0, p0, Lgnu/math/ExponentialFormat;->fracDigits:I

    if-gez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(FLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6
    .param p1, "value"    # F
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .param p3, "fpos"    # Ljava/text/FieldPosition;

    .line 67
    float-to-double v1, p1

    iget v0, p0, Lgnu/math/ExponentialFormat;->fracDigits:I

    if-gez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "num"    # J
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;

    .line 300
    long-to-double v0, p1

    invoke-virtual {p0, v0, v1, p3, p4}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "num"    # Ljava/lang/Object;
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;
    .param p3, "fpos"    # Ljava/text/FieldPosition;

    .line 306
    move-object v0, p1

    check-cast v0, Lgnu/math/RealNum;

    invoke-virtual {v0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .line 311
    new-instance v0, Ljava/lang/Error;

    const-string v1, "ExponentialFormat.parse - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/text/ParsePosition;

    .line 315
    new-instance v0, Ljava/lang/Error;

    const-string v1, "ExponentialFormat.parseObject - not implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
