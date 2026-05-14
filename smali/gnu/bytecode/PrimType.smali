.class public Lgnu/bytecode/PrimType;
.super Lgnu/bytecode/Type;
.source "PrimType.java"


# static fields
.field private static final numberHierarchy:Ljava/lang/String; = "A:java.lang.Byte;B:java.lang.Short;C:java.lang.Integer;D:java.lang.Long;E:gnu.math.IntNum;E:java.gnu.math.BitInteger;G:gnu.math.RatNum;H:java.lang.Float;I:java.lang.Double;I:gnu.math.DFloNum;J:gnu.math.RealNum;K:gnu.math.Complex;L:gnu.math.Quantity;K:gnu.math.Numeric;N:java.lang.Number;"


# direct methods
.method protected constructor <init>(Lgnu/bytecode/PrimType;)V
    .locals 2
    .param p1, "type"    # Lgnu/bytecode/PrimType;

    .line 14
    iget-object v0, p1, Lgnu/bytecode/PrimType;->this_name:Ljava/lang/String;

    iget-object v1, p1, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lgnu/bytecode/Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget v0, p1, Lgnu/bytecode/PrimType;->size:I

    iput v0, p0, Lgnu/bytecode/PrimType;->size:I

    .line 16
    iget-object v0, p1, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    iput-object v0, p0, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .param p1, "nam"    # Ljava/lang/String;
    .param p2, "sig"    # Ljava/lang/String;
    .param p3, "siz"    # I
    .param p4, "reflectClass"    # Ljava/lang/Class;

    .line 6
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iput p3, p0, Lgnu/bytecode/PrimType;->size:I

    .line 8
    iput-object p4, p0, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    .line 9
    invoke-static {p4, p0}, Lgnu/bytecode/Type;->registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V

    .line 10
    return-void
.end method

