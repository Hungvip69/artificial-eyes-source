.class public abstract Lgnu/math/Quantity;
.super Lgnu/math/Numeric;
.source "Quantity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lgnu/math/Numeric;-><init>()V

    return-void
.end method

.method public static add(Lgnu/math/Quantity;Lgnu/math/Quantity;I)Lgnu/math/Quantity;
    .locals 10
    .param p0, "x"    # Lgnu/math/Quantity;
    .param p1, "y"    # Lgnu/math/Quantity;
    .param p2, "k"    # I

    .line 129
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lgnu/math/Complex;->add(Lgnu/math/Complex;Lgnu/math/Complex;I)Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lgnu/math/Quantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 135
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Unit;->doubleValue()D

    move-result-wide v0

    .line 136
    .local v0, "x_factor":D
    invoke-virtual {p0}, Lgnu/math/Quantity;->reValue()D

    move-result-wide v2

    int-to-double v4, p2

    invoke-virtual {p1}, Lgnu/math/Quantity;->reValue()D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    div-double/2addr v2, v0

    .line 137
    .local v2, "re":D
    invoke-virtual {p0}, Lgnu/math/Quantity;->imValue()D

    move-result-wide v4

    int-to-double v6, p2

    invoke-virtual {p1}, Lgnu/math/Quantity;->imValue()D

    move-result-wide v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    div-double/2addr v4, v0

    .line 138
    .local v4, "im":D
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lgnu/math/Quantity;->make(DDLgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v6

    return-object v6

    .line 132
    .end local v0    # "x_factor":D
    .end local v2    # "re":D
    .end local v4    # "im":D
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "units mis-match"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compare(Lgnu/math/Quantity;Lgnu/math/Quantity;)I
    .locals 5
    .param p0, "x"    # Lgnu/math/Quantity;
    .param p1, "y"    # Lgnu/math/Quantity;

    .line 106
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Complex;->compare(Lgnu/math/Complex;Lgnu/math/Complex;)I

    move-result v0

    return v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lgnu/math/Quantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->dimensions()Lgnu/math/Dimensions;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lgnu/math/Quantity;->imValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->imValue()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lgnu/math/Quantity;->reValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->reValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lgnu/math/DFloNum;->compare(DD)I

    move-result v0

    return v0

    .line 109
    :cond_2
    :goto_0
    const/4 v0, -0x3

    return v0
.end method

.method public static divide(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;
    .locals 3
    .param p0, "x"    # Lgnu/math/Quantity;
    .param p1, "y"    # Lgnu/math/Quantity;

    .line 180
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Unit;->divide(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v0

    .line 181
    .local v0, "unit":Lgnu/math/Unit;
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/math/Complex;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    .line 182
    .local v1, "num":Lgnu/math/Numeric;
    move-object v2, v1

    check-cast v2, Lgnu/math/Complex;

    invoke-static {v2, v0}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v2

    return-object v2
.end method

.method public static make(DDLgnu/math/Unit;)Lgnu/math/Quantity;
    .locals 3
    .param p0, "re"    # D
    .param p2, "im"    # D
    .param p4, "unit"    # Lgnu/math/Unit;

    .line 73
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p4, v0, :cond_0

    .line 74
    invoke-static {p0, p1, p2, p3}, Lgnu/math/Complex;->make(DD)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_1

    .line 76
    new-instance v0, Lgnu/math/DQuantity;

    invoke-direct {v0, p0, p1, p4}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    return-object v0

    .line 77
    :cond_1
    new-instance v0, Lgnu/math/CQuantity;

    new-instance v1, Lgnu/math/DFloNum;

    invoke-direct {v1, p0, p1}, Lgnu/math/DFloNum;-><init>(D)V

    new-instance v2, Lgnu/math/DFloNum;

    invoke-direct {v2, p2, p3}, Lgnu/math/DFloNum;-><init>(D)V

    invoke-direct {v0, v1, v2, p4}, Lgnu/math/CQuantity;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;Lgnu/math/Unit;)V

    return-object v0
.end method

.method public static make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;
    .locals 3
    .param p0, "x"    # Lgnu/math/Complex;
    .param p1, "u"    # Lgnu/math/Unit;

    .line 55
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p1, v0, :cond_0

    .line 56
    return-object p0

    .line 57
    :cond_0
    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lgnu/math/DQuantity;

    invoke-virtual {p0}, Lgnu/math/Complex;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    return-object v0

    .line 59
    :cond_1
    new-instance v0, Lgnu/math/CQuantity;

    invoke-direct {v0, p0, p1}, Lgnu/math/CQuantity;-><init>(Lgnu/math/Complex;Lgnu/math/Unit;)V

    return-object v0
.end method

.method public static make(Lgnu/math/RealNum;Lgnu/math/RealNum;Lgnu/math/Unit;)Lgnu/math/Quantity;
    .locals 3
    .param p0, "re"    # Lgnu/math/RealNum;
    .param p1, "im"    # Lgnu/math/RealNum;
    .param p2, "unit"    # Lgnu/math/Unit;

    .line 64
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p2, v0, :cond_0

    .line 65
    invoke-static {p0, p1}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    invoke-virtual {p1}, Lgnu/math/RealNum;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lgnu/math/RealNum;->isExact()Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    :cond_1
    new-instance v0, Lgnu/math/DQuantity;

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2, p2}, Lgnu/math/DQuantity;-><init>(DLgnu/math/Unit;)V

    return-object v0

    .line 68
    :cond_2
    new-instance v0, Lgnu/math/CQuantity;

    invoke-direct {v0, p0, p1, p2}, Lgnu/math/CQuantity;-><init>(Lgnu/math/RealNum;Lgnu/math/RealNum;Lgnu/math/Unit;)V

    return-object v0
.end method

.method public static times(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;
    .locals 3
    .param p0, "x"    # Lgnu/math/Quantity;
    .param p1, "y"    # Lgnu/math/Quantity;

    .line 158
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Unit;->times(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v0

    .line 160
    .local v0, "unit":Lgnu/math/Unit;
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/math/Complex;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    .line 161
    .local v1, "num":Lgnu/math/Numeric;
    move-object v2, v1

    check-cast v2, Lgnu/math/Complex;

    invoke-static {v2, v0}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public abs()Lgnu/math/Numeric;
    .locals 2

    .line 102
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Complex;->abs()Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/Complex;

    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 1
    .param p1, "y"    # Ljava/lang/Object;
    .param p2, "k"    # I

    .line 144
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 145
    move-object v0, p1

    check-cast v0, Lgnu/math/Quantity;

    invoke-static {p0, v0, p2}, Lgnu/math/Quantity;->add(Lgnu/math/Quantity;Lgnu/math/Quantity;I)Lgnu/math/Quantity;

    move-result-object v0

    return-object v0

    .line 146
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

    .line 151
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 152
    move-object v0, p1

    check-cast v0, Lgnu/math/Quantity;

    invoke-static {v0, p0, p2}, Lgnu/math/Quantity;->add(Lgnu/math/Quantity;Lgnu/math/Quantity;I)Lgnu/math/Quantity;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 115
    instance-of v0, p1, Lgnu/math/Quantity;

    if-nez v0, :cond_0

    .line 116
    move-object v0, p1

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p0}, Lgnu/math/Numeric;->compareReversed(Lgnu/math/Numeric;)I

    move-result v0

    return v0

    .line 117
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/math/Quantity;

    invoke-static {p0, v0}, Lgnu/math/Quantity;->compare(Lgnu/math/Quantity;Lgnu/math/Quantity;)I

    move-result v0

    return v0
.end method

.method public compareReversed(Lgnu/math/Numeric;)I
    .locals 1
    .param p1, "x"    # Lgnu/math/Numeric;

    .line 122
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 123
    move-object v0, p1

    check-cast v0, Lgnu/math/Quantity;

    invoke-static {v0, p0}, Lgnu/math/Quantity;->compare(Lgnu/math/Quantity;Lgnu/math/Quantity;)I

    move-result v0

    return v0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public dimensions()Lgnu/math/Dimensions;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Unit;->dimensions()Lgnu/math/Dimensions;

    move-result-object v0

    return-object v0
.end method

.method public div(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .param p1, "y"    # Ljava/lang/Object;

    .line 187
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 188
    move-object v0, p1

    check-cast v0, Lgnu/math/Quantity;

    invoke-static {p0, v0}, Lgnu/math/Quantity;->divide(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;

    move-result-object v0

    return-object v0

    .line 189
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

    .line 194
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 195
    move-object v0, p1

    check-cast v0, Lgnu/math/Quantity;

    invoke-static {v0, p0}, Lgnu/math/Quantity;->divide(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public doubleImagValue()D
    .locals 4

    .line 51
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Unit;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lgnu/math/Quantity;->im()Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public doubleValue()D
    .locals 4

    .line 46
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Unit;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lgnu/math/Quantity;->re()Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public im()Lgnu/math/RealNum;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object v0

    return-object v0
.end method

.method public final imValue()D
    .locals 2

    .line 40
    invoke-virtual {p0}, Lgnu/math/Quantity;->doubleImagValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public mul(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .param p1, "y"    # Ljava/lang/Object;

    .line 166
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 167
    move-object v0, p1

    check-cast v0, Lgnu/math/Quantity;

    invoke-static {p0, v0}, Lgnu/math/Quantity;->times(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;

    move-result-object v0

    return-object v0

    .line 168
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

    .line 173
    instance-of v0, p1, Lgnu/math/Quantity;

    if-eqz v0, :cond_0

    .line 174
    move-object v0, p1

    check-cast v0, Lgnu/math/Quantity;

    invoke-static {v0, p0}, Lgnu/math/Quantity;->times(Lgnu/math/Quantity;Lgnu/math/Quantity;)Lgnu/math/Quantity;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public neg()Lgnu/math/Numeric;
    .locals 2

    .line 101
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Complex;->neg()Lgnu/math/Numeric;

    move-result-object v0

    check-cast v0, Lgnu/math/Complex;

    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/math/Quantity;->make(Lgnu/math/Complex;Lgnu/math/Unit;)Lgnu/math/Quantity;

    move-result-object v0

    return-object v0
.end method

.method public abstract number()Lgnu/math/Complex;
.end method

.method public re()Lgnu/math/RealNum;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object v0

    return-object v0
.end method

.method public final reValue()D
    .locals 2

    .line 34
    invoke-virtual {p0}, Lgnu/math/Quantity;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3
    .param p1, "radix"    # I

    .line 201
    invoke-virtual {p0}, Lgnu/math/Quantity;->number()Lgnu/math/Complex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/math/Complex;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v1

    sget-object v2, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v1, v2, :cond_0

    .line 203
    return-object v0

    .line 204
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/math/Quantity;->unit()Lgnu/math/Unit;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/math/Unit;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unit()Lgnu/math/Unit;
    .locals 1

    .line 13
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    return-object v0
.end method
