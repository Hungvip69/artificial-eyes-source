.class public abstract Lgnu/math/RealNum;
.super Lgnu/math/Complex;
.source "RealNum.java"

# interfaces
.implements Ljava/lang/Comparable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lgnu/math/Complex;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;
    .locals 2
    .param p0, "x"    # Lgnu/math/RealNum;
    .param p1, "y"    # Lgnu/math/RealNum;
    .param p2, "k"    # I

    .line 49
    invoke-virtual {p0, p1, p2}, Lgnu/math/RealNum;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    move-object v1, v0

    check-cast v1, Lgnu/math/RealNum;

    return-object v0
.end method

.method public static asRealNumOrNull(Ljava/lang/Object;)Lgnu/math/RealNum;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 17
    instance-of v0, p0, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 18
    move-object v0, p0

    check-cast v0, Lgnu/math/RealNum;

    return-object v0

    .line 19
    :cond_0
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p0}, Lgnu/math/RatNum;->asRatNumOrNull(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0

    .line 20
    :cond_2
    :goto_0
    new-instance v0, Lgnu/math/DFloNum;

    move-object v1, p0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public static divide(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 2
    .param p0, "x"    # Lgnu/math/RealNum;
    .param p1, "y"    # Lgnu/math/RealNum;

    .line 59
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    move-object v1, v0

    check-cast v1, Lgnu/math/RealNum;

    return-object v0
.end method

.method public static times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 2
    .param p0, "x"    # Lgnu/math/RealNum;
    .param p1, "y"    # Lgnu/math/RealNum;

    .line 54
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    move-object v1, v0

    check-cast v1, Lgnu/math/RealNum;

    return-object v0
.end method

.method public static toExactInt(D)Lgnu/math/IntNum;
    .locals 7
    .param p0, "value"    # D

    .line 138
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_6

    .line 140
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 141
    .local v0, "bits":J
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 142
    .local v2, "neg":Z
    :goto_0
    const/16 v3, 0x34

    shr-long v5, v0, v3

    long-to-int v3, v5

    and-int/lit16 v3, v3, 0x7ff

    .line 143
    .local v3, "exp":I
    const-wide v5, 0xfffffffffffffL

    and-long/2addr v0, v5

    .line 144
    if-nez v3, :cond_1

    .line 145
    shl-long/2addr v0, v4

    goto :goto_1

    .line 147
    :cond_1
    const-wide/high16 v4, 0x10000000000000L

    or-long/2addr v0, v4

    .line 148
    :goto_1
    const/16 v4, 0x433

    if-gt v3, v4, :cond_4

    .line 150
    rsub-int v4, v3, 0x433

    .line 151
    .local v4, "rshift":I
    const/16 v5, 0x35

    if-le v4, v5, :cond_2

    .line 152
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v5

    return-object v5

    .line 153
    :cond_2
    shr-long/2addr v0, v4

    .line 154
    if-eqz v2, :cond_3

    neg-long v5, v0

    goto :goto_2

    :cond_3
    move-wide v5, v0

    :goto_2
    invoke-static {v5, v6}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v5

    return-object v5

    .line 156
    .end local v4    # "rshift":I
    :cond_4
    if-eqz v2, :cond_5

    neg-long v4, v0

    goto :goto_3

    :cond_5
    move-wide v4, v0

    :goto_3
    invoke-static {v4, v5}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v4

    add-int/lit16 v5, v3, -0x433

    invoke-static {v4, v5}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v4

    return-object v4

    .line 139
    .end local v0    # "bits":J
    .end local v2    # "neg":Z
    .end local v3    # "exp":I
    :cond_6
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to exact integer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toExactInt(DI)Lgnu/math/IntNum;
    .locals 2
    .param p0, "value"    # D
    .param p2, "rounding_mode"    # I

    .line 132
    invoke-static {p0, p1, p2}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/RealNum;->toExactInt(D)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static toInt(DI)D
    .locals 3
    .param p0, "d"    # D
    .param p2, "rounding_mode"    # I

    .line 100
    packed-switch p2, :pswitch_data_0

    .line 111
    return-wide p0

    .line 109
    :pswitch_0
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    return-wide v0

    .line 107
    :pswitch_1
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 105
    :pswitch_2
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    return-wide v0

    .line 103
    :pswitch_3
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toScaledInt(DI)Lgnu/math/IntNum;
    .locals 1
    .param p0, "f"    # D
    .param p2, "k"    # I

    .line 186
    invoke-static {p0, p1}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v0

    invoke-static {v0, p2}, Lgnu/math/RealNum;->toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;
    .locals 3
    .param p0, "r"    # Lgnu/math/RatNum;
    .param p1, "k"    # I

    .line 192
    if-eqz p1, :cond_2

    .line 194
    invoke-static {}, Lgnu/math/IntNum;->ten()Lgnu/math/IntNum;

    move-result-object v0

    if-gez p1, :cond_0

    neg-int v1, p1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-static {v0, v1}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    .line 195
    .local v0, "power":Lgnu/math/IntNum;
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    .line 196
    .local v1, "num":Lgnu/math/IntNum;
    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v2

    .line 197
    .local v2, "den":Lgnu/math/IntNum;
    if-ltz p1, :cond_1

    .line 198
    invoke-static {v1, v0}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_1

    .line 200
    :cond_1
    invoke-static {v2, v0}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    .line 201
    :goto_1
    invoke-static {v1, v2}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object p0

    .line 203
    .end local v0    # "power":Lgnu/math/IntNum;
    .end local v1    # "num":Lgnu/math/IntNum;
    .end local v2    # "den":Lgnu/math/IntNum;
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lgnu/math/RatNum;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static toStringDecimal(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "dstr"    # Ljava/lang/String;

    .line 349
    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 350
    .local v1, "indexE":I
    if-gez v1, :cond_0

    .line 351
    return-object p0

    .line 352
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 354
    .local v2, "len":I
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 355
    .local v3, "ch":C
    const/16 v4, 0x79

    if-eq v3, v4, :cond_c

    const/16 v4, 0x4e

    if-ne v3, v4, :cond_1

    goto/16 :goto_6

    .line 357
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    add-int/lit8 v5, v2, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 358
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    const/4 v8, 0x1

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 359
    .local v6, "neg":Z
    :goto_0
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v7, :cond_b

    .line 365
    add-int/lit8 v9, v1, 0x2

    .line 366
    .local v9, "pos":I
    const/4 v10, 0x0

    .line 367
    .local v10, "exp":I
    :goto_1
    const/16 v11, 0x30

    if-ge v9, v2, :cond_3

    .line 368
    mul-int/lit8 v12, v10, 0xa

    add-int/lit8 v13, v9, 0x1

    .end local v9    # "pos":I
    .local v13, "pos":I
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v11

    add-int v10, v12, v9

    move v9, v13

    goto :goto_1

    .line 369
    .end local v13    # "pos":I
    .restart local v9    # "pos":I
    :cond_3
    if-eqz v6, :cond_4

    .line 370
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 371
    :cond_4
    const-string v12, "0."

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    :goto_2
    add-int/lit8 v10, v10, -0x1

    if-lez v10, :cond_5

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 373
    :cond_5
    const/4 v9, 0x0

    :goto_3
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "pos":I
    .local v12, "pos":I
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v3, v9

    if-eq v9, v0, :cond_a

    .line 375
    if-eq v3, v7, :cond_6

    const/4 v9, 0x1

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    :goto_4
    const/16 v13, 0x2e

    if-eq v3, v13, :cond_7

    const/4 v13, 0x1

    goto :goto_5

    :cond_7
    const/4 v13, 0x0

    :goto_5
    and-int/2addr v9, v13

    if-eqz v9, :cond_9

    if-ne v3, v11, :cond_8

    if-ge v12, v1, :cond_9

    .line 377
    :cond_8
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 373
    :cond_9
    move v9, v12

    goto :goto_3

    .line 379
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 361
    .end local v10    # "exp":I
    .end local v12    # "pos":I
    :cond_b
    new-instance v0, Ljava/lang/Error;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not implemented: toStringDecimal given non-negative exponent: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    .end local v4    # "sbuf":Ljava/lang/StringBuffer;
    .end local v6    # "neg":Z
    :cond_c
    :goto_6
    return-object p0
.end method

.method public static toStringScientific(Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .locals 10
    .param p0, "dstr"    # Ljava/lang/String;
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 275
    .local v1, "neg":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 277
    :cond_1
    if-eqz v1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 279
    .local v3, "pos":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 280
    .local v4, "len":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, 0x2

    const/16 v7, 0x2e

    const/16 v8, 0x30

    if-ne v5, v8, :cond_9

    .line 282
    move v5, v3

    .line 285
    .local v5, "start":I
    :goto_2
    if-ne v3, v4, :cond_3

    .line 287
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "exp":I
    goto :goto_5

    .line 291
    .end local v0    # "exp":I
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .local v2, "pos":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 292
    .local v3, "ch":C
    if-lt v3, v8, :cond_8

    const/16 v9, 0x39

    if-gt v3, v9, :cond_8

    if-ne v3, v8, :cond_4

    if-ne v2, v4, :cond_8

    .line 294
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 295
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 296
    if-ne v3, v8, :cond_5

    goto :goto_3

    :cond_5
    sub-int v0, v5, v2

    add-int/2addr v0, v6

    .line 297
    .restart local v0    # "exp":I
    :goto_3
    if-ne v2, v4, :cond_6

    .line 298
    invoke-virtual {p1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v2

    goto :goto_5

    .line 301
    :cond_6
    :goto_4
    if-ge v2, v4, :cond_7

    .line 302
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "pos":I
    .local v6, "pos":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v6

    goto :goto_4

    .line 301
    .end local v6    # "pos":I
    .restart local v2    # "pos":I
    :cond_7
    move v3, v2

    .line 307
    .end local v2    # "pos":I
    .end local v5    # "start":I
    .local v3, "pos":I
    :goto_5
    goto :goto_7

    .line 306
    .end local v0    # "exp":I
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    .restart local v5    # "start":I
    :cond_8
    move v3, v2

    goto :goto_2

    .line 311
    .end local v2    # "pos":I
    .end local v5    # "start":I
    .restart local v3    # "pos":I
    :cond_9
    if-eqz v1, :cond_a

    const/4 v2, 0x2

    :cond_a
    sub-int v0, v4, v2

    .line 312
    .local v0, "ndigits":I
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 317
    .local v2, "dot":I
    sub-int v5, v0, v4

    add-int/2addr v5, v2

    .line 318
    .local v5, "exp":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "pos":I
    .restart local v6    # "pos":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 319
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v6

    .line 320
    .end local v6    # "pos":I
    .restart local v3    # "pos":I
    :goto_6
    if-ge v3, v4, :cond_c

    .line 322
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "pos":I
    .restart local v6    # "pos":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 323
    .local v3, "ch":C
    if-eq v3, v7, :cond_b

    .line 324
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 325
    .end local v3    # "ch":C
    :cond_b
    move v3, v6

    goto :goto_6

    .line 320
    .end local v6    # "pos":I
    .local v3, "pos":I
    :cond_c
    move v0, v5

    .line 328
    .end local v2    # "dot":I
    .end local v5    # "exp":I
    .local v0, "exp":I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 329
    .end local v3    # "pos":I
    .local v2, "pos":I
    const/4 v3, -0x1

    .line 332
    .local v3, "slen":I
    :goto_8
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    .line 333
    .local v5, "ch":C
    if-ne v5, v8, :cond_d

    .line 334
    move v3, v2

    .line 341
    .end local v5    # "ch":C
    goto :goto_8

    .line 337
    .restart local v5    # "ch":C
    :cond_d
    if-ne v5, v7, :cond_e

    .line 338
    add-int/lit8 v3, v2, 0x2

    .line 342
    .end local v5    # "ch":C
    :cond_e
    if-ltz v3, :cond_f

    .line 343
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 344
    :cond_f
    return v0
.end method

.method public static toStringScientific(D)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # D

    .line 248
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringScientific(F)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # F

    .line 243
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringScientific(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "dstr"    # Ljava/lang/String;

    .line 257
    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 258
    .local v1, "indexE":I
    if-ltz v1, :cond_0

    .line 259
    return-object p0

    .line 260
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 262
    .local v2, "len":I
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 263
    .local v3, "ch":C
    const/16 v4, 0x79

    if-eq v3, v4, :cond_2

    const/16 v4, 0x4e

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    add-int/lit8 v5, v2, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 266
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    invoke-static {p0, v4}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v5

    .line 267
    .local v5, "exp":I
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 269
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 264
    .end local v4    # "sbuf":Ljava/lang/StringBuffer;
    .end local v5    # "exp":I
    :cond_2
    :goto_0
    return-object p0
.end method


# virtual methods
.method public abs()Lgnu/math/Numeric;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lgnu/math/RealNum;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public abstract add(Ljava/lang/Object;I)Lgnu/math/Numeric;
.end method

.method public asBigDecimal()Ljava/math/BigDecimal;
    .locals 3

    .line 238
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 233
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->compare(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public abstract div(Ljava/lang/Object;)Lgnu/math/Numeric;
.end method

.method public exp()Lgnu/math/Complex;
    .locals 3

    .line 161
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public final im()Lgnu/math/RealNum;
    .locals 1

    .line 13
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public abstract isNegative()Z
.end method

.method public isZero()Z
    .locals 1

    .line 76
    invoke-virtual {p0}, Lgnu/math/RealNum;->sign()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public log()Lgnu/math/Complex;
    .locals 5

    .line 166
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    .line 167
    .local v0, "x":D
    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 168
    invoke-static {v0, v1, v2, v3}, Lgnu/math/DComplex;->log(DD)Lgnu/math/Complex;

    move-result-object v2

    return-object v2

    .line 169
    :cond_0
    new-instance v2, Lgnu/math/DFloNum;

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v2
.end method

.method public max(Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 5
    .param p1, "x"    # Lgnu/math/RealNum;

    .line 31
    invoke-virtual {p0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 32
    .local v0, "exact":Z
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p0

    goto :goto_1

    :cond_1
    move-object v1, p1

    .line 33
    .local v1, "result":Lgnu/math/RealNum;
    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {v1}, Lgnu/math/RealNum;->isExact()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    new-instance v2, Lgnu/math/DFloNum;

    invoke-virtual {v1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v2

    .line 35
    :cond_2
    return-object v1
.end method

.method public min(Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 5
    .param p1, "x"    # Lgnu/math/RealNum;

    .line 40
    invoke-virtual {p0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    .local v0, "exact":Z
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    goto :goto_1

    :cond_1
    move-object v1, p0

    .line 42
    .local v1, "result":Lgnu/math/RealNum;
    :goto_1
    if-nez v0, :cond_2

    invoke-virtual {v1}, Lgnu/math/RealNum;->isExact()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    new-instance v2, Lgnu/math/DFloNum;

    invoke-virtual {v1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lgnu/math/DFloNum;-><init>(D)V

    move-object v1, v2

    .line 44
    :cond_2
    return-object v1
.end method

.method public abstract mul(Ljava/lang/Object;)Lgnu/math/Numeric;
.end method

.method public final re()Lgnu/math/RealNum;
    .locals 0

    .line 12
    return-object p0
.end method

.method public rneg()Lgnu/math/RealNum;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    return-object v0
.end method

.method public abstract sign()I
.end method

.method public final sin()Lgnu/math/Complex;
    .locals 3

    .line 172
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public final sqrt()Lgnu/math/Complex;
    .locals 5

    .line 176
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    .line 177
    .local v0, "d":D
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    .line 178
    new-instance v2, Lgnu/math/DFloNum;

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v2

    .line 180
    :cond_0
    invoke-static {v0, v1, v2, v3}, Lgnu/math/DComplex;->sqrt(DD)Lgnu/math/Complex;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic toExact()Lgnu/math/Complex;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Numeric;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public toExact()Lgnu/math/RatNum;
    .locals 2

    .line 84
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/math/DFloNum;->toExact(D)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public toExactInt(I)Lgnu/math/IntNum;
    .locals 2
    .param p1, "rounding_mode"    # I

    .line 126
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toInexact()Lgnu/math/Complex;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lgnu/math/RealNum;->toInexact()Lgnu/math/RealNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toInexact()Lgnu/math/Numeric;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lgnu/math/RealNum;->toInexact()Lgnu/math/RealNum;

    move-result-object v0

    return-object v0
.end method

.method public toInexact()Lgnu/math/RealNum;
    .locals 3

    .line 89
    invoke-virtual {p0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 92
    :cond_0
    return-object p0
.end method

.method public toInt(I)Lgnu/math/RealNum;
    .locals 3
    .param p1, "rounding_mode"    # I

    .line 120
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2, p1}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public toScaledInt(I)Lgnu/math/IntNum;
    .locals 1
    .param p1, "k"    # I

    .line 209
    invoke-virtual {p0}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/math/RealNum;->toScaledInt(Lgnu/math/RatNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method
