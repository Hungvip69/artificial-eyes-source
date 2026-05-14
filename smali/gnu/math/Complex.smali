.class public abstract Lgnu/math/Complex;
.super Lgnu/math/Quantity;
.source "Complex.java"


# static fields
.field private static imMinusOne:Lgnu/math/CComplex;

.field private static imOne:Lgnu/math/CComplex;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/Complex;Lgnu/math/Complex;I)Lgnu/math/Complex;
    .locals 3
    .param p0, "x"    # Lgnu/math/Complex;
    .param p1, "y"    # Lgnu/math/Complex;
    .param p2, "k"    # I

    .line 177
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public static compare(Lgnu/math/Complex;Lgnu/math/Complex;)I
    .locals 3
    .param p0, "x"    # Lgnu/math/Complex;
    .param p1, "y"    # Lgnu/math/Complex;

    .line 126
    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->compare(Ljava/lang/Object;)I

    move-result v0

    .line 127
    .local v0, "code":I
    if-eqz v0, :cond_0

    .line 128
    return v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/math/RealNum;->compare(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public static divide(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;
    .locals 16
    .param p0, "x"    # Lgnu/math/Complex;
    .param p1, "y"    # Lgnu/math/Complex;

    .line 223
    invoke-virtual/range {p0 .. p0}, Lgnu/math/Complex;->isExact()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lgnu/math/Complex;->isExact()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    .line 228
    .local v0, "x_re":Lgnu/math/RealNum;
    invoke-virtual/range {p0 .. p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    .line 229
    .local v1, "x_im":Lgnu/math/RealNum;
    invoke-virtual/range {p1 .. p1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v2

    .line 230
    .local v2, "y_re":Lgnu/math/RealNum;
    invoke-virtual/range {p1 .. p1}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v3

    .line 232
    .local v3, "y_im":Lgnu/math/RealNum;
    invoke-static {v2, v2}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v4

    invoke-static {v3, v3}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v4

    .line 234
    .local v4, "q":Lgnu/math/RealNum;
    invoke-static {v0, v2}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v5

    invoke-static {v1, v3}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v7

    invoke-static {v5, v7, v6}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v5

    .line 236
    .local v5, "n":Lgnu/math/RealNum;
    invoke-static {v1, v2}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v6

    invoke-static {v0, v3}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v6

    .line 238
    .local v6, "d":Lgnu/math/RealNum;
    invoke-static {v5, v4}, Lgnu/math/RealNum;->divide(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v7

    invoke-static {v6, v4}, Lgnu/math/RealNum;->divide(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v8

    invoke-static {v7, v8}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v7

    return-object v7

    .line 224
    .end local v0    # "x_re":Lgnu/math/RealNum;
    .end local v1    # "x_im":Lgnu/math/RealNum;
    .end local v2    # "y_re":Lgnu/math/RealNum;
    .end local v3    # "y_im":Lgnu/math/RealNum;
    .end local v4    # "q":Lgnu/math/RealNum;
    .end local v5    # "n":Lgnu/math/RealNum;
    .end local v6    # "d":Lgnu/math/RealNum;
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v14

    invoke-static/range {v8 .. v15}, Lgnu/math/DComplex;->div(DDDD)Lgnu/math/DComplex;

    move-result-object v0

    return-object v0
.end method

.method public static equals(Lgnu/math/Complex;Lgnu/math/Complex;)Z
    .locals 2
    .param p0, "x"    # Lgnu/math/Complex;
    .param p1, "y"    # Lgnu/math/Complex;

    .line 113
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/math/RealNum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static imMinusOne()Lgnu/math/CComplex;
    .locals 3

    .line 47
    sget-object v0, Lgnu/math/Complex;->imMinusOne:Lgnu/math/CComplex;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lgnu/math/CComplex;

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    sput-object v0, Lgnu/math/Complex;->imMinusOne:Lgnu/math/CComplex;

    .line 49
    :cond_0
    sget-object v0, Lgnu/math/Complex;->imMinusOne:Lgnu/math/CComplex;

    return-object v0
.end method

.method public static imOne()Lgnu/math/CComplex;
    .locals 3

    .line 40
    sget-object v0, Lgnu/math/Complex;->imOne:Lgnu/math/CComplex;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lgnu/math/CComplex;

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    sput-object v0, Lgnu/math/Complex;->imOne:Lgnu/math/CComplex;

    .line 42
    :cond_0
    sget-object v0, Lgnu/math/Complex;->imOne:Lgnu/math/CComplex;

    return-object v0
.end method

.method public static make(DD)Lgnu/math/Complex;
    .locals 3
    .param p0, "re"    # D
    .param p2, "im"    # D

    .line 68
    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    .line 69
    new-instance v0, Lgnu/math/DFloNum;

    invoke-direct {v0, p0, p1}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 70
    :cond_0
    new-instance v0, Lgnu/math/DComplex;

    invoke-direct {v0, p0, p1, p2, p3}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v0
.end method

.method public static make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;
    .locals 5
    .param p0, "re"    # Lgnu/math/RealNum;
    .param p1, "im"    # Lgnu/math/RealNum;

    .line 59
    invoke-virtual {p1}, Lgnu/math/RealNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    return-object p0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    new-instance v0, Lgnu/math/CComplex;

    invoke-direct {v0, p0, p1}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    return-object v0

    .line 62
    :cond_2
    :goto_0
    new-instance v0, Lgnu/math/DComplex;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v0
.end method

.method public static neg(Lgnu/math/Complex;)Lgnu/math/Complex;
    .locals 2
    .param p0, "x"    # Lgnu/math/Complex;

    .line 170
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->rneg()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/RealNum;->rneg()Lgnu/math/RealNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public static polar(DD)Lgnu/math/DComplex;
    .locals 5
    .param p0, "r"    # D
    .param p2, "t"    # D

    .line 75
    new-instance v0, Lgnu/math/DComplex;

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v1, v1, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v3, v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v0
.end method

.method public static polar(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/DComplex;
    .locals 4
    .param p0, "r"    # Lgnu/math/RealNum;
    .param p1, "t"    # Lgnu/math/RealNum;

    .line 80
    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgnu/math/Complex;->polar(DD)Lgnu/math/DComplex;

    move-result-object v0

    return-object v0
.end method

.method public static power(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;
    .locals 19
    .param p0, "x"    # Lgnu/math/Complex;
    .param p1, "y"    # Lgnu/math/Complex;

    .line 85
    move-object/from16 v0, p1

    instance-of v1, v0, Lgnu/math/IntNum;

    if-eqz v1, :cond_0

    .line 86
    move-object v1, v0

    check-cast v1, Lgnu/math/IntNum;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lgnu/math/Complex;->power(Lgnu/math/IntNum;)Lgnu/math/Numeric;

    move-result-object v1

    check-cast v1, Lgnu/math/Complex;

    return-object v1

    .line 87
    :cond_0
    move-object/from16 v2, p0

    invoke-virtual/range {p0 .. p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v11

    .line 88
    .local v11, "x_re":D
    invoke-virtual/range {p0 .. p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v13

    .line 89
    .local v13, "x_im":D
    invoke-virtual/range {p1 .. p1}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v9

    .line 90
    .local v9, "y_re":D
    invoke-virtual/range {p1 .. p1}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v15

    .line 91
    .local v15, "y_im":D
    const-wide/16 v3, 0x0

    cmpl-double v1, v13, v3

    if-nez v1, :cond_2

    cmpl-double v1, v15, v3

    if-nez v1, :cond_2

    cmpl-double v1, v11, v3

    if-gez v1, :cond_1

    invoke-static {v11, v12}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    :cond_1
    new-instance v1, Lgnu/math/DFloNum;

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v1

    .line 94
    :cond_2
    move-wide v3, v11

    move-wide v5, v13

    move-wide v7, v9

    move-wide/from16 v17, v9

    .end local v9    # "y_re":D
    .local v17, "y_re":D
    move-wide v9, v15

    invoke-static/range {v3 .. v10}, Lgnu/math/DComplex;->power(DDDD)Lgnu/math/DComplex;

    move-result-object v1

    return-object v1
.end method

.method public static times(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;
    .locals 8
    .param p0, "x"    # Lgnu/math/Complex;
    .param p1, "y"    # Lgnu/math/Complex;

    .line 197
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    .line 198
    .local v0, "x_re":Lgnu/math/RealNum;
    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    .line 199
    .local v1, "x_im":Lgnu/math/RealNum;
    invoke-virtual {p1}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v2

    .line 200
    .local v2, "y_re":Lgnu/math/RealNum;
    invoke-virtual {p1}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v3

    .line 201
    .local v3, "y_im":Lgnu/math/RealNum;
    invoke-static {v0, v2}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v4

    invoke-static {v1, v3}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v4

    invoke-static {v0, v3}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v5

    invoke-static {v1, v2}, Lgnu/math/RealNum;->times(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lgnu/math/RealNum;->add(Lgnu/math/RealNum;Lgnu/math/RealNum;I)Lgnu/math/RealNum;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public abs()Lgnu/math/Numeric;
    .locals 5

    .line 100
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v1

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 1
    .param p1, "y"    # Ljava/lang/Object;
    .param p2, "k"    # I

    .line 183
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 184
    move-object v0, p1

    check-cast v0, Lgnu/math/Complex;

    invoke-static {p0, v0, p2}, Lgnu/math/Complex;->add(Lgnu/math/Complex;Lgnu/math/Complex;I)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 185
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0, p2}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .locals 1
    .param p1, "x"    # Lgnu/math/Numeric;
    .param p2, "k"    # I

    .line 190
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 191
    move-object v0, p1

    check-cast v0, Lgnu/math/Complex;

    invoke-static {v0, p0, p2}, Lgnu/math/Complex;->add(Lgnu/math/Complex;Lgnu/math/Complex;I)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public angle()Lgnu/math/RealNum;
    .locals 5

    .line 108
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v1

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 134
    instance-of v0, p1, Lgnu/math/Complex;

    if-nez v0, :cond_0

    .line 135
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0}, Lgnu/math/Numeric;->compareReversed(Lgnu/math/Numeric;)I

    move-result v0

    return v0

    .line 136
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/math/Complex;

    invoke-static {p0, v0}, Lgnu/math/Complex;->compare(Lgnu/math/Complex;Lgnu/math/Complex;)I

    move-result v0

    return v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .param p1, "y"    # Ljava/lang/Object;

    .line 243
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 244
    move-object v0, p1

    check-cast v0, Lgnu/math/Complex;

    invoke-static {p0, v0}, Lgnu/math/Complex;->divide(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method

.method public divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 1
    .param p1, "x"    # Lgnu/math/Numeric;

    .line 250
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 251
    move-object v0, p1

    check-cast v0, Lgnu/math/Complex;

    invoke-static {v0, p0}, Lgnu/math/Complex;->divide(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public doubleImagValue()D
    .locals 2

    .line 53
    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final doubleRealValue()D
    .locals 2

    .line 54
    invoke-virtual {p0}, Lgnu/math/Complex;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public doubleValue()D
    .locals 2

    .line 52
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 119
    if-eqz p1, :cond_1

    instance-of v0, p1, Lgnu/math/Complex;

    if-nez v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/math/Complex;

    invoke-static {p0, v0}, Lgnu/math/Complex;->equals(Lgnu/math/Complex;Lgnu/math/Complex;)Z

    move-result v0

    return v0

    .line 120
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public exp()Lgnu/math/Complex;
    .locals 4

    .line 257
    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgnu/math/Complex;->polar(DD)Lgnu/math/DComplex;

    move-result-object v0

    return-object v0
.end method

.method public isExact()Z
    .locals 1

    .line 13
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 141
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public log()Lgnu/math/Complex;
    .locals 4

    .line 263
    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgnu/math/DComplex;->log(DD)Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public longValue()J
    .locals 2

    .line 55
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .param p1, "y"    # Ljava/lang/Object;

    .line 209
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 210
    move-object v0, p1

    check-cast v0, Lgnu/math/Complex;

    invoke-static {p0, v0}, Lgnu/math/Complex;->times(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 211
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 1
    .param p1, "x"    # Lgnu/math/Numeric;

    .line 216
    instance-of v0, p1, Lgnu/math/Complex;

    if-eqz v0, :cond_0

    .line 217
    move-object v0, p1

    check-cast v0, Lgnu/math/Complex;

    invoke-static {v0, p0}, Lgnu/math/Complex;->times(Lgnu/math/Complex;Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 1

    .line 173
    invoke-static {p0}, Lgnu/math/Complex;->neg(Lgnu/math/Complex;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public number()Lgnu/math/Complex;
    .locals 0

    .line 8
    return-object p0
.end method

.method public sqrt()Lgnu/math/Complex;
    .locals 4

    .line 268
    invoke-virtual {p0}, Lgnu/math/Complex;->doubleRealValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleImagValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgnu/math/DComplex;->sqrt(DD)Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public toExact()Lgnu/math/Complex;
    .locals 5

    .line 18
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    .line 19
    .local v0, "re":Lgnu/math/RealNum;
    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    .line 20
    .local v1, "im":Lgnu/math/RealNum;
    invoke-virtual {v0}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v2

    .line 21
    .local v2, "xre":Lgnu/math/RatNum;
    invoke-virtual {v1}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object v3

    .line 22
    .local v3, "xim":Lgnu/math/RatNum;
    if-ne v2, v0, :cond_0

    if-ne v3, v1, :cond_0

    .line 23
    return-object p0

    .line 25
    :cond_0
    new-instance v4, Lgnu/math/CComplex;

    invoke-direct {v4, v2, v3}, Lgnu/math/CComplex;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;)V

    return-object v4
.end method

.method public bridge synthetic toExact()Lgnu/math/Numeric;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lgnu/math/Complex;->toExact()Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public toInexact()Lgnu/math/Complex;
    .locals 5

    .line 30
    invoke-virtual {p0}, Lgnu/math/Complex;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    return-object p0

    .line 32
    :cond_0
    new-instance v0, Lgnu/math/DComplex;

    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/math/DComplex;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic toInexact()Lgnu/math/Numeric;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lgnu/math/Complex;->toInexact()Lgnu/math/Complex;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3
    .param p1, "radix"    # I

    .line 158
    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/math/RealNum;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/math/RealNum;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "imString":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/RealNum;->isZero()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    return-object v0

    .line 165
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2, p1}, Lgnu/math/RealNum;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
