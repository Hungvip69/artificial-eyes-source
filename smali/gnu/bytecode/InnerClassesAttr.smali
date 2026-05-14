.class public Lgnu/bytecode/InnerClassesAttr;
.super Lgnu/bytecode/Attribute;
.source "InnerClassesAttr.java"


# instance fields
.field count:I

.field data:[S


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 1
    .param p1, "cl"    # Lgnu/bytecode/ClassType;

    .line 14
    const-string v0, "InnerClasses"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Lgnu/bytecode/InnerClassesAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 16
    return-void
.end method

.method public constructor <init>([SLgnu/bytecode/ClassType;)V
    .locals 1
    .param p1, "data"    # [S
    .param p2, "cl"    # Lgnu/bytecode/ClassType;

    .line 20
    invoke-direct {p0, p2}, Lgnu/bytecode/InnerClassesAttr;-><init>(Lgnu/bytecode/ClassType;)V

    .line 21
    array-length v0, p1

    shr-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput v0, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    .line 22
    iput-object p1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    .line 23
    return-void
.end method

.method public static getFirstInnerClasses(Lgnu/bytecode/Attribute;)Lgnu/bytecode/InnerClassesAttr;
    .locals 1
    .param p0, "attr"    # Lgnu/bytecode/Attribute;

    .line 29
    nop

    :goto_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Lgnu/bytecode/InnerClassesAttr;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    iget-object p0, p0, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    move-object v0, p0

    check-cast v0, Lgnu/bytecode/InnerClassesAttr;

    return-object v0
.end method


# virtual methods
.method addClass(Lgnu/bytecode/CpoolClass;Lgnu/bytecode/ClassType;)V
    .locals 10
    .param p1, "centry"    # Lgnu/bytecode/CpoolClass;
    .param p2, "owner"    # Lgnu/bytecode/ClassType;

    .line 39
    iget v0, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    mul-int/lit8 v0, v0, 0x4

    .line 40
    .local v0, "i":I
    iget-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 41
    const/16 v1, 0x10

    new-array v1, v1, [S

    iput-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    goto :goto_0

    .line 42
    :cond_0
    iget-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 44
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [S

    .line 45
    .local v1, "tmp":[S
    iget-object v3, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iput-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    .line 48
    .end local v1    # "tmp":[S
    :cond_1
    :goto_0
    iget-object v1, p2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 49
    .local v1, "constants":Lgnu/bytecode/ConstantPool;
    invoke-virtual {p1}, Lgnu/bytecode/CpoolClass;->getClassType()Lgnu/bytecode/ObjectType;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    .line 51
    .local v3, "clas":Lgnu/bytecode/ClassType;
    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v5

    iget v5, v5, Lgnu/bytecode/CpoolUtf8;->index:I

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x0

    .line 54
    .local v5, "name_index":I
    :goto_2
    iget-object v6, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    iget v7, p1, Lgnu/bytecode/CpoolClass;->index:I

    int-to-short v7, v7

    aput-short v7, v6, v0

    .line 55
    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v6

    .line 56
    .local v6, "outer":Lgnu/bytecode/ClassType;
    iget-object v7, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    add-int/lit8 v8, v0, 0x1

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v6}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v2

    iget v2, v2, Lgnu/bytecode/CpoolClass;->index:I

    int-to-short v2, v2

    :goto_3
    aput-short v2, v7, v8

    .line 58
    iget-object v2, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    add-int/lit8 v7, v0, 0x2

    int-to-short v8, v5

    aput-short v8, v2, v7

    .line 59
    invoke-virtual {v3}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v2

    .line 60
    .local v2, "flags":I
    and-int/lit8 v2, v2, -0x21

    .line 61
    iget-object v7, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    add-int/lit8 v8, v0, 0x3

    int-to-short v9, v2

    aput-short v9, v7, v8

    .line 62
    return-void
.end method

.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 0
    .param p1, "cl"    # Lgnu/bytecode/ClassType;

    .line 66
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 68
    return-void
.end method

.method public getLength()I
    .locals 1

    .line 72
    iget v0, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 18
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lgnu/bytecode/InnerClassesAttr;->container:Lgnu/bytecode/AttrContainer;

    check-cast v2, Lgnu/bytecode/ClassType;

    .line 92
    .local v2, "ctype":Lgnu/bytecode/ClassType;
    iget-object v3, v0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v3

    .line 93
    .local v3, "constants":Lgnu/bytecode/ConstantPool;
    :goto_0
    const-string v5, "Attribute \""

    invoke-virtual {v1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/InnerClassesAttr;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 95
    const-string v5, "\", length:"

    invoke-virtual {v1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/InnerClassesAttr;->getLength()I

    move-result v5

    invoke-virtual {v1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 97
    const-string v5, ", count: "

    invoke-virtual {v1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 98
    iget v5, v0, Lgnu/bytecode/InnerClassesAttr;->count:I

    invoke-virtual {v1, v5}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 99
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget v6, v0, Lgnu/bytecode/InnerClassesAttr;->count:I

    if-ge v5, v6, :cond_10

    .line 101
    const v6, 0xffff

    if-nez v3, :cond_1

    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    iget-object v7, v0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    mul-int/lit8 v8, v5, 0x4

    aget-short v7, v7, v8

    and-int/2addr v7, v6

    .line 102
    .local v7, "inner_index":I
    :goto_2
    if-eqz v3, :cond_3

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v3, v7}, Lgnu/bytecode/ConstantPool;->getForcedClass(I)Lgnu/bytecode/CpoolClass;

    move-result-object v8

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v8, 0x0

    .line 104
    .local v8, "centry":Lgnu/bytecode/CpoolClass;
    :goto_4
    if-eqz v8, :cond_4

    iget-object v9, v8, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    instance-of v9, v9, Lgnu/bytecode/ClassType;

    if-eqz v9, :cond_4

    iget-object v9, v8, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    check-cast v9, Lgnu/bytecode/ClassType;

    goto :goto_5

    :cond_4
    const/4 v9, 0x0

    .line 107
    .local v9, "clas":Lgnu/bytecode/ClassType;
    :goto_5
    const/16 v10, 0x20

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 108
    if-nez v7, :cond_5

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v11

    goto :goto_6

    :cond_5
    iget-object v11, v0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    mul-int/lit8 v12, v5, 0x4

    add-int/lit8 v12, v12, 0x3

    aget-short v11, v11, v12

    and-int/2addr v11, v6

    .line 110
    .local v11, "access":I
    :goto_6
    const/16 v12, 0x49

    invoke-static {v11, v12}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 114
    const/4 v10, 0x1

    if-nez v7, :cond_6

    if-eqz v9, :cond_6

    .line 115
    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    .local v12, "name":Ljava/lang/String;
    goto :goto_8

    .line 118
    .end local v12    # "name":Ljava/lang/String;
    :cond_6
    iget-object v12, v0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    mul-int/lit8 v13, v5, 0x4

    add-int/lit8 v13, v13, 0x2

    aget-short v12, v12, v13

    and-int/2addr v12, v6

    .line 119
    .local v12, "index":I
    if-eqz v3, :cond_8

    if-nez v12, :cond_7

    goto :goto_7

    .line 123
    :cond_7
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 124
    invoke-virtual {v3, v12, v10}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v13

    check-cast v13, Lgnu/bytecode/CpoolUtf8;

    move-object v14, v13

    check-cast v14, Lgnu/bytecode/CpoolUtf8;

    iget-object v13, v13, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    move-object v12, v13

    .local v13, "name":Ljava/lang/String;
    goto :goto_8

    .line 120
    .end local v13    # "name":Ljava/lang/String;
    :cond_8
    :goto_7
    const-string v13, "(Anonymous)"

    move-object v12, v13

    .line 128
    .local v12, "name":Ljava/lang/String;
    :goto_8
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 129
    const-string v13, " = "

    invoke-virtual {v1, v13}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 130
    if-eqz v8, :cond_9

    .line 131
    invoke-virtual {v8}, Lgnu/bytecode/CpoolClass;->getClassName()Ljava/lang/String;

    move-result-object v12

    goto :goto_9

    .line 133
    :cond_9
    const-string v12, "(Unknown)"

    .line 134
    :goto_9
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 135
    const-string v13, "; "

    invoke-virtual {v1, v13}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 136
    const-string v13, "not a member"

    const-string v14, "member of "

    if-nez v7, :cond_e

    if-eqz v9, :cond_e

    .line 138
    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "iname":Ljava/lang/String;
    const/16 v15, 0x2e

    invoke-virtual {v6, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 140
    .local v15, "dot":I
    if-lez v15, :cond_a

    .line 141
    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 142
    :cond_a
    const/16 v4, 0x24

    invoke-virtual {v6, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/2addr v4, v10

    .line 144
    .local v4, "start":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v4, v10, :cond_c

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move/from16 v16, v10

    move/from16 v17, v4

    .end local v4    # "start":I
    .local v16, "ch":C
    .local v17, "start":I
    const/16 v4, 0x30

    if-lt v10, v4, :cond_b

    const/16 v4, 0x39

    move/from16 v10, v16

    .end local v16    # "ch":C
    .local v10, "ch":C
    if-gt v10, v4, :cond_d

    .line 146
    invoke-virtual {v1, v13}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_b

    .line 144
    .end local v10    # "ch":C
    .restart local v16    # "ch":C
    :cond_b
    move/from16 v10, v16

    .end local v16    # "ch":C
    .restart local v10    # "ch":C
    goto :goto_a

    .end local v10    # "ch":C
    .end local v17    # "start":I
    .restart local v4    # "start":I
    :cond_c
    move/from16 v17, v4

    .line 149
    .end local v4    # "start":I
    .restart local v17    # "start":I
    :cond_d
    :goto_a
    invoke-virtual {v1, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 152
    .end local v6    # "iname":Ljava/lang/String;
    .end local v15    # "dot":I
    .end local v17    # "start":I
    :goto_b
    goto :goto_c

    .line 156
    :cond_e
    iget-object v4, v0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    mul-int/lit8 v15, v5, 0x4

    add-int/2addr v15, v10

    aget-short v4, v4, v15

    and-int/2addr v4, v6

    .line 157
    .local v4, "index":I
    if-nez v4, :cond_f

    .line 158
    invoke-virtual {v1, v13}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_c

    .line 161
    :cond_f
    invoke-virtual {v1, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 162
    const/4 v6, 0x7

    invoke-virtual {v3, v4, v6}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v6

    .line 163
    .local v6, "oentry":Lgnu/bytecode/CpoolEntry;
    move-object v10, v6

    check-cast v10, Lgnu/bytecode/CpoolClass;

    invoke-virtual {v10}, Lgnu/bytecode/CpoolClass;->getStringName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 166
    .end local v4    # "index":I
    .end local v6    # "oentry":Lgnu/bytecode/CpoolEntry;
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 99
    .end local v7    # "inner_index":I
    .end local v8    # "centry":Lgnu/bytecode/CpoolClass;
    .end local v9    # "clas":Lgnu/bytecode/ClassType;
    .end local v11    # "access":I
    .end local v12    # "name":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 168
    .end local v5    # "i":I
    :cond_10
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "dstr"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget v0, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    mul-int/lit8 v2, v0, 0x4

    aget-short v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 83
    iget-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x1

    aget-short v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 84
    iget-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x2

    aget-short v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 85
    iget-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x3

    aget-short v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
