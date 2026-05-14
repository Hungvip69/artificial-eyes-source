.class public abstract Lgnu/math/RatNum;
.super Lgnu/math/RealNum;
.source "RatNum.java"


# static fields
.field public static final ten_exp_9:Lgnu/math/IntNum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const v0, 0x3b9aca00

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/math/RatNum;->ten_exp_9:Lgnu/math/IntNum;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lgnu/math/RealNum;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/RatNum;Lgnu/math/RatNum;I)Lgnu/math/RatNum;
    .locals 6
    .param p0, "x"    # Lgnu/math/RatNum;
    .param p1, "y"    # Lgnu/math/RatNum;
    .param p2, "k"    # I

    .line 108
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    .line 109
    .local v0, "x_num":Lgnu/math/IntNum;
    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    .line 110
    .local v1, "x_den":Lgnu/math/IntNum;
    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v2

    .line 111
    .local v2, "y_num":Lgnu/math/IntNum;
    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v3

    .line 112
    .local v3, "y_den":Lgnu/math/IntNum;
    invoke-static {v1, v3}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-static {v0, v2, p2}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v4, v1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v4

    return-object v4

    .line 114
    :cond_0
    invoke-static {v3, v0}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v2, v1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v5

    invoke-static {v4, v5, p2}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v1, v3}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v4

    return-object v4
.end method

.method public static asRatNumOrNull(Ljava/lang/Object;)Lgnu/math/RatNum;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 59
    instance-of v0, p0, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 60
    move-object v0, p0

    check-cast v0, Lgnu/math/RatNum;

    return-object v0

    .line 61
    :cond_0
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_1

    .line 62
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-static {v0}, Lgnu/math/RatNum;->valueOf(Ljava/math/BigDecimal;)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0

    .line 63
    :cond_1
    invoke-static {p0}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static compare(Lgnu/math/RatNum;Lgnu/math/RatNum;)I
    .locals 3
    .param p0, "x"    # Lgnu/math/RatNum;
    .param p1, "y"    # Lgnu/math/RatNum;

    .line 87
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v0

    return v0
.end method