.method public static booleanValue(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 64
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static compare(Lgnu/bytecode/PrimType;Lgnu/bytecode/PrimType;)I
    .locals 7
    .param p0, "type1"    # Lgnu/bytecode/PrimType;
    .param p1, "type2"    # Lgnu/bytecode/PrimType;

    .line 160
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 161
    .local v0, "sig1":C
    iget-object v2, p1, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 163
    .local v2, "sig2":C
    if-ne v0, v2, :cond_0

    .line 164
    return v1

    .line 167
    :cond_0
    const/16 v1, 0x56

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 168
    return v3

    .line 169
    :cond_1
    const/4 v4, -0x1

    if-ne v2, v1, :cond_2

    .line 170
    return v4

    .line 175
    :cond_2
    const/16 v1, 0x5a

    const/4 v5, -0x3

    if-eq v0, v1, :cond_12

    if-ne v2, v1, :cond_3

    goto :goto_2

    .line 178
    :cond_3
    const/4 v1, 0x2

    const/16 v6, 0x43

    if-ne v0, v6, :cond_5

    .line 179
    iget v3, p1, Lgnu/bytecode/PrimType;->size:I

    if-le v3, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, -0x3

    :goto_0
    return v4

    .line 180
    :cond_5
    if-ne v2, v6, :cond_7

    .line 181
    iget v4, p0, Lgnu/bytecode/PrimType;->size:I

    if-le v4, v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, -0x3

    :goto_1
    return v3

    .line 183
    :cond_7
    const/16 v1, 0x44

    if-ne v0, v1, :cond_8

    .line 184
    return v3

    .line 185
    :cond_8
    if-ne v2, v1, :cond_9

    .line 186
    return v4

    .line 187
    :cond_9
    const/16 v1, 0x46

    if-ne v0, v1, :cond_a

    .line 188
    return v3

    .line 189
    :cond_a
    if-ne v2, v1, :cond_b

    .line 190
    return v4

    .line 191
    :cond_b
    const/16 v1, 0x4a

    if-ne v0, v1, :cond_c

    .line 192
    return v3

    .line 193
    :cond_c
    if-ne v2, v1, :cond_d

    .line 194
    return v4

    .line 195
    :cond_d
    const/16 v1, 0x49

    if-ne v0, v1, :cond_e

    .line 196
    return v3

    .line 197
    :cond_e
    if-ne v2, v1, :cond_f

    .line 198
    return v4

    .line 199
    :cond_f
    const/16 v1, 0x53

    if-ne v0, v1, :cond_10

    .line 200
    return v3

    .line 201
    :cond_10
    if-ne v2, v1, :cond_11

    .line 202
    return v4

    .line 204
    :cond_11
    return v5

    .line 176
    :cond_12
    :goto_2
    return v5
.end method

.method private static findInHierarchy(Ljava/lang/String;)C
    .locals 2
    .param p0, "cname"    # Ljava/lang/String;

    .line 240
    const-string v0, "A:java.lang.Byte;B:java.lang.Short;C:java.lang.Integer;D:java.lang.Long;E:gnu.math.IntNum;E:java.gnu.math.BitInteger;G:gnu.math.RatNum;H:java.lang.Float;I:java.lang.Double;I:gnu.math.DFloNum;J:gnu.math.RealNum;K:gnu.math.Complex;L:gnu.math.Quantity;K:gnu.math.Numeric;N:java.lang.Number;"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 241
    .local v1, "pos":I
    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public boxedType()Lgnu/bytecode/ClassType;
    .locals 3

    .line 69
    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 71
    .local v0, "sig1":C
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 81
    .local v1, "cname":Ljava/lang/String;
    const/4 v1, 0x0

    goto :goto_0

    .line 73
    .end local v1    # "cname":Ljava/lang/String;
    :sswitch_0
    const-string v1, "java.lang.Boolean"

    .restart local v1    # "cname":Ljava/lang/String;
    goto :goto_0

    .line 76
    :sswitch_1
    const-string v1, "java.lang.Short"

    goto :goto_0

    .line 78
    :sswitch_2
    const-string v1, "java.lang.Long"

    goto :goto_0

    .line 77
    :sswitch_3
    const-string v1, "java.lang.Integer"

    goto :goto_0

    .line 79
    :sswitch_4
    const-string v1, "java.lang.Float"

    goto :goto_0

    .line 80
    :sswitch_5
    const-string v1, "java.lang.Double"

    goto :goto_0

    .line 74
    :sswitch_6
    const-string v1, "java.lang.Character"

    goto :goto_0

    .line 75
    :sswitch_7
    const-string v1, "java.lang.Byte"

    .line 83
    :goto_0
    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_7
        0x43 -> :sswitch_6
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x49 -> :sswitch_3
        0x4a -> :sswitch_2
        0x53 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public charValue(Ljava/lang/Object;)C
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 57
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lgnu/bytecode/PrimType;->reflectClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 22
    return-object p1

    .line 23
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v0, 0x20

    .line 26
    .local v0, "sig1":C
    :goto_1
    sparse-switch v0, :sswitch_data_0

    .line 48
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "don\'t know how to coerce "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :sswitch_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 29
    :sswitch_1
    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    .line 31
    :sswitch_2
    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 30
    :sswitch_3
    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 32
    :sswitch_4
    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 33
    :sswitch_5
    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 28
    :sswitch_6
    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_6
        0x44 -> :sswitch_5
        0x46 -> :sswitch_4
        0x49 -> :sswitch_3
        0x4a -> :sswitch_2
        0x53 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 8
    .param p1, "other"    # Lgnu/bytecode/Type;

    .line 246
    instance-of v0, p1, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 252
    invoke-virtual {p1, p0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v0

    invoke-static {v0}, Lgnu/bytecode/PrimType;->swappedCompareResult(I)I

    move-result v0

    return v0

    .line 253
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/PrimType;

    invoke-static {p0, v0}, Lgnu/bytecode/PrimType;->compare(Lgnu/bytecode/PrimType;Lgnu/bytecode/PrimType;)I

    move-result v0

    return v0

    .line 255
    :cond_1
    instance-of v0, p1, Lgnu/bytecode/ClassType;

    const/4 v1, -0x3

    if-nez v0, :cond_3

    .line 257
    instance-of v0, p1, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_2

    .line 258
    return v1

    .line 260
    :cond_2
    invoke-virtual {p1, p0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v0

    invoke-static {v0}, Lgnu/bytecode/PrimType;->swappedCompareResult(I)I

    move-result v0

    return v0

    .line 262
    :cond_3
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 263
    .local v0, "sig1":C
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "otherName":Ljava/lang/String;
    const/4 v4, -0x1

    if-nez v3, :cond_4

    .line 265
    return v4

    .line 266
    :cond_4
    const/4 v5, 0x0

    .line 267
    .local v5, "thisPriority":C
    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 272
    :sswitch_0
    const-string v7, "java.lang.Boolean"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 273
    return v2

    .line 270
    :sswitch_1
    return v6

    .line 279
    :sswitch_2
    const/16 v5, 0x42

    goto :goto_0

    .line 281
    :sswitch_3
    const/16 v5, 0x44

    goto :goto_0

    .line 280
    :sswitch_4
    const/16 v5, 0x43

    goto :goto_0

    .line 282
    :sswitch_5
    const/16 v5, 0x48

    goto :goto_0

    .line 283
    :sswitch_6
    const/16 v5, 0x49

    goto :goto_0

    .line 275
    :cond_5
    :sswitch_7
    const-string v7, "java.lang.Character"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 276
    return v2

    .line 278
    :sswitch_8
    const/16 v5, 0x41

    .line 285
    :cond_6
    :goto_0
    if-eqz v5, :cond_9

    .line 287
    invoke-static {v3}, Lgnu/bytecode/PrimType;->findInHierarchy(Ljava/lang/String;)C

    move-result v7

    .line 288
    .local v7, "otherPriority":C
    if-eqz v7, :cond_9

    .line 289
    if-ne v7, v5, :cond_7

    goto :goto_1

    :cond_7
    if-ge v7, v5, :cond_8

    const/4 v2, 0x1

    goto :goto_1

    :cond_8
    const/4 v2, -0x1

    :goto_1
    return v2

    .line 292
    .end local v7    # "otherPriority":C
    :cond_9
    const-string v2, "java.lang.Object"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lgnu/bytecode/PrimType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p1, v2, :cond_a

    goto :goto_2

    .line 295
    :cond_a
    return v1

    .line 294
    :cond_b
    :goto_2
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_8
        0x43 -> :sswitch_7
        0x44 -> :sswitch_6
        0x46 -> :sswitch_5
        0x49 -> :sswitch_4
        0x4a -> :sswitch_3
        0x53 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .locals 3
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 132
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x20

    .line 134
    .local v0, "sig1":C
    :goto_1
    const/16 v2, 0x5a

    if-ne v0, v2, :cond_2

    .line 136
    sget-object v1, Lgnu/bytecode/PrimType;->javalangBooleanType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 137
    sget-object v1, Lgnu/bytecode/PrimType;->booleanValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_3

    .line 139
    :cond_2
    const/16 v2, 0x56

    if-ne v0, v2, :cond_3

    .line 140
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    goto :goto_3

    .line 143
    :cond_3
    sget-object v1, Lgnu/bytecode/PrimType;->javalangNumberType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 144
    const/16 v1, 0x49

    if-eq v0, v1, :cond_8

    const/16 v1, 0x53

    if-eq v0, v1, :cond_8

    const/16 v1, 0x42

    if-ne v0, v1, :cond_4

    goto :goto_2

    .line 146
    :cond_4
    const/16 v1, 0x4a

    if-ne v0, v1, :cond_5

    .line 147
    sget-object v1, Lgnu/bytecode/PrimType;->longValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_3

    .line 148
    :cond_5
    const/16 v1, 0x44

    if-ne v0, v1, :cond_6

    .line 149
    sget-object v1, Lgnu/bytecode/PrimType;->doubleValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_3

    .line 150
    :cond_6
    const/16 v1, 0x46

    if-ne v0, v1, :cond_7

    .line 151
    sget-object v1, Lgnu/bytecode/PrimType;->floatValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_3

    .line 154
    :cond_7
    invoke-super {p0, p1}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    goto :goto_3

    .line 145
    :cond_8
    :goto_2
    sget-object v1, Lgnu/bytecode/PrimType;->intValue_method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 156
    :goto_3
    return-void
.end method

.method public emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V
    .locals 5
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 88
    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 89
    .local v0, "sig1":C
    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->boxedType()Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 90
    .local v2, "clas":Lgnu/bytecode/ClassType;
    const/16 v3, 0x5a

    if-ne v0, v3, :cond_0

    .line 92
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 93
    const-string v1, "TRUE"

    invoke-virtual {v2, v1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 94
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 95
    const-string v1, "FALSE"

    invoke-virtual {v2, v1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 96
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 97
    return-void

    .line 100
    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/bytecode/Type;

    .line 101
    .local v3, "args":[Lgnu/bytecode/Type;
    aput-object p0, v3, v1

    .line 102
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    iget v1, v1, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    const/high16 v4, 0x310000    # 4.49994E-39f

    if-lt v1, v4, :cond_1

    .line 103
    const-string v1, "valueOf"

    invoke-virtual {v2, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    .local v1, "method":Lgnu/bytecode/Method;
    goto :goto_0

    .line 106
    .end local v1    # "method":Lgnu/bytecode/Method;
    :cond_1
    const-string v1, "<init>"

    invoke-virtual {v2, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    .line 107
    .restart local v1    # "method":Lgnu/bytecode/Method;
    invoke-virtual {p1, v2}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 108
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 109
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 111
    :goto_0
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 112
    return-void
.end method

.method public emitIsInstance(Lgnu/bytecode/CodeAttr;)V
    .locals 3
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 116
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x20

    .line 118
    .local v0, "sig1":C
    :goto_1
    const/16 v2, 0x5a

    if-ne v0, v2, :cond_2

    .line 119
    sget-object v1, Lgnu/bytecode/PrimType;->javalangBooleanType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, p1}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    goto :goto_2

    .line 120
    :cond_2
    const/16 v2, 0x56

    if-ne v0, v2, :cond_3

    .line 122
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 123
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    goto :goto_2

    .line 127
    :cond_3
    sget-object v1, Lgnu/bytecode/PrimType;->javalangNumberType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, p1}, Lgnu/bytecode/ClassType;->emitIsInstance(Lgnu/bytecode/CodeAttr;)V

    .line 128
    :goto_2
    return-void
.end method

.method public promotedType()Lgnu/bytecode/Type;
    .locals 2

    .line 209
    iget-object v0, p0, Lgnu/bytecode/PrimType;->signature:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 214
    invoke-virtual {p0}, Lgnu/bytecode/PrimType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0

    .line 212
    :sswitch_0
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x49 -> :sswitch_0
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
    .end sparse-switch
.end method
