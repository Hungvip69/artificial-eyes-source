.class public Lgnu/expr/ApplyExp;
.super Lgnu/expr/Expression;
.source "ApplyExp.java"


# static fields
.field public static final INLINE_IF_CONSTANT:I = 0x4

.field public static final MAY_CONTAIN_BACK_JUMP:I = 0x8

.field public static final TAILCALL:I = 0x2


# instance fields
.field args:[Lgnu/expr/Expression;

.field context:Lgnu/expr/LambdaExp;

.field func:Lgnu/expr/Expression;

.field public nextCall:Lgnu/expr/ApplyExp;

.field protected type:Lgnu/bytecode/Type;


# direct methods
.method public varargs constructor <init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V
    .locals 2
    .param p1, "m"    # Lgnu/bytecode/Method;
    .param p2, "a"    # [Lgnu/expr/Expression;

    .line 52
    new-instance v0, Lgnu/expr/QuoteExp;

    new-instance v1, Lgnu/expr/PrimProcedure;

    invoke-direct {v1, p1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 53
    return-void
.end method

.method public varargs constructor <init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V
    .locals 0
    .param p1, "f"    # Lgnu/expr/Expression;
    .param p2, "a"    # [Lgnu/expr/Expression;

    .line 46
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    iput-object p1, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    iput-object p2, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-void
.end method

.method public varargs constructor <init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V
    .locals 1
    .param p1, "p"    # Lgnu/mapping/Procedure;
    .param p2, "a"    # [Lgnu/expr/Expression;

    .line 48
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    iput-object p2, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-void
.end method

.method public static asInlineable(Lgnu/mapping/Procedure;)Lgnu/expr/Inlineable;
    .locals 1
    .param p0, "proc"    # Lgnu/mapping/Procedure;

    .line 575
    instance-of v0, p0, Lgnu/expr/Inlineable;

    if-eqz v0, :cond_0

    .line 576
    move-object v0, p0

    check-cast v0, Lgnu/expr/Inlineable;

    return-object v0

    .line 577
    :cond_0
    sget-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    invoke-virtual {v0, p0}, Lgnu/mapping/LazyPropertyKey;->get(Lgnu/mapping/PropertySet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Inlineable;

    return-object v0
.end method

.method public static compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 115
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Z)V

    .line 116
    return-void
.end method

.method static compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Z)V
    .locals 19
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;
    .param p3, "checkInlineable"    # Z

    .line 121
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v4, v0

    .line 122
    .local v4, "args_length":I
    iget-object v5, v1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 123
    .local v5, "exp_func":Lgnu/expr/Expression;
    const/4 v0, 0x0

    .line 124
    .local v0, "func_lambda":Lgnu/expr/LambdaExp;
    const/4 v6, 0x0

    .line 125
    .local v6, "func_name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 126
    .local v7, "owner":Lgnu/expr/Declaration;
    const/4 v8, 0x0

    .line 127
    .local v8, "quotedValue":Ljava/lang/Object;
    instance-of v9, v5, Lgnu/expr/LambdaExp;

    if-eqz v9, :cond_1

    .line 129
    move-object v0, v5

    check-cast v0, Lgnu/expr/LambdaExp;

    .line 130
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v6

    .line 131
    if-nez v6, :cond_0

    .line 132
    const-string v6, "<lambda>"

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    goto/16 :goto_2

    .line 131
    :cond_0
    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    goto/16 :goto_2

    .line 134
    :cond_1
    instance-of v9, v5, Lgnu/expr/ReferenceExp;

    if-eqz v9, :cond_6

    .line 136
    move-object v9, v5

    check-cast v9, Lgnu/expr/ReferenceExp;

    .line 137
    .local v9, "func_ref":Lgnu/expr/ReferenceExp;
    invoke-virtual {v9}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    .line 138
    iget-object v10, v9, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 140
    .local v10, "func_decl":Lgnu/expr/Declaration;
    :goto_0
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v10, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v11, v11, Lgnu/expr/ReferenceExp;

    if-eqz v11, :cond_3

    .line 142
    iget-object v11, v10, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    move-object v9, v11

    check-cast v9, Lgnu/expr/ReferenceExp;

    .line 143
    if-nez v7, :cond_3

    invoke-virtual {v10}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v9, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-nez v11, :cond_2

    .line 144
    goto :goto_1

    .line 145
    :cond_2
    iget-object v10, v9, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 146
    invoke-virtual {v9}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    goto :goto_0

    .line 148
    :cond_3
    :goto_1
    const-wide/32 v11, 0x10000

    invoke-virtual {v10, v11, v12}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v11

    if-nez v11, :cond_5

    .line 150
    invoke-virtual {v10}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v11

    .line 151
    .local v11, "value":Lgnu/expr/Expression;
    invoke-virtual {v10}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v6

    .line 152
    if-eqz v11, :cond_4

    instance-of v12, v11, Lgnu/expr/LambdaExp;

    if-eqz v12, :cond_4

    .line 153
    move-object v0, v11

    check-cast v0, Lgnu/expr/LambdaExp;

    .line 154
    :cond_4
    if-eqz v11, :cond_5

    instance-of v12, v11, Lgnu/expr/QuoteExp;

    if-eqz v12, :cond_5

    .line 155
    move-object v12, v11

    check-cast v12, Lgnu/expr/QuoteExp;

    invoke-virtual {v12}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 157
    .end local v9    # "func_ref":Lgnu/expr/ReferenceExp;
    .end local v10    # "func_decl":Lgnu/expr/Declaration;
    .end local v11    # "value":Lgnu/expr/Expression;
    :cond_5
    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    goto :goto_2

    .line 158
    :cond_6
    instance-of v9, v5, Lgnu/expr/QuoteExp;

    if-eqz v9, :cond_7

    .line 160
    move-object v9, v5

    check-cast v9, Lgnu/expr/QuoteExp;

    invoke-virtual {v9}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    goto :goto_2

    .line 158
    :cond_7
    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    .line 162
    .end local v0    # "func_lambda":Lgnu/expr/LambdaExp;
    .local v6, "func_lambda":Lgnu/expr/LambdaExp;
    .local v7, "func_name":Ljava/lang/String;
    .local v8, "owner":Lgnu/expr/Declaration;
    .local v9, "quotedValue":Ljava/lang/Object;
    :goto_2
    const/16 v10, 0x65

    if-eqz p3, :cond_b

    instance-of v0, v9, Lgnu/mapping/Procedure;

    if-eqz v0, :cond_b

    .line 164
    move-object v11, v9

    check-cast v11, Lgnu/mapping/Procedure;

    .line 165
    .local v11, "proc":Lgnu/mapping/Procedure;
    instance-of v0, v3, Lgnu/expr/IgnoreTarget;

    if-eqz v0, :cond_9

    invoke-virtual {v11}, Lgnu/mapping/Procedure;->isSideEffectFree()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v4, :cond_8

    .line 168
    iget-object v10, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v10, v10, v0

    invoke-virtual {v10, v2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 169
    .end local v0    # "i":I
    :cond_8
    return-void

    .line 173
    :cond_9
    :try_start_0
    invoke-static {v11, v1, v2, v3}, Lgnu/expr/ApplyExp;->inlineCompile(Lgnu/mapping/Procedure;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_a

    .line 174
    return-void

    .line 180
    :cond_a
    goto :goto_4

    .line 176
    :catchall_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 178
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "caught exception in inline-compiler for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v10, v13, v0}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    return-void

    .line 183
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v11    # "proc":Lgnu/mapping/Procedure;
    :cond_b
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 186
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    const/4 v11, 0x2

    const/4 v13, 0x0

    if-eqz v6, :cond_1a

    .line 188
    iget v14, v6, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v14, :cond_d

    iget v14, v6, Lgnu/expr/LambdaExp;->max_args:I

    if-gt v4, v14, :cond_c

    goto :goto_5

    :cond_c
    move-object/from16 v18, v7

    goto/16 :goto_b

    :cond_d
    :goto_5
    iget v14, v6, Lgnu/expr/LambdaExp;->min_args:I

    if-lt v4, v14, :cond_19

    .line 193
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v14

    .line 196
    .local v14, "conv":I
    invoke-virtual {v2, v6}, Lgnu/expr/Compilation;->inlineOk(Lgnu/expr/Expression;)Z

    move-result v15

    if-eqz v15, :cond_18

    if-le v14, v11, :cond_f

    const/4 v15, 0x3

    if-ne v14, v15, :cond_e

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v15

    if-nez v15, :cond_e

    goto :goto_6

    :cond_e
    move-object/from16 v18, v7

    goto/16 :goto_c

    :cond_f
    :goto_6
    invoke-virtual {v6, v4}, Lgnu/expr/LambdaExp;->getMethod(I)Lgnu/bytecode/Method;

    move-result-object v15

    move-object/from16 v16, v15

    .local v16, "method":Lgnu/bytecode/Method;
    if-eqz v15, :cond_17

    .line 202
    new-instance v10, Lgnu/expr/PrimProcedure;

    move-object/from16 v15, v16

    .end local v16    # "method":Lgnu/bytecode/Method;
    .local v15, "method":Lgnu/bytecode/Method;
    invoke-direct {v10, v15, v6}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/LambdaExp;)V

    .line 203
    .local v10, "pproc":Lgnu/expr/PrimProcedure;
    invoke-virtual {v15}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v11

    .line 204
    .local v11, "is_static":Z
    const/16 v16, 0x0

    .line 206
    .local v16, "extraArg":Z
    if-eqz v11, :cond_11

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->declareClosureEnv()Lgnu/bytecode/Variable;

    move-result-object v17

    if-eqz v17, :cond_10

    goto :goto_7

    :cond_10
    move-object/from16 v18, v7

    goto :goto_9

    .line 208
    :cond_11
    :goto_7
    if-eqz v11, :cond_12

    .line 209
    const/16 v16, 0x1

    .line 210
    :cond_12
    iget-object v12, v2, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    if-ne v12, v6, :cond_14

    .line 211
    iget-object v12, v6, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-eqz v12, :cond_13

    iget-object v12, v6, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto :goto_8

    :cond_13
    iget-object v12, v6, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    :goto_8
    invoke-virtual {v0, v12}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    move-object/from16 v18, v7

    goto :goto_9

    .line 214
    :cond_14
    if-eqz v8, :cond_15

    .line 215
    sget-object v12, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    move-object/from16 v18, v7

    const/4 v7, 0x0

    .end local v7    # "func_name":Ljava/lang/String;
    .local v18, "func_name":Ljava/lang/String;
    invoke-virtual {v8, v7, v13, v2, v12}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_9

    .line 217
    .end local v18    # "func_name":Ljava/lang/String;
    .restart local v7    # "func_name":Ljava/lang/String;
    :cond_15
    move-object/from16 v18, v7

    .end local v7    # "func_name":Ljava/lang/String;
    .restart local v18    # "func_name":Ljava/lang/String;
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v7

    invoke-virtual {v7, v2}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 220
    :goto_9
    if-eqz v16, :cond_16

    sget-object v12, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    goto :goto_a

    :cond_16
    const/4 v12, 0x0

    :goto_a
    invoke-virtual {v10, v12, v1, v2, v3}, Lgnu/expr/PrimProcedure;->compile(Lgnu/bytecode/Type;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 222
    return-void

    .line 196
    .end local v10    # "pproc":Lgnu/expr/PrimProcedure;
    .end local v11    # "is_static":Z
    .end local v15    # "method":Lgnu/bytecode/Method;
    .end local v18    # "func_name":Ljava/lang/String;
    .restart local v7    # "func_name":Ljava/lang/String;
    .local v16, "method":Lgnu/bytecode/Method;
    :cond_17
    move-object/from16 v18, v7

    move-object/from16 v15, v16

    .end local v7    # "func_name":Ljava/lang/String;
    .end local v16    # "method":Lgnu/bytecode/Method;
    .restart local v15    # "method":Lgnu/bytecode/Method;
    .restart local v18    # "func_name":Ljava/lang/String;
    goto :goto_c

    .end local v15    # "method":Lgnu/bytecode/Method;
    .end local v18    # "func_name":Ljava/lang/String;
    .restart local v7    # "func_name":Ljava/lang/String;
    :cond_18
    move-object/from16 v18, v7

    .end local v7    # "func_name":Ljava/lang/String;
    .restart local v18    # "func_name":Ljava/lang/String;
    goto :goto_c

    .line 188
    .end local v14    # "conv":I
    .end local v18    # "func_name":Ljava/lang/String;
    .restart local v7    # "func_name":Ljava/lang/String;
    :cond_19
    move-object/from16 v18, v7

    .line 191
    .end local v7    # "func_name":Ljava/lang/String;
    .restart local v18    # "func_name":Ljava/lang/String;
    :goto_b
    new-instance v7, Ljava/lang/Error;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "internal error - wrong number of parameters for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .line 186
    .end local v18    # "func_name":Ljava/lang/String;
    .restart local v7    # "func_name":Ljava/lang/String;
    :cond_1a
    move-object/from16 v18, v7

    .line 284
    .end local v7    # "func_name":Ljava/lang/String;
    .restart local v18    # "func_name":Ljava/lang/String;
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v7

    if-eqz v7, :cond_1b

    if-eqz v6, :cond_1b

    iget-object v7, v2, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    if-ne v6, v7, :cond_1b

    const/4 v7, 0x1

    goto :goto_d

    :cond_1b
    const/4 v7, 0x0

    .line 288
    .local v7, "tail_recurse":Z
    :goto_d
    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v14

    if-eqz v14, :cond_1d

    if-nez v7, :cond_1d

    iget v14, v6, Lgnu/expr/LambdaExp;->min_args:I

    if-ne v14, v4, :cond_1d

    .line 291
    iget-object v10, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    const/4 v11, 0x0

    invoke-static {v6, v10, v11, v2}, Lgnu/expr/ApplyExp;->pushArgs(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;[ILgnu/expr/Compilation;)V

    .line 292
    const/16 v10, 0x80

    invoke-virtual {v6, v10}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 294
    invoke-static {v0, v6, v11, v13}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V

    .line 295
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v10

    invoke-virtual {v0, v13, v10}, Lgnu/bytecode/CodeAttr;->emitTailCall(ZLgnu/bytecode/Scope;)V

    .line 296
    return-void

    .line 298
    :cond_1c
    iget v11, v6, Lgnu/expr/LambdaExp;->flags:I

    or-int/2addr v10, v11

    iput v10, v6, Lgnu/expr/LambdaExp;->flags:I

    .line 299
    iget-object v10, v2, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 300
    .local v10, "saveLambda":Lgnu/expr/LambdaExp;
    iput-object v6, v2, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 301
    invoke-virtual {v6, v2}, Lgnu/expr/LambdaExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 302
    invoke-virtual {v6, v2}, Lgnu/expr/LambdaExp;->allocParameters(Lgnu/expr/Compilation;)V

    .line 303
    const/4 v11, 0x0

    invoke-static {v0, v6, v11, v13}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V

    .line 304
    invoke-virtual {v6, v2}, Lgnu/expr/LambdaExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 305
    iget-object v11, v6, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v11, v2, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 306
    invoke-virtual {v6, v2}, Lgnu/expr/LambdaExp;->compileEnd(Lgnu/expr/Compilation;)V

    .line 307
    invoke-virtual {v6, v2}, Lgnu/expr/LambdaExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    .line 308
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 309
    iput-object v10, v2, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 310
    return-void

    .line 313
    .end local v10    # "saveLambda":Lgnu/expr/LambdaExp;
    :cond_1d
    iget-object v14, v2, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v14}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v14

    const/4 v15, 0x4

    if-eqz v14, :cond_24

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v14

    if-nez v14, :cond_1f

    instance-of v14, v3, Lgnu/expr/ConsumerTarget;

    if-eqz v14, :cond_1e

    goto :goto_e

    :cond_1e
    const/4 v12, 0x1

    goto/16 :goto_12

    :cond_1f
    :goto_e
    iget-object v14, v2, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v14}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v14

    if-nez v14, :cond_24

    .line 317
    sget-object v10, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    .line 318
    .local v10, "typeContext":Lgnu/bytecode/ClassType;
    new-instance v14, Lgnu/expr/StackTarget;

    sget-object v12, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-direct {v14, v12}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v5, v2, v14}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 320
    if-gt v4, v15, :cond_21

    .line 322
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_f
    if-ge v11, v4, :cond_20

    .line 323
    iget-object v12, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v12, v12, v11

    sget-object v14, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v12, v2, v14}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 322
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 324
    .end local v11    # "i":I
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 325
    sget-object v11, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "check"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v11, v12, v14}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v11

    invoke-virtual {v0, v11}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_10

    .line 331
    :cond_21
    iget-object v12, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-static {v12, v2}, Lgnu/expr/ApplyExp;->compileToArray([Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 332
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 333
    sget-object v12, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v14, "checkN"

    invoke-virtual {v12, v14, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v11

    invoke-virtual {v0, v11}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 336
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v11

    if-eqz v11, :cond_22

    .line 338
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    goto :goto_11

    .line 340
    :cond_22
    move-object v11, v3

    check-cast v11, Lgnu/expr/ConsumerTarget;

    invoke-virtual {v11}, Lgnu/expr/ConsumerTarget;->isContextTarget()Z

    move-result v11

    if-eqz v11, :cond_23

    .line 342
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 343
    const-string v11, "runUntilDone"

    invoke-virtual {v10, v11, v13}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v11

    invoke-virtual {v0, v11}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_11

    .line 347
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 348
    move-object v11, v3

    check-cast v11, Lgnu/expr/ConsumerTarget;

    invoke-virtual {v11}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object v11

    invoke-virtual {v0, v11}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 349
    const-string v11, "runUntilValue"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v11

    invoke-virtual {v0, v11}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 351
    :goto_11
    return-void

    .line 313
    .end local v10    # "typeContext":Lgnu/bytecode/ClassType;
    :cond_24
    const/4 v12, 0x1

    .line 354
    :goto_12
    if-nez v7, :cond_25

    .line 355
    new-instance v11, Lgnu/expr/StackTarget;

    sget-object v14, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-direct {v11, v14}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v5, v2, v11}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 357
    :cond_25
    if-eqz v7, :cond_26

    iget v11, v6, Lgnu/expr/LambdaExp;->min_args:I

    iget v14, v6, Lgnu/expr/LambdaExp;->max_args:I

    if-eq v11, v14, :cond_27

    goto :goto_13

    :cond_26
    if-le v4, v15, :cond_27

    :goto_13
    goto :goto_14

    :cond_27
    const/4 v12, 0x0

    :goto_14
    move v11, v12

    .line 360
    .local v11, "toArray":Z
    const/4 v12, 0x0

    .line 361
    .local v12, "incValues":[I
    if-eqz v11, :cond_28

    .line 363
    iget-object v14, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-static {v14, v2}, Lgnu/expr/ApplyExp;->compileToArray([Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 364
    sget-object v14, Lgnu/expr/Compilation;->applyNmethod:Lgnu/bytecode/Method;

    .local v14, "method":Lgnu/bytecode/Method;
    goto :goto_17

    .line 366
    .end local v14    # "method":Lgnu/bytecode/Method;
    :cond_28
    if-eqz v7, :cond_29

    .line 368
    iget-object v14, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v14, v14

    new-array v12, v14, [I

    .line 369
    iget-object v14, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-static {v6, v14, v12, v2}, Lgnu/expr/ApplyExp;->pushArgs(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;[ILgnu/expr/Compilation;)V

    .line 370
    const/4 v14, 0x0

    .restart local v14    # "method":Lgnu/bytecode/Method;
    goto :goto_17

    .line 374
    .end local v14    # "method":Lgnu/bytecode/Method;
    :cond_29
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_15
    if-ge v14, v4, :cond_2b

    .line 376
    iget-object v15, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v15, v15, v14

    sget-object v13, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v15, v2, v13}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 377
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v13

    if-nez v13, :cond_2a

    .line 378
    goto :goto_16

    .line 374
    :cond_2a
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    goto :goto_15

    .line 380
    .end local v14    # "i":I
    :cond_2b
    :goto_16
    sget-object v13, Lgnu/expr/Compilation;->applymethods:[Lgnu/bytecode/Method;

    aget-object v14, v13, v4

    .line 382
    .local v14, "method":Lgnu/bytecode/Method;
    :goto_17
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v13

    if-nez v13, :cond_2c

    .line 384
    const-string v13, "unreachable code"

    invoke-virtual {v2, v10, v13}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 385
    return-void

    .line 387
    :cond_2c
    if-eqz v7, :cond_2d

    .line 389
    invoke-static {v0, v6, v12, v11}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V

    .line 390
    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v10

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v10}, Lgnu/bytecode/CodeAttr;->emitTailCall(ZLgnu/bytecode/Scope;)V

    .line 391
    return-void

    .line 393
    :cond_2d
    invoke-virtual {v0, v14}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 394
    sget-object v10, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v2, v10}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 395
    return-void
.end method

.method public static compileToArray([Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 4
    .param p0, "args"    # [Lgnu/expr/Expression;
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 69
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 70
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    array-length v1, p0

    if-nez v1, :cond_0

    .line 72
    sget-object v1, Lgnu/expr/Compilation;->noArgsField:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 73
    return-void

    .line 75
    :cond_0
    array-length v1, p0

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 76
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 77
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 79
    aget-object v2, p0, v1

    .line 80
    .local v2, "arg":Lgnu/expr/Expression;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Lgnu/expr/QuoteExp;

    if-nez v3, :cond_1

    instance-of v3, v2, Lgnu/expr/ReferenceExp;

    if-nez v3, :cond_1

    .line 91
    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v2, p1, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 92
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 93
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v3}, Lgnu/bytecode/CodeAttr;->emitDup(II)V

    .line 94
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 95
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 96
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    goto :goto_1

    .line 100
    :cond_1
    sget-object v3, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 101
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 102
    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v2, p1, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 104
    :goto_1
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 77
    .end local v2    # "arg":Lgnu/expr/Expression;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method static derefFunc(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 3
    .param p0, "afunc"    # Lgnu/expr/Expression;

    .line 541
    instance-of v0, p0, Lgnu/expr/ReferenceExp;

    if-eqz v0, :cond_0

    .line 543
    move-object v0, p0

    check-cast v0, Lgnu/expr/ReferenceExp;

    iget-object v0, v0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 544
    .local v0, "func_decl":Lgnu/expr/Declaration;
    invoke-static {v0}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 545
    if-eqz v0, :cond_0

    const-wide/32 v1, 0x10000

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 546
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object p0

    .line 548
    .end local v0    # "func_decl":Lgnu/expr/Declaration;
    :cond_0
    return-object p0
.end method

.method static inlineCompile(Lgnu/mapping/Procedure;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)Z
    .locals 2
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 583
    invoke-static {p0}, Lgnu/expr/ApplyExp;->asInlineable(Lgnu/mapping/Procedure;)Lgnu/expr/Inlineable;

    move-result-object v0

    .line 584
    .local v0, "compiler":Lgnu/expr/Inlineable;
    if-nez v0, :cond_0

    .line 585
    const/4 v1, 0x0

    return v1

    .line 586
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lgnu/expr/Inlineable;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 587
    const/4 v1, 0x1

    return v1
.end method

.method private static popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V
    .locals 6
    .param p0, "code"    # Lgnu/bytecode/CodeAttr;
    .param p1, "paramNo"    # I
    .param p2, "count"    # I
    .param p3, "incValues"    # [I
    .param p4, "decl"    # Lgnu/expr/Declaration;
    .param p5, "vars"    # Lgnu/bytecode/Variable;

    .line 493
    if-lez p2, :cond_2

    .line 495
    add-int/lit8 p2, p2, -0x1

    .line 496
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    invoke-virtual {p4}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v5, p5

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v0

    move-object v5, v0

    :goto_0
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V

    .line 498
    invoke-virtual {p4}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 500
    if-eqz p3, :cond_1

    aget v0, p3, p1

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_1

    .line 501
    aget v0, p3, p1

    int-to-short v0, v0

    invoke-virtual {p0, p5, v0}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    goto :goto_1

    .line 503
    :cond_1
    invoke-virtual {p0, p5}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 506
    :cond_2
    :goto_1
    return-void
.end method

.method private static popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V
    .locals 8
    .param p0, "code"    # Lgnu/bytecode/CodeAttr;
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;
    .param p2, "incValues"    # [I
    .param p3, "toArray"    # Z

    .line 470
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v0

    .line 471
    .local v0, "vars":Lgnu/bytecode/Variable;
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    .line 472
    .local v7, "decls":Lgnu/expr/Declaration;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "this"

    if-ne v1, v2, :cond_0

    .line 473
    invoke-virtual {v0}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v0

    .line 474
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "$ctx"

    if-ne v1, v2, :cond_1

    .line 475
    invoke-virtual {v0}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v0

    .line 476
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "argsArray"

    if-ne v1, v2, :cond_3

    .line 478
    if-eqz p3, :cond_2

    .line 480
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move-object v5, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V

    .line 481
    return-void

    .line 483
    :cond_2
    invoke-virtual {v0}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v0

    .line 485
    :cond_3
    const/4 v2, 0x0

    iget v3, p1, Lgnu/expr/LambdaExp;->min_args:I

    move-object v1, p0

    move-object v4, p2

    move-object v5, v7

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V

    .line 486
    return-void
.end method

.method private static pushArgs(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;[ILgnu/expr/Compilation;)V
    .locals 6
    .param p0, "lexp"    # Lgnu/expr/LambdaExp;
    .param p1, "args"    # [Lgnu/expr/Expression;
    .param p2, "incValues"    # [I
    .param p3, "comp"    # Lgnu/expr/Compilation;

    .line 450
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 451
    .local v0, "param":Lgnu/expr/Declaration;
    array-length v1, p1

    .line 452
    .local v1, "args_length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 454
    aget-object v3, p1, v2

    .line 455
    .local v3, "arg":Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 456
    sget-object v4, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v3, p3, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_1

    .line 457
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {v3, v0}, Lgnu/expr/SetExp;->canUseInc(Lgnu/expr/Expression;Lgnu/expr/Declaration;)I

    move-result v4

    aput v4, p2, v2

    const/high16 v5, 0x10000

    if-eq v4, v5, :cond_1

    .line 459
    goto :goto_1

    .line 461
    :cond_1
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-static {v4}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 463
    :goto_1
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 452
    .end local v3    # "arg":Lgnu/expr/Expression;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    .end local v2    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 5
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "proc":Ljava/lang/Object;
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v1

    .line 61
    .local v1, "n":I
    new-array v2, v1, [Ljava/lang/Object;

    .line 62
    .local v2, "vals":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 63
    iget-object v4, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 62
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    .end local v3    # "i":I
    :cond_0
    move-object v3, v0

    check-cast v3, Lgnu/mapping/Procedure;

    invoke-virtual {v3, v2, p1}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 65
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 110
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Z)V

    .line 111
    return-void
.end method

.method public deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 4
    .param p1, "mapper"    # Lgnu/kawa/util/IdentityHashTable;

    .line 399
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-static {v0, p1}, Lgnu/expr/ApplyExp;->deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object v0

    .line 400
    .local v0, "f":Lgnu/expr/Expression;
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-static {v1, p1}, Lgnu/expr/ApplyExp;->deepCopy([Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)[Lgnu/expr/Expression;

    move-result-object v1

    .line 401
    .local v1, "a":[Lgnu/expr/Expression;
    if-nez v0, :cond_0

    iget-object v2, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    if-nez v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    iget-object v2, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    if-eqz v2, :cond_2

    .line 402
    :cond_1
    const/4 v2, 0x0

    return-object v2

    .line 403
    :cond_2
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 404
    .local v2, "copy":Lgnu/expr/ApplyExp;
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFlags()I

    move-result v3

    iput v3, v2, Lgnu/expr/ApplyExp;->flags:I

    .line 405
    return-object v2
.end method

.method public getArg(I)Lgnu/expr/Expression;
    .locals 1
    .param p1, "i"    # I

    .line 34
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getArgCount()I
    .locals 1

    .line 31
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v0, v0

    return v0
.end method

.method public final getArgs()[Lgnu/expr/Expression;
    .locals 1

    .line 30
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getFunction()Lgnu/expr/Expression;
    .locals 1

    .line 29
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getFunctionValue()Ljava/lang/Object;
    .locals 1

    .line 43
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 4

    .line 553
    iget-object v0, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    return-object v0

    .line 555
    :cond_0
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-static {v0}, Lgnu/expr/ApplyExp;->derefFunc(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    .line 557
    .local v0, "afunc":Lgnu/expr/Expression;
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    iput-object v1, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    .line 558
    instance-of v1, v0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_2

    .line 560
    move-object v1, v0

    check-cast v1, Lgnu/expr/QuoteExp;

    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 563
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/mapping/Procedure;

    if-eqz v2, :cond_1

    .line 564
    move-object v2, v1

    check-cast v2, Lgnu/mapping/Procedure;

    iget-object v3, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v2

    iput-object v2, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    .line 565
    .end local v1    # "value":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 566
    :cond_2
    instance-of v1, v0, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_3

    .line 568
    move-object v1, v0

    check-cast v1, Lgnu/expr/LambdaExp;

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    .line 570
    :cond_3
    :goto_0
    iget-object v1, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    return-object v1
.end method

.method public final getTypeRaw()Lgnu/bytecode/Type;
    .locals 1

    .line 513
    iget-object v0, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public final inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "visitor"    # Lgnu/expr/InlineCalls;

    .line 592
    invoke-virtual {p2}, Lgnu/expr/InlineCalls;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/text/SourceMessages;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/text/SourceMessages;)Lgnu/expr/Expression;
    .locals 6
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "messages"    # Lgnu/text/SourceMessages;

    .line 603
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v0, v0

    .line 604
    .local v0, "len":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 605
    .local v1, "vals":[Ljava/lang/Object;
    move v2, v0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 607
    iget-object v3, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v3, v3, v2

    .line 608
    .local v3, "arg":Lgnu/expr/Expression;
    instance-of v4, v3, Lgnu/expr/ReferenceExp;

    if-eqz v4, :cond_0

    .line 610
    move-object v4, v3

    check-cast v4, Lgnu/expr/ReferenceExp;

    invoke-virtual {v4}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v4

    .line 611
    .local v4, "decl":Lgnu/expr/Declaration;
    if-eqz v4, :cond_0

    .line 613
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v3

    .line 614
    sget-object v5, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v3, v5, :cond_0

    .line 615
    return-object p0

    .line 618
    .end local v4    # "decl":Lgnu/expr/Declaration;
    :cond_0
    instance-of v4, v3, Lgnu/expr/QuoteExp;

    if-nez v4, :cond_1

    .line 619
    return-object p0

    .line 620
    :cond_1
    move-object v4, v3

    check-cast v4, Lgnu/expr/QuoteExp;

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v2

    .line 621
    .end local v3    # "arg":Lgnu/expr/Expression;
    goto :goto_0

    .line 624
    .end local v2    # "i":I
    :cond_2
    :try_start_0
    new-instance v2, Lgnu/expr/QuoteExp;

    invoke-virtual {p1, v1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    invoke-direct {v2, v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 626
    :catchall_0
    move-exception v2

    .line 628
    .local v2, "ex":Ljava/lang/Throwable;
    if-eqz p2, :cond_3

    .line 629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " throws "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x77

    invoke-virtual {p2, v4, v3}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 631
    :cond_3
    return-object p0
.end method

.method public final isTailCall()Z
    .locals 1

    .line 36
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method protected mustCompile()Z
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 3
    .param p1, "out"    # Lgnu/mapping/OutPort;

    .line 427
    const/4 v0, 0x2

    const-string v1, "(Apply"

    const-string v2, ")"

    invoke-virtual {p1, v1, v2, v0}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 428
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const-string v0, " [tailcall]"

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 430
    :cond_0
    iget-object v0, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v0, v1, :cond_1

    .line 432
    const-string v0, " => "

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 435
    :cond_1
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 436
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 437
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 438
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 440
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 441
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public setArg(ILgnu/expr/Expression;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "arg"    # Lgnu/expr/Expression;

    .line 35
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aput-object p2, v0, p1

    return-void
.end method

.method public setArgs([Lgnu/expr/Expression;)V
    .locals 0
    .param p1, "args"    # [Lgnu/expr/Expression;

    .line 33
    iput-object p1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-void
.end method

.method public setFunction(Lgnu/expr/Expression;)V
    .locals 0
    .param p1, "func"    # Lgnu/expr/Expression;

    .line 32
    iput-object p1, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    return-void
.end method

.method public final setTailCall(Z)V
    .locals 1
    .param p1, "tailCall"    # Z

    .line 38
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ApplyExp;->setFlag(ZI)V

    return-void
.end method

.method public final setType(Lgnu/bytecode/Type;)V
    .locals 0
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 518
    iput-object p1, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    .line 519
    return-void
.end method

.method public side_effects()Z
    .locals 6

    .line 523
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-static {v0}, Lgnu/expr/ApplyExp;->derefFunc(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v0

    .line 524
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/mapping/Procedure;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lgnu/mapping/Procedure;

    invoke-virtual {v1}, Lgnu/mapping/Procedure;->isSideEffectFree()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 527
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 528
    .local v1, "a":[Lgnu/expr/Expression;
    array-length v3, v1

    .line 529
    .local v3, "alen":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 531
    aget-object v5, v1, v4

    invoke-virtual {v5}, Lgnu/expr/Expression;->side_effects()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 532
    return v2

    .line 529
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 534
    .end local v4    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 536
    .end local v1    # "a":[Lgnu/expr/Expression;
    .end local v3    # "alen":I
    :cond_2
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 637
    sget-object v0, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-ne p0, v0, :cond_0

    .line 638
    const-string v0, "ApplyExp[unknownContinuation]"

    return-object v0

    .line 639
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplyExp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 410
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArgs(Lgnu/expr/InlineCalls;)V
    .locals 3
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;

    .line 415
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lgnu/expr/InlineCalls;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 416
    return-void
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)V"
        }
    .end annotation

    .line 420
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 421
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v1

    invoke-virtual {p1, v0, v1, p2}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 423
    :cond_0
    return-void
.end method
