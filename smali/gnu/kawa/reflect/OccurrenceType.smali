.class public Lgnu/kawa/reflect/OccurrenceType;
.super Lgnu/bytecode/ObjectType;
.source "OccurrenceType.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/expr/TypeValue;


# static fields
.field public static final emptySequenceType:Lgnu/bytecode/Type;

.field static final isInstanceMethod:Lgnu/bytecode/Method;

.field public static final typeOccurrenceType:Lgnu/bytecode/ClassType;


# instance fields
.field base:Lgnu/bytecode/Type;

.field maxOccurs:I

.field minOccurs:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    sget-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lgnu/kawa/reflect/OccurrenceType;->getInstance(Lgnu/bytecode/Type;II)Lgnu/bytecode/Type;

    move-result-object v0

    sput-object v0, Lgnu/kawa/reflect/OccurrenceType;->emptySequenceType:Lgnu/bytecode/Type;

    .line 305
    const-string v0, "gnu.kawa.reflect.OccurrenceType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/reflect/OccurrenceType;->typeOccurrenceType:Lgnu/bytecode/ClassType;

    .line 307
    sget-object v0, Lgnu/kawa/reflect/OccurrenceType;->typeOccurrenceType:Lgnu/bytecode/ClassType;

    const-string v1, "isInstance"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/reflect/OccurrenceType;->isInstanceMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Type;II)V
    .locals 0
    .param p1, "base"    # Lgnu/bytecode/Type;
    .param p2, "minOccurs"    # I
    .param p3, "maxOccurs"    # I

    .line 26
    invoke-direct {p0}, Lgnu/bytecode/ObjectType;-><init>()V

    .line 27
    iput-object p1, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    .line 28
    iput p2, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    .line 29
    iput p3, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    .line 30
    return-void
.end method

.method public static getInstance(Lgnu/bytecode/Type;II)Lgnu/bytecode/Type;
    .locals 1
    .param p0, "base"    # Lgnu/bytecode/Type;
    .param p1, "minOccurs"    # I
    .param p2, "maxOccurs"    # I

    .line 34
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    .line 35
    return-object p0

    .line 36
    :cond_0
    if-nez p1, :cond_2

    if-gez p2, :cond_2

    sget-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_2

    .line 38
    :cond_1
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0

    .line 39
    :cond_2
    new-instance v0, Lgnu/kawa/reflect/OccurrenceType;

    invoke-direct {v0, p0, p1, p2}, Lgnu/kawa/reflect/OccurrenceType;-><init>(Lgnu/bytecode/Type;II)V

    return-object v0
.end method

