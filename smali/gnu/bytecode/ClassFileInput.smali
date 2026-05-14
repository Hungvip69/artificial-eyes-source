.class public Lgnu/bytecode/ClassFileInput;
.super Ljava/io/DataInputStream;
.source "ClassFileInput.java"


# instance fields
.field ctype:Lgnu/bytecode/ClassType;

.field str:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "ctype"    # Lgnu/bytecode/ClassType;
    .param p2, "str"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    iput-object p1, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    .line 29
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    iput-object v0, p1, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 32
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readClassInfo()V

    .line 33
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readFields()V

    .line 34
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readMethods()V

    .line 35
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassFileInput;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    .line 36
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/ClassFormatError;

    const-string v1, "invalid magic number"

    invoke-direct {v0, v1}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "str"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 22
    return-void
.end method

.method public static readClassType(Ljava/io/InputStream;)Lgnu/bytecode/ClassType;
    .locals 2
    .param p0, "str"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 44
    new-instance v0, Lgnu/bytecode/ClassType;

    invoke-direct {v0}, Lgnu/bytecode/ClassType;-><init>()V

    .line 45
    .local v0, "ctype":Lgnu/bytecode/ClassType;
    new-instance v1, Lgnu/bytecode/ClassFileInput;

    invoke-direct {v1, v0, p0}, Lgnu/bytecode/ClassFileInput;-><init>(Lgnu/bytecode/ClassType;Ljava/io/InputStream;)V

    .line 46
    return-object v0
.end method


# virtual methods
.method getClassConstant(I)Lgnu/bytecode/CpoolClass;
    .locals 2
    .param p1, "index"    # I

    .line 351
    iget-object v0, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/CpoolClass;

    return-object v0
.end method

