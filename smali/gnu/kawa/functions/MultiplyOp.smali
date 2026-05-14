.class public Lgnu/kawa/functions/MultiplyOp;
.super Lgnu/kawa/functions/ArithOp;
.source "MultiplyOp.java"


# static fields
.field public static final $St:Lgnu/kawa/functions/MultiplyOp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lgnu/kawa/functions/MultiplyOp;

    const-string v1, "*"

    invoke-direct {v0, v1}, Lgnu/kawa/functions/MultiplyOp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 20
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 21
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/MultiplyOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    sget-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string v1, "*gnu.kawa.functions.CompileArith:forMul"

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 33
    move-object v0, p0

    check-cast v0, Lgnu/math/Numeric;

    invoke-virtual {v0, p1}, Lgnu/math/Numeric;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29
    .param p1, "args"    # [Ljava/lang/Object;

    .line 38
    move-object/from16 v0, p1

    array-length v1, v0

    .line 39
    .local v1, "len":I
    if-nez v1, :cond_0

    .line 40
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v2

    return-object v2

    .line 41
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Number;

    .line 42
    .local v2, "result":Ljava/lang/Number;
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v3

    .line 43
    .local v3, "code":I
    const/4 v4, 0x1

    .local v4, "i":I
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v8, v5

    move-wide/from16 v17, v10

    move-wide/from16 v19, v17

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide v9, v6

    move-wide v11, v9

    move-object v6, v8

    move-object v7, v6

    :goto_0
    if-ge v4, v1, :cond_2

    .line 45
    aget-object v21, v0, v4

    .line 46
    .local v21, "arg2":Ljava/lang/Object;
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 47
    .local v0, "code2":I
    if-ge v3, v0, :cond_1

    move/from16 v22, v0

    goto :goto_1

    :cond_1
    move/from16 v22, v3

    :goto_1
    move/from16 v3, v22

    .line 49
    packed-switch v3, :pswitch_data_0

    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "code2":I
    .end local v1    # "len":I
    .local v22, "code2":I
    .local v23, "len":I
    move-object v0, v5

    .local v0, "bi2":Ljava/math/BigInteger;
    move-object v1, v6

    .local v1, "bi1":Ljava/math/BigInteger;
    move-wide v5, v9

    .local v5, "l2":J
    move v9, v13

    .local v9, "i1":I
    move v10, v14

    .local v7, "bd1":Ljava/math/BigDecimal;
    .local v8, "bd2":Ljava/math/BigDecimal;
    .local v10, "i2":I
    .local v11, "l1":J
    move v13, v15

    .local v13, "f2":F
    move/from16 v14, v16

    .local v14, "f1":F
    move-wide/from16 v15, v17

    .local v15, "d2":D
    move-wide/from16 v17, v19

    .line 95
    .local v17, "d1":D
    move-object/from16 v19, v0

    .end local v0    # "bi2":Ljava/math/BigInteger;
    .local v19, "bi2":Ljava/math/BigInteger;
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    move-object/from16 v20, v1

    .end local v1    # "bi1":Ljava/math/BigInteger;
    .local v20, "bi1":Ljava/math/BigInteger;
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/math/Numeric;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v0

    move-object v2, v0

    move/from16 v25, v13

    move v13, v9

    move/from16 v26, v14

    move v14, v10

    move-wide v9, v5

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-wide/from16 v19, v17

    move-wide/from16 v17, v15

    move/from16 v15, v25

    move/from16 v16, v26

    .end local v2    # "result":Ljava/lang/Number;
    .local v0, "result":Ljava/lang/Number;
    goto/16 :goto_2

    .line 90
    .end local v10    # "i2":I
    .end local v20    # "bi1":Ljava/math/BigInteger;
    .end local v22    # "code2":I
    .end local v23    # "len":I
    .local v0, "code2":I
    .local v1, "len":I
    .restart local v2    # "result":Ljava/lang/Number;
    .local v5, "bi2":Ljava/math/BigInteger;
    .local v6, "bi1":Ljava/math/BigInteger;
    .local v9, "l2":J
    .local v13, "i1":I
    .local v14, "i2":I
    .local v15, "f2":F
    .local v16, "f1":F
    .local v17, "d2":D
    .local v19, "d1":D
    :pswitch_0
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v19

    .line 91
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v17

    .line 92
    move/from16 v22, v0

    .end local v0    # "code2":I
    .restart local v22    # "code2":I
    new-instance v0, Lgnu/math/DFloNum;

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    .end local v5    # "bi2":Ljava/math/BigInteger;
    .end local v6    # "bi1":Ljava/math/BigInteger;
    .local v23, "bi2":Ljava/math/BigInteger;
    .local v24, "bi1":Ljava/math/BigInteger;
    mul-double v5, v19, v17

    invoke-direct {v0, v5, v6}, Lgnu/math/DFloNum;-><init>(D)V

    .line 93
    .end local v2    # "result":Ljava/lang/Number;
    .local v0, "result":Ljava/lang/Number;
    move-object v2, v0

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move/from16 v23, v1

    goto/16 :goto_2

    .line 49
    .end local v7    # "bd1":Ljava/math/BigDecimal;
    .end local v8    # "bd2":Ljava/math/BigDecimal;
    .end local v9    # "l2":J
    .end local v11    # "l1":J
    .end local v13    # "i1":I
    .end local v14    # "i2":I
    .end local v15    # "f2":F
    .end local v16    # "f1":F
    .end local v17    # "d2":D
    .end local v19    # "d1":D
    .end local v22    # "code2":I
    .end local v23    # "bi2":Ljava/math/BigInteger;
    .end local v24    # "bi1":Ljava/math/BigInteger;
    .local v0, "code2":I
    .restart local v2    # "result":Ljava/lang/Number;
    :pswitch_1
    move/from16 v22, v0

    .end local v0    # "code2":I
    .restart local v22    # "code2":I
    move-object v0, v5

    .local v0, "bi2":Ljava/math/BigInteger;
    move-object v5, v6

    .local v5, "bi1":Ljava/math/BigInteger;
    .restart local v9    # "l2":J
    move v6, v13

    .local v6, "i1":I
    move v13, v14

    .restart local v7    # "bd1":Ljava/math/BigDecimal;
    .restart local v8    # "bd2":Ljava/math/BigDecimal;
    .restart local v11    # "l1":J
    .local v13, "i2":I
    move v14, v15

    .local v14, "f2":F
    move/from16 v15, v16

    .line 85
    .local v15, "f1":F
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v16

    .line 86
    .local v16, "d1":D
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v18

    .line 87
    .local v18, "d2":D
    move-object/from16 v20, v0

    .end local v0    # "bi2":Ljava/math/BigInteger;
    .local v20, "bi2":Ljava/math/BigInteger;
    new-instance v0, Ljava/lang/Double;

    move-object/from16 v23, v5

    move/from16 v24, v6

    .end local v5    # "bi1":Ljava/math/BigInteger;
    .end local v6    # "i1":I
    .local v23, "bi1":Ljava/math/BigInteger;
    .local v24, "i1":I
    mul-double v5, v16, v18

    invoke-direct {v0, v5, v6}, Ljava/lang/Double;-><init>(D)V

    .line 88
    .end local v2    # "result":Ljava/lang/Number;
    .local v0, "result":Ljava/lang/Number;
    move-object v2, v0

    move-object/from16 v5, v20

    move-object/from16 v6, v23

    move/from16 v23, v1

    move/from16 v25, v14

    move v14, v13

    move/from16 v13, v24

    move/from16 v26, v15

    move/from16 v15, v25

    move-wide/from16 v27, v16

    move/from16 v16, v26

    move-wide/from16 v17, v18

    move-wide/from16 v19, v27

    goto/16 :goto_2

    .line 49
    .end local v7    # "bd1":Ljava/math/BigDecimal;
    .end local v8    # "bd2":Ljava/math/BigDecimal;
    .end local v9    # "l2":J
    .end local v11    # "l1":J
    .end local v13    # "i2":I
    .end local v14    # "f2":F
    .end local v15    # "f1":F
    .end local v16    # "d1":D
    .end local v18    # "d2":D
    .end local v20    # "bi2":Ljava/math/BigInteger;
    .end local v22    # "code2":I
    .end local v23    # "bi1":Ljava/math/BigInteger;
    .end local v24    # "i1":I
    .local v0, "code2":I
    .restart local v2    # "result":Ljava/lang/Number;
    :pswitch_2
    move/from16 v22, v0

    .end local v0    # "code2":I
    .restart local v22    # "code2":I
    move-object v0, v5

    .local v0, "bi2":Ljava/math/BigInteger;
    move-object v5, v6

    .restart local v5    # "bi1":Ljava/math/BigInteger;
    .restart local v9    # "l2":J
    move v6, v13

    .restart local v6    # "i1":I
    move v13, v14

    .line 80
    .restart local v7    # "bd1":Ljava/math/BigDecimal;
    .restart local v8    # "bd2":Ljava/math/BigDecimal;
    .restart local v11    # "l1":J
    .restart local v13    # "i2":I
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v14

    .line 81
    .local v14, "f1":F
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v15

    .line 82
    .local v15, "f2":F
    move-object/from16 v16, v0

    .end local v0    # "bi2":Ljava/math/BigInteger;
    .local v16, "bi2":Ljava/math/BigInteger;
    new-instance v0, Ljava/lang/Float;

    move/from16 v23, v1

    .end local v1    # "len":I
    .local v23, "len":I
    mul-float v1, v14, v15

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    .line 83
    .end local v2    # "result":Ljava/lang/Number;
    .local v0, "result":Ljava/lang/Number;
    move-object v2, v0

    move/from16 v25, v6

    move-object v6, v5

    move-object/from16 v5, v16

    move/from16 v16, v14

    move v14, v13

    move/from16 v13, v25

    goto/16 :goto_2

    .line 49
    .end local v5    # "bi1":Ljava/math/BigInteger;
    .end local v6    # "i1":I
    .end local v7    # "bd1":Ljava/math/BigDecimal;
    .end local v8    # "bd2":Ljava/math/BigDecimal;
    .end local v9    # "l2":J
    .end local v11    # "l1":J
    .end local v13    # "i2":I
    .end local v14    # "f1":F
    .end local v15    # "f2":F
    .end local v16    # "bi2":Ljava/math/BigInteger;
    .end local v22    # "code2":I
    .end local v23    # "len":I
    .local v0, "code2":I
    .restart local v1    # "len":I
    .restart local v2    # "result":Ljava/lang/Number;
    :pswitch_3
    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "code2":I
    .end local v1    # "len":I
    .restart local v22    # "code2":I
    .restart local v23    # "len":I
    move-object v0, v5

    .local v0, "bi2":Ljava/math/BigInteger;
    move-object v1, v6

    .local v1, "bi1":Ljava/math/BigInteger;
    move-wide v5, v9

    .local v5, "l2":J
    move v9, v13

    .local v9, "i1":I
    move v10, v14

    .line 76
    .restart local v7    # "bd1":Ljava/math/BigDecimal;
    .restart local v8    # "bd2":Ljava/math/BigDecimal;
    .restart local v10    # "i2":I
    .restart local v11    # "l1":J
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v13

    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asRatNum(Ljava/lang/Object;)Lgnu/math/RatNum;

    move-result-object v14

    invoke-static {v13, v14}, Lgnu/math/RatNum;->times(Lgnu/math/RatNum;Lgnu/math/RatNum;)Lgnu/math/RatNum;

    move-result-object v2

    .line 78
    move v13, v9

    move v14, v10

    move-wide v9, v5

    move-object v5, v0

    move-object v6, v1

    goto/16 :goto_2

    .line 49
    .end local v5    # "l2":J
    .end local v7    # "bd1":Ljava/math/BigDecimal;
    .end local v8    # "bd2":Ljava/math/BigDecimal;
    .end local v9    # "i1":I
    .end local v10    # "i2":I
    .end local v11    # "l1":J
    .end local v22    # "code2":I
    .end local v23    # "len":I
    .local v0, "code2":I
    .local v1, "len":I
    :pswitch_4
    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "code2":I
    .end local v1    # "len":I
    .restart local v22    # "code2":I
    .restart local v23    # "len":I
    move-object v0, v5

    .local v0, "bi2":Ljava/math/BigInteger;
    move-object v1, v6

    .local v1, "bi1":Ljava/math/BigInteger;
    move-wide v5, v9

    .restart local v5    # "l2":J
    move v7, v13

    .local v7, "i1":I
    move v8, v14

    .local v8, "i2":I
    move-wide v9, v11

    .line 71
    .local v9, "l1":J
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v11

    .line 72
    .local v11, "bd1":Ljava/math/BigDecimal;
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v12

    .line 73
    .local v12, "bd2":Ljava/math/BigDecimal;
    invoke-virtual {v11, v12}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 74
    move-object v7, v11

    move-object v8, v12

    move-wide v11, v9

    move-wide v9, v5

    move-object v5, v0

    move-object v6, v1

    goto/16 :goto_2

    .line 49
    .end local v5    # "l2":J
    .end local v7    # "i1":I
    .end local v8    # "i2":I
    .end local v9    # "l1":J
    .end local v11    # "bd1":Ljava/math/BigDecimal;
    .end local v12    # "bd2":Ljava/math/BigDecimal;
    .end local v22    # "code2":I
    .end local v23    # "len":I
    .local v0, "code2":I
    .local v1, "len":I
    :pswitch_5
    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "code2":I
    .end local v1    # "len":I
    .restart local v22    # "code2":I
    .restart local v23    # "len":I
    move-object v0, v5

    .local v0, "bi2":Ljava/math/BigInteger;
    move-object v1, v6

    .local v1, "bi1":Ljava/math/BigInteger;
    move-wide v5, v9

    .restart local v5    # "l2":J
    move v9, v13

    .local v9, "i1":I
    move v10, v14

    .line 67
    .restart local v10    # "i2":I
    .local v11, "l1":J
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v13

    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v14

    invoke-static {v13, v14}, Lgnu/math/IntNum;->times(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    .line 69
    move v13, v9

    move v14, v10

    move-wide v9, v5

    move-object v5, v0

    move-object v6, v1

    goto/16 :goto_2

    .line 49
    .end local v5    # "l2":J
    .end local v9    # "i1":I
    .end local v10    # "i2":I
    .end local v11    # "l1":J
    .end local v22    # "code2":I
    .end local v23    # "len":I
    .local v0, "code2":I
    .local v1, "len":I
    :pswitch_6
    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "code2":I
    .end local v1    # "len":I
    .restart local v22    # "code2":I
    .restart local v23    # "len":I
    move-wide v0, v9

    .local v0, "l2":J
    move v5, v13

    .local v5, "i1":I
    move v6, v14

    .local v6, "i2":I
    move-wide v9, v11

    .line 62
    .local v9, "l1":J
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v11

    .line 63
    .local v11, "bi1":Ljava/math/BigInteger;
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v12

    .line 64
    .local v12, "bi2":Ljava/math/BigInteger;
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 65
    move-object v6, v11

    move-object v5, v12

    move-wide v11, v9

    move-wide v9, v0

    goto :goto_2

    .line 49
    .end local v5    # "i1":I
    .end local v6    # "i2":I
    .end local v9    # "l1":J
    .end local v11    # "bi1":Ljava/math/BigInteger;
    .end local v12    # "bi2":Ljava/math/BigInteger;
    .end local v22    # "code2":I
    .end local v23    # "len":I
    .local v0, "code2":I
    .restart local v1    # "len":I
    :pswitch_7
    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "code2":I
    .end local v1    # "len":I
    .restart local v22    # "code2":I
    .restart local v23    # "len":I
    move v0, v13

    .local v0, "i1":I
    move v1, v14

    .line 57
    .local v1, "i2":I
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v9

    .line 58
    .restart local v9    # "l1":J
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v11

    .line 59
    .local v11, "l2":J
    new-instance v13, Ljava/lang/Long;

    move/from16 v24, v0

    .end local v0    # "i1":I
    .end local v1    # "i2":I
    .local v14, "i2":I
    .restart local v24    # "i1":I
    mul-long v0, v9, v11

    invoke-direct {v13, v0, v1}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v13

    .line 60
    .end local v2    # "result":Ljava/lang/Number;
    .local v0, "result":Ljava/lang/Number;
    move-object v2, v0

    move/from16 v13, v24

    move-wide/from16 v25, v9

    move-wide v9, v11

    move-wide/from16 v11, v25

    goto :goto_2

    .line 52
    .end local v9    # "l1":J
    .end local v11    # "l2":J
    .end local v14    # "i2":I
    .end local v22    # "code2":I
    .end local v23    # "len":I
    .end local v24    # "i1":I
    .local v0, "code2":I
    .local v1, "len":I
    .restart local v2    # "result":Ljava/lang/Number;
    :pswitch_8
    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "code2":I
    .end local v1    # "len":I
    .restart local v22    # "code2":I
    .restart local v23    # "len":I
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v0

    .line 53
    .local v0, "i1":I
    invoke-static/range {v21 .. v21}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v1

    .line 54
    .local v1, "i2":I
    new-instance v13, Ljava/lang/Integer;

    mul-int v14, v0, v1

    invoke-direct {v13, v14}, Ljava/lang/Integer;-><init>(I)V

    move-object v2, v13

    .line 55
    move v13, v0

    move v14, v1

    .line 43
    .end local v0    # "i1":I
    .end local v1    # "i2":I
    .end local v21    # "arg2":Ljava/lang/Object;
    .end local v22    # "code2":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    goto/16 :goto_0

    .line 99
    .end local v4    # "i":I
    .end local v23    # "len":I
    .local v1, "len":I
    :cond_2
    return-object v2

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

.method public defaultResult()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method
