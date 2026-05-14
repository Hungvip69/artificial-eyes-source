.class public Lgnu/math/Duration;
.super Lgnu/math/Quantity;
.source "Duration.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field months:I

.field nanos:I

.field seconds:J

.field public unit:Lgnu/math/Unit;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/Duration;Lgnu/math/Duration;I)Lgnu/math/Duration;
    .locals 12
    .param p0, "x"    # Lgnu/math/Duration;
    .param p1, "y"    # Lgnu/math/Duration;
    .param p2, "k"    # I

    .line 252
    iget v0, p0, Lgnu/math/Duration;->months:I

    int-to-long v0, v0

    int-to-long v2, p2

    iget v4, p1, Lgnu/math/Duration;->months:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    .line 255
    .local v0, "months":J
    iget-wide v2, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    iget v6, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    int-to-long v6, p2

    iget-wide v8, p1, Lgnu/math/Duration;->seconds:J

    mul-long v8, v8, v4

    iget v10, p1, Lgnu/math/Duration;->nanos:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    mul-long v6, v6, v8

    add-long/2addr v2, v6

    .line 259
    .local v2, "nanos":J
    new-instance v6, Lgnu/math/Duration;

    invoke-direct {v6}, Lgnu/math/Duration;-><init>()V

    .line 260
    .local v6, "d":Lgnu/math/Duration;
    long-to-int v7, v0

    iput v7, v6, Lgnu/math/Duration;->months:I

    .line 261
    div-long v7, v2, v4

    long-to-int v8, v7

    int-to-long v7, v8

    iput-wide v7, v6, Lgnu/math/Duration;->seconds:J

    .line 262
    rem-long v4, v2, v4

    long-to-int v5, v4

    iput v5, v6, Lgnu/math/Duration;->nanos:I

    .line 263
    iget-object v4, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    iget-object v5, p1, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v5, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-eq v4, v5, :cond_0

    .line 265
    iget-object v4, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    iput-object v4, v6, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 266
    return-object v6

    .line 264
    :cond_0
    new-instance v4, Ljava/lang/ArithmeticException;

    const-string v5, "cannot add these duration types"

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static appendNanoSeconds(ILjava/lang/StringBuffer;)V
    .locals 5
    .param p0, "nanoSeconds"    # I
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 372
    if-nez p0, :cond_0

    .line 373
    return-void

    .line 374
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 375
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 376
    .local v0, "pos":I
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 377
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 378
    .local v1, "len":I
    add-int/lit8 v2, v0, 0x9

    sub-int/2addr v2, v1

    .line 379
    .local v2, "pad":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x30

    if-ltz v2, :cond_1

    .line 380
    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 381
    :cond_1
    add-int/lit8 v1, v0, 0x9

    .line 382
    :cond_2
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_2

    .line 383
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 384
    return-void
.end method

.method public static compare(Lgnu/math/Duration;Lgnu/math/Duration;)I
    .locals 9
    .param p0, "x"    # Lgnu/math/Duration;
    .param p1, "y"    # Lgnu/math/Duration;

    .line 287
    iget v0, p0, Lgnu/math/Duration;->months:I

    int-to-long v0, v0

    iget v2, p1, Lgnu/math/Duration;->months:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 288
    .local v0, "months":J
    iget-wide v2, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    iget v6, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v6, v6

    add-long/2addr v2, v6

    iget-wide v6, p1, Lgnu/math/Duration;->seconds:J

    mul-long v6, v6, v4

    iget v4, p1, Lgnu/math/Duration;->nanos:I

    int-to-long v4, v4

    add-long/2addr v6, v4

    sub-long/2addr v2, v6

    .line 290
    .local v2, "nanos":J
    const/4 v4, -0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-gez v7, :cond_0

    cmp-long v7, v2, v5

    if-gtz v7, :cond_0

    .line 291
    return v4

    .line 292
    :cond_0
    const/4 v7, 0x1

    cmp-long v8, v0, v5

    if-lez v8, :cond_1

    cmp-long v8, v2, v5

    if-ltz v8, :cond_1

    .line 293
    return v7

    .line 294
    :cond_1
    cmp-long v8, v0, v5

    if-nez v8, :cond_4

    .line 295
    cmp-long v8, v2, v5

    if-gez v8, :cond_2

    goto :goto_0

    :cond_2
    cmp-long v4, v2, v5

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 296
    :cond_4
    const/4 v4, -0x2

    return v4
