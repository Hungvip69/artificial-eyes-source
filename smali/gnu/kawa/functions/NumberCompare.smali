.class public Lgnu/kawa/functions/NumberCompare;
.super Lgnu/mapping/ProcedureN;
.source "NumberCompare.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field static final RESULT_EQU:I = 0x0

.field static final RESULT_GRT:I = 0x1

.field static final RESULT_LSS:I = -0x1

.field static final RESULT_NAN:I = -0x2

.field static final RESULT_NEQ:I = -0x3

.field public static final TRUE_IF_EQU:I = 0x8

.field public static final TRUE_IF_GRT:I = 0x10

.field public static final TRUE_IF_LSS:I = 0x4

.field public static final TRUE_IF_NAN:I = 0x2

.field public static final TRUE_IF_NEQ:I = 0x1


# instance fields
.field flags:I

.field language:Lgnu/expr/Language;


# direct methods
.method public static $Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 33
    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static $Eq$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;
    .param p3, "rest"    # [Ljava/lang/Object;

    .line 59
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p3

    if-eqz v0, :cond_0

    aget-object v0, p3, v1

    invoke-static {p2, v0}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-static {v0, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static $Gr(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 38
    const/16 v0, 0x10

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static $Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 43
    const/16 v0, 0x18

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static $Gr$Eq$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;
    .param p3, "rest"    # [Ljava/lang/Object;

    .line 75
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p3

    if-eqz v0, :cond_0

    aget-object v0, p3, v1

    invoke-static {p2, v0}, Lgnu/kawa/functions/NumberCompare;->$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    invoke-static {v0, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static $Gr$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;
    .param p3, "rest"    # [Ljava/lang/Object;

    .line 67
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p3

    if-eqz v0, :cond_0

    aget-object v0, p3, v1

    invoke-static {p2, v0}, Lgnu/kawa/functions/NumberCompare;->$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    invoke-static {v0, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static $Ls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 48
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static $Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 53
    const/16 v0, 0xc

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static $Ls$Eq$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;
    .param p3, "rest"    # [Ljava/lang/Object;

    .line 92
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p3

    if-eqz v0, :cond_0

    aget-object v0, p3, v1

    invoke-static {p2, v0}, Lgnu/kawa/functions/NumberCompare;->$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    invoke-static {v0, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static $Ls$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;
    .param p3, "rest"    # [Ljava/lang/Object;

    .line 84
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lgnu/kawa/functions/NumberCompare;->$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p3

    if-eqz v0, :cond_0

    aget-object v0, p3, v1

    invoke-static {p2, v0}, Lgnu/kawa/functions/NumberCompare;->$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-static {v0, p3}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static apply2(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "flags"    # I
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 121
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    shl-int v1, v0, v1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static applyN(I[Ljava/lang/Object;)Z
    .locals 4
    .param p0, "flags"    # I
    .param p1, "args"    # [Ljava/lang/Object;

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 223
    aget-object v1, p1, v0

    .line 224
    .local v1, "arg1":Ljava/lang/Object;
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    .line 225
    .local v2, "arg2":Ljava/lang/Object;
    invoke-static {p0, v1, v2}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    const/4 v3, 0x0

    return v3

    .line 221
    .end local v1    # "arg1":Ljava/lang/Object;
    .end local v2    # "arg2":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method public static applyWithPromotion(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "flags"    # I
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 131
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result v0

    invoke-static {v0, p0}, Lgnu/kawa/functions/NumberCompare;->checkCompareCode(II)Z

    move-result v0

    return v0
.end method

.method public static checkCompareCode(II)Z
    .locals 2
    .param p0, "code"    # I
    .param p1, "flags"    # I

    .line 126
    add-int/lit8 v0, p0, 0x3

    const/4 v1, 0x1

    shl-int v0, v1, v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static classify(Lgnu/expr/Expression;)I
    .locals 5
    .param p0, "exp"    # Lgnu/expr/Expression;

    .line 348
    invoke-virtual {p0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 349
    .local v0, "type":Lgnu/bytecode/Type;
    invoke-static {v0}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v1

    .line 351
    .local v1, "kind":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    instance-of v2, p0, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_1

    move-object v2, p0

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    .local v3, "value":Ljava/lang/Object;
    instance-of v2, v2, Lgnu/math/IntNum;

    if-eqz v2, :cond_1

    .line 354
    move-object v2, v3

    check-cast v2, Lgnu/math/IntNum;

    invoke-virtual {v2}, Lgnu/math/IntNum;->intLength()I

    move-result v2

    .line 355
    .local v2, "ilength":I
    const/16 v4, 0x20

    if-ge v2, v4, :cond_0

    .line 356
    const/4 v4, 0x1

    return v4

    .line 357
    :cond_0
    const/16 v4, 0x40

    if-ge v2, v4, :cond_1

    .line 358
    const/4 v4, 0x2

    return v4

    .line 360
    .end local v2    # "ilength":I
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method public static compare(Ljava/lang/Object;ILjava/lang/Object;IZ)I
    .locals 6

    .line 152
    if-ltz p1, :cond_10

    if-gez p3, :cond_0

    goto/16 :goto_8

    .line 154
    :cond_0
    if-ge p1, p3, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    move v0, p1

    .line 156
    :goto_0
    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x6

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 187
    :pswitch_0
    if-eqz p4, :cond_7

    if-le p1, v5, :cond_2

    if-le p3, v5, :cond_2

    goto :goto_2

    .line 199
    :cond_2
    :pswitch_1
    if-eqz p4, :cond_3

    if-le p1, v5, :cond_f

    if-le p3, v5, :cond_f

    .line 203
    :cond_3
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide p0

    .line 204
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide p2

    .line 205
    cmpl-double p4, p0, p2

    if-lez p4, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    cmpg-double p4, p0, p2

    if-gez p4, :cond_5

    const/4 v1, -0x1

    goto :goto_1

    :cond_5
    cmpl-double p4, p0, p2

    if-nez p4, :cond_6

    const/4 v1, 0x0

    .line 206
    :cond_6
    :goto_1
    goto/16 :goto_7

    .line 191
    :cond_7
    :goto_2
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result p0

    .line 192
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result p1

    .line 193
    cmpl-float p2, p0, p1

    if-lez p2, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    cmpg-float p2, p0, p1

    if-gez p2, :cond_9

    const/4 v1, -0x1

    goto :goto_3

    :cond_9
    cmpl-float p0, p0, p1

    if-nez p0, :cond_a

    const/4 v1, 0x0

    .line 194
    :cond_a
    :goto_3
    goto/16 :goto_7

    .line 183
    :pswitch_2
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p0

    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object p1

    invoke-static {p0, p1}, Lgnu/math/RatNum;->compare(Lgnu/math/RatNum;Lgnu/math/RatNum;)I

    move-result v1

    .line 185
    goto :goto_7

    .line 178
    :pswitch_3
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 179
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 180
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    .line 181
    goto :goto_7

    .line 174
    :pswitch_4
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p0

    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p1

    invoke-static {p0, p1}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v1

    .line 176
    goto :goto_7

    .line 169
    :pswitch_5
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    .line 170
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    .line 172
    goto :goto_7

    .line 164
    :pswitch_6
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide p0

    .line 165
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide p2

    .line 166
    cmp-long p4, p0, p2

    if-gez p4, :cond_b

    const/4 v2, -0x1

    goto :goto_4

    :cond_b
    cmp-long p4, p0, p2

    if-lez p4, :cond_c

    const/4 v2, 0x1

    .line 167
    :cond_c
    :goto_4
    move v1, v2

    goto :goto_7

    .line 159
    :pswitch_7
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result p0

    .line 160
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result p1

    .line 161
    if-ge p0, p1, :cond_d

    const/4 v2, -0x1

    goto :goto_5

    :cond_d
    if-le p0, p1, :cond_e

    const/4 v2, 0x1

    .line 162
    :cond_e
    :goto_5
    move v1, v2

    goto :goto_7

    .line 210
    :cond_f
    :goto_6
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p0

    .line 211
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object p1

    .line 212
    invoke-virtual {p0, p1}, Lgnu/math/Numeric;->compare(Ljava/lang/Object;)I

    move-result v1

    .line 214
    :goto_7
    return v1

    .line 153
    :cond_10
    :goto_8
    const/4 p0, -0x3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .locals 3
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "exact"    # Z

    .line 143
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 144
    .local v0, "code1":I
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v1

    .line 145
    .local v1, "code2":I
    invoke-static {p0, v0, p1, v1, p2}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;ILjava/lang/Object;IZ)I

    move-result v2

    return v2
.end method

.method public static make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;
    .locals 3
    .param p0, "language"    # Lgnu/expr/Language;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 100
    new-instance v0, Lgnu/kawa/functions/NumberCompare;

    invoke-direct {v0}, Lgnu/kawa/functions/NumberCompare;-><init>()V

    .line 101
    .local v0, "proc":Lgnu/kawa/functions/NumberCompare;
    iput-object p0, v0, Lgnu/kawa/functions/NumberCompare;->language:Lgnu/expr/Language;

    .line 102
    invoke-virtual {v0, p1}, Lgnu/kawa/functions/NumberCompare;->setName(Ljava/lang/String;)V

    .line 103
    iput p2, v0, Lgnu/kawa/functions/NumberCompare;->flags:I

    .line 104
    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v2, "gnu.kawa.functions.CompileArith:validateApplyNumberCompare"

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/NumberCompare;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 116
    invoke-virtual {p0}, Lgnu/kawa/functions/NumberCompare;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    iget v1, p0, Lgnu/kawa/functions/NumberCompare;->flags:I

    invoke-static {v1, p1, p2}, Lgnu/kawa/functions/NumberCompare;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .line 235
    invoke-virtual {p0}, Lgnu/kawa/functions/NumberCompare;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    iget v1, p0, Lgnu/kawa/functions/NumberCompare;->flags:I

    invoke-static {v1, p1}, Lgnu/kawa/functions/NumberCompare;->applyN(I[Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 18
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 240
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 241
    .local v2, "args":[Lgnu/expr/Expression;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_12

    .line 243
    const/4 v3, 0x0

    aget-object v5, v2, v3

    .line 244
    .local v5, "arg0":Lgnu/expr/Expression;
    const/4 v6, 0x1

    aget-object v7, v2, v6

    .line 245
    .local v7, "arg1":Lgnu/expr/Expression;
    invoke-static {v5}, Lgnu/kawa/functions/NumberCompare;->classify(Lgnu/expr/Expression;)I

    move-result v8

    .line 246
    .local v8, "kind0":I
    invoke-static {v7}, Lgnu/kawa/functions/NumberCompare;->classify(Lgnu/expr/Expression;)I

    move-result v9

    .line 247
    .local v9, "kind1":I
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v10

    .line 248
    .local v10, "code":Lgnu/bytecode/CodeAttr;
    if-lez v8, :cond_11

    if-lez v9, :cond_11

    const/16 v11, 0xa

    if-gt v8, v11, :cond_11

    if-gt v9, v11, :cond_11

    const/4 v11, 0x6

    if-ne v8, v11, :cond_1

    if-eq v9, v11, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v12, p0

    move-object/from16 v11, p1

    goto/16 :goto_8

    .line 253
    :cond_1
    :goto_0
    instance-of v11, v1, Lgnu/expr/ConditionalTarget;

    if-nez v11, :cond_2

    .line 255
    sget-object v3, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    sget-object v4, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    move-object/from16 v11, p1

    invoke-static {v11, v3, v4, v0, v1}, Lgnu/expr/IfExp;->compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 257
    return-void

    .line 259
    :cond_2
    move-object/from16 v11, p1

    move-object/from16 v12, p0

    iget v13, v12, Lgnu/kawa/functions/NumberCompare;->flags:I

    .line 260
    .local v13, "mask":I
    if-ne v13, v6, :cond_3

    .line 261
    const/16 v13, 0x14

    .line 262
    :cond_3
    const/4 v15, 0x4

    if-gt v8, v15, :cond_a

    if-gt v9, v15, :cond_a

    if-gt v8, v4, :cond_5

    if-le v9, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    goto :goto_3

    .line 265
    :cond_5
    :goto_1
    new-array v15, v4, [Lgnu/bytecode/Type;

    .line 266
    .local v15, "ctypes":[Lgnu/bytecode/Type;
    sget-object v17, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    aput-object v17, v15, v3

    .line 267
    if-gt v9, v4, :cond_6

    .line 269
    sget-object v3, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    aput-object v3, v15, v6

    goto :goto_2

    .line 271
    :cond_6
    if-gt v8, v4, :cond_8

    instance-of v14, v5, Lgnu/expr/QuoteExp;

    if-nez v14, :cond_7

    instance-of v14, v7, Lgnu/expr/QuoteExp;

    if-nez v14, :cond_7

    instance-of v14, v5, Lgnu/expr/ReferenceExp;

    if-nez v14, :cond_7

    instance-of v14, v7, Lgnu/expr/ReferenceExp;

    if-eqz v14, :cond_8

    .line 278
    :cond_7
    sget-object v14, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    aput-object v14, v15, v6

    .line 279
    new-array v2, v4, [Lgnu/expr/Expression;

    .line 280
    aput-object v7, v2, v3

    .line 281
    aput-object v5, v2, v6

    .line 282
    const/16 v3, 0x8

    if-eq v13, v3, :cond_9

    const/16 v3, 0x14

    if-eq v13, v3, :cond_9

    .line 283
    xor-int/lit8 v3, v13, 0x14

    move v13, v3

    .end local v13    # "mask":I
    .local v3, "mask":I
    goto :goto_2

    .line 286
    .end local v3    # "mask":I
    .restart local v13    # "mask":I
    :cond_8
    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    aput-object v3, v15, v6

    .line 287
    :cond_9
    :goto_2
    sget-object v3, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    const-string v14, "compare"

    invoke-virtual {v3, v14, v15}, Lgnu/kawa/lispexpr/LangObjType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v3

    .line 289
    .local v3, "cmeth":Lgnu/bytecode/Method;
    new-instance v14, Lgnu/expr/PrimProcedure;

    invoke-direct {v14, v3}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    .line 290
    .local v14, "compare":Lgnu/expr/PrimProcedure;
    new-instance v4, Lgnu/expr/ApplyExp;

    invoke-direct {v4, v14, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v5, v4

    .line 291
    new-instance v4, Lgnu/expr/QuoteExp;

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v6

    invoke-direct {v4, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v7, v4

    .line 292
    const/4 v4, 0x1

    move v9, v4

    move v8, v4

    goto :goto_3

    .line 262
    .end local v3    # "cmeth":Lgnu/bytecode/Method;
    .end local v14    # "compare":Lgnu/expr/PrimProcedure;
    .end local v15    # "ctypes":[Lgnu/bytecode/Type;
    :cond_a
    const/4 v4, 0x1

    .line 295
    :goto_3
    if-gt v8, v4, :cond_b

    if-gt v9, v4, :cond_b

    .line 296
    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    .local v3, "commonType":Lgnu/bytecode/Type;
    goto :goto_4

    .line 297
    .end local v3    # "commonType":Lgnu/bytecode/Type;
    :cond_b
    const/4 v3, 0x2

    if-gt v8, v3, :cond_c

    if-gt v9, v3, :cond_c

    .line 298
    sget-object v3, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    .restart local v3    # "commonType":Lgnu/bytecode/Type;
    goto :goto_4

    .line 300
    .end local v3    # "commonType":Lgnu/bytecode/Type;
    :cond_c
    sget-object v3, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    .line 301
    .restart local v3    # "commonType":Lgnu/bytecode/Type;
    :goto_4
    new-instance v4, Lgnu/expr/StackTarget;

    invoke-direct {v4, v3}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    .line 302
    .local v4, "subTarget":Lgnu/expr/StackTarget;
    move-object v6, v1

    check-cast v6, Lgnu/expr/ConditionalTarget;

    .line 305
    .local v6, "ctarget":Lgnu/expr/ConditionalTarget;
    instance-of v14, v5, Lgnu/expr/QuoteExp;

    if-eqz v14, :cond_d

    instance-of v14, v7, Lgnu/expr/QuoteExp;

    if-nez v14, :cond_d

    .line 307
    move-object v14, v7

    .local v14, "tmp":Lgnu/expr/Expression;
    move-object v7, v5

    move-object v5, v14

    .line 308
    const/16 v15, 0x8

    if-eq v13, v15, :cond_d

    const/16 v15, 0x14

    if-eq v13, v15, :cond_d

    .line 309
    xor-int/lit8 v13, v13, 0x14

    .line 311
    .end local v14    # "tmp":Lgnu/expr/Expression;
    :cond_d
    iget-boolean v14, v6, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz v14, :cond_e

    iget-object v14, v6, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    goto :goto_5

    :cond_e
    iget-object v14, v6, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    .line 312
    .local v14, "label1":Lgnu/bytecode/Label;
    :goto_5
    iget-boolean v15, v6, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz v15, :cond_f

    .line 313
    xor-int/lit8 v13, v13, 0x1c

    .line 314
    :cond_f
    const/4 v15, 0x0

    sparse-switch v13, :sswitch_data_0

    .line 323
    .local v15, "opcode":I
    const/4 v15, 0x0

    goto :goto_6

    .line 320
    :sswitch_0
    const/16 v15, 0x9c

    goto :goto_6

    .line 319
    :sswitch_1
    const/16 v15, 0x9a

    goto :goto_6

    .line 316
    .end local v15    # "opcode":I
    :sswitch_2
    const/16 v15, 0x9d

    .restart local v15    # "opcode":I
    goto :goto_6

    .line 321
    :sswitch_3
    const/16 v15, 0x9e

    goto :goto_6

    .line 317
    :sswitch_4
    const/16 v15, 0x99

    goto :goto_6

    .line 318
    :sswitch_5
    const/16 v15, 0x9b

    .line 325
    :goto_6
    invoke-virtual {v5, v0, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 327
    const/4 v1, 0x1

    if-gt v8, v1, :cond_10

    if-gt v9, v1, :cond_10

    instance-of v1, v7, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_10

    move-object v1, v7

    check-cast v1, Lgnu/expr/QuoteExp;

    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    .local v16, "value":Ljava/lang/Object;
    instance-of v1, v1, Lgnu/math/IntNum;

    if-eqz v1, :cond_10

    move-object/from16 v1, v16

    check-cast v1, Lgnu/math/IntNum;

    invoke-virtual {v1}, Lgnu/math/IntNum;->isZero()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 332
    invoke-virtual {v10, v14, v15}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    goto :goto_7

    .line 336
    .end local v16    # "value":Ljava/lang/Object;
    :cond_10
    invoke-virtual {v7, v0, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 337
    invoke-virtual {v10, v14, v15}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    .line 339
    :goto_7
    invoke-virtual {v6, v10}, Lgnu/expr/ConditionalTarget;->emitGotoFirstBranch(Lgnu/bytecode/CodeAttr;)V

    .line 340
    return-void

    .line 248
    .end local v3    # "commonType":Lgnu/bytecode/Type;
    .end local v4    # "subTarget":Lgnu/expr/StackTarget;
    .end local v6    # "ctarget":Lgnu/expr/ConditionalTarget;
    .end local v13    # "mask":I
    .end local v14    # "label1":Lgnu/bytecode/Label;
    .end local v15    # "opcode":I
    :cond_11
    move-object/from16 v12, p0

    move-object/from16 v11, p1

    goto :goto_8

    .line 241
    .end local v5    # "arg0":Lgnu/expr/Expression;
    .end local v7    # "arg1":Lgnu/expr/Expression;
    .end local v8    # "kind0":I
    .end local v9    # "kind1":I
    .end local v10    # "code":Lgnu/bytecode/CodeAttr;
    :cond_12
    move-object/from16 v12, p0

    move-object/from16 v11, p1

    .line 343
    :goto_8
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 344
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x8 -> :sswitch_4
        0xc -> :sswitch_3
        0x10 -> :sswitch_2
        0x14 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final getLanguage()Lgnu/expr/Language;
    .locals 1

    .line 111
    iget-object v0, p0, Lgnu/kawa/functions/NumberCompare;->language:Lgnu/expr/Language;

    return-object v0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 365
    sget-object v0, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    return-object v0
.end method

.method public numArgs()I
    .locals 1

    .line 29
    const/16 v0, -0xffe

    return v0
.end method
