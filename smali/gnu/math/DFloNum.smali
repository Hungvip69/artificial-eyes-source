.class public Lgnu/math/DFloNum;
.super Lgnu/math/RealNum;
.source "DFloNum.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final one:Lgnu/math/DFloNum;


# instance fields
.field value:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 111
    new-instance v0, Lgnu/math/DFloNum;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    sput-object v0, Lgnu/math/DFloNum;->one:Lgnu/math/DFloNum;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgnu/math/RealNum;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "value"    # D

    .line 16
    invoke-direct {p0}, Lgnu/math/RealNum;-><init>()V

    .line 17
    iput-wide p1, p0, Lgnu/math/DFloNum;->value:D

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lgnu/math/RealNum;-><init>()V

    .line 22
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 23
    .local v0, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lgnu/math/DFloNum;->value:D

    .line 37
    iget-wide v1, p0, Lgnu/math/DFloNum;->value:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 38
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lgnu/math/DFloNum;->value:D

    .line 39
    :cond_0
    return-void
.end method

.method public static asDFloNumOrNull(Ljava/lang/Object;)Lgnu/math/DFloNum;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 48
    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p0

    check-cast v0, Lgnu/math/DFloNum;

    return-object v0

    .line 50
    :cond_0
    instance-of v0, p0, Lgnu/math/RealNum;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 51
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

.method public static compare(DD)I
    .locals 1
    .param p0, "x"    # D
    .param p2, "y"    # D

    .line 152
    cmpl-double v0, p0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    cmpl-double v0, p0, p2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method public static compare(Lgnu/math/IntNum;Lgnu/math/IntNum;D)I
    .locals 7
    .param p0, "x_num"    # Lgnu/math/IntNum;
    .param p1, "x_den"    # Lgnu/math/IntNum;
    .param p2, "y"    # D

    .line 158
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    .line 159
    return v1

    .line 160
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 162
    const-wide/16 v3, 0x0

    cmpl-double v0, p2, v3

    if-ltz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 163
    .local v0, "result":I
    :goto_0
    invoke-virtual {p1}, Lgnu/math/IntNum;->isZero()Z

    move-result v3

    if-nez v3, :cond_2

    .line 164
    return v0

    .line 165
    :cond_2
    invoke-virtual {p0}, Lgnu/math/IntNum;->isZero()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 166
    return v1

    .line 167
    :cond_3
    shr-int/2addr v0, v2

    .line 168
    invoke-virtual {p0}, Lgnu/math/IntNum;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    xor-int/lit8 v1, v0, -0x1

    :goto_1
    return v1

    .line 172
    .end local v0    # "result":I
    :cond_5
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 173
    .local v0, "bits":J
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    .line 174
    .local v3, "neg":Z
    :goto_2
    const/16 v4, 0x34

    shr-long v4, v0, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0x7ff

    .line 175
    .local v4, "exp":I
    const-wide v5, 0xfffffffffffffL

    and-long/2addr v0, v5

    .line 176
    if-nez v4, :cond_7

    .line 177
    shl-long/2addr v0, v2

    goto :goto_3

    .line 179
    :cond_7
    const-wide/high16 v5, 0x10000000000000L

    or-long/2addr v0, v5

    .line 180
    :goto_3
    if-eqz v3, :cond_8

    neg-long v5, v0

    goto :goto_4

    :cond_8
    move-wide v5, v0

    :goto_4
    invoke-static {v5, v6}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v2

    .line 181
    .local v2, "y_num":Lgnu/math/IntNum;
    const/16 v5, 0x433

    if-lt v4, v5, :cond_9

    .line 182
    add-int/lit16 v5, v4, -0x433

    invoke-static {v2, v5}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v2

    goto :goto_5

    .line 184
    :cond_9
    rsub-int v5, v4, 0x433

    invoke-static {p0, v5}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    .line 185
    :goto_5
    invoke-static {v2, p1}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v5

    invoke-static {p0, v5}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v5

    return v5
.end method

