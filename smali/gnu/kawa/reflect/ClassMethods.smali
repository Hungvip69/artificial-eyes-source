.class public Lgnu/kawa/reflect/ClassMethods;
.super Lgnu/mapping/Procedure2;
.source "ClassMethods.java"


# static fields
.field public static final classMethods:Lgnu/kawa/reflect/ClassMethods;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lgnu/kawa/reflect/ClassMethods;

    invoke-direct {v0}, Lgnu/kawa/reflect/ClassMethods;-><init>()V

    sput-object v0, Lgnu/kawa/reflect/ClassMethods;->classMethods:Lgnu/kawa/reflect/ClassMethods;

    .line 12
    sget-object v0, Lgnu/kawa/reflect/ClassMethods;->classMethods:Lgnu/kawa/reflect/ClassMethods;

    const-string v1, "class-methods"

    invoke-virtual {v0, v1}, Lgnu/kawa/reflect/ClassMethods;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;
    .locals 6
    .param p0, "dtype"    # Lgnu/bytecode/ObjectType;
    .param p1, "mname"    # Ljava/lang/String;
    .param p2, "mode"    # C
    .param p3, "language"    # Lgnu/expr/Language;

    .line 229
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lgnu/kawa/reflect/ClassMethods;->getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;

    move-result-object v0

    .line 230
    .local v0, "methods":[Lgnu/expr/PrimProcedure;
    const/4 v1, 0x0

    .line 231
    .local v1, "gproc":Lgnu/expr/GenericProc;
    const/4 v2, 0x0

    .line 232
    .local v2, "pproc":Lgnu/expr/PrimProcedure;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 234
    aget-object v4, v0, v3

    .line 235
    .local v4, "cur":Lgnu/expr/PrimProcedure;
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 237
    new-instance v5, Lgnu/expr/GenericProc;

    invoke-direct {v5}, Lgnu/expr/GenericProc;-><init>()V

    move-object v1, v5

    .line 238
    invoke-virtual {v1, v2}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    .line 240
    :cond_0
    move-object v2, v4

    .line 241
    if-eqz v1, :cond_1

    .line 242
    invoke-virtual {v1, v2}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    .line 232
    .end local v4    # "cur":Lgnu/expr/PrimProcedure;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    .end local v3    # "i":I
    :cond_2
    if-eqz v1, :cond_3

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lgnu/expr/GenericProc;->setName(Ljava/lang/String;)V

    .line 247
    return-object v1

    .line 249
    :cond_3
    return-object v2
.end method

.method public static apply(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/MethodProc;
    .locals 6
    .param p0, "thisProc"    # Lgnu/mapping/Procedure;
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .line 30
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 31
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    .line 32
    :cond_0
    instance-of v0, p1, Lgnu/bytecode/ClassType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 33
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/ClassType;

    .local v0, "dtype":Lgnu/bytecode/ClassType;
    goto :goto_1

    .line 34
    .end local v0    # "dtype":Lgnu/bytecode/ClassType;
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_3

    instance-of v0, p1, Lgnu/lists/FString;

    if-nez v0, :cond_3

    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 38
    :cond_2
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw v0

    .line 36
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 39
    .restart local v0    # "dtype":Lgnu/bytecode/ClassType;
    :goto_1
    instance-of v3, p2, Ljava/lang/String;

    if-nez v3, :cond_5

    instance-of v3, p2, Lgnu/lists/FString;

    if-nez v3, :cond_5

    instance-of v3, p2, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_4

    goto :goto_2

    .line 43
    :cond_4
    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, v1}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw v2

    .line 41
    :cond_5
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "mname":Ljava/lang/String;
    const-string v3, "<init>"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 45
    invoke-static {v1}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    :cond_6
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v2

    .line 47
    .local v2, "result":Lgnu/mapping/MethodProc;
    if-eqz v2, :cond_7

    .line 50
    return-object v2

    .line 48
    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no applicable method named `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static checkName(Lgnu/expr/Expression;)Ljava/lang/String;
    .locals 3
    .param p0, "exp"    # Lgnu/expr/Expression;

    .line 281
    instance-of v0, p0, Lgnu/expr/QuoteExp;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 283
    move-object v0, p0

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 284
    .local v0, "name":Ljava/lang/Object;
    instance-of v2, v0, Lgnu/lists/FString;

    if-nez v2, :cond_2

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    instance-of v2, v0, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_1

    .line 287
    move-object v1, v0

    check-cast v1, Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 289
    :cond_1
    return-object v1

    .line 285
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 291
    .end local v0    # "name":Ljava/lang/Object;
    :cond_3
    return-object v1
.end method

.method static checkName(Lgnu/expr/Expression;Z)Ljava/lang/String;
    .locals 3
    .param p0, "exp"    # Lgnu/expr/Expression;
    .param p1, "reversible"    # Z

    .line 258
    instance-of v0, p0, Lgnu/expr/QuoteExp;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 260
    move-object v0, p0

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 262
    .local v0, "name":Ljava/lang/Object;
    instance-of v2, v0, Lgnu/lists/FString;

    if-nez v2, :cond_2

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    instance-of v2, v0, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_1

    .line 265
    move-object v1, v0

    check-cast v1, Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "nam":Ljava/lang/String;
    goto :goto_1

    .line 267
    .end local v1    # "nam":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 263
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .restart local v1    # "nam":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lgnu/expr/Compilation;->isValidJavaName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 269
    return-object v1

    .line 270
    :cond_3
    invoke-static {v1, p1}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 272
    .end local v0    # "name":Ljava/lang/Object;
    .end local v1    # "nam":Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method public static getMethods(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/bytecode/ClassType;Lgnu/expr/Language;)[Lgnu/expr/PrimProcedure;
    .locals 11
    .param p0, "dtype"    # Lgnu/bytecode/ObjectType;
    .param p1, "mname"    # Ljava/lang/String;
    .param p2, "mode"    # C
    .param p3, "caller"    # Lgnu/bytecode/ClassType;
    .param p4, "language"    # Lgnu/expr/Language;

    .line 100
    sget-object v0, Lgnu/bytecode/Type;->tostring_type:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_0

    .line 101
    sget-object p0, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    .line 102
    :cond_0
    new-instance v6, Lgnu/kawa/reflect/MethodFilter;

    const/16 v7, 0x50

    if-ne p2, v7, :cond_1

    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_0

    :cond_1
    move-object v5, p0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lgnu/kawa/reflect/MethodFilter;-><init>(Ljava/lang/String;IILgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;)V

    .line 104
    .local v0, "filter":Lgnu/kawa/reflect/MethodFilter;
    const/4 v1, 0x0

    if-eq p2, v7, :cond_3

    const-string v2, "<init>"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 105
    .local v2, "named_class_only":Z
    :goto_2
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 106
    .local v3, "methods":Ljava/util/Vector;
    if-eqz v2, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    const/4 v4, 0x2

    :goto_3
    invoke-virtual {p0, v0, v4, v3}, Lgnu/bytecode/ObjectType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    .line 107
    if-nez v2, :cond_6

    instance-of v4, p0, Lgnu/bytecode/ClassType;

    if-eqz v4, :cond_5

    move-object v4, p0

    check-cast v4, Lgnu/bytecode/ClassType;

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 110
    :cond_5
    sget-object v4, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v0, v1, v3}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    .line 111
    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_4

    :cond_7
    invoke-static {v3}, Lgnu/kawa/reflect/ClassMethods;->removeRedundantMethods(Ljava/util/Vector;)I

    move-result v1

    .line 114
    .local v1, "mlength":I
    :goto_4
    new-array v4, v1, [Lgnu/expr/PrimProcedure;

    .line 115
    .local v4, "result":[Lgnu/expr/PrimProcedure;
    const/4 v5, 0x0

    .line 116
    .local v5, "count":I
    move v6, v1

    .local v6, "i":I
    :goto_5
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_9

    .line 118
    invoke-virtual {v3, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/bytecode/Method;

    .line 119
    .local v7, "method":Lgnu/bytecode/Method;
    if-nez v2, :cond_8

    invoke-virtual {v7}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v8

    if-eq v8, p0, :cond_8

    .line 121
    invoke-virtual {p0}, Lgnu/bytecode/ObjectType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v8

    .line 122
    .local v8, "itype":Lgnu/bytecode/Type;
    instance-of v9, v8, Lgnu/bytecode/ClassType;

    if-eqz v9, :cond_8

    .line 126
    new-instance v9, Lgnu/bytecode/Method;

    move-object v10, v8

    check-cast v10, Lgnu/bytecode/ClassType;

    invoke-direct {v9, v7, v10}, Lgnu/bytecode/Method;-><init>(Lgnu/bytecode/Method;Lgnu/bytecode/ClassType;)V

    move-object v7, v9

    .line 129
    .end local v8    # "itype":Lgnu/bytecode/Type;
    :cond_8
    new-instance v8, Lgnu/expr/PrimProcedure;

    invoke-direct {v8, v7, p2, p4}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;CLgnu/expr/Language;)V

    .line 130
    .local v8, "pproc":Lgnu/expr/PrimProcedure;
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "count":I
    .local v9, "count":I
    aput-object v8, v4, v5

    .line 131
    .end local v7    # "method":Lgnu/bytecode/Method;
    .end local v8    # "pproc":Lgnu/expr/PrimProcedure;
    move v5, v9

    goto :goto_5

    .line 132
    .end local v6    # "i":I
    .end local v9    # "count":I
    .restart local v5    # "count":I
    :cond_9
    return-object v4
.end method

.method private static removeRedundantMethods(Ljava/util/Vector;)I
    .locals 12
    .param p0, "methods"    # Ljava/util/Vector;

    .line 56
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 58
    .local v0, "mlength":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 60
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/Method;

    .line 61
    .local v2, "method1":Lgnu/bytecode/Method;
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v3

    .line 62
    .local v3, "class1":Lgnu/bytecode/ClassType;
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v4

    .line 63
    .local v4, "types1":[Lgnu/bytecode/Type;
    array-length v5, v4

    .line 64
    .local v5, "tlen":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v1, :cond_5

    .line 66
    invoke-virtual {p0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/bytecode/Method;

    .line 67
    .local v7, "method2":Lgnu/bytecode/Method;
    invoke-virtual {v7}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v8

    .line 68
    .local v8, "types2":[Lgnu/bytecode/Type;
    array-length v9, v8

    if-eq v5, v9, :cond_0

    .line 69
    goto :goto_2

    .line 71
    :cond_0
    move v9, v5

    .local v9, "k":I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_2

    .line 73
    aget-object v10, v4, v9

    aget-object v11, v8, v9

    if-eq v10, v11, :cond_1

    .line 74
    nop

    .line 76
    :cond_2
    if-ltz v9, :cond_3

    .line 77
    nop

    .line 64
    .end local v7    # "method2":Lgnu/bytecode/Method;
    .end local v8    # "types2":[Lgnu/bytecode/Type;
    .end local v9    # "k":I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 78
    .restart local v7    # "method2":Lgnu/bytecode/Method;
    .restart local v8    # "types2":[Lgnu/bytecode/Type;
    .restart local v9    # "k":I
    :cond_3
    invoke-virtual {v7}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v10

    invoke-virtual {v3, v10}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 79
    invoke-virtual {p0, v2, v6}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 80
    :cond_4
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p0, v10, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 81
    add-int/lit8 v0, v0, -0x1

    .line 83
    goto :goto_0

    .line 85
    .end local v6    # "j":I
    .end local v7    # "method2":Lgnu/bytecode/Method;
    .end local v8    # "types2":[Lgnu/bytecode/Type;
    .end local v9    # "k":I
    :cond_5
    nop

    .end local v2    # "method1":Lgnu/bytecode/Method;
    .end local v3    # "class1":Lgnu/bytecode/ClassType;
    .end local v4    # "types1":[Lgnu/bytecode/Type;
    .end local v5    # "tlen":I
    add-int/lit8 v1, v1, 0x1

    .line 86
    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_6
    return v0
.end method

.method public static selectApplicable([Lgnu/expr/PrimProcedure;I)I
    .locals 12
    .param p0, "methods"    # [Lgnu/expr/PrimProcedure;
    .param p1, "numArgs"    # I

    .line 184
    array-length v0, p0

    .line 185
    .local v0, "limit":I
    const/4 v1, 0x0

    .line 186
    .local v1, "numTooManyArgs":I
    const/4 v2, 0x0

    .line 187
    .local v2, "numTooFewArgs":I
    const/4 v3, 0x0

    .line 188
    .local v3, "numOk":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 190
    aget-object v5, p0, v4

    invoke-virtual {v5}, Lgnu/expr/PrimProcedure;->numArgs()I

    move-result v5

    .line 191
    .local v5, "num":I
    invoke-static {v5}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v6

    .line 192
    .local v6, "min":I
    invoke-static {v5}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v7

    .line 193
    .local v7, "max":I
    const/4 v8, 0x0

    .line 194
    .local v8, "ok":Z
    if-ge p1, v6, :cond_0

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 196
    :cond_0
    if-le p1, v7, :cond_1

    if-ltz v7, :cond_1

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 199
    :cond_1
    const/4 v8, 0x1

    .line 200
    :goto_1
    if-eqz v8, :cond_2

    .line 202
    add-int/lit8 v3, v3, 0x1

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 208
    :cond_2
    add-int/lit8 v9, v0, -0x1

    aget-object v9, p0, v9

    .line 209
    .local v9, "tmp":Lgnu/expr/PrimProcedure;
    add-int/lit8 v10, v0, -0x1

    aget-object v11, p0, v4

    aput-object v11, p0, v10

    .line 210
    aput-object v9, p0, v4

    .line 211
    add-int/lit8 v0, v0, -0x1

    .line 213
    .end local v5    # "num":I
    .end local v6    # "min":I
    .end local v7    # "max":I
    .end local v8    # "ok":Z
    .end local v9    # "tmp":Lgnu/expr/PrimProcedure;
    :goto_2
    goto :goto_0

    .line 214
    .end local v4    # "i":I
    :cond_3
    if-lez v3, :cond_4

    move v4, v3

    goto :goto_3

    :cond_4
    if-lez v2, :cond_5

    const/high16 v4, -0xf0000

    goto :goto_3

    :cond_5
    if-lez v1, :cond_6

    const/high16 v4, -0xe0000

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    return v4
.end method

.method public static selectApplicable([Lgnu/expr/PrimProcedure;[Lgnu/bytecode/Type;)J
    .locals 8
    .param p0, "methods"    # [Lgnu/expr/PrimProcedure;
    .param p1, "atypes"    # [Lgnu/bytecode/Type;

    .line 146
    array-length v0, p0

    .line 147
    .local v0, "limit":I
    const/4 v1, 0x0

    .line 148
    .local v1, "numDefApplicable":I
    const/4 v2, 0x0

    .line 149
    .local v2, "numPosApplicable":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 151
    aget-object v4, p0, v3

    invoke-virtual {v4, p1}, Lgnu/expr/PrimProcedure;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v4

    .line 152
    .local v4, "code":I
    if-gez v4, :cond_0

    .line 155
    add-int/lit8 v5, v0, -0x1

    aget-object v5, p0, v5

    .line 156
    .local v5, "tmp":Lgnu/expr/PrimProcedure;
    add-int/lit8 v6, v0, -0x1

    aget-object v7, p0, v3

    aput-object v7, p0, v6

    .line 157
    aput-object v5, p0, v3

    .line 158
    nop

    .end local v5    # "tmp":Lgnu/expr/PrimProcedure;
    add-int/lit8 v0, v0, -0x1

    .line 159
    goto :goto_1

    .line 160
    :cond_0
    if-lez v4, :cond_1

    .line 163
    aget-object v5, p0, v1

    .line 164
    .restart local v5    # "tmp":Lgnu/expr/PrimProcedure;
    aget-object v6, p0, v3

    aput-object v6, p0, v1

    .line 165
    aput-object v5, p0, v3

    .line 166
    add-int/lit8 v1, v1, 0x1

    .line 167
    nop

    .end local v5    # "tmp":Lgnu/expr/PrimProcedure;
    add-int/lit8 v3, v3, 0x1

    .line 168
    goto :goto_1

    .line 171
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 172
    add-int/lit8 v3, v3, 0x1

    .line 174
    .end local v4    # "code":I
    :goto_1
    goto :goto_0

    .line 175
    .end local v3    # "i":I
    :cond_2
    int-to-long v3, v1

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    int-to-long v5, v2

    add-long/2addr v3, v5

    return-wide v3
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .line 23
    invoke-static {p0, p1, p2}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/mapping/MethodProc;

    move-result-object v0

    return-object v0
.end method
