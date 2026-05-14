.class public Lgnu/kawa/functions/ValuesMap;
.super Lgnu/mapping/MethodProc;
.source "ValuesMap.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final valuesMap:Lgnu/kawa/functions/ValuesMap;

.field public static final valuesMapWithPos:Lgnu/kawa/functions/ValuesMap;


# instance fields
.field private final startCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lgnu/kawa/functions/ValuesMap;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lgnu/kawa/functions/ValuesMap;-><init>(I)V

    sput-object v0, Lgnu/kawa/functions/ValuesMap;->valuesMap:Lgnu/kawa/functions/ValuesMap;

    .line 20
    new-instance v0, Lgnu/kawa/functions/ValuesMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgnu/kawa/functions/ValuesMap;-><init>(I)V

    sput-object v0, Lgnu/kawa/functions/ValuesMap;->valuesMapWithPos:Lgnu/kawa/functions/ValuesMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "startCounter"    # I

    .line 23
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 24
    iput p1, p0, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    .line 25
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileMisc:validateApplyValuesMap"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/ValuesMap;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method static canInline(Lgnu/expr/ApplyExp;Lgnu/kawa/functions/ValuesMap;)Lgnu/expr/LambdaExp;
    .locals 6
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "proc"    # Lgnu/kawa/functions/ValuesMap;

    .line 69
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 72
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    move-object v3, v1

    .local v3, "arg0":Lgnu/expr/Expression;
    instance-of v1, v1, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_1

    .line 74
    move-object v1, v3

    check-cast v1, Lgnu/expr/LambdaExp;

    .line 75
    .local v1, "lexp":Lgnu/expr/LambdaExp;
    iget v4, v1, Lgnu/expr/LambdaExp;->min_args:I

    iget v5, v1, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v4, v5, :cond_1

    iget v4, v1, Lgnu/expr/LambdaExp;->min_args:I

    iget v5, p1, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    if-ltz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-ne v4, v2, :cond_1

    .line 77
    return-object v1

    .line 79
    .end local v1    # "lexp":Lgnu/expr/LambdaExp;
    .end local v3    # "arg0":Lgnu/expr/Expression;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static compileInlined(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;ILgnu/bytecode/Method;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 20
    .param p0, "lambda"    # Lgnu/expr/LambdaExp;
    .param p1, "vals"    # Lgnu/expr/Expression;
    .param p2, "startCounter"    # I
    .param p3, "matchesMethod"    # Lgnu/bytecode/Method;
    .param p4, "comp"    # Lgnu/expr/Compilation;
    .param p5, "target"    # Lgnu/expr/Target;

    .line 105
    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    .line 106
    .local v3, "param":Lgnu/expr/Declaration;
    invoke-virtual/range {p4 .. p4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    .line 107
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v5

    .line 110
    .local v5, "scope":Lgnu/bytecode/Scope;
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    .line 111
    .local v6, "paramType":Lgnu/bytecode/Type;
    if-ltz v0, :cond_0

    .line 113
    sget-object v7, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    const-string v8, "position"

    invoke-virtual {v5, v4, v7, v8}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v7

    .line 114
    .local v7, "counter":Lgnu/bytecode/Variable;
    invoke-virtual {v4, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 115
    invoke-virtual {v4, v7}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 116
    new-instance v8, Lgnu/expr/Declaration;

    invoke-direct {v8, v7}, Lgnu/expr/Declaration;-><init>(Lgnu/bytecode/Variable;)V

    .local v8, "counterDecl":Lgnu/expr/Declaration;
    goto :goto_0

    .line 120
    .end local v7    # "counter":Lgnu/bytecode/Variable;
    .end local v8    # "counterDecl":Lgnu/expr/Declaration;
    :cond_0
    const/4 v7, 0x0

    .line 121
    .restart local v7    # "counter":Lgnu/bytecode/Variable;
    const/4 v8, 0x0

    .line 125
    .restart local v8    # "counterDecl":Lgnu/expr/Declaration;
    :goto_0
    invoke-virtual {v3}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v1, :cond_1

    .line 126
    invoke-virtual {v3, v4}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    goto :goto_1

    .line 129
    :cond_1
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 130
    .local v9, "pname":Ljava/lang/String;
    new-instance v10, Lgnu/expr/Declaration;

    invoke-virtual {v6}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v11

    invoke-virtual {v4, v11, v9}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v11

    invoke-direct {v10, v11}, Lgnu/expr/Declaration;-><init>(Lgnu/bytecode/Variable;)V

    move-object v3, v10

    .line 133
    .end local v9    # "pname":Ljava/lang/String;
    :goto_1
    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ltz v0, :cond_2

    .line 135
    new-array v12, v9, [Lgnu/expr/Expression;

    new-instance v13, Lgnu/expr/ReferenceExp;

    invoke-direct {v13, v3}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v13, v12, v10

    new-instance v13, Lgnu/expr/ReferenceExp;

    invoke-direct {v13, v8}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v13, v12, v11

    .local v12, "args":[Lgnu/expr/Expression;
    goto :goto_2

    .line 139
    .end local v12    # "args":[Lgnu/expr/Expression;
    :cond_2
    new-array v12, v11, [Lgnu/expr/Expression;

    new-instance v13, Lgnu/expr/ReferenceExp;

    invoke-direct {v13, v3}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v13, v12, v10

    .line 140
    .restart local v12    # "args":[Lgnu/expr/Expression;
    :goto_2
    new-instance v13, Lgnu/expr/ApplyExp;

    move-object/from16 v14, p0

    invoke-direct {v13, v14, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 141
    .local v13, "app":Lgnu/expr/Expression;
    if-eqz v1, :cond_4

    .line 144
    invoke-virtual {v13}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v15

    invoke-virtual {v15}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v15

    sget-object v11, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    if-eq v15, v11, :cond_3

    .line 145
    new-instance v11, Lgnu/expr/ApplyExp;

    new-array v15, v9, [Lgnu/expr/Expression;

    aput-object v13, v15, v10

    new-instance v9, Lgnu/expr/ReferenceExp;

    invoke-direct {v9, v8}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/16 v16, 0x1

    aput-object v9, v15, v16

    invoke-direct {v11, v1, v15}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v13, v11

    .line 149
    :cond_3
    new-instance v9, Lgnu/expr/IfExp;

    new-instance v11, Lgnu/expr/ReferenceExp;

    invoke-direct {v11, v3}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    sget-object v15, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct {v9, v13, v11, v15}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v13, v9

    .line 164
    :cond_4
    sget-object v9, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v4, v9}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v9

    .line 165
    .local v9, "indexVar":Lgnu/bytecode/Variable;
    sget-object v11, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v11}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v11

    .line 166
    .local v11, "valuesVar":Lgnu/bytecode/Variable;
    sget-object v15, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v4, v15}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v15

    .line 168
    .local v15, "nextVar":Lgnu/bytecode/Variable;
    sget-object v10, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object/from16 v1, p1

    invoke-virtual {v1, v2, v10}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 169
    invoke-virtual {v4, v11}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 170
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 171
    invoke-virtual {v4, v9}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 173
    new-instance v10, Lgnu/bytecode/Label;

    invoke-direct {v10, v4}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 174
    .local v10, "top":Lgnu/bytecode/Label;
    new-instance v1, Lgnu/bytecode/Label;

    invoke-direct {v1, v4}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 175
    .local v1, "doneLabel":Lgnu/bytecode/Label;
    invoke-virtual {v10, v4}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 176
    invoke-virtual {v4, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 177
    invoke-virtual {v4, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 178
    move-object/from16 v17, v5

    .end local v5    # "scope":Lgnu/bytecode/Scope;
    .local v17, "scope":Lgnu/bytecode/Scope;
    sget-object v5, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    move-object/from16 v18, v8

    .end local v8    # "counterDecl":Lgnu/expr/Declaration;
    .local v18, "counterDecl":Lgnu/expr/Declaration;
    const-string v8, "nextIndex"

    move-object/from16 v19, v12

    const/4 v12, 0x2

    .end local v12    # "args":[Lgnu/expr/Expression;
    .local v19, "args":[Lgnu/expr/Expression;
    invoke-virtual {v5, v8, v12}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 179
    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 180
    invoke-virtual {v4, v15}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 182
    invoke-virtual {v4, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfIntLtZero(Lgnu/bytecode/Label;)V

    .line 184
    invoke-virtual {v4, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 185
    invoke-virtual {v4, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 186
    sget-object v5, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v8, "nextValue"

    const/4 v12, 0x2

    invoke-virtual {v5, v8, v12}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 188
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-static {v2, v5, v6}, Lgnu/expr/StackTarget;->convert(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V

    .line 189
    invoke-virtual {v3, v2}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 191
    move-object/from16 v5, p5

    invoke-virtual {v13, v2, v5}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 193
    if-ltz v0, :cond_5

    .line 195
    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 198
    :cond_5
    invoke-virtual {v4, v15}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 199
    invoke-virtual {v4, v9}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 200
    invoke-virtual {v4, v10}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 202
    invoke-virtual {v1, v4}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 204
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 205
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 8
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Procedure;

    .line 38
    .local v0, "proc":Lgnu/mapping/Procedure;
    iget-object v1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 39
    .local v1, "out":Lgnu/lists/Consumer;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    .line 40
    .local v2, "val":Ljava/lang/Object;
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 41
    instance-of v3, v2, Lgnu/mapping/Values;

    if-eqz v3, :cond_2

    .line 43
    const/4 v3, 0x0

    .line 44
    .local v3, "ipos":I
    iget v4, p0, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    .line 45
    .local v4, "count":I
    move-object v5, v2

    check-cast v5, Lgnu/mapping/Values;

    .line 46
    .local v5, "values":Lgnu/mapping/Values;
    :goto_0
    invoke-virtual {v5, v3}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v6

    move v3, v6

    if-eqz v6, :cond_1

    .line 48
    invoke-virtual {v5, v3}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v6

    .line 49
    .local v6, "v":Ljava/lang/Object;
    iget v7, p0, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    if-ltz v7, :cond_0

    .line 50
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "count":I
    .local v7, "count":I
    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    invoke-virtual {v0, v6, v4, p1}, Lgnu/mapping/Procedure;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    move v4, v7

    goto :goto_1

    .line 52
    .end local v7    # "count":I
    .restart local v4    # "count":I
    :cond_0
    invoke-virtual {v0, v6, p1}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 53
    :goto_1
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 54
    .end local v6    # "v":Ljava/lang/Object;
    goto :goto_0

    .line 55
    .end local v3    # "ipos":I
    .end local v4    # "count":I
    .end local v5    # "values":Lgnu/mapping/Values;
    :cond_1
    goto :goto_3

    .line 58
    :cond_2
    iget v3, p0, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    if-ltz v3, :cond_3

    .line 59
    iget v3, p0, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p1}, Lgnu/mapping/Procedure;->check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {v0, v2, p1}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 62
    :goto_2
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 64
    :goto_3
    return-void
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 9
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 84
    invoke-static {p1, p0}, Lgnu/kawa/functions/ValuesMap;->canInline(Lgnu/expr/ApplyExp;Lgnu/kawa/functions/ValuesMap;)Lgnu/expr/LambdaExp;

    move-result-object v6

    .line 85
    .local v6, "lambda":Lgnu/expr/LambdaExp;
    if-nez v6, :cond_0

    .line 87
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 88
    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    .line 91
    .local v7, "args":[Lgnu/expr/Expression;
    instance-of v0, p3, Lgnu/expr/IgnoreTarget;

    if-nez v0, :cond_1

    instance-of v0, p3, Lgnu/expr/ConsumerTarget;

    if-nez v0, :cond_1

    .line 94
    invoke-static {p1, p2, p3}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 95
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x1

    aget-object v8, v7, v0

    .line 98
    .local v8, "vals":Lgnu/expr/Expression;
    iget v2, p0, Lgnu/kawa/functions/ValuesMap;->startCounter:I

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, v8

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lgnu/kawa/functions/ValuesMap;->compileInlined(Lgnu/expr/LambdaExp;Lgnu/expr/Expression;ILgnu/bytecode/Method;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 99
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 209
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public numArgs()I
    .locals 1

    .line 33
    const/16 v0, 0x2002

    return v0
.end method
