.class public Lgnu/xquery/util/ValuesFilter;
.super Lgnu/mapping/MethodProc;
.source "ValuesFilter.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final exprFilter:Lgnu/xquery/util/ValuesFilter;

.field public static final forwardFilter:Lgnu/xquery/util/ValuesFilter;

.field public static final matchesMethod:Lgnu/bytecode/Method;

.field public static final reverseFilter:Lgnu/xquery/util/ValuesFilter;

.field public static final typeValuesFilter:Lgnu/bytecode/ClassType;


# instance fields
.field kind:C

.field last_or_position_needed:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 139
    new-instance v0, Lgnu/xquery/util/ValuesFilter;

    const/16 v1, 0x46

    invoke-direct {v0, v1}, Lgnu/xquery/util/ValuesFilter;-><init>(C)V

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->forwardFilter:Lgnu/xquery/util/ValuesFilter;

    .line 140
    new-instance v0, Lgnu/xquery/util/ValuesFilter;

    const/16 v1, 0x52

    invoke-direct {v0, v1}, Lgnu/xquery/util/ValuesFilter;-><init>(C)V

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->reverseFilter:Lgnu/xquery/util/ValuesFilter;

    .line 141
    new-instance v0, Lgnu/xquery/util/ValuesFilter;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lgnu/xquery/util/ValuesFilter;-><init>(C)V

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->exprFilter:Lgnu/xquery/util/ValuesFilter;

    .line 142
    const-string v0, "gnu.xquery.util.ValuesFilter"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->typeValuesFilter:Lgnu/bytecode/ClassType;

    .line 144
    sget-object v0, Lgnu/xquery/util/ValuesFilter;->typeValuesFilter:Lgnu/bytecode/ClassType;

    const-string v1, "matches"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/ValuesFilter;->matchesMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(C)V
    .locals 2
    .param p1, "kind"    # C

    .line 22
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lgnu/xquery/util/ValuesFilter;->last_or_position_needed:I

    .line 23
    iput-char p1, p0, Lgnu/xquery/util/ValuesFilter;->kind:C

    .line 24
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.xquery.util.CompileMisc:validateApplyValuesFilter"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/util/ValuesFilter;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public static get(C)Lgnu/xquery/util/ValuesFilter;
    .locals 1
    .param p0, "kind"    # C

    .line 30
    const/16 v0, 0x46

    if-ne p0, v0, :cond_0

    sget-object v0, Lgnu/xquery/util/ValuesFilter;->forwardFilter:Lgnu/xquery/util/ValuesFilter;

    return-object v0

    .line 31
    :cond_0
    const/16 v0, 0x52

    if-ne p0, v0, :cond_1

    sget-object v0, Lgnu/xquery/util/ValuesFilter;->reverseFilter:Lgnu/xquery/util/ValuesFilter;

    return-object v0

    .line 32
    :cond_1
    sget-object v0, Lgnu/xquery/util/ValuesFilter;->exprFilter:Lgnu/xquery/util/ValuesFilter;

    return-object v0
.end method

