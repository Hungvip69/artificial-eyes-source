.class public Lgnu/bytecode/StackMapTableAttr;
.super Lgnu/bytecode/MiscAttr;
.source "StackMapTableAttr.java"


# static fields
.field public static compressStackMapTable:Z


# instance fields
.field countLocals:I

.field countStack:I

.field encodedLocals:[I

.field encodedStack:[I

.field numEntries:I

.field prevPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 23
    const-string v0, "StackMapTable"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[BII)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    .line 24
    invoke-virtual {p0, v2}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 25
    return-void
.end method

.method public constructor <init>([BLgnu/bytecode/CodeAttr;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "code"    # Lgnu/bytecode/CodeAttr;

    .line 30
    array-length v0, p1

    const-string v1, "StackMapTable"

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, v0}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[BII)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    .line 31
    invoke-virtual {p0, p2}, Lgnu/bytecode/StackMapTableAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 32
    invoke-virtual {p0, v2}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v0

    iput v0, p0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    .line 33
    return-void
.end method

.method static reallocBuffer([II)[I
    .locals 3
    .param p0, "buffer"    # [I
    .param p1, "needed"    # I

    .line 258
    if-nez p0, :cond_0

    .line 259
    add-int/lit8 v0, p1, 0xa

    new-array p0, v0, [I

    goto :goto_0

    .line 260
    :cond_0
    array-length v0, p0

    if-le p1, v0, :cond_1

    .line 262
    add-int/lit8 v0, p1, 0xa

    new-array v0, v0, [I

    .line 263
    .local v0, "tmp":[I
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    move-object p0, v0

    .line 266
    .end local v0    # "tmp":[I
    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public emitStackMapEntry(Lgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)V
    .locals 18
    .param p1, "label"    # Lgnu/bytecode/Label;
    .param p2, "code"    # Lgnu/bytecode/CodeAttr;

    .line 100
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v1, Lgnu/bytecode/Label;->position:I

    iget v4, v0, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 101
    .local v3, "offset_delta":I
    const/4 v5, 0x0

    .line 102
    .local v5, "matchingLocals":I
    iget-object v6, v1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v6, v6

    .line 103
    .local v6, "rawLocalsCount":I
    iget-object v7, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    array-length v7, v7

    const/4 v8, 0x0

    if-le v6, v7, :cond_0

    .line 105
    iget-object v7, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    array-length v7, v7

    add-int/2addr v7, v6

    new-array v7, v7, [I

    .line 106
    .local v7, "tmp":[I
    iget-object v9, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    iget v10, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    invoke-static {v9, v8, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iput-object v7, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    .line 109
    .end local v7    # "tmp":[I
    :cond_0
    iget-object v7, v1, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v7, v7

    .line 110
    .local v7, "rawStackCount":I
    iget-object v9, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    array-length v9, v9

    if-le v7, v9, :cond_1

    .line 112
    iget-object v9, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    array-length v9, v9

    add-int/2addr v9, v7

    new-array v9, v9, [I

    .line 113
    .local v9, "tmp":[I
    iget-object v10, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    iget v11, v0, Lgnu/bytecode/StackMapTableAttr;->countStack:I

    invoke-static {v10, v8, v9, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iput-object v9, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    .line 116
    .end local v9    # "tmp":[I
    :cond_1
    const/4 v9, 0x0

    .line 117
    .local v9, "unchangedLocals":I
    const/4 v10, 0x0

    .line 118
    .local v10, "curLocalsCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/4 v12, 0x3

    if-ge v11, v6, :cond_5

    .line 120
    iget-object v13, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    aget v13, v13, v10

    .line 121
    .local v13, "prevType":I
    iget-object v14, v1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aget-object v14, v14, v11

    invoke-virtual {v0, v14, v2}, Lgnu/bytecode/StackMapTableAttr;->encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I

    move-result v14

    .line 123
    .local v14, "nextType":I
    if-ne v13, v14, :cond_2

    if-ne v9, v10, :cond_2

    .line 124
    add-int/lit8 v9, v10, 0x1

    .line 125
    :cond_2
    iget-object v15, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    add-int/lit8 v16, v10, 0x1

    .end local v10    # "curLocalsCount":I
    .local v16, "curLocalsCount":I
    aput v14, v15, v10

    .line 126
    if-eq v14, v12, :cond_3

    const/4 v10, 0x4

    if-ne v14, v10, :cond_4

    .line 127
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 118
    .end local v13    # "prevType":I
    .end local v14    # "nextType":I
    :cond_4
    add-int/2addr v11, v4

    move/from16 v10, v16

    goto :goto_0

    .line 129
    .end local v11    # "i":I
    .end local v16    # "curLocalsCount":I
    .restart local v10    # "curLocalsCount":I
    :cond_5
    :goto_1
    if-lez v10, :cond_6

    iget-object v11, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    add-int/lit8 v13, v10, -0x1

    aget v11, v11, v13

    if-nez v11, :cond_6

    .line 130
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 131
    :cond_6
    const/4 v11, 0x0

    .line 132
    .local v11, "curStackCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v7, :cond_8

    .line 134
    iget-object v14, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    aget v14, v14, v11

    .line 135
    .local v14, "prevType":I
    iget-object v15, v1, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    aget-object v15, v15, v13

    .line 136
    .local v15, "t":Lgnu/bytecode/Type;
    sget-object v12, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    if-ne v15, v12, :cond_7

    .line 137
    iget-object v12, v1, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    add-int/lit8 v13, v13, 0x1

    aget-object v15, v12, v13

    .line 138
    :cond_7
    invoke-virtual {v0, v15, v2}, Lgnu/bytecode/StackMapTableAttr;->encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I

    move-result v12

    .line 139
    .local v12, "nextType":I
    iget-object v8, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    add-int/lit8 v17, v11, 0x1

    .end local v11    # "curStackCount":I
    .local v17, "curStackCount":I
    aput v12, v8, v11

    .line 132
    .end local v12    # "nextType":I
    .end local v14    # "prevType":I
    .end local v15    # "t":Lgnu/bytecode/Type;
    add-int/2addr v13, v4

    move/from16 v11, v17

    const/4 v8, 0x0

    const/4 v12, 0x3

    goto :goto_2

    .line 141
    .end local v13    # "i":I
    .end local v17    # "curStackCount":I
    .restart local v11    # "curStackCount":I
    :cond_8
    iget v8, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    sub-int v8, v10, v8

    .line 142
    .local v8, "localsDelta":I
    sget-boolean v12, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    if-eqz v12, :cond_c

    if-nez v8, :cond_c

    if-ne v10, v9, :cond_c

    if-gt v11, v4, :cond_c

    .line 145
    const/16 v12, 0x3f

    if-nez v11, :cond_a

    .line 147
    if-gt v3, v12, :cond_9

    .line 148
    invoke-virtual {v0, v3}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    goto/16 :goto_7

    .line 151
    :cond_9
    const/16 v12, 0xfb

    invoke-virtual {v0, v12}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 152
    invoke-virtual {v0, v3}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    goto/16 :goto_7

    .line 157
    :cond_a
    if-gt v3, v12, :cond_b

    .line 158
    add-int/lit8 v12, v3, 0x40

    invoke-virtual {v0, v12}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    goto :goto_3

    .line 161
    :cond_b
    const/16 v12, 0xf7

    invoke-virtual {v0, v12}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 162
    invoke-virtual {v0, v3}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 164
    :goto_3
    iget-object v12, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v0, v12}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    goto :goto_7

    .line 167
    :cond_c
    sget-boolean v12, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    if-eqz v12, :cond_d

    if-nez v11, :cond_d

    iget v12, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    if-ge v10, v12, :cond_d

    if-ne v9, v10, :cond_d

    const/4 v12, -0x3

    if-lt v8, v12, :cond_d

    .line 172
    add-int/lit16 v12, v8, 0xfb

    invoke-virtual {v0, v12}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 173
    invoke-virtual {v0, v3}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    goto :goto_7

    .line 175
    :cond_d
    sget-boolean v12, Lgnu/bytecode/StackMapTableAttr;->compressStackMapTable:Z

    if-eqz v12, :cond_f

    if-nez v11, :cond_f

    iget v12, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    if-ne v12, v9, :cond_f

    const/4 v12, 0x3

    if-gt v8, v12, :cond_f

    .line 179
    add-int/lit16 v12, v8, 0xfb

    invoke-virtual {v0, v12}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 180
    invoke-virtual {v0, v3}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 181
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    if-ge v12, v8, :cond_e

    .line 182
    iget-object v13, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    add-int v14, v9, v12

    aget v13, v13, v14

    invoke-virtual {v0, v13}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    .line 181
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .end local v12    # "i":I
    :cond_e
    goto :goto_7

    .line 186
    :cond_f
    const/16 v12, 0xff

    invoke-virtual {v0, v12}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 187
    invoke-virtual {v0, v3}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 188
    invoke-virtual {v0, v10}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 189
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    if-ge v12, v10, :cond_10

    .line 190
    iget-object v13, v0, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    aget v13, v13, v12

    invoke-virtual {v0, v13}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    .line 189
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 191
    .end local v12    # "i":I
    :cond_10
    invoke-virtual {v0, v11}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 192
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_6
    if-ge v12, v11, :cond_11

    .line 193
    iget-object v13, v0, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    aget v13, v13, v12

    invoke-virtual {v0, v13}, Lgnu/bytecode/StackMapTableAttr;->emitVerificationType(I)V

    .line 192
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 195
    .end local v12    # "i":I
    :cond_11
    :goto_7
    iput v10, v0, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    .line 196
    iput v11, v0, Lgnu/bytecode/StackMapTableAttr;->countStack:I

    .line 197
    iget v12, v1, Lgnu/bytecode/Label;->position:I

    iput v12, v0, Lgnu/bytecode/StackMapTableAttr;->prevPosition:I

    .line 198
    iget v12, v0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    add-int/2addr v12, v4

    iput v12, v0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    .line 199
    return-void
.end method

.method emitVerificationType(I)V
    .locals 2
    .param p1, "encoding"    # I

    .line 48
    and-int/lit16 v0, p1, 0xff

    .line 49
    .local v0, "tag":I
    invoke-virtual {p0, v0}, Lgnu/bytecode/StackMapTableAttr;->put1(I)V

    .line 50
    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 51
    shr-int/lit8 v1, p1, 0x8

    invoke-virtual {p0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(I)V

    .line 52
    :cond_0
    return-void
.end method

.method encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I
    .locals 3
    .param p1, "type"    # Lgnu/bytecode/Type;
    .param p2, "code"    # Lgnu/bytecode/CodeAttr;

    .line 57
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 58
    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lgnu/bytecode/UninitializedType;

    if-eqz v1, :cond_2

    .line 61
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/UninitializedType;

    .line 62
    .local v0, "utype":Lgnu/bytecode/UninitializedType;
    iget-object v1, v0, Lgnu/bytecode/UninitializedType;->label:Lgnu/bytecode/Label;

    .line 63
    .local v1, "label":Lgnu/bytecode/Label;
    if-nez v1, :cond_1

    .line 64
    const/4 v2, 0x6

    return v2

    .line 66
    :cond_1
    iget v2, v1, Lgnu/bytecode/Label;->position:I

    shl-int/lit8 v2, v2, 0x8

    or-int/lit8 v2, v2, 0x8

    return v2

    .line 70
    .end local v0    # "utype":Lgnu/bytecode/UninitializedType;
    .end local v1    # "label":Lgnu/bytecode/Label;
    :cond_2
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p1

    .line 71
    instance-of v1, p1, Lgnu/bytecode/PrimType;

    if-eqz v1, :cond_3

    .line 73
    iget-object v1, p1, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 84
    return v0

    .line 78
    :sswitch_0
    const/4 v0, 0x4

    return v0

    .line 80
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 82
    :sswitch_2
    const/4 v0, 0x3

    return v0

    .line 76
    :sswitch_3
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_3
    sget-object v0, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    if-ne p1, v0, :cond_4

    .line 88
    const/4 v0, 0x5

    return v0

    .line 90
    :cond_4
    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lgnu/bytecode/ObjectType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    iget v0, v0, Lgnu/bytecode/CpoolClass;->index:I

    shl-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x7

    return v0

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x43 -> :sswitch_3
        0x44 -> :sswitch_2
        0x46 -> :sswitch_1
        0x49 -> :sswitch_3
        0x4a -> :sswitch_0
        0x53 -> :sswitch_3
        0x5a -> :sswitch_3
    .end sparse-switch
.end method

.method extractVerificationType(II)I
    .locals 2
    .param p1, "startOffset"    # I
    .param p2, "tag"    # I

    .line 248
    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    .line 250
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v0

    .line 251
    .local v0, "value":I
    shl-int/lit8 v1, v0, 0x8

    or-int/2addr p2, v1

    .line 253
    .end local v0    # "value":I
    :cond_1
    return p2
.end method

.method extractVerificationTypes(III[I)I
    .locals 4
    .param p1, "startOffset"    # I
    .param p2, "count"    # I
    .param p3, "startIndex"    # I
    .param p4, "buffer"    # [I

    .line 272
    move v0, p1

    .line 273
    .local v0, "offset":I
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_3

    .line 276
    iget v1, p0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    if-lt v0, v1, :cond_0

    .line 277
    const/4 v1, -0x1

    .local v1, "encoding":I
    goto :goto_3

    .line 280
    .end local v1    # "encoding":I
    :cond_0
    iget-object v1, p0, Lgnu/bytecode/StackMapTableAttr;->data:[B

    aget-byte v1, v1, v0

    .line 281
    .local v1, "tag":I
    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationType(II)I

    move-result v2

    .line 282
    .local v2, "encoding":I
    const/4 v3, 0x7

    if-eq v1, v3, :cond_2

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x3

    :goto_2
    add-int/2addr v0, v3

    move v1, v2

    .line 284
    .end local v2    # "encoding":I
    .local v1, "encoding":I
    :goto_3
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "startIndex":I
    .local v2, "startIndex":I
    aput v1, p4, p3

    .line 285
    .end local v1    # "encoding":I
    move p3, v2

    goto :goto_0

    .line 286
    .end local v2    # "startIndex":I
    .restart local p3    # "startIndex":I
    :cond_3
    return v0
.end method

.method public getMethod()Lgnu/bytecode/Method;
    .locals 1

    .line 35
    iget-object v0, p0, Lgnu/bytecode/StackMapTableAttr;->container:Lgnu/bytecode/AttrContainer;

    check-cast v0, Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 16
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Attribute \""

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/StackMapTableAttr;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 327
    const-string v2, "\", length:"

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/StackMapTableAttr;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 329
    const-string v2, ", number of entries: "

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 330
    iget v2, v0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 331
    const/4 v2, 0x2

    .line 332
    .local v2, "ipos":I
    const/4 v3, -0x1

    .line 333
    .local v3, "pc_offset":I
    invoke-virtual/range {p0 .. p0}, Lgnu/bytecode/StackMapTableAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v4

    .line 334
    .local v4, "method":Lgnu/bytecode/Method;
    const/4 v5, 0x0

    .line 335
    .local v5, "encodedTypes":[I
    invoke-virtual {v4}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    iget-object v8, v4, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v8, v8

    add-int/2addr v6, v8

    .line 336
    .local v6, "curLocals":I
    const/4 v8, 0x0

    .line 337
    .local v8, "curStack":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget v10, v0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    if-ge v9, v10, :cond_f

    .line 339
    iget v10, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    if-lt v2, v10, :cond_0

    .line 341
    const/4 v7, -0x1

    .line 342
    .end local v9    # "i":I
    .local v7, "i":I
    goto/16 :goto_6

    .line 344
    .end local v7    # "i":I
    .restart local v9    # "i":I
    :cond_0
    add-int/lit8 v10, v2, 0x1

    .end local v2    # "ipos":I
    .local v10, "ipos":I
    invoke-virtual {v0, v2}, Lgnu/bytecode/StackMapTableAttr;->u1(I)I

    move-result v2

    .line 345
    .local v2, "tag":I
    add-int/lit8 v3, v3, 0x1

    .line 346
    const/4 v11, -0x1

    .line 347
    .local v11, "delta":I
    const/16 v12, 0x7f

    if-gt v2, v12, :cond_1

    .line 348
    and-int/lit8 v13, v2, 0x3f

    add-int/2addr v3, v13

    goto :goto_1

    .line 349
    :cond_1
    add-int/lit8 v13, v10, 0x1

    iget v14, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    if-lt v13, v14, :cond_2

    .line 351
    const/4 v7, -0x1

    .line 352
    .end local v10    # "ipos":I
    .local v7, "ipos":I
    move v2, v7

    goto/16 :goto_6

    .line 356
    .end local v7    # "ipos":I
    .restart local v10    # "ipos":I
    :cond_2
    invoke-virtual {v0, v10}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v11

    .line 357
    add-int/2addr v3, v11

    .line 358
    add-int/lit8 v10, v10, 0x2

    .line 360
    :goto_1
    const-string v13, "  offset: "

    invoke-virtual {v1, v13}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 362
    const/16 v13, 0x3f

    if-gt v2, v13, :cond_3

    .line 364
    const-string v12, " - same_frame"

    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 365
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 367
    :cond_3
    const/4 v13, 0x0

    if-le v2, v12, :cond_c

    const/16 v14, 0xf7

    if-ne v2, v14, :cond_4

    goto/16 :goto_3

    .line 376
    :cond_4
    const/16 v12, 0xf6

    if-gt v2, v12, :cond_5

    .line 378
    const-string v7, " - tag reserved for future use - "

    invoke-virtual {v1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 380
    move v2, v10

    goto/16 :goto_6

    .line 382
    :cond_5
    const/16 v12, 0xfa

    if-gt v2, v12, :cond_6

    .line 384
    rsub-int v12, v2, 0xfb

    .line 385
    .local v12, "count":I
    const-string v13, " - chop_frame - undefine "

    invoke-virtual {v1, v13}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 387
    const-string v13, " locals"

    invoke-virtual {v1, v13}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 388
    sub-int/2addr v6, v12

    .line 389
    const/4 v8, 0x0

    .line 390
    .end local v12    # "count":I
    goto/16 :goto_5

    .line 391
    :cond_6
    const/16 v12, 0xfb

    if-ne v2, v12, :cond_7

    .line 393
    const-string v12, " - same_frame_extended"

    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 394
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 396
    :cond_7
    const/16 v12, 0xfe

    if-gt v2, v12, :cond_8

    .line 398
    add-int/lit16 v12, v2, -0xfb

    .line 399
    .restart local v12    # "count":I
    const-string v13, " - append_frame - define "

    invoke-virtual {v1, v13}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 401
    const-string v13, " more locals"

    invoke-virtual {v1, v13}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 402
    add-int v13, v6, v12

    invoke-static {v5, v13}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v5

    .line 403
    invoke-virtual {v0, v10, v12, v6, v5}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v10

    .line 404
    invoke-virtual {v0, v5, v6, v12, v1}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 405
    add-int/2addr v6, v12

    .line 406
    const/4 v8, 0x0

    .line 407
    .end local v12    # "count":I
    goto/16 :goto_5

    .line 410
    :cond_8
    add-int/lit8 v12, v10, 0x1

    iget v14, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    if-lt v12, v14, :cond_9

    .line 412
    const/4 v7, -0x1

    .line 413
    .end local v10    # "ipos":I
    .restart local v7    # "ipos":I
    move v2, v7

    goto/16 :goto_6

    .line 415
    .end local v7    # "ipos":I
    .restart local v10    # "ipos":I
    :cond_9
    invoke-virtual {v0, v10}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v12

    .line 416
    .local v12, "num_locals":I
    add-int/lit8 v10, v10, 0x2

    .line 417
    const-string v14, " - full_frame.  Locals count: "

    invoke-virtual {v1, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 419
    invoke-static {v5, v12}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v5

    .line 420
    invoke-virtual {v0, v10, v12, v13, v5}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v10

    .line 421
    invoke-virtual {v0, v5, v13, v12, v1}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 422
    move v6, v12

    .line 423
    add-int/lit8 v14, v10, 0x1

    iget v15, v0, Lgnu/bytecode/StackMapTableAttr;->dataLength:I

    if-lt v14, v15, :cond_a

    .line 425
    const/4 v7, -0x1

    .line 426
    .end local v10    # "ipos":I
    .restart local v7    # "ipos":I
    move v2, v7

    goto :goto_6

    .line 428
    .end local v7    # "ipos":I
    .restart local v10    # "ipos":I
    :cond_a
    invoke-virtual {v0, v10}, Lgnu/bytecode/StackMapTableAttr;->u2(I)I

    move-result v14

    .line 429
    .local v14, "num_stack":I
    add-int/lit8 v10, v10, 0x2

    .line 430
    const-string v15, "    (end of locals)"

    invoke-virtual {v1, v15}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 432
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    .line 433
    .local v15, "nspaces":I
    :goto_2
    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_b

    .line 434
    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    const/4 v7, 0x1

    goto :goto_2

    .line 435
    .end local v15    # "nspaces":I
    :cond_b
    const-string v7, "       Stack count: "

    invoke-virtual {v1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v1, v14}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 437
    invoke-static {v5, v14}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v5

    .line 438
    invoke-virtual {v0, v10, v14, v13, v5}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v7

    .line 439
    .end local v10    # "ipos":I
    .restart local v7    # "ipos":I
    invoke-virtual {v0, v5, v13, v14, v1}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 440
    move v8, v14

    move v10, v7

    const/4 v7, 0x1

    goto :goto_5

    .line 369
    .end local v7    # "ipos":I
    .end local v12    # "num_locals":I
    .end local v14    # "num_stack":I
    .restart local v10    # "ipos":I
    :cond_c
    :goto_3
    if-gt v2, v12, :cond_d

    const-string v7, " - same_locals_1_stack_item_frame"

    goto :goto_4

    :cond_d
    const-string v7, " - same_locals_1_stack_item_frame_extended"

    :goto_4
    invoke-virtual {v1, v7}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 371
    const/4 v7, 0x1

    invoke-static {v5, v7}, Lgnu/bytecode/StackMapTableAttr;->reallocBuffer([II)[I

    move-result-object v5

    .line 372
    invoke-virtual {v0, v10, v7, v13, v5}, Lgnu/bytecode/StackMapTableAttr;->extractVerificationTypes(III[I)I

    move-result v10

    .line 373
    invoke-virtual {v0, v5, v13, v7, v1}, Lgnu/bytecode/StackMapTableAttr;->printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V

    .line 374
    const/4 v8, 0x1

    .line 442
    :goto_5
    if-gez v10, :cond_e

    .line 444
    const-string v7, "<ERROR - missing data>"

    invoke-virtual {v1, v7}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 445
    return-void

    .line 337
    .end local v2    # "tag":I
    .end local v11    # "delta":I
    :cond_e
    add-int/lit8 v9, v9, 0x1

    move v2, v10

    goto/16 :goto_0

    .line 448
    .end local v9    # "i":I
    .end local v10    # "ipos":I
    .local v2, "ipos":I
    :cond_f
    :goto_6
    return-void
.end method

.method printVerificationType(ILgnu/bytecode/ClassTypeWriter;)V
    .locals 5
    .param p1, "encoding"    # I
    .param p2, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .line 203
    and-int/lit16 v0, p1, 0xff

    .line 204
    .local v0, "tag":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    move v2, v1

    .line 238
    .local v1, "offset":I
    .local v2, "index":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<bad verification type tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    .end local v2    # "index":I
    .local v1, "index":I
    :pswitch_0
    shr-int/lit8 v2, p1, 0x8

    .line 234
    .local v2, "offset":I
    const-string v3, "uninitialized object created at "

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 236
    goto :goto_0

    .line 228
    .end local v1    # "index":I
    .end local v2    # "offset":I
    :pswitch_1
    shr-int/lit8 v1, p1, 0x8

    .line 229
    .restart local v1    # "index":I
    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 230
    const/4 v2, 0x7

    invoke-virtual {p2, v1, v2}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 231
    goto :goto_0

    .line 225
    .end local v1    # "index":I
    :pswitch_2
    const-string v1, "uninitialized this"

    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 226
    goto :goto_0

    .line 222
    :pswitch_3
    const-string v1, "null"

    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 223
    goto :goto_0

    .line 219
    :pswitch_4
    const-string v1, "long"

    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 220
    goto :goto_0

    .line 216
    :pswitch_5
    const-string v1, "double"

    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 217
    goto :goto_0

    .line 213
    :pswitch_6
    const-string v1, "float"

    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 214
    goto :goto_0

    .line 210
    :pswitch_7
    const-string v1, "integer"

    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 211
    goto :goto_0

    .line 207
    :pswitch_8
    const-string v1, "top/unavailable"

    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 208
    nop

    .line 240
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method printVerificationTypes([IIILgnu/bytecode/ClassTypeWriter;)V
    .locals 6
    .param p1, "encodings"    # [I
    .param p2, "startIndex"    # I
    .param p3, "count"    # I
    .param p4, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "regno":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_5

    .line 299
    aget v2, p1, v1

    .line 300
    .local v2, "encoding":I
    and-int/lit16 v3, v2, 0xff

    .line 301
    .local v3, "tag":I
    if-lt v1, p2, :cond_2

    .line 303
    const-string v4, "  "

    invoke-virtual {p4, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 304
    const/16 v4, 0x64

    if-lt v0, v4, :cond_0

    .line 305
    goto :goto_1

    .line 308
    :cond_0
    const/16 v4, 0xa

    const/16 v5, 0x20

    if-ge v0, v4, :cond_1

    .line 309
    invoke-virtual {p4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 310
    :cond_1
    invoke-virtual {p4, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 312
    :goto_1
    invoke-virtual {p4, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 313
    const-string v4, ": "

    invoke-virtual {p4, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0, v2, p4}, Lgnu/bytecode/StackMapTableAttr;->printVerificationType(ILgnu/bytecode/ClassTypeWriter;)V

    .line 315
    invoke-virtual {p4}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 317
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 318
    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 319
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 297
    .end local v2    # "encoding":I
    .end local v3    # "tag":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "dstr"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    iget v1, p0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/StackMapTableAttr;->put2(II)V

    .line 43
    invoke-super {p0, p1}, Lgnu/bytecode/MiscAttr;->write(Ljava/io/DataOutputStream;)V

    .line 44
    return-void
.end method
