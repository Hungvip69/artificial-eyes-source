.class public Lgnu/expr/CheckedTarget;
.super Lgnu/expr/StackTarget;
.source "CheckedTarget.java"


# static fields
.field static initWrongTypeProcMethod:Lgnu/bytecode/Method;

.field static initWrongTypeStringMethod:Lgnu/bytecode/Method;

.field static typeClassCastException:Lgnu/bytecode/ClassType;

.field static typeWrongType:Lgnu/bytecode/ClassType;


# instance fields
.field argno:I

.field proc:Lgnu/expr/LambdaExp;

.field procname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 1
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 22
    invoke-direct {p0, p1}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    .line 23
    const/4 v0, -0x4

    iput v0, p0, Lgnu/expr/CheckedTarget;->argno:I

    .line 24
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Type;Lgnu/expr/LambdaExp;I)V
    .locals 1
    .param p1, "type"    # Lgnu/bytecode/Type;
    .param p2, "proc"    # Lgnu/expr/LambdaExp;
    .param p3, "argno"    # I

    .line 28
    invoke-direct {p0, p1}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    .line 29
    iput-object p2, p0, Lgnu/expr/CheckedTarget;->proc:Lgnu/expr/LambdaExp;

    .line 30
    invoke-virtual {p2}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/CheckedTarget;->procname:Ljava/lang/String;

    .line 31
    iput p3, p0, Lgnu/expr/CheckedTarget;->argno:I

    .line 32
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Type;Ljava/lang/String;I)V
    .locals 0
    .param p1, "type"    # Lgnu/bytecode/Type;
    .param p2, "procname"    # Ljava/lang/String;
    .param p3, "argno"    # I

    .line 36
    invoke-direct {p0, p1}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    .line 37
    iput-object p2, p0, Lgnu/expr/CheckedTarget;->procname:Ljava/lang/String;

    .line 38
    iput p3, p0, Lgnu/expr/CheckedTarget;->argno:I

    .line 39
    return-void
.end method

.method public static emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;)V
    .locals 6
    .param p0, "comp"    # Lgnu/expr/Compilation;
    .param p1, "proc"    # Lgnu/expr/LambdaExp;
    .param p2, "argno"    # I
    .param p3, "type"    # Lgnu/bytecode/Type;

    .line 110
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 111
    return-void
.end method

.method public static emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V
    .locals 6
    .param p0, "comp"    # Lgnu/expr/Compilation;
    .param p1, "proc"    # Lgnu/expr/LambdaExp;
    .param p2, "argno"    # I
    .param p3, "type"    # Lgnu/bytecode/Type;
    .param p4, "argValue"    # Lgnu/bytecode/Variable;

    .line 116
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 117
    return-void
.end method

