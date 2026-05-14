.class public Lgnu/kawa/functions/BitwiseOp;
.super Lgnu/kawa/functions/ArithOp;
.source "BitwiseOp.java"


# static fields
.field public static final and:Lgnu/kawa/functions/BitwiseOp;

.field public static final ashift:Lgnu/kawa/functions/BitwiseOp;

.field public static final ashiftl:Lgnu/kawa/functions/BitwiseOp;

.field public static final ashiftr:Lgnu/kawa/functions/BitwiseOp;

.field public static final ior:Lgnu/kawa/functions/BitwiseOp;

.field public static final not:Lgnu/kawa/functions/BitwiseOp;

.field public static final xor:Lgnu/kawa/functions/BitwiseOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    const-string v1, "bitwise-and"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->and:Lgnu/kawa/functions/BitwiseOp;

    .line 15
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    const-string v1, "bitwise-ior"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->ior:Lgnu/kawa/functions/BitwiseOp;

    .line 17
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    const-string v1, "bitwise-xor"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->xor:Lgnu/kawa/functions/BitwiseOp;

    .line 19
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    const-string v1, "bitwise-arithmetic-shift"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->ashift:Lgnu/kawa/functions/BitwiseOp;

    .line 21
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    const-string v1, "bitwise-arithmetic-shift-left"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->ashiftl:Lgnu/kawa/functions/BitwiseOp;

    .line 23
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    const-string v1, "bitwise-arithmetic-shift-right"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->ashiftr:Lgnu/kawa/functions/BitwiseOp;

    .line 25
    new-instance v0, Lgnu/kawa/functions/BitwiseOp;

    const-string v1, "bitwise-not"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/BitwiseOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/functions/BitwiseOp;->not:Lgnu/kawa/functions/BitwiseOp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "op"    # I

    .line 30
    invoke-direct {p0, p1, p2}, Lgnu/kawa/functions/ArithOp;-><init>(Ljava/lang/String;I)V

    .line 31
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileArith:validateApplyArithOp"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/BitwiseOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    sget-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string v1, "*gnu.kawa.functions.CompileArith:forBitwise"

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static checkNonNegativeShift(Lgnu/mapping/Procedure;I)I
    .locals 4
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "amount"    # I

    .line 120
    if-ltz p1, :cond_0

    .line 123
    return p1

    .line 121
    :cond_0
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "non-negative integer"

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3, v1, v2}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method public static shiftLeft(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 1
    .param p0, "value"    # Lgnu/math/IntNum;
    .param p1, "count"    # I

    .line 128
    sget-object v0, Lgnu/kawa/functions/BitwiseOp;->ashiftl:Lgnu/kawa/functions/BitwiseOp;

    invoke-static {v0, p1}, Lgnu/kawa/functions/BitwiseOp;->checkNonNegativeShift(Lgnu/mapping/Procedure;I)I

    move-result v0

    invoke-static {p0, v0}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public static shiftRight(Lgnu/math/IntNum;I)Lgnu/math/IntNum;
    .locals 1
    .param p0, "value"    # Lgnu/math/IntNum;
    .param p1, "count"    # I

    .line 133
    sget-object v0, Lgnu/kawa/functions/BitwiseOp;->ashiftr:Lgnu/kawa/functions/BitwiseOp;

    invoke-static {v0, p1}, Lgnu/kawa/functions/BitwiseOp;->checkNonNegativeShift(Lgnu/mapping/Procedure;I)I

    move-result v0

    neg-int v0, v0

    invoke-static {p0, v0}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public adjustResult(Lgnu/math/IntNum;I)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Lgnu/math/IntNum;
    .param p2, "code"    # I

    .line 46
    packed-switch p2, :pswitch_data_0

    .line 55
    return-object p1

    .line 53
    :pswitch_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lgnu/math/IntNum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 51
    :pswitch_1
    invoke-virtual {p1}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 49
    :pswitch_2
    invoke-virtual {p1}, Lgnu/math/IntNum;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "arg1"    # Ljava/lang/Object;

    .line 61
    iget v0, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 63
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 64
    .local v0, "code1":I
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v1

    .line 65
    .local v1, "iarg1":Lgnu/math/IntNum;
    invoke-static {v1}, Lgnu/math/BitOps;->not(Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lgnu/kawa/functions/BitwiseOp;->adjustResult(Lgnu/math/IntNum;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 68
    .end local v0    # "code1":I
    .end local v1    # "iarg1":Lgnu/math/IntNum;
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/functions/BitwiseOp;->defaultResult()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/kawa/functions/BitwiseOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 73
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 74
    .local v0, "kind1":I
    invoke-static {p2}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v1

    .line 75
    .local v1, "kind2":I
    iget v2, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    iget v2, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v3, 0xc

    if-le v2, v3, :cond_2

    :cond_0
    if-lez v0, :cond_2

    if-le v0, v1, :cond_1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v0

    .line 76
    .local v2, "kind":I
    :goto_1
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v3

    .line 77
    .local v3, "iarg1":Lgnu/math/IntNum;
    invoke-static {p2}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v4

    .line 79
    .local v4, "iarg2":Lgnu/math/IntNum;
    iget v5, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    move-object v5, v6

    .local v5, "result":Lgnu/math/IntNum;
    const/4 v6, 0x0

    .line 97
    .local v6, "amount":I
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7}, Ljava/lang/Error;-><init>()V

    throw v7

    .line 79
    .end local v5    # "result":Lgnu/math/IntNum;
    .end local v6    # "amount":I
    :pswitch_1
    move-object v5, v6

    .line 83
    .restart local v5    # "result":Lgnu/math/IntNum;
    invoke-static {v3, v4}, Lgnu/math/BitOps;->xor(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v5

    goto :goto_2

    .line 79
    .end local v5    # "result":Lgnu/math/IntNum;
    :pswitch_2
    move-object v5, v6

    .line 82
    .restart local v5    # "result":Lgnu/math/IntNum;
    invoke-static {v3, v4}, Lgnu/math/BitOps;->ior(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v5

    goto :goto_2

    .line 81
    .end local v5    # "result":Lgnu/math/IntNum;
    :pswitch_3
    invoke-static {v3, v4}, Lgnu/math/BitOps;->and(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v5

    .restart local v5    # "result":Lgnu/math/IntNum;
    goto :goto_2

    .line 79
    .end local v5    # "result":Lgnu/math/IntNum;
    :pswitch_4
    move-object v5, v6

    .line 87
    .restart local v5    # "result":Lgnu/math/IntNum;
    invoke-virtual {v4}, Lgnu/math/IntNum;->intValue()I

    move-result v6

    .line 88
    .restart local v6    # "amount":I
    iget v7, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v8, 0xb

    if-eq v7, v8, :cond_3

    iget v7, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v9, 0xa

    if-ne v7, v9, :cond_4

    .line 90
    :cond_3
    invoke-static {p0, v6}, Lgnu/kawa/functions/BitwiseOp;->checkNonNegativeShift(Lgnu/mapping/Procedure;I)I

    .line 91
    iget v7, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    if-ne v7, v8, :cond_4

    .line 92
    neg-int v6, v6

    .line 94
    :cond_4
    invoke-static {v3, v6}, Lgnu/math/IntNum;->shift(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object v5

    .line 95
    nop

    .line 99
    .end local v6    # "amount":I
    :goto_2
    invoke-virtual {p0, v5, v2}, Lgnu/kawa/functions/BitwiseOp;->adjustResult(Lgnu/math/IntNum;I)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;

    .line 104
    array-length v0, p1

    .line 105
    .local v0, "alen":I
    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lgnu/kawa/functions/BitwiseOp;->defaultResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 107
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 108
    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lgnu/kawa/functions/BitwiseOp;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 111
    :cond_1
    aget-object v1, p1, v1

    .line 112
    .local v1, "r":Ljava/lang/Object;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 113
    aget-object v3, p1, v2

    invoke-virtual {p0, v1, v3}, Lgnu/kawa/functions/BitwiseOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public defaultResult()Ljava/lang/Object;
    .locals 2

    .line 38
    iget v0, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 39
    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .line 138
    iget v0, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget v0, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v1, 0xc

    if-gt v0, v1, :cond_0

    .line 139
    const/16 v0, 0x2002

    return v0

    .line 140
    :cond_0
    iget v0, p0, Lgnu/kawa/functions/BitwiseOp;->op:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 141
    const/16 v0, 0x1001

    return v0

    .line 142
    :cond_1
    const/16 v0, -0x1000

    return v0
.end method
