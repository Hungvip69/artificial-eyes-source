.class public Lgnu/kawa/functions/DivideOp;
.super Lgnu/kawa/functions/ArithOp;
.source "DivideOp.java"


# static fields
.field public static final $Sl:Lgnu/kawa/functions/DivideOp;

.field public static final div:Lgnu/kawa/functions/DivideOp;

.field public static final div0:Lgnu/kawa/functions/DivideOp;

.field public static final idiv:Lgnu/kawa/functions/DivideOp;

.field public static final mod:Lgnu/kawa/functions/DivideOp;

.field public static final mod0:Lgnu/kawa/functions/DivideOp;

.field public static final modulo:Lgnu/kawa/functions/DivideOp;

.field public static final quotient:Lgnu/kawa/functions/DivideOp;

.field public static final remainder:Lgnu/kawa/functions/DivideOp;


# instance fields
.field rounding_mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "/"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    .line 20
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "idiv"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->idiv:Lgnu/kawa/functions/DivideOp;

    .line 21
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "quotient"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    .line 22
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "remainder"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->remainder:Lgnu/kawa/functions/DivideOp;

    .line 23
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "modulo"

    invoke-direct {v0, v1, v4}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    .line 24
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "div"

    invoke-direct {v0, v1, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->div:Lgnu/kawa/functions/DivideOp;

    .line 25
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "mod"

    invoke-direct {v0, v1, v4}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->mod:Lgnu/kawa/functions/DivideOp;

    .line 26
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "div0"

    invoke-direct {v0, v1, v3}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->div0:Lgnu/kawa/functions/DivideOp;

    .line 27
    new-instance v0, Lgnu/kawa/functions/DivideOp;

    const-string v1, "mod0"

    invoke-direct {v0, v1, v4}, Lgnu/kawa/functions/DivideOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/DivideOp;->mod0:Lgnu/kawa/functions/DivideOp;

    .line 29
    sget-object v0, Lgnu/kawa/functions/DivideOp;->idiv:Lgnu/kawa/functions/DivideOp;

    const/4 v1, 0x3

    iput v1, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 30
    sget-object v0, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    iput v1, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 31
    sget-object v0, Lgnu/kawa/functions/DivideOp;->remainder:Lgnu/kawa/functions/DivideOp;

    iput v1, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 32
    sget-object v0, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    const/4 v1, 0x1

    iput v1, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 33
    sget-object v0, Lgnu/kawa/functions/DivideOp;->div:Lgnu/kawa/functions/DivideOp;

    const/4 v1, 0x5

    iput v1, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 34
    sget-object v0, Lgnu/kawa/functions/DivideOp;->mod:Lgnu/kawa/functions/DivideOp;

    iput v1, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 35
    sget-object v0, Lgnu/kawa/functions/DivideOp;->div0:Lgnu/kawa/functions/DivideOp;

    iput v2, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 36
    sget-object v0, Lgnu/kawa/functions/DivideOp;->mod0:Lgnu/kawa/functions/DivideOp;

    iput v2, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "op"    # I

    .line 41
    invoke-direct {p0, p1, p2}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/DivideOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    sget-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string v1, "*gnu.kawa.functions.CompileArith:forDiv"

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    .line 51
    .local v2, "len":I
    if-nez v2, :cond_0

    .line 52
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v3

    return-object v3

    .line 53
    :cond_0
    const/4 v3, 0x0

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Number;

    .line 54
    .local v3, "result":Ljava/lang/Number;
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 55
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lgnu/kawa/functions/DivideOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 56
    :cond_1
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v5

    .line 57
    .local v5, "code":I
    const/4 v6, 0x1

    .local v6, "i":I
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object v10, v7

    move-wide v13, v8

    move-wide/from16 v18, v11

    move-wide/from16 v20, v18

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-wide v11, v13

    move-object v8, v10

    move-object v9, v8

    :goto_0
    if-ge v6, v2, :cond_11

    .line 59
    aget-object v22, v1, v6

    .line 60
    .local v22, "arg2":Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v4

    .line 61
    .local v4, "code2":I
    if-ge v5, v4, :cond_2

    move/from16 v23, v4

    goto :goto_1

    :cond_2
    move/from16 v23, v5

    :goto_1
    move/from16 v5, v23

    .line 62
    nop

    .line 63
    .local v23, "scode":I
    const/4 v1, 0x4

    if-ge v5, v1, :cond_5

    .line 65
    iget v1, v0, Lgnu/kawa/functions/DivideOp;->op:I

    packed-switch v1, :pswitch_data_0

    .line 72
    iget v1, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    move/from16 v26, v2

    const/4 v2, 0x3

    .end local v2    # "len":I
    .local v26, "len":I
    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    if-eq v5, v1, :cond_6

    const/4 v2, 0x2

    if-ne v5, v2, :cond_4

    .line 74
    goto :goto_2

    .line 69
    .end local v26    # "len":I
    .restart local v2    # "len":I
    :pswitch_0
    const/4 v1, 0x4

    move v5, v1

    move/from16 v23, v1

    .line 70
    move/from16 v26, v2

    move/from16 v2, v23

    const/4 v1, 0x1

    goto :goto_3

    .line 72
    .end local v2    # "len":I
    .restart local v26    # "len":I
    :cond_3
    const/4 v1, 0x1

    .line 76
    :cond_4
    const/16 v23, 0x4

    move/from16 v2, v23

    goto :goto_3

    .line 63
    .end local v26    # "len":I
    .restart local v2    # "len":I
    :cond_5
    move/from16 v26, v2

    const/4 v1, 0x1

    .line 80
    .end local v2    # "len":I
    .restart local v26    # "len":I
    :cond_6
    :goto_2
    move/from16 v2, v23

    .end local v23    # "scode":I
    .local v2, "scode":I
    :goto_3
    iget v1, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v23, v4

    .end local v4    # "code2":I
    .local v23, "code2":I
    const/4 v4, 0x5

    move/from16 v27, v6

    .end local v6    # "i":I
    .local v27, "i":I
    const/16 v6, 0x8

    if-ne v1, v4, :cond_7

    const/16 v1, 0xa

    if-gt v5, v1, :cond_7

    .line 82
    const/16 v2, 0xa

    .line 83
    if-eq v5, v6, :cond_9

    const/4 v1, 0x7

    if-eq v5, v1, :cond_9

    .line 84
    const/16 v5, 0x9

    goto :goto_5

    .line 86
    :cond_7
    if-eq v2, v6, :cond_8

    const/4 v1, 0x7

    if-ne v2, v1, :cond_9

    goto :goto_4

    :cond_8
    const/4 v1, 0x7

    .line 88
    :goto_4
    const/16 v2, 0x9

    .line 89
    iget v4, v0, Lgnu/kawa/functions/DivideOp;->op:I

    if-ne v4, v1, :cond_9

    .line 90
    move v5, v2

    .line 92
    :cond_9
    :goto_5
    packed-switch v2, :pswitch_data_1

    :pswitch_1
    move/from16 v28, v2

    .end local v2    # "scode":I
    .local v28, "scode":I
    move-object v1, v7

    .local v1, "bd1":Ljava/math/BigDecimal;
    .local v13, "l2":J
    move v2, v15

    .local v2, "i1":I
    .local v11, "l1":J
    move/from16 v4, v16

    .local v4, "i2":I
    move-object v7, v8

    .local v7, "bd2":Ljava/math/BigDecimal;
    move/from16 v8, v17

    .local v8, "mprec":I
    .local v9, "mround":Ljava/math/RoundingMode;
    .local v10, "mcontext":Ljava/math/MathContext;
    move-wide/from16 v15, v20

    .local v15, "d2":D
    move-wide/from16 v17, v18

    .line 213
    .local v17, "d1":D
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v6

    .line 214
    .local v6, "num1":Lgnu/math/Numeric;
    move-object/from16 v20, v1

    .end local v1    # "bd1":Ljava/math/BigDecimal;
    .local v20, "bd1":Ljava/math/BigDecimal;
    invoke-static/range {v22 .. v22}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v1

    .line 215
    .local v1, "num2":Lgnu/math/Numeric;
    move/from16 v21, v2

    .end local v2    # "i1":I
    .local v21, "i1":I
    iget v2, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v24, v4

    const/16 v4, 0x8

    .end local v4    # "i2":I
    .local v24, "i2":I
    if-ne v2, v4, :cond_e

    invoke-virtual {v1}, Lgnu/math/Numeric;->isZero()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 216
    invoke-virtual {v1}, Lgnu/math/Numeric;->isExact()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object v2, v6

    goto/16 :goto_10

    .line 92
    .end local v1    # "num2":Lgnu/math/Numeric;
    .end local v6    # "num1":Lgnu/math/Numeric;
    .end local v7    # "bd2":Ljava/math/BigDecimal;
    .end local v8    # "mprec":I
    .end local v9    # "mround":Ljava/math/RoundingMode;
    .end local v10    # "mcontext":Ljava/math/MathContext;
    .end local v11    # "l1":J
    .end local v13    # "l2":J
    .end local v15    # "d2":D
    .end local v17    # "d1":D
    .end local v20    # "bd1":Ljava/math/BigDecimal;
    .end local v21    # "i1":I
    .end local v24    # "i2":I
    .end local v28    # "scode":I
    .local v2, "scode":I
    :pswitch_2
    move-object v1, v7

    .local v1, "bd1":Ljava/math/BigDecimal;
    move-wide v6, v13

    .local v6, "l2":J
    move v4, v15

    .local v4, "i1":I
    .restart local v11    # "l1":J
    move/from16 v13, v16

    .local v8, "bd2":Ljava/math/BigDecimal;
    .local v13, "i2":I
    move/from16 v14, v17

    .line 189
    .restart local v9    # "mround":Ljava/math/RoundingMode;
    .restart local v10    # "mcontext":Ljava/math/MathContext;
    .local v14, "mprec":I
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v15

    .line 190
    .local v15, "d1":D
    invoke-static/range {v22 .. v22}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v17

    .line 191
    .local v17, "d2":D
    move-object/from16 v19, v1

    .end local v1    # "bd1":Ljava/math/BigDecimal;
    .local v19, "bd1":Ljava/math/BigDecimal;
    iget v1, v0, Lgnu/kawa/functions/DivideOp;->op:I

    packed-switch v1, :pswitch_data_2

    move/from16 v28, v2

    move/from16 v20, v4

    .end local v2    # "scode":I
    .end local v4    # "i1":I
    .local v20, "i1":I
    .restart local v28    # "scode":I
    goto :goto_7

    .line 205
    .end local v20    # "i1":I
    .end local v28    # "scode":I
    .restart local v2    # "scode":I
    .restart local v4    # "i1":I
    :pswitch_3
    const-wide/16 v20, 0x0

    cmpl-double v1, v17, v20

    if-eqz v1, :cond_a

    .line 206
    move/from16 v28, v2

    .end local v2    # "scode":I
    .restart local v28    # "scode":I
    div-double v1, v15, v17

    move/from16 v20, v4

    .end local v4    # "i1":I
    .restart local v20    # "i1":I
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v4

    invoke-static {v1, v2, v4}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v1

    mul-double v1, v1, v17

    sub-double/2addr v15, v1

    goto :goto_6

    .line 205
    .end local v20    # "i1":I
    .end local v28    # "scode":I
    .restart local v2    # "scode":I
    .restart local v4    # "i1":I
    :cond_a
    move/from16 v28, v2

    move/from16 v20, v4

    .line 207
    .end local v2    # "scode":I
    .end local v4    # "i1":I
    .restart local v20    # "i1":I
    .restart local v28    # "scode":I
    :goto_6
    invoke-static/range {v15 .. v16}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v3

    move/from16 v2, v28

    goto :goto_7

    .line 201
    .end local v20    # "i1":I
    .end local v28    # "scode":I
    .restart local v2    # "scode":I
    .restart local v4    # "i1":I
    :pswitch_4
    move/from16 v28, v2

    move/from16 v20, v4

    .end local v2    # "scode":I
    .end local v4    # "i1":I
    .restart local v20    # "i1":I
    .restart local v28    # "scode":I
    div-double v1, v15, v17

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v4

    invoke-static {v1, v2, v4}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v3

    .line 202
    const/4 v1, 0x4

    move v2, v1

    .end local v28    # "scode":I
    .restart local v2    # "scode":I
    move v5, v1

    .line 203
    goto :goto_7

    .line 198
    .end local v20    # "i1":I
    .restart local v4    # "i1":I
    :pswitch_5
    move/from16 v28, v2

    move/from16 v20, v4

    .end local v2    # "scode":I
    .end local v4    # "i1":I
    .restart local v20    # "i1":I
    .restart local v28    # "scode":I
    div-double v1, v15, v17

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v4

    invoke-static {v1, v2, v4}, Lgnu/math/RealNum;->toInt(DI)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 199
    move/from16 v2, v28

    goto :goto_7

    .line 195
    .end local v20    # "i1":I
    .end local v28    # "scode":I
    .restart local v2    # "scode":I
    .restart local v4    # "i1":I
    :pswitch_6
    move/from16 v28, v2

    move/from16 v20, v4

    .end local v2    # "scode":I
    .end local v4    # "i1":I
    .restart local v20    # "i1":I
    .restart local v28    # "scode":I
    div-double v1, v15, v17

    invoke-static {v1, v2}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v3

    .line 196
    move/from16 v2, v28

    .line 210
    .end local v28    # "scode":I
    .restart local v2    # "scode":I
    :goto_7
    move-wide/from16 v30, v15

    move/from16 v16, v13

    move/from16 v15, v20

    move-wide/from16 v20, v17

    move/from16 v17, v14

    move-wide v13, v6

    move-object/from16 v7, v19

    move-wide/from16 v18, v30

    goto/16 :goto_11

    .line 92
    .end local v6    # "l2":J
    .end local v8    # "bd2":Ljava/math/BigDecimal;
    .end local v9    # "mround":Ljava/math/RoundingMode;
    .end local v10    # "mcontext":Ljava/math/MathContext;
    .end local v11    # "l1":J
    .end local v13    # "i2":I
    .end local v14    # "mprec":I
    .end local v15    # "d1":D
    .end local v17    # "d2":D
    .end local v19    # "bd1":Ljava/math/BigDecimal;
    .end local v20    # "i1":I
    :pswitch_7
    move/from16 v28, v2

    .end local v2    # "scode":I
    .restart local v28    # "scode":I
    move-wide v1, v13

    .local v1, "l2":J
    move v4, v15

    .restart local v4    # "i1":I
    move-wide v6, v11

    .local v6, "l1":J
    move/from16 v8, v16

    .line 147
    .local v8, "i2":I
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v10

    .line 148
    .local v10, "bd1":Ljava/math/BigDecimal;
    invoke-static/range {v22 .. v22}, Lgnu/kawa/functions/Arithmetic;->asBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object v11

    .line 149
    .local v11, "bd2":Ljava/math/BigDecimal;
    const/4 v12, 0x0

    .line 151
    .local v12, "mprec":I
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v13

    packed-switch v13, :pswitch_data_3

    .restart local v9    # "mround":Ljava/math/RoundingMode;
    :pswitch_8
    goto :goto_9

    .line 163
    :pswitch_9
    invoke-virtual {v11}, Ljava/math/BigDecimal;->signum()I

    move-result v13

    if-gez v13, :cond_b

    sget-object v13, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    goto :goto_8

    :cond_b
    sget-object v13, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    :goto_8
    move-object v9, v13

    goto :goto_9

    .line 160
    :pswitch_a
    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 161
    goto :goto_a

    .line 157
    :pswitch_b
    sget-object v9, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 158
    goto :goto_a

    .line 154
    .end local v9    # "mround":Ljava/math/RoundingMode;
    :pswitch_c
    sget-object v9, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 155
    .restart local v9    # "mround":Ljava/math/RoundingMode;
    goto :goto_a

    .line 165
    :goto_9
    sget-object v9, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 168
    :goto_a
    new-instance v13, Ljava/math/MathContext;

    invoke-direct {v13, v12, v9}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 169
    .local v13, "mcontext":Ljava/math/MathContext;
    iget v14, v0, Lgnu/kawa/functions/DivideOp;->op:I

    packed-switch v14, :pswitch_data_4

    :pswitch_d
    goto :goto_b

    .line 183
    :pswitch_e
    invoke-virtual {v10, v11, v13}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    goto :goto_b

    .line 178
    :pswitch_f
    invoke-virtual {v10, v11, v13}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    .line 180
    const/4 v14, 0x3

    move v15, v14

    .end local v28    # "scode":I
    .local v15, "scode":I
    move v5, v14

    .line 181
    move/from16 v28, v15

    goto :goto_b

    .line 175
    .end local v15    # "scode":I
    .restart local v28    # "scode":I
    :pswitch_10
    invoke-virtual {v10, v11, v13}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 176
    goto :goto_b

    .line 172
    :pswitch_11
    invoke-virtual {v10, v11}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 173
    nop

    .line 186
    :goto_b
    move v15, v4

    move/from16 v16, v8

    move-object v8, v11

    move/from16 v17, v12

    move-wide v11, v6

    move-object v7, v10

    move-object v10, v13

    move-wide v13, v1

    move/from16 v2, v28

    goto/16 :goto_11

    .line 92
    .end local v1    # "l2":J
    .end local v4    # "i1":I
    .end local v6    # "l1":J
    .end local v8    # "i2":I
    .end local v9    # "mround":Ljava/math/RoundingMode;
    .end local v10    # "bd1":Ljava/math/BigDecimal;
    .end local v11    # "bd2":Ljava/math/BigDecimal;
    .end local v12    # "mprec":I
    .end local v13    # "mcontext":Ljava/math/MathContext;
    .end local v28    # "scode":I
    .restart local v2    # "scode":I
    :pswitch_12
    move/from16 v28, v2

    .end local v2    # "scode":I
    .restart local v28    # "scode":I
    move-wide v1, v13

    .restart local v1    # "l2":J
    move v4, v15

    .restart local v4    # "i1":I
    .local v11, "l1":J
    move/from16 v6, v16

    .line 123
    .local v6, "i2":I
    iget v13, v0, Lgnu/kawa/functions/DivideOp;->op:I

    packed-switch v13, :pswitch_data_5

    :pswitch_13
    goto :goto_d

    .line 132
    :pswitch_14
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v13

    invoke-static/range {v22 .. v22}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v15

    invoke-static {v13, v14, v15}, Lgnu/math/IntNum;->remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v3

    .line 135
    goto :goto_d

    .line 127
    :pswitch_15
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v13

    invoke-static/range {v22 .. v22}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v15

    invoke-static {v13, v14, v15}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v3

    .line 130
    goto :goto_d

    .line 137
    :pswitch_16
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v13

    invoke-static/range {v22 .. v22}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v14

    invoke-static {v13, v14}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object v3

    .line 139
    instance-of v13, v3, Lgnu/math/IntNum;

    if-eqz v13, :cond_c

    const/16 v25, 0x4

    goto :goto_c

    :cond_c
    const/4 v13, 0x6

    const/16 v25, 0x6

    :goto_c
    move/from16 v5, v25

    .line 141
    move v13, v5

    move/from16 v28, v13

    .line 144
    :goto_d
    move-wide v13, v1

    move v15, v4

    move/from16 v16, v6

    move/from16 v2, v28

    goto/16 :goto_11

    .line 92
    .end local v1    # "l2":J
    .end local v4    # "i1":I
    .end local v6    # "i2":I
    .end local v11    # "l1":J
    .end local v28    # "scode":I
    .restart local v2    # "scode":I
    :pswitch_17
    move/from16 v28, v2

    .end local v2    # "scode":I
    .restart local v28    # "scode":I
    move v1, v15

    .local v1, "i1":I
    move/from16 v2, v16

    .line 109
    .local v2, "i2":I
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v11

    .line 110
    .restart local v11    # "l1":J
    invoke-static/range {v22 .. v22}, Lgnu/kawa/functions/Arithmetic;->asLong(Ljava/lang/Object;)J

    move-result-wide v13

    .line 111
    .local v13, "l2":J
    iget v4, v0, Lgnu/kawa/functions/DivideOp;->op:I

    packed-switch v4, :pswitch_data_6

    .line 117
    div-long/2addr v11, v13

    goto :goto_e

    .line 114
    :pswitch_18
    rem-long/2addr v11, v13

    .line 115
    nop

    .line 120
    :goto_e
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 121
    move v15, v1

    move/from16 v16, v2

    move/from16 v2, v28

    goto/16 :goto_11

    .line 95
    .end local v1    # "i1":I
    .end local v11    # "l1":J
    .end local v13    # "l2":J
    .end local v28    # "scode":I
    .local v2, "scode":I
    :pswitch_19
    move/from16 v28, v2

    .end local v2    # "scode":I
    .restart local v28    # "scode":I
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v1

    .line 96
    .restart local v1    # "i1":I
    invoke-static/range {v22 .. v22}, Lgnu/kawa/functions/Arithmetic;->asInt(Ljava/lang/Object;)I

    move-result v2

    .line 97
    .local v2, "i2":I
    iget v4, v0, Lgnu/kawa/functions/DivideOp;->op:I

    packed-switch v4, :pswitch_data_7

    .line 103
    div-int/2addr v1, v2

    goto :goto_f

    .line 100
    :pswitch_1a
    rem-int/2addr v1, v2

    .line 101
    nop

    .line 106
    :goto_f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 107
    move v15, v1

    move/from16 v16, v2

    move/from16 v2, v28

    goto/16 :goto_11

    .line 216
    .end local v2    # "i2":I
    .local v1, "num2":Lgnu/math/Numeric;
    .local v6, "num1":Lgnu/math/Numeric;
    .restart local v7    # "bd2":Ljava/math/BigDecimal;
    .local v8, "mprec":I
    .restart local v9    # "mround":Ljava/math/RoundingMode;
    .local v10, "mcontext":Ljava/math/MathContext;
    .restart local v11    # "l1":J
    .restart local v13    # "l2":J
    .local v15, "d2":D
    .local v17, "d1":D
    .local v20, "bd1":Ljava/math/BigDecimal;
    .restart local v21    # "i1":I
    .restart local v24    # "i2":I
    :cond_d
    invoke-virtual {v6}, Lgnu/math/Numeric;->toInexact()Lgnu/math/Numeric;

    move-result-object v2

    :goto_10
    return-object v2

    .line 217
    :cond_e
    invoke-virtual {v6, v1}, Lgnu/math/Numeric;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v2

    .line 218
    .local v2, "numr":Lgnu/math/Numeric;
    iget v4, v0, Lgnu/kawa/functions/DivideOp;->op:I

    move/from16 v29, v5

    const/16 v5, 0x8

    .end local v5    # "code":I
    .local v29, "code":I
    if-ne v4, v5, :cond_f

    .line 219
    move-object v4, v2

    check-cast v4, Lgnu/math/RealNum;

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v5

    invoke-virtual {v4, v5}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v4

    invoke-virtual {v4, v1}, Lgnu/math/RealNum;->mul(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v4

    invoke-virtual {v6, v4}, Lgnu/math/Numeric;->sub(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v2

    .line 220
    :cond_f
    iget v4, v0, Lgnu/kawa/functions/DivideOp;->op:I

    packed-switch v4, :pswitch_data_8

    .line 233
    move-object v3, v2

    move-wide/from16 v18, v17

    move/from16 v2, v28

    move/from16 v5, v29

    move/from16 v17, v8

    move-object v8, v7

    move-object/from16 v7, v20

    move-wide/from16 v30, v15

    move/from16 v15, v21

    move-wide/from16 v20, v30

    move/from16 v16, v24

    goto :goto_11

    .line 223
    :pswitch_1b
    move-object v4, v2

    check-cast v4, Lgnu/math/RealNum;

    iget v5, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    invoke-virtual {v4, v5}, Lgnu/math/RealNum;->toExactInt(I)Lgnu/math/IntNum;

    move-result-object v3

    .line 224
    const/4 v4, 0x4

    move v5, v4

    .line 225
    .end local v28    # "scode":I
    .end local v29    # "code":I
    .local v4, "scode":I
    .restart local v5    # "code":I
    move v2, v4

    move-wide/from16 v18, v17

    move/from16 v17, v8

    move-object v8, v7

    move-object/from16 v7, v20

    move-wide/from16 v30, v15

    move/from16 v15, v21

    move-wide/from16 v20, v30

    move/from16 v16, v24

    goto :goto_11

    .line 227
    .end local v4    # "scode":I
    .end local v5    # "code":I
    .restart local v28    # "scode":I
    .restart local v29    # "code":I
    :pswitch_1c
    move-object v4, v2

    check-cast v4, Lgnu/math/RealNum;

    iget v5, v0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    invoke-virtual {v4, v5}, Lgnu/math/RealNum;->toInt(I)Lgnu/math/RealNum;

    move-result-object v3

    .line 228
    move-wide/from16 v18, v17

    move/from16 v2, v28

    move/from16 v5, v29

    move/from16 v17, v8

    move-object v8, v7

    move-object/from16 v7, v20

    move-wide/from16 v30, v15

    move/from16 v15, v21

    move-wide/from16 v20, v30

    move/from16 v16, v24

    goto :goto_11

    .line 230
    :pswitch_1d
    invoke-virtual {v2}, Lgnu/math/Numeric;->toInexact()Lgnu/math/Numeric;

    move-result-object v3

    .line 231
    move-wide/from16 v18, v17

    move/from16 v2, v28

    move/from16 v5, v29

    move/from16 v17, v8

    move-object v8, v7

    move-object/from16 v7, v20

    move-wide/from16 v30, v15

    move/from16 v15, v21

    move-wide/from16 v20, v30

    move/from16 v16, v24

    .line 236
    .end local v1    # "num2":Lgnu/math/Numeric;
    .end local v6    # "num1":Lgnu/math/Numeric;
    .end local v7    # "bd2":Ljava/math/BigDecimal;
    .end local v8    # "mprec":I
    .end local v9    # "mround":Ljava/math/RoundingMode;
    .end local v10    # "mcontext":Ljava/math/MathContext;
    .end local v11    # "l1":J
    .end local v13    # "l2":J
    .end local v15    # "d2":D
    .end local v17    # "d1":D
    .end local v20    # "bd1":Ljava/math/BigDecimal;
    .end local v21    # "i1":I
    .end local v24    # "i2":I
    .end local v28    # "scode":I
    .end local v29    # "code":I
    .local v2, "scode":I
    .restart local v5    # "code":I
    :goto_11
    if-eq v5, v2, :cond_10

    .line 238
    packed-switch v5, :pswitch_data_9

    :pswitch_1e
    goto :goto_12

    .line 250
    :pswitch_1f
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 251
    .end local v3    # "result":Ljava/lang/Number;
    .local v1, "result":Ljava/lang/Number;
    move-object v3, v1

    goto :goto_12

    .line 247
    .end local v1    # "result":Ljava/lang/Number;
    .restart local v3    # "result":Ljava/lang/Number;
    :pswitch_20
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 248
    .end local v3    # "result":Ljava/lang/Number;
    .restart local v1    # "result":Ljava/lang/Number;
    move-object v3, v1

    goto :goto_12

    .line 253
    .end local v1    # "result":Ljava/lang/Number;
    .restart local v3    # "result":Ljava/lang/Number;
    :pswitch_21
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->asBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v3, v1

    .end local v3    # "result":Ljava/lang/Number;
    .restart local v1    # "result":Ljava/lang/Number;
    goto :goto_12

    .line 244
    .end local v1    # "result":Ljava/lang/Number;
    .restart local v3    # "result":Ljava/lang/Number;
    :pswitch_22
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 245
    .end local v3    # "result":Ljava/lang/Number;
    .restart local v1    # "result":Ljava/lang/Number;
    move-object v3, v1

    goto :goto_12

    .line 241
    .end local v1    # "result":Ljava/lang/Number;
    .restart local v3    # "result":Ljava/lang/Number;
    :pswitch_23
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 242
    .end local v3    # "result":Ljava/lang/Number;
    .restart local v1    # "result":Ljava/lang/Number;
    move-object v3, v1

    .line 57
    .end local v1    # "result":Ljava/lang/Number;
    .end local v2    # "scode":I
    .end local v22    # "arg2":Ljava/lang/Object;
    .end local v23    # "code2":I
    .restart local v3    # "result":Ljava/lang/Number;
    :cond_10
    :goto_12
    add-int/lit8 v6, v27, 0x1

    move-object/from16 v1, p1

    move/from16 v2, v26

    const/4 v4, 0x1

    .end local v27    # "i":I
    .local v6, "i":I
    goto/16 :goto_0

    .line 257
    .end local v6    # "i":I
    .end local v26    # "len":I
    .local v2, "len":I
    :cond_11
    return-object v3

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_19
        :pswitch_17
        :pswitch_1
        :pswitch_12
        :pswitch_7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_11
        :pswitch_d
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_16
        :pswitch_13
        :pswitch_15
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x8
        :pswitch_18
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x8
        :pswitch_1a
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x5
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_20
        :pswitch_1f
    .end packed-switch
.end method

.method public getRoundingMode()I
    .locals 1

    .line 16
    iget v0, p0, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    return v0
.end method

.method public numArgs()I
    .locals 2

    .line 262
    iget v0, p0, Lgnu/kawa/functions/DivideOp;->op:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, -0xfff

    goto :goto_0

    :cond_0
    const/16 v0, 0x2002

    :goto_0
    return v0
.end method