.method public static itemCountCode(Lgnu/bytecode/Type;)C
    .locals 4
    .param p0, "type"    # Lgnu/bytecode/Type;

    .line 229
    invoke-static {p0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v0

    .line 230
    .local v0, "num":I
    and-int/lit16 v1, v0, 0xfff

    .line 231
    .local v1, "min":I
    shr-int/lit8 v2, v0, 0xc

    .line 232
    .local v2, "max":I
    if-nez v2, :cond_0

    const/16 v3, 0x30

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-nez v1, :cond_2

    if-ne v2, v3, :cond_1

    const/16 v3, 0x3f

    goto :goto_0

    :cond_1
    const/16 v3, 0x2a

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    if-ne v2, v3, :cond_3

    const/16 v3, 0x31

    goto :goto_0

    :cond_3
    const/16 v3, 0x2b

    :goto_0
    return v3
.end method

.method public static itemCountIsOne(Lgnu/bytecode/Type;)Z
    .locals 2
    .param p0, "type"    # Lgnu/bytecode/Type;

    .line 245
    invoke-static {p0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v0

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static itemCountIsZeroOrOne(Lgnu/bytecode/Type;)Z
    .locals 1
    .param p0, "type"    # Lgnu/bytecode/Type;

    .line 240
    invoke-static {p0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v0

    shr-int/lit8 v0, v0, 0xd

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static itemCountRange(Lgnu/bytecode/Type;)I
    .locals 8
    .param p0, "type"    # Lgnu/bytecode/Type;

    .line 174
    instance-of v0, p0, Lgnu/kawa/reflect/SingletonType;

    const/16 v1, 0x1001

    if-eqz v0, :cond_0

    .line 175
    return v1

    .line 176
    :cond_0
    instance-of v0, p0, Lgnu/kawa/reflect/OccurrenceType;

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 178
    move-object v0, p0

    check-cast v0, Lgnu/kawa/reflect/OccurrenceType;

    .line 179
    .local v0, "occ":Lgnu/kawa/reflect/OccurrenceType;
    invoke-virtual {v0}, Lgnu/kawa/reflect/OccurrenceType;->minOccurs()I

    move-result v3

    .line 180
    .local v3, "min":I
    invoke-virtual {v0}, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs()I

    move-result v4

    .line 181
    .local v4, "max":I
    invoke-virtual {v0}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-static {v5}, Lgnu/kawa/reflect/OccurrenceType;->itemCountRange(Lgnu/bytecode/Type;)I

    move-result v5

    .line 182
    .local v5, "bnum":I
    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    if-eq v4, v6, :cond_2

    :cond_1
    if-nez v5, :cond_3

    .line 184
    :cond_2
    return v5

    .line 185
    :cond_3
    const v6, 0xfffff

    if-le v4, v6, :cond_4

    .line 186
    const/4 v4, -0x1

    .line 187
    :cond_4
    if-nez v4, :cond_5

    .line 188
    return v2

    .line 189
    :cond_5
    and-int/lit16 v2, v5, 0xfff

    .line 190
    .local v2, "bmin":I
    shr-int/lit8 v7, v5, 0xc

    .line 191
    .local v7, "bmax":I
    if-eq v5, v1, :cond_a

    .line 193
    const/16 v1, 0xfff

    if-le v3, v1, :cond_6

    .line 194
    const/16 v3, 0xfff

    .line 195
    :cond_6
    mul-int v3, v3, v2

    .line 196
    if-le v3, v1, :cond_7

    .line 197
    const/16 v1, 0xfff

    move v3, v1

    .line 198
    :cond_7
    if-ltz v4, :cond_9

    if-gez v7, :cond_8

    goto :goto_0

    .line 201
    :cond_8
    mul-int v4, v4, v7

    goto :goto_1

    .line 199
    :cond_9
    :goto_0
    const/4 v1, -0x1

    move v4, v1

    .line 202
    :goto_1
    if-le v4, v6, :cond_a

    .line 203
    const/4 v4, -0x1

    .line 205
    :cond_a
    shl-int/lit8 v1, v4, 0xc

    or-int/2addr v1, v3

    return v1

    .line 207
    .end local v0    # "occ":Lgnu/kawa/reflect/OccurrenceType;
    .end local v2    # "bmin":I
    .end local v3    # "min":I
    .end local v4    # "max":I
    .end local v5    # "bnum":I
    .end local v7    # "bmax":I
    :cond_b
    instance-of v0, p0, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_d

    .line 208
    invoke-virtual {p0}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    :cond_c
    return v1

    .line 209
    :cond_d
    instance-of v0, p0, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_e

    .line 210
    return v1

    .line 211
    :cond_e
    instance-of v0, p0, Lgnu/bytecode/ObjectType;

    if-eqz v0, :cond_f

    .line 213
    sget-object v0, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v0

    .line 214
    .local v0, "cmp":I
    const/4 v2, -0x3

    if-ne v0, v2, :cond_f

    .line 215
    return v1

    .line 217
    .end local v0    # "cmp":I
    :cond_f
    const/16 v0, -0x1000

    return v0
.end method

.method public static itemPrimeType(Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .locals 1
    .param p0, "type"    # Lgnu/bytecode/Type;

    .line 252
    nop

    :goto_0
    instance-of v0, p0, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v0, :cond_0

    .line 253
    move-object v0, p0

    check-cast v0, Lgnu/kawa/reflect/OccurrenceType;

    invoke-virtual {v0}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object p0

    goto :goto_0

    .line 254
    :cond_0
    invoke-static {p0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsOne(Lgnu/bytecode/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_1

    :cond_1
    sget-object v0, Lgnu/kawa/reflect/SingletonType;->instance:Lgnu/kawa/reflect/SingletonType;

    :goto_1
    return-object v0
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 69
    instance-of v0, p1, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 79
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/kawa/reflect/OccurrenceType;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    return-object p1

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 3
    .param p1, "other"    # Lgnu/bytecode/Type;

    .line 52
    instance-of v0, p1, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v0, :cond_0

    .line 54
    move-object v0, p1

    check-cast v0, Lgnu/kawa/reflect/OccurrenceType;

    .line 55
    .local v0, "occOther":Lgnu/kawa/reflect/OccurrenceType;
    iget v1, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    iget v2, v0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    iget v2, v0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v1, v2, :cond_0

    .line 57
    iget-object v1, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v0}, Lgnu/kawa/reflect/OccurrenceType;->getBase()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v1

    return v1

    .line 64
    .end local v0    # "occOther":Lgnu/kawa/reflect/OccurrenceType;
    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method public convertValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "value"    # Lgnu/expr/Expression;

    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public emitIsInstance(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0
    .param p1, "incoming"    # Lgnu/bytecode/Variable;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 155
    invoke-static {p0, p1, p2, p3}, Lgnu/kawa/reflect/InstanceOf;->emitIsInstance(Lgnu/expr/TypeValue;Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 156
    return-void
.end method

.method public emitTestIf(Lgnu/bytecode/Variable;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .locals 2
    .param p1, "incoming"    # Lgnu/bytecode/Variable;
    .param p2, "decl"    # Lgnu/expr/Declaration;
    .param p3, "comp"    # Lgnu/expr/Compilation;

    .line 138
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 139
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 141
    :cond_0
    if-eqz p2, :cond_1

    .line 143
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 144
    invoke-virtual {p2, p3}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 146
    :cond_1
    invoke-virtual {p3, p0}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 148
    sget-object v1, Lgnu/kawa/reflect/OccurrenceType;->isInstanceMethod:Lgnu/bytecode/Method;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 149
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfIntNotZero()V

    .line 150
    return-void
.end method

.method public getBase()Lgnu/bytecode/Type;
    .locals 1

    .line 21
    iget-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getConstructor()Lgnu/mapping/Procedure;
    .locals 1

    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 1

    .line 47
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 86
    instance-of v0, p1, Lgnu/mapping/Values;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    .line 88
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Values;

    .line 89
    .local v0, "vals":Lgnu/mapping/Values;
    invoke-virtual {v0}, Lgnu/mapping/Values;->startPos()I

    move-result v3

    .line 90
    .local v3, "pos":I
    const/4 v4, 0x0

    .line 91
    .local v4, "n":I
    iget-object v5, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    instance-of v5, v5, Lgnu/lists/ItemPredicate;

    if-eqz v5, :cond_4

    .line 93
    iget-object v5, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    check-cast v5, Lgnu/lists/ItemPredicate;

    .line 97
    .local v5, "pred":Lgnu/lists/ItemPredicate;
    :goto_0
    invoke-interface {v5, v0, v3}, Lgnu/lists/ItemPredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v6

    .line 98
    .local v6, "matches":Z
    invoke-virtual {v0, v3}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v3

    .line 99
    if-nez v3, :cond_2

    .line 101
    iget v7, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-lt v4, v7, :cond_1

    iget v7, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ltz v7, :cond_0

    iget v7, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-gt v4, v7, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 104
    :cond_2
    if-nez v6, :cond_3

    .line 105
    return v1

    .line 106
    :cond_3
    nop

    .end local v6    # "matches":Z
    add-int/lit8 v4, v4, 0x1

    .line 107
    goto :goto_0

    .line 114
    .end local v5    # "pred":Lgnu/lists/ItemPredicate;
    :cond_4
    :goto_1
    invoke-virtual {v0, v3}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v3

    .line 115
    if-nez v3, :cond_7

    .line 117
    iget v5, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-lt v4, v5, :cond_6

    iget v5, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ltz v5, :cond_5

    iget v5, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-gt v4, v5, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1

    .line 120
    :cond_7
    invoke-virtual {v0, v3}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v5

    .line 121
    .local v5, "value":Ljava/lang/Object;
    iget-object v6, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v6, v5}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 122
    return v1

    .line 123
    :cond_8
    nop

    .end local v5    # "value":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    .line 124
    goto :goto_1

    .line 129
    .end local v0    # "vals":Lgnu/mapping/Values;
    .end local v3    # "pos":I
    .end local v4    # "n":I
    :cond_9
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-gt v0, v2, :cond_b

    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-nez v0, :cond_a

    goto :goto_2

    .line 131
    :cond_a
    iget-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 130
    :cond_b
    :goto_2
    return v1
.end method

.method public maxOccurs()I
    .locals 1

    .line 23
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    return v0
.end method

.method public minOccurs()I
    .locals 1

    .line 22
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 300
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    .line 301
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    .line 302
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    .line 303
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 267
    iget-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-virtual {v0}, Lgnu/bytecode/Type;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "b":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 269
    .local v2, "parens":Z
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 270
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    if-eqz v2, :cond_2

    .line 271
    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    if-eqz v2, :cond_3

    .line 274
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 275
    :cond_3
    iget v4, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-ne v4, v1, :cond_4

    iget v4, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v4, v1, :cond_4

    .line 276
    goto :goto_3

    .line 277
    :cond_4
    iget v4, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    if-nez v4, :cond_5

    iget v4, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v4, v1, :cond_5

    .line 278
    const/16 v1, 0x3f

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 279
    :cond_5
    iget v4, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    const/4 v5, -0x1

    if-ne v4, v1, :cond_6

    iget v1, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v1, v5, :cond_6

    .line 280
    const/16 v1, 0x2b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 281
    :cond_6
    iget v1, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    const/16 v4, 0x2a

    if-nez v1, :cond_7

    iget v1, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ne v1, v5, :cond_7

    .line 282
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 285
    :cond_7
    const/16 v1, 0x7b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 286
    iget v1, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 287
    const/16 v1, 0x2c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 288
    iget v1, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    if-ltz v1, :cond_8

    .line 289
    iget v1, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 291
    :cond_8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 292
    :goto_2
    const/16 v1, 0x7d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 294
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lgnu/kawa/reflect/OccurrenceType;->base:Lgnu/bytecode/Type;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 261
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->minOccurs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 262
    iget v0, p0, Lgnu/kawa/reflect/OccurrenceType;->maxOccurs:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 263
    return-void
.end method
