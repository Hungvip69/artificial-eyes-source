.class public Lgnu/kawa/reflect/CompileReflect;
.super Ljava/lang/Object;
.source "CompileReflect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I
    .locals 3
    .param p0, "type"    # Lgnu/bytecode/Type;
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 16
    instance-of v0, p0, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/Type;->isExisting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    const/4 v0, 0x1

    return v0

    .line 23
    :catch_0
    move-exception v0

    .line 25
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {p1, v2, v1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 26
    const/4 v1, -0x1

    return v1

    .line 29
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;
    .locals 7
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "carg"    # I
    .param p2, "walker"    # Lgnu/expr/InlineCalls;

    .line 38
    invoke-virtual {p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    .line 39
    .local v0, "comp":Lgnu/expr/Compilation;
    invoke-virtual {v0}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    .line 40
    .local v1, "language":Lgnu/expr/Language;
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 41
    .local v2, "args":[Lgnu/expr/Expression;
    array-length v3, v2

    if-le v3, p1, :cond_1

    .line 43
    aget-object v3, v2, p1

    invoke-virtual {v1, v3}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v3

    .line 44
    .local v3, "type":Lgnu/bytecode/Type;
    instance-of v4, v3, Lgnu/bytecode/Type;

    if-nez v4, :cond_0

    .line 45
    return-object p0

    .line 46
    :cond_0
    invoke-static {v3, v0}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    .line 47
    array-length v4, v2

    new-array v4, v4, [Lgnu/expr/Expression;

    .line 48
    .local v4, "nargs":[Lgnu/expr/Expression;
    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    new-instance v5, Lgnu/expr/QuoteExp;

    invoke-direct {v5, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v5, v4, p1

    .line 50
    new-instance v5, Lgnu/expr/ApplyExp;

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 51
    .local v5, "nexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v5, p0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 52
    return-object v5

    .line 54
    .end local v3    # "type":Lgnu/bytecode/Type;
    .end local v4    # "nargs":[Lgnu/expr/Expression;
    .end local v5    # "nexp":Lgnu/expr/ApplyExp;
    :cond_1
    return-object p0
.end method

.method public static validateApplyInstanceOf(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 7
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 60
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 61
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lgnu/kawa/reflect/CompileReflect;->inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    .line 63
    .local v1, "args":[Lgnu/expr/Expression;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 65
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 66
    .local v2, "value":Lgnu/expr/Expression;
    aget-object v3, v1, v0

    .line 67
    .local v3, "texp":Lgnu/expr/Expression;
    instance-of v4, v3, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_5

    .line 69
    move-object v4, v3

    check-cast v4, Lgnu/expr/QuoteExp;

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 70
    .local v4, "t":Ljava/lang/Object;
    instance-of v5, v4, Lgnu/bytecode/Type;

    if-eqz v5, :cond_5

    .line 72
    move-object v5, v4

    check-cast v5, Lgnu/bytecode/Type;

    .line 73
    .local v5, "type":Lgnu/bytecode/Type;
    instance-of v6, v5, Lgnu/bytecode/PrimType;

    if-eqz v6, :cond_0

    .line 74
    move-object v6, v5

    check-cast v6, Lgnu/bytecode/PrimType;

    invoke-virtual {v6}, Lgnu/bytecode/PrimType;->boxedType()Lgnu/bytecode/ClassType;

    move-result-object v5

    .line 75
    :cond_0
    instance-of v6, v2, Lgnu/expr/QuoteExp;

    if-eqz v6, :cond_2

    .line 76
    move-object v0, v2

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    :cond_1
    sget-object v0, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    :goto_0
    return-object v0

    .line 78
    :cond_2
    invoke-virtual {v2}, Lgnu/expr/Expression;->side_effects()Z

    move-result v6

    if-nez v6, :cond_5

    .line 80
    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v6

    .line 81
    .local v6, "comp":I
    if-eq v6, v0, :cond_4

    if-nez v6, :cond_3

    goto :goto_1

    .line 83
    :cond_3
    const/4 v0, -0x3

    if-ne v6, v0, :cond_5

    .line 84
    sget-object v0, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 82
    :cond_4
    :goto_1
    sget-object v0, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 89
    .end local v2    # "value":Lgnu/expr/Expression;
    .end local v3    # "texp":Lgnu/expr/Expression;
    .end local v4    # "t":Ljava/lang/Object;
    .end local v5    # "type":Lgnu/bytecode/Type;
    .end local v6    # "comp":I
    :cond_5
    return-object p0
.end method

.method public static validateApplySlotGet(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 22
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 95
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 96
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v1

    .line 97
    .local v1, "comp":Lgnu/expr/Compilation;
    invoke-virtual {v1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    .line 98
    .local v2, "language":Lgnu/expr/Language;
    move-object/from16 v3, p3

    check-cast v3, Lgnu/kawa/reflect/SlotGet;

    .line 99
    .local v3, "gproc":Lgnu/kawa/reflect/SlotGet;
    iget-boolean v4, v3, Lgnu/kawa/reflect/SlotGet;->isStatic:Z

    .line 101
    .local v4, "isStatic":Z
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    .line 102
    .local v5, "args":[Lgnu/expr/Expression;
    const/4 v6, 0x0

    aget-object v7, v5, v6

    .line 103
    .local v7, "arg0":Lgnu/expr/Expression;
    const/4 v8, 0x1

    aget-object v9, v5, v8

    .line 104
    .local v9, "arg1":Lgnu/expr/Expression;
    invoke-virtual {v9}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v10

    .line 105
    .local v10, "val1":Ljava/lang/Object;
    const/4 v11, 0x0

    .line 106
    .local v11, "name":Ljava/lang/String;
    instance-of v12, v10, Ljava/lang/String;

    if-nez v12, :cond_1

    instance-of v12, v10, Lgnu/lists/FString;

    if-nez v12, :cond_1

    instance-of v12, v10, Lgnu/mapping/Symbol;

    if-eqz v12, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    return-object v0

    .line 109
    :cond_1
    :goto_0
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 112
    const/4 v12, 0x2

    if-eqz v4, :cond_6

    .line 114
    invoke-virtual {v2, v7}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v13

    .line 115
    .local v13, "type":Lgnu/bytecode/Type;
    invoke-static {v13, v1}, Lgnu/kawa/reflect/CompileReflect;->checkKnownClass(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)I

    move-result v14

    .line 116
    .local v14, "known":I
    if-gez v14, :cond_2

    .line 117
    return-object v0

    .line 118
    :cond_2
    const-string v15, "class"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 120
    if-lez v14, :cond_3

    .line 121
    invoke-virtual {v13}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v6

    return-object v6

    .line 122
    :cond_3
    sget-object v12, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    const-string v15, "getReflectClass"

    invoke-virtual {v12, v15, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v12

    .line 124
    .local v12, "method":Lgnu/bytecode/Method;
    new-instance v15, Lgnu/expr/ApplyExp;

    new-array v8, v8, [Lgnu/expr/Expression;

    aput-object v7, v8, v6

    invoke-direct {v15, v12, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    return-object v15

    .line 126
    .end local v12    # "method":Lgnu/bytecode/Method;
    :cond_4
    if-eqz v13, :cond_5

    .line 128
    new-array v15, v12, [Lgnu/expr/Expression;

    new-instance v12, Lgnu/expr/QuoteExp;

    invoke-direct {v12, v13}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v12, v15, v6

    aput-object v9, v15, v8

    move-object v12, v15

    .line 130
    .local v12, "nargs":[Lgnu/expr/Expression;
    new-instance v15, Lgnu/expr/ApplyExp;

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v8

    invoke-direct {v15, v8, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v8, v15

    .line 131
    .local v8, "nexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v8, v0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 132
    move-object v0, v8

    .line 134
    .end local v8    # "nexp":Lgnu/expr/ApplyExp;
    .end local v12    # "nargs":[Lgnu/expr/Expression;
    .end local v14    # "known":I
    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    .local v0, "exp":Lgnu/expr/ApplyExp;
    :cond_5
    goto :goto_1

    .line 136
    .end local v0    # "exp":Lgnu/expr/ApplyExp;
    .end local v13    # "type":Lgnu/bytecode/Type;
    .restart local p0    # "exp":Lgnu/expr/ApplyExp;
    :cond_6
    invoke-virtual {v7}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v13

    .line 137
    .end local p0    # "exp":Lgnu/expr/ApplyExp;
    .restart local v0    # "exp":Lgnu/expr/ApplyExp;
    .restart local v13    # "type":Lgnu/bytecode/Type;
    :goto_1
    instance-of v8, v13, Lgnu/bytecode/ArrayType;

    if-eqz v8, :cond_7

    .line 138
    return-object v0

    .line 139
    :cond_7
    instance-of v8, v13, Lgnu/bytecode/ObjectType;

    if-eqz v8, :cond_11

    .line 141
    move-object v8, v13

    check-cast v8, Lgnu/bytecode/ObjectType;

    .line 142
    .local v8, "ctype":Lgnu/bytecode/ObjectType;
    iget-object v12, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    if-eqz v12, :cond_8

    iget-object v12, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    goto :goto_2

    :cond_8
    iget-object v12, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 144
    .local v12, "caller":Lgnu/bytecode/ClassType;
    :goto_2
    invoke-static {v8, v11, v12}, Lgnu/kawa/reflect/SlotGet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v14

    .line 145
    .local v14, "part":Lgnu/bytecode/Member;
    instance-of v15, v14, Lgnu/bytecode/Field;

    const-string v6, " is not accessible here"

    move-object/from16 v16, v3

    .end local v3    # "gproc":Lgnu/kawa/reflect/SlotGet;
    .local v16, "gproc":Lgnu/kawa/reflect/SlotGet;
    const-string v3, "\' using `"

    if-eqz v15, :cond_c

    .line 147
    move-object v15, v14

    check-cast v15, Lgnu/bytecode/Field;

    .line 148
    .local v15, "field":Lgnu/bytecode/Field;
    invoke-virtual {v15}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v17

    .line 149
    .local v17, "modifiers":I
    and-int/lit8 v18, v17, 0x8

    if-eqz v18, :cond_9

    const/16 v18, 0x1

    goto :goto_3

    :cond_9
    const/16 v18, 0x0

    .line 150
    .local v18, "isStaticField":Z
    :goto_3
    if-eqz v4, :cond_a

    if-nez v18, :cond_a

    .line 151
    new-instance v6, Lgnu/expr/ErrorExp;

    move-object/from16 v19, v9

    .end local v9    # "arg1":Lgnu/expr/Expression;
    .local v19, "arg1":Lgnu/expr/Expression;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v10

    .end local v10    # "val1":Ljava/lang/Object;
    .local v20, "val1":Ljava/lang/Object;
    const-string v10, "cannot access non-static field `"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v9, 0x27

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3, v1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    return-object v6

    .line 150
    .end local v19    # "arg1":Lgnu/expr/Expression;
    .end local v20    # "val1":Ljava/lang/Object;
    .restart local v9    # "arg1":Lgnu/expr/Expression;
    .restart local v10    # "val1":Ljava/lang/Object;
    :cond_a
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    .line 153
    .end local v9    # "arg1":Lgnu/expr/Expression;
    .end local v10    # "val1":Ljava/lang/Object;
    .restart local v19    # "arg1":Lgnu/expr/Expression;
    .restart local v20    # "val1":Ljava/lang/Object;
    if-eqz v12, :cond_b

    invoke-virtual {v12, v15, v8}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 155
    new-instance v3, Lgnu/expr/ErrorExp;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "field "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v15}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v10

    invoke-virtual {v10}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    return-object v3

    .line 157
    .end local v15    # "field":Lgnu/bytecode/Field;
    .end local v17    # "modifiers":I
    .end local v18    # "isStaticField":Z
    :cond_b
    move-object/from16 v18, v2

    move-object/from16 v21, v5

    goto/16 :goto_4

    .line 159
    .end local v19    # "arg1":Lgnu/expr/Expression;
    .end local v20    # "val1":Ljava/lang/Object;
    .restart local v9    # "arg1":Lgnu/expr/Expression;
    .restart local v10    # "val1":Ljava/lang/Object;
    :cond_c
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    .end local v9    # "arg1":Lgnu/expr/Expression;
    .end local v10    # "val1":Ljava/lang/Object;
    .restart local v19    # "arg1":Lgnu/expr/Expression;
    .restart local v20    # "val1":Ljava/lang/Object;
    instance-of v9, v14, Lgnu/bytecode/Method;

    if-eqz v9, :cond_e

    .line 161
    move-object v9, v14

    check-cast v9, Lgnu/bytecode/Method;

    .line 162
    .local v9, "method":Lgnu/bytecode/Method;
    invoke-virtual {v9}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v10

    .line 163
    .local v10, "dtype":Lgnu/bytecode/ClassType;
    invoke-virtual {v9}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v15

    .line 164
    .local v15, "modifiers":I
    invoke-virtual {v9}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v17

    .line 165
    .local v17, "isStaticMethod":Z
    if-eqz v4, :cond_d

    if-nez v17, :cond_d

    .line 166
    new-instance v6, Lgnu/expr/ErrorExp;

    move-object/from16 v18, v2

    .end local v2    # "language":Lgnu/expr/Language;
    .local v18, "language":Lgnu/expr/Language;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v5

    .end local v5    # "args":[Lgnu/expr/Expression;
    .local v21, "args":[Lgnu/expr/Expression;
    const-string v5, "cannot call non-static getter method `"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2, v1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    return-object v6

    .line 165
    .end local v18    # "language":Lgnu/expr/Language;
    .end local v21    # "args":[Lgnu/expr/Expression;
    .restart local v2    # "language":Lgnu/expr/Language;
    .restart local v5    # "args":[Lgnu/expr/Expression;
    :cond_d
    move-object/from16 v18, v2

    move-object/from16 v21, v5

    .line 168
    .end local v2    # "language":Lgnu/expr/Language;
    .end local v5    # "args":[Lgnu/expr/Expression;
    .restart local v18    # "language":Lgnu/expr/Language;
    .restart local v21    # "args":[Lgnu/expr/Expression;
    if-eqz v12, :cond_f

    invoke-virtual {v12, v10, v8, v15}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 169
    new-instance v2, Lgnu/expr/ErrorExp;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "method "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;Lgnu/expr/Compilation;)V

    return-object v2

    .line 159
    .end local v9    # "method":Lgnu/bytecode/Method;
    .end local v10    # "dtype":Lgnu/bytecode/ClassType;
    .end local v15    # "modifiers":I
    .end local v17    # "isStaticMethod":Z
    .end local v18    # "language":Lgnu/expr/Language;
    .end local v21    # "args":[Lgnu/expr/Expression;
    .restart local v2    # "language":Lgnu/expr/Language;
    .restart local v5    # "args":[Lgnu/expr/Expression;
    :cond_e
    move-object/from16 v18, v2

    move-object/from16 v21, v5

    .line 172
    .end local v2    # "language":Lgnu/expr/Language;
    .end local v5    # "args":[Lgnu/expr/Expression;
    .restart local v18    # "language":Lgnu/expr/Language;
    .restart local v21    # "args":[Lgnu/expr/Expression;
    :cond_f
    :goto_4
    if-eqz v14, :cond_10

    .line 174
    const/4 v2, 0x2

    new-array v2, v2, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v14}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 176
    .local v2, "nargs":[Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/ApplyExp;

    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 177
    .local v3, "nexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v3, v0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 178
    return-object v3

    .line 180
    .end local v2    # "nargs":[Lgnu/expr/Expression;
    .end local v3    # "nexp":Lgnu/expr/ApplyExp;
    :cond_10
    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v13, v2, :cond_12

    invoke-virtual {v1}, Lgnu/expr/Compilation;->warnUnknownMember()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no slot `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v1, v3, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_5

    .line 139
    .end local v8    # "ctype":Lgnu/bytecode/ObjectType;
    .end local v12    # "caller":Lgnu/bytecode/ClassType;
    .end local v14    # "part":Lgnu/bytecode/Member;
    .end local v16    # "gproc":Lgnu/kawa/reflect/SlotGet;
    .end local v18    # "language":Lgnu/expr/Language;
    .end local v19    # "arg1":Lgnu/expr/Expression;
    .end local v20    # "val1":Ljava/lang/Object;
    .end local v21    # "args":[Lgnu/expr/Expression;
    .local v2, "language":Lgnu/expr/Language;
    .local v3, "gproc":Lgnu/kawa/reflect/SlotGet;
    .restart local v5    # "args":[Lgnu/expr/Expression;
    .local v9, "arg1":Lgnu/expr/Expression;
    .local v10, "val1":Ljava/lang/Object;
    :cond_11
    move-object/from16 v18, v2

    move-object/from16 v16, v3

    move-object/from16 v21, v5

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    .line 184
    .end local v2    # "language":Lgnu/expr/Language;
    .end local v3    # "gproc":Lgnu/kawa/reflect/SlotGet;
    .end local v5    # "args":[Lgnu/expr/Expression;
    .end local v9    # "arg1":Lgnu/expr/Expression;
    .end local v10    # "val1":Ljava/lang/Object;
    .restart local v16    # "gproc":Lgnu/kawa/reflect/SlotGet;
    .restart local v18    # "language":Lgnu/expr/Language;
    .restart local v19    # "arg1":Lgnu/expr/Expression;
    .restart local v20    # "val1":Ljava/lang/Object;
    .restart local v21    # "args":[Lgnu/expr/Expression;
    :cond_12
    :goto_5
    invoke-static {v11}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "fname":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 188
    const-string v3, "get"

    invoke-static {v3, v11}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "getName":Ljava/lang/String;
    const-string v5, "is"

    invoke-static {v5, v11}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "isName":Ljava/lang/String;
    new-instance v6, Lgnu/expr/ApplyExp;

    sget-object v8, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    const/16 v9, 0x9

    new-array v9, v9, [Lgnu/expr/Expression;

    const-string v10, "gnu.kawa.reflect.SlotGet"

    invoke-static {v10}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v9, v12

    const-string v10, "getSlotValue"

    invoke-static {v10}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v9, v12

    if-eqz v4, :cond_13

    sget-object v10, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    goto :goto_6

    :cond_13
    sget-object v10, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    :goto_6
    const/4 v12, 0x2

    aput-object v10, v9, v12

    const/4 v10, 0x3

    const/4 v12, 0x0

    aget-object v12, v21, v12

    aput-object v12, v9, v10

    const/4 v10, 0x4

    invoke-static {v11}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v12

    aput-object v12, v9, v10

    const/4 v10, 0x5

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v12

    aput-object v12, v9, v10

    const/4 v10, 0x6

    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v12

    aput-object v12, v9, v10

    const/4 v10, 0x7

    invoke-static {v5}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v12

    aput-object v12, v9, v10

    invoke-static/range {v18 .. v18}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v10

    const/16 v12, 0x8

    aput-object v10, v9, v12

    invoke-direct {v6, v8, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 202
    .local v6, "nexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v6, v0}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 203
    const/4 v8, 0x0

    move-object/from16 v9, p1

    invoke-virtual {v9, v6, v8}, Lgnu/expr/InlineCalls;->visitApplyOnly(Lgnu/expr/ApplyExp;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v8

    return-object v8
.end method

.method public static validateApplySlotSet(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 5
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 209
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 210
    move-object v0, p3

    check-cast v0, Lgnu/kawa/reflect/SlotSet;

    .line 215
    .local v0, "sproc":Lgnu/kawa/reflect/SlotSet;
    iget-boolean v1, v0, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    .line 216
    .local v1, "isStatic":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v3

    iget-boolean v3, v3, Lgnu/expr/Compilation;->mustCompile:Z

    if-eqz v3, :cond_0

    .line 217
    invoke-static {p0, v2, p1}, Lgnu/kawa/reflect/CompileReflect;->inlineClassName(Lgnu/expr/ApplyExp;ILgnu/expr/InlineCalls;)Lgnu/expr/ApplyExp;

    move-result-object p0

    .line 218
    :cond_0
    iget-boolean v3, v0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, v2}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    :goto_0
    invoke-virtual {p0, v2}, Lgnu/expr/ApplyExp;->setType(Lgnu/bytecode/Type;)V

    .line 221
    return-object p0
.end method

.method public static validateApplyTypeSwitch(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/mapping/Procedure;)Lgnu/expr/Expression;
    .locals 4
    .param p0, "exp"    # Lgnu/expr/ApplyExp;
    .param p1, "visitor"    # Lgnu/expr/InlineCalls;
    .param p2, "required"    # Lgnu/bytecode/Type;
    .param p3, "proc"    # Lgnu/mapping/Procedure;

    .line 227
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 228
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 229
    .local v0, "args":[Lgnu/expr/Expression;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 231
    aget-object v2, v0, v1

    instance-of v2, v2, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_0

    .line 233
    aget-object v2, v0, v1

    check-cast v2, Lgnu/expr/LambdaExp;

    .line 234
    .local v2, "lexp":Lgnu/expr/LambdaExp;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 235
    iput-object p0, v2, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 236
    invoke-virtual {p1}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v3

    iput-object v3, v2, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    .line 229
    .end local v2    # "lexp":Lgnu/expr/LambdaExp;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v1    # "i":I
    :cond_1
    return-object p0
.end method