.end method

.method public static div(Lgnu/math/Duration;Lgnu/math/Duration;)D
    .locals 10
    .param p0, "dur1"    # Lgnu/math/Duration;
    .param p1, "dur2"    # Lgnu/math/Duration;

    .line 217
    iget v0, p0, Lgnu/math/Duration;->months:I

    .line 218
    .local v0, "months1":I
    iget v1, p1, Lgnu/math/Duration;->months:I

    .line 219
    .local v1, "months2":I
    iget-wide v2, p0, Lgnu/math/Duration;->seconds:J

    long-to-double v2, v2

    iget v4, p0, Lgnu/math/Duration;->nanos:I

    int-to-double v4, v4

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    .line 220
    .local v2, "sec1":D
    iget-wide v4, p1, Lgnu/math/Duration;->seconds:J

    long-to-double v4, v4

    iget v8, p0, Lgnu/math/Duration;->nanos:I

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v8

    .line 221
    .local v4, "sec2":D
    const-wide/16 v6, 0x0

    if-nez v1, :cond_1

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "divide duration by zero"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 223
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 225
    if-nez v0, :cond_3

    .line 226
    div-double v6, v2, v4

    return-wide v6

    .line 228
    :cond_2
    cmpl-double v8, v4, v6

    if-nez v8, :cond_3

    .line 230
    cmpl-double v8, v2, v6

    if-nez v8, :cond_3

    .line 231
    int-to-double v6, v0

    int-to-double v8, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    return-wide v6

    .line 233
    :cond_3
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "divide of incompatible durations"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static equals(Lgnu/math/Duration;Lgnu/math/Duration;)Z
    .locals 5
    .param p0, "x"    # Lgnu/math/Duration;
    .param p1, "y"    # Lgnu/math/Duration;

    .line 512
    iget v0, p0, Lgnu/math/Duration;->months:I

    iget v1, p1, Lgnu/math/Duration;->months:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    iget-wide v2, p1, Lgnu/math/Duration;->seconds:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lgnu/math/Duration;->nanos:I

    iget v1, p1, Lgnu/math/Duration;->nanos:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static make(IJILgnu/math/Unit;)Lgnu/math/Duration;
    .locals 1
    .param p0, "months"    # I
    .param p1, "seconds"    # J
    .param p3, "nanos"    # I
    .param p4, "unit"    # Lgnu/math/Unit;

    .line 24
    new-instance v0, Lgnu/math/Duration;

    invoke-direct {v0}, Lgnu/math/Duration;-><init>()V

    .line 25
    .local v0, "d":Lgnu/math/Duration;
    iput p0, v0, Lgnu/math/Duration;->months:I

    .line 26
    iput-wide p1, v0, Lgnu/math/Duration;->seconds:J

    .line 27
    iput p3, v0, Lgnu/math/Duration;->nanos:I

    .line 28
    iput-object p4, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 29
    return-object v0
.end method

.method public static makeMinutes(I)Lgnu/math/Duration;
    .locals 3
    .param p0, "minutes"    # I

    .line 42
    new-instance v0, Lgnu/math/Duration;

    invoke-direct {v0}, Lgnu/math/Duration;-><init>()V

    .line 43
    .local v0, "d":Lgnu/math/Duration;
    sget-object v1, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    iput-object v1, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 44
    mul-int/lit8 v1, p0, 0x3c

    int-to-long v1, v1

    iput-wide v1, v0, Lgnu/math/Duration;->seconds:J

    .line 45
    return-object v0
.end method

