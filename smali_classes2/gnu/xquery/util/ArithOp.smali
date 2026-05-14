.class public Lgnu/xquery/util/ArithOp;
.super Lgnu/mapping/Procedure1or2;
.source "ArithOp.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field static final TEN:Ljava/math/BigInteger;

.field public static final add:Lgnu/xquery/util/ArithOp;

.field public static final div:Lgnu/xquery/util/ArithOp;

.field public static final idiv:Lgnu/xquery/util/ArithOp;

.field public static final minus:Lgnu/xquery/util/ArithOp;

.field public static final mod:Lgnu/xquery/util/ArithOp;

.field public static final mul:Lgnu/xquery/util/ArithOp;

.field public static final plus:Lgnu/xquery/util/ArithOp;

.field public static final sub:Lgnu/xquery/util/ArithOp;


# instance fields
.field op:C


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/ArithOp;->TEN:Ljava/math/BigInteger;

    .line 18
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v1, "+"

    const/16 v2, 0x2b

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->add:Lgnu/xquery/util/ArithOp;

    .line 19
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const/16 v2, 0x2d

    const-string v4, "-"

    invoke-direct {v0, v4, v2, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->sub:Lgnu/xquery/util/ArithOp;

    .line 20
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v2, "*"

    const/16 v5, 0x2a

    invoke-direct {v0, v2, v5, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->mul:Lgnu/xquery/util/ArithOp;

    .line 21
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v2, "div"

    const/16 v5, 0x64

    invoke-direct {v0, v2, v5, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->div:Lgnu/xquery/util/ArithOp;

    .line 22
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v2, "idiv"

    const/16 v5, 0x69

    invoke-direct {v0, v2, v5, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->idiv:Lgnu/xquery/util/ArithOp;

    .line 23
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v2, "mod"

    const/16 v5, 0x6d

    invoke-direct {v0, v2, v5, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->mod:Lgnu/xquery/util/ArithOp;

    .line 24
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const/16 v2, 0x50

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->plus:Lgnu/xquery/util/ArithOp;

    .line 25
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const/16 v1, 0x4d

    invoke-direct {v0, v4, v1, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->minus:Lgnu/xquery/util/ArithOp;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;CI)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "op"    # C
    .param p3, "nargs"    # I

    .line 29
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure1or2;-><init>(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.xquery.util.CompileMisc:validateArithOp"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/util/ArithOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    iput-char p2, p0, Lgnu/xquery/util/ArithOp;->op:C

    .line 33
    return-void
.end method

.method public static div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "d1"    # Ljava/math/BigDecimal;
    .param p1, "d2"    # Ljava/math/BigDecimal;

    .line 66
    sget-object v0, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p1, v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-nez v0, :cond_1

    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_2

    .line 41
    :cond_1
    sget-object v0, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 42
    :cond_2
    iget-char v0, p0, Lgnu/xquery/util/ArithOp;->op:C

    sparse-switch v0, :sswitch_data_0

    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lgnu/xquery/util/ArithOp;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 47
    :sswitch_1
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 48
    .local v0, "code1":I
    packed-switch v0, :pswitch_data_0

    .line 55
    instance-of v1, p1, Lgnu/math/Numeric;

    if-eqz v1, :cond_3

    .line 56
    move-object v1, p1

    check-cast v1, Lgnu/math/Numeric;

    invoke-virtual {v1}, Lgnu/math/Numeric;->neg()Lgnu/math/Numeric;

    move-result-object v1

    return-object v1

    .line 53
    :pswitch_0
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v1

    neg-double v1, v1

    invoke-static {v1, v2}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 51
    :pswitch_1
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v1

    neg-float v1, v1

    invoke-static {v1}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 57
    :cond_3
    const/4 v1, -0x1

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 39
    .end local v0    # "code1":I
    :cond_4
    :goto_0
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 90
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v1, v3, :cond_1a

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 92
    :cond_0
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v2, v3, :cond_19

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 94
    :cond_1
    instance-of v3, v1, Lgnu/kawa/xml/KNode;

    if-nez v3, :cond_2

    instance-of v3, v1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v3, :cond_3

    .line 95
    :cond_2
    sget-object v3, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    invoke-static/range {p1 .. p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 96
    .end local p1    # "arg1":Ljava/lang/Object;
    .local v1, "arg1":Ljava/lang/Object;
    :cond_3
    instance-of v3, v2, Lgnu/kawa/xml/KNode;

    if-nez v3, :cond_4

    instance-of v3, v2, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v3, :cond_5

    .line 97
    :cond_4
    sget-object v3, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    invoke-static/range {p2 .. p2}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 98
    .end local p2    # "arg2":Ljava/lang/Object;
    .local v2, "arg2":Ljava/lang/Object;
    :cond_5
    iget-char v3, v0, Lgnu/xquery/util/ArithOp;->op:C

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 107
    :pswitch_0
    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v3

    .line 108
    .local v3, "code1":I
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v5

    .line 109
    .local v5, "code2":I
    if-ge v3, v5, :cond_6

    move v6, v5

    goto :goto_0

    .line 103
    .end local v3    # "code1":I
    .end local v5    # "code2":I
    :pswitch_1
    const/4 v3, -0x1

    invoke-static {v3, v1, v2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 101
    :pswitch_2
    invoke-static {v4, v1, v2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 105
    :pswitch_3
    sget-object v3, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    invoke-virtual {v3, v1, v2}, Lgnu/kawa/functions/MultiplyOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 109
    .restart local v3    # "code1":I
    .restart local v5    # "code2":I
    :cond_6
    move v6, v3

    .line 110
    .local v6, "code":I
    :goto_0
    iget-char v7, v0, Lgnu/xquery/util/ArithOp;->op:C

    const/4 v8, 0x4

    const/4 v9, 0x7

    const/4 v10, 0x6

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_1

    .line 188
    :sswitch_0
    if-ltz v3, :cond_18

    if-ltz v5, :cond_b

    .line 190
    if-gt v6, v8, :cond_7

    .line 192
    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v4

    .line 193
    .local v4, "i1":Lgnu/math/IntNum;
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v7

    .line 194
    .local v7, "i2":Lgnu/math/IntNum;
    invoke-static {v4, v7}, Lgnu/math/IntNum;->remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v8

    return-object v8

    .line 196
    .end local v4    # "i1":Lgnu/math/IntNum;
    .end local v7    # "i2":Lgnu/math/IntNum;
    :cond_7
    if-gt v6, v10, :cond_8

    .line 198
    sget-object v4, Lgnu/xquery/util/ArithOp;->sub:Lgnu/xquery/util/ArithOp;

    sget-object v7, Lgnu/xquery/util/ArithOp;->mul:Lgnu/xquery/util/ArithOp;

    sget-object v8, Lgnu/xquery/util/ArithOp;->idiv:Lgnu/xquery/util/ArithOp;

    invoke-virtual {v8, v1, v2}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 200
    :cond_8
    if-gt v6, v9, :cond_9

    .line 202
    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v4

    .line 203
    .local v4, "f1":F
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v7

    .line 204
    .local v7, "f2":F
    rem-float v8, v4, v7

    invoke-static {v8}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v8

    return-object v8

    .line 206
    .end local v4    # "f1":F
    .end local v7    # "f2":F
    :cond_9
    const/16 v4, 0x9

    if-gt v6, v4, :cond_18

    .line 208
    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v7

    .line 209
    .local v7, "d1":D
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v9

    .line 210
    .local v9, "d2":D
    rem-double v11, v7, v9

    .line 211
    .local v11, "d":D
    if-ne v6, v4, :cond_a

    .line 212
    invoke-static {v11, v12}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v4

    return-object v4

    .line 214
    :cond_a
    invoke-static {v11, v12}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v4

    return-object v4

    .line 189
    .end local v7    # "d1":D
    .end local v9    # "d2":D
    .end local v11    # "d":D
    :cond_b
    goto/16 :goto_1

    .line 113
    :sswitch_1
    if-ltz v3, :cond_18

    if-ltz v5, :cond_17

    .line 115
    if-gt v6, v10, :cond_c

    .line 117
    sget-object v4, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v4, v1}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigDecimal;

    .line 119
    .local v4, "d1":Ljava/math/BigDecimal;
    sget-object v7, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v7, v2}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/math/BigDecimal;

    .line 121
    .local v7, "d2":Ljava/math/BigDecimal;
    invoke-static {v4, v7}, Lgnu/xquery/util/ArithOp;->div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    return-object v8

    .line 123
    .end local v4    # "d1":Ljava/math/BigDecimal;
    .end local v7    # "d2":Ljava/math/BigDecimal;
    :cond_c
    if-ne v6, v9, :cond_d

    .line 125
    new-instance v4, Ljava/lang/Float;

    move-object v7, v1

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    move-object v8, v2

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    div-float/2addr v7, v8

    invoke-direct {v4, v7}, Ljava/lang/Float;-><init>(F)V

    return-object v4

    .line 128
    :cond_d
    const/16 v7, 0x8

    if-ne v6, v7, :cond_e

    .line 130
    new-instance v4, Ljava/lang/Double;

    move-object v7, v1

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    move-object v9, v2

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    div-double/2addr v7, v9

    invoke-direct {v4, v7, v8}, Ljava/lang/Double;-><init>(D)V

    return-object v4

    .line 133
    :cond_e
    instance-of v7, v1, Lgnu/math/Duration;

    if-eqz v7, :cond_11

    instance-of v7, v2, Lgnu/math/Duration;

    if-eqz v7, :cond_11

    .line 135
    move-object v4, v1

    check-cast v4, Lgnu/math/Duration;

    .line 136
    .local v4, "dur1":Lgnu/math/Duration;
    move-object v7, v2

    check-cast v7, Lgnu/math/Duration;

    .line 137
    .local v7, "dur2":Lgnu/math/Duration;
    invoke-virtual {v4}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v8

    sget-object v9, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    if-ne v8, v9, :cond_f

    invoke-virtual {v7}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v8

    sget-object v9, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    if-ne v8, v9, :cond_f

    .line 139
    invoke-virtual {v4}, Lgnu/math/Duration;->getTotalSeconds()J

    move-result-wide v8

    .line 140
    .local v8, "s1":J
    invoke-virtual {v7}, Lgnu/math/Duration;->getTotalSeconds()J

    move-result-wide v10

    .line 141
    .local v10, "s2":J
    invoke-virtual {v4}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result v12

    .line 142
    .local v12, "n1":I
    invoke-virtual {v7}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result v13

    .line 143
    .local v13, "n2":I
    invoke-static {v8, v9, v12}, Lgnu/xquery/util/TimeUtils;->secondsBigDecimalFromDuration(JI)Ljava/math/BigDecimal;

    move-result-object v14

    .line 144
    .local v14, "sec1":Ljava/math/BigDecimal;
    invoke-static {v10, v11, v13}, Lgnu/xquery/util/TimeUtils;->secondsBigDecimalFromDuration(JI)Ljava/math/BigDecimal;

    move-result-object v15

    .line 145
    .local v15, "sec2":Ljava/math/BigDecimal;
    invoke-static {v14, v15}, Lgnu/xquery/util/ArithOp;->div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v16

    return-object v16

    .line 147
    .end local v8    # "s1":J
    .end local v10    # "s2":J
    .end local v12    # "n1":I
    .end local v13    # "n2":I
    .end local v14    # "sec1":Ljava/math/BigDecimal;
    .end local v15    # "sec2":Ljava/math/BigDecimal;
    :cond_f
    invoke-virtual {v4}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v8

    sget-object v9, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v8, v9, :cond_10

    invoke-virtual {v7}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v8

    sget-object v9, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v8, v9, :cond_10

    .line 149
    invoke-virtual {v4}, Lgnu/math/Duration;->getTotalMonths()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v8

    .line 150
    .local v8, "m1":Ljava/math/BigDecimal;
    invoke-virtual {v7}, Lgnu/math/Duration;->getTotalMonths()I

    move-result v9

    int-to-long v9, v9

    invoke-static {v9, v10}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v9

    .line 151
    .local v9, "m2":Ljava/math/BigDecimal;
    invoke-static {v8, v9}, Lgnu/xquery/util/ArithOp;->div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v10

    return-object v10

    .line 153
    .end local v8    # "m1":Ljava/math/BigDecimal;
    .end local v9    # "m2":Ljava/math/BigDecimal;
    :cond_10
    new-instance v8, Ljava/lang/ArithmeticException;

    const-string v9, "divide of incompatible durations"

    invoke-direct {v8, v9}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 155
    .end local v4    # "dur1":Lgnu/math/Duration;
    .end local v7    # "dur2":Lgnu/math/Duration;
    :cond_11
    if-ltz v6, :cond_12

    .line 156
    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v4

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v7

    invoke-virtual {v4, v7}, Lgnu/math/Numeric;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v4

    return-object v4

    .line 158
    :cond_12
    :sswitch_2
    if-ltz v3, :cond_18

    if-ltz v5, :cond_16

    .line 160
    if-gt v6, v8, :cond_13

    .line 162
    invoke-static {v1}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v4

    .line 163
    .local v4, "i1":Lgnu/math/IntNum;
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v7

    .line 164
    .local v7, "i2":Lgnu/math/IntNum;
    invoke-static {v4, v7}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v8

    return-object v8

    .line 166
    .end local v4    # "i1":Lgnu/math/IntNum;
    .end local v7    # "i2":Lgnu/math/IntNum;
    :cond_13
    if-gt v6, v10, :cond_14

    .line 168
    sget-object v7, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v7, v1}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/math/BigDecimal;

    .line 170
    .local v7, "d1":Ljava/math/BigDecimal;
    sget-object v8, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {v8, v2}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/math/BigDecimal;

    .line 172
    .local v8, "d2":Ljava/math/BigDecimal;
    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;

    move-result-object v4

    return-object v4

    .line 175
    .end local v7    # "d1":Ljava/math/BigDecimal;
    .end local v8    # "d2":Ljava/math/BigDecimal;
    :cond_14
    const/4 v4, 0x3

    if-gt v6, v9, :cond_15

    .line 177
    move-object v7, v1

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    move-object v8, v2

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    div-float/2addr v7, v8

    .line 179
    .local v7, "f":F
    float-to-double v8, v7

    invoke-static {v8, v9, v4}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v4

    return-object v4

    .line 183
    .end local v7    # "f":F
    :cond_15
    move-object v7, v1

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    move-object v9, v2

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    div-double/2addr v7, v9

    .line 185
    .local v7, "d":D
    invoke-static {v7, v8, v4}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v4

    return-object v4

    .line 159
    .end local v7    # "d":D
    :cond_16
    goto :goto_1

    .line 114
    :cond_17
    nop

    .line 217
    :cond_18
    :goto_1
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/util/ArithOp;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 93
    .end local v1    # "arg1":Ljava/lang/Object;
    .end local v2    # "arg2":Ljava/lang/Object;
    .end local v3    # "code1":I
    .end local v5    # "code2":I
    .end local v6    # "code":I
    .restart local p1    # "arg1":Ljava/lang/Object;
    .restart local p2    # "arg2":Ljava/lang/Object;
    :cond_19
    :goto_2
    return-object v2

    .line 91
    :cond_1a
    :goto_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x69 -> :sswitch_2
        0x6d -> :sswitch_0
    .end sparse-switch
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 223
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 224
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 228
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method