.method public static divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;
    .locals 3
    .param p0, "x"    # Lgnu/math/RatNum;
    .param p1, "y"    # Lgnu/math/RatNum;

    .line 134
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public static equals(Lgnu/math/RatNum;Lgnu/math/RatNum;)Z
    .locals 2
    .param p0, "x"    # Lgnu/math/RatNum;
    .param p1, "y"    # Lgnu/math/RatNum;

    .line 94
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->equals(Lgnu/math/IntNum;Lgnu/math/IntNum;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static infinity(I)Lgnu/math/RatNum;
    .locals 3
    .param p0, "sign"    # I

    .line 82
    new-instance v0, Lgnu/math/IntFraction;

    invoke-static {p0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgnu/math/IntFraction;-><init>(Lgnu/math/IntNum;Lgnu/math/IntNum;)V

    return-object v0
.end method

.method public static make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;
    .locals 2
    .param p0, "num"    # Lgnu/math/IntNum;
    .param p1, "den"    # Lgnu/math/IntNum;

    .line 16
    invoke-static {p0, p1}, Lgnu/math/IntNum;->gcd(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    .line 17
    .local v0, "g":Lgnu/math/IntNum;
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-static {v0}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    .line 19
    :cond_0
    invoke-virtual {v0}, Lgnu/math/IntNum;->isOne()Z

    move-result v1

    if-nez v1, :cond_1

    .line 21
    invoke-static {p0, v0}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p0

    .line 22
    invoke-static {p1, v0}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    .line 24
    :cond_1
    invoke-virtual {p1}, Lgnu/math/IntNum;->isOne()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p0

    goto :goto_0

    :cond_2
    new-instance v1, Lgnu/math/IntFraction;

    invoke-direct {v1, p0, p1}, Lgnu/math/IntFraction;-><init>(Lgnu/math/IntNum;Lgnu/math/IntNum;)V

    :goto_0
    return-object v1
.end method

.method public static neg(Lgnu/math/RatNum;)Lgnu/math/RatNum;
    .locals 3
    .param p0, "x"    # Lgnu/math/RatNum;

    .line 121
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    .line 122
    .local v0, "x_num":Lgnu/math/IntNum;
    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    .line 123
    .local v1, "x_den":Lgnu/math/IntNum;
    invoke-static {v0}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v2, v1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v2

    return-object v2
.end method

.method public static rationalize(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 2
    .param p0, "x"    # Lgnu/math/RealNum;
    .param p1, "y"    # Lgnu/math/RealNum;

    .line 182
    invoke-virtual {p0, p1}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {p1, p0}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    invoke-virtual {p1, p0}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    return-object p0

    .line 186
    :cond_1
    invoke-virtual {p0}, Lgnu/math/RealNum;->sign()I

    move-result v0

    if-lez v0, :cond_2

    .line 187
    invoke-static {p0, p1}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v0

    return-object v0

    .line 188
    :cond_2
    invoke-virtual {p1}, Lgnu/math/RealNum;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {p1}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    invoke-virtual {p0}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object v1

    check-cast v1, Lgnu/math/RealNum;

    invoke-static {v0, v1}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/RealNum;->neg()Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    return-object v0

    .line 192
    :cond_3
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method private static simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;
    .locals 7
    .param p0, "x"    # Lgnu/math/RealNum;
    .param p1, "y"    # Lgnu/math/RealNum;

    .line 197
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v1

    .line 198
    .local v1, "fx":Lgnu/math/RealNum;
    invoke-virtual {p1, v0}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v2

    .line 199
    .local v2, "fy":Lgnu/math/RealNum;
    invoke-virtual {p0, v1}, Lgnu/math/RealNum;->grt(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    return-object v1

    .line 201
    :cond_0
    invoke-virtual {v1, v2}, Lgnu/math/RealNum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v3

    invoke-virtual {p1, v2}, Lgnu/math/RealNum;->sub(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/math/IntNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v3

    check-cast v3, Lgnu/math/RealNum;

    .line 204
    .local v3, "n":Lgnu/math/RealNum;
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v4

    invoke-virtual {p0, v1}, Lgnu/math/RealNum;->sub(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/math/IntNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v4

    check-cast v4, Lgnu/math/RealNum;

    .line 205
    .local v4, "d":Lgnu/math/RealNum;
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v5

    invoke-static {v3, v4}, Lgnu/math/RatNum;->simplest_rational2(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/math/IntNum;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v5

    invoke-virtual {v1, v5, v0}, Lgnu/math/RealNum;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    return-object v0

    .line 209
    .end local v3    # "n":Lgnu/math/RealNum;
    .end local v4    # "d":Lgnu/math/RealNum;
    :cond_1
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lgnu/math/RealNum;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/RealNum;

    return-object v0
.end method

.method public static times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;
    .locals 3
    .param p0, "x"    # Lgnu/math/RatNum;
    .param p1, "y"    # Lgnu/math/RatNum;

    .line 128
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/math/BigDecimal;)Lgnu/math/RatNum;
    .locals 5
    .param p0, "value"    # Ljava/math/BigDecimal;

    .line 31
    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    .line 32
    .local v0, "v":Lgnu/math/RatNum;
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    .line 33
    .local v2, "scale":I
    :goto_0
    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 34
    sget-object v3, Lgnu/math/RatNum;->ten_exp_9:Lgnu/math/IntNum;

    invoke-static {v0, v3}, Lgnu/math/RatNum;->divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v0

    .line 33
    add-int/lit8 v2, v2, -0x9

    goto :goto_0

    .line 35
    :cond_0
    :goto_1
    const/16 v3, -0x9

    if-gt v2, v3, :cond_1

    .line 36
    sget-object v3, Lgnu/math/RatNum;->ten_exp_9:Lgnu/math/IntNum;

    invoke-static {v0, v3}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v0

    .line 35
    add-int/lit8 v2, v2, 0x9

    goto :goto_1

    .line 38
    :cond_1
    if-lez v2, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    neg-int v3, v2

    :goto_2
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    move-object v1, v4

    .line 49
    .local v1, "scaleVal":Lgnu/math/IntNum;
    return-object v0

    .line 38
    .end local v1    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_0
    move-object v1, v4

    .line 47
    .restart local v1    # "scaleVal":Lgnu/math/IntNum;
    const v3, 0x5f5e100

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_3

    .line 38
    .end local v1    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_1
    move-object v1, v4

    .line 46
    .restart local v1    # "scaleVal":Lgnu/math/IntNum;
    const v3, 0x989680

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_3

    .line 38
    .end local v1    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_2
    move-object v1, v4

    .line 45
    .restart local v1    # "scaleVal":Lgnu/math/IntNum;
    const v3, 0xf4240

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_3

    .line 38
    .end local v1    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_3
    move-object v1, v4

    .line 44
    .restart local v1    # "scaleVal":Lgnu/math/IntNum;
    const v3, 0x186a0

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_3

    .line 38
    .end local v1    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_4
    move-object v1, v4

    .line 43
    .restart local v1    # "scaleVal":Lgnu/math/IntNum;
    const/16 v3, 0x2710

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_3

    .line 38
    .end local v1    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_5
    move-object v1, v4

    .line 42
    .restart local v1    # "scaleVal":Lgnu/math/IntNum;
    const/16 v3, 0x3e8

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_3

    .line 38
    .end local v1    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_6
    move-object v1, v4

    .line 41
    .restart local v1    # "scaleVal":Lgnu/math/IntNum;
    const/16 v3, 0x64

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_3

    .line 40
    .end local v1    # "scaleVal":Lgnu/math/IntNum;
    :pswitch_7
    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    .line 51
    .restart local v1    # "scaleVal":Lgnu/math/IntNum;
    :goto_3
    if-lez v2, :cond_3

    .line 52
    invoke-static {v0, v1}, Lgnu/math/RatNum;->divide(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v3

    return-object v3

    .line 54
    :cond_3
    invoke-static {v0, v1}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract denominator()Lgnu/math/IntNum;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 101
    if-eqz p1, :cond_1

    instance-of v0, p1, Lgnu/math/RatNum;

    if-nez v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/math/RatNum;

    invoke-static {p0, v0}, Lgnu/math/RatNum;->equals(Lgnu/math/RatNum;Lgnu/math/RatNum;)Z

    move-result v0

    return v0

    .line 102
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExact()Z
    .locals 1

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/IntNum;->isZero()Z

    move-result v0

    return v0
.end method

.method public abstract numerator()Lgnu/math/IntNum;
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .locals 7
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 141
    invoke-virtual {p1}, Lgnu/math/IntNum;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 144
    .local v0, "inv":Z
    invoke-static {p1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object p1

    goto :goto_0

    .line 147
    .end local v0    # "inv":Z
    :cond_0
    const/4 v0, 0x0

    .line 148
    .restart local v0    # "inv":Z
    :goto_0
    iget-object v1, p1, Lgnu/math/IntNum;->words:[I

    if-nez v1, :cond_2

    .line 150
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    iget v2, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {v1, v2}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v1

    .line 151
    .local v1, "num":Lgnu/math/IntNum;
    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v2

    iget v3, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {v2, v3}, Lgnu/math/IntNum;->power(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v2

    .line 152
    .local v2, "den":Lgnu/math/IntNum;
    if-eqz v0, :cond_1

    invoke-static {v2, v1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-static {v1, v2}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v3

    :goto_1
    return-object v3

    .line 154
    .end local v1    # "num":Lgnu/math/IntNum;
    .end local v2    # "den":Lgnu/math/IntNum;
    :cond_2
    invoke-virtual {p0}, Lgnu/math/RatNum;->doubleValue()D

    move-result-wide v1

    .line 155
    .local v1, "d":D
    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_3

    invoke-virtual {p1}, Lgnu/math/IntNum;->isOdd()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 156
    .local v3, "neg":Z
    :goto_2
    invoke-virtual {p1}, Lgnu/math/IntNum;->doubleValue()D

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 157
    if-eqz v0, :cond_4

    .line 158
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v1, v4, v1

    .line 159
    :cond_4
    new-instance v4, Lgnu/math/DFloNum;

    if-eqz v3, :cond_5

    neg-double v5, v1

    goto :goto_3

    :cond_5
    move-wide v5, v1

    :goto_3
    invoke-direct {v4, v5, v6}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v4
.end method

.method public final rneg()Lgnu/math/RatNum;
    .locals 1

    .line 76
    invoke-static {p0}, Lgnu/math/RatNum;->neg(Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rneg()Lgnu/math/RealNum;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lgnu/math/RatNum;->rneg()Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Complex;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lgnu/math/RatNum;->toExact()Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toExact()Lgnu/math/Numeric;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lgnu/math/RatNum;->toExact()Lgnu/math/RatNum;

    move-result-object v0

    return-object v0
.end method

.method public final toExact()Lgnu/math/RatNum;
    .locals 0

    .line 164
    return-object p0
.end method

.method public toExactInt(I)Lgnu/math/IntNum;
    .locals 2
    .param p1, "rounding_mode"    # I

    .line 174
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public toInt(I)Lgnu/math/RealNum;
    .locals 2
    .param p1, "rounding_mode"    # I

    .line 169
    invoke-virtual {p0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method
