.class public Lgnu/kawa/functions/CompileArith;
.super Ljava/lang/Object;
.source "CompileArith.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static $Mn:Lgnu/kawa/functions/CompileArith;

.field public static $Pl:Lgnu/kawa/functions/CompileArith;


# instance fields
.field op:I

.field proc:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lgnu/kawa/functions/CompileArith;

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/functions/CompileArith;->$Pl:Lgnu/kawa/functions/CompileArith;

    .line 15
    new-instance v0, Lgnu/kawa/functions/CompileArith;

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/functions/CompileArith;->$Mn:Lgnu/kawa/functions/CompileArith;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "proc"    # Ljava/lang/Object;
    .param p2, "op"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Procedure;

    iput-object v0, p0, Lgnu/kawa/functions/CompileArith;->proc:Lgnu/mapping/Procedure;

    .line 20
    iput p2, p0, Lgnu/kawa/functions/CompileArith;->op:I

    .line 21
    return-void
.end method

.method static adjustReturnKind(II)I
    .locals 3
    .param p0, "rkind"    # I
    .param p1, "op"    # I

    .line 445
    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    const/4 v1, 0x7

    if-gt p1, v1, :cond_0

    if-lez p0, :cond_0

    .line 447
    const/16 v2, 0xa

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 459
    :pswitch_1
    if-gt p0, v2, :cond_0

    .line 460
    const/4 p0, 0x4

    goto :goto_0

    .line 454
    :pswitch_2
    if-gt p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    .line 456
    const/16 p0, 0x8

    goto :goto_0

    .line 450
    :pswitch_3
    if-gt p0, v0, :cond_0

    .line 451
    const/4 p0, 0x6

    .line 464
    :cond_0
    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static appropriateIntConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z
    .locals 2
    .param p0, "args"    # [Lgnu/expr/Expression;
    .param p1, "iarg"    # I
    .param p2, "visitor"    # Lgnu/expr/InlineCalls;

    .line 40
    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Lgnu/expr/InlineCalls;->fixIntValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;

    move-result-object v0

    .line 41
    .local v0, "exp":Lgnu/expr/Expression;
    if-eqz v0, :cond_0

    .line 43
    aput-object v0, p0, p1

    .line 44
    const/4 v1, 0x1

    return v1

    .line 46
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static appropriateLongConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z
    .locals 2
    .param p0, "args"    # [Lgnu/expr/Expression;
    .param p1, "iarg"    # I
    .param p2, "visitor"    # Lgnu/expr/InlineCalls;

    .line 51
    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Lgnu/expr/InlineCalls;->fixLongValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;

    move-result-object v0

    .line 52
    .local v0, "exp":Lgnu/expr/Expression;
    if-eqz v0, :cond_0

    .line 54
    aput-object v0, p0, p1

    .line 55
    const/4 v1, 0x1

    return v1

    .line 57
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static forBitwise(Ljava/lang/Object;)Lgnu/kawa/functions/CompileArith;
    .locals 2
    .param p0, "proc"    # Ljava/lang/Object;

    .line 35
    new-instance v0, Lgnu/kawa/functions/CompileArith;

    move-object v1, p0

    check-cast v1, Lgnu/kawa/functions/BitwiseOp;

    iget v1, v1, Lgnu/kawa/functions/BitwiseOp;->op:I

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static forDiv(Ljava/lang/Object;)Lgnu/kawa/functions/CompileArith;
    .locals 2
    .param p0, "proc"    # Ljava/lang/Object;

    .line 30
    new-instance v0, Lgnu/kawa/functions/CompileArith;

    move-object v1, p0

    check-cast v1, Lgnu/kawa/functions/DivideOp;

    iget v1, v1, Lgnu/kawa/functions/DivideOp;->op:I

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static forMul(Ljava/lang/Object;)Lgnu/kawa/functions/CompileArith;
    .locals 2
    .param p0, "proc"    # Ljava/lang/Object;

    .line 25
    new-instance v0, Lgnu/kawa/functions/CompileArith;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/CompileArith;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static getReturnKind(III)I
    .locals 1
    .param p0, "kind1"    # I
    .param p1, "kind2"    # I
    .param p2, "op"    # I

    .line 411
    const/16 v0, 0x9

    if-lt p2, v0, :cond_0

    const/16 v0, 0xc

    if-gt p2, v0, :cond_0

    .line 412
    return p0

    .line 413
    :cond_0
    if-lez p0, :cond_2

    if-le p0, p1, :cond_1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, p0

    :goto_1
    return v0
.end method

