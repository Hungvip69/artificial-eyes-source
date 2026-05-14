.class public Lkawa/lang/Record;
.super Ljava/lang/Object;
.source "Record.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 4
    .param p0, "clas"    # Ljava/lang/Class;
    .param p1, "fname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    .line 45
    .local v0, "ctype":Lgnu/bytecode/ClassType;
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v1

    .line 46
    .local v1, "fld":Lgnu/bytecode/Field;
    :goto_0
    if-eqz v1, :cond_2

    .line 48
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x9

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    nop

    .line 46
    :goto_1
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v2

    return-object v2

    .line 55
    .end local v1    # "fld":Lgnu/bytecode/Field;
    :cond_2
    new-instance v1, Ljava/lang/NoSuchFieldException;

    invoke-direct {v1}, Ljava/lang/NoSuchFieldException;-><init>()V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public static isRecord(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 17
    instance-of v0, p0, Lkawa/lang/Record;

    return v0
.end method

.method public static makeRecordType(Ljava/lang/String;Lgnu/lists/LList;)Lgnu/bytecode/ClassType;
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fnames"    # Lgnu/lists/LList;

    .line 171
    const-string v0, "kawa.lang.Record"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 172
    .local v0, "superClass":Lgnu/bytecode/ClassType;
    invoke-static {p0}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "mangledName":Ljava/lang/String;
    new-instance v2, Lgnu/bytecode/ClassType;

    invoke-direct {v2, v1}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 174
    .local v2, "clas":Lgnu/bytecode/ClassType;
    invoke-virtual {v2, v0}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 175
    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->setModifiers(I)V

    .line 178
    sget-object v3, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v4, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const-string v5, "<init>"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v3, v4, v6}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    .line 180
    .local v3, "constructor":Lgnu/bytecode/Method;
    sget-object v4, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v7, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {v0, v5, v4, v7, v6}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v4

    .line 183
    .local v4, "superConstructor":Lgnu/bytecode/Method;
    invoke-virtual {v3}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    .line 184
    .local v5, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 185
    invoke-virtual {v5, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 186
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 187
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 189
    sget-object v7, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    sget-object v8, Lgnu/expr/Compilation;->typeString:Lgnu/bytecode/ClassType;

    const-string v9, "getTypeName"

    invoke-virtual {v2, v9, v7, v8, v6}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v7

    .line 191
    .local v7, "meth":Lgnu/bytecode/Method;
    invoke-virtual {v7}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    .line 192
    invoke-virtual {v5, p0}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 198
    .end local v7    # "meth":Lgnu/bytecode/Method;
    :cond_0
    :goto_0
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v7, :cond_1

    .line 200
    move-object v7, p1

    check-cast v7, Lgnu/lists/Pair;

    .line 201
    .local v7, "pair":Lgnu/lists/Pair;
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 203
    .local v8, "fname":Ljava/lang/String;
    invoke-static {v8}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v9, v10, v6}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v9

    .line 205
    .local v9, "fld":Lgnu/bytecode/Field;
    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/bytecode/Field;->setSourceName(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v7}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v10

    move-object p1, v10

    check-cast p1, Lgnu/lists/LList;

    .line 207
    .end local v7    # "pair":Lgnu/lists/Pair;
    .end local v8    # "fname":Ljava/lang/String;
    goto :goto_0

    .line 215
    .end local v9    # "fld":Lgnu/bytecode/Field;
    :cond_1
    new-array v7, v6, [[B

    .line 216
    .local v7, "arrays":[[B
    new-array v6, v6, [Ljava/lang/String;

    .line 217
    .local v6, "names":[Ljava/lang/String;
    const/4 v8, 0x0

    aput-object v1, v6, v8

    .line 218
    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->writeToArray()[B

    move-result-object v9

    aput-object v9, v7, v8

    .line 219
    new-instance v8, Lgnu/bytecode/ArrayClassLoader;

    invoke-direct {v8, v6, v7}, Lgnu/bytecode/ArrayClassLoader;-><init>([Ljava/lang/String;[[B)V

    .line 222
    .local v8, "loader":Lgnu/bytecode/ArrayClassLoader;
    :try_start_0
    invoke-virtual {v8, v1}, Lgnu/bytecode/ArrayClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 223
    .local v9, "reflectClass":Ljava/lang/Class;
    invoke-static {v9, v2}, Lgnu/bytecode/Type;->registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    return-object v2

    .line 226
    .end local v9    # "reflectClass":Ljava/lang/Class;
    :catch_0
    move-exception v9

    .line 228
    .local v9, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v10, Ljava/lang/InternalError;

    invoke-virtual {v9}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v10

    :goto_2
    goto :goto_1
.end method

.method public static set1(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "record"    # Ljava/lang/Object;
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 86
    .local v0, "clas":Ljava/lang/Class;
    :try_start_0
    invoke-static {v0, p1}, Lkawa/lang/Record;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 87
    .local v1, "fld":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 88
    .local v2, "old":Ljava/lang/Object;
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-object v2

    .line 96
    .end local v1    # "fld":Ljava/lang/reflect/Field;
    .end local v2    # "old":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    new-instance v2, Lkawa/lang/GenericError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal access for field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 94
    .local v1, "ex":Ljava/lang/NoSuchFieldException;
    new-instance v2, Lkawa/lang/GenericError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no such field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static typeFieldNames(Lgnu/bytecode/ClassType;)Lgnu/lists/LList;
    .locals 1
    .param p0, "ctype"    # Lgnu/bytecode/ClassType;

    .line 275
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkawa/lang/Record;->typeFieldNames(Ljava/lang/Class;)Lgnu/lists/LList;

    move-result-object v0

    return-object v0
.end method

.method public static typeFieldNames(Ljava/lang/Class;)Lgnu/lists/LList;
    .locals 7
    .param p0, "clas"    # Ljava/lang/Class;

    .line 234
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 257
    .local v0, "list":Lgnu/lists/LList;
    invoke-static {p0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    .line 258
    .local v1, "ctype":Lgnu/bytecode/ClassType;
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v2

    .line 259
    .local v2, "field":Lgnu/bytecode/Field;
    new-instance v3, Ljava/util/Vector;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    .line 260
    .local v3, "vec":Ljava/util/Vector;
    :goto_0
    if-eqz v2, :cond_1

    .line 262
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x9

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 264
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 260
    :cond_0
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v2

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    .local v4, "i":I
    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    .line 268
    new-instance v5, Lgnu/lists/Pair;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v5

    goto :goto_1

    .line 270
    .end local v4    # "i":I
    :cond_2
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 104
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 105
    return v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 107
    .local v1, "thisClass":Ljava/lang/Class;
    const/4 v2, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v1, :cond_1

    goto :goto_3

    .line 109
    :cond_1
    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    .line 110
    .local v3, "ctype":Lgnu/bytecode/ClassType;
    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v4

    .local v4, "fld":Lgnu/bytecode/Field;
    const/4 v5, 0x0

    move-object v6, v5

    .line 111
    :goto_0
    if-eqz v4, :cond_4

    .line 113
    invoke-virtual {v4}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v7

    and-int/lit8 v7, v7, 0x9

    if-eq v7, v0, :cond_2

    .line 115
    goto :goto_1

    .line 119
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v7

    .line 120
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    .local v6, "value1":Ljava/lang/Object;
    :try_start_1
    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .local v5, "value2":Ljava/lang/Object;
    nop

    .line 127
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 128
    return v2

    .line 111
    .end local v5    # "value2":Ljava/lang/Object;
    .end local v6    # "value1":Ljava/lang/Object;
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v4

    goto :goto_0

    .line 123
    .restart local v6    # "value1":Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object v2, v5

    .local v2, "value2":Ljava/lang/Object;
    goto :goto_2

    .end local v2    # "value2":Ljava/lang/Object;
    .end local v6    # "value1":Ljava/lang/Object;
    :catch_1
    move-exception v0

    move-object v2, v5

    .line 125
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v2    # "value2":Ljava/lang/Object;
    .restart local v6    # "value1":Ljava/lang/Object;
    :goto_2
    new-instance v5, Lgnu/mapping/WrappedException;

    invoke-direct {v5, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 130
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "value2":Ljava/lang/Object;
    .end local v4    # "fld":Lgnu/bytecode/Field;
    .end local v6    # "value1":Ljava/lang/Object;
    :cond_4
    return v0

    .line 108
    .end local v3    # "ctype":Lgnu/bytecode/ClassType;
    :cond_5
    :goto_3
    return v2
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 63
    .local v0, "clas":Ljava/lang/Class;
    :try_start_0
    invoke-static {v0, p1}, Lkawa/lang/Record;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 70
    :catch_0
    move-exception v1

    .line 72
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    new-instance v2, Lkawa/lang/GenericError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal access for field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 68
    .local v1, "ex":Ljava/lang/NoSuchFieldException;
    new-instance v2, Lkawa/lang/GenericError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no such field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 22
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/16 v1, 0x3039

    .line 23
    .local v1, "hash":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 25
    aget-object v4, v0, v2

    .line 29
    .local v4, "field":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .local v3, "value":Ljava/lang/Object;
    nop

    .line 35
    if-eqz v3, :cond_0

    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    xor-int/2addr v1, v5

    goto :goto_1

    .line 31
    .end local v3    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 33
    .restart local v3    # "value":Ljava/lang/Object;
    .local v5, "ex":Ljava/lang/IllegalAccessException;
    nop

    .line 23
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "ex":Ljava/lang/IllegalAccessException;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "ps"    # Ljava/io/PrintWriter;

    .line 166
    invoke-virtual {p0}, Lkawa/lang/Record;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 78
    invoke-static {p0, p1, p2}, Lkawa/lang/Record;->set1(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 135
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 136
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "#<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {p0}, Lkawa/lang/Record;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    .line 139
    .local v1, "ctype":Lgnu/bytecode/ClassType;
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v2

    .local v2, "fld":Lgnu/bytecode/Field;
    const/4 v3, 0x0

    .line 140
    :goto_0
    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x9

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 144
    goto :goto_2

    .line 148
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v4

    .line 149
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .local v3, "value":Ljava/lang/Object;
    goto :goto_1

    .line 151
    .end local v3    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 153
    .restart local v3    # "value":Ljava/lang/Object;
    .local v4, "ex":Ljava/lang/Exception;
    const-string v3, "#<illegal-access>"

    .line 155
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_1
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 140
    .end local v3    # "value":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v2

    goto :goto_0

    .line 160
    .end local v2    # "fld":Lgnu/bytecode/Field;
    :cond_1
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