.method static emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V
    .locals 16
    .param p0, "comp"    # Lgnu/expr/Compilation;
    .param p1, "proc"    # Lgnu/expr/LambdaExp;
    .param p2, "procname"    # Ljava/lang/String;
    .param p3, "argno"    # I
    .param p4, "type"    # Lgnu/bytecode/Type;
    .param p5, "argValue"    # Lgnu/bytecode/Variable;

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    .line 128
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->isInTry()Z

    move-result v5

    .line 129
    .local v5, "isInTry":Z
    invoke-static {}, Lgnu/expr/CheckedTarget;->initWrongType()V

    .line 130
    new-instance v6, Lgnu/bytecode/Label;

    invoke-direct {v6, v4}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 132
    .local v6, "startTry":Lgnu/bytecode/Label;
    if-nez p5, :cond_0

    sget-object v7, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-eq v3, v7, :cond_0

    .line 134
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v7

    .line 135
    .local v7, "tmpScope":Lgnu/bytecode/Scope;
    sget-object v8, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v8}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v8

    .line 136
    .end local p5    # "argValue":Lgnu/bytecode/Variable;
    .local v8, "argValue":Lgnu/bytecode/Variable;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 137
    invoke-virtual {v4, v8}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_0

    .line 140
    .end local v7    # "tmpScope":Lgnu/bytecode/Scope;
    .end local v8    # "argValue":Lgnu/bytecode/Variable;
    .restart local p5    # "argValue":Lgnu/bytecode/Variable;
    :cond_0
    const/4 v7, 0x0

    move-object/from16 v8, p5

    .line 141
    .end local p5    # "argValue":Lgnu/bytecode/Variable;
    .restart local v7    # "tmpScope":Lgnu/bytecode/Scope;
    .restart local v8    # "argValue":Lgnu/bytecode/Variable;
    :goto_0
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->getPC()I

    move-result v9

    .line 142
    .local v9, "startPC":I
    invoke-virtual {v6, v4}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 143
    invoke-static {v3, v0}, Lgnu/expr/CheckedTarget;->emitCoerceFromObject(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)V

    .line 145
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->getPC()I

    move-result v10

    .line 150
    .local v10, "endPC":I
    if-eq v10, v9, :cond_b

    sget-object v11, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v3, v11, :cond_1

    goto/16 :goto_5

    .line 160
    :cond_1
    new-instance v11, Lgnu/bytecode/Label;

    invoke-direct {v11, v4}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 161
    .local v11, "endTry":Lgnu/bytecode/Label;
    invoke-virtual {v11, v4}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 163
    new-instance v12, Lgnu/bytecode/Label;

    invoke-direct {v12, v4}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 164
    .local v12, "endLabel":Lgnu/bytecode/Label;
    invoke-virtual {v12, v4}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 165
    if-eqz v5, :cond_2

    .line 166
    invoke-virtual {v4, v12}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 167
    :cond_2
    const/4 v13, 0x0

    .line 168
    .local v13, "fragment_cookie":I
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 169
    if-nez v5, :cond_3

    .line 170
    invoke-virtual {v4, v12}, Lgnu/bytecode/CodeAttr;->beginFragment(Lgnu/bytecode/Label;)I

    move-result v13

    .line 171
    :cond_3
    sget-object v14, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v6, v11, v14}, Lgnu/bytecode/CodeAttr;->addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V

    .line 174
    const/4 v14, 0x0

    .line 175
    .local v14, "thisIsProc":Z
    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/LambdaExp;->isClassGenerated()Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v15, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v15}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v15

    if-nez v15, :cond_4

    .line 178
    iget-object v15, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v15}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v15

    invoke-virtual {v1, v0}, Lgnu/expr/LambdaExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v3

    if-ne v15, v3, :cond_4

    .line 179
    const/4 v14, 0x1

    .line 181
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v3

    .line 182
    .local v3, "line":I
    if-lez v3, :cond_5

    .line 183
    invoke-virtual {v4, v3}, Lgnu/bytecode/CodeAttr;->putLineNumber(I)V

    .line 184
    :cond_5
    sget-object v15, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v15}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 185
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 186
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 187
    if-eqz v14, :cond_6

    .line 188
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    goto :goto_2

    .line 190
    :cond_6
    if-nez p2, :cond_7

    const/4 v15, -0x4

    if-eq v2, v15, :cond_7

    const-string v15, "lambda"

    goto :goto_1

    :cond_7
    move-object/from16 v15, p2

    :goto_1
    invoke-virtual {v4, v15}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 193
    :goto_2
    invoke-virtual {v4, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 194
    invoke-virtual {v4, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 195
    if-eqz v14, :cond_8

    sget-object v15, Lgnu/expr/CheckedTarget;->initWrongTypeProcMethod:Lgnu/bytecode/Method;

    goto :goto_3

    :cond_8
    sget-object v15, Lgnu/expr/CheckedTarget;->initWrongTypeStringMethod:Lgnu/bytecode/Method;

    :goto_3
    invoke-virtual {v4, v15}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 197
    if-eqz v7, :cond_9

    .line 198
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 199
    :cond_9
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 200
    if-eqz v5, :cond_a

    .line 201
    invoke-virtual {v12, v4}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    goto :goto_4

    .line 203
    :cond_a
    invoke-virtual {v4, v13}, Lgnu/bytecode/CodeAttr;->endFragment(I)V

    .line 204
    :goto_4
    return-void

    .line 155
    .end local v3    # "line":I
    .end local v11    # "endTry":Lgnu/bytecode/Label;
    .end local v12    # "endLabel":Lgnu/bytecode/Label;
    .end local v13    # "fragment_cookie":I
    .end local v14    # "thisIsProc":Z
    :cond_b
    :goto_5
    if-eqz v7, :cond_c

    .line 156
    invoke-virtual {v4}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 157
    :cond_c
    return-void
.end method

.method public static emitCheckedCoerce(Lgnu/expr/Compilation;Ljava/lang/String;ILgnu/bytecode/Type;)V
    .locals 6
    .param p0, "comp"    # Lgnu/expr/Compilation;
    .param p1, "procname"    # Ljava/lang/String;
    .param p2, "argno"    # I
    .param p3, "type"    # Lgnu/bytecode/Type;

    .line 104
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 105
    return-void
.end method

.method public static getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;
    .locals 1
    .param p0, "type"    # Lgnu/bytecode/Type;

    .line 55
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_0

    sget-object v0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/expr/CheckedTarget;

    invoke-direct {v0, p0}, Lgnu/expr/CheckedTarget;-><init>(Lgnu/bytecode/Type;)V

    :goto_0
    return-object v0
.end method

.method public static getInstance(Lgnu/bytecode/Type;Lgnu/expr/LambdaExp;I)Lgnu/expr/Target;
    .locals 1
    .param p0, "type"    # Lgnu/bytecode/Type;
    .param p1, "proc"    # Lgnu/expr/LambdaExp;
    .param p2, "argno"    # I

    .line 49
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_0

    sget-object v0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/expr/CheckedTarget;

    invoke-direct {v0, p0, p1, p2}, Lgnu/expr/CheckedTarget;-><init>(Lgnu/bytecode/Type;Lgnu/expr/LambdaExp;I)V

    :goto_0
    return-object v0
.end method

.method public static getInstance(Lgnu/bytecode/Type;Ljava/lang/String;I)Lgnu/expr/Target;
    .locals 1
    .param p0, "type"    # Lgnu/bytecode/Type;
    .param p1, "procname"    # Ljava/lang/String;
    .param p2, "argno"    # I

    .line 43
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_0

    sget-object v0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    goto :goto_0

    :cond_0
    new-instance v0, Lgnu/expr/CheckedTarget;

    invoke-direct {v0, p0, p1, p2}, Lgnu/expr/CheckedTarget;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;I)V

    :goto_0
    return-object v0
.end method

.method public static getInstance(Lgnu/expr/Declaration;)Lgnu/expr/Target;
    .locals 3
    .param p0, "decl"    # Lgnu/expr/Declaration;

    .line 61
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;Ljava/lang/String;I)Lgnu/expr/Target;

    move-result-object v0

    return-object v0
