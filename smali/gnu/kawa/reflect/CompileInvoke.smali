.class public Lgnu/kawa/reflect/CompileInvoke;
.super Ljava/lang/Object;
.source "CompileInvoke.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append([Lgnu/expr/PrimProcedure;ILjava/lang/StringBuffer;)V
    .locals 2
    .param p0, "methods"    # [Lgnu/expr/PrimProcedure;
    .param p1, "mcount"    # I
    .param p2, "sbuf"    # Ljava/lang/StringBuffer;

    .line 455
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 457
    const-string v1, "\n  candidate: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    aget-object v1, p0, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static checkKeywords(Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;ILgnu/bytecode/ClassType;)[Ljava/lang/Object;
    .locals 9
    .param p0, "type"    # Lgnu/bytecode/ObjectType;
    .param p1, "args"    # [Lgnu/expr/Expression;
    .param p2, "start"    # I
    .param p3, "caller"    # Lgnu/bytecode/ClassType;

    .line 419
    array-length v0, p1

    .line 420
    .local v0, "len":I
    const/4 v1, 0x0

    .line 422
    .local v1, "npairs":I
    :goto_0
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgnu/expr/Keyword;

    if-eqz v2, :cond_0

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :cond_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 425
    .local v2, "fields":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 427
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, p2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v4

    .line 428
    .local v4, "value":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lgnu/expr/Keyword;

    invoke-virtual {v5}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v5

    .line 430
    .local v5, "name":Ljava/lang/String;
    invoke-static {p0, v5, p3}, Lgnu/kawa/reflect/SlotSet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v6

    .line 431
    .local v6, "slot":Lgnu/bytecode/Member;
    if-nez v6, :cond_1

    .line 436
    const-string v7, "add"

    invoke-static {v7, v5}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lgnu/kawa/reflect/SlotSet;->type1Array:[Lgnu/bytecode/Type;

    invoke-virtual {p0, v7, v8}, Lgnu/bytecode/ObjectType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v6

    .line 438
    :cond_1
    if-eqz v6, :cond_2

    move-object v7, v6

    goto :goto_2

    :cond_2
    move-object v7, v5

    :goto_2
    aput-object v7, v2, v3

    .line 425
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "slot":Lgnu/bytecode/Member;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 440
    .end local v3    # "i":I
    :cond_3
    return-object v2
.end method

.method private static getMethodName([Lgnu/expr/Expression;C)Ljava/lang/String;
    .locals 3
    .param p0, "args"    # [Lgnu/expr/Expression;
    .param p1, "kind"    # C

    .line 445
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_0

    .line 446
    const-string v0, "<init>"

    return-object v0

    .line 447
    :cond_0
    const/16 v0, 0x50

    if-ne p1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 448
    .local v0, "nameIndex":I
    :goto_0
    array-length v1, p0

    add-int/lit8 v2, v0, 0x1

    if-lt v1, v2, :cond_2

    .line 449
    aget-object v1, p0, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lgnu/kawa/reflect/ClassMethods;->checkName(Lgnu/expr/Expression;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 450
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method protected static getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;Lgnu/kawa/reflect/Invoke;)[Lgnu/expr/PrimProcedure;
    .locals 3
    .param p0, "ctype"    # Lgnu/bytecode/ObjectType;
    .param p1, "mname"    # Ljava/lang/String;
    .param p2, "caller"    # Lgnu/bytecode/ClassType;
    .param p3, "iproc"    # Lgnu/kawa/reflect/Invoke;

    .line 465
    iget-char v0, p3, Lgnu/kawa/reflect/Invoke;->kind:C

    .line 466
    .local v0, "kind":I
    const/16 v1, 0x50

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x2a

    const/16 v2, 0x56

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x56

    :goto_1
    iget-object v2, p3, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    invoke-static {p0, p1, v1, p2, v2}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getStaticMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;
    .locals 9
    .param p0, "type"    # Lgnu/bytecode/ClassType;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Lgnu/expr/Expression;

    const-class v0, Lgnu/kawa/reflect/CompileInvoke;

    monitor-enter v0

    .line 514
    :try_start_0
    sget-object v1, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v1}, Lgnu/kawa/reflect/CompileInvoke;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;Lgnu/kawa/reflect/Invoke;)[Lgnu/expr/PrimProcedure;

    move-result-object v1

    .line 515
    .local v1, "methods":[Lgnu/expr/PrimProcedure;
    array-length v6, p2

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v3, v1

    move-object v4, p0

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lgnu/kawa/reflect/CompileInvoke;->selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J

    move-result-wide v3

    .line 516
    .local v3, "num":J
    const/16 v5, 0x20

    shr-long v5, v3, v5

    long-to-int v6, v5

    .line 517
    .local v6, "okCount":I
    long-to-int v5, v3

    .line 519
    .local v5, "maybeCount":I
    if-nez v1, :cond_0

    .line 520
    const/4 v7, -0x1

    .local v7, "index":I
    goto :goto_0

    .line 521
    .end local v7    # "index":I
    :cond_0
    if-lez v6, :cond_1

    .line 522
    invoke-static {v1, v6}, Lgnu/mapping/MethodProc;->mostSpecific([Lgnu/mapping/MethodProc;I)I

    move-result v7

    .restart local v7    # "index":I
    goto :goto_0

    .line 523
    .end local v7    # "index":I
    :cond_1
    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    .line 524
    const/4 v7, 0x0

    .restart local v7    # "index":I
    goto :goto_0

    .line 526
    .end local v7    # "index":I
    :cond_2
    const/4 v7, -0x1

    .line 527
    .restart local v7    # "index":I
    :goto_0
    if-gez v7, :cond_3

    goto :goto_1

    :cond_3
    aget-object v2, v1, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v0

    return-object v2

    .line 513
    .end local v1    # "methods":[Lgnu/expr/PrimProcedure;
    .end local v3    # "num":J
    .end local v5    # "maybeCount":I
    .end local v6    # "okCount":I
    .end local v7    # "index":I
    .end local p0    # "type":Lgnu/bytecode/ClassType;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "args":[Lgnu/expr/Expression;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static hasKeywordArgument(I[Lgnu/expr/Expression;)I
    .locals 2
    .param p0, "argsStartIndex"    # I
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 475
    move v0, p0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 477
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lgnu/expr/Keyword;

    if-eqz v1, :cond_0

    .line 478
    return v0

    .line 475
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    .end local v0    # "i":I
    :cond_1
    array-length v0, p1

    return v0
.end method

.method private static selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J
    .locals 6
    .param p0, "methods"    # [Lgnu/expr/PrimProcedure;
    .param p1, "ctype"    # Lgnu/bytecode/ObjectType;
    .param p2, "args"    # [Lgnu/expr/Expression;
    .param p3, "margsLength"    # I
    .param p4, "argsStartIndex"    # I
    .param p5, "objIndex"    # I

    .line 488
    new-array v0, p3, [Lgnu/bytecode/Type;

    .line 490
    .local v0, "atypes":[Lgnu/bytecode/Type;
    const/4 v1, 0x0

    .line 491
    .local v1, "dst":I
    if-ltz p5, :cond_0

    .line 492
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "dst":I
    .local v2, "dst":I
    aput-object p1, v0, v1

    move v1, v2

    .line 493
    .end local v2    # "dst":I
    .restart local v1    # "dst":I
    :cond_0
    move v2, p4

    .line 494
    .local v2, "src":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_4

    array-length v3, v0

    if-ge v1, v3, :cond_4

    .line 497
    aget-object v3, p2, v2

    .line 498
    .local v3, "arg":Lgnu/expr/Expression;
    const/4 v4, 0x0

    .line 500
    .local v4, "atype":Lgnu/bytecode/Type;
    invoke-static {v3}, Lgnu/expr/InlineCalls;->checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 501
    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    goto :goto_1

    .line 502
    :cond_1
    invoke-static {v3}, Lgnu/expr/InlineCalls;->checkLongValue(Lgnu/expr/Expression;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 503
    sget-object v4, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    goto :goto_1

    .line 504
    :cond_2
    if-nez v4, :cond_3

    .line 505
    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 506
    :cond_3
    :goto_1
    aput-object v4, v0, v1

    .line 495
    .end local v3    # "arg":Lgnu/expr/Expression;
    .end local v4    # "atype":Lgnu/bytecode/Type;
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 508
    .end local v2    # "src":I
    :cond_4
    invoke-static {p0, v0}, Lgnu/kawa/reflect/ClassMethods;->selectApplicable([Lgnu/expr/PrimProcedure;[Lgnu/bytecode/Type;)J

    move-result-wide v2

    return-wide v2
.end method

.method public static validateApplyInvoke(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 30

    .line 13
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    check-cast v3, Lgnu/kawa/reflect/Invoke;

    .line 14
    iget-char v4, v3, Lgnu/kawa/reflect/Invoke;->kind:C

    .line 15
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v5

    .line 16
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v12

    .line 17
    array-length v13, v12

    .line 18
    iget-boolean v6, v5, Lgnu/expr/Compilation;->mustCompile:Z

    if-eqz v6, :cond_51

    if-eqz v13, :cond_51

    const/16 v6, 0x2a

    const/16 v7, 0x56

    const/4 v14, 0x1

    if-eq v4, v7, :cond_0

    if-ne v4, v6, :cond_1

    :cond_0
    if-ne v13, v14, :cond_1

    goto/16 :goto_2b

    .line 27
    :cond_1
    const/4 v15, 0x0

    aget-object v8, v12, v15

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v8

    .line 28
    aput-object v8, v12, v15

    .line 29
    if-eq v4, v7, :cond_3

    if-ne v4, v6, :cond_2

    goto :goto_0

    :cond_2
    iget-object v10, v3, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    invoke-virtual {v10, v8}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v10

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v8}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v10

    .line 30
    :goto_1
    instance-of v11, v10, Lgnu/expr/PairClassType;

    const/16 v9, 0x4e

    if-eqz v11, :cond_4

    if-ne v4, v9, :cond_4

    .line 31
    check-cast v10, Lgnu/expr/PairClassType;

    iget-object v10, v10, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    move-object v11, v10

    goto :goto_2

    .line 32
    :cond_4
    instance-of v11, v10, Lgnu/bytecode/ObjectType;

    if-eqz v11, :cond_5

    .line 33
    check-cast v10, Lgnu/bytecode/ObjectType;

    move-object v11, v10

    goto :goto_2

    .line 35
    :cond_5
    const/4 v11, 0x0

    .line 36
    :goto_2
    invoke-static {v12, v4}, Lgnu/kawa/reflect/CompileInvoke;->getMethodName([Lgnu/expr/Expression;C)Ljava/lang/String;

    move-result-object v10

    .line 39
    const/16 v15, 0x53

    const/16 v17, -0x1

    const/4 v14, 0x2

    if-eq v4, v7, :cond_b

    if-ne v4, v6, :cond_6

    goto :goto_4

    .line 45
    :cond_6
    if-ne v4, v9, :cond_7

    .line 47
    nop

    .line 48
    nop

    .line 49
    move v6, v13

    const/16 v19, 0x0

    const/16 v20, -0x1

    goto :goto_5

    .line 51
    :cond_7
    if-eq v4, v15, :cond_a

    const/16 v6, 0x73

    if-ne v4, v6, :cond_8

    goto :goto_3

    .line 57
    :cond_8
    const/16 v6, 0x50

    if-ne v4, v6, :cond_9

    .line 59
    add-int/lit8 v6, v13, -0x2

    .line 60
    nop

    .line 61
    const/16 v19, 0x3

    const/16 v20, 0x1

    goto :goto_5

    .line 65
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 66
    return-object v1

    .line 53
    :cond_a
    :goto_3
    add-int/lit8 v6, v13, -0x2

    .line 54
    nop

    .line 55
    const/16 v19, 0x2

    const/16 v20, -0x1

    goto :goto_5

    .line 41
    :cond_b
    :goto_4
    add-int/lit8 v6, v13, -0x1

    .line 42
    nop

    .line 43
    const/16 v19, 0x2

    const/16 v20, 0x0

    .line 69
    :goto_5
    const/16 v15, 0x65

    if-ne v4, v9, :cond_13

    instance-of v7, v11, Lgnu/bytecode/ArrayType;

    if-eqz v7, :cond_13

    .line 71
    check-cast v11, Lgnu/bytecode/ArrayType;

    .line 72
    invoke-virtual {v11}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 73
    nop

    .line 74
    nop

    .line 75
    array-length v3, v12

    const/4 v4, 0x3

    if-lt v3, v4, :cond_d

    const/4 v3, 0x1

    aget-object v4, v12, v3

    instance-of v4, v4, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_d

    .line 77
    aget-object v4, v12, v3

    check-cast v4, Lgnu/expr/QuoteExp;

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 78
    instance-of v4, v3, Lgnu/expr/Keyword;

    if-eqz v4, :cond_d

    check-cast v3, Lgnu/expr/Keyword;

    invoke-virtual {v3}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "size"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 82
    :cond_c
    aget-object v3, v12, v14

    .line 83
    const/4 v4, 0x1

    goto :goto_6

    .line 86
    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    if-nez v3, :cond_e

    .line 87
    new-instance v3, Ljava/lang/Integer;

    array-length v6, v12

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-direct {v3, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    .line 88
    :cond_e
    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v3, v6}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    .line 89
    new-instance v6, Lgnu/expr/ApplyExp;

    new-instance v7, Lgnu/kawa/reflect/ArrayNew;

    invoke-direct {v7, v2}, Lgnu/kawa/reflect/ArrayNew;-><init>(Lgnu/bytecode/Type;)V

    const/4 v8, 0x1

    new-array v9, v8, [Lgnu/expr/Expression;

    const/4 v8, 0x0

    aput-object v3, v9, v8

    invoke-direct {v6, v7, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 91
    invoke-virtual {v6, v11}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 92
    if-eqz v4, :cond_f

    array-length v3, v12

    const/4 v7, 0x3

    if-ne v3, v7, :cond_f

    .line 93
    return-object v6

    .line 94
    :cond_f
    new-instance v3, Lgnu/expr/LetExp;

    const/4 v7, 0x1

    new-array v8, v7, [Lgnu/expr/Expression;

    const/4 v7, 0x0

    aput-object v6, v8, v7

    invoke-direct {v3, v8}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 95
    const/4 v7, 0x0

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v7, v11}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v7

    .line 96
    invoke-virtual {v7, v6}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 97
    new-instance v6, Lgnu/expr/BeginExp;

    invoke-direct {v6}, Lgnu/expr/BeginExp;-><init>()V

    .line 98
    nop

    .line 99
    if-eqz v4, :cond_10

    const/4 v8, 0x3

    goto :goto_7

    :cond_10
    const/4 v8, 0x1

    :goto_7
    const/4 v9, 0x0

    :goto_8
    array-length v10, v12

    if-ge v8, v10, :cond_12

    .line 101
    aget-object v10, v12, v8

    .line 102
    if-eqz v4, :cond_11

    add-int/lit8 v11, v8, 0x1

    array-length v13, v12

    if-ge v11, v13, :cond_11

    instance-of v13, v10, Lgnu/expr/QuoteExp;

    if-eqz v13, :cond_11

    .line 104
    move-object v13, v10

    check-cast v13, Lgnu/expr/QuoteExp;

    invoke-virtual {v13}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 105
    instance-of v14, v13, Lgnu/expr/Keyword;

    if-eqz v14, :cond_11

    .line 107
    check-cast v13, Lgnu/expr/Keyword;

    invoke-virtual {v13}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v8

    .line 110
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 111
    aget-object v10, v12, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    move v8, v11

    goto :goto_9

    .line 113
    :catchall_0
    move-exception v0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "non-integer keyword \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' in array constructor"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v15, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 116
    return-object v1

    .line 120
    :cond_11
    :goto_9
    invoke-virtual {v0, v10, v2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v10

    .line 121
    new-instance v11, Lgnu/expr/ApplyExp;

    new-instance v13, Lgnu/kawa/reflect/ArraySet;

    invoke-direct {v13, v2}, Lgnu/kawa/reflect/ArraySet;-><init>(Lgnu/bytecode/Type;)V

    const/4 v14, 0x3

    new-array v15, v14, [Lgnu/expr/Expression;

    new-instance v14, Lgnu/expr/ReferenceExp;

    invoke-direct {v14, v7}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/16 v16, 0x0

    aput-object v14, v15, v16

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v14}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v14

    const/16 v17, 0x1

    aput-object v14, v15, v17

    const/4 v14, 0x2

    aput-object v10, v15, v14

    invoke-direct {v11, v13, v15}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {v6, v11}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 126
    add-int/lit8 v9, v9, 0x1

    .line 99
    add-int/lit8 v8, v8, 0x1

    const/4 v14, 0x2

    const/16 v15, 0x65

    goto :goto_8

    .line 128
    :cond_12
    new-instance v0, Lgnu/expr/ReferenceExp;

    invoke-direct {v0, v7}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-virtual {v6, v0}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 129
    iput-object v6, v3, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 130
    return-object v3

    .line 132
    :cond_13
    if-eqz v11, :cond_50

    if-eqz v10, :cond_50

    .line 134
    instance-of v7, v11, Lgnu/expr/TypeValue;

    if-eqz v7, :cond_14

    if-ne v4, v9, :cond_14

    .line 136
    move-object v7, v11

    check-cast v7, Lgnu/expr/TypeValue;

    invoke-interface {v7}, Lgnu/expr/TypeValue;->getConstructor()Lgnu/mapping/Procedure;

    move-result-object v7

    .line 137
    if-eqz v7, :cond_14

    .line 139
    const/4 v1, 0x1

    sub-int/2addr v13, v1

    new-array v3, v13, [Lgnu/expr/Expression;

    .line 140
    const/4 v4, 0x0

    invoke-static {v12, v1, v3, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    new-instance v1, Lgnu/expr/ApplyExp;

    invoke-direct {v1, v7, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 145
    :cond_14
    if-nez v5, :cond_15

    const/4 v14, 0x0

    goto :goto_b

    :cond_15
    iget-object v7, v5, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    if-eqz v7, :cond_16

    iget-object v7, v5, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    goto :goto_a

    :cond_16
    iget-object v7, v5, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    :goto_a
    move-object v14, v7

    .line 148
    :goto_b
    nop

    .line 152
    :try_start_1
    invoke-static {v11, v10, v14, v3}, Lgnu/kawa/reflect/CompileInvoke;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;Lgnu/kawa/reflect/Invoke;)[Lgnu/expr/PrimProcedure;

    move-result-object v7

    .line 153
    invoke-static {v7, v6}, Lgnu/kawa/reflect/ClassMethods;->selectApplicable([Lgnu/expr/PrimProcedure;I)I

    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    nop

    .line 160
    nop

    .line 163
    const/16 v22, 0x20

    if-ne v4, v9, :cond_28

    move/from16 v23, v6

    const/4 v9, 0x1

    invoke-static {v9, v12}, Lgnu/kawa/reflect/CompileInvoke;->hasKeywordArgument(I[Lgnu/expr/Expression;)I

    move-result v6

    array-length v9, v12

    if-lt v6, v9, :cond_1a

    if-gtz v15, :cond_17

    move-object/from16 v24, v10

    const/4 v9, 0x1

    new-array v10, v9, [Lgnu/bytecode/Type;

    sget-object v9, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    const/16 v16, 0x0

    aput-object v9, v10, v16

    invoke-static {v7, v10}, Lgnu/kawa/reflect/ClassMethods;->selectApplicable([Lgnu/expr/PrimProcedure;[Lgnu/bytecode/Type;)J

    move-result-wide v9

    shr-long v9, v9, v22

    const-wide/16 v25, 0x1

    cmp-long v27, v9, v25

    if-nez v27, :cond_18

    goto :goto_c

    :cond_17
    move-object/from16 v24, v10

    :cond_18
    move/from16 v26, v4

    move/from16 v21, v13

    move-object/from16 v25, v14

    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_14

    :cond_1a
    move-object/from16 v24, v10

    :goto_c
    invoke-static {v11, v12, v6, v14}, Lgnu/kawa/reflect/CompileInvoke;->checkKeywords(Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;ILgnu/bytecode/ClassType;)[Ljava/lang/Object;

    move-result-object v9

    array-length v10, v9

    move-object/from16 v25, v14

    const/4 v14, 0x2

    mul-int/lit8 v10, v10, 0x2

    array-length v14, v12

    sub-int/2addr v14, v6

    move/from16 v26, v4

    const-string v4, "add"

    if-eq v10, v14, :cond_1b

    iget-object v10, v3, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    move/from16 v21, v13

    const/4 v13, 0x0

    const/16 v14, 0x56

    invoke-static {v11, v4, v14, v13, v10}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v10

    const/4 v13, 0x2

    invoke-static {v10, v13}, Lgnu/kawa/reflect/ClassMethods;->selectApplicable([Lgnu/expr/PrimProcedure;I)I

    move-result v10

    if-lez v10, :cond_19

    .line 174
    :cond_1b
    nop

    .line 175
    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_d
    array-length v14, v9

    if-ge v13, v14, :cond_1e

    .line 177
    aget-object v14, v9, v13

    instance-of v14, v14, Ljava/lang/String;

    if-eqz v14, :cond_1d

    .line 179
    if-nez v10, :cond_1c

    .line 181
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    const-string v14, "no field or setter "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 185
    :cond_1c
    const-string v14, ", "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    :goto_e
    const/16 v14, 0x60

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 187
    aget-object v14, v9, v13

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 188
    const/16 v14, 0x27

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 175
    :cond_1d
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 191
    :cond_1e
    if-eqz v10, :cond_1f

    .line 193
    const-string v0, " in class "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual {v11}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x77

    invoke-virtual {v5, v2, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 196
    return-object v1

    .line 201
    :cond_1f
    array-length v5, v12

    if-ge v6, v5, :cond_20

    .line 203
    new-array v5, v6, [Lgnu/expr/Expression;

    .line 204
    const/4 v10, 0x0

    invoke-static {v12, v10, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    new-instance v7, Lgnu/expr/ApplyExp;

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v0, v7, v11}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v5

    check-cast v5, Lgnu/expr/ApplyExp;

    .line 206
    goto :goto_f

    .line 208
    :cond_20
    const/4 v10, 0x0

    new-instance v5, Lgnu/expr/ApplyExp;

    aget-object v7, v7, v10

    const/4 v13, 0x1

    new-array v14, v13, [Lgnu/expr/Expression;

    aput-object v8, v14, v10

    invoke-direct {v5, v7, v14}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 209
    :goto_f
    invoke-virtual {v5, v11}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 210
    nop

    .line 211
    array-length v7, v12

    if-lez v7, :cond_27

    .line 213
    const/4 v7, 0x0

    :goto_10
    array-length v8, v9

    if-ge v7, v8, :cond_24

    .line 215
    aget-object v8, v9, v7

    .line 217
    instance-of v10, v8, Lgnu/bytecode/Method;

    if-eqz v10, :cond_21

    .line 218
    move-object v10, v8

    check-cast v10, Lgnu/bytecode/Method;

    invoke-virtual {v10}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v10

    const/4 v13, 0x0

    aget-object v10, v10, v13

    goto :goto_11

    .line 219
    :cond_21
    instance-of v10, v8, Lgnu/bytecode/Field;

    if-eqz v10, :cond_22

    .line 220
    move-object v10, v8

    check-cast v10, Lgnu/bytecode/Field;

    invoke-virtual {v10}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v10

    goto :goto_11

    .line 222
    :cond_22
    const/4 v10, 0x0

    .line 223
    :goto_11
    if-eqz v10, :cond_23

    .line 224
    iget-object v13, v3, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    invoke-virtual {v13, v10}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v10

    .line 225
    :cond_23
    mul-int/lit8 v13, v7, 0x2

    add-int/2addr v13, v6

    const/4 v14, 0x1

    add-int/2addr v13, v14

    aget-object v13, v12, v13

    invoke-virtual {v0, v13, v10}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v10

    .line 226
    const/4 v13, 0x3

    new-array v15, v13, [Lgnu/expr/Expression;

    const/4 v13, 0x0

    aput-object v5, v15, v13

    new-instance v5, Lgnu/expr/QuoteExp;

    invoke-direct {v5, v8}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v5, v15, v14

    const/4 v5, 0x2

    aput-object v10, v15, v5

    .line 228
    new-instance v5, Lgnu/expr/ApplyExp;

    sget-object v8, Lgnu/kawa/reflect/SlotSet;->setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;

    invoke-direct {v5, v8, v15}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 229
    invoke-virtual {v5, v11}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 213
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 231
    :cond_24
    array-length v3, v12

    if-ne v6, v3, :cond_25

    const/4 v3, 0x1

    goto :goto_12

    :cond_25
    array-length v3, v9

    const/4 v7, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v6

    .line 233
    :goto_12
    nop

    .line 234
    array-length v6, v12

    if-ge v3, v6, :cond_27

    .line 236
    new-instance v6, Lgnu/expr/LetExp;

    const/4 v7, 0x1

    new-array v8, v7, [Lgnu/expr/Expression;

    const/4 v7, 0x0

    aput-object v5, v8, v7

    invoke-direct {v6, v8}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 237
    const/4 v7, 0x0

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v7, v11}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v8

    .line 238
    invoke-virtual {v8, v5}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 239
    new-instance v5, Lgnu/expr/BeginExp;

    invoke-direct {v5}, Lgnu/expr/BeginExp;-><init>()V

    .line 240
    nop

    :goto_13
    array-length v7, v12

    if-ge v3, v7, :cond_26

    .line 242
    const/4 v7, 0x3

    new-array v9, v7, [Lgnu/expr/Expression;

    new-instance v10, Lgnu/expr/ReferenceExp;

    invoke-direct {v10, v8}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    aget-object v10, v12, v3

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 247
    new-instance v10, Lgnu/expr/ApplyExp;

    sget-object v11, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    invoke-direct {v10, v11, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    const/4 v9, 0x0

    invoke-virtual {v0, v10, v9}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v10

    invoke-virtual {v5, v10}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 240
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 251
    :cond_26
    new-instance v3, Lgnu/expr/ReferenceExp;

    invoke-direct {v3, v8}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-virtual {v5, v3}, Lgnu/expr/BeginExp;->add(Lgnu/expr/Expression;)V

    .line 252
    iput-object v5, v6, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 253
    move-object v5, v6

    .line 256
    :cond_27
    invoke-virtual {v5, v1}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->checkType(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 163
    :cond_28
    move/from16 v26, v4

    move/from16 v23, v6

    move-object/from16 v24, v10

    move/from16 v21, v13

    move-object/from16 v25, v14

    const/4 v9, 0x0

    .line 260
    :goto_14
    if-ltz v15, :cond_38

    .line 262
    const/4 v3, 0x1

    :goto_15
    move/from16 v4, v21

    if-ge v3, v4, :cond_37

    .line 264
    nop

    .line 265
    add-int/lit8 v13, v4, -0x1

    if-ne v3, v13, :cond_29

    const/4 v6, 0x1

    goto :goto_16

    :cond_29
    const/4 v6, 0x0

    .line 266
    :goto_16
    move/from16 v13, v26

    const/16 v8, 0x50

    if-ne v13, v8, :cond_2a

    const/4 v8, 0x2

    if-eq v3, v8, :cond_2b

    goto :goto_17

    :cond_2a
    const/4 v8, 0x2

    :goto_17
    const/16 v10, 0x4e

    if-eq v13, v10, :cond_2c

    const/4 v10, 0x1

    if-ne v3, v10, :cond_2c

    .line 267
    :cond_2b
    move-object v8, v9

    goto/16 :goto_1c

    .line 268
    :cond_2c
    const/16 v10, 0x50

    if-ne v13, v10, :cond_2d

    const/4 v10, 0x1

    if-ne v3, v10, :cond_2d

    .line 269
    move-object v8, v11

    goto :goto_1c

    .line 270
    :cond_2d
    if-lez v15, :cond_35

    .line 272
    const/16 v10, 0x4e

    if-ne v13, v10, :cond_2e

    const/4 v14, 0x1

    goto :goto_18

    :cond_2e
    move/from16 v14, v19

    :goto_18
    sub-int v14, v3, v14

    .line 273
    move-object v8, v9

    const/4 v9, 0x0

    :goto_19
    if-ge v9, v15, :cond_36

    .line 275
    aget-object v10, v7, v9

    .line 276
    const/16 v2, 0x53

    if-eq v13, v2, :cond_2f

    invoke-virtual {v10}, Lgnu/expr/PrimProcedure;->takesTarget()Z

    move-result v2

    if-eqz v2, :cond_2f

    const/4 v2, 0x1

    goto :goto_1a

    :cond_2f
    const/4 v2, 0x0

    :goto_1a
    add-int/2addr v2, v14

    .line 279
    if-eqz v6, :cond_30

    invoke-virtual {v10}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    move-result v18

    if-eqz v18, :cond_30

    move/from16 v18, v6

    invoke-virtual {v10}, Lgnu/expr/PrimProcedure;->minArgs()I

    move-result v6

    if-ne v2, v6, :cond_31

    .line 281
    const/4 v8, 0x0

    goto :goto_1b

    .line 279
    :cond_30
    move/from16 v18, v6

    .line 284
    :cond_31
    invoke-virtual {v10, v2}, Lgnu/expr/PrimProcedure;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v2

    .line 285
    if-nez v9, :cond_32

    .line 286
    move-object v8, v2

    goto :goto_1b

    .line 287
    :cond_32
    instance-of v6, v2, Lgnu/bytecode/PrimType;

    instance-of v10, v8, Lgnu/bytecode/PrimType;

    if-eq v6, v10, :cond_33

    .line 288
    const/4 v8, 0x0

    goto :goto_1b

    .line 291
    :cond_33
    invoke-static {v8, v2}, Lgnu/bytecode/Type;->lowestCommonSuperType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v2

    move-object v8, v2

    .line 294
    :goto_1b
    if-nez v8, :cond_34

    .line 295
    goto :goto_1c

    .line 273
    :cond_34
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p2

    move/from16 v6, v18

    const/16 v10, 0x4e

    goto :goto_19

    .line 270
    :cond_35
    const/4 v8, 0x0

    .line 298
    :cond_36
    :goto_1c
    aget-object v2, v12, v3

    invoke-virtual {v0, v2, v8}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v2

    aput-object v2, v12, v3

    .line 262
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p2

    move/from16 v21, v4

    move/from16 v26, v13

    const/4 v9, 0x0

    goto/16 :goto_15

    .line 300
    :cond_37
    move/from16 v13, v26

    move/from16 v2, v23

    move-object v6, v7

    move-object v3, v7

    move-object v7, v11

    move-object v8, v12

    const/16 v14, 0x4e

    move v9, v2

    move-object/from16 v28, v24

    move/from16 v10, v19

    move-object/from16 v29, v11

    move/from16 v11, v20

    invoke-static/range {v6 .. v11}, Lgnu/kawa/reflect/CompileInvoke;->selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J

    move-result-wide v6

    .line 302
    shr-long v8, v6, v22

    long-to-int v8, v8

    .line 303
    long-to-int v7, v6

    .line 304
    goto :goto_1d

    .line 307
    :cond_38
    move-object v3, v7

    move-object/from16 v29, v11

    move/from16 v4, v21

    move/from16 v2, v23

    move-object/from16 v28, v24

    move/from16 v13, v26

    const/16 v14, 0x4e

    .line 308
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 310
    :goto_1d
    array-length v11, v3

    .line 311
    add-int v6, v8, v7

    if-nez v6, :cond_39

    if-ne v13, v14, :cond_39

    .line 313
    const-string v2, "valueOf"

    sget-object v3, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    move-object/from16 v7, v25

    move-object/from16 v10, v29

    invoke-static {v10, v2, v7, v3}, Lgnu/kawa/reflect/CompileInvoke;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;Lgnu/kawa/reflect/Invoke;)[Lgnu/expr/PrimProcedure;

    move-result-object v2

    .line 314
    nop

    .line 315
    const/4 v3, 0x1

    sub-int/2addr v4, v3

    .line 316
    const/4 v3, -0x1

    const/16 v19, 0x1

    move-object v6, v2

    move-object v7, v10

    move-object v8, v12

    move v9, v4

    move-object/from16 v18, v10

    move/from16 v10, v19

    move/from16 v21, v11

    move v11, v3

    invoke-static/range {v6 .. v11}, Lgnu/kawa/reflect/CompileInvoke;->selectApplicable([Lgnu/expr/PrimProcedure;Lgnu/bytecode/ObjectType;[Lgnu/expr/Expression;III)J

    move-result-wide v6

    .line 318
    shr-long v8, v6, v22

    long-to-int v8, v8

    .line 319
    long-to-int v7, v6

    move v6, v4

    goto :goto_1e

    .line 311
    :cond_39
    move/from16 v21, v11

    move-object/from16 v18, v29

    .line 321
    move v6, v2

    move-object v2, v3

    :goto_1e
    add-int v3, v8, v7

    const-string v4, "\' in "

    if-nez v3, :cond_41

    .line 323
    const/16 v3, 0x50

    if-eq v13, v3, :cond_3b

    invoke-virtual {v5}, Lgnu/expr/Compilation;->warnInvokeUnknownMethod()Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_1f

    :cond_3a
    const/4 v3, 0x1

    goto/16 :goto_28

    .line 325
    :cond_3b
    :goto_1f
    if-ne v13, v14, :cond_3c

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v28

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "/valueOf"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_20

    .line 325
    :cond_3c
    move-object/from16 v9, v28

    move-object v10, v9

    .line 327
    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    array-length v7, v2

    add-int v11, v21, v7

    if-nez v11, :cond_3d

    .line 329
    const-string v7, "no accessible method \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 330
    :cond_3d
    const/high16 v7, -0xf0000

    if-ne v15, v7, :cond_3e

    .line 331
    const-string v7, "too few arguments for method \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 332
    :cond_3e
    const/high16 v7, -0xe0000

    if-ne v15, v7, :cond_3f

    .line 333
    const-string v7, "too many arguments for method \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 335
    :cond_3f
    const-string v7, "no possibly applicable method \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :goto_21
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual/range {v18 .. v18}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const/16 v4, 0x50

    if-ne v13, v4, :cond_40

    const/16 v15, 0x65

    goto :goto_22

    :cond_40
    const/16 v15, 0x77

    :goto_22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v15, v3}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 340
    const/4 v3, 0x1

    goto/16 :goto_28

    .line 342
    :cond_41
    move-object/from16 v9, v28

    const/4 v3, 0x1

    if-eq v8, v3, :cond_4c

    if-nez v8, :cond_42

    if-ne v7, v3, :cond_42

    goto/16 :goto_27

    .line 344
    :cond_42
    if-lez v8, :cond_49

    .line 346
    invoke-static {v2, v8}, Lgnu/mapping/MethodProc;->mostSpecific([Lgnu/mapping/MethodProc;I)I

    move-result v7

    .line 347
    if-gez v7, :cond_46

    .line 349
    const/16 v10, 0x53

    if-ne v13, v10, :cond_46

    .line 354
    const/4 v10, 0x0

    :goto_23
    if-ge v10, v8, :cond_45

    .line 356
    aget-object v11, v2, v10

    invoke-virtual {v11}, Lgnu/expr/PrimProcedure;->getStaticFlag()Z

    move-result v11

    if-eqz v11, :cond_44

    .line 358
    if-ltz v7, :cond_43

    .line 360
    nop

    .line 361
    goto :goto_24

    .line 364
    :cond_43
    move v7, v10

    .line 354
    :cond_44
    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    :cond_45
    move/from16 v17, v7

    goto :goto_24

    .line 369
    :cond_46
    move/from16 v17, v7

    :goto_24
    if-gez v17, :cond_4d

    const/16 v7, 0x50

    if-eq v13, v7, :cond_47

    invoke-virtual {v5}, Lgnu/expr/Compilation;->warnInvokeUnknownMethod()Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 372
    :cond_47
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 373
    const-string v10, "more than one definitely applicable method `"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    invoke-virtual/range {v18 .. v18}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    invoke-static {v2, v8, v7}, Lgnu/kawa/reflect/CompileInvoke;->append([Lgnu/expr/PrimProcedure;ILjava/lang/StringBuffer;)V

    .line 378
    const/16 v4, 0x50

    if-ne v13, v4, :cond_48

    const/16 v15, 0x65

    goto :goto_25

    :cond_48
    const/16 v15, 0x77

    :goto_25
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v15, v4}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 379
    goto :goto_28

    .line 381
    :cond_49
    const/16 v8, 0x50

    if-eq v13, v8, :cond_4a

    invoke-virtual {v5}, Lgnu/expr/Compilation;->warnInvokeUnknownMethod()Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 383
    :cond_4a
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 384
    const-string v10, "more than one possibly applicable method \'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    invoke-virtual/range {v18 .. v18}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    invoke-static {v2, v7, v8}, Lgnu/kawa/reflect/CompileInvoke;->append([Lgnu/expr/PrimProcedure;ILjava/lang/StringBuffer;)V

    .line 389
    const/16 v4, 0x50

    if-ne v13, v4, :cond_4b

    const/16 v15, 0x65

    goto :goto_26

    :cond_4b
    const/16 v15, 0x77

    :goto_26
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v15, v4}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_28

    .line 343
    :cond_4c
    :goto_27
    const/16 v17, 0x0

    .line 391
    :cond_4d
    :goto_28
    if-ltz v17, :cond_50

    .line 393
    new-array v4, v6, [Lgnu/expr/Expression;

    .line 394
    aget-object v2, v2, v17

    .line 395
    invoke-virtual {v2}, Lgnu/expr/PrimProcedure;->takesVarArgs()Z

    .line 396
    nop

    .line 397
    if-ltz v20, :cond_4e

    .line 398
    aget-object v5, v12, v20

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const/4 v14, 0x1

    goto :goto_29

    .line 397
    :cond_4e
    const/4 v7, 0x0

    const/4 v14, 0x0

    .line 399
    :goto_29
    move/from16 v3, v19

    .line 400
    :goto_2a
    array-length v5, v12

    if-ge v3, v5, :cond_4f

    if-ge v14, v6, :cond_4f

    .line 403
    aget-object v5, v12, v3

    aput-object v5, v4, v14

    .line 401
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_2a

    .line 405
    :cond_4f
    new-instance v3, Lgnu/expr/ApplyExp;

    invoke-direct {v3, v2, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 406
    invoke-virtual {v3, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 407
    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 155
    :catch_0
    move-exception v0

    move-object/from16 v18, v11

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown class: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {v18 .. v18}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x77

    invoke-virtual {v5, v2, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 158
    return-object v1

    .line 410
    :cond_50
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 411
    return-object v1

    .line 23
    :cond_51
    :goto_2b
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 24
    return-object v1
.end method