.method public static pairwise(Lgnu/mapping/Procedure;Lgnu/expr/Expression;[Lgnu/expr/Expression;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 8
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "rproc"    # Lgnu/expr/Expression;
    .param p2, "args"    # [Lgnu/expr/Expression;
    .param p3, "visitor"    # Lgnu/expr/InlineCalls;

    .line 588
    array-length v0, p2

    .line 589
    .local v0, "len":I
    const/4 v1, 0x0

    aget-object v2, p2, v1

    .line 590
    .local v2, "prev":Lgnu/expr/Expression;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 592
    const/4 v4, 0x2

    new-array v4, v4, [Lgnu/expr/Expression;

    .line 593
    .local v4, "args2":[Lgnu/expr/Expression;
    aput-object v2, v4, v1

    .line 594
    aget-object v5, p2, v3

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 595
    new-instance v5, Lgnu/expr/ApplyExp;

    invoke-direct {v5, p1, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 596
    .local v5, "next":Lgnu/expr/ApplyExp;
    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6, p0}, Lgnu/expr/InlineCalls;->maybeInline(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;

    move-result-object v6

    .line 597
    .local v6, "inlined":Lgnu/expr/Expression;
    if-eqz v6, :cond_0

    move-object v7, v6

    goto :goto_1

    :cond_0
    move-object v7, v5

    :goto_1
    move-object v2, v7

    .line 590
    .end local v4    # "args2":[Lgnu/expr/Expression;
    .end local v5    # "next":Lgnu/expr/ApplyExp;
    .end local v6    # "inlined":Lgnu/expr/Expression;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 599
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public static validateApplyAdd(Lgnu/kawa/functions/AddOp;Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 7
    .param p0, "proc"    # Lgnu/kawa/functions/AddOp;
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "visitor"    # Lgnu/expr/InlineCalls;

    .line 469
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 470
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget v1, p0, Lgnu/kawa/functions/AddOp;->plusOrMinus:I

    if-gez v1, :cond_5

    .line 472
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 473
    .local v2, "type0":Lgnu/bytecode/Type;
    instance-of v3, v2, Lgnu/bytecode/PrimType;

    if-eqz v3, :cond_5

    .line 475
    invoke-virtual {v2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 476
    .local v1, "sig0":C
    const/4 v3, 0x0

    .line 477
    .local v3, "type":Lgnu/bytecode/Type;
    const/4 v4, 0x0

    .line 478
    .local v4, "opcode":I
    const/16 v5, 0x56

    if-eq v1, v5, :cond_4

    const/16 v5, 0x5a

    if-eq v1, v5, :cond_4

    const/16 v5, 0x43

    if-ne v1, v5, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    const/16 v5, 0x44

    if-ne v1, v5, :cond_1

    .line 484
    const/16 v4, 0x77

    .line 485
    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    goto :goto_0

    .line 487
    :cond_1
    const/16 v5, 0x46

    if-ne v1, v5, :cond_2

    .line 489
    const/16 v4, 0x76

    .line 490
    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    goto :goto_0

    .line 492
    :cond_2
    const/16 v5, 0x4a

    if-ne v1, v5, :cond_3

    .line 494
    const/16 v4, 0x75

    .line 495
    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    goto :goto_0

    .line 499
    :cond_3
    const/16 v4, 0x74

    .line 500
    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    .line 502
    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    .line 504
    invoke-static {v4, v3}, Lgnu/expr/PrimProcedure;->makeBuiltinUnary(ILgnu/bytecode/Type;)Lgnu/expr/PrimProcedure;

    move-result-object v5

    .line 506
    .local v5, "prim":Lgnu/expr/PrimProcedure;
    new-instance v6, Lgnu/expr/ApplyExp;

    invoke-direct {v6, v5, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object v6

    .line 510
    .end local v1    # "sig0":C
    .end local v2    # "type0":Lgnu/bytecode/Type;
    .end local v3    # "type":Lgnu/bytecode/Type;
    .end local v4    # "opcode":I
    .end local v5    # "prim":Lgnu/expr/PrimProcedure;
    :cond_5
    return-object p1
.end method

.method public static validateApplyArithOp(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 11
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 63
    move-object v0, p3

    check-cast v0, Lgnu/kawa/functions/ArithOp;

    .line 64
    .local v0, "aproc":Lgnu/kawa/functions/ArithOp;
    iget v1, v0, Lgnu/kawa/functions/ArithOp;->op:I

    .line 65
    .local v1, "op":I
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 67
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 68
    .local v2, "args":[Lgnu/expr/Expression;
    array-length v3, v2

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    .line 69
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v3

    invoke-static {p3, v3, v2, p1}, Lgnu/kawa/functions/CompileArith;->pairwise(Lgnu/mapping/Procedure;Lgnu/expr/Expression;[Lgnu/expr/Expression;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3

    .line 71
    :cond_0
    invoke-virtual {p0, p3, p1}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v3

    .line 72
    .local v3, "folded":Lgnu/expr/Expression;
    if-eq v3, p0, :cond_1

    .line 73
    return-object v3

    .line 75
    :cond_1
    const/4 v5, 0x0

    .line 76
    .local v5, "rkind":I
    array-length v6, v2

    const/4 v7, 0x1

    if-eq v6, v4, :cond_2

    array-length v6, v2

    if-ne v6, v7, :cond_9

    .line 78
    :cond_2
    const/4 v6, 0x0

    aget-object v8, v2, v6

    invoke-virtual {v8}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-static {v8}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v8

    .line 79
    .local v8, "kind1":I
    array-length v9, v2

    if-ne v9, v4, :cond_8

    const/16 v9, 0x9

    if-lt v1, v9, :cond_3

    const/16 v9, 0xc

    if-le v1, v9, :cond_8

    .line 83
    :cond_3
    aget-object v9, v2, v7

    invoke-virtual {v9}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    invoke-static {v9}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v9

    .line 84
    .local v9, "kind2":I
    invoke-static {v8, v9, v1}, Lgnu/kawa/functions/CompileArith;->getReturnKind(III)I

    move-result v5

    .line 85
    const/4 v10, 0x4

    if-ne v5, v10, :cond_7

    .line 87
    if-ne v8, v7, :cond_4

    invoke-static {v2, v7, p1}, Lgnu/kawa/functions/CompileArith;->appropriateIntConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 88
    const/4 v5, 0x1

    goto :goto_0

    .line 89
    :cond_4
    if-ne v9, v7, :cond_5

    invoke-static {v2, v6, p1}, Lgnu/kawa/functions/CompileArith;->appropriateIntConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 90
    const/4 v5, 0x1

    goto :goto_0

    .line 91
    :cond_5
    if-ne v8, v4, :cond_6

    invoke-static {v2, v7, p1}, Lgnu/kawa/functions/CompileArith;->appropriateLongConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 92
    const/4 v5, 0x2

    goto :goto_0

    .line 93
    :cond_6
    if-ne v9, v4, :cond_7

    invoke-static {v2, v6, p1}, Lgnu/kawa/functions/CompileArith;->appropriateLongConstant([Lgnu/expr/Expression;ILgnu/expr/InlineCalls;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 94
    const/4 v5, 0x2

    .line 96
    .end local v9    # "kind2":I
    :cond_7
    :goto_0
    goto :goto_1

    .line 99
    :cond_8
    move v5, v8

    .line 101
    :goto_1
    invoke-static {v5, v1}, Lgnu/kawa/functions/CompileArith;->adjustReturnKind(II)I

    move-result v5

    .line 102
    invoke-static {v5}, Lgnu/kawa/functions/Arithmetic;->kindType(I)Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 107
    .end local v8    # "kind1":I
    :cond_9
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v4

    iget-boolean v4, v4, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v4, :cond_a

    .line 108
    return-object p0

    .line 110
    :cond_a
    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    .line 122
    :sswitch_0
    if-lez v5, :cond_b

    .line 123
    invoke-static {p0, v5, p1}, Lgnu/kawa/functions/CompileArith;->validateApplyNot(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4

    .line 120
    :sswitch_1
    move-object v4, p3

    check-cast v4, Lgnu/kawa/functions/DivideOp;

    invoke-static {v4, p0, p1}, Lgnu/kawa/functions/CompileArith;->validateApplyDiv(Lgnu/kawa/functions/DivideOp;Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4

    .line 114
    :sswitch_2
    move-object v4, p3

    check-cast v4, Lgnu/kawa/functions/AddOp;

    invoke-static {v4, p0, p1}, Lgnu/kawa/functions/CompileArith;->validateApplyAdd(Lgnu/kawa/functions/AddOp;Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4

    .line 126
    :cond_b
    :goto_2
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public static validateApplyDiv(Lgnu/kawa/functions/DivideOp;Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 5
    .param p0, "proc"    # Lgnu/kawa/functions/DivideOp;
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "visitor"    # Lgnu/expr/InlineCalls;

    .line 516
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 517
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 519
    const/4 v1, 0x2

    new-array v1, v1, [Lgnu/expr/Expression;

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v3

    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aget-object v3, v0, v4

    aput-object v3, v1, v2

    move-object v0, v1

    .line 520
    new-instance v1, Lgnu/expr/ApplyExp;

    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object p1, v1

    .line 522
    :cond_0
    return-object p1
.end method

.method public static validateApplyNot(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 6
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "kind"    # I
    .param p2, "visitor"    # Lgnu/expr/InlineCalls;

    .line 527
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 529
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v2

    .line 530
    .local v2, "arg":Lgnu/expr/Expression;
    const/4 v3, 0x2

    if-eq p1, v1, :cond_3

    if-ne p1, v3, :cond_0

    goto :goto_1

    .line 536
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 537
    const-string v0, "gnu.math.BitOps"

    .local v0, "cname":Ljava/lang/String;
    goto :goto_0

    .line 538
    .end local v0    # "cname":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 539
    const-string v0, "java.meth.BigInteger"

    .restart local v0    # "cname":Ljava/lang/String;
    goto :goto_0

    .line 541
    .end local v0    # "cname":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 542
    .restart local v0    # "cname":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_4

    .line 543
    new-instance v3, Lgnu/expr/ApplyExp;

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    const-string v5, "not"

    invoke-virtual {v4, v5, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object v3

    .line 532
    .end local v0    # "cname":Ljava/lang/String;
    :cond_3
    :goto_1
    new-array v3, v3, [Lgnu/expr/Expression;

    aput-object v2, v3, v0

    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    aput-object v0, v3, v1

    move-object v0, v3

    .line 533
    .local v0, "args":[Lgnu/expr/Expression;
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v3, Lgnu/kawa/functions/BitwiseOp;->xor:Lgnu/kawa/functions/BitwiseOp;

    invoke-direct {v1, v3, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 546
    .end local v0    # "args":[Lgnu/expr/Expression;
    .end local v2    # "arg":Lgnu/expr/Expression;
    :cond_4
    return-object p0
.end method

.method public static validateApplyNumberCompare(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 1
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 552
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 553
    invoke-virtual {p0, p3, p1}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v0

    .line 554
    .local v0, "folded":Lgnu/expr/Expression;
    if-eq v0, p0, :cond_0

    .line 555
    return-object v0

    .line 556
    :cond_0
    return-object p0
.end method

.method public static validateApplyNumberPredicate(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 6
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 605
    move-object v0, p3

    check-cast v0, Lgnu/kawa/functions/NumberPredicate;

    .line 606
    .local v0, "nproc":Lgnu/kawa/functions/NumberPredicate;
    iget v1, v0, Lgnu/kawa/functions/NumberPredicate;->op:I

    .line 607
    .local v1, "op":I
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 608
    .local v2, "args":[Lgnu/expr/Expression;
    const/4 v3, 0x0

    aget-object v4, v2, v3

    sget-object v5, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p1, v4, v5}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v2, v3

    .line 609
    sget-object v3, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v3}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 610
    return-object p0
.end method


# virtual methods
.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 21
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 132
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v9

    .line 133
    .local v9, "args":[Lgnu/expr/Expression;
    array-length v10, v9

    .line 134
    .local v10, "len":I
    if-nez v10, :cond_0

    .line 136
    iget-object v0, v6, Lgnu/kawa/functions/CompileArith;->proc:Lgnu/mapping/Procedure;

    check-cast v0, Lgnu/kawa/functions/ArithOp;

    invoke-virtual {v0}, Lgnu/kawa/functions/ArithOp;->defaultResult()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0, v8}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 137
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x1

    if-eq v10, v0, :cond_24

    instance-of v1, v8, Lgnu/expr/IgnoreTarget;

    if-eqz v1, :cond_1

    goto/16 :goto_14

    .line 147
    :cond_1
    const/4 v1, 0x0

    aget-object v2, v9, v1

    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v11

    .line 148
    .local v11, "kind1":I
    aget-object v2, v9, v0

    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v12

    .line 149
    .local v12, "kind2":I
    iget v2, v6, Lgnu/kawa/functions/CompileArith;->op:I

    invoke-static {v11, v12, v2}, Lgnu/kawa/functions/CompileArith;->getReturnKind(III)I

    move-result v2

    .line 150
    .local v2, "kind":I
    invoke-static {v2}, Lgnu/kawa/functions/Arithmetic;->kindType(I)Lgnu/bytecode/Type;

    move-result-object v13

    .line 151
    .local v13, "type":Lgnu/bytecode/Type;
    if-eqz v2, :cond_23

    const/4 v3, 0x2

    if-eq v10, v3, :cond_2

    move/from16 v18, v11

    goto/16 :goto_13

    .line 156
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v14

    .line 157
    .local v14, "targetType":Lgnu/bytecode/Type;
    invoke-static {v14}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v15

    .line 159
    .local v15, "tkind":I
    const/4 v1, 0x7

    const/16 v5, 0x8

    const/4 v4, 0x4

    if-eq v15, v0, :cond_3

    if-ne v15, v3, :cond_5

    :cond_3
    if-lt v2, v0, :cond_5

    if-gt v2, v4, :cond_5

    .line 162
    move v2, v15

    .line 163
    if-ne v15, v0, :cond_4

    sget-object v19, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    goto :goto_0

    :cond_4
    sget-object v19, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    :goto_0
    move-object/from16 v20, v19

    .local v19, "wtype":Lgnu/bytecode/Type;
    goto :goto_3

    .line 166
    .end local v19    # "wtype":Lgnu/bytecode/Type;
    :cond_5
    if-eq v15, v5, :cond_6

    if-ne v15, v1, :cond_8

    :cond_6
    if-le v2, v3, :cond_8

    const/16 v0, 0xa

    if-gt v2, v0, :cond_8

    .line 170
    move v2, v15

    .line 171
    if-ne v15, v1, :cond_7

    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    goto :goto_1

    :cond_7
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    :goto_1
    move-object/from16 v20, v0

    .local v0, "wtype":Lgnu/bytecode/Type;
    goto :goto_3

    .line 175
    .end local v0    # "wtype":Lgnu/bytecode/Type;
    :cond_8
    if-ne v2, v1, :cond_9

    .line 176
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    move-object/from16 v20, v0

    .restart local v0    # "wtype":Lgnu/bytecode/Type;
    goto :goto_3

    .line 177
    .end local v0    # "wtype":Lgnu/bytecode/Type;
    :cond_9
    if-eq v2, v5, :cond_b

    const/16 v0, 0x9

    if-ne v2, v0, :cond_a

    goto :goto_2

    .line 183
    :cond_a
    move-object v0, v13

    move-object/from16 v20, v0

    .restart local v0    # "wtype":Lgnu/bytecode/Type;
    goto :goto_3

    .line 179
    .end local v0    # "wtype":Lgnu/bytecode/Type;
    :cond_b
    :goto_2
    const/16 v2, 0x8

    .line 180
    sget-object v0, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    move-object/from16 v20, v0

    .line 185
    .local v20, "wtype":Lgnu/bytecode/Type;
    :goto_3
    iget v0, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/4 v3, 0x6

    if-lt v0, v4, :cond_14

    iget v0, v6, Lgnu/kawa/functions/CompileArith;->op:I

    if-gt v0, v5, :cond_14

    .line 187
    iget-object v0, v6, Lgnu/kawa/functions/CompileArith;->proc:Lgnu/mapping/Procedure;

    check-cast v0, Lgnu/kawa/functions/DivideOp;

    .line 188
    .local v0, "dproc":Lgnu/kawa/functions/DivideOp;
    iget v5, v0, Lgnu/kawa/functions/DivideOp;->op:I

    if-ne v5, v4, :cond_c

    if-le v2, v4, :cond_14

    if-ge v2, v3, :cond_14

    const/16 v5, 0x9

    if-gt v2, v5, :cond_c

    .line 191
    goto :goto_6

    .line 192
    :cond_c
    iget v5, v0, Lgnu/kawa/functions/DivideOp;->op:I

    const/4 v3, 0x5

    if-ne v5, v3, :cond_d

    const/16 v3, 0xa

    if-gt v2, v3, :cond_d

    if-ne v2, v1, :cond_e

    :cond_d
    iget v3, v0, Lgnu/kawa/functions/DivideOp;->op:I

    if-ne v3, v4, :cond_f

    const/16 v3, 0xa

    if-ne v2, v3, :cond_f

    .line 195
    :cond_e
    const/16 v2, 0x8

    move v5, v2

    goto :goto_7

    .line 196
    :cond_f
    iget v3, v0, Lgnu/kawa/functions/DivideOp;->op:I

    if-eq v3, v1, :cond_11

    iget v3, v0, Lgnu/kawa/functions/DivideOp;->op:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_10

    if-gt v2, v4, :cond_10

    goto :goto_4

    :cond_10
    const/16 v3, 0x8

    goto :goto_5

    :cond_11
    :goto_4
    invoke-virtual {v0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_14

    if-eq v2, v4, :cond_14

    if-eq v2, v1, :cond_14

    const/16 v3, 0x8

    if-ne v2, v3, :cond_12

    .line 204
    goto :goto_6

    .line 205
    :cond_12
    :goto_5
    iget v5, v0, Lgnu/kawa/functions/DivideOp;->op:I

    if-ne v5, v3, :cond_13

    invoke-virtual {v0}, Lgnu/kawa/functions/DivideOp;->getRoundingMode()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_14

    if-ne v2, v4, :cond_13

    .line 209
    goto :goto_6

    .line 212
    :cond_13
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 213
    return-void

    .line 216
    .end local v0    # "dproc":Lgnu/kawa/functions/DivideOp;
    :cond_14
    :goto_6
    move v5, v2

    .end local v2    # "kind":I
    .local v5, "kind":I
    :goto_7
    iget v0, v6, Lgnu/kawa/functions/CompileArith;->op:I

    if-ne v0, v4, :cond_18

    const/16 v0, 0xa

    if-gt v5, v0, :cond_18

    const/16 v0, 0x8

    if-eq v5, v0, :cond_18

    if-eq v5, v1, :cond_18

    .line 221
    const/4 v0, 0x6

    if-eq v5, v0, :cond_16

    if-le v5, v4, :cond_15

    goto :goto_8

    .line 233
    :cond_15
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 234
    .end local v20    # "wtype":Lgnu/bytecode/Type;
    .local v0, "wtype":Lgnu/bytecode/Type;
    sget-object v1, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    const-string v2, "make"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lgnu/kawa/lispexpr/LangObjType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    move-object/from16 v20, v0

    .local v1, "meth":Lgnu/bytecode/Method;
    goto :goto_a

    .line 225
    .end local v0    # "wtype":Lgnu/bytecode/Type;
    .end local v1    # "meth":Lgnu/bytecode/Method;
    .restart local v20    # "wtype":Lgnu/bytecode/Type;
    :cond_16
    :goto_8
    const/4 v0, 0x6

    if-ne v5, v0, :cond_17

    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeRatNum:Lgnu/kawa/lispexpr/LangObjType;

    goto :goto_9

    :cond_17
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 228
    .local v0, "ctype":Lgnu/kawa/lispexpr/LangObjType;
    :goto_9
    move-object v1, v0

    .line 229
    .end local v20    # "wtype":Lgnu/bytecode/Type;
    .local v1, "wtype":Lgnu/bytecode/Type;
    const-string v2, "divide"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lgnu/kawa/lispexpr/LangObjType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 230
    .local v0, "meth":Lgnu/bytecode/Method;
    move-object/from16 v20, v1

    move-object v1, v0

    .line 236
    .end local v0    # "meth":Lgnu/bytecode/Method;
    .local v1, "meth":Lgnu/bytecode/Method;
    .restart local v20    # "wtype":Lgnu/bytecode/Type;
    :goto_a
    invoke-static/range {v20 .. v20}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v0

    .line 237
    .local v0, "wtarget":Lgnu/expr/Target;
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual {v2, v7, v0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 238
    const/4 v2, 0x1

    aget-object v2, v9, v2

    invoke-virtual {v2, v7, v0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 240
    .end local v0    # "wtarget":Lgnu/expr/Target;
    .end local v1    # "meth":Lgnu/bytecode/Method;
    move/from16 v18, v11

    move-object/from16 v0, v20

    move v11, v5

    goto/16 :goto_12

    .line 241
    :cond_18
    const/16 v0, 0xd

    if-ne v5, v4, :cond_1b

    iget v2, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1a

    iget v2, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1a

    iget v2, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a

    iget v2, v6, Lgnu/kawa/functions/CompileArith;->op:I

    if-eq v2, v0, :cond_1a

    iget v2, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/16 v3, 0xe

    if-eq v2, v3, :cond_1a

    iget v2, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/16 v3, 0xf

    if-eq v2, v3, :cond_1a

    iget v2, v6, Lgnu/kawa/functions/CompileArith;->op:I

    if-eq v2, v1, :cond_1a

    iget v2, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1a

    iget v2, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_19

    iget v2, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/16 v3, 0xb

    if-gt v2, v3, :cond_19

    goto :goto_b

    :cond_19
    move/from16 v18, v11

    move v11, v5

    goto :goto_c

    .line 247
    :cond_1a
    :goto_b
    const/4 v0, 0x0

    aget-object v1, v9, v0

    const/4 v0, 0x1

    aget-object v2, v9, v0

    move-object/from16 v0, p0

    move v3, v11

    move v4, v12

    move/from16 v18, v11

    move v11, v5

    .end local v5    # "kind":I
    .local v11, "kind":I
    .local v18, "kind1":I
    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/functions/CompileArith;->compileIntNum(Lgnu/expr/Expression;Lgnu/expr/Expression;IILgnu/expr/Compilation;)Z

    goto/16 :goto_11

    .line 241
    .end local v18    # "kind1":I
    .restart local v5    # "kind":I
    .local v11, "kind1":I
    :cond_1b
    move/from16 v18, v11

    move v11, v5

    .line 249
    .end local v5    # "kind":I
    .local v11, "kind":I
    .restart local v18    # "kind1":I
    :goto_c
    const/4 v2, 0x1

    if-eq v11, v2, :cond_1e

    const/4 v2, 0x2

    if-eq v11, v2, :cond_1e

    if-eq v11, v1, :cond_1c

    const/16 v1, 0x8

    if-ne v11, v1, :cond_1d

    goto :goto_d

    :cond_1c
    const/16 v1, 0x8

    :goto_d
    iget v2, v6, Lgnu/kawa/functions/CompileArith;->op:I

    if-le v2, v1, :cond_1e

    iget v1, v6, Lgnu/kawa/functions/CompileArith;->op:I

    if-lt v1, v0, :cond_1d

    goto :goto_e

    .line 285
    :cond_1d
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 286
    return-void

    .line 255
    :cond_1e
    :goto_e
    invoke-static/range {v20 .. v20}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v0

    .line 257
    .restart local v0    # "wtarget":Lgnu/expr/Target;
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 258
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v10, :cond_22

    .line 260
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    iget v3, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_1f

    iget v3, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/16 v4, 0xc

    if-gt v3, v4, :cond_1f

    .line 261
    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-static {v3}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v0

    .line 262
    :cond_1f
    aget-object v3, v9, v2

    invoke-virtual {v3, v7, v0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 263
    if-nez v2, :cond_20

    .line 264
    const/16 v16, 0x0

    const/16 v19, 0x1

    goto :goto_10

    .line 265
    :cond_20
    sparse-switch v11, :sswitch_data_0

    const/16 v16, 0x0

    const/16 v19, 0x1

    goto :goto_10

    .line 271
    :sswitch_0
    iget v3, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_21

    .line 273
    const/4 v3, 0x2

    new-array v5, v3, [Lgnu/bytecode/Type;

    const/16 v16, 0x0

    aput-object v20, v5, v16

    sget-object v17, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    const/16 v19, 0x1

    aput-object v17, v5, v19

    .line 274
    .local v5, "margs":[Lgnu/bytecode/Type;
    const-string v17, "gnu.math.IntNum"

    invoke-static/range {v17 .. v17}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const-string v4, "shift"

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v3

    .line 275
    .local v3, "method":Lgnu/bytecode/Method;
    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 276
    .end local v3    # "method":Lgnu/bytecode/Method;
    .end local v5    # "margs":[Lgnu/bytecode/Type;
    goto :goto_10

    .line 278
    :cond_21
    const/16 v16, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/CompileArith;->primitiveOpcode()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v3, v4}, Lgnu/bytecode/CodeAttr;->emitBinop(ILgnu/bytecode/Type;)V

    .line 258
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 282
    .end local v0    # "wtarget":Lgnu/expr/Target;
    .end local v1    # "code":Lgnu/bytecode/CodeAttr;
    .end local v2    # "i":I
    :cond_22
    nop

    .line 288
    :goto_11
    move-object/from16 v0, v20

    .end local v20    # "wtype":Lgnu/bytecode/Type;
    .local v0, "wtype":Lgnu/bytecode/Type;
    :goto_12
    invoke-virtual {v8, v7, v0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 289
    return-void

    .line 151
    .end local v0    # "wtype":Lgnu/bytecode/Type;
    .end local v14    # "targetType":Lgnu/bytecode/Type;
    .end local v15    # "tkind":I
    .end local v18    # "kind1":I
    .local v2, "kind":I
    .local v11, "kind1":I
    :cond_23
    move/from16 v18, v11

    .line 153
    .end local v11    # "kind1":I
    .restart local v18    # "kind1":I
    :goto_13
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 154
    return-void

    .line 142
    .end local v2    # "kind":I
    .end local v12    # "kind2":I
    .end local v13    # "type":Lgnu/bytecode/Type;
    .end local v18    # "kind1":I
    :cond_24
    :goto_14
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 143
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public compileIntNum(Lgnu/expr/Expression;Lgnu/expr/Expression;IILgnu/expr/Compilation;)Z
    .locals 20
    .param p1, "arg1"    # Lgnu/expr/Expression;
    .param p2, "arg2"    # Lgnu/expr/Expression;
    .param p3, "kind1"    # I
    .param p4, "kind2"    # I
    .param p5, "comp"    # Lgnu/expr/Compilation;

    .line 295
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    iget v0, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    instance-of v0, v7, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_3

    .line 297
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v9

    .line 300
    .local v9, "val":Ljava/lang/Object;
    const-wide/32 v4, 0x7fffffff

    move/from16 v10, p4

    if-gt v10, v3, :cond_1

    .line 302
    move-object v0, v9

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    .line 303
    .local v11, "lval":J
    const-wide/32 v13, -0x80000000

    cmp-long v0, v11, v13

    if-lez v0, :cond_0

    cmp-long v0, v11, v4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-wide v12, v11

    move v11, v0

    .local v0, "negateOk":Z
    goto :goto_1

    .line 305
    .end local v0    # "negateOk":Z
    .end local v11    # "lval":J
    :cond_1
    instance-of v0, v9, Lgnu/math/IntNum;

    if-eqz v0, :cond_2

    .line 307
    move-object v0, v9

    check-cast v0, Lgnu/math/IntNum;

    .line 308
    .local v0, "ival":Lgnu/math/IntNum;
    invoke-virtual {v0}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v11

    .line 309
    .restart local v11    # "lval":J
    const-wide/32 v13, -0x7fffffff

    invoke-virtual {v0, v13, v14, v4, v5}, Lgnu/math/IntNum;->inRange(JJ)Z

    move-result v0

    .line 310
    .local v0, "negateOk":Z
    move-wide v12, v11

    move v11, v0

    goto :goto_1

    .line 313
    .end local v0    # "negateOk":Z
    .end local v11    # "lval":J
    :cond_2
    const/4 v0, 0x0

    .line 314
    .restart local v0    # "negateOk":Z
    const-wide/16 v11, 0x0

    move-wide v12, v11

    move v11, v0

    .line 316
    .end local v0    # "negateOk":Z
    .local v11, "negateOk":Z
    .local v12, "lval":J
    :goto_1
    if-eqz v11, :cond_4

    .line 317
    sget-object v0, Lgnu/kawa/functions/CompileArith;->$Pl:Lgnu/kawa/functions/CompileArith;

    neg-long v1, v12

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/functions/CompileArith;->compileIntNum(Lgnu/expr/Expression;Lgnu/expr/Expression;IILgnu/expr/Compilation;)Z

    move-result v0

    return v0

    .line 295
    .end local v9    # "val":Ljava/lang/Object;
    .end local v11    # "negateOk":Z
    .end local v12    # "lval":J
    :cond_3
    move/from16 v10, p4

    .line 322
    :cond_4
    iget v0, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/4 v4, 0x3

    if-eq v0, v2, :cond_6

    iget v0, v6, Lgnu/kawa/functions/CompileArith;->op:I

    if-ne v0, v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v0, 0x1

    :goto_3
    move v9, v0

    .line 325
    .local v9, "addOrMul":Z
    if-eqz v9, :cond_e

    .line 327
    invoke-static/range {p1 .. p1}, Lgnu/expr/InlineCalls;->checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 328
    const/4 v0, 0x1

    move v11, v0

    .end local p3    # "kind1":I
    .local v0, "kind1":I
    goto :goto_4

    .line 327
    .end local v0    # "kind1":I
    .restart local p3    # "kind1":I
    :cond_7
    move/from16 v11, p3

    .line 329
    .end local p3    # "kind1":I
    .local v11, "kind1":I
    :goto_4
    invoke-static/range {p2 .. p2}, Lgnu/expr/InlineCalls;->checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 330
    const/4 v0, 0x1

    move v10, v0

    .line 331
    .end local p4    # "kind2":I
    .local v10, "kind2":I
    :cond_8
    if-ne v11, v2, :cond_9

    if-eq v10, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    move v12, v0

    .line 332
    .local v12, "swap":Z
    if-eqz v12, :cond_b

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Expression;->side_effects()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Expression;->side_effects()Z

    move-result v0

    if-nez v0, :cond_b

    .line 333
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move v3, v10

    move v4, v11

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/functions/CompileArith;->compileIntNum(Lgnu/expr/Expression;Lgnu/expr/Expression;IILgnu/expr/Compilation;)Z

    move-result v0

    return v0

    .line 334
    :cond_b
    if-ne v11, v2, :cond_c

    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    goto :goto_6

    :cond_c
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 335
    .local v0, "type1":Lgnu/bytecode/Type;
    :goto_6
    if-ne v10, v2, :cond_d

    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    goto :goto_7

    :cond_d
    sget-object v5, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    .local v5, "type2":Lgnu/bytecode/Type;
    :goto_7
    goto :goto_8

    .line 337
    .end local v0    # "type1":Lgnu/bytecode/Type;
    .end local v5    # "type2":Lgnu/bytecode/Type;
    .end local v10    # "kind2":I
    .end local v11    # "kind1":I
    .end local v12    # "swap":Z
    .restart local p3    # "kind1":I
    .restart local p4    # "kind2":I
    :cond_e
    iget v0, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/16 v5, 0x9

    if-lt v0, v5, :cond_f

    iget v0, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/16 v5, 0xc

    if-gt v0, v5, :cond_f

    .line 339
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 340
    .restart local v0    # "type1":Lgnu/bytecode/Type;
    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    .line 341
    .restart local v5    # "type2":Lgnu/bytecode/Type;
    const/4 v12, 0x0

    move/from16 v11, p3

    .restart local v12    # "swap":Z
    goto :goto_8

    .line 345
    .end local v0    # "type1":Lgnu/bytecode/Type;
    .end local v5    # "type2":Lgnu/bytecode/Type;
    .end local v12    # "swap":Z
    :cond_f
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    move-object v5, v0

    .line 346
    .restart local v0    # "type1":Lgnu/bytecode/Type;
    .restart local v5    # "type2":Lgnu/bytecode/Type;
    const/4 v12, 0x0

    move/from16 v11, p3

    .line 348
    .end local p3    # "kind1":I
    .end local p4    # "kind2":I
    .restart local v10    # "kind2":I
    .restart local v11    # "kind1":I
    .restart local v12    # "swap":Z
    :goto_8
    move-object/from16 v13, p1

    invoke-virtual {v13, v8, v0}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 349
    invoke-virtual {v7, v8, v5}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 350
    invoke-virtual/range {p5 .. p5}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v14

    .line 351
    .local v14, "code":Lgnu/bytecode/CodeAttr;
    if-eqz v12, :cond_10

    .line 353
    invoke-virtual {v14}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 354
    sget-object v0, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 355
    sget-object v5, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    .line 357
    :cond_10
    const/4 v15, 0x0

    .line 358
    .local v15, "mname":Ljava/lang/String;
    const/16 v16, 0x0

    .line 359
    .local v16, "argTypes":[Lgnu/bytecode/Type;
    sget-object v17, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    .line 360
    .local v17, "mclass":Lgnu/bytecode/ObjectType;
    iget v3, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/16 v19, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move-object/from16 v1, v19

    .line 400
    .local v1, "dproc":Lgnu/kawa/functions/DivideOp;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    throw v2

    .line 366
    .end local v1    # "dproc":Lgnu/kawa/functions/DivideOp;
    :pswitch_1
    const-string v15, "and"

    .line 369
    :pswitch_2
    if-nez v15, :cond_11

    .line 370
    const-string v15, "ior"

    .line 373
    :cond_11
    :pswitch_3
    if-nez v15, :cond_12

    .line 374
    const-string v15, "xor"

    .line 375
    :cond_12
    const-string v3, "gnu.math.BitOps"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v17

    .line 376
    move-object/from16 v1, v17

    goto/16 :goto_b

    .line 360
    :pswitch_4
    move-object/from16 v3, v19

    .line 394
    .local v3, "dproc":Lgnu/kawa/functions/DivideOp;
    iget v4, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/16 v1, 0xa

    if-ne v4, v1, :cond_13

    const-string v1, "shiftLeft"

    goto :goto_9

    :cond_13
    const-string v1, "shiftRight"

    :goto_9
    move-object v15, v1

    .line 395
    const-string v1, "gnu.kawa.functions.BitwiseOp"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v17

    .line 396
    move-object/from16 v1, v17

    goto :goto_b

    .line 360
    .end local v3    # "dproc":Lgnu/kawa/functions/DivideOp;
    :pswitch_5
    move-object/from16 v1, v19

    .line 398
    .restart local v1    # "dproc":Lgnu/kawa/functions/DivideOp;
    const-string v15, "shift"

    .line 399
    move-object/from16 v1, v17

    goto :goto_b

    .line 382
    .end local v1    # "dproc":Lgnu/kawa/functions/DivideOp;
    :pswitch_6
    iget v1, v6, Lgnu/kawa/functions/CompileArith;->op:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_14

    const-string v1, "remainder"

    goto :goto_a

    :cond_14
    const-string v1, "quotient"

    :goto_a
    move-object v15, v1

    .line 383
    iget-object v1, v6, Lgnu/kawa/functions/CompileArith;->proc:Lgnu/mapping/Procedure;

    check-cast v1, Lgnu/kawa/functions/DivideOp;

    .line 384
    .restart local v1    # "dproc":Lgnu/kawa/functions/DivideOp;
    iget v4, v6, Lgnu/kawa/functions/CompileArith;->op:I

    if-ne v4, v3, :cond_15

    iget v3, v1, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    if-ne v3, v2, :cond_15

    .line 385
    const-string v15, "modulo"

    move-object/from16 v1, v17

    goto :goto_b

    .line 386
    :cond_15
    iget v3, v1, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_16

    .line 388
    iget v3, v1, Lgnu/kawa/functions/DivideOp;->rounding_mode:I

    invoke-virtual {v14, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 389
    new-array v3, v4, [Lgnu/bytecode/Type;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v5, v3, v2

    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    const/16 v18, 0x2

    aput-object v4, v3, v18

    move-object/from16 v16, v3

    move-object/from16 v1, v17

    goto :goto_b

    .line 386
    :cond_16
    move-object/from16 v1, v17

    goto :goto_b

    .line 364
    .end local v1    # "dproc":Lgnu/kawa/functions/DivideOp;
    :pswitch_7
    const-string v15, "times"

    move-object/from16 v1, v17

    goto :goto_b

    .line 363
    :pswitch_8
    const-string v15, "sub"

    move-object/from16 v1, v17

    goto :goto_b

    .line 362
    :pswitch_9
    const-string v15, "add"

    move-object/from16 v1, v17

    .line 402
    .end local v17    # "mclass":Lgnu/bytecode/ObjectType;
    .local v1, "mclass":Lgnu/bytecode/ObjectType;
    :goto_b
    if-nez v16, :cond_17

    .line 403
    const/4 v3, 0x2

    new-array v3, v3, [Lgnu/bytecode/Type;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v5, v3, v2

    move-object/from16 v16, v3

    goto :goto_c

    .line 402
    :cond_17
    move-object/from16 v3, v16

    .line 404
    .end local v16    # "argTypes":[Lgnu/bytecode/Type;
    .local v3, "argTypes":[Lgnu/bytecode/Type;
    :goto_c
    invoke-virtual {v1, v15, v3}, Lgnu/bytecode/ObjectType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v4

    .line 405
    .local v4, "meth":Lgnu/bytecode/Method;
    invoke-virtual {v14, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 406
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getReturnKind([Lgnu/expr/Expression;)I
    .locals 6
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 421
    array-length v0, p1

    .line 422
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 423
    const/4 v1, 0x4

    return v1

    .line 424
    :cond_0
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 425
    .local v1, "type":Lgnu/bytecode/Type;
    const/4 v2, 0x0

    .line 426
    .local v2, "kindr":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 428
    aget-object v4, p1, v3

    .line 429
    .local v4, "arg":Lgnu/expr/Expression;
    invoke-virtual {v4}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-static {v5}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v5

    .line 431
    .local v5, "kind":I
    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    if-le v5, v2, :cond_2

    .line 432
    :cond_1
    move v2, v5

    .line 426
    .end local v4    # "arg":Lgnu/expr/Expression;
    .end local v5    # "kind":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 434
    .end local v3    # "i":I
    :cond_3
    return v2
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 2
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 440
    invoke-virtual {p0, p1}, Lgnu/kawa/functions/CompileArith;->getReturnKind([Lgnu/expr/Expression;)I

    move-result v0

    iget v1, p0, Lgnu/kawa/functions/CompileArith;->op:I

    invoke-static {v0, v1}, Lgnu/kawa/functions/CompileArith;->adjustReturnKind(II)I

    move-result v0

    invoke-static {v0}, Lgnu/kawa/functions/Arithmetic;->kindType(I)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public primitiveOpcode()I
    .locals 1

    .line 561
    iget v0, p0, Lgnu/kawa/functions/CompileArith;->op:I

    packed-switch v0, :pswitch_data_0

    .line 578
    :pswitch_0
    const/4 v0, -0x1

    return v0

    .line 577
    :pswitch_1
    const/16 v0, 0x82

    return v0

    .line 576
    :pswitch_2
    const/16 v0, 0x80

    return v0

    .line 575
    :pswitch_3
    const/16 v0, 0x7e

    return v0

    .line 574
    :pswitch_4
    const/16 v0, 0x7c

    return v0

    .line 573
    :pswitch_5
    const/16 v0, 0x7a

    return v0

    .line 572
    :pswitch_6
    const/16 v0, 0x78

    return v0

    .line 571
    :pswitch_7
    const/16 v0, 0x70

    return v0

    .line 570
    :pswitch_8
    const/16 v0, 0x6c

    return v0

    .line 565
    :pswitch_9
    const/16 v0, 0x68

    return v0

    .line 564
    :pswitch_a
    const/16 v0, 0x64

    return v0

    .line 563
    :pswitch_b
    const/16 v0, 0x60

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