.end method

.method private static initWrongType()V
    .locals 9

    .line 71
    sget-object v0, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    if-nez v0, :cond_0

    .line 72
    const-string v0, "java.lang.ClassCastException"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    .line 73
    :cond_0
    sget-object v0, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    if-nez v0, :cond_1

    .line 75
    const-string v0, "gnu.mapping.WrongType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    .line 76
    const/4 v0, 0x4

    new-array v1, v0, [Lgnu/bytecode/Type;

    .line 77
    .local v1, "args":[Lgnu/bytecode/Type;
    sget-object v2, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 78
    sget-object v2, Lgnu/expr/Compilation;->javaStringType:Lgnu/bytecode/ClassType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 79
    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 80
    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 81
    sget-object v2, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    sget-object v7, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const-string v8, "<init>"

    invoke-virtual {v2, v8, v4, v1, v7}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    sput-object v2, Lgnu/expr/CheckedTarget;->initWrongTypeStringMethod:Lgnu/bytecode/Method;

    .line 84
    new-array v0, v0, [Lgnu/bytecode/Type;

    .line 85
    .end local v1    # "args":[Lgnu/bytecode/Type;
    .local v0, "args":[Lgnu/bytecode/Type;
    sget-object v1, Lgnu/expr/CheckedTarget;->typeClassCastException:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v3

    .line 86
    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v4

    .line 87
    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v1, v0, v5

    .line 88
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v1, v0, v6

    .line 89
    sget-object v1, Lgnu/expr/CheckedTarget;->typeWrongType:Lgnu/bytecode/ClassType;

    sget-object v2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v8, v4, v0, v2}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/expr/CheckedTarget;->initWrongTypeProcMethod:Lgnu/bytecode/Method;

    .line 93
    .end local v0    # "args":[Lgnu/bytecode/Type;
    :cond_1
    return-void
.end method


# virtual methods
.method public compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .locals 7
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "stackType"    # Lgnu/bytecode/Type;

    .line 97
    invoke-virtual {p0, p1, p2}, Lgnu/expr/CheckedTarget;->compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v2, p0, Lgnu/expr/CheckedTarget;->proc:Lgnu/expr/LambdaExp;

    iget-object v3, p0, Lgnu/expr/CheckedTarget;->procname:Ljava/lang/String;

    iget v4, p0, Lgnu/expr/CheckedTarget;->argno:I

    iget-object v5, p0, Lgnu/expr/CheckedTarget;->type:Lgnu/bytecode/Type;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;Ljava/lang/String;ILgnu/bytecode/Type;Lgnu/bytecode/Variable;)V

    .line 99
    :cond_0
    return-void
.end method