.method public static makeMonths(I)Lgnu/math/Duration;
    .locals 2
    .param p0, "months"    # I

    .line 34
    new-instance v0, Lgnu/math/Duration;

    invoke-direct {v0}, Lgnu/math/Duration;-><init>()V

    .line 35
    .local v0, "d":Lgnu/math/Duration;
    sget-object v1, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    iput-object v1, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 36
    iput p0, v0, Lgnu/math/Duration;->months:I

    .line 37
    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "unit"    # Lgnu/math/Unit;

    .line 50
    invoke-static {p0, p1}, Lgnu/math/Duration;->valueOf(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v0

    .line 51
    .local v0, "d":Lgnu/math/Duration;
    if-eqz v0, :cond_0

    .line 53
    return-object v0

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a valid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/math/Unit;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " duration: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseDayTimeDuration(Ljava/lang/String;)Lgnu/math/Duration;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 69
    sget-object v0, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    invoke-static {p0, v0}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static parseDuration(Ljava/lang/String;)Lgnu/math/Duration;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 58
    sget-object v0, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    invoke-static {p0, v0}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method public static parseYearMonthDuration(Ljava/lang/String;)Lgnu/math/Duration;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 63
    sget-object v0, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    invoke-static {p0, v0}, Lgnu/math/Duration;->parse(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method private static scanPart(Ljava/lang/String;I)J
    .locals 12
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I

    .line 393
    move v0, p1

    .line 394
    .local v0, "i":I
    const-wide/16 v1, -0x1

    .line 395
    .local v1, "val":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 396
    .local v3, "len":I
    :goto_0
    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x0

    if-ge v0, v3, :cond_4

    .line 398
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 399
    .local v8, "ch":C
    add-int/lit8 v0, v0, 0x1

    .line 400
    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    .line 401
    .local v9, "dig":I
    if-gez v9, :cond_1

    .line 403
    cmp-long v4, v1, v6

    if-gez v4, :cond_0

    shl-int/lit8 v4, p1, 0x10

    int-to-long v4, v4

    return-wide v4

    .line 404
    :cond_0
    const/16 v4, 0x20

    shl-long v4, v1, v4

    shl-int/lit8 v6, v0, 0x10

    int-to-long v6, v6

    or-long/2addr v4, v6

    int-to-long v6, v8

    or-long/2addr v4, v6

    return-wide v4

    .line 406
    :cond_1
    cmp-long v10, v1, v6

    if-gez v10, :cond_2

    int-to-long v6, v9

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0xa

    mul-long v6, v6, v1

    int-to-long v10, v9

    add-long/2addr v6, v10

    :goto_1
    move-wide v1, v6

    .line 407
    const-wide/32 v6, 0x7fffffff

    cmp-long v10, v1, v6

    if-lez v10, :cond_3

    .line 408
    return-wide v4

    .line 409
    .end local v8    # "ch":C
    .end local v9    # "dig":I
    :cond_3
    goto :goto_0

    .line 410
    :cond_4
    cmp-long v8, v1, v6

    if-gez v8, :cond_5

    shl-int/lit8 v4, p1, 0x10

    int-to-long v4, v4

    :cond_5
    return-wide v4
.end method

.method public static times(Lgnu/math/Duration;D)Lgnu/math/Duration;
    .locals 9
    .param p0, "x"    # Lgnu/math/Duration;
    .param p1, "y"    # D

    .line 271
    iget-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v1, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-eq v0, v1, :cond_1

    .line 273
    iget v0, p0, Lgnu/math/Duration;->months:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    .line 274
    .local v0, "months":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    iget-wide v2, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v4, 0x3b9aca00

    mul-long v2, v2, v4

    iget v4, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p1

    .line 277
    .local v2, "nanos":D
    new-instance v4, Lgnu/math/Duration;

    invoke-direct {v4}, Lgnu/math/Duration;-><init>()V

    .line 278
    .local v4, "d":Lgnu/math/Duration;
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, v4, Lgnu/math/Duration;->months:I

    .line 279
    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    div-double v7, v2, v5

    double-to-int v7, v7

    int-to-long v7, v7

    iput-wide v7, v4, Lgnu/math/Duration;->seconds:J

    .line 280
    rem-double v5, v2, v5

    double-to-int v5, v5

    iput v5, v4, Lgnu/math/Duration;->nanos:I

    .line 281
    iget-object v5, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    iput-object v5, v4, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 282
    return-object v4

    .line 275
    .end local v2    # "nanos":D
    .end local v4    # "d":Lgnu/math/Duration;
    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "overflow/NaN when multiplying a duration"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    .end local v0    # "months":D
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot multiply general duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;Lgnu/math/Unit;)Lgnu/math/Duration;
    .locals 18
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "unit"    # Lgnu/math/Unit;

    .line 77
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 78
    .end local p0    # "str":Ljava/lang/String;
    .local v1, "str":Ljava/lang/String;
    const/4 v2, 0x0

    .line 79
    .local v2, "pos":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 81
    .local v3, "len":I
    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_0

    .line 83
    const/4 v4, 0x1

    .line 84
    .local v4, "negative":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v4    # "negative":Z
    :cond_0
    const/4 v4, 0x0

    .line 88
    .restart local v4    # "negative":Z
    :goto_0
    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x0

    if-ge v5, v3, :cond_1b

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x50

    if-eq v5, v7, :cond_1

    goto/16 :goto_8

    .line 90
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 91
    const/4 v5, 0x0

    .local v5, "months":I
    const/4 v7, 0x0

    .line 92
    .local v7, "nanos":I
    const-wide/16 v8, 0x0

    .line 93
    .local v8, "seconds":J
    invoke-static {v1, v2}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v10

    .line 94
    .local v10, "part":J
    long-to-int v12, v10

    shr-int/lit8 v2, v12, 0x10

    .line 95
    long-to-int v12, v10

    int-to-char v12, v12

    .line 96
    .local v12, "ch":C
    sget-object v13, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    const/16 v14, 0x59

    const/16 v15, 0x4d

    if-ne v0, v13, :cond_3

    if-eq v12, v14, :cond_2

    if-ne v12, v15, :cond_3

    .line 97
    :cond_2
    return-object v6

    .line 98
    :cond_3
    const/16 v13, 0x20

    if-ne v12, v14, :cond_4

    .line 100
    move v14, v7

    .end local v7    # "nanos":I
    .local v14, "nanos":I
    shr-long v6, v10, v13

    long-to-int v7, v6

    mul-int/lit8 v5, v7, 0xc

    .line 101
    long-to-int v6, v10

    shr-int/lit8 v2, v6, 0x10

    .line 102
    invoke-static {v1, v2}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v10

    .line 103
    long-to-int v6, v10

    int-to-char v12, v6

    goto :goto_1

    .line 98
    .end local v14    # "nanos":I
    .restart local v7    # "nanos":I
    :cond_4
    move v14, v7

    .line 105
    .end local v7    # "nanos":I
    .restart local v14    # "nanos":I
    :goto_1
    if-ne v12, v15, :cond_5

    .line 107
    int-to-long v6, v5

    shr-long v16, v10, v13

    add-long v6, v6, v16

    long-to-int v5, v6

    .line 108
    long-to-int v6, v10

    shr-int/lit8 v2, v6, 0x10

    .line 109
    invoke-static {v1, v2}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v10

    .line 110
    long-to-int v6, v10

    int-to-char v12, v6

    .line 112
    :cond_5
    sget-object v6, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v0, v6, :cond_6

    if-eq v2, v3, :cond_6

    .line 113
    const/4 v6, 0x0

    return-object v6

    .line 114
    :cond_6
    const/16 v6, 0x44

    if-ne v12, v6, :cond_8

    .line 116
    sget-object v6, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v0, v6, :cond_7

    .line 117
    const/4 v6, 0x0

    return-object v6

    .line 118
    :cond_7
    shr-long v6, v10, v13

    long-to-int v7, v6

    int-to-long v6, v7

    const-wide/32 v16, 0x15180

    mul-long v8, v6, v16

    .line 119
    long-to-int v6, v10

    shr-int/lit8 v2, v6, 0x10

    .line 120
    invoke-static {v1, v2}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v10

    .line 122
    :cond_8
    shl-int/lit8 v6, v2, 0x10

    int-to-long v6, v6

    cmp-long v16, v10, v6

    if-eqz v16, :cond_9

    .line 123
    const/4 v6, 0x0

    return-object v6

    .line 124
    :cond_9
    if-ne v2, v3, :cond_a

    move v7, v14

    goto/16 :goto_6

    .line 128
    :cond_a
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x54

    if-ne v6, v7, :cond_1a

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_b

    goto/16 :goto_7

    .line 132
    :cond_b
    sget-object v6, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v0, v6, :cond_c

    .line 133
    const/4 v6, 0x0

    return-object v6

    .line 134
    :cond_c
    invoke-static {v1, v2}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v6

    .line 135
    .end local v10    # "part":J
    .local v6, "part":J
    long-to-int v10, v6

    int-to-char v10, v10

    .line 136
    .end local v12    # "ch":C
    .local v10, "ch":C
    const/16 v11, 0x48

    if-ne v10, v11, :cond_d

    .line 138
    shr-long v11, v6, v13

    long-to-int v12, v11

    mul-int/lit16 v12, v12, 0xe10

    int-to-long v11, v12

    add-long/2addr v8, v11

    .line 139
    long-to-int v11, v6

    shr-int/lit8 v2, v11, 0x10

    .line 140
    invoke-static {v1, v2}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v6

    .line 141
    long-to-int v11, v6

    int-to-char v10, v11

    .line 143
    :cond_d
    if-ne v10, v15, :cond_e

    .line 145
    shr-long v11, v6, v13

    long-to-int v12, v11

    mul-int/lit8 v12, v12, 0x3c

    int-to-long v11, v12

    add-long/2addr v8, v11

    .line 146
    long-to-int v11, v6

    shr-int/lit8 v2, v11, 0x10

    .line 147
    invoke-static {v1, v2}, Lgnu/math/Duration;->scanPart(Ljava/lang/String;I)J

    move-result-wide v6

    .line 148
    long-to-int v11, v6

    int-to-char v10, v11

    move v12, v10

    move-wide v10, v6

    goto :goto_2

    .line 143
    :cond_e
    move v12, v10

    move-wide v10, v6

    .line 150
    .end local v6    # "part":J
    .local v10, "part":J
    .restart local v12    # "ch":C
    :goto_2
    const/16 v6, 0x2e

    const/16 v7, 0x53

    if-eq v12, v7, :cond_f

    if-ne v12, v6, :cond_10

    .line 152
    :cond_f
    shr-long v6, v10, v13

    long-to-int v7, v6

    int-to-long v6, v7

    add-long/2addr v8, v6

    .line 153
    long-to-int v6, v10

    shr-int/lit8 v2, v6, 0x10

    .line 155
    :cond_10
    const/16 v6, 0x2e

    if-ne v12, v6, :cond_16

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v3, :cond_16

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    if-ltz v6, :cond_16

    .line 158
    const/4 v6, 0x0

    .line 159
    .local v6, "nfrac":I
    :goto_3
    const/16 v13, 0x9

    if-ge v2, v3, :cond_14

    .line 161
    add-int/lit8 v15, v2, 0x1

    .end local v2    # "pos":I
    .local v15, "pos":I
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 162
    invoke-static {v12, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 163
    .local v2, "dig":I
    if-gez v2, :cond_11

    .line 164
    move v7, v14

    move v2, v15

    goto :goto_5

    .line 165
    :cond_11
    if-ge v6, v13, :cond_12

    .line 166
    mul-int/lit8 v13, v14, 0xa

    add-int/2addr v13, v2

    move v14, v13

    .end local v14    # "nanos":I
    .local v13, "nanos":I
    goto :goto_4

    .line 167
    .end local v13    # "nanos":I
    .restart local v14    # "nanos":I
    :cond_12
    if-ne v6, v13, :cond_13

    const/4 v13, 0x5

    if-lt v2, v13, :cond_13

    .line 168
    add-int/lit8 v14, v14, 0x1

    .line 159
    .end local v2    # "dig":I
    :cond_13
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move v2, v15

    goto :goto_3

    .end local v15    # "pos":I
    .local v2, "pos":I
    :cond_14
    move v7, v14

    .line 170
    .end local v14    # "nanos":I
    .restart local v7    # "nanos":I
    :goto_5
    add-int/lit8 v14, v6, 0x1

    .end local v6    # "nfrac":I
    .local v14, "nfrac":I
    if-ge v6, v13, :cond_15

    .line 171
    mul-int/lit8 v7, v7, 0xa

    move v6, v14

    goto :goto_5

    .line 172
    :cond_15
    const/16 v6, 0x53

    if-eq v12, v6, :cond_17

    .line 173
    const/4 v6, 0x0

    return-object v6

    .line 176
    .end local v7    # "nanos":I
    .local v14, "nanos":I
    :cond_16
    move v7, v14

    .end local v14    # "nanos":I
    .restart local v7    # "nanos":I
    :cond_17
    :goto_6
    if-eq v2, v3, :cond_18

    .line 177
    const/4 v6, 0x0

    return-object v6

    .line 178
    :cond_18
    new-instance v6, Lgnu/math/Duration;

    invoke-direct {v6}, Lgnu/math/Duration;-><init>()V

    .line 179
    .local v6, "d":Lgnu/math/Duration;
    if-eqz v4, :cond_19

    .line 181
    neg-int v5, v5

    .line 182
    neg-long v8, v8

    .line 183
    neg-int v7, v7

    .line 185
    :cond_19
    iput v5, v6, Lgnu/math/Duration;->months:I

    .line 186
    iput-wide v8, v6, Lgnu/math/Duration;->seconds:J

    .line 187
    iput v7, v6, Lgnu/math/Duration;->nanos:I

    .line 188
    iput-object v0, v6, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 189
    return-object v6

    .line 129
    .end local v6    # "d":Lgnu/math/Duration;
    .end local v7    # "nanos":I
    .restart local v14    # "nanos":I
    :cond_1a
    :goto_7
    const/4 v6, 0x0

    return-object v6

    .line 89
    .end local v5    # "months":I
    .end local v8    # "seconds":J
    .end local v10    # "part":J
    .end local v12    # "ch":C
    .end local v14    # "nanos":I
    :cond_1b
    :goto_8
    return-object v6
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 2
    .param p1, "y"    # Ljava/lang/Object;
    .param p2, "k"    # I

    .line 194
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_0

    .line 195
    move-object v0, p1

    check-cast v0, Lgnu/math/Duration;

    invoke-static {p0, v0, p2}, Lgnu/math/Duration;->add(Lgnu/math/Duration;Lgnu/math/Duration;I)Lgnu/math/Duration;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    instance-of v0, p1, Lgnu/math/DateTime;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 197
    move-object v1, p1

    check-cast v1, Lgnu/math/DateTime;

    invoke-static {v1, p0, v0}, Lgnu/math/DateTime;->add(Lgnu/math/DateTime;Lgnu/math/Duration;I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0

    .line 198
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 301
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_0

    .line 302
    move-object v0, p1

    check-cast v0, Lgnu/math/Duration;

    invoke-static {p0, v0}, Lgnu/math/Duration;->compare(Lgnu/math/Duration;Lgnu/math/Duration;)I

    move-result v0

    return v0

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 5
    .param p1, "y"    # Ljava/lang/Object;

    .line 238
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_1

    .line 240
    move-object v0, p1

    check-cast v0, Lgnu/math/RealNum;

    invoke-virtual {v0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    .line 241
    .local v0, "dy":D
    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    invoke-static {p0, v2, v3}, Lgnu/math/Duration;->times(Lgnu/math/Duration;D)Lgnu/math/Duration;

    move-result-object v2

    return-object v2

    .line 242
    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "divide of duration by 0 or NaN"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    .end local v0    # "dy":D
    :cond_1
    instance-of v0, p1, Lgnu/math/Duration;

    if-eqz v0, :cond_2

    .line 246
    new-instance v0, Lgnu/math/DFloNum;

    move-object v1, p1

    check-cast v1, Lgnu/math/Duration;

    invoke-static {p0, v1}, Lgnu/math/Duration;->div(Lgnu/math/Duration;Lgnu/math/Duration;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 247
    :cond_2
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 522
    if-eqz p1, :cond_1

    instance-of v0, p1, Lgnu/math/Duration;

    if-nez v0, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/math/Duration;

    invoke-static {p0, v0}, Lgnu/math/Duration;->equals(Lgnu/math/Duration;Lgnu/math/Duration;)Z

    move-result v0

    return v0

    .line 523
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDays()I
    .locals 4

    .line 426
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getHours()I
    .locals 4

    .line 431
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getMinutes()I
    .locals 4

    .line 436
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getMonths()I
    .locals 1

    .line 421
    iget v0, p0, Lgnu/math/Duration;->months:I

    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getNanoSeconds()J
    .locals 4

    .line 466
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/32 v2, 0x3b9aca00

    mul-long v0, v0, v2

    iget v2, p0, Lgnu/math/Duration;->nanos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getNanoSecondsOnly()I
    .locals 1

    .line 446
    iget v0, p0, Lgnu/math/Duration;->nanos:I

    return v0
.end method

.method public getSecondsOnly()I
    .locals 4

    .line 441
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getTotalMinutes()J
    .locals 4

    .line 461
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalMonths()I
    .locals 1

    .line 451
    iget v0, p0, Lgnu/math/Duration;->months:I

    return v0
.end method

.method public getTotalSeconds()J
    .locals 2

    .line 456
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    return-wide v0
.end method

.method public getYears()I
    .locals 1

    .line 416
    iget v0, p0, Lgnu/math/Duration;->months:I

    div-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 504
    iget v0, p0, Lgnu/math/Duration;->months:I

    iget-wide v1, p0, Lgnu/math/Duration;->seconds:J

    long-to-int v2, v1

    xor-int/2addr v0, v2

    iget v1, p0, Lgnu/math/Duration;->nanos:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isExact()Z
    .locals 1

    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public isZero()Z
    .locals 5

    .line 471
    iget v0, p0, Lgnu/math/Duration;->months:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lgnu/math/Duration;->nanos:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 2
    .param p1, "y"    # Ljava/lang/Object;

    .line 203
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 204
    move-object v0, p1

    check-cast v0, Lgnu/math/RealNum;

    invoke-virtual {v0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lgnu/math/Duration;->times(Lgnu/math/Duration;D)Lgnu/math/Duration;

    move-result-object v0

    return-object v0

    .line 205
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 2
    .param p1, "x"    # Lgnu/math/Numeric;

    .line 210
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 212
    move-object v0, p1

    check-cast v0, Lgnu/math/RealNum;

    invoke-virtual {v0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lgnu/math/Duration;->times(Lgnu/math/Duration;D)Lgnu/math/Duration;

    move-result-object v0

    return-object v0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public number()Lgnu/math/Complex;
    .locals 2

    .line 499
    new-instance v0, Ljava/lang/Error;

    const-string v1, "number needs to be implemented!"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 490
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/math/Duration;->months:I

    .line 491
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/Duration;->seconds:J

    .line 492
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/math/Duration;->nanos:I

    .line 493
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/Unit;

    iput-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    .line 494
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    .line 309
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 310
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    iget v2, v0, Lgnu/math/Duration;->months:I

    .line 311
    .local v2, "m":I
    iget-wide v3, v0, Lgnu/math/Duration;->seconds:J

    .line 312
    .local v3, "s":J
    iget v5, v0, Lgnu/math/Duration;->nanos:I

    .line 313
    .local v5, "n":I
    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    if-ltz v2, :cond_1

    cmp-long v9, v3, v7

    if-ltz v9, :cond_1

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v9, 0x1

    .line 314
    .local v9, "neg":Z
    :goto_1
    if-eqz v9, :cond_2

    .line 316
    neg-int v2, v2

    .line 317
    neg-long v3, v3

    .line 318
    neg-int v5, v5

    .line 319
    const/16 v10, 0x2d

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 321
    :cond_2
    const/16 v10, 0x50

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 322
    div-int/lit8 v10, v2, 0xc

    .line 323
    .local v10, "y":I
    if-eqz v10, :cond_3

    .line 325
    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 326
    const/16 v11, 0x59

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 327
    mul-int/lit8 v11, v10, 0xc

    sub-int/2addr v2, v11

    .line 329
    :cond_3
    const/16 v11, 0x4d

    if-eqz v2, :cond_4

    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 332
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 334
    :cond_4
    const-wide/32 v12, 0x15180

    div-long v14, v3, v12

    .line 335
    .local v14, "d":J
    cmp-long v16, v14, v7

    if-eqz v16, :cond_5

    .line 337
    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 338
    const/16 v11, 0x44

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 339
    mul-long v12, v12, v14

    sub-long/2addr v3, v12

    .line 341
    :cond_5
    cmp-long v11, v3, v7

    if-nez v11, :cond_9

    if-eqz v5, :cond_6

    goto :goto_3

    .line 365
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ne v7, v6, :cond_8

    .line 366
    iget-object v6, v0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v7, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v6, v7, :cond_7

    const-string v6, "0M"

    goto :goto_2

    :cond_7
    const-string v6, "T0S"

    :goto_2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    :cond_8
    move v6, v9

    move v13, v10

    goto :goto_4

    .line 343
    :cond_9
    :goto_3
    const/16 v6, 0x54

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    const-wide/16 v11, 0xe10

    move v6, v9

    move v13, v10

    .end local v9    # "neg":Z
    .end local v10    # "y":I
    .local v6, "neg":Z
    .local v13, "y":I
    div-long v9, v3, v11

    .line 345
    .local v9, "hr":J
    cmp-long v17, v9, v7

    if-eqz v17, :cond_a

    .line 347
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 348
    const/16 v7, 0x48

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 349
    mul-long v11, v11, v9

    sub-long/2addr v3, v11

    .line 351
    :cond_a
    const-wide/16 v7, 0x3c

    div-long v11, v3, v7

    .line 352
    .local v11, "mn":J
    const-wide/16 v17, 0x0

    cmp-long v19, v11, v17

    if-eqz v19, :cond_b

    .line 354
    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 355
    const/16 v7, 0x4d

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 356
    const-wide/16 v7, 0x3c

    mul-long v7, v7, v11

    sub-long/2addr v3, v7

    .line 358
    :cond_b
    const-wide/16 v7, 0x0

    cmp-long v16, v3, v7

    if-nez v16, :cond_c

    if-eqz v5, :cond_d

    .line 360
    :cond_c
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 361
    invoke-static {v5, v1}, Lgnu/math/Duration;->appendNanoSeconds(ILjava/lang/StringBuffer;)V

    .line 362
    const/16 v7, 0x53

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 364
    .end local v9    # "hr":J
    .end local v11    # "mn":J
    :cond_d
    nop

    .line 367
    :goto_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public unit()Lgnu/math/Unit;
    .locals 1

    .line 496
    iget-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    iget v0, p0, Lgnu/math/Duration;->months:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 482
    iget-wide v0, p0, Lgnu/math/Duration;->seconds:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 483
    iget v0, p0, Lgnu/math/Duration;->nanos:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 484
    iget-object v0, p0, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 485
    return-void
.end method
