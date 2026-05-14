.class public Lgnu/expr/InlineCalls;
.super Lgnu/expr/ExpExpVisitor;
.source "InlineCalls.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpExpVisitor<",
        "Lgnu/bytecode/Type;",
        ">;"
    }
.end annotation


# static fields
.field private static inlinerMethodArgTypes:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lgnu/expr/Compilation;)V
    .locals 0
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 37
    invoke-direct {p0}, Lgnu/expr/ExpExpVisitor;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lgnu/expr/InlineCalls;->setContext(Lgnu/expr/Compilation;)V

    .line 39
    return-void
.end method

.method public static checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;
    .locals 4
    .param p0, "exp"    # Lgnu/expr/Expression;

    .line 130
    instance-of v0, p0, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_0

    .line 132
    move-object v0, p0

    check-cast v0, Lgnu/expr/QuoteExp;

    .line 133
    .local v0, "qarg":Lgnu/expr/QuoteExp;
    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 134
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->isExplicitlyTyped()Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, v1, Lgnu/math/IntNum;

    if-eqz v2, :cond_0

    .line 136
    move-object v2, v1

    check-cast v2, Lgnu/math/IntNum;

    .line 137
    .local v2, "ivalue":Lgnu/math/IntNum;
    invoke-virtual {v2}, Lgnu/math/IntNum;->inIntRange()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {v2}, Lgnu/math/IntNum;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 141
    .end local v0    # "qarg":Lgnu/expr/QuoteExp;
    .end local v1    # "value":Ljava/lang/Object;
    .end local v2    # "ivalue":Lgnu/math/IntNum;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static checkLongValue(Lgnu/expr/Expression;)Ljava/lang/Long;
    .locals 5
    .param p0, "exp"    # Lgnu/expr/Expression;

    .line 146
    instance-of v0, p0, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_0

    .line 148
    move-object v0, p0

    check-cast v0, Lgnu/expr/QuoteExp;

    .line 149
    .local v0, "qarg":Lgnu/expr/QuoteExp;
    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 150
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->isExplicitlyTyped()Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, v1, Lgnu/math/IntNum;

    if-eqz v2, :cond_0

    .line 152
    move-object v2, v1

    check-cast v2, Lgnu/math/IntNum;

    .line 153
    .local v2, "ivalue":Lgnu/math/IntNum;
    invoke-virtual {v2}, Lgnu/math/IntNum;->inLongRange()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    invoke-virtual {v2}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 157
    .end local v0    # "qarg":Lgnu/expr/QuoteExp;
    .end local v1    # "value":Ljava/lang/Object;
    .end local v2    # "ivalue":Lgnu/math/IntNum;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static declared-synchronized getInlinerMethodArgTypes()[Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lgnu/expr/InlineCalls;

    monitor-enter v0

    .line 407
    :try_start_0
    sget-object v1, Lgnu/expr/InlineCalls;->inlinerMethodArgTypes:[Ljava/lang/Class;

    .line 408
    .local v1, "t":[Ljava/lang/Class;
    if-nez v1, :cond_0

    .line 410
    const-string v2, "gnu.expr.ApplyExp"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "gnu.expr.InlineCalls"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "gnu.bytecode.Type"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "gnu.mapping.Procedure"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v2, 0x2

    aput-object v4, v6, v2

    const/4 v2, 0x3

    aput-object v5, v6, v2

    move-object v1, v6

    .line 414
    sput-object v1, Lgnu/expr/InlineCalls;->inlinerMethodArgTypes:[Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :cond_0
    monitor-exit v0

    return-object v1

    .line 406
    .end local v1    # "t":[Ljava/lang/Class;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static inlineCall(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;Z)Lgnu/expr/Expression;
    .locals 11
    .param p0, "lexp"    # Lgnu/expr/LambdaExp;
    .param p1, "args"    # [Lgnu/expr/Expression;
    .param p2, "makeCopy"    # Z

    .line 492
    iget-object v0, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget-object v0, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 498
    :cond_0
    iget v0, p0, Lgnu/expr/LambdaExp;->max_args:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 499
    .local v0, "varArgs":Z
    :goto_0
    iget v4, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v5, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v4, v5, :cond_2

    iget v4, p0, Lgnu/expr/LambdaExp;->min_args:I

    array-length v5, p1

    if-eq v4, v5, :cond_3

    :cond_2
    if-eqz v0, :cond_c

    iget v4, p0, Lgnu/expr/LambdaExp;->min_args:I

    if-nez v4, :cond_c

    .line 503
    :cond_3
    const/4 v4, 0x0

    .line 504
    .local v4, "prev":Lgnu/expr/Declaration;
    const/4 v5, 0x0

    .line 507
    .local v5, "i":I
    if-eqz p2, :cond_4

    .line 509
    new-instance v6, Lgnu/kawa/util/IdentityHashTable;

    invoke-direct {v6}, Lgnu/kawa/util/IdentityHashTable;-><init>()V

    .line 510
    .local v6, "mapper":Lgnu/kawa/util/IdentityHashTable;
    invoke-static {p1, v6}, Lgnu/expr/Expression;->deepCopy([Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)[Lgnu/expr/Expression;

    move-result-object v7

    .line 511
    .local v7, "cargs":[Lgnu/expr/Expression;
    if-nez v7, :cond_5

    if-eqz p1, :cond_5

    .line 512
    return-object v1

    .line 516
    .end local v6    # "mapper":Lgnu/kawa/util/IdentityHashTable;
    .end local v7    # "cargs":[Lgnu/expr/Expression;
    :cond_4
    const/4 v6, 0x0

    .line 517
    .restart local v6    # "mapper":Lgnu/kawa/util/IdentityHashTable;
    move-object v7, p1

    .line 519
    .restart local v7    # "cargs":[Lgnu/expr/Expression;
    :cond_5
    if-eqz v0, :cond_6

    .line 521
    array-length v8, p1

    add-int/2addr v8, v3

    new-array v8, v8, [Lgnu/expr/Expression;

    .line 522
    .local v8, "xargs":[Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v9

    iget-object v9, v9, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    invoke-static {v9}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v9

    aput-object v9, v8, v2

    .line 523
    array-length v9, p1

    invoke-static {p1, v2, v8, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    new-array v3, v3, [Lgnu/expr/Expression;

    new-instance v9, Lgnu/expr/ApplyExp;

    sget-object v10, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-direct {v9, v10, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    aput-object v9, v3, v2

    move-object v7, v3

    .line 526
    .end local v8    # "xargs":[Lgnu/expr/Expression;
    :cond_6
    new-instance v2, Lgnu/expr/LetExp;

    invoke-direct {v2, v7}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 527
    .local v2, "let":Lgnu/expr/LetExp;
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    .local v3, "param":Lgnu/expr/Declaration;
    :goto_1
    if-eqz v3, :cond_a

    .line 529
    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v8

    .line 530
    .local v8, "next":Lgnu/expr/Declaration;
    if-eqz p2, :cond_8

    .line 532
    iget-object v9, v3, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    iget-object v10, v3, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    invoke-virtual {v2, v9, v10}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v9

    .line 533
    .local v9, "ldecl":Lgnu/expr/Declaration;
    iget-object v10, v3, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    if-eqz v10, :cond_7

    .line 535
    iget-object v10, v3, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    invoke-static {v10}, Lgnu/expr/Expression;->deepCopy(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v10

    iput-object v10, v9, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    .line 536
    iget-object v10, v9, Lgnu/expr/Declaration;->typeExp:Lgnu/expr/Expression;

    if-nez v10, :cond_7

    .line 537
    return-object v1

    .line 540
    :cond_7
    invoke-virtual {v6, v3, v9}, Lgnu/kawa/util/IdentityHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .end local v9    # "ldecl":Lgnu/expr/Declaration;
    goto :goto_2

    .line 544
    :cond_8
    invoke-virtual {p0, v4, v3}, Lgnu/expr/LambdaExp;->remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 545
    invoke-virtual {v2, v4, v3}, Lgnu/expr/LetExp;->add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 547
    :goto_2
    if-nez v0, :cond_9

    .line 549
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v9

    if-nez v9, :cond_9

    .line 550
    aget-object v9, v7, v5

    invoke-virtual {v3, v9}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 552
    :cond_9
    move-object v4, v3

    .line 553
    move-object v3, v8

    .line 527
    .end local v8    # "next":Lgnu/expr/Declaration;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 562
    .end local v3    # "param":Lgnu/expr/Declaration;
    :cond_a
    iget-object v3, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 563
    .local v3, "body":Lgnu/expr/Expression;
    if-eqz p2, :cond_b

    .line 565
    invoke-static {v3, v6}, Lgnu/expr/Expression;->deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object v3

    .line 566
    if-nez v3, :cond_b

    iget-object v8, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v8, :cond_b

    .line 567
    return-object v1

    .line 569
    :cond_b
    iput-object v3, v2, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 570
    return-object v2

    .line 587
    .end local v2    # "let":Lgnu/expr/LetExp;
    .end local v3    # "body":Lgnu/expr/Expression;
    .end local v4    # "prev":Lgnu/expr/Declaration;
    .end local v5    # "i":I
    .end local v6    # "mapper":Lgnu/kawa/util/IdentityHashTable;
    .end local v7    # "cargs":[Lgnu/expr/Expression;
    :cond_c
    return-object v1

    .line 497
    .end local v0    # "varArgs":Z
    :cond_d
    :goto_3
    return-object v1
.end method

.method public static inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Lgnu/expr/Expression;
    .locals 2
    .param p0, "exp"    # Lgnu/expr/Expression;
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 32
    new-instance v0, Lgnu/expr/InlineCalls;

    invoke-direct {v0, p1}, Lgnu/expr/InlineCalls;-><init>(Lgnu/expr/Compilation;)V

    .line 33
    .local v0, "visitor":Lgnu/expr/InlineCalls;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public checkType(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 7
    .param p1, "exp"    # Lgnu/expr/Expression;
    .param p2, "required"    # Lgnu/bytecode/Type;

    .line 54
    invoke-virtual {p1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 56
    .local v0, "expType":Lgnu/bytecode/Type;
    instance-of v1, p2, Lgnu/bytecode/ClassType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    instance-of v1, p1, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_0

    .line 62
    move-object v1, p2

    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->checkSingleAbstractMethod()Lgnu/bytecode/Method;

    move-result-object v1

    .line 63
    .local v1, "amethod":Lgnu/bytecode/Method;
    if-eqz v1, :cond_0

    .line 65
    move-object v4, p1

    check-cast v4, Lgnu/expr/LambdaExp;

    .line 66
    .local v4, "lexp":Lgnu/expr/LambdaExp;
    new-instance v5, Lgnu/expr/ObjectExp;

    invoke-direct {v5}, Lgnu/expr/ObjectExp;-><init>()V

    .line 67
    .local v5, "oexp":Lgnu/expr/ObjectExp;
    invoke-virtual {v5, p1}, Lgnu/expr/ObjectExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 68
    new-array v2, v2, [Lgnu/expr/Expression;

    new-instance v6, Lgnu/expr/QuoteExp;

    invoke-direct {v6, p2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v6, v2, v3

    iput-object v2, v5, Lgnu/expr/ObjectExp;->supers:[Lgnu/expr/Expression;

    .line 69
    invoke-virtual {p0}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v2

    invoke-virtual {v5, v2}, Lgnu/expr/ObjectExp;->setTypes(Lgnu/expr/Compilation;)V

    .line 70
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "mname":Ljava/lang/Object;
    invoke-virtual {v5, v4, v2}, Lgnu/expr/ObjectExp;->addMethod(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Lgnu/expr/Declaration;

    .line 72
    sget-object v3, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v2, v3}, Lgnu/expr/ObjectExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    move-result-object v3

    .line 73
    .local v3, "mdecl":Lgnu/expr/Declaration;
    iput-object v4, v5, Lgnu/expr/ObjectExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 74
    iget-object v6, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v5, v6}, Lgnu/expr/ObjectExp;->declareParts(Lgnu/expr/Compilation;)V

    .line 75
    invoke-virtual {p0, v5, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v6

    return-object v6

    .line 78
    .end local v1    # "amethod":Lgnu/bytecode/Method;
    .end local v2    # "mname":Ljava/lang/Object;
    .end local v3    # "mdecl":Lgnu/expr/Declaration;
    .end local v4    # "lexp":Lgnu/expr/LambdaExp;
    .end local v5    # "oexp":Lgnu/expr/ObjectExp;
    :cond_0
    const/4 v1, 0x1

    .local v1, "incompatible":Z
    goto :goto_1

    .line 82
    .end local v1    # "incompatible":Z
    :cond_1
    sget-object v1, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v0, v1, :cond_2

    .line 83
    sget-object v0, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    .line 84
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, v0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v1

    const/4 v4, -0x3

    if-ne v1, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 85
    .restart local v1    # "incompatible":Z
    if-eqz v1, :cond_4

    instance-of v2, p2, Lgnu/expr/TypeValue;

    if-eqz v2, :cond_4

    .line 87
    move-object v2, p2

    check-cast v2, Lgnu/expr/TypeValue;

    invoke-interface {v2, p1}, Lgnu/expr/TypeValue;->convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v2

    .line 88
    .local v2, "converted":Lgnu/expr/Expression;
    if-eqz v2, :cond_4

    .line 89
    return-object v2

    .line 92
    .end local v2    # "converted":Lgnu/expr/Expression;
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 94
    iget-object v2, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    .line 95
    .local v2, "language":Lgnu/expr/Language;
    iget-object v3, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v0}, Lgnu/expr/Language;->formatType(Lgnu/bytecode/Type;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is incompatible with required type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, p2}, Lgnu/expr/Language;->formatType(Lgnu/bytecode/Type;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x77

    invoke-virtual {v3, v5, v4, p1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 100
    .end local v2    # "language":Lgnu/expr/Language;
    :cond_5
    return-object p1
.end method

.method public fixIntValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;
    .locals 4
    .param p1, "exp"    # Lgnu/expr/Expression;

    .line 162
    invoke-static {p1}, Lgnu/expr/InlineCalls;->checkIntValue(Lgnu/expr/Expression;)Ljava/lang/Integer;

    move-result-object v0

    .line 163
    .local v0, "ival":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 164
    new-instance v1, Lgnu/expr/QuoteExp;

    iget-object v2, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    return-object v1

    .line 165
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public fixLongValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;
    .locals 4
    .param p1, "exp"    # Lgnu/expr/Expression;

    .line 170
    invoke-static {p1}, Lgnu/expr/InlineCalls;->checkLongValue(Lgnu/expr/Expression;)Ljava/lang/Long;

    move-result-object v0

    .line 171
    .local v0, "ival":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 172
    new-instance v1, Lgnu/expr/QuoteExp;

    iget-object v2, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    return-object v1

    .line 173
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public maybeInline(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 12
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 425
    const/16 v0, 0x65

    const/4 v1, 0x0

    :try_start_0
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 427
    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    invoke-virtual {p3, v3, v1}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    .local v2, "inliner":Ljava/lang/Object;
    :try_start_2
    instance-of v3, v2, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 430
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 431
    .local v3, "inliners":Ljava/lang/String;
    const/16 v6, 0x3a

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 435
    .local v6, "colon":I
    const/4 v7, 0x0

    .line 437
    .local v7, "method":Ljava/lang/reflect/Method;
    if-lez v6, :cond_0

    .line 439
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 440
    .local v8, "cname":Ljava/lang/String;
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 441
    .local v9, "mname":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-static {v8, v5, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v10

    .line 445
    .local v10, "clas":Ljava/lang/Class;
    invoke-static {}, Lgnu/expr/InlineCalls;->getInlinerMethodArgTypes()[Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v7, v11

    .line 448
    .end local v8    # "cname":Ljava/lang/String;
    .end local v9    # "mname":Ljava/lang/String;
    .end local v10    # "clas":Ljava/lang/Class;
    :cond_0
    if-nez v7, :cond_1

    .line 450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inliner property string for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not of the form CLASS:METHOD"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lgnu/expr/InlineCalls;->error(CLjava/lang/String;)V

    .line 451
    monitor-exit p3

    return-object v1

    .line 453
    :cond_1
    move-object v2, v7

    .line 455
    .end local v3    # "inliners":Ljava/lang/String;
    .end local v6    # "colon":I
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :cond_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 456
    if-eqz v2, :cond_4

    .line 462
    const/4 v3, 0x4

    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p0, v3, v5

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    .line 463
    .local v3, "vargs":[Ljava/lang/Object;
    instance-of v4, v2, Lgnu/mapping/Procedure;

    if-eqz v4, :cond_3

    .line 464
    move-object v4, v2

    check-cast v4, Lgnu/mapping/Procedure;

    invoke-virtual {v4, v3}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Expression;

    return-object v4

    .line 466
    :cond_3
    instance-of v4, v2, Ljava/lang/reflect/Method;

    if-eqz v4, :cond_4

    .line 467
    move-object v4, v2

    check-cast v4, Ljava/lang/reflect/Method;

    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Expression;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v4

    .line 477
    .end local v2    # "inliner":Ljava/lang/Object;
    .end local v3    # "vargs":[Ljava/lang/Object;
    :cond_4
    goto :goto_1

    .line 455
    :catchall_0
    move-exception v3

    .restart local v2    # "inliner":Ljava/lang/Object;
    :goto_0
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local p1    # "exp":Lgnu/expr/ApplyExp;
    .end local p2    # "required":Lgnu/bytecode/Type;
    .end local p3    # "proc":Lgnu/mapping/Procedure;
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .restart local p1    # "exp":Lgnu/expr/ApplyExp;
    .restart local p2    # "required":Lgnu/bytecode/Type;
    .restart local p3    # "proc":Lgnu/mapping/Procedure;
    :catchall_1
    move-exception v3

    goto :goto_0

    .line 472
    .end local v2    # "inliner":Ljava/lang/Object;
    :catchall_2
    move-exception v2

    .line 474
    .local v2, "ex":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_5

    .line 475
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 476
    :cond_5
    iget-object v3, p0, Lgnu/expr/InlineCalls;->messages:Lgnu/text/SourceMessages;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught exception in inliner for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v2}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 478
    .end local v2    # "ex":Ljava/lang/Throwable;
    :goto_1
    return-object v1
.end method

.method public visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 2
    .param p1, "exp"    # Lgnu/expr/Expression;
    .param p2, "required"    # Lgnu/bytecode/Type;

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lgnu/expr/Expression;->getFlag(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {p1, v0}, Lgnu/expr/Expression;->setFlag(I)V

    .line 46
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object p1, v1

    check-cast p1, Lgnu/expr/Expression;

    .line 47
    invoke-virtual {p1, v0}, Lgnu/expr/Expression;->setFlag(I)V

    .line 49
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->checkType(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lgnu/expr/Expression;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 28
    move-object v0, p2

    check-cast v0, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 5
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "required"    # Lgnu/bytecode/Type;

    .line 105
    iget-object v0, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 110
    .local v0, "func":Lgnu/expr/Expression;
    instance-of v1, v0, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_0

    .line 112
    move-object v1, v0

    check-cast v1, Lgnu/expr/LambdaExp;

    .line 113
    .local v1, "lexp":Lgnu/expr/LambdaExp;
    move-object v2, v0

    check-cast v2, Lgnu/expr/LambdaExp;

    iget-object v3, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lgnu/expr/InlineCalls;->inlineCall(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;Z)Lgnu/expr/Expression;

    move-result-object v2

    .line 114
    .local v2, "inlined":Lgnu/expr/Expression;
    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {p0, v2, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3

    .line 117
    .end local v1    # "lexp":Lgnu/expr/LambdaExp;
    .end local v2    # "inlined":Lgnu/expr/Expression;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    .line 118
    iput-object v0, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 119
    invoke-virtual {v0, p1, p0, p2, v1}, Lgnu/expr/Expression;->validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lgnu/expr/ApplyExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 28
    move-object v0, p2

    check-cast v0, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/InlineCalls;->visitApplyExp(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 2
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "required"    # Lgnu/bytecode/Type;

    .line 125
    iget-object v0, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, p2, v1}, Lgnu/expr/Expression;->validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitBeginExp(Lgnu/expr/BeginExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 5
    .param p1, "exp"    # Lgnu/expr/BeginExp;
    .param p2, "required"    # Lgnu/bytecode/Type;

    .line 269
    iget v0, p1, Lgnu/expr/BeginExp;->length:I

    add-int/lit8 v0, v0, -0x1

    .line 270
    .local v0, "last":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 272
    iget-object v2, p1, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    iget-object v3, p1, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v3, v3, v1

    if-ge v1, v0, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    move-object v4, p2

    :goto_1
    invoke-virtual {p0, v3, v4}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v3

    aput-object v3, v2, v1

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v1    # "i":I
    :cond_1
    return-object p1
.end method

.method protected bridge synthetic visitBeginExp(Lgnu/expr/BeginExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lgnu/expr/BeginExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 28
    move-object v0, p2

    check-cast v0, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/InlineCalls;->visitBeginExp(Lgnu/expr/BeginExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitIfExp(Lgnu/expr/IfExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 5
    .param p1, "exp"    # Lgnu/expr/IfExp;
    .param p2, "required"    # Lgnu/bytecode/Type;

    .line 237
    iget-object v0, p1, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Expression;

    .line 238
    .local v0, "test":Lgnu/expr/Expression;
    instance-of v1, v0, Lgnu/expr/ReferenceExp;

    if-eqz v1, :cond_0

    .line 240
    move-object v1, v0

    check-cast v1, Lgnu/expr/ReferenceExp;

    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v1

    .line 241
    .local v1, "decl":Lgnu/expr/Declaration;
    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v2

    .line 244
    .local v2, "value":Lgnu/expr/Expression;
    instance-of v3, v2, Lgnu/expr/QuoteExp;

    if-eqz v3, :cond_0

    sget-object v3, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v2, v3, :cond_0

    .line 245
    move-object v0, v2

    .line 248
    .end local v1    # "decl":Lgnu/expr/Declaration;
    .end local v2    # "value":Lgnu/expr/Expression;
    :cond_0
    iput-object v0, p1, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    .line 249
    iget-object v1, p0, Lgnu/expr/InlineCalls;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 250
    iget-object v1, p1, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {p0, v1, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p1, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    .line 251
    :cond_1
    iget-object v1, p0, Lgnu/expr/InlineCalls;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget-object v1, p1, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p1, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    invoke-virtual {p0, v1, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p1, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    .line 253
    :cond_2
    instance-of v1, v0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_3

    .line 255
    iget-object v1, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v1

    .line 256
    .local v1, "truth":Z
    invoke-virtual {p1, v1}, Lgnu/expr/IfExp;->select(Z)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 258
    .end local v1    # "truth":Z
    :cond_3
    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 260
    iget-object v1, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {v1, v2}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v1

    .line 261
    .restart local v1    # "truth":Z
    iget-object v2, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "void-valued condition is always "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x77

    invoke-virtual {v2, v4, v3}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 262
    new-instance v2, Lgnu/expr/BeginExp;

    invoke-virtual {p1, v1}, Lgnu/expr/IfExp;->select(Z)Lgnu/expr/Expression;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    return-object v2

    .line 264
    .end local v1    # "truth":Z
    :cond_4
    return-object p1
.end method

.method protected bridge synthetic visitIfExp(Lgnu/expr/IfExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lgnu/expr/IfExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 28
    move-object v0, p2

    check-cast v0, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/InlineCalls;->visitIfExp(Lgnu/expr/IfExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitLambdaExp(Lgnu/expr/LambdaExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 2
    .param p1, "exp"    # Lgnu/expr/LambdaExp;
    .param p2, "required"    # Lgnu/bytecode/Type;

    .line 343
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 344
    .local v0, "firstDecl":Lgnu/expr/Declaration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-nez v1, :cond_0

    .line 347
    iget-object v1, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 349
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/InlineCalls;->visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lgnu/expr/LambdaExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 28
    move-object v0, p2

    check-cast v0, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/InlineCalls;->visitLambdaExp(Lgnu/expr/LambdaExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitLetExp(Lgnu/expr/LetExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 9
    .param p1, "exp"    # Lgnu/expr/LetExp;
    .param p2, "required"    # Lgnu/bytecode/Type;

    .line 298
    invoke-virtual {p1}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 299
    .local v0, "decl":Lgnu/expr/Declaration;
    iget-object v1, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v1, v1

    .line 300
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    .line 302
    iget-object v4, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aget-object v4, v4, v2

    .line 303
    .local v4, "init0":Lgnu/expr/Expression;
    const-wide/16 v5, 0x2000

    invoke-virtual {v0, v5, v6}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    .line 304
    .local v5, "typeSpecified":Z
    if-eqz v5, :cond_0

    sget-object v6, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v4, v6, :cond_0

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 305
    .local v3, "dtype":Lgnu/bytecode/Type;
    :cond_0
    invoke-virtual {p0, v4, v3}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v6

    .line 306
    .local v6, "init":Lgnu/expr/Expression;
    iget-object v7, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aput-object v6, v7, v2

    .line 307
    iget-object v7, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 308
    .local v7, "dvalue":Lgnu/expr/Expression;
    if-ne v7, v4, :cond_1

    .line 310
    move-object v7, v6

    iput-object v6, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 311
    if-nez v5, :cond_1

    .line 312
    invoke-virtual {v7}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-virtual {v0, v8}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 300
    .end local v3    # "dtype":Lgnu/bytecode/Type;
    .end local v4    # "init0":Lgnu/expr/Expression;
    .end local v5    # "typeSpecified":Z
    .end local v6    # "init":Lgnu/expr/Expression;
    .end local v7    # "dvalue":Lgnu/expr/Expression;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 316
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lgnu/expr/InlineCalls;->exitValue:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 317
    iget-object v2, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {p0, v2, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v2

    iput-object v2, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 318
    :cond_3
    iget-object v2, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    instance-of v2, v2, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_5

    .line 320
    iget-object v2, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    check-cast v2, Lgnu/expr/ReferenceExp;

    .line 321
    .local v2, "ref":Lgnu/expr/ReferenceExp;
    invoke-virtual {v2}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v4

    .line 322
    .local v4, "d":Lgnu/expr/Declaration;
    if-eqz v4, :cond_5

    iget-object v5, v4, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    if-ne v5, p1, :cond_5

    invoke-virtual {v2}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v5

    if-nez v5, :cond_5

    .line 324
    const/4 v5, 0x1

    if-ne v1, v5, :cond_5

    .line 326
    iget-object v5, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 327
    .local v5, "init":Lgnu/expr/Expression;
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getTypeExp()Lgnu/expr/Expression;

    move-result-object v6

    .line 330
    .local v6, "texp":Lgnu/expr/Expression;
    sget-object v7, Lgnu/expr/QuoteExp;->classObjectExp:Lgnu/expr/QuoteExp;

    if-eq v6, v7, :cond_4

    .line 331
    invoke-static {v5, v6}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v7

    invoke-virtual {p0, v7, v3}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v5

    .line 332
    :cond_4
    return-object v5

    .line 338
    .end local v2    # "ref":Lgnu/expr/ReferenceExp;
    .end local v4    # "d":Lgnu/expr/Declaration;
    .end local v5    # "init":Lgnu/expr/Expression;
    .end local v6    # "texp":Lgnu/expr/Expression;
    :cond_5
    return-object p1
.end method

.method protected bridge synthetic visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lgnu/expr/LetExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 28
    move-object v0, p2

    check-cast v0, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/InlineCalls;->visitLetExp(Lgnu/expr/LetExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitQuoteExp(Lgnu/expr/QuoteExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 5
    .param p1, "exp"    # Lgnu/expr/QuoteExp;
    .param p2, "required"    # Lgnu/bytecode/Type;

    .line 179
    invoke-virtual {p1}, Lgnu/expr/QuoteExp;->getRawType()Lgnu/bytecode/Type;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lgnu/expr/QuoteExp;->isSharedConstant()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "value":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 182
    iget-object v0, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 183
    .local v0, "language":Lgnu/expr/Language;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    .line 184
    .local v2, "vtype":Lgnu/bytecode/Type;
    sget-object v3, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v2, v3, :cond_0

    .line 185
    sget-object v2, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    .line 186
    :cond_0
    iput-object v2, p1, Lgnu/expr/QuoteExp;->type:Lgnu/bytecode/Type;

    .line 187
    instance-of v3, p2, Lgnu/bytecode/PrimType;

    if-eqz v3, :cond_3

    .line 189
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 190
    .local v3, "sig1":C
    const/16 v4, 0x49

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, p1}, Lgnu/expr/InlineCalls;->fixIntValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/16 v4, 0x4a

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, p1}, Lgnu/expr/InlineCalls;->fixLongValue(Lgnu/expr/Expression;)Lgnu/expr/QuoteExp;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 192
    .local v4, "ret":Lgnu/expr/QuoteExp;
    :goto_0
    if-eqz v4, :cond_3

    .line 193
    move-object p1, v4

    .line 196
    .end local v0    # "language":Lgnu/expr/Language;
    .end local v1    # "value":Ljava/lang/Object;
    .end local v2    # "vtype":Lgnu/bytecode/Type;
    .end local v3    # "sig1":C
    .end local v4    # "ret":Lgnu/expr/QuoteExp;
    :cond_3
    return-object p1
.end method

.method protected bridge synthetic visitQuoteExp(Lgnu/expr/QuoteExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lgnu/expr/QuoteExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 28
    move-object v0, p2

    check-cast v0, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/InlineCalls;->visitQuoteExp(Lgnu/expr/QuoteExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 7
    .param p1, "exp"    # Lgnu/expr/ReferenceExp;
    .param p2, "required"    # Lgnu/bytecode/Type;

    .line 201
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 202
    .local v0, "decl":Lgnu/expr/Declaration;
    if-eqz v0, :cond_3

    iget-object v1, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v1

    if-nez v1, :cond_3

    .line 204
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 205
    .local v1, "dval":Lgnu/expr/Expression;
    instance-of v2, v1, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_0

    sget-object v2, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v1, v2, :cond_0

    .line 206
    move-object v2, v1

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {p0, v2, p2}, Lgnu/expr/InlineCalls;->visitQuoteExp(Lgnu/expr/QuoteExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 207
    :cond_0
    instance-of v2, v1, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v2

    if-nez v2, :cond_2

    .line 209
    move-object v2, v1

    check-cast v2, Lgnu/expr/ReferenceExp;

    .line 210
    .local v2, "rval":Lgnu/expr/ReferenceExp;
    invoke-virtual {v2}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v3

    .line 211
    .local v3, "rdecl":Lgnu/expr/Declaration;
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 212
    .local v4, "dtype":Lgnu/bytecode/Type;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v4, :cond_1

    sget-object v5, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    if-ne v4, v5, :cond_2

    :cond_1
    invoke-virtual {v2}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result v5

    if-nez v5, :cond_2

    .line 217
    invoke-virtual {p0, v2, p2}, Lgnu/expr/InlineCalls;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v5

    return-object v5

    .line 219
    .end local v2    # "rval":Lgnu/expr/ReferenceExp;
    .end local v3    # "rdecl":Lgnu/expr/Declaration;
    .end local v4    # "dtype":Lgnu/bytecode/Type;
    :cond_2
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v2

    if-nez v2, :cond_3

    iget-wide v2, v0, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v4, 0x100080

    and-long/2addr v2, v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    .line 228
    iget-object v2, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unimplemented: reference to method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as variable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v2, v4, v3}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 229
    iget-object v2, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    const-string v3, "here is the definition of "

    const-string v5, ""

    invoke-virtual {v2, v4, v0, v3, v5}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v1    # "dval":Lgnu/expr/Expression;
    :cond_3
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Expression;

    return-object v1
.end method

.method protected bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lgnu/expr/ReferenceExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 28
    move-object v0, p2

    check-cast v0, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/InlineCalls;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 3
    .param p1, "exp"    # Lgnu/expr/ScopeExp;
    .param p2, "required"    # Lgnu/bytecode/Type;

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lgnu/expr/ScopeExp;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 280
    invoke-virtual {p0, p1}, Lgnu/expr/InlineCalls;->visitDeclarationTypes(Lgnu/expr/ScopeExp;)V

    .line 281
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .local v0, "decl":Lgnu/expr/Declaration;
    :goto_0
    if-eqz v0, :cond_2

    .line 284
    iget-object v1, v0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-nez v1, :cond_1

    .line 286
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 287
    .local v1, "val":Lgnu/expr/Expression;
    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    iput-object v2, v0, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    .line 288
    if-eqz v1, :cond_0

    sget-object v2, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    goto :goto_1

    :cond_0
    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    :goto_1
    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 282
    .end local v1    # "val":Lgnu/expr/Expression;
    :cond_1
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 293
    .end local v0    # "decl":Lgnu/expr/Declaration;
    :cond_2
    return-object p1
.end method

.method protected bridge synthetic visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lgnu/expr/ScopeExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 28
    move-object v0, p2

    check-cast v0, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/InlineCalls;->visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitSetExp(Lgnu/expr/SetExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 6
    .param p1, "exp"    # Lgnu/expr/SetExp;
    .param p2, "required"    # Lgnu/bytecode/Type;

    .line 368
    invoke-virtual {p1}, Lgnu/expr/SetExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v0

    .line 369
    .local v0, "decl":Lgnu/expr/Declaration;
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-virtual {p1}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-wide v1, v0, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v3, 0x100080

    and-long/2addr v1, v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 373
    iget-object v1, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t assign to method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v1, v3, v2, p1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 374
    :cond_0
    if-eqz v0, :cond_1

    const-wide/16 v1, 0x2000

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    iget-object v2, p0, Lgnu/expr/InlineCalls;->comp:Lgnu/expr/Compilation;

    invoke-static {v1, v2}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v1

    if-gez v1, :cond_1

    .line 377
    sget-object v1, Lgnu/bytecode/Type;->errorType:Lgnu/bytecode/ObjectType;

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 392
    :cond_1
    return-object p1
.end method

.method protected bridge synthetic visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lgnu/expr/SetExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 28
    move-object v0, p2

    check-cast v0, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/InlineCalls;->visitSetExp(Lgnu/expr/SetExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitSetExpValue(Lgnu/expr/Expression;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "new_value"    # Lgnu/expr/Expression;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "decl"    # Lgnu/expr/Declaration;

    .line 363
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p3, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, p1, v0}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic visitSetExpValue(Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "x0"    # Lgnu/expr/Expression;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lgnu/expr/Declaration;

    .line 28
    move-object v0, p2

    check-cast v0, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, v0, p3}, Lgnu/expr/InlineCalls;->visitSetExpValue(Lgnu/expr/Expression;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected visitTryExp(Lgnu/expr/TryExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "exp"    # Lgnu/expr/TryExp;
    .param p2, "required"    # Lgnu/bytecode/Type;

    .line 354
    invoke-virtual {p1}, Lgnu/expr/TryExp;->getCatchClauses()Lgnu/expr/CatchClause;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lgnu/expr/TryExp;->getFinallyClause()Lgnu/expr/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p1, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {p0, v0, p2}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 357
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Expression;

    return-object v0
.end method

.method protected bridge synthetic visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lgnu/expr/TryExp;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 28
    move-object v0, p2

    check-cast v0, Lgnu/bytecode/Type;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/InlineCalls;->visitTryExp(Lgnu/expr/TryExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method
