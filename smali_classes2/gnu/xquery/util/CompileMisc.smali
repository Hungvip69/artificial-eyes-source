.class public Lgnu/xquery/util/CompileMisc;
.super Ljava/lang/Object;
.source "CompileMisc.java"


# static fields
.field static final castMethod:Lgnu/bytecode/Method;

.field static final castableMethod:Lgnu/bytecode/Method;

.field static final typeTuples:Lgnu/bytecode/ClassType;

.field static final typeXDataType:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 340
    const-string v0, "gnu.xquery.util.OrderedTuples"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/CompileMisc;->typeTuples:Lgnu/bytecode/ClassType;

    .line 365
    const-string v0, "gnu.kawa.xml.XDataType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/CompileMisc;->typeXDataType:Lgnu/bytecode/ClassType;

    .line 367
    sget-object v0, Lgnu/xquery/util/CompileMisc;->typeXDataType:Lgnu/bytecode/ClassType;

    const-string v1, "cast"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/CompileMisc;->castMethod:Lgnu/bytecode/Method;

    .line 383
    sget-object v0, Lgnu/xquery/util/CompileMisc;->typeXDataType:Lgnu/bytecode/ClassType;

    const-string v1, "castable"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/CompileMisc;->castableMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compileOrderedMap(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/mapping/Procedure;)V
    .locals 13
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 345
    move-object v6, p1

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    .line 346
    .local v7, "args":[Lgnu/expr/Expression;
    array-length v0, v7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 348
    invoke-static {p0, p1, p2}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 349
    return-void

    .line 351
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v8

    .line 352
    .local v8, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v9

    .line 353
    .local v9, "scope":Lgnu/bytecode/Scope;
    sget-object v0, Lgnu/xquery/util/CompileMisc;->typeTuples:Lgnu/bytecode/ClassType;

    const/4 v1, 0x0

    invoke-virtual {v9, v8, v0, v1}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v10

    .line 354
    .local v10, "consumer":Lgnu/bytecode/Variable;
    const/4 v0, 0x1

    aget-object v1, v7, v0

    sget-object v2, Lgnu/xquery/util/CompileMisc;->typeTuples:Lgnu/bytecode/ClassType;

    invoke-static {v2}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 355
    invoke-virtual {v8, v10}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 356
    new-instance v1, Lgnu/expr/ConsumerTarget;

    invoke-direct {v1, v10}, Lgnu/expr/ConsumerTarget;-><init>(Lgnu/bytecode/Variable;)V

    move-object v11, v1

    .line 357
    .local v11, "ctarget":Lgnu/expr/ConsumerTarget;
    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-virtual {v1, p1, v11}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 358
    sget-object v1, Lgnu/xquery/util/CompileMisc;->typeTuples:Lgnu/bytecode/ClassType;

    const-string v2, "run$X"

    invoke-virtual {v1, v2, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v12

    .line 359
    .local v12, "mm":Lgnu/bytecode/Method;
    invoke-virtual {v8, v10}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 360
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v3

    const/16 v4, 0xb6

    sget-object v5, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    move-object v0, p1

    move-object v1, v12

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lgnu/expr/PrimProcedure;->compileInvoke(Lgnu/expr/Compilation;Lgnu/bytecode/Method;Lgnu/expr/Target;ZILgnu/bytecode/Type;)V

    .line 362
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 363
    return-void
.end method

.method public static validateApplyCastAs(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 4
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 372
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 373
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lgnu/kawa/reflect/CompileReflect;->inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;

    move-result-object p0

    .line 374
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 375
    .local v1, "args":[Lgnu/expr/Expression;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    aget-object v2, v1, v0

    instance-of v2, v2, Lgnu/expr/QuoteExp;

    if-nez v2, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    aget-object v0, v1, v0

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 378
    .local v0, "type":Ljava/lang/Object;
    instance-of v2, v0, Lgnu/kawa/xml/XDataType;

    if-eqz v2, :cond_1

    .line 379
    new-instance v2, Lgnu/expr/ApplyExp;

    sget-object v3, Lgnu/xquery/util/CompileMisc;->castMethod:Lgnu/bytecode/Method;

    invoke-direct {v2, v3, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object v2

    .line 380
    :cond_1
    return-object p0

    .line 376
    .end local v0    # "type":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static validateApplyCastableAs(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 8
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 389
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 390
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lgnu/kawa/reflect/CompileReflect;->inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;

    move-result-object p0

    .line 391
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 392
    .local v1, "args":[Lgnu/expr/Expression;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    aget-object v2, v1, v0

    instance-of v2, v2, Lgnu/expr/QuoteExp;

    if-nez v2, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    aget-object v2, v1, v0

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 395
    .local v2, "type":Ljava/lang/Object;
    instance-of v4, v2, Lgnu/kawa/xml/XDataType;

    if-eqz v4, :cond_1

    .line 396
    new-instance v4, Lgnu/expr/ApplyExp;

    sget-object v5, Lgnu/xquery/util/CompileMisc;->castableMethod:Lgnu/bytecode/Method;

    new-array v3, v3, [Lgnu/expr/Expression;

    aget-object v6, v1, v0

    const/4 v7, 0x0

    aput-object v6, v3, v7

    aget-object v6, v1, v7

    aput-object v6, v3, v0

    invoke-direct {v4, v5, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object v4

    .line 398
    :cond_1
    return-object p0

    .line 393
    .end local v2    # "type":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static validateApplyOrderedMap(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 8
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 325
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 326
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 327
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 329
    array-length v1, v0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    new-array v1, v1, [Lgnu/expr/Expression;

    .line 330
    .local v1, "rargs":[Lgnu/expr/Expression;
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v0, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    new-array v4, v2, [Lgnu/expr/Expression;

    .line 332
    .local v4, "xargs":[Lgnu/expr/Expression;
    sget-object v6, Lgnu/xquery/util/CompileMisc;->typeTuples:Lgnu/bytecode/ClassType;

    const-string v7, "make$V"

    invoke-virtual {v6, v7, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 333
    .local v2, "makeTupleMethod":Lgnu/bytecode/Method;
    aget-object v6, v0, v5

    aput-object v6, v4, v5

    .line 334
    new-instance v5, Lgnu/expr/ApplyExp;

    invoke-direct {v5, v2, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    aput-object v5, v4, v3

    .line 335
    new-instance v3, Lgnu/expr/ApplyExp;

    invoke-direct {v3, p3, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object v3

    .line 337
    .end local v1    # "rargs":[Lgnu/expr/Expression;
    .end local v2    # "makeTupleMethod":Lgnu/bytecode/Method;
    .end local v4    # "xargs":[Lgnu/expr/Expression;
    :cond_0
    return-object p0
.end method

.method public static validateApplyRelativeStep(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 23
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 192
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 194
    .local v1, "args":[Lgnu/expr/Expression;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    .line 195
    .local v3, "exp1":Lgnu/expr/Expression;
    const/4 v4, 0x1

    aget-object v5, v1, v4

    .line 197
    .local v5, "exp2":Lgnu/expr/Expression;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v6

    .line 198
    .local v6, "comp":Lgnu/expr/Compilation;
    instance-of v7, v5, Lgnu/expr/LambdaExp;

    if-eqz v7, :cond_12

    iget-boolean v7, v6, Lgnu/expr/Compilation;->mustCompile:Z

    if-eqz v7, :cond_12

    move-object v7, v5

    check-cast v7, Lgnu/expr/LambdaExp;

    move-object v8, v7

    .local v8, "lexp2":Lgnu/expr/LambdaExp;
    iget v7, v7, Lgnu/expr/LambdaExp;->min_args:I

    const/4 v9, 0x3

    if-ne v7, v9, :cond_11

    iget v7, v8, Lgnu/expr/LambdaExp;->max_args:I

    if-eq v7, v9, :cond_0

    move-object/from16 v19, v1

    move-object/from16 v16, v3

    goto/16 :goto_4

    .line 206
    :cond_0
    invoke-virtual {v8, v4}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 207
    iput-object v0, v8, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 208
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v7

    iput-object v7, v8, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 210
    iget-object v5, v8, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 212
    invoke-virtual {v8}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    .line 213
    .local v7, "dotArg":Lgnu/expr/Declaration;
    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v9

    .line 214
    .local v9, "posArg":Lgnu/expr/Declaration;
    invoke-virtual {v9}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v10

    .line 217
    .local v10, "lastArg":Lgnu/expr/Declaration;
    invoke-virtual {v10}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v11

    invoke-virtual {v9, v11}, Lgnu/expr/Declaration;->setNext(Lgnu/expr/Declaration;)V

    .line 218
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lgnu/expr/Declaration;->setNext(Lgnu/expr/Declaration;)V

    .line 219
    const/4 v12, 0x2

    iput v12, v8, Lgnu/expr/LambdaExp;->min_args:I

    .line 220
    iput v12, v8, Lgnu/expr/LambdaExp;->max_args:I

    .line 222
    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v13

    .line 223
    .local v13, "type1":Lgnu/bytecode/Type;
    const/4 v14, -0x3

    if-eqz v13, :cond_1

    sget-object v15, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual {v15, v13}, Lgnu/kawa/xml/NodeType;->compare(Lgnu/bytecode/Type;)I

    move-result v15

    if-ne v15, v14, :cond_1

    .line 225
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    .line 226
    .local v2, "language":Lgnu/expr/Language;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "step input is "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v13}, Lgnu/expr/Language;->formatType(Lgnu/bytecode/Type;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " - not a node sequence"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, "message":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v11

    const/16 v12, 0x65

    invoke-virtual {v11, v12, v4}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 228
    new-instance v11, Lgnu/expr/ErrorExp;

    invoke-direct {v11, v4}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v11

    .line 231
    .end local v2    # "language":Lgnu/expr/Language;
    .end local v4    # "message":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getTypeRaw()Lgnu/bytecode/Type;

    move-result-object v15

    .line 234
    .local v15, "rtype":Lgnu/bytecode/Type;
    if-eqz v15, :cond_2

    sget-object v14, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne v15, v14, :cond_4

    .line 236
    :cond_2
    invoke-virtual {v5}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v14

    .line 237
    .local v14, "type2":Lgnu/bytecode/Type;
    invoke-static {v14}, Lgnu/kawa/reflect/OccurrenceType;->itemPrimeType(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v12

    .line 238
    .local v12, "rtypePrime":Lgnu/bytecode/Type;
    sget-object v11, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual {v11, v12}, Lgnu/kawa/xml/NodeType;->compare(Lgnu/bytecode/Type;)I

    move-result v11

    .line 239
    .local v11, "nodeCompare":I
    if-ltz v11, :cond_3

    .line 240
    invoke-static {v12}, Lgnu/kawa/xml/NodeSetType;->getInstance(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v15

    goto :goto_0

    .line 242
    :cond_3
    const/4 v4, -0x1

    invoke-static {v12, v2, v4}, Lgnu/kawa/reflect/OccurrenceType;->getInstance(Lgnu/bytecode/Type;II)Lgnu/bytecode/Type;

    move-result-object v4

    move-object v15, v4

    .line 243
    :goto_0
    invoke-virtual {v0, v15}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 245
    .end local v11    # "nodeCompare":I
    .end local v12    # "rtypePrime":Lgnu/bytecode/Type;
    .end local v14    # "type2":Lgnu/bytecode/Type;
    :cond_4
    invoke-virtual {v10}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 247
    sget-object v4, Lgnu/kawa/xml/CoerceNodes;->typeNodes:Lgnu/bytecode/ClassType;

    .line 248
    .local v4, "typeNodes":Lgnu/bytecode/ClassType;
    invoke-virtual {v6}, Lgnu/expr/Compilation;->letStart()V

    .line 249
    new-instance v11, Lgnu/expr/ApplyExp;

    sget-object v12, Lgnu/kawa/xml/CoerceNodes;->coerceNodes:Lgnu/kawa/xml/CoerceNodes;

    move-object/from16 v19, v1

    const/4 v14, 0x1

    .end local v1    # "args":[Lgnu/expr/Expression;
    .local v19, "args":[Lgnu/expr/Expression;
    new-array v1, v14, [Lgnu/expr/Expression;

    aput-object v3, v1, v2

    invoke-direct {v11, v12, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v4, v11}, Lgnu/expr/Compilation;->letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 253
    .local v1, "sequence":Lgnu/expr/Declaration;
    invoke-virtual {v6}, Lgnu/expr/Compilation;->letEnter()V

    .line 255
    const-string v11, "size"

    invoke-virtual {v4, v11, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v11

    .line 256
    .local v11, "sizeMethod":Lgnu/bytecode/Method;
    new-instance v12, Lgnu/expr/ApplyExp;

    new-array v2, v14, [Lgnu/expr/Expression;

    new-instance v14, Lgnu/expr/ReferenceExp;

    invoke-direct {v14, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/16 v16, 0x0

    aput-object v14, v2, v16

    invoke-direct {v12, v11, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v2, v12

    .line 259
    .local v2, "lastInit":Lgnu/expr/Expression;
    new-instance v12, Lgnu/expr/LetExp;

    move-object/from16 v18, v4

    const/4 v14, 0x1

    .end local v4    # "typeNodes":Lgnu/bytecode/ClassType;
    .local v18, "typeNodes":Lgnu/bytecode/ClassType;
    new-array v4, v14, [Lgnu/expr/Expression;

    aput-object v2, v4, v16

    invoke-direct {v12, v4}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object v4, v12

    .line 260
    .local v4, "lastLet":Lgnu/expr/LetExp;
    invoke-virtual {v4, v10}, Lgnu/expr/LetExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 261
    new-instance v12, Lgnu/expr/ApplyExp;

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v14

    move-object/from16 v20, v2

    const/4 v2, 0x2

    .end local v2    # "lastInit":Lgnu/expr/Expression;
    .local v20, "lastInit":Lgnu/expr/Expression;
    new-array v2, v2, [Lgnu/expr/Expression;

    move-object/from16 v21, v7

    .end local v7    # "dotArg":Lgnu/expr/Declaration;
    .local v21, "dotArg":Lgnu/expr/Declaration;
    new-instance v7, Lgnu/expr/ReferenceExp;

    invoke-direct {v7, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v7, v2, v16

    const/4 v7, 0x1

    aput-object v8, v2, v7

    invoke-direct {v12, v14, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    iput-object v12, v4, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 264
    invoke-virtual {v6, v4}, Lgnu/expr/Compilation;->letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;

    move-result-object v2

    return-object v2

    .line 267
    .end local v4    # "lastLet":Lgnu/expr/LetExp;
    .end local v11    # "sizeMethod":Lgnu/bytecode/Method;
    .end local v18    # "typeNodes":Lgnu/bytecode/ClassType;
    .end local v19    # "args":[Lgnu/expr/Expression;
    .end local v20    # "lastInit":Lgnu/expr/Expression;
    .end local v21    # "dotArg":Lgnu/expr/Declaration;
    .local v1, "args":[Lgnu/expr/Expression;
    .restart local v7    # "dotArg":Lgnu/expr/Declaration;
    :cond_5
    move-object/from16 v19, v1

    move-object/from16 v21, v7

    .end local v1    # "args":[Lgnu/expr/Expression;
    .end local v7    # "dotArg":Lgnu/expr/Declaration;
    .restart local v19    # "args":[Lgnu/expr/Expression;
    .restart local v21    # "dotArg":Lgnu/expr/Declaration;
    move-object/from16 v1, p0

    .line 271
    .local v1, "result":Lgnu/expr/ApplyExp;
    instance-of v2, v5, Lgnu/expr/ApplyExp;

    if-eqz v2, :cond_a

    .line 273
    move-object v2, v5

    check-cast v2, Lgnu/expr/ApplyExp;

    .line 274
    .local v2, "aexp2":Lgnu/expr/ApplyExp;
    invoke-virtual {v2}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v4

    .line 276
    .local v4, "proc2":Ljava/lang/Object;
    instance-of v7, v4, Lgnu/xquery/util/ValuesFilter;

    if-eqz v7, :cond_9

    invoke-virtual {v2}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v7

    const/4 v11, 0x1

    aget-object v7, v7, v11

    move-object v11, v7

    .local v11, "vexp2":Lgnu/expr/Expression;
    instance-of v7, v7, Lgnu/expr/LambdaExp;

    if-eqz v7, :cond_8

    .line 279
    move-object v7, v11

    check-cast v7, Lgnu/expr/LambdaExp;

    .line 280
    .local v7, "lvexp2":Lgnu/expr/LambdaExp;
    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v12

    .line 282
    .local v12, "dot2":Lgnu/expr/Declaration;
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v14

    move-object/from16 v20, v14

    .local v20, "pos2":Lgnu/expr/Declaration;
    if-eqz v14, :cond_6

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v14

    if-nez v14, :cond_6

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v14

    if-nez v14, :cond_6

    const-string v14, "java.lang.Number"

    invoke-static {v14}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v14

    move-object/from16 v22, v1

    .end local v1    # "result":Lgnu/expr/ApplyExp;
    .local v22, "result":Lgnu/expr/ApplyExp;
    iget-object v1, v7, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v14, v1}, Lgnu/bytecode/ClassType;->compare(Lgnu/bytecode/Type;)I

    move-result v1

    const/4 v14, -0x3

    if-ne v1, v14, :cond_b

    .line 290
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v5

    .line 291
    iput-object v5, v8, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 292
    invoke-virtual {v2, v1, v0}, Lgnu/expr/ApplyExp;->setArg(ILgnu/expr/Expression;)V

    .line 293
    move-object v1, v2

    .end local v22    # "result":Lgnu/expr/ApplyExp;
    .restart local v1    # "result":Lgnu/expr/ApplyExp;
    goto :goto_2

    .line 282
    :cond_6
    move-object/from16 v22, v1

    .end local v1    # "result":Lgnu/expr/ApplyExp;
    .restart local v22    # "result":Lgnu/expr/ApplyExp;
    goto :goto_1

    .end local v20    # "pos2":Lgnu/expr/Declaration;
    .end local v22    # "result":Lgnu/expr/ApplyExp;
    .restart local v1    # "result":Lgnu/expr/ApplyExp;
    :cond_7
    move-object/from16 v22, v1

    .end local v1    # "result":Lgnu/expr/ApplyExp;
    .restart local v22    # "result":Lgnu/expr/ApplyExp;
    goto :goto_1

    .line 276
    .end local v7    # "lvexp2":Lgnu/expr/LambdaExp;
    .end local v12    # "dot2":Lgnu/expr/Declaration;
    .end local v22    # "result":Lgnu/expr/ApplyExp;
    .restart local v1    # "result":Lgnu/expr/ApplyExp;
    :cond_8
    move-object/from16 v22, v1

    .end local v1    # "result":Lgnu/expr/ApplyExp;
    .restart local v22    # "result":Lgnu/expr/ApplyExp;
    goto :goto_1

    .end local v11    # "vexp2":Lgnu/expr/Expression;
    .end local v22    # "result":Lgnu/expr/ApplyExp;
    .restart local v1    # "result":Lgnu/expr/ApplyExp;
    :cond_9
    move-object/from16 v22, v1

    .end local v1    # "result":Lgnu/expr/ApplyExp;
    .restart local v22    # "result":Lgnu/expr/ApplyExp;
    goto :goto_1

    .line 271
    .end local v2    # "aexp2":Lgnu/expr/ApplyExp;
    .end local v4    # "proc2":Ljava/lang/Object;
    .end local v22    # "result":Lgnu/expr/ApplyExp;
    .restart local v1    # "result":Lgnu/expr/ApplyExp;
    :cond_a
    move-object/from16 v22, v1

    .line 299
    .end local v1    # "result":Lgnu/expr/ApplyExp;
    .restart local v22    # "result":Lgnu/expr/ApplyExp;
    :cond_b
    :goto_1
    move-object/from16 v1, v22

    .end local v22    # "result":Lgnu/expr/ApplyExp;
    .restart local v1    # "result":Lgnu/expr/ApplyExp;
    :goto_2
    instance-of v2, v3, Lgnu/expr/ApplyExp;

    if-eqz v2, :cond_f

    instance-of v2, v5, Lgnu/expr/ApplyExp;

    if-eqz v2, :cond_f

    .line 301
    move-object v2, v3

    check-cast v2, Lgnu/expr/ApplyExp;

    .line 302
    .local v2, "aexp1":Lgnu/expr/ApplyExp;
    move-object v4, v5

    check-cast v4, Lgnu/expr/ApplyExp;

    .line 303
    .local v4, "aexp2":Lgnu/expr/ApplyExp;
    invoke-virtual {v2}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v7

    .line 304
    .local v7, "p1":Ljava/lang/Object;
    invoke-virtual {v4}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v11

    invoke-virtual {v11}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v11

    .line 306
    .local v11, "p2":Ljava/lang/Object;
    sget-object v12, Lgnu/xquery/util/RelativeStep;->relativeStep:Lgnu/xquery/util/RelativeStep;

    if-ne v7, v12, :cond_e

    instance-of v12, v11, Lgnu/kawa/xml/ChildAxis;

    if-eqz v12, :cond_e

    invoke-virtual {v2}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v12

    const/4 v14, 0x2

    if-ne v12, v14, :cond_e

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v12

    move-object v14, v12

    .local v14, "exp12":Lgnu/expr/Expression;
    instance-of v12, v12, Lgnu/expr/LambdaExp;

    if-eqz v12, :cond_d

    .line 310
    move-object v12, v14

    check-cast v12, Lgnu/expr/LambdaExp;

    .line 311
    .local v12, "lexp12":Lgnu/expr/LambdaExp;
    move-object/from16 v16, v3

    .end local v3    # "exp1":Lgnu/expr/Expression;
    .local v16, "exp1":Lgnu/expr/Expression;
    iget-object v3, v12, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    instance-of v3, v3, Lgnu/expr/ApplyExp;

    if-eqz v3, :cond_c

    iget-object v3, v12, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    check-cast v3, Lgnu/expr/ApplyExp;

    invoke-virtual {v3}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v5

    .end local v5    # "exp2":Lgnu/expr/Expression;
    .local v17, "exp2":Lgnu/expr/Expression;
    sget-object v5, Lgnu/kawa/xml/DescendantOrSelfAxis;->anyNode:Lgnu/kawa/xml/DescendantOrSelfAxis;

    if-ne v3, v5, :cond_10

    .line 314
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lgnu/expr/ApplyExp;->setArg(ILgnu/expr/Expression;)V

    .line 315
    new-instance v3, Lgnu/expr/QuoteExp;

    move-object v5, v11

    check-cast v5, Lgnu/kawa/xml/ChildAxis;

    invoke-virtual {v5}, Lgnu/kawa/xml/ChildAxis;->getNodePredicate()Lgnu/lists/NodePredicate;

    move-result-object v5

    invoke-static {v5}, Lgnu/kawa/xml/DescendantAxis;->make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/DescendantAxis;

    move-result-object v5

    invoke-direct {v3, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lgnu/expr/ApplyExp;->setFunction(Lgnu/expr/Expression;)V

    goto :goto_3

    .line 311
    .end local v17    # "exp2":Lgnu/expr/Expression;
    .restart local v5    # "exp2":Lgnu/expr/Expression;
    :cond_c
    move-object/from16 v17, v5

    .end local v5    # "exp2":Lgnu/expr/Expression;
    .restart local v17    # "exp2":Lgnu/expr/Expression;
    goto :goto_3

    .line 306
    .end local v12    # "lexp12":Lgnu/expr/LambdaExp;
    .end local v16    # "exp1":Lgnu/expr/Expression;
    .end local v17    # "exp2":Lgnu/expr/Expression;
    .restart local v3    # "exp1":Lgnu/expr/Expression;
    .restart local v5    # "exp2":Lgnu/expr/Expression;
    :cond_d
    move-object/from16 v16, v3

    move-object/from16 v17, v5

    .end local v3    # "exp1":Lgnu/expr/Expression;
    .end local v5    # "exp2":Lgnu/expr/Expression;
    .restart local v16    # "exp1":Lgnu/expr/Expression;
    .restart local v17    # "exp2":Lgnu/expr/Expression;
    goto :goto_3

    .end local v14    # "exp12":Lgnu/expr/Expression;
    .end local v16    # "exp1":Lgnu/expr/Expression;
    .end local v17    # "exp2":Lgnu/expr/Expression;
    .restart local v3    # "exp1":Lgnu/expr/Expression;
    .restart local v5    # "exp2":Lgnu/expr/Expression;
    :cond_e
    move-object/from16 v16, v3

    move-object/from16 v17, v5

    .end local v3    # "exp1":Lgnu/expr/Expression;
    .end local v5    # "exp2":Lgnu/expr/Expression;
    .restart local v16    # "exp1":Lgnu/expr/Expression;
    .restart local v17    # "exp2":Lgnu/expr/Expression;
    goto :goto_3

    .line 299
    .end local v2    # "aexp1":Lgnu/expr/ApplyExp;
    .end local v4    # "aexp2":Lgnu/expr/ApplyExp;
    .end local v7    # "p1":Ljava/lang/Object;
    .end local v11    # "p2":Ljava/lang/Object;
    .end local v16    # "exp1":Lgnu/expr/Expression;
    .end local v17    # "exp2":Lgnu/expr/Expression;
    .restart local v3    # "exp1":Lgnu/expr/Expression;
    .restart local v5    # "exp2":Lgnu/expr/Expression;
    :cond_f
    move-object/from16 v16, v3

    move-object/from16 v17, v5

    .line 319
    .end local v3    # "exp1":Lgnu/expr/Expression;
    .end local v5    # "exp2":Lgnu/expr/Expression;
    .restart local v16    # "exp1":Lgnu/expr/Expression;
    .restart local v17    # "exp2":Lgnu/expr/Expression;
    :cond_10
    :goto_3
    return-object v1

    .line 198
    .end local v9    # "posArg":Lgnu/expr/Declaration;
    .end local v10    # "lastArg":Lgnu/expr/Declaration;
    .end local v13    # "type1":Lgnu/bytecode/Type;
    .end local v15    # "rtype":Lgnu/bytecode/Type;
    .end local v16    # "exp1":Lgnu/expr/Expression;
    .end local v17    # "exp2":Lgnu/expr/Expression;
    .end local v19    # "args":[Lgnu/expr/Expression;
    .end local v21    # "dotArg":Lgnu/expr/Declaration;
    .local v1, "args":[Lgnu/expr/Expression;
    .restart local v3    # "exp1":Lgnu/expr/Expression;
    .restart local v5    # "exp2":Lgnu/expr/Expression;
    :cond_11
    move-object/from16 v19, v1

    move-object/from16 v16, v3

    .end local v1    # "args":[Lgnu/expr/Expression;
    .end local v3    # "exp1":Lgnu/expr/Expression;
    .restart local v16    # "exp1":Lgnu/expr/Expression;
    .restart local v19    # "args":[Lgnu/expr/Expression;
    goto :goto_4

    .end local v8    # "lexp2":Lgnu/expr/LambdaExp;
    .end local v16    # "exp1":Lgnu/expr/Expression;
    .end local v19    # "args":[Lgnu/expr/Expression;
    .restart local v1    # "args":[Lgnu/expr/Expression;
    .restart local v3    # "exp1":Lgnu/expr/Expression;
    :cond_12
    move-object/from16 v19, v1

    move-object/from16 v16, v3

    .line 204
    .end local v1    # "args":[Lgnu/expr/Expression;
    .end local v3    # "exp1":Lgnu/expr/Expression;
    .restart local v16    # "exp1":Lgnu/expr/Expression;
    .restart local v19    # "args":[Lgnu/expr/Expression;
    :goto_4
    return-object v0
.end method

.method public static validateApplyValuesFilter(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 24
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 88
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    check-cast v1, Lgnu/xquery/util/ValuesFilter;

    .line 89
    .local v1, "vproc":Lgnu/xquery/util/ValuesFilter;
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 91
    .local v2, "args":[Lgnu/expr/Expression;
    const/4 v3, 0x1

    aget-object v4, v2, v3

    .line 93
    .local v4, "exp2":Lgnu/expr/Expression;
    instance-of v5, v4, Lgnu/expr/LambdaExp;

    if-eqz v5, :cond_6

    move-object v5, v4

    check-cast v5, Lgnu/expr/LambdaExp;

    move-object v6, v5

    .local v6, "lexp2":Lgnu/expr/LambdaExp;
    iget v5, v5, Lgnu/expr/LambdaExp;->min_args:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_5

    iget v5, v6, Lgnu/expr/LambdaExp;->max_args:I

    if-eq v5, v7, :cond_0

    move-object/from16 v12, p1

    move-object/from16 v15, p2

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    goto/16 :goto_3

    .line 98
    :cond_0
    const/4 v5, 0x0

    aget-object v7, v2, v5

    invoke-virtual {v7}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-virtual {v0, v7}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 100
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v7

    .line 102
    .local v7, "parser":Lgnu/expr/Compilation;
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v8

    .line 103
    .local v8, "dotArg":Lgnu/expr/Declaration;
    invoke-virtual {v8}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v9

    .line 104
    .local v9, "posArg":Lgnu/expr/Declaration;
    invoke-virtual {v9}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v10

    .line 106
    .local v10, "lastArg":Lgnu/expr/Declaration;
    invoke-virtual {v6, v3}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 107
    iput-object v0, v6, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 108
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v11

    iput-object v11, v6, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 111
    invoke-virtual {v6, v9, v10}, Lgnu/expr/LambdaExp;->remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 112
    const/4 v11, 0x2

    iput v11, v6, Lgnu/expr/LambdaExp;->min_args:I

    .line 113
    iput v11, v6, Lgnu/expr/LambdaExp;->max_args:I

    .line 115
    invoke-virtual {v10}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v12

    const/16 v13, 0x52

    if-nez v12, :cond_1

    iget-char v12, v1, Lgnu/xquery/util/ValuesFilter;->kind:C

    if-eq v12, v13, :cond_1

    .line 118
    return-object v0

    .line 121
    :cond_1
    invoke-virtual {v7}, Lgnu/expr/Compilation;->letStart()V

    .line 122
    aget-object v12, v2, v5

    .line 125
    .local v12, "seq":Lgnu/expr/Expression;
    iget-char v14, v1, Lgnu/xquery/util/ValuesFilter;->kind:C

    const/16 v15, 0x50

    if-ne v14, v15, :cond_2

    .line 127
    invoke-virtual {v12}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v14

    .line 128
    .local v14, "seqType":Lgnu/bytecode/Type;
    sget-object v15, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v13, "countValues"

    invoke-virtual {v15, v13, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v13

    .local v13, "sizeMethod":Lgnu/bytecode/Method;
    goto :goto_0

    .line 132
    .end local v13    # "sizeMethod":Lgnu/bytecode/Method;
    .end local v14    # "seqType":Lgnu/bytecode/Type;
    :cond_2
    sget-object v14, Lgnu/kawa/xml/SortNodes;->typeSortedNodes:Lgnu/bytecode/ClassType;

    .line 133
    .restart local v14    # "seqType":Lgnu/bytecode/Type;
    new-instance v13, Lgnu/expr/ApplyExp;

    sget-object v15, Lgnu/kawa/xml/SortNodes;->sortNodes:Lgnu/kawa/xml/SortNodes;

    new-array v11, v3, [Lgnu/expr/Expression;

    aput-object v12, v11, v5

    invoke-direct {v13, v15, v11}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v12, v13

    .line 134
    sget-object v11, Lgnu/kawa/xml/CoerceNodes;->typeNodes:Lgnu/bytecode/ClassType;

    const-string v13, "size"

    invoke-virtual {v11, v13, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v13

    .line 136
    .restart local v13    # "sizeMethod":Lgnu/bytecode/Method;
    :goto_0
    const-string v11, "sequence"

    invoke-virtual {v7, v11, v14, v12}, Lgnu/expr/Compilation;->letVariable(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/Expression;)Lgnu/expr/Declaration;

    move-result-object v11

    .line 137
    .local v11, "sequence":Lgnu/expr/Declaration;
    invoke-virtual {v7}, Lgnu/expr/Compilation;->letEnter()V

    .line 139
    iget-object v15, v6, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 140
    .local v15, "pred":Lgnu/expr/Expression;
    iget-object v3, v6, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v3}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 141
    .local v3, "predType":Lgnu/bytecode/Type;
    sget-object v5, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    if-eq v3, v5, :cond_3

    .line 142
    new-instance v5, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v2

    .end local v2    # "args":[Lgnu/expr/Expression;
    .local v19, "args":[Lgnu/expr/Expression;
    sget-object v2, Lgnu/xquery/util/ValuesFilter;->matchesMethod:Lgnu/bytecode/Method;

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    const/4 v3, 0x2

    .end local v3    # "predType":Lgnu/bytecode/Type;
    .end local v4    # "exp2":Lgnu/expr/Expression;
    .local v20, "predType":Lgnu/bytecode/Type;
    .local v21, "exp2":Lgnu/expr/Expression;
    new-array v4, v3, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    aput-object v15, v4, v3

    new-instance v3, Lgnu/expr/ReferenceExp;

    invoke-direct {v3, v9}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/16 v17, 0x1

    aput-object v3, v4, v17

    invoke-direct {v5, v2, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v15, v5

    goto :goto_1

    .line 141
    .end local v19    # "args":[Lgnu/expr/Expression;
    .end local v20    # "predType":Lgnu/bytecode/Type;
    .end local v21    # "exp2":Lgnu/expr/Expression;
    .restart local v2    # "args":[Lgnu/expr/Expression;
    .restart local v3    # "predType":Lgnu/bytecode/Type;
    .restart local v4    # "exp2":Lgnu/expr/Expression;
    :cond_3
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 145
    .end local v2    # "args":[Lgnu/expr/Expression;
    .end local v3    # "predType":Lgnu/bytecode/Type;
    .end local v4    # "exp2":Lgnu/expr/Expression;
    .restart local v19    # "args":[Lgnu/expr/Expression;
    .restart local v20    # "predType":Lgnu/bytecode/Type;
    .restart local v21    # "exp2":Lgnu/expr/Expression;
    :goto_1
    iget-char v2, v1, Lgnu/xquery/util/ValuesFilter;->kind:C

    const/16 v3, 0x52

    if-ne v2, v3, :cond_4

    .line 147
    new-instance v2, Lgnu/expr/Declaration;

    const/4 v3, 0x0

    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-direct {v2, v3, v4}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 148
    .local v2, "posIncoming":Lgnu/expr/Declaration;
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    move-object/from16 v16, v1

    const/4 v5, 0x2

    .end local v1    # "vproc":Lgnu/xquery/util/ValuesFilter;
    .local v16, "vproc":Lgnu/xquery/util/ValuesFilter;
    new-array v1, v5, [Lgnu/expr/Expression;

    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, v10}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/16 v18, 0x0

    aput-object v5, v1, v18

    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, v2}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object/from16 v22, v12

    const/4 v12, 0x1

    .end local v12    # "seq":Lgnu/expr/Expression;
    .local v22, "seq":Lgnu/expr/Expression;
    aput-object v5, v1, v12

    invoke-direct {v3, v4, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v1, v3

    .line 153
    .local v1, "init":Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/ApplyExp;

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    const/4 v5, 0x2

    new-array v12, v5, [Lgnu/expr/Expression;

    aput-object v1, v12, v18

    new-instance v5, Lgnu/expr/QuoteExp;

    move-object/from16 v23, v1

    .end local v1    # "init":Lgnu/expr/Expression;
    .local v23, "init":Lgnu/expr/Expression;
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v1

    invoke-direct {v5, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v5, v12, v1

    invoke-direct {v3, v4, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 158
    .end local v23    # "init":Lgnu/expr/Expression;
    .local v3, "init":Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/LetExp;

    new-array v5, v1, [Lgnu/expr/Expression;

    aput-object v3, v5, v18

    invoke-direct {v4, v5}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    move-object v1, v4

    .line 159
    .local v1, "let":Lgnu/expr/LetExp;
    invoke-virtual {v6, v8, v2}, Lgnu/expr/LambdaExp;->replaceFollowing(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 160
    invoke-virtual {v1, v9}, Lgnu/expr/LetExp;->add(Lgnu/expr/Declaration;)V

    .line 161
    iput-object v15, v1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 162
    move-object v15, v1

    goto :goto_2

    .line 145
    .end local v2    # "posIncoming":Lgnu/expr/Declaration;
    .end local v3    # "init":Lgnu/expr/Expression;
    .end local v16    # "vproc":Lgnu/xquery/util/ValuesFilter;
    .end local v22    # "seq":Lgnu/expr/Expression;
    .local v1, "vproc":Lgnu/xquery/util/ValuesFilter;
    .restart local v12    # "seq":Lgnu/expr/Expression;
    :cond_4
    move-object/from16 v16, v1

    move-object/from16 v22, v12

    .line 165
    .end local v1    # "vproc":Lgnu/xquery/util/ValuesFilter;
    .end local v12    # "seq":Lgnu/expr/Expression;
    .restart local v16    # "vproc":Lgnu/xquery/util/ValuesFilter;
    .restart local v22    # "seq":Lgnu/expr/Expression;
    :goto_2
    new-instance v1, Lgnu/expr/IfExp;

    new-instance v2, Lgnu/expr/ReferenceExp;

    invoke-direct {v2, v8}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    sget-object v3, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct {v1, v15, v2, v3}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    .line 168
    .end local v15    # "pred":Lgnu/expr/Expression;
    .local v1, "pred":Lgnu/expr/Expression;
    iput-object v1, v6, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 170
    new-instance v2, Lgnu/expr/ApplyExp;

    sget-object v3, Lgnu/kawa/functions/ValuesMap;->valuesMapWithPos:Lgnu/kawa/functions/ValuesMap;

    const/4 v4, 0x2

    new-array v4, v4, [Lgnu/expr/Expression;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, v11}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 v12, 0x1

    aput-object v5, v4, v12

    invoke-direct {v2, v3, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 174
    .local v2, "doMap":Lgnu/expr/ApplyExp;
    invoke-virtual {v8}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 175
    iput-object v2, v6, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 177
    new-instance v3, Lgnu/expr/ApplyExp;

    new-array v4, v12, [Lgnu/expr/Expression;

    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, v11}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 v15, 0x0

    aput-object v5, v4, v15

    invoke-direct {v3, v13, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 181
    .local v3, "lastInit":Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/LetExp;

    new-array v5, v12, [Lgnu/expr/Expression;

    aput-object v3, v5, v15

    invoke-direct {v4, v5}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 182
    .local v4, "let2":Lgnu/expr/LetExp;
    invoke-virtual {v4, v10}, Lgnu/expr/LetExp;->add(Lgnu/expr/Declaration;)V

    .line 183
    sget-object v5, Lgnu/kawa/functions/ValuesMap;->valuesMapWithPos:Lgnu/kawa/functions/ValuesMap;

    move-object/from16 v12, p1

    move-object/from16 v15, p2

    invoke-static {v2, v12, v15, v5}, Lgnu/kawa/functions/CompileMisc;->validateApplyValuesMap(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;

    move-result-object v5

    iput-object v5, v4, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 185
    invoke-virtual {v7, v4}, Lgnu/expr/Compilation;->letDone(Lgnu/expr/Expression;)Lgnu/expr/LetExp;

    move-result-object v5

    return-object v5

    .line 93
    .end local v3    # "lastInit":Lgnu/expr/Expression;
    .end local v7    # "parser":Lgnu/expr/Compilation;
    .end local v8    # "dotArg":Lgnu/expr/Declaration;
    .end local v9    # "posArg":Lgnu/expr/Declaration;
    .end local v10    # "lastArg":Lgnu/expr/Declaration;
    .end local v11    # "sequence":Lgnu/expr/Declaration;
    .end local v13    # "sizeMethod":Lgnu/bytecode/Method;
    .end local v14    # "seqType":Lgnu/bytecode/Type;
    .end local v16    # "vproc":Lgnu/xquery/util/ValuesFilter;
    .end local v19    # "args":[Lgnu/expr/Expression;
    .end local v20    # "predType":Lgnu/bytecode/Type;
    .end local v21    # "exp2":Lgnu/expr/Expression;
    .end local v22    # "seq":Lgnu/expr/Expression;
    .local v1, "vproc":Lgnu/xquery/util/ValuesFilter;
    .local v2, "args":[Lgnu/expr/Expression;
    .local v4, "exp2":Lgnu/expr/Expression;
    :cond_5
    move-object/from16 v12, p1

    move-object/from16 v15, p2

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    .end local v1    # "vproc":Lgnu/xquery/util/ValuesFilter;
    .end local v2    # "args":[Lgnu/expr/Expression;
    .end local v4    # "exp2":Lgnu/expr/Expression;
    .restart local v16    # "vproc":Lgnu/xquery/util/ValuesFilter;
    .restart local v19    # "args":[Lgnu/expr/Expression;
    .restart local v21    # "exp2":Lgnu/expr/Expression;
    goto :goto_3

    .end local v6    # "lexp2":Lgnu/expr/LambdaExp;
    .end local v16    # "vproc":Lgnu/xquery/util/ValuesFilter;
    .end local v19    # "args":[Lgnu/expr/Expression;
    .end local v21    # "exp2":Lgnu/expr/Expression;
    .restart local v1    # "vproc":Lgnu/xquery/util/ValuesFilter;
    .restart local v2    # "args":[Lgnu/expr/Expression;
    .restart local v4    # "exp2":Lgnu/expr/Expression;
    :cond_6
    move-object/from16 v12, p1

    move-object/from16 v15, p2

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    .line 96
    .end local v1    # "vproc":Lgnu/xquery/util/ValuesFilter;
    .end local v2    # "args":[Lgnu/expr/Expression;
    .end local v4    # "exp2":Lgnu/expr/Expression;
    .restart local v16    # "vproc":Lgnu/xquery/util/ValuesFilter;
    .restart local v19    # "args":[Lgnu/expr/Expression;
    .restart local v21    # "exp2":Lgnu/expr/Expression;
    :goto_3
    return-object v0
.end method

.method public static validateArithOp(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 0
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 79
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 81
    return-object p0
.end method

.method public static validateBooleanValue(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 8
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 47
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 48
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 49
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 51
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 52
    .local v1, "arg":Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 53
    .local v2, "type":Lgnu/bytecode/Type;
    sget-object v3, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    if-ne v2, v3, :cond_0

    .line 54
    return-object v1

    .line 55
    :cond_0
    if-nez v2, :cond_1

    .line 56
    sget-object v3, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {p0, v3}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 57
    :cond_1
    instance-of v3, v1, Lgnu/expr/QuoteExp;

    if-eqz v3, :cond_3

    .line 59
    move-object v3, v1

    check-cast v3, Lgnu/expr/QuoteExp;

    invoke-virtual {v3}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 62
    .local v3, "value":Ljava/lang/Object;
    :try_start_0
    invoke-static {v3}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    :cond_2
    sget-object v4, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v4

    .line 64
    :catchall_0
    move-exception v4

    .line 66
    .local v4, "ex":Ljava/lang/Throwable;
    const-string v5, "cannot convert to a boolean"

    .line 67
    .local v5, "message":Ljava/lang/String;
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    const/16 v7, 0x65

    invoke-virtual {v6, v7, v5}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 68
    new-instance v6, Lgnu/expr/ErrorExp;

    invoke-direct {v6, v5}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v6

    .line 72
    .end local v1    # "arg":Lgnu/expr/Expression;
    .end local v2    # "type":Lgnu/bytecode/Type;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "ex":Ljava/lang/Throwable;
    .end local v5    # "message":Ljava/lang/String;
    :cond_3
    return-object p0
.end method

.method public static validateCompare(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 7
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 21
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 22
    invoke-virtual {p0, p3, p1}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;

    move-result-object v0

    .line 23
    .local v0, "folded":Lgnu/expr/Expression;
    if-eq v0, p0, :cond_0

    .line 24
    return-object v0

    .line 25
    :cond_0
    move-object v1, p3

    check-cast v1, Lgnu/xquery/util/Compare;

    .line 26
    .local v1, "cproc":Lgnu/xquery/util/Compare;
    iget v2, v1, Lgnu/xquery/util/Compare;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    new-instance v2, Lgnu/expr/ApplyExp;

    const-string v3, "gnu.xquery.util.Compare"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const-string v4, "apply"

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    new-array v4, v5, [Lgnu/expr/Expression;

    new-instance v5, Lgnu/expr/QuoteExp;

    iget v6, v1, Lgnu/xquery/util/Compare;->flags:I

    invoke-static {v6}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0, v6}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-virtual {p0, v6}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object p0, v2

    .line 38
    :goto_0
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getTypeRaw()Lgnu/bytecode/Type;

    move-result-object v2

    if-nez v2, :cond_2

    .line 39
    sget-object v2, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-virtual {p0, v2}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 40
    :cond_2
    return-object p0
.end method
