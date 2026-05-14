.class public Lgnu/xquery/util/RelativeStep;
.super Lgnu/mapping/MethodProc;
.source "RelativeStep.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final relativeStep:Lgnu/xquery/util/RelativeStep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lgnu/xquery/util/RelativeStep;

    invoke-direct {v0}, Lgnu/xquery/util/RelativeStep;-><init>()V

    sput-object v0, Lgnu/xquery/util/RelativeStep;->relativeStep:Lgnu/xquery/util/RelativeStep;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 25
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.xquery.util.CompileMisc:validateApplyRelativeStep"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/util/RelativeStep;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public static extractStep(Lgnu/expr/Expression;)Lgnu/kawa/xml/TreeScanner;
    .locals 5
    .param p0, "exp"    # Lgnu/expr/Expression;

    .line 184
    nop

    :goto_0
    instance-of v0, p0, Lgnu/expr/ApplyExp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 185
    return-object v1

    .line 186
    :cond_0
    move-object v0, p0

    check-cast v0, Lgnu/expr/ApplyExp;

    .line 187
    .local v0, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v2

    .line 188
    .local v2, "func":Lgnu/expr/Expression;
    instance-of v3, v2, Lgnu/expr/QuoteExp;

    if-eqz v3, :cond_2

    .line 190
    move-object v3, v2

    check-cast v3, Lgnu/expr/QuoteExp;

    invoke-virtual {v3}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 191
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lgnu/kawa/xml/TreeScanner;

    if-eqz v4, :cond_1

    .line 192
    move-object v1, v3

    check-cast v1, Lgnu/kawa/xml/TreeScanner;

    return-object v1

    .line 194
    :cond_1
    instance-of v4, v3, Lgnu/xquery/util/ValuesFilter;

    if-eqz v4, :cond_2

    .line 196
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    const/4 v4, 0x0

    aget-object p0, v1, v4

    .line 197
    goto :goto_0

    .line 200
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    return-object v1
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 12
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    .line 34
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 35
    .local v1, "next":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lgnu/mapping/Procedure;

    .line 36
    .local v2, "proc":Lgnu/mapping/Procedure;
    iget-object v3, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 39
    .local v3, "out":Lgnu/lists/Consumer;
    instance-of v4, v0, Lgnu/kawa/xml/Nodes;

    if-eqz v4, :cond_0

    .line 40
    move-object v4, v0

    check-cast v4, Lgnu/kawa/xml/Nodes;

    .local v4, "values":Lgnu/kawa/xml/Nodes;
    goto :goto_0

    .line 43
    .end local v4    # "values":Lgnu/kawa/xml/Nodes;
    :cond_0
    new-instance v4, Lgnu/kawa/xml/Nodes;

    invoke-direct {v4}, Lgnu/kawa/xml/Nodes;-><init>()V

    .line 44
    .restart local v4    # "values":Lgnu/kawa/xml/Nodes;
    invoke-static {v0, v4}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 46
    :goto_0
    invoke-virtual {v4}, Lgnu/kawa/xml/Nodes;->size()I

    move-result v5

    .line 47
    .local v5, "count":I
    const/4 v6, 0x0

    .line 48
    .local v6, "it":I
    invoke-static {v5}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v7

    .line 49
    .local v7, "countObj":Lgnu/math/IntNum;
    new-instance v8, Lgnu/xquery/util/RelativeStepFilter;

    invoke-direct {v8, v3}, Lgnu/xquery/util/RelativeStepFilter;-><init>(Lgnu/lists/Consumer;)V

    .line 50
    .local v8, "filter":Lgnu/xquery/util/RelativeStepFilter;
    const/4 v9, 0x1

    .local v9, "pos":I
    :goto_1
    if-gt v9, v5, :cond_1

    .line 52
    invoke-virtual {v4, v6}, Lgnu/kawa/xml/Nodes;->nextPos(I)I

    move-result v6

    .line 53
    invoke-virtual {v4, v6}, Lgnu/kawa/xml/Nodes;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v10

    .line 54
    .local v10, "dot":Ljava/lang/Object;
    invoke-static {v9}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    invoke-virtual {v2, v10, v11, v7, p1}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 55
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v8}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 50
    .end local v10    # "dot":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 57
    .end local v9    # "pos":I
    :cond_1
    invoke-virtual {v8}, Lgnu/xquery/util/RelativeStepFilter;->finish()V

    .line 58
    return-void
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 25
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 62
    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v8

    .line 63
    .local v8, "args":[Lgnu/expr/Expression;
    const/4 v9, 0x0

    aget-object v10, v8, v9

    .line 64
    .local v10, "exp1":Lgnu/expr/Expression;
    const/4 v0, 0x1

    aget-object v11, v8, v0

    .line 65
    .local v11, "exp2":Lgnu/expr/Expression;
    instance-of v1, v7, Lgnu/expr/IgnoreTarget;

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v10, v6, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 68
    invoke-virtual {v11, v6, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 69
    return-void

    .line 72
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getTypeRaw()Lgnu/bytecode/Type;

    move-result-object v1

    .line 73
    .local v1, "rtype":Lgnu/bytecode/Type;
    if-nez v1, :cond_1

    .line 74
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v12, v1

    goto :goto_0

    .line 73
    :cond_1
    move-object v12, v1

    .line 75
    .end local v1    # "rtype":Lgnu/bytecode/Type;
    .local v12, "rtype":Lgnu/bytecode/Type;
    :goto_0
    invoke-static {v12}, Lgnu/kawa/reflect/OccurrenceType;->itemPrimeType(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v13

    .line 76
    .local v13, "rtypePrime":Lgnu/bytecode/Type;
    sget-object v1, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual {v1, v13}, Lgnu/kawa/xml/NodeType;->compare(Lgnu/bytecode/Type;)I

    move-result v14

    .line 79
    .local v14, "nodeCompare":I
    if-ltz v14, :cond_2

    .line 80
    const/16 v1, 0x4e

    .local v1, "expectedKind":C
    goto :goto_1

    .line 81
    .end local v1    # "expectedKind":C
    :cond_2
    const/4 v1, -0x3

    if-ne v14, v1, :cond_3

    .line 82
    const/16 v1, 0x41

    .restart local v1    # "expectedKind":C
    goto :goto_1

    .line 84
    .end local v1    # "expectedKind":C
    :cond_3
    const/16 v1, 0x20

    .line 85
    .restart local v1    # "expectedKind":C
    :goto_1
    invoke-static {v11}, Lgnu/xquery/util/RelativeStep;->extractStep(Lgnu/expr/Expression;)Lgnu/kawa/xml/TreeScanner;

    move-result-object v15

    .line 86
    .local v15, "step":Lgnu/kawa/xml/TreeScanner;
    const/16 v5, 0x4e

    if-eqz v15, :cond_6

    .line 88
    invoke-virtual {v10}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 89
    .local v2, "type1":Lgnu/bytecode/Type;
    instance-of v3, v15, Lgnu/kawa/xml/ChildAxis;

    if-nez v3, :cond_4

    instance-of v3, v15, Lgnu/kawa/xml/AttributeAxis;

    if-nez v3, :cond_4

    instance-of v3, v15, Lgnu/kawa/xml/SelfAxis;

    if-eqz v3, :cond_6

    .line 93
    :cond_4
    instance-of v3, v2, Lgnu/kawa/xml/NodeSetType;

    if-nez v3, :cond_5

    if-ne v1, v5, :cond_6

    invoke-virtual {v10}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-static {v3}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsZeroOrOne(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 96
    :cond_5
    const/16 v1, 0x53

    move v4, v1

    goto :goto_2

    .line 109
    .end local v2    # "type1":Lgnu/bytecode/Type;
    :cond_6
    move v4, v1

    .end local v1    # "expectedKind":C
    .local v4, "expectedKind":C
    :goto_2
    instance-of v1, v7, Lgnu/expr/ConsumerTarget;

    if-nez v1, :cond_7

    .line 111
    invoke-static/range {p1 .. p3}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 112
    return-void

    .line 115
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    .line 117
    .local v3, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v3}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v2

    .line 122
    .local v2, "scope":Lgnu/bytecode/Scope;
    const/16 v1, 0x41

    if-eq v4, v1, :cond_b

    const/16 v1, 0x53

    if-ne v4, v1, :cond_8

    move-object/from16 v17, v2

    const/16 v2, 0x4e

    goto :goto_4

    .line 133
    :cond_8
    const-string v1, "<init>"

    if-ne v4, v5, :cond_9

    .line 135
    const-string v0, "gnu.kawa.xml.SortedNodes"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 136
    .local v0, "mclass":Lgnu/bytecode/ClassType;
    invoke-virtual {v0, v1, v9}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .local v1, "initMethod":Lgnu/bytecode/Method;
    goto :goto_3

    .line 140
    .end local v0    # "mclass":Lgnu/bytecode/ClassType;
    .end local v1    # "initMethod":Lgnu/bytecode/Method;
    :cond_9
    const-string v16, "gnu.xquery.util.RelativeStepFilter"

    invoke-static/range {v16 .. v16}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v9

    .line 141
    .local v9, "mclass":Lgnu/bytecode/ClassType;
    invoke-virtual {v9, v1, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    move-object v0, v9

    .line 143
    .end local v9    # "mclass":Lgnu/bytecode/ClassType;
    .restart local v0    # "mclass":Lgnu/bytecode/ClassType;
    .restart local v1    # "initMethod":Lgnu/bytecode/Method;
    :goto_3
    const/4 v9, 0x0

    invoke-virtual {v2, v3, v0, v9}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v9

    .line 144
    .local v9, "mconsumer":Lgnu/bytecode/Variable;
    new-instance v5, Lgnu/expr/ConsumerTarget;

    invoke-direct {v5, v9}, Lgnu/expr/ConsumerTarget;-><init>(Lgnu/bytecode/Variable;)V

    .line 145
    .local v5, "mtarget":Lgnu/expr/Target;
    invoke-virtual {v3, v0}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 146
    invoke-virtual {v3, v0}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 147
    move-object/from16 v17, v7

    check-cast v17, Lgnu/expr/ConsumerTarget;

    move-object/from16 v18, v0

    .end local v0    # "mclass":Lgnu/bytecode/ClassType;
    .local v18, "mclass":Lgnu/bytecode/ClassType;
    invoke-virtual/range {v17 .. v17}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v0

    .line 148
    .local v0, "tconsumer":Lgnu/bytecode/Variable;
    move-object/from16 v17, v2

    const/16 v2, 0x4e

    .end local v2    # "scope":Lgnu/bytecode/Scope;
    .local v17, "scope":Lgnu/bytecode/Scope;
    if-eq v4, v2, :cond_a

    .line 149
    invoke-virtual {v3, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 150
    :cond_a
    invoke-virtual {v3, v1}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 151
    invoke-virtual {v3, v9}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    move-object/from16 v16, v5

    move-object v1, v9

    move-object/from16 v5, v18

    move-object v9, v0

    goto :goto_5

    .line 122
    .end local v0    # "tconsumer":Lgnu/bytecode/Variable;
    .end local v1    # "initMethod":Lgnu/bytecode/Method;
    .end local v5    # "mtarget":Lgnu/expr/Target;
    .end local v9    # "mconsumer":Lgnu/bytecode/Variable;
    .end local v17    # "scope":Lgnu/bytecode/Scope;
    .end local v18    # "mclass":Lgnu/bytecode/ClassType;
    .restart local v2    # "scope":Lgnu/bytecode/Scope;
    :cond_b
    move-object/from16 v17, v2

    const/16 v2, 0x4e

    .line 124
    .end local v2    # "scope":Lgnu/bytecode/Scope;
    .restart local v17    # "scope":Lgnu/bytecode/Scope;
    :goto_4
    move-object/from16 v5, p3

    .line 125
    .restart local v5    # "mtarget":Lgnu/expr/Target;
    const/4 v0, 0x0

    .line 126
    .local v0, "mclass":Lgnu/bytecode/ClassType;
    const/4 v9, 0x0

    .line 127
    .restart local v9    # "mconsumer":Lgnu/bytecode/Variable;
    const/4 v1, 0x0

    move-object/from16 v16, v5

    move-object v5, v0

    move-object/from16 v24, v9

    move-object v9, v1

    move-object/from16 v1, v24

    .line 154
    .end local v0    # "mclass":Lgnu/bytecode/ClassType;
    .local v1, "mconsumer":Lgnu/bytecode/Variable;
    .local v5, "mclass":Lgnu/bytecode/ClassType;
    .local v9, "tconsumer":Lgnu/bytecode/Variable;
    .local v16, "mtarget":Lgnu/expr/Target;
    :goto_5
    move-object v0, v11

    check-cast v0, Lgnu/expr/LambdaExp;

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v20, v1

    .end local v1    # "mconsumer":Lgnu/bytecode/Variable;
    .local v20, "mconsumer":Lgnu/bytecode/Variable;
    move-object v1, v10

    const/16 v21, 0x4e

    move/from16 v2, v18

    move-object/from16 v22, v3

    .end local v3    # "code":Lgnu/bytecode/CodeAttr;
    .local v22, "code":Lgnu/bytecode/CodeAttr;
    move-object/from16 v3, v19

    move/from16 v23, v4

    .end local v4    # "expectedKind":C
    .local v23, "expectedKind":C
    move-object/from16 v4, p2

    move-object v6, v5

    const/16 v7, 0x4e

    .end local v5    # "mclass":Lgnu/bytecode/ClassType;
    .local v6, "mclass":Lgnu/bytecode/ClassType;
    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lgnu/kawa/functions/ValuesMap;->compileInlined(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;ILgnu/bytecode/Method;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 157
    move/from16 v1, v23

    .end local v23    # "expectedKind":C
    .local v1, "expectedKind":C
    if-ne v1, v7, :cond_c

    .line 159
    move-object/from16 v2, v20

    move-object/from16 v0, v22

    .end local v20    # "mconsumer":Lgnu/bytecode/Variable;
    .end local v22    # "code":Lgnu/bytecode/CodeAttr;
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    .local v2, "mconsumer":Lgnu/bytecode/Variable;
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 160
    invoke-virtual {v0, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 161
    sget-object v3, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v4, "writeValues"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_6

    .line 164
    .end local v0    # "code":Lgnu/bytecode/CodeAttr;
    .end local v2    # "mconsumer":Lgnu/bytecode/Variable;
    .restart local v20    # "mconsumer":Lgnu/bytecode/Variable;
    .restart local v22    # "code":Lgnu/bytecode/CodeAttr;
    :cond_c
    move-object/from16 v2, v20

    move-object/from16 v0, v22

    .end local v20    # "mconsumer":Lgnu/bytecode/Variable;
    .end local v22    # "code":Lgnu/bytecode/CodeAttr;
    .restart local v0    # "code":Lgnu/bytecode/CodeAttr;
    .restart local v2    # "mconsumer":Lgnu/bytecode/Variable;
    const/16 v3, 0x20

    if-ne v1, v3, :cond_d

    .line 166
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 167
    const-string v3, "finish"

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 170
    :cond_d
    :goto_6
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 171
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 177
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public numArgs()I
    .locals 1

    .line 29
    const/16 v0, 0x2002

    return v0
.end method
