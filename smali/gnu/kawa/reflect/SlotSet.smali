.class public Lgnu/kawa/reflect/SlotSet;
.super Lgnu/mapping/Procedure3;
.source "SlotSet.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

.field public static final set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

.field public static final setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;

.field static final type1Array:[Lgnu/bytecode/Type;


# instance fields
.field isStatic:Z

.field returnSelf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 16
    new-instance v0, Lgnu/kawa/reflect/SlotSet;

    const-string v1, "set-field!"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/SlotSet;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .line 17
    new-instance v0, Lgnu/kawa/reflect/SlotSet;

    const-string v1, "set-static-field!"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lgnu/kawa/reflect/SlotSet;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .line 19
    new-instance v0, Lgnu/kawa/reflect/SlotSet;

    const-string v1, "set-field-return-object!"

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/SlotSet;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;

    .line 21
    sget-object v0, Lgnu/kawa/reflect/SlotSet;->setFieldReturnObject:Lgnu/kawa/reflect/SlotSet;

    iput-boolean v3, v0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    .line 132
    new-array v0, v3, [Lgnu/bytecode/Type;

    sput-object v0, Lgnu/kawa/reflect/SlotSet;->type1Array:[Lgnu/bytecode/Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isStatic"    # Z

    .line 25
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure3;-><init>(Ljava/lang/String;)V

    .line 26
    iput-boolean p2, p0, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    .line 27
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.reflect.CompileReflect:validateApplySlotSet"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/reflect/SlotSet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 16
    .param p0, "isStatic"    # Z
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "member"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 43
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v4

    .line 44
    .local v4, "language":Lgnu/expr/Language;
    const/4 v5, 0x0

    .line 48
    .local v5, "illegalAccess":Z
    instance-of v0, v2, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, v2, Lgnu/lists/FString;

    if-nez v0, :cond_1

    instance-of v0, v2, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    move-object v0, v2

    check-cast v0, Lgnu/bytecode/Member;

    invoke-interface {v0}, Lgnu/bytecode/Member;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 57
    .local v0, "fname":Ljava/lang/String;
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x0

    move-object v8, v7

    move-object v7, v6

    .local v7, "clas":Ljava/lang/Class;
    goto :goto_2

    .line 51
    .end local v0    # "fname":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "clas":Ljava/lang/Class;
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 52
    .restart local v6    # "name":Ljava/lang/String;
    invoke-static {v6}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .restart local v0    # "fname":Ljava/lang/String;
    if-eqz p0, :cond_2

    invoke-static/range {p1 .. p1}, Lgnu/kawa/reflect/SlotGet;->coerceToClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v7

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    :goto_1
    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    .line 61
    .end local v0    # "fname":Ljava/lang/String;
    .local v6, "fname":Ljava/lang/String;
    .local v7, "name":Ljava/lang/String;
    .local v8, "clas":Ljava/lang/Class;
    :goto_2
    :try_start_0
    instance-of v0, v2, Lgnu/bytecode/Field;

    if-eqz v0, :cond_3

    move-object v0, v2

    check-cast v0, Lgnu/bytecode/Field;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-virtual {v8, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 64
    .local v0, "field":Ljava/lang/reflect/Field;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    .line 65
    .local v9, "ftype":Ljava/lang/Class;
    invoke-virtual {v4, v9, v3}, Lgnu/expr/Language;->coerceFromObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-void

    .line 71
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "ftype":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const/4 v5, 0x1

    goto :goto_4

    .line 68
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 74
    nop

    .line 80
    :goto_4
    const/4 v9, 0x0

    .line 82
    .local v9, "getmethod":Ljava/lang/reflect/Method;
    :try_start_1
    instance-of v0, v2, Lgnu/bytecode/Method;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    .line 83
    .local v0, "haveSetter":Z
    const-string v10, "set"

    if-eqz v0, :cond_4

    move-object v11, v6

    goto :goto_5

    :cond_4
    :try_start_2
    invoke-static {v10, v7}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 85
    .local v11, "setName":Ljava/lang/String;
    :goto_5
    if-eqz v0, :cond_5

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v10, :cond_5

    .line 86
    const/4 v0, 0x0

    move v10, v0

    goto :goto_6

    .line 89
    :cond_5
    move v10, v0

    .end local v0    # "haveSetter":Z
    .local v10, "haveSetter":Z
    :goto_6
    const/4 v12, 0x3

    const-string v0, "get"

    if-eqz v10, :cond_6

    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 92
    :catch_2
    move-exception v0

    goto :goto_8

    .line 89
    :cond_6
    invoke-static {v0, v7}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "getName":Ljava/lang/String;
    :goto_7
    sget-object v13, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual {v8, v0, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v9, v12

    .line 96
    .end local v0    # "getName":Ljava/lang/String;
    goto :goto_a

    .line 93
    .local v0, "getEx":Ljava/lang/Exception;
    :goto_8
    const-string v13, "is"

    if-eqz v10, :cond_7

    :try_start_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_9

    :cond_7
    invoke-static {v13, v7}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 95
    .local v12, "getName":Ljava/lang/String;
    :goto_9
    sget-object v13, Lgnu/kawa/reflect/SlotGet;->noClasses:[Ljava/lang/Class;

    invoke-virtual {v8, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    move-object v9, v13

    .line 98
    .end local v0    # "getEx":Ljava/lang/Exception;
    .end local v12    # "getName":Ljava/lang/String;
    :goto_a
    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/Class;

    .line 99
    .local v12, "setArgTypes":[Ljava/lang/Class;
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 100
    invoke-virtual {v8, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 102
    .local v13, "setmethod":Ljava/lang/reflect/Method;
    new-array v0, v0, [Ljava/lang/Object;

    .line 103
    .local v0, "args":[Ljava/lang/Object;
    aget-object v15, v12, v14

    invoke-virtual {v4, v15, v3}, Lgnu/expr/Language;->coerceFromObject(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v0, v14

    .line 104
    invoke-virtual {v13, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3

    .line 105
    return-void

    .line 115
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v9    # "getmethod":Ljava/lang/reflect/Method;
    .end local v10    # "haveSetter":Z
    .end local v11    # "setName":Ljava/lang/String;
    .end local v12    # "setArgTypes":[Ljava/lang/Class;
    .end local v13    # "setmethod":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v0

    goto :goto_b

    .line 111
    :catch_4
    move-exception v0

    .line 113
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    const/4 v5, 0x1

    .line 117
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    nop

    .line 119
    :goto_b
    if-eqz v5, :cond_8

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "illegal access for field "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no such field "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :catch_5
    move-exception v0

    .line 109
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v9

    invoke-static {v9}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v9

    throw v9
.end method

.method static compileSet(Lgnu/mapping/Procedure;Lgnu/bytecode/ObjectType;Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Compilation;)V
    .locals 16
    .param p0, "thisProc"    # Lgnu/mapping/Procedure;
    .param p1, "ctype"    # Lgnu/bytecode/ObjectType;
    .param p2, "valArg"    # Lgnu/expr/Expression;
    .param p3, "part"    # Ljava/lang/Object;
    .param p4, "comp"    # Lgnu/expr/Compilation;

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {p4 .. p4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    .line 159
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual/range {p4 .. p4}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v5

    .line 160
    .local v5, "language":Lgnu/expr/Language;
    instance-of v6, v0, Lgnu/kawa/reflect/SlotSet;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    move-object v6, v0

    check-cast v6, Lgnu/kawa/reflect/SlotSet;

    iget-boolean v6, v6, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 162
    .local v6, "isStatic":Z
    :goto_0
    instance-of v9, v2, Lgnu/bytecode/Field;

    const/16 v10, 0x27

    const-string v11, "\' using `"

    const/16 v12, 0x65

    if-eqz v9, :cond_3

    .line 164
    move-object v7, v2

    check-cast v7, Lgnu/bytecode/Field;

    .line 165
    .local v7, "field":Lgnu/bytecode/Field;
    invoke-virtual {v7}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v8

    .line 166
    .local v8, "isStaticField":Z
    invoke-virtual {v7}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v9

    invoke-virtual {v5, v9}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v9

    .line 167
    .local v9, "ftype":Lgnu/bytecode/Type;
    if-eqz v6, :cond_1

    if-nez v8, :cond_1

    .line 168
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cannot access non-static field `"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v12, v10}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 170
    :cond_1
    invoke-static {v9}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v10

    invoke-virtual {v1, v3, v10}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 171
    if-eqz v8, :cond_2

    .line 172
    invoke-virtual {v4, v7}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    goto :goto_1

    .line 174
    :cond_2
    invoke-virtual {v4, v7}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 175
    :goto_1
    return-void

    .line 177
    .end local v7    # "field":Lgnu/bytecode/Field;
    .end local v8    # "isStaticField":Z
    .end local v9    # "ftype":Lgnu/bytecode/Type;
    :cond_3
    instance-of v9, v2, Lgnu/bytecode/Method;

    if-eqz v9, :cond_7

    .line 179
    move-object v9, v2

    check-cast v9, Lgnu/bytecode/Method;

    .line 180
    .local v9, "method":Lgnu/bytecode/Method;
    invoke-virtual {v9}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v13

    .line 181
    .local v13, "isStaticMethod":Z
    if-eqz v6, :cond_4

    if-nez v13, :cond_4

    .line 182
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cannot call non-static getter method `"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v12, v10}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 185
    :cond_4
    invoke-virtual {v9}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v10

    .line 186
    .local v10, "setArgTypes":[Lgnu/bytecode/Type;
    aget-object v8, v10, v8

    invoke-virtual {v5, v8}, Lgnu/expr/Language;->getLangTypeFor(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v8

    invoke-static {v8}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 187
    if-eqz v13, :cond_5

    .line 188
    invoke-virtual {v4, v9}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_2

    .line 190
    :cond_5
    invoke-virtual {v4, v9}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 191
    :goto_2
    invoke-virtual {v9}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v8

    invoke-virtual {v8}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v8

    if-nez v8, :cond_6

    .line 192
    invoke-virtual {v4, v7}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 193
    :cond_6
    return-void

    .line 195
    .end local v9    # "method":Lgnu/bytecode/Method;
    .end local v10    # "setArgTypes":[Lgnu/bytecode/Type;
    .end local v13    # "isStaticMethod":Z
    :cond_7
    return-void
.end method

.method public static lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;
    .locals 3
    .param p0, "clas"    # Lgnu/bytecode/ObjectType;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "caller"    # Lgnu/bytecode/ClassType;

    .line 137
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/ObjectType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v0

    .line 139
    .local v0, "field":Lgnu/bytecode/Field;
    if-eqz v0, :cond_1

    .line 141
    if-nez p2, :cond_0

    .line 142
    sget-object p2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 143
    :cond_0
    invoke-virtual {p2, v0, p0}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    return-object v0

    .line 147
    :cond_1
    const-string v1, "set"

    invoke-static {v1, p1}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "setName":Ljava/lang/String;
    sget-object v2, Lgnu/kawa/reflect/SlotSet;->type1Array:[Lgnu/bytecode/Type;

    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/ObjectType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    .line 149
    .local v2, "method":Lgnu/bytecode/Method;
    if-nez v2, :cond_2

    .line 150
    return-object v0

    .line 152
    :cond_2
    return-object v2
.end method

.method public static setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 33
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static setStaticField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 38
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    return-void
.end method


# virtual methods
.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "fname"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 128
    iget-boolean v0, p0, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    invoke-static {v0, p1, p2, p3}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    iget-boolean v0, p0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_0
    return-object v0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 20
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 200
    .local v3, "args":[Lgnu/expr/Expression;
    array-length v4, v3

    .line 201
    .local v4, "nargs":I
    const/16 v5, 0x65

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1

    .line 203
    if-ge v4, v6, :cond_0

    const-string v6, "too few"

    goto :goto_0

    :cond_0
    const-string v6, "too many"

    .line 204
    .local v6, "msg":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " arguments to `"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/reflect/SlotSet;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 205
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 206
    return-void

    .line 208
    .end local v6    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    aget-object v7, v3, v6

    .line 209
    .local v7, "arg0":Lgnu/expr/Expression;
    const/4 v8, 0x1

    aget-object v9, v3, v8

    .line 210
    .local v9, "arg1":Lgnu/expr/Expression;
    const/4 v10, 0x2

    aget-object v11, v3, v10

    .line 211
    .local v11, "value":Lgnu/expr/Expression;
    iget-boolean v12, v0, Lgnu/kawa/reflect/SlotSet;->isStatic:Z

    if-eqz v12, :cond_2

    invoke-static {v7}, Lkawa/standard/Scheme;->exp2Type(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v12

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v12

    .line 213
    .local v12, "type":Lgnu/bytecode/Type;
    :goto_1
    const/4 v13, 0x0

    .line 214
    .local v13, "part":Lgnu/bytecode/Member;
    instance-of v14, v12, Lgnu/bytecode/ObjectType;

    if-eqz v14, :cond_e

    instance-of v14, v9, Lgnu/expr/QuoteExp;

    if-eqz v14, :cond_e

    .line 216
    move-object v14, v9

    check-cast v14, Lgnu/expr/QuoteExp;

    invoke-virtual {v14}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 217
    .local v14, "val1":Ljava/lang/Object;
    move-object v15, v12

    check-cast v15, Lgnu/bytecode/ObjectType;

    .line 219
    .local v15, "ctype":Lgnu/bytecode/ObjectType;
    iget-object v8, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    if-eqz v8, :cond_3

    iget-object v8, v1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    goto :goto_2

    :cond_3
    iget-object v8, v1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 221
    .local v8, "caller":Lgnu/bytecode/ClassType;
    :goto_2
    instance-of v10, v14, Ljava/lang/String;

    const-string v6, "\' in "

    if-nez v10, :cond_6

    instance-of v10, v14, Lgnu/lists/FString;

    if-nez v10, :cond_6

    instance-of v10, v14, Lgnu/mapping/Symbol;

    if-eqz v10, :cond_4

    goto :goto_3

    .line 231
    :cond_4
    instance-of v10, v14, Lgnu/bytecode/Member;

    if-eqz v10, :cond_5

    .line 235
    move-object v10, v14

    check-cast v10, Lgnu/bytecode/Member;

    .line 236
    .end local v13    # "part":Lgnu/bytecode/Member;
    .local v10, "part":Lgnu/bytecode/Member;
    invoke-interface {v10}, Lgnu/bytecode/Member;->getName()Ljava/lang/String;

    move-result-object v13

    move/from16 v17, v4

    move-object/from16 v19, v13

    move-object v13, v10

    move-object/from16 v10, v19

    .local v13, "name":Ljava/lang/String;
    goto :goto_4

    .line 239
    .end local v10    # "part":Lgnu/bytecode/Member;
    .local v13, "part":Lgnu/bytecode/Member;
    :cond_5
    const/4 v10, 0x0

    move/from16 v17, v4

    .local v10, "name":Ljava/lang/String;
    goto :goto_4

    .line 225
    .end local v10    # "name":Ljava/lang/String;
    :cond_6
    :goto_3
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 226
    .restart local v10    # "name":Ljava/lang/String;
    invoke-static {v15, v10, v8}, Lgnu/kawa/reflect/SlotSet;->lookupMember(Lgnu/bytecode/ObjectType;Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/Member;

    move-result-object v13

    .line 227
    if-nez v13, :cond_7

    sget-object v5, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v12, v5, :cond_7

    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->warnUnknownMember()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v4

    .end local v4    # "nargs":I
    .local v17, "nargs":I
    const-string v4, "no slot `"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x77

    invoke-virtual {v1, v5, v4}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_4

    .line 227
    .end local v17    # "nargs":I
    .restart local v4    # "nargs":I
    :cond_7
    move/from16 v17, v4

    .line 241
    .end local v4    # "nargs":I
    .restart local v17    # "nargs":I
    :goto_4
    if-eqz v13, :cond_d

    .line 243
    invoke-interface {v13}, Lgnu/bytecode/Member;->getModifiers()I

    move-result v4

    .line 244
    .local v4, "modifiers":I
    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_8

    const/16 v16, 0x1

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    :goto_5
    move/from16 v5, v16

    .line 245
    .local v5, "isStaticField":Z
    if-eqz v8, :cond_9

    invoke-virtual {v8, v13, v15}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 246
    move/from16 v16, v4

    .end local v4    # "modifiers":I
    .local v16, "modifiers":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v7

    .end local v7    # "arg0":Lgnu/expr/Expression;
    .local v18, "arg0":Lgnu/expr/Expression;
    const-string v7, "slot \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v13}, Lgnu/bytecode/Member;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " not accessible here"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x65

    invoke-virtual {v1, v6, v4}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto :goto_6

    .line 245
    .end local v16    # "modifiers":I
    .end local v18    # "arg0":Lgnu/expr/Expression;
    .restart local v4    # "modifiers":I
    .restart local v7    # "arg0":Lgnu/expr/Expression;
    :cond_9
    move/from16 v16, v4

    move-object/from16 v18, v7

    .line 249
    .end local v4    # "modifiers":I
    .end local v7    # "arg0":Lgnu/expr/Expression;
    .restart local v16    # "modifiers":I
    .restart local v18    # "arg0":Lgnu/expr/Expression;
    :goto_6
    const/4 v4, 0x0

    aget-object v4, v3, v4

    if-eqz v5, :cond_a

    sget-object v6, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    goto :goto_7

    :cond_a
    invoke-static {v15}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v6

    :goto_7
    invoke-virtual {v4, v1, v6}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 252
    iget-boolean v4, v0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    if-eqz v4, :cond_b

    .line 253
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    invoke-virtual {v15}, Lgnu/bytecode/ObjectType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v6

    invoke-virtual {v4, v6}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 254
    :cond_b
    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v0, v15, v4, v13, v1}, Lgnu/kawa/reflect/SlotSet;->compileSet(Lgnu/mapping/Procedure;Lgnu/bytecode/ObjectType;Lgnu/expr/Expression;Ljava/lang/Object;Lgnu/expr/Compilation;)V

    .line 255
    iget-boolean v4, v0, Lgnu/kawa/reflect/SlotSet;->returnSelf:Z

    if-eqz v4, :cond_c

    .line 256
    invoke-virtual {v2, v1, v15}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_8

    .line 258
    :cond_c
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {v1, v4, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 259
    :goto_8
    return-void

    .line 241
    .end local v5    # "isStaticField":Z
    .end local v16    # "modifiers":I
    .end local v18    # "arg0":Lgnu/expr/Expression;
    .restart local v7    # "arg0":Lgnu/expr/Expression;
    :cond_d
    move-object/from16 v18, v7

    .end local v7    # "arg0":Lgnu/expr/Expression;
    .restart local v18    # "arg0":Lgnu/expr/Expression;
    goto :goto_9

    .line 214
    .end local v8    # "caller":Lgnu/bytecode/ClassType;
    .end local v10    # "name":Ljava/lang/String;
    .end local v14    # "val1":Ljava/lang/Object;
    .end local v15    # "ctype":Lgnu/bytecode/ObjectType;
    .end local v17    # "nargs":I
    .end local v18    # "arg0":Lgnu/expr/Expression;
    .local v4, "nargs":I
    .restart local v7    # "arg0":Lgnu/expr/Expression;
    :cond_e
    move/from16 v17, v4

    move-object/from16 v18, v7

    .line 262
    .end local v4    # "nargs":I
    .end local v7    # "arg0":Lgnu/expr/Expression;
    .restart local v17    # "nargs":I
    .restart local v18    # "arg0":Lgnu/expr/Expression;
    :goto_9
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 263
    return-void
.end method