.method public readAttribute(Ljava/lang/String;ILgnu/bytecode/AttrContainer;)Lgnu/bytecode/Attribute;
    .locals 20
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "container"    # Lgnu/bytecode/AttrContainer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "SourceFile"

    if-ne v1, v4, :cond_0

    instance-of v4, v3, Lgnu/bytecode/ClassType;

    if-eqz v4, :cond_0

    .line 176
    new-instance v4, Lgnu/bytecode/SourceFileAttr;

    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v5

    move-object v6, v3

    check-cast v6, Lgnu/bytecode/ClassType;

    invoke-direct {v4, v5, v6}, Lgnu/bytecode/SourceFileAttr;-><init>(ILgnu/bytecode/ClassType;)V

    return-object v4

    .line 178
    :cond_0
    const-string v4, "Code"

    if-ne v1, v4, :cond_2

    instance-of v4, v3, Lgnu/bytecode/Method;

    if-eqz v4, :cond_2

    .line 180
    new-instance v4, Lgnu/bytecode/CodeAttr;

    move-object v5, v3

    check-cast v5, Lgnu/bytecode/Method;

    invoke-direct {v4, v5}, Lgnu/bytecode/CodeAttr;-><init>(Lgnu/bytecode/Method;)V

    .line 181
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    const/4 v5, -0x1

    iput v5, v4, Lgnu/bytecode/CodeAttr;->fixup_count:I

    .line 182
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->setMaxStack(I)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v5

    invoke-virtual {v4, v5}, Lgnu/bytecode/CodeAttr;->setMaxLocals(I)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readInt()I

    move-result v5

    .line 185
    .local v5, "code_len":I
    new-array v6, v5, [B

    .line 186
    .local v6, "insns":[B
    invoke-virtual {v0, v6}, Lgnu/bytecode/ClassFileInput;->readFully([B)V

    .line 187
    invoke-virtual {v4, v6}, Lgnu/bytecode/CodeAttr;->setCode([B)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v7

    .line 189
    .local v7, "exception_table_length":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 191
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v9

    .line 192
    .local v9, "start_pc":I
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v10

    .line 193
    .local v10, "end_pc":I
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v11

    .line 194
    .local v11, "handler_pc":I
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v12

    .line 195
    .local v12, "catch_type":I
    invoke-virtual {v4, v9, v10, v11, v12}, Lgnu/bytecode/CodeAttr;->addHandler(IIII)V

    .line 189
    .end local v9    # "start_pc":I
    .end local v10    # "end_pc":I
    .end local v11    # "handler_pc":I
    .end local v12    # "catch_type":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 197
    .end local v8    # "i":I
    :cond_1
    invoke-virtual {v0, v4}, Lgnu/bytecode/ClassFileInput;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    .line 198
    return-object v4

    .line 200
    .end local v4    # "code":Lgnu/bytecode/CodeAttr;
    .end local v5    # "code_len":I
    .end local v6    # "insns":[B
    .end local v7    # "exception_table_length":I
    :cond_2
    const-string v4, "LineNumberTable"

    if-ne v1, v4, :cond_4

    instance-of v4, v3, Lgnu/bytecode/CodeAttr;

    if-eqz v4, :cond_4

    .line 202
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    .line 203
    .local v4, "count":I
    new-array v5, v4, [S

    .line 204
    .local v5, "numbers":[S
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_3

    .line 206
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readShort()S

    move-result v7

    aput-short v7, v5, v6

    .line 204
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 208
    .end local v6    # "i":I
    :cond_3
    new-instance v6, Lgnu/bytecode/LineNumbersAttr;

    move-object v7, v3

    check-cast v7, Lgnu/bytecode/CodeAttr;

    invoke-direct {v6, v5, v7}, Lgnu/bytecode/LineNumbersAttr;-><init>([SLgnu/bytecode/CodeAttr;)V

    return-object v6

    .line 210
    .end local v4    # "count":I
    .end local v5    # "numbers":[S
    :cond_4
    const-string v4, "LocalVariableTable"

    if-ne v1, v4, :cond_c

    instance-of v4, v3, Lgnu/bytecode/CodeAttr;

    if-eqz v4, :cond_c

    .line 212
    move-object v4, v3

    check-cast v4, Lgnu/bytecode/CodeAttr;

    .line 213
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    new-instance v5, Lgnu/bytecode/LocalVarsAttr;

    invoke-direct {v5, v4}, Lgnu/bytecode/LocalVarsAttr;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 214
    .local v5, "attr":Lgnu/bytecode/LocalVarsAttr;
    invoke-virtual {v5}, Lgnu/bytecode/LocalVarsAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v6

    .line 215
    .local v6, "method":Lgnu/bytecode/Method;
    iget-object v7, v5, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    if-nez v7, :cond_5

    .line 216
    invoke-virtual {v6}, Lgnu/bytecode/Method;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v7

    iput-object v7, v5, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    .line 217
    :cond_5
    iget-object v7, v5, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    .line 218
    .local v7, "scope":Lgnu/bytecode/Scope;
    iget-object v8, v7, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    if-nez v8, :cond_6

    .line 219
    new-instance v8, Lgnu/bytecode/Label;

    iget v9, v4, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-direct {v8, v9}, Lgnu/bytecode/Label;-><init>(I)V

    iput-object v8, v7, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    .line 220
    :cond_6
    invoke-virtual {v6}, Lgnu/bytecode/Method;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v8

    .line 221
    .local v8, "constants":Lgnu/bytecode/ConstantPool;
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v9

    .line 222
    .local v9, "count":I
    iget-object v10, v7, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    iget v10, v10, Lgnu/bytecode/Label;->position:I

    .line 223
    .local v10, "prev_start":I
    iget-object v11, v7, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    iget v11, v11, Lgnu/bytecode/Label;->position:I

    .line 224
    .local v11, "prev_end":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v9, :cond_b

    .line 226
    new-instance v13, Lgnu/bytecode/Variable;

    invoke-direct {v13}, Lgnu/bytecode/Variable;-><init>()V

    .line 227
    .local v13, "var":Lgnu/bytecode/Variable;
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v14

    .line 228
    .local v14, "start_pc":I
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v15

    add-int/2addr v15, v14

    .line 230
    .local v15, "end_pc":I
    if-ne v14, v10, :cond_8

    if-eq v15, v11, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move/from16 v19, v9

    goto :goto_4

    .line 233
    :cond_8
    :goto_3
    move-object/from16 v16, v4

    .end local v4    # "code":Lgnu/bytecode/CodeAttr;
    .local v16, "code":Lgnu/bytecode/CodeAttr;
    iget-object v4, v7, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    if-eqz v4, :cond_a

    iget-object v4, v7, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    iget v4, v4, Lgnu/bytecode/Label;->position:I

    if-lt v14, v4, :cond_9

    iget-object v4, v7, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    iget v4, v4, Lgnu/bytecode/Label;->position:I

    if-le v15, v4, :cond_a

    .line 235
    :cond_9
    iget-object v7, v7, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    move-object/from16 v4, v16

    goto :goto_3

    .line 236
    :cond_a
    move-object v4, v7

    .line 237
    .local v4, "parent":Lgnu/bytecode/Scope;
    move-object/from16 v17, v6

    .end local v6    # "method":Lgnu/bytecode/Method;
    .local v17, "method":Lgnu/bytecode/Method;
    new-instance v6, Lgnu/bytecode/Scope;

    move-object/from16 v18, v7

    .end local v7    # "scope":Lgnu/bytecode/Scope;
    .local v18, "scope":Lgnu/bytecode/Scope;
    new-instance v7, Lgnu/bytecode/Label;

    invoke-direct {v7, v14}, Lgnu/bytecode/Label;-><init>(I)V

    move/from16 v19, v9

    .end local v9    # "count":I
    .local v19, "count":I
    new-instance v9, Lgnu/bytecode/Label;

    invoke-direct {v9, v15}, Lgnu/bytecode/Label;-><init>(I)V

    invoke-direct {v6, v7, v9}, Lgnu/bytecode/Scope;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 238
    .end local v18    # "scope":Lgnu/bytecode/Scope;
    .local v6, "scope":Lgnu/bytecode/Scope;
    invoke-virtual {v6, v4}, Lgnu/bytecode/Scope;->linkChild(Lgnu/bytecode/Scope;)V

    .line 239
    move v7, v14

    .line 240
    .end local v10    # "prev_start":I
    .local v7, "prev_start":I
    move v9, v15

    move v10, v7

    move v11, v9

    move-object v7, v6

    .line 242
    .end local v4    # "parent":Lgnu/bytecode/Scope;
    .end local v6    # "scope":Lgnu/bytecode/Scope;
    .local v7, "scope":Lgnu/bytecode/Scope;
    .restart local v10    # "prev_start":I
    :goto_4
    invoke-virtual {v7, v13}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/Variable;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v4

    invoke-virtual {v13, v4, v8}, Lgnu/bytecode/Variable;->setName(ILgnu/bytecode/ConstantPool;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v4

    invoke-virtual {v13, v4, v8}, Lgnu/bytecode/Variable;->setSignature(ILgnu/bytecode/ConstantPool;)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v4

    iput v4, v13, Lgnu/bytecode/Variable;->offset:I

    .line 224
    .end local v13    # "var":Lgnu/bytecode/Variable;
    .end local v14    # "start_pc":I
    .end local v15    # "end_pc":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v16

    move-object/from16 v6, v17

    move/from16 v9, v19

    goto :goto_2

    .line 247
    .end local v12    # "i":I
    .end local v16    # "code":Lgnu/bytecode/CodeAttr;
    .end local v17    # "method":Lgnu/bytecode/Method;
    .end local v19    # "count":I
    .local v4, "code":Lgnu/bytecode/CodeAttr;
    .local v6, "method":Lgnu/bytecode/Method;
    .restart local v9    # "count":I
    :cond_b
    return-object v5

    .line 249
    .end local v4    # "code":Lgnu/bytecode/CodeAttr;
    .end local v5    # "attr":Lgnu/bytecode/LocalVarsAttr;
    .end local v6    # "method":Lgnu/bytecode/Method;
    .end local v7    # "scope":Lgnu/bytecode/Scope;
    .end local v8    # "constants":Lgnu/bytecode/ConstantPool;
    .end local v9    # "count":I
    .end local v10    # "prev_start":I
    .end local v11    # "prev_end":I
    :cond_c
    const-string v4, "Signature"

    if-ne v1, v4, :cond_d

    instance-of v4, v3, Lgnu/bytecode/Member;

    if-eqz v4, :cond_d

    .line 251
    new-instance v4, Lgnu/bytecode/SignatureAttr;

    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v5

    move-object v6, v3

    check-cast v6, Lgnu/bytecode/Member;

    invoke-direct {v4, v5, v6}, Lgnu/bytecode/SignatureAttr;-><init>(ILgnu/bytecode/Member;)V

    return-object v4

    .line 253
    :cond_d
    const-string v4, "StackMapTable"

    const/4 v5, 0x0

    if-ne v1, v4, :cond_e

    instance-of v4, v3, Lgnu/bytecode/CodeAttr;

    if-eqz v4, :cond_e

    .line 255
    new-array v4, v2, [B

    .line 256
    .local v4, "data":[B
    invoke-virtual {v0, v4, v5, v2}, Lgnu/bytecode/ClassFileInput;->readFully([BII)V

    .line 257
    new-instance v5, Lgnu/bytecode/StackMapTableAttr;

    move-object v6, v3

    check-cast v6, Lgnu/bytecode/CodeAttr;

    invoke-direct {v5, v4, v6}, Lgnu/bytecode/StackMapTableAttr;-><init>([BLgnu/bytecode/CodeAttr;)V

    return-object v5

    .line 259
    .end local v4    # "data":[B
    :cond_e
    const-string v4, "RuntimeVisibleAnnotations"

    if-eq v1, v4, :cond_f

    const-string v4, "RuntimeInvisibleAnnotations"

    if-ne v1, v4, :cond_10

    :cond_f
    instance-of v4, v3, Lgnu/bytecode/Field;

    if-nez v4, :cond_18

    instance-of v4, v3, Lgnu/bytecode/Method;

    if-nez v4, :cond_18

    instance-of v4, v3, Lgnu/bytecode/ClassType;

    if-eqz v4, :cond_10

    goto/16 :goto_7

    .line 269
    :cond_10
    const-string v4, "ConstantValue"

    if-ne v1, v4, :cond_11

    instance-of v4, v3, Lgnu/bytecode/Field;

    if-eqz v4, :cond_11

    .line 271
    new-instance v4, Lgnu/bytecode/ConstantValueAttr;

    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v5

    invoke-direct {v4, v5}, Lgnu/bytecode/ConstantValueAttr;-><init>(I)V

    return-object v4

    .line 273
    :cond_11
    const-string v4, "InnerClasses"

    if-ne v1, v4, :cond_13

    instance-of v4, v3, Lgnu/bytecode/ClassType;

    if-eqz v4, :cond_13

    .line 275
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    .line 276
    .local v4, "count":I
    new-array v5, v4, [S

    .line 277
    .local v5, "data":[S
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    if-ge v6, v4, :cond_12

    .line 279
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readShort()S

    move-result v7

    aput-short v7, v5, v6

    .line 277
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 281
    .end local v6    # "i":I
    :cond_12
    new-instance v6, Lgnu/bytecode/InnerClassesAttr;

    move-object v7, v3

    check-cast v7, Lgnu/bytecode/ClassType;

    invoke-direct {v6, v5, v7}, Lgnu/bytecode/InnerClassesAttr;-><init>([SLgnu/bytecode/ClassType;)V

    return-object v6

    .line 283
    .end local v4    # "count":I
    .end local v5    # "data":[S
    :cond_13
    const-string v4, "EnclosingMethod"

    if-ne v1, v4, :cond_14

    instance-of v4, v3, Lgnu/bytecode/ClassType;

    if-eqz v4, :cond_14

    .line 285
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v4

    .line 286
    .local v4, "class_index":I
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v5

    .line 287
    .local v5, "method_index":I
    new-instance v6, Lgnu/bytecode/EnclosingMethodAttr;

    move-object v7, v3

    check-cast v7, Lgnu/bytecode/ClassType;

    invoke-direct {v6, v4, v5, v7}, Lgnu/bytecode/EnclosingMethodAttr;-><init>(IILgnu/bytecode/ClassType;)V

    return-object v6

    .line 289
    .end local v4    # "class_index":I
    .end local v5    # "method_index":I
    :cond_14
    const-string v4, "Exceptions"

    if-ne v1, v4, :cond_16

    instance-of v4, v3, Lgnu/bytecode/Method;

    if-eqz v4, :cond_16

    .line 291
    move-object v4, v3

    check-cast v4, Lgnu/bytecode/Method;

    .line 292
    .local v4, "meth":Lgnu/bytecode/Method;
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v5

    .line 293
    .local v5, "count":I
    new-array v6, v5, [S

    .line 294
    .local v6, "exn_indices":[S
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    if-ge v7, v5, :cond_15

    .line 295
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/ClassFileInput;->readShort()S

    move-result v8

    aput-short v8, v6, v7

    .line 294
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 296
    .end local v7    # "i":I
    :cond_15
    invoke-virtual {v4, v6}, Lgnu/bytecode/Method;->setExceptions([S)V

    .line 297
    invoke-virtual {v4}, Lgnu/bytecode/Method;->getExceptionAttr()Lgnu/bytecode/ExceptionsAttr;

    move-result-object v7

    return-object v7

    .line 299
    .end local v4    # "meth":Lgnu/bytecode/Method;
    .end local v5    # "count":I
    .end local v6    # "exn_indices":[S
    :cond_16
    const-string v4, "SourceDebugExtension"

    if-ne v1, v4, :cond_17

    instance-of v4, v3, Lgnu/bytecode/ClassType;

    if-eqz v4, :cond_17

    .line 301
    new-instance v4, Lgnu/bytecode/SourceDebugExtAttr;

    move-object v6, v3

    check-cast v6, Lgnu/bytecode/ClassType;

    invoke-direct {v4, v6}, Lgnu/bytecode/SourceDebugExtAttr;-><init>(Lgnu/bytecode/ClassType;)V

    .line 303
    .local v4, "attr":Lgnu/bytecode/SourceDebugExtAttr;
    new-array v6, v2, [B

    .line 304
    .local v6, "data":[B
    invoke-virtual {v0, v6, v5, v2}, Lgnu/bytecode/ClassFileInput;->readFully([BII)V

    .line 305
    iput-object v6, v4, Lgnu/bytecode/SourceDebugExtAttr;->data:[B

    .line 306
    iput v2, v4, Lgnu/bytecode/SourceDebugExtAttr;->dlength:I

    .line 307
    return-object v4

    .line 311
    .end local v4    # "attr":Lgnu/bytecode/SourceDebugExtAttr;
    .end local v6    # "data":[B
    :cond_17
    new-array v4, v2, [B

    .line 312
    .local v4, "data":[B
    invoke-virtual {v0, v4, v5, v2}, Lgnu/bytecode/ClassFileInput;->readFully([BII)V

    .line 313
    new-instance v5, Lgnu/bytecode/MiscAttr;

    invoke-direct {v5, v1, v4}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[B)V

    return-object v5

    .line 265
    .end local v4    # "data":[B
    :cond_18
    :goto_7
    new-array v4, v2, [B

    .line 266
    .restart local v4    # "data":[B
    invoke-virtual {v0, v4, v5, v2}, Lgnu/bytecode/ClassFileInput;->readFully([BII)V

    .line 267
    new-instance v5, Lgnu/bytecode/RuntimeAnnotationsAttr;

    invoke-direct {v5, v1, v4, v3}, Lgnu/bytecode/RuntimeAnnotationsAttr;-><init>(Ljava/lang/String;[BLgnu/bytecode/AttrContainer;)V

    return-object v5
.end method

.method public readAttributes(Lgnu/bytecode/AttrContainer;)I
    .locals 8
    .param p1, "container"    # Lgnu/bytecode/AttrContainer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v0

    .line 112
    .local v0, "count":I
    invoke-interface {p1}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v1

    .line 113
    .local v1, "last":Lgnu/bytecode/Attribute;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_6

    .line 115
    if-eqz v1, :cond_1

    .line 119
    :goto_1
    invoke-virtual {v1}, Lgnu/bytecode/Attribute;->getNext()Lgnu/bytecode/Attribute;

    move-result-object v3

    .line 120
    .local v3, "next":Lgnu/bytecode/Attribute;
    if-nez v3, :cond_0

    .line 121
    goto :goto_2

    .line 122
    :cond_0
    move-object v1, v3

    .line 123
    .end local v3    # "next":Lgnu/bytecode/Attribute;
    goto :goto_1

    .line 126
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v3

    .line 127
    .local v3, "index":I
    iget-object v4, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v4, v4, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/CpoolUtf8;

    .line 129
    .local v4, "nameConstant":Lgnu/bytecode/CpoolUtf8;
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readInt()I

    move-result v5

    .line 130
    .local v5, "length":I
    invoke-virtual {v4}, Lgnu/bytecode/CpoolUtf8;->intern()V

    .line 131
    iget-object v6, v4, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {p0, v6, v5, p1}, Lgnu/bytecode/ClassFileInput;->readAttribute(Ljava/lang/String;ILgnu/bytecode/AttrContainer;)Lgnu/bytecode/Attribute;

    move-result-object v6

    .line 132
    .local v6, "attr":Lgnu/bytecode/Attribute;
    if-eqz v6, :cond_5

    .line 134
    invoke-virtual {v6}, Lgnu/bytecode/Attribute;->getNameIndex()I

    move-result v7

    if-nez v7, :cond_2

    .line 135
    invoke-virtual {v6, v3}, Lgnu/bytecode/Attribute;->setNameIndex(I)V

    .line 136
    :cond_2
    if-nez v1, :cond_3

    .line 137
    invoke-interface {p1, v6}, Lgnu/bytecode/AttrContainer;->setAttributes(Lgnu/bytecode/Attribute;)V

    goto :goto_3

    .line 140
    :cond_3
    invoke-interface {p1}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v7

    if-ne v7, v6, :cond_4

    .line 142
    invoke-virtual {v6}, Lgnu/bytecode/Attribute;->getNext()Lgnu/bytecode/Attribute;

    move-result-object v7

    invoke-interface {p1, v7}, Lgnu/bytecode/AttrContainer;->setAttributes(Lgnu/bytecode/Attribute;)V

    .line 143
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgnu/bytecode/Attribute;->setNext(Lgnu/bytecode/Attribute;)V

    .line 145
    :cond_4
    invoke-virtual {v1, v6}, Lgnu/bytecode/Attribute;->setNext(Lgnu/bytecode/Attribute;)V

    .line 147
    :goto_3
    move-object v1, v6

    .line 113
    .end local v3    # "index":I
    .end local v4    # "nameConstant":Lgnu/bytecode/CpoolUtf8;
    .end local v5    # "length":I
    .end local v6    # "attr":Lgnu/bytecode/Attribute;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "i":I
    :cond_6
    return v0
.end method

.method public readClassInfo()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lgnu/bytecode/ClassType;->access_flags:I

    .line 76
    iget-object v0, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lgnu/bytecode/ClassType;->thisClassIndex:I

    .line 77
    iget-object v0, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget v0, v0, Lgnu/bytecode/ClassType;->thisClassIndex:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassFileInput;->getClassConstant(I)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    .line 78
    .local v0, "clas":Lgnu/bytecode/CpoolClass;
    iget-object v1, v0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v1, v1, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    .line 79
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lgnu/bytecode/ClassType;->this_name:Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lgnu/bytecode/ClassType;->setSignature(Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v5

    iput v5, v2, Lgnu/bytecode/ClassType;->superClassIndex:I

    .line 83
    iget-object v2, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget v2, v2, Lgnu/bytecode/ClassType;->superClassIndex:I

    if-nez v2, :cond_0

    .line 84
    iget-object v2, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v5}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v2, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget v2, v2, Lgnu/bytecode/ClassType;->superClassIndex:I

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassFileInput;->getClassConstant(I)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    .line 88
    iget-object v2, v0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v1, v2, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    .line 89
    iget-object v2, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lgnu/bytecode/ClassType;->setSuper(Ljava/lang/String;)V

    .line 92
    :goto_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v2

    .line 93
    .local v2, "nInterfaces":I
    if-lez v2, :cond_1

    .line 95
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    new-array v6, v2, [Lgnu/bytecode/ClassType;

    iput-object v6, v5, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    .line 96
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    new-array v6, v2, [I

    iput-object v6, v5, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    .line 97
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 99
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v6

    .line 100
    .local v6, "index":I
    iget-object v7, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v7, v7, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    aput v6, v7, v5

    .line 101
    iget-object v7, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v7, v7, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    const/4 v8, 0x7

    invoke-virtual {v7, v6, v8}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lgnu/bytecode/CpoolClass;

    .line 103
    iget-object v7, v0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v7, v7, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 104
    iget-object v7, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v7, v7, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    aput-object v8, v7, v5

    .line 97
    .end local v6    # "index":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 107
    .end local v5    # "i":I
    :cond_1
    return-void
.end method

.method public readConstants()Lgnu/bytecode/ConstantPool;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-instance v0, Lgnu/bytecode/ConstantPool;

    invoke-direct {v0, p0}, Lgnu/bytecode/ConstantPool;-><init>(Ljava/io/DataInputStream;)V

    return-object v0
.end method

.method public readFields()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v0

    .line 320
    .local v0, "nFields":I
    iget-object v1, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    iget-object v1, v1, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 321
    .local v1, "constants":Lgnu/bytecode/ConstantPool;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v3

    .line 324
    .local v3, "flags":I
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v4

    .line 325
    .local v4, "nameIndex":I
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v5

    .line 326
    .local v5, "descriptorIndex":I
    iget-object v6, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->addField()Lgnu/bytecode/Field;

    move-result-object v6

    .line 327
    .local v6, "fld":Lgnu/bytecode/Field;
    invoke-virtual {v6, v4, v1}, Lgnu/bytecode/Field;->setName(ILgnu/bytecode/ConstantPool;)V

    .line 328
    invoke-virtual {v6, v5, v1}, Lgnu/bytecode/Field;->setSignature(ILgnu/bytecode/ConstantPool;)V

    .line 329
    iput v3, v6, Lgnu/bytecode/Field;->flags:I

    .line 330
    invoke-virtual {p0, v6}, Lgnu/bytecode/ClassFileInput;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    .line 321
    .end local v3    # "flags":I
    .end local v4    # "nameIndex":I
    .end local v5    # "descriptorIndex":I
    .end local v6    # "fld":Lgnu/bytecode/Field;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public readFormatVersion()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v0

    .line 61
    .local v0, "minor":I
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v1

    .line 62
    .local v1, "major":I
    iget-object v2, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    const/high16 v3, 0x10000

    mul-int v3, v3, v1

    add-int/2addr v3, v0

    iput v3, v2, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 63
    return-void
.end method

.method public readHeader()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readInt()I

    move-result v0

    .line 52
    .local v0, "magic":I
    const v1, -0x35014542    # -8346975.0f

    if-eq v0, v1, :cond_0

    .line 53
    const/4 v1, 0x0

    return v1

    .line 54
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readFormatVersion()V

    .line 55
    const/4 v1, 0x1

    return v1
.end method

.method public readMethods()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v0

    .line 337
    .local v0, "nMethods":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v2

    .line 340
    .local v2, "flags":I
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v3

    .line 341
    .local v3, "nameIndex":I
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->readUnsignedShort()I

    move-result v4

    .line 342
    .local v4, "descriptorIndex":I
    iget-object v5, p0, Lgnu/bytecode/ClassFileInput;->ctype:Lgnu/bytecode/ClassType;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    .line 343
    .local v5, "meth":Lgnu/bytecode/Method;
    invoke-virtual {v5, v3}, Lgnu/bytecode/Method;->setName(I)V

    .line 344
    invoke-virtual {v5, v4}, Lgnu/bytecode/Method;->setSignature(I)V

    .line 345
    invoke-virtual {p0, v5}, Lgnu/bytecode/ClassFileInput;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    .line 337
    .end local v2    # "flags":I
    .end local v3    # "nameIndex":I
    .end local v4    # "descriptorIndex":I
    .end local v5    # "meth":Lgnu/bytecode/Method;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 347
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public final skipAttribute(I)V
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "read":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 159
    sub-int v1, p1, v0

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/ClassFileInput;->skip(J)J

    move-result-wide v1

    long-to-int v2, v1

    .line 160
    .local v2, "skipped":I
    if-nez v2, :cond_1

    .line 162
    invoke-virtual {p0}, Lgnu/bytecode/ClassFileInput;->read()I

    move-result v1

    if-ltz v1, :cond_0

    .line 165
    const/4 v2, 0x1

    goto :goto_1

    .line 163
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    const-string v3, "EOF while reading class files attributes"

    invoke-direct {v1, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_1
    :goto_1
    add-int/2addr v0, v2

    .line 168
    .end local v2    # "skipped":I
    goto :goto_0

    .line 169
    :cond_2
    return-void
.end method