.method public static make(D)Lgnu/math/DFloNum;
    .locals 1
    .param p0, "value"    # D

    .line 43
    new-instance v0, Lgnu/math/DFloNum;

    invoke-direct {v0, p0, p1}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public static final one()Lgnu/math/DFloNum;
    .locals 1

    .line 112
    sget-object v0, Lgnu/math/DFloNum;->one:Lgnu/math/DFloNum;

    return-object v0
.end method

.method public static toExact(D)Lgnu/math/RatNum;
    .locals 7
    .param p0, "value"    # D

    .line 223
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 224
    const-wide/16 v2, 0x0

    cmpl-double v0, p0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Lgnu/math/RatNum;->infinity(I)Lgnu/math/RatNum;

    move-result-object v0

    return-object v0

    .line 225
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_6

    .line 227
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 228
    .local v2, "bits":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 229
    .local v0, "neg":Z
    :goto_1
    const/16 v4, 0x34

    shr-long v4, v2, v4

    long-to-int v5, v4

    and-int/lit16 v4, v5, 0x7ff

    .line 230
    .local v4, "exp":I
    const-wide v5, 0xfffffffffffffL

    and-long/2addr v2, v5

    .line 231
    if-nez v4, :cond_3

    .line 232
    shl-long v1, v2, v1

    .end local v2    # "bits":J
    .local v1, "bits":J
    goto :goto_2

    .line 234
    .end local v1    # "bits":J
    .restart local v2    # "bits":J
    :cond_3
    const-wide/high16 v5, 0x10000000000000L

    or-long/2addr v2, v5

    move-wide v1, v2

    .line 235
    .end local v2    # "bits":J
    .restart local v1    # "bits":J
    :goto_2
    if-eqz v0, :cond_4

    neg-long v5, v1

    goto :goto_3

    :cond_4
    move-wide v5, v1

    :goto_3
    invoke-static {v5, v6}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v3

    .line 236
    .local v3, "mant":Lgnu/math/IntNum;
    const/16 v5, 0x433

    if-lt v4, v5, :cond_5

    .line 237
    add-int/lit16 v5, v4, -0x433

    invoke-static {v3, v5}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v5

    return-object v5

    .line 239
    :cond_5
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v5

    rsub-int v6, v4, 0x433

    invoke-static {v5, v6}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v5

    invoke-static {v3, v5}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v5

    return-object v5

    .line 226
    .end local v0    # "neg":Z
    .end local v1    # "bits":J
    .end local v3    # "mant":Lgnu/math/IntNum;
    .end local v4    # "exp":I
    :cond_6
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "cannot convert NaN to exact rational"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 7
    .param p1, "y"    # Ljava/lang/Object;
    .param p2, "k"    # I

    .line 81
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DFloNum;->value:D

    int-to-double v3, p2

    move-object v5, p1

    check-cast v5, Lgnu/math/RealNum;

    invoke-virtual {v5}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 83
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-eqz v0, :cond_1

    .line 85
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0, p2}, Lgnu/math/Numeric;->addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .locals 7
    .param p1, "x"    # Lgnu/math/Numeric;
    .param p2, "k"    # I

    .line 90
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lgnu/math/DFloNum;

    move-object v1, p1

    check-cast v1, Lgnu/math/RealNum;

    invoke-virtual {v1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    int-to-double v3, p2

    iget-wide v5, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    add-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 191
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_1

    .line 193
    move-object v0, p1

    check-cast v0, Lgnu/math/RatNum;

    .line 194
    .local v0, "y_rat":Lgnu/math/RatNum;
    invoke-virtual {v0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {v0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v2

    iget-wide v3, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v1, v2, v3, v4}, Lgnu/math/DFloNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;D)I

    move-result v1

    .line 195
    .local v1, "i":I
    const/4 v2, -0x1

    if-ge v1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    neg-int v2, v1

    :goto_0
    return v2

    .line 197
    .end local v0    # "y_rat":Lgnu/math/RatNum;
    .end local v1    # "i":I
    :cond_1
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    move-object v2, p1

    check-cast v2, Lgnu/math/RealNum;

    invoke-virtual {v2}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgnu/math/DFloNum;->compare(DD)I

    move-result v0

    return v0
.end method

.method public compareReversed(Lgnu/math/Numeric;)I
    .locals 5
    .param p1, "x"    # Lgnu/math/Numeric;

    .line 202
    instance-of v0, p1, Lgnu/math/RatNum;

    if-eqz v0, :cond_0

    .line 204
    move-object v0, p1

    check-cast v0, Lgnu/math/RatNum;

    .line 205
    .local v0, "x_rat":Lgnu/math/RatNum;
    invoke-virtual {v0}, Lgnu/math/RatNum;->numerator()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {v0}, Lgnu/math/RatNum;->denominator()Lgnu/math/IntNum;

    move-result-object v2

    iget-wide v3, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v1, v2, v3, v4}, Lgnu/math/DFloNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;D)I

    move-result v1

    return v1

    .line 207
    .end local v0    # "x_rat":Lgnu/math/RatNum;
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/math/RealNum;

    invoke-virtual {v0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v0, v1, v2, v3}, Lgnu/math/DFloNum;->compare(DD)I

    move-result v0

    return v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 5
    .param p1, "y"    # Ljava/lang/Object;

    .line 116
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DFloNum;->value:D

    move-object v3, p1

    check-cast v3, Lgnu/math/RealNum;

    invoke-virtual {v3}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 118
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-eqz v0, :cond_1

    .line 120
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0}, Lgnu/math/Numeric;->divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0

    .line 119
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public divReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 5
    .param p1, "x"    # Lgnu/math/Numeric;

    .line 125
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Lgnu/math/DFloNum;

    move-object v1, p1

    check-cast v1, Lgnu/math/RealNum;

    invoke-virtual {v1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    iget-wide v3, p0, Lgnu/math/DFloNum;->value:D

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final doubleValue()D
    .locals 2

    .line 57
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 73
    if-eqz p1, :cond_0

    instance-of v0, p1, Lgnu/math/DFloNum;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lgnu/math/DFloNum;

    iget-wide v0, v0, Lgnu/math/DFloNum;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 67
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public isExact()Z
    .locals 1

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public isNegative()Z
    .locals 5

    .line 137
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZero()Z
    .locals 5

    .line 217
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public longValue()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 5
    .param p1, "y"    # Ljava/lang/Object;

    .line 97
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DFloNum;->value:D

    move-object v3, p1

    check-cast v3, Lgnu/math/RealNum;

    invoke-virtual {v3}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v3

    mul-double v1, v1, v3

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 99
    :cond_0
    instance-of v0, p1, Lgnu/math/Numeric;

    if-eqz v0, :cond_1

    .line 101
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0}, Lgnu/math/Numeric;->mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public mulReversed(Lgnu/math/Numeric;)Lgnu/math/Numeric;
    .locals 5
    .param p1, "x"    # Lgnu/math/Numeric;

    .line 106
    instance-of v0, p1, Lgnu/math/RealNum;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lgnu/math/DFloNum;

    move-object v1, p1

    check-cast v1, Lgnu/math/RealNum;

    invoke-virtual {v1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    iget-wide v3, p0, Lgnu/math/DFloNum;->value:D

    mul-double v1, v1, v3

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 3

    .line 142
    new-instance v0, Lgnu/math/DFloNum;

    iget-wide v1, p0, Lgnu/math/DFloNum;->value:D

    neg-double v1, v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .locals 5
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 132
    new-instance v0, Lgnu/math/DFloNum;

    invoke-virtual {p0}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1}, Lgnu/math/IntNum;->doubleValue()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v0
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

    .line 268
    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/DFloNum;->value:D

    .line 269
    return-void
.end method

.method public sign()I
    .locals 5

    .line 147
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 244
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "+inf.0"

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    const-string v0, "-inf.0"

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "+nan.0"

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2
    .param p1, "radix"    # I

    .line 252
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lgnu/math/DFloNum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/DFloNum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    .line 262
    iget-wide v0, p0, Lgnu/math/DFloNum;->value:D

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 263
    return-void
.end method
