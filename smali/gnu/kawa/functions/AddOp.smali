.class public Lgnu/kawa/functions/AddOp;
.super Lgnu/kawa/functions/ArithOp;
.source "AddOp.java"


# static fields
.field public static final $Mn:Lgnu/kawa/functions/AddOp;

.field public static final $Pl:Lgnu/kawa/functions/AddOp;


# instance fields
.field plusOrMinus:I


# direct methods
.method public static $Mn(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "arg1"    # Ljava/lang/Object;

    .line 97
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 98
    .local v0, "code":I
    packed-switch v0, :pswitch_data_0

    .line 119
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/Numeric;->neg()Lgnu/math/Numeric;

    move-result-object v1

    return-object v1

    .line 117
    :pswitch_0
    new-instance v1, Lgnu/math/DFloNum;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v2

    neg-double v2, v2

    invoke-direct {v1, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v1

    .line 115
    :pswitch_1
    new-instance v1, Ljava/lang/Double;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v2

    neg-double v2, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v1

    .line 113
    :pswitch_2
    new-instance v1, Ljava/lang/Float;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v2

    neg-float v2, v2

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    return-object v1

    .line 111
    :pswitch_3
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v1

    invoke-static {v1}, Lgnu/math/RatNum;->neg(Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v1

    return-object v1

    .line 109
    :pswitch_4
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1

    .line 107
    :pswitch_5
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1}, Lgnu/math/IntNum;->neg(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    return-object v1

    .line 105
    :pswitch_6
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 103
    :pswitch_7
    new-instance v1, Ljava/lang/Long;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v2

    neg-long v2, v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object v1

    .line 101
    :pswitch_8
    new-instance v1, Ljava/lang/Integer;

    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v2

    neg-int v2, v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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

.method public static $Mn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 92
    const/4 v0, -0x1

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $Mn$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;
    .param p3, "rest"    # [Ljava/lang/Object;

    .line 133
    const/4 v0, -0x1

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lgnu/kawa/functions/AddOp;->applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $Pl(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 87
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $Pl$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;
    .param p3, "rest"    # [Ljava/lang/Object;

    .line 127
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lgnu/kawa/functions/AddOp;->applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lgnu/kawa/functions/AddOp;

    const-string v1, "+"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/AddOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 31
    new-instance v0, Lgnu/kawa/functions/AddOp;

    const-string v1, "-"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/AddOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "plusOrMinus"    # I

    .line 20
    const/4 v0, 0x1

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-direct {p0, p1, v1}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 16
    iput v0, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    .line 21
    iput p2, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    .line 22
    if-lez p2, :cond_1

    const-string v0, "gnu.kawa.functions.CompileArith:$Pl"

    goto :goto_1

    :cond_1
    const-string v0, "gnu.kawa.functions.CompileArith:$Mn"

    .line 25
    .local v0, "compiler":Ljava/lang/String;
    :goto_1
    sget-object v1, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    invoke-virtual {v1, p0, v0}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 26
    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v2, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {p0, v1, v2}, Lgnu/kawa/functions/AddOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25
    .param p0, "plusOrMinus"    # I
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 35
    move/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v1

    .line 36
    .local v1, "code1":I
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v2

    .line 41
    .local v2, "code2":I
    if-ge v1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 42
    .local v3, "code":I
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    packed-switch v3, :pswitch_data_0

    move/from16 v20, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "code1":I
    .end local v2    # "code2":I
    .end local v3    # "code":I
    .local v20, "code1":I
    .local v23, "code2":I
    .local v24, "code":I
    move v1, v4

    .local v1, "i1":I
    move-object v2, v5

    .local v2, "bd2":Ljava/math/BigDecimal;
    move-object v3, v5

    .local v3, "bd1":Ljava/math/BigDecimal;
    move-object v11, v5

    .local v5, "bi2":Ljava/math/BigInteger;
    .local v11, "bi1":Ljava/math/BigInteger;
    move-wide v12, v6

    .local v4, "i2":I
    .local v6, "l2":J
    .local v12, "l1":J
    move v14, v8

    .local v8, "f2":F
    .local v14, "f1":F
    move-wide v15, v9

    .line 79
    .local v9, "d2":D
    .local v15, "d1":D
    move/from16 v17, v1

    .end local v1    # "i1":I
    .local v17, "i1":I
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    .line 80
    .local v1, "num1":Lgnu/math/Numeric;
    move-object/from16 v18, v2

    .end local v2    # "bd2":Ljava/math/BigDecimal;
    .local v18, "bd2":Ljava/math/BigDecimal;
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v2

    .line 81
    .local v2, "num2":Lgnu/math/Numeric;
    invoke-virtual {v1, v2, v0}, Lgnu/math/Numeric;->add(Ljava/lang/Object;I)Lgnu/math/Numeric;

    move-result-object v19

    return-object v19

    .line 42
    .end local v4    # "i2":I
    .end local v5    # "bi2":Ljava/math/BigInteger;
    .end local v6    # "l2":J
    .end local v8    # "f2":F
    .end local v9    # "d2":D
    .end local v11    # "bi1":Ljava/math/BigInteger;
    .end local v12    # "l1":J
    .end local v14    # "f1":F
    .end local v15    # "d1":D
    .end local v17    # "i1":I
    .end local v18    # "bd2":Ljava/math/BigDecimal;
    .end local v20    # "code1":I
    .end local v23    # "code2":I
    .end local v24    # "code":I
    .local v1, "code1":I
    .local v2, "code2":I
    .local v3, "code":I
    :pswitch_0
    move v11, v4

    .local v11, "i1":I
    move-object v12, v5

    .local v12, "bd2":Ljava/math/BigDecimal;
    move-object v13, v5

    .local v13, "bd1":Ljava/math/BigDecimal;
    move-object v14, v5

    .restart local v5    # "bi2":Ljava/math/BigInteger;
    .local v14, "bi1":Ljava/math/BigInteger;
    move-wide v15, v6

    .restart local v4    # "i2":I
    .restart local v6    # "l2":J
    .local v15, "l1":J
    move/from16 v17, v8

    .restart local v8    # "f2":F
    .local v17, "f1":F
    move-wide/from16 v18, v9

    .line 75
    .restart local v9    # "d2":D
    .local v18, "d1":D
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v18

    .line 76
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v9

    .line 77
    move/from16 v20, v1

    .end local v1    # "code1":I
    .restart local v20    # "code1":I
    new-instance v1, Lgnu/math/DFloNum;

    if-lez v0, :cond_1

    add-double v21, v18, v9

    goto :goto_1

    :cond_1
    sub-double v21, v18, v9

    :goto_1
    move/from16 v23, v2

    move/from16 v24, v3

    move-wide/from16 v2, v21

    .end local v2    # "code2":I
    .end local v3    # "code":I
    .restart local v23    # "code2":I
    .restart local v24    # "code":I
    invoke-direct {v1, v2, v3}, Lgnu/math/DFloNum;-><init>(D)V

    return-object v1

    .line 42
    .end local v4    # "i2":I
    .end local v5    # "bi2":Ljava/math/BigInteger;
    .end local v6    # "l2":J
    .end local v8    # "f2":F
    .end local v9    # "d2":D
    .end local v11    # "i1":I
    .end local v12    # "bd2":Ljava/math/BigDecimal;
    .end local v13    # "bd1":Ljava/math/BigDecimal;
    .end local v14    # "bi1":Ljava/math/BigInteger;
    .end local v15    # "l1":J
    .end local v17    # "f1":F
    .end local v18    # "d1":D
    .end local v20    # "code1":I
    .end local v23    # "code2":I
    .end local v24    # "code":I
    .restart local v1    # "code1":I
    .restart local v2    # "code2":I
    .restart local v3    # "code":I
    :pswitch_1
    move/from16 v20, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "code1":I
    .end local v2    # "code2":I
    .end local v3    # "code":I
    .restart local v20    # "code1":I
    .restart local v23    # "code2":I
    .restart local v24    # "code":I
    move v1, v4

    .local v1, "i1":I
    move-object v2, v5

    .local v2, "bd2":Ljava/math/BigDecimal;
    move-object v3, v5

    .local v3, "bd1":Ljava/math/BigDecimal;
    move-object v9, v5

    .restart local v5    # "bi2":Ljava/math/BigInteger;
    .local v9, "bi1":Ljava/math/BigInteger;
    move-wide v10, v6

    .restart local v4    # "i2":I
    .restart local v6    # "l2":J
    .local v10, "l1":J
    move v12, v8

    .line 71
    .restart local v8    # "f2":F
    .local v12, "f1":F
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v13

    .line 72
    .local v13, "d1":D
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v15

    .line 73
    .local v15, "d2":D
    move/from16 v17, v1

    .end local v1    # "i1":I
    .local v17, "i1":I
    new-instance v1, Ljava/lang/Double;

    if-lez v0, :cond_2

    add-double v18, v13, v15

    goto :goto_2

    :cond_2
    sub-double v18, v13, v15

    :goto_2
    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-wide/from16 v2, v18

    .end local v2    # "bd2":Ljava/math/BigDecimal;
    .end local v3    # "bd1":Ljava/math/BigDecimal;
    .local v21, "bd2":Ljava/math/BigDecimal;
    .local v22, "bd1":Ljava/math/BigDecimal;
    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v1

    .line 42
    .end local v4    # "i2":I
    .end local v5    # "bi2":Ljava/math/BigInteger;
    .end local v6    # "l2":J
    .end local v8    # "f2":F
    .end local v9    # "bi1":Ljava/math/BigInteger;
    .end local v10    # "l1":J
    .end local v12    # "f1":F
    .end local v13    # "d1":D
    .end local v15    # "d2":D
    .end local v17    # "i1":I
    .end local v20    # "code1":I
    .end local v21    # "bd2":Ljava/math/BigDecimal;
    .end local v22    # "bd1":Ljava/math/BigDecimal;
    .end local v23    # "code2":I
    .end local v24    # "code":I
    .local v1, "code1":I
    .local v2, "code2":I
    .local v3, "code":I
    :pswitch_2
    move/from16 v20, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "code1":I
    .end local v2    # "code2":I
    .end local v3    # "code":I
    .restart local v20    # "code1":I
    .restart local v23    # "code2":I
    .restart local v24    # "code":I
    move v1, v4

    .local v1, "i1":I
    move-object v2, v5

    .local v2, "bd2":Ljava/math/BigDecimal;
    move-object v3, v5

    .local v3, "bd1":Ljava/math/BigDecimal;
    move-object v8, v5

    .restart local v5    # "bi2":Ljava/math/BigInteger;
    .local v8, "bi1":Ljava/math/BigInteger;
    move-wide v9, v6

    .line 67
    .restart local v4    # "i2":I
    .restart local v6    # "l2":J
    .local v9, "l1":J
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v11

    .line 68
    .local v11, "f1":F
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v12

    .line 69
    .local v12, "f2":F
    new-instance v13, Ljava/lang/Float;

    if-lez v0, :cond_3

    add-float v14, v11, v12

    goto :goto_3

    :cond_3
    sub-float v14, v11, v12

    :goto_3
    invoke-direct {v13, v14}, Ljava/lang/Float;-><init>(F)V

    return-object v13

    .line 42
    .end local v4    # "i2":I
    .end local v5    # "bi2":Ljava/math/BigInteger;
    .end local v6    # "l2":J
    .end local v8    # "bi1":Ljava/math/BigInteger;
    .end local v9    # "l1":J
    .end local v11    # "f1":F
    .end local v12    # "f2":F
    .end local v20    # "code1":I
    .end local v23    # "code2":I
    .end local v24    # "code":I
    .local v1, "code1":I
    .local v2, "code2":I
    .local v3, "code":I
    :pswitch_3
    move/from16 v20, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "code1":I
    .end local v2    # "code2":I
    .end local v3    # "code":I
    .restart local v20    # "code1":I
    .restart local v23    # "code2":I
    .restart local v24    # "code":I
    move v1, v4

    .local v1, "i1":I
    move-object v2, v5

    .local v2, "bd2":Ljava/math/BigDecimal;
    move-object v3, v5

    .local v3, "bd1":Ljava/math/BigDecimal;
    move-object v8, v5

    .restart local v5    # "bi2":Ljava/math/BigInteger;
    .restart local v8    # "bi1":Ljava/math/BigInteger;
    move-wide v9, v6

    .line 64
    .restart local v4    # "i2":I
    .restart local v6    # "l2":J
    .restart local v9    # "l1":J
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v12

    invoke-static {v11, v12, v0}, Lgnu/math/RatNum;->add(Lgnu/math/RatNum;Lgnu/math/RatNum;I)Lgnu/math/RatNum;

    move-result-object v11

    return-object v11

    .line 42
    .end local v4    # "i2":I
    .end local v5    # "bi2":Ljava/math/BigInteger;
    .end local v6    # "l2":J
    .end local v8    # "bi1":Ljava/math/BigInteger;
    .end local v9    # "l1":J
    .end local v20    # "code1":I
    .end local v23    # "code2":I
    .end local v24    # "code":I
    .local v1, "code1":I
    .local v2, "code2":I
    .local v3, "code":I
    :pswitch_4
    move/from16 v20, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "code1":I
    .end local v2    # "code2":I
    .end local v3    # "code":I
    .restart local v20    # "code1":I
    .restart local v23    # "code2":I
    .restart local v24    # "code":I
    move v1, v4

    .local v1, "i1":I
    move-object v2, v5

    .local v2, "bi1":Ljava/math/BigInteger;
    move-object v3, v5

    .local v3, "bi2":Ljava/math/BigInteger;
    move-wide v8, v6

    .local v8, "l1":J
    move-wide v5, v6

    .line 60
    .restart local v4    # "i2":I
    .local v5, "l2":J
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 61
    .local v7, "bd1":Ljava/math/BigDecimal;
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v10

    .line 62
    .local v10, "bd2":Ljava/math/BigDecimal;
    if-lez v0, :cond_4

    invoke-virtual {v7, v10}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v11

    goto :goto_4

    :cond_4
    invoke-virtual {v7, v10}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v11

    :goto_4
    return-object v11

    .line 42
    .end local v4    # "i2":I
    .end local v5    # "l2":J
    .end local v7    # "bd1":Ljava/math/BigDecimal;
    .end local v8    # "l1":J
    .end local v10    # "bd2":Ljava/math/BigDecimal;
    .end local v20    # "code1":I
    .end local v23    # "code2":I
    .end local v24    # "code":I
    .local v1, "code1":I
    .local v2, "code2":I
    .local v3, "code":I
    :pswitch_5
    move/from16 v20, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "code1":I
    .end local v2    # "code2":I
    .end local v3    # "code":I
    .restart local v20    # "code1":I
    .restart local v23    # "code2":I
    .restart local v24    # "code":I
    move v1, v4

    .local v1, "i1":I
    move-object v2, v5

    .local v2, "bi1":Ljava/math/BigInteger;
    move-object v3, v5

    .local v3, "bi2":Ljava/math/BigInteger;
    move-wide v8, v6

    .restart local v8    # "l1":J
    move-wide v5, v6

    .line 57
    .restart local v4    # "i2":I
    .restart local v5    # "l2":J
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v10

    invoke-static {v7, v10, v0}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v7

    return-object v7

    .line 42
    .end local v4    # "i2":I
    .end local v5    # "l2":J
    .end local v8    # "l1":J
    .end local v20    # "code1":I
    .end local v23    # "code2":I
    .end local v24    # "code":I
    .local v1, "code1":I
    .local v2, "code2":I
    .local v3, "code":I
    :pswitch_6
    move/from16 v20, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "code1":I
    .end local v2    # "code2":I
    .end local v3    # "code":I
    .restart local v20    # "code1":I
    .restart local v23    # "code2":I
    .restart local v24    # "code":I
    move v1, v4

    .local v1, "i1":I
    move-wide v2, v6

    .local v2, "l1":J
    move-wide v5, v6

    .line 53
    .restart local v4    # "i2":I
    .restart local v5    # "l2":J
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v7

    .line 54
    .local v7, "bi1":Ljava/math/BigInteger;
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v8

    .line 55
    .local v8, "bi2":Ljava/math/BigInteger;
    if-lez v0, :cond_5

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_5

    :cond_5
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    :goto_5
    return-object v9

    .line 42
    .end local v4    # "i2":I
    .end local v5    # "l2":J
    .end local v7    # "bi1":Ljava/math/BigInteger;
    .end local v8    # "bi2":Ljava/math/BigInteger;
    .end local v20    # "code1":I
    .end local v23    # "code2":I
    .end local v24    # "code":I
    .local v1, "code1":I
    .local v2, "code2":I
    .restart local v3    # "code":I
    :pswitch_7
    move/from16 v20, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "code1":I
    .end local v2    # "code2":I
    .end local v3    # "code":I
    .restart local v20    # "code1":I
    .restart local v23    # "code2":I
    .restart local v24    # "code":I
    move v1, v4

    .local v1, "i1":I
    move v2, v4

    .line 49
    .local v2, "i2":I
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v3

    .line 50
    .local v3, "l1":J
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v5

    .line 51
    .restart local v5    # "l2":J
    new-instance v7, Ljava/lang/Long;

    if-lez v0, :cond_6

    add-long v8, v3, v5

    goto :goto_6

    :cond_6
    sub-long v8, v3, v5

    :goto_6
    invoke-direct {v7, v8, v9}, Ljava/lang/Long;-><init>(J)V

    return-object v7

    .line 45
    .end local v5    # "l2":J
    .end local v20    # "code1":I
    .end local v23    # "code2":I
    .end local v24    # "code":I
    .local v1, "code1":I
    .local v2, "code2":I
    .local v3, "code":I
    :pswitch_8
    move/from16 v20, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "code1":I
    .end local v2    # "code2":I
    .end local v3    # "code":I
    .restart local v20    # "code1":I
    .restart local v23    # "code2":I
    .restart local v24    # "code":I
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v1

    .line 46
    .local v1, "i1":I
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v2

    .line 47
    .local v2, "i2":I
    new-instance v3, Ljava/lang/Integer;

    if-lez v0, :cond_7

    add-int v4, v1, v2

    goto :goto_7

    :cond_7
    sub-int v4, v1, v2

    :goto_7
    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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

.method public static applyN(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "plusOrMinus"    # I
    .param p1, "init"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 151
    array-length v0, p2

    .line 152
    .local v0, "len":I
    move-object v1, p1

    .line 153
    .local v1, "result":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 154
    aget-object v3, p2, v2

    invoke-static {p0, v1, v3}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static applyN(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "plusOrMinus"    # I
    .param p1, "args"    # [Ljava/lang/Object;

    .line 138
    array-length v0, p1

    .line 139
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v1

    return-object v1

    .line 141
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 142
    .local v1, "result":Ljava/lang/Object;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-gez p0, :cond_1

    .line 143
    invoke-static {v1}, Lgnu/kawa/functions/AddOp;->$Mn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 144
    :cond_1
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 145
    aget-object v3, p1, v2

    invoke-static {p0, v1, v3}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .line 160
    iget v0, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    invoke-static {v0, p1}, Lgnu/kawa/functions/AddOp;->applyN(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