.method public static matches(Ljava/lang/Object;J)Z
    .locals 7
    .param p0, "result"    # Ljava/lang/Object;
    .param p1, "count"    # J

    .line 44
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    .line 45
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->canonicalize()Ljava/lang/Object;

    move-result-object p0

    .line 46
    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_9

    .line 48
    instance-of v0, p0, Lgnu/math/IntNum;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 49
    move-object v0, p0

    check-cast v0, Lgnu/math/IntNum;

    invoke-static {v0, p1, p2}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 50
    :cond_2
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_7

    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_3

    goto :goto_3

    .line 53
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    goto :goto_1

    .line 57
    :cond_4
    const/16 v0, 0x8

    invoke-static {p1, p2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lgnu/kawa/functions/NumberCompare;->applyWithPromotion(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 55
    :cond_5
    :goto_1
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 52
    :cond_7
    :goto_3
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    long-to-double v5, p1

    cmpl-double v0, v3, v5

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    return v1

    .line 61
    :cond_9
    invoke-static {p0}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 17
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 66
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 67
    .local v1, "arg":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/Procedure;

    .line 68
    .local v2, "proc":Lgnu/mapping/Procedure;
    move-object/from16 v3, p1

    iget-object v4, v3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 70
    .local v4, "out":Lgnu/lists/Consumer;
    iget-char v5, v0, Lgnu/xquery/util/ValuesFilter;->kind:C

    const/16 v6, 0x50

    if-eq v5, v6, :cond_0

    .line 72
    new-instance v5, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v5}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 73
    .local v5, "nodes":Lgnu/kawa/xml/SortedNodes;
    invoke-static {v1, v5}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 74
    nop

    .line 75
    .local v5, "values":Lgnu/mapping/Values;
    goto :goto_0

    .line 76
    .end local v5    # "values":Lgnu/mapping/Values;
    :cond_0
    instance-of v5, v1, Lgnu/mapping/Values;

    if-eqz v5, :cond_5

    .line 77
    move-object v5, v1

    check-cast v5, Lgnu/mapping/Values;

    .line 85
    .restart local v5    # "values":Lgnu/mapping/Values;
    :goto_0
    invoke-virtual {v5}, Lgnu/mapping/Values;->size()I

    move-result v6

    .line 86
    .local v6, "count":I
    const/4 v7, 0x0

    .line 87
    .local v7, "it":I
    invoke-static {v6}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v8

    .line 90
    .local v8, "countObj":Lgnu/math/IntNum;
    invoke-virtual {v2}, Lgnu/mapping/Procedure;->maxArgs()I

    move-result v9

    .line 91
    .local v9, "pmax":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_4

    .line 93
    invoke-virtual {v5, v7}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v7

    .line 94
    invoke-virtual {v5, v7}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v11

    .line 95
    .local v11, "dot":Ljava/lang/Object;
    iget-char v12, v0, Lgnu/xquery/util/ValuesFilter;->kind:C

    const/16 v13, 0x52

    if-ne v12, v13, :cond_1

    sub-int v12, v6, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v12, v10, 0x1

    .line 96
    .local v12, "pos":I
    :goto_2
    invoke-static {v12}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v13

    .line 97
    .local v13, "posObj":Lgnu/math/IntNum;
    const/4 v14, 0x2

    if-ne v9, v14, :cond_2

    invoke-virtual {v2, v11, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v11, v13, v8}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 99
    .local v14, "pred_res":Ljava/lang/Object;
    :goto_3
    move-object v15, v5

    move/from16 v16, v6

    .end local v5    # "values":Lgnu/mapping/Values;
    .end local v6    # "count":I
    .local v15, "values":Lgnu/mapping/Values;
    .local v16, "count":I
    int-to-long v5, v12

    invoke-static {v14, v5, v6}, Lgnu/xquery/util/ValuesFilter;->matches(Ljava/lang/Object;J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 100
    invoke-interface {v4, v11}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 91
    .end local v11    # "dot":Ljava/lang/Object;
    .end local v12    # "pos":I
    .end local v13    # "posObj":Lgnu/math/IntNum;
    .end local v14    # "pred_res":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    move-object v5, v15

    move/from16 v6, v16

    goto :goto_1

    .line 102
    .end local v10    # "i":I
    .end local v15    # "values":Lgnu/mapping/Values;
    .end local v16    # "count":I
    .restart local v5    # "values":Lgnu/mapping/Values;
    .restart local v6    # "count":I
    :cond_4
    return-void

    .line 80
    .end local v5    # "values":Lgnu/mapping/Values;
    .end local v6    # "count":I
    .end local v7    # "it":I
    .end local v8    # "countObj":Lgnu/math/IntNum;
    .end local v9    # "pmax":I
    :cond_5
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v5

    .line 81
    .local v5, "one":Lgnu/math/IntNum;
    invoke-virtual {v2, v1, v5, v5}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-wide/16 v7, 0x1

    invoke-static {v6, v7, v8}, Lgnu/xquery/util/ValuesFilter;->matches(Ljava/lang/Object;J)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 82
    invoke-interface {v4, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 83
    :cond_6
    return-void
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 107
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 108
    .local v0, "args":[Lgnu/expr/Expression;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 109
    .local v1, "exp1":Lgnu/expr/Expression;
    const/4 v2, 0x1

    aget-object v8, v0, v2

    .line 110
    .local v8, "exp2":Lgnu/expr/Expression;
    instance-of v2, p3, Lgnu/expr/IgnoreTarget;

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v1, p2, p3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 113
    invoke-virtual {v8, p2, p3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 114
    return-void

    .line 116
    :cond_0
    instance-of v2, v8, Lgnu/expr/LambdaExp;

    if-nez v2, :cond_1

    .line 118
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 119
    return-void

    .line 122
    :cond_1
    instance-of v2, p3, Lgnu/expr/ConsumerTarget;

    if-nez v2, :cond_2

    .line 124
    invoke-static {p1, p2, p3}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 125
    return-void

    .line 128
    :cond_2
    move-object v9, v8

    check-cast v9, Lgnu/expr/LambdaExp;

    .line 129
    .local v9, "lexp2":Lgnu/expr/LambdaExp;
    const/4 v4, 0x1

    sget-object v5, Lgnu/xquery/util/ValuesFilter;->matchesMethod:Lgnu/bytecode/Method;

    move-object v2, v9

    move-object v3, v1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lgnu/kawa/functions/ValuesMap;->compileInlined(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;ILgnu/bytecode/Method;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 130
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 136
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public numArgs()I
    .locals 1

    .line 40
    const/16 v0, 0x2002

    return v0
.end method
