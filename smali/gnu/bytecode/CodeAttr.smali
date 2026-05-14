.class public Lgnu/bytecode/CodeAttr;
.super Lgnu/bytecode/Attribute;
.source "CodeAttr.java"

# interfaces
.implements Lgnu/bytecode/AttrContainer;


# static fields
.field public static final DONT_USE_JSR:I = 0x2

.field static final FIXUP_CASE:I = 0x3

.field static final FIXUP_DEFINE:I = 0x1

.field static final FIXUP_DELETE3:I = 0x8

.field static final FIXUP_GOTO:I = 0x4

.field static final FIXUP_JSR:I = 0x5

.field static final FIXUP_LINE_NUMBER:I = 0xf

.field static final FIXUP_LINE_PC:I = 0xe

.field static final FIXUP_MOVE:I = 0x9

.field static final FIXUP_MOVE_TO_END:I = 0xa

.field static final FIXUP_NONE:I = 0x0

.field static final FIXUP_SWITCH:I = 0x2

.field static final FIXUP_TRANSFER:I = 0x6

.field static final FIXUP_TRANSFER2:I = 0x7

.field static final FIXUP_TRY:I = 0xb

.field static final FIXUP_TRY_END:I = 0xc

.field static final FIXUP_TRY_HANDLER:I = 0xd

.field public static final GENERATE_STACK_MAP_TABLE:I = 0x1

.field public static instructionLineMode:Z


# instance fields
.field PC:I

.field SP:I

.field attributes:Lgnu/bytecode/Attribute;

.field code:[B

.field currentExitableBlock:Lgnu/bytecode/ExitableBlock;

.field exception_table:[S

.field exception_table_length:I

.field exitableBlockLevel:I

.field fixup_count:I

.field fixup_labels:[Lgnu/bytecode/Label;

.field fixup_offsets:[I

.field flags:I

.field if_stack:Lgnu/bytecode/IfState;

.field lines:Lgnu/bytecode/LineNumbersAttr;

.field local_types:[Lgnu/bytecode/Type;

.field public locals:Lgnu/bytecode/LocalVarsAttr;

.field private max_locals:I

.field private max_stack:I

.field previousLabel:Lgnu/bytecode/Label;

.field sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

.field public stackMap:Lgnu/bytecode/StackMapTableAttr;

.field public stack_types:[Lgnu/bytecode/Type;

.field try_stack:Lgnu/bytecode/TryState;

.field private unreachable_here:Z

.field varsSetInCurrentBlock:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 181
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/bytecode/CodeAttr;->instructionLineMode:Z

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;)V
    .locals 2
    .param p1, "meth"    # Lgnu/bytecode/Method;

    .line 235
    const-string v0, "Code"

    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 237
    iput-object p0, p1, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    .line 238
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getClassfileMajorVersion()S

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 239
    iget v0, p0, Lgnu/bytecode/CodeAttr;->flags:I

    or-int/lit8 v0, v0, 0x3

    iput v0, p0, Lgnu/bytecode/CodeAttr;->flags:I

    .line 240
    :cond_0
    return-void
.end method

.method private adjustTypedOp(C)I
    .locals 1
    .param p1, "sig"    # C

    .line 1084
    sparse-switch p1, :sswitch_data_0

    .line 1090
    const/4 v0, 0x4

    return v0

    .line 1094
    :sswitch_0
    const/4 v0, 0x7

    return v0

    .line 1087
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 1086
    :sswitch_2
    const/4 v0, 0x0

    return v0

    .line 1088
    :sswitch_3
    const/4 v0, 0x2

    return v0

    .line 1089
    :sswitch_4
    const/4 v0, 0x3

    return v0

    .line 1093
    :sswitch_5
    const/4 v0, 0x6

    return v0

    .line 1092
    :sswitch_6
    const/4 v0, 0x5

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_6
        0x43 -> :sswitch_5
        0x44 -> :sswitch_4
        0x46 -> :sswitch_3
        0x49 -> :sswitch_2
        0x4a -> :sswitch_1
        0x53 -> :sswitch_0
        0x5a -> :sswitch_6
    .end sparse-switch
.end method

.method private adjustTypedOp(Lgnu/bytecode/Type;)I
    .locals 2
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 1100
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(C)I

    move-result v0

    return v0
.end method

.method public static final calculateSplit(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .line 862
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 863
    .local v0, "strLength":I
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 865
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 866
    .local v2, "segmentStart":I
    const/4 v3, 0x0

    .line 867
    .local v3, "byteLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 869
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 870
    .local v5, "ch":C
    const/16 v6, 0x800

    if-lt v5, v6, :cond_0

    const/4 v6, 0x3

    goto :goto_2

    :cond_0
    const/16 v6, 0x80

    if-ge v5, v6, :cond_2

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v6, 0x2

    .line 871
    .local v6, "bytes":I
    :goto_2
    add-int v7, v3, v6

    const v8, 0xffff

    if-le v7, v8, :cond_3

    .line 873
    sub-int v7, v4, v2

    int-to-char v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 874
    move v2, v4

    .line 875
    const/4 v3, 0x0

    .line 877
    :cond_3
    add-int/2addr v3, v6

    .line 867
    .end local v5    # "ch":C
    .end local v6    # "bytes":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 879
    .end local v4    # "i":I
    :cond_4
    sub-int v4, v0, v2

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 880
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static castNeeded(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z
    .locals 3
    .param p0, "top"    # Lgnu/bytecode/Type;
    .param p1, "required"    # Lgnu/bytecode/Type;

    .line 2004
    instance-of v0, p0, Lgnu/bytecode/UninitializedType;

    if-eqz v0, :cond_0

    .line 2005
    move-object v0, p0

    check-cast v0, Lgnu/bytecode/UninitializedType;

    invoke-virtual {v0}, Lgnu/bytecode/UninitializedType;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p0

    .line 2008
    :cond_0
    :goto_0
    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    .line 2009
    return v0

    .line 2010
    :cond_1
    instance-of v1, p1, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_2

    instance-of v1, p0, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Lgnu/bytecode/ClassType;

    move-object v2, p1

    check-cast v2, Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2013
    return v0

    .line 2014
    :cond_2
    instance-of v0, p1, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_3

    instance-of v0, p0, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_3

    .line 2017
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/ArrayType;

    invoke-virtual {v0}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object p1

    .line 2018
    move-object v0, p0

    check-cast v0, Lgnu/bytecode/ArrayType;

    invoke-virtual {v0}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object p0

    .line 2019
    goto :goto_0

    .line 2021
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private emitBinop(I)V
    .locals 5
    .param p1, "base_code"    # I

    .line 1241
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v0

    .line 1242
    .local v0, "type2":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 1243
    .local v1, "type1_raw":Lgnu/bytecode/Type;
    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1244
    .local v2, "type1":Lgnu/bytecode/Type;
    if-ne v2, v0, :cond_0

    instance-of v3, v2, Lgnu/bytecode/PrimType;

    if-eqz v3, :cond_0

    .line 1246
    invoke-direct {p0, p1, v2}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1247
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1248
    return-void

    .line 1245
    :cond_0
    new-instance v3, Ljava/lang/Error;

    const-string v4, "non-matching or bad types in binary operation"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private emitBinop(IC)V
    .locals 1
    .param p1, "base_code"    # I
    .param p2, "sig"    # C

    .line 1252
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1253
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1254
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/CodeAttr;->emitTypedOp(IC)V

    .line 1255
    invoke-static {p2}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1256
    return-void
.end method

.method private emitCheckcast(Lgnu/bytecode/Type;I)V
    .locals 3
    .param p1, "type"    # Lgnu/bytecode/Type;
    .param p2, "opcode"    # I

    .line 1990
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1991
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1992
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1993
    instance-of v0, p1, Lgnu/bytecode/ObjectType;

    if-eqz v0, :cond_0

    .line 1995
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lgnu/bytecode/ObjectType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    .line 2000
    return-void

    .line 1998
    :cond_0
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unimplemented type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in emitCheckcast/emitInstanceof"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final emitFieldop(Lgnu/bytecode/Field;I)V
    .locals 1
    .param p1, "field"    # Lgnu/bytecode/Field;
    .param p2, "opcode"    # I

    .line 1413
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1414
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1415
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addFieldRef(Lgnu/bytecode/Field;)Lgnu/bytecode/CpoolRef;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    .line 1416
    return-void
.end method

.method private emitShift(I)V
    .locals 5
    .param p1, "base_code"    # I

    .line 1294
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v0

    .line 1295
    .local v0, "type2":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 1296
    .local v1, "type1_raw":Lgnu/bytecode/Type;
    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1298
    .local v2, "type1":Lgnu/bytecode/Type;
    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq v2, v3, :cond_1

    sget-object v3, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 1299
    :cond_0
    new-instance v3, Ljava/lang/Error;

    const-string v4, "the value shifted must be an int or a long"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1301
    :cond_1
    :goto_0
    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-ne v0, v3, :cond_2

    .line 1304
    invoke-direct {p0, p1, v2}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1305
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1306
    return-void

    .line 1302
    :cond_2
    new-instance v3, Ljava/lang/Error;

    const-string v4, "the amount of shift must be an int"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private emitTryEnd(Z)V
    .locals 2
    .param p1, "fromFinally"    # Z

    .line 2246
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-boolean v0, v0, Lgnu/bytecode/TryState;->tryClauseDone:Z

    if-eqz v0, :cond_0

    .line 2247
    return-void

    .line 2248
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgnu/bytecode/TryState;->tryClauseDone:Z

    .line 2249
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v0, :cond_1

    .line 2250
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    sget-object v1, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v1

    iput-object v1, v0, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    .line 2251
    :cond_1
    invoke-direct {p0, p1}, Lgnu/bytecode/CodeAttr;->gotoFinallyOrEnd(Z)V

    .line 2252
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getLabel()Lgnu/bytecode/Label;

    move-result-object v1

    iput-object v1, v0, Lgnu/bytecode/TryState;->end_try:Lgnu/bytecode/Label;

    .line 2253
    return-void
.end method

.method private emitTypedOp(IC)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "sig"    # C

    .line 1111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1112
    invoke-direct {p0, p2}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(C)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1113
    return-void
.end method

.method private emitTypedOp(ILgnu/bytecode/Type;)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "type"    # Lgnu/bytecode/Type;

    .line 1105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1106
    invoke-direct {p0, p2}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(Lgnu/bytecode/Type;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1107
    return-void
.end method

.method private final fixupKind(I)I
    .locals 1
    .param p1, "index"    # I

    .line 175
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private final fixupOffset(I)I
    .locals 1
    .param p1, "index"    # I

    .line 170
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    aget v0, v0, p1

    shr-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private gotoFinallyOrEnd(Z)V
    .locals 2
    .param p1, "fromFinally"    # Z

    .line 2276
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2278
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_0

    .line 2279
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2280
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    if-nez v0, :cond_1

    .line 2281
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    new-instance v1, Lgnu/bytecode/Label;

    invoke-direct {v1}, Lgnu/bytecode/Label;-><init>()V

    iput-object v1, v0, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    .line 2282
    :cond_1
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2290
    :cond_2
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    if-eqz v0, :cond_3

    .line 2291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 2292
    :cond_3
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 2293
    if-nez p1, :cond_6

    .line 2294
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_1

    .line 2284
    :cond_4
    :goto_0
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v0, :cond_5

    .line 2285
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitJsr(Lgnu/bytecode/Label;)V

    .line 2286
    :cond_5
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 2297
    :cond_6
    :goto_1
    return-void
.end method

.method private mergeLabels(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)Lgnu/bytecode/Label;
    .locals 0
    .param p1, "oldLabel"    # Lgnu/bytecode/Label;
    .param p2, "newLabel"    # Lgnu/bytecode/Label;

    .line 2780
    if-eqz p1, :cond_0

    .line 2781
    invoke-virtual {p2, p1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/Label;)V

    .line 2782
    :cond_0
    return-object p2
.end method

.method private print(Ljava/lang/String;ILjava/io/PrintWriter;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "dst"    # Ljava/io/PrintWriter;

    .line 3257
    const/4 v0, 0x0

    .line 3258
    .local v0, "last":I
    const/4 v1, -0x1

    .line 3259
    .local v1, "pos":I
    :goto_0
    if-ltz p2, :cond_0

    .line 3261
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 3262
    const/16 v2, 0x3b

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 3259
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 3264
    :cond_0
    sub-int v2, v1, v0

    invoke-virtual {p3, p1, v0, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 3265
    return-void
.end method

.method private readInt(I)I
    .locals 2
    .param p1, "offset"    # I

    .line 3238
    invoke-direct {p0, p1}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x2

    invoke-direct {p0, v1}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private readUnsignedShort(I)I
    .locals 3
    .param p1, "offset"    # I

    .line 3233
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private words([Lgnu/bytecode/Type;)I
    .locals 4
    .param p1, "types"    # [Lgnu/bytecode/Type;

    .line 1459
    const/4 v0, 0x0

    .line 1460
    .local v0, "res":I
    array-length v1, p1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 1461
    aget-object v2, p1, v1

    iget v2, v2, Lgnu/bytecode/Type;->size:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 1462
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1464
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1465
    .end local v1    # "i":I
    :cond_1
    return v0
.end method


# virtual methods
.method public addHandler(IIII)V
    .locals 4
    .param p1, "start_pc"    # I
    .param p2, "end_pc"    # I
    .param p3, "handler_pc"    # I
    .param p4, "catch_type"    # I

    .line 2093
    iget v0, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    mul-int/lit8 v0, v0, 0x4

    .line 2094
    .local v0, "index":I
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    if-nez v1, :cond_0

    .line 2096
    const/16 v1, 0x14

    new-array v1, v1, [S

    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    goto :goto_0

    .line 2098
    :cond_0
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    array-length v1, v1

    if-gt v1, v0, :cond_1

    .line 2100
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [S

    .line 2101
    .local v1, "new_table":[S
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2102
    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    .line 2104
    .end local v1    # "new_table":[S
    :cond_1
    :goto_0
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .local v2, "index":I
    int-to-short v3, p1

    aput-short v3, v1, v0

    .line 2105
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .local v1, "index":I
    int-to-short v3, p2

    aput-short v3, v0, v2

    .line 2106
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    int-to-short v3, p3

    aput-short v3, v0, v1

    .line 2107
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    int-to-short v3, p4

    aput-short v3, v0, v2

    .line 2108
    iget v0, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    .line 2109
    return-void
.end method

.method public addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V
    .locals 6
    .param p1, "start_try"    # Lgnu/bytecode/Label;
    .param p2, "end_try"    # Lgnu/bytecode/Label;
    .param p3, "catch_type"    # Lgnu/bytecode/ClassType;

    .line 2116
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    .line 2118
    .local v0, "constants":Lgnu/bytecode/ConstantPool;
    if-nez p3, :cond_0

    .line 2119
    const/4 v1, 0x0

    .local v1, "catch_type_index":I
    goto :goto_0

    .line 2121
    .end local v1    # "catch_type_index":I
    :cond_0
    invoke-virtual {v0, p3}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v1

    iget v1, v1, Lgnu/bytecode/CpoolClass;->index:I

    .line 2122
    .restart local v1    # "catch_type_index":I
    :goto_0
    const/16 v2, 0xb

    invoke-virtual {p0, v2, p1}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 2123
    const/16 v2, 0xc

    invoke-virtual {p0, v2, v1, p2}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 2124
    new-instance v2, Lgnu/bytecode/Label;

    invoke-direct {v2}, Lgnu/bytecode/Label;-><init>()V

    .line 2125
    .local v2, "handler":Lgnu/bytecode/Label;
    iget-object v3, p1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    iput-object v3, v2, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    .line 2126
    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/bytecode/Type;

    iput-object v3, v2, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    .line 2127
    if-nez p3, :cond_1

    sget-object v3, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    goto :goto_1

    :cond_1
    move-object v3, p3

    .line 2128
    .local v3, "handler_class":Lgnu/bytecode/Type;
    :goto_1
    iget-object v4, v2, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 2129
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->setTypes(Lgnu/bytecode/Label;)V

    .line 2130
    const/16 v4, 0xd

    invoke-virtual {p0, v4, v5, v2}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 2131
    return-void
.end method

.method public addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;
    .locals 2
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 685
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v0

    return-object v0
.end method

.method public addLocal(Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;
    .locals 1
    .param p1, "type"    # Lgnu/bytecode/Type;
    .param p2, "name"    # Ljava/lang/String;

    .line 694
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    invoke-virtual {v0, p0, p1, p2}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v0

    return-object v0
.end method

.method public addParamLocals()V
    .locals 5

    .line 700
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    .line 701
    .local v0, "method":Lgnu/bytecode/Method;
    iget v1, v0, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 702
    iget-object v1, v0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v1

    invoke-virtual {v1, v2}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 703
    :cond_0
    iget-object v1, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v1, v1

    .line 704
    .local v1, "arg_count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 705
    iget-object v4, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v4

    invoke-virtual {v4, v2}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 704
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 706
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 3
    .param p1, "cl"    # Lgnu/bytecode/ClassType;

    .line 2787
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->container:Lgnu/bytecode/AttrContainer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    invoke-virtual {v0}, Lgnu/bytecode/LocalVarsAttr;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2788
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    invoke-virtual {v0, p0}, Lgnu/bytecode/LocalVarsAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 2789
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->processFixups()V

    .line 2790
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    iget v0, v0, Lgnu/bytecode/StackMapTableAttr;->numEntries:I

    if-lez v0, :cond_1

    .line 2791
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    invoke-virtual {v0, p0}, Lgnu/bytecode/StackMapTableAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 2792
    :cond_1
    sget-boolean v0, Lgnu/bytecode/CodeAttr;->instructionLineMode:Z

    if-eqz v0, :cond_3

    .line 2796
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    if-nez v0, :cond_2

    .line 2797
    new-instance v0, Lgnu/bytecode/LineNumbersAttr;

    invoke-direct {v0, p0}, Lgnu/bytecode/LineNumbersAttr;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v0, p0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    .line 2798
    :cond_2
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    const/4 v1, 0x0

    iput v1, v0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    .line 2799
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getCodeLength()I

    move-result v0

    .line 2800
    .local v0, "codeLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 2801
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    invoke-virtual {v2, v1, v1}, Lgnu/bytecode/LineNumbersAttr;->put(II)V

    .line 2800
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2803
    .end local v0    # "codeLen":I
    .end local v1    # "i":I
    :cond_3
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 2804
    invoke-static {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/AttrContainer;Lgnu/bytecode/ClassType;)V

    .line 2805
    return-void
.end method

.method public beginFragment(Lgnu/bytecode/Label;)I
    .locals 1
    .param p1, "after"    # Lgnu/bytecode/Label;

    .line 3269
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0}, Lgnu/bytecode/Label;-><init>()V

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->beginFragment(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)I

    move-result v0

    return v0
.end method

.method public beginFragment(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)I
    .locals 2
    .param p1, "start"    # Lgnu/bytecode/Label;
    .param p2, "after"    # Lgnu/bytecode/Label;

    .line 3274
    iget v0, p0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    .line 3275
    .local v0, "i":I
    const/16 v1, 0xa

    invoke-virtual {p0, v1, p2}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 3276
    invoke-virtual {p1, p0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 3277
    return v0
.end method

.method public disAssemble(Lgnu/bytecode/ClassTypeWriter;II)V
    .locals 17
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;
    .param p2, "start"    # I
    .param p3, "limit"    # I

    .line 2961
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 2962
    .local v2, "wide":Z
    move/from16 v3, p2

    .local v3, "i":I
    :goto_0
    move/from16 v4, p3

    if-ge v3, v4, :cond_35

    .line 2964
    add-int/lit8 v5, v3, 0x1

    .line 2965
    .local v3, "oldpc":I
    .local v5, "i":I
    iget-object v6, v0, Lgnu/bytecode/CodeAttr;->code:[B

    aget-byte v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    .line 2966
    .local v6, "op":I
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 2967
    .local v7, "str":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2968
    .local v8, "printConstant":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 2969
    .local v9, "j":I
    :goto_1
    const/4 v10, 0x1

    add-int/2addr v9, v10

    const/4 v11, 0x3

    const/16 v12, 0x20

    if-gt v9, v11, :cond_0

    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_1

    .line 2970
    :cond_0
    invoke-virtual {v1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2971
    const-string v13, ": "

    invoke-virtual {v1, v13}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2973
    const-string v14, "ilfda"

    const/16 v15, 0x78

    const/4 v10, 0x4

    const/16 v16, 0x2

    if-ge v6, v15, :cond_13

    .line 2975
    const/16 v13, 0x57

    if-ge v6, v13, :cond_11

    .line 2977
    if-ge v6, v11, :cond_1

    const-string v10, "nop;aconst_null;iconst_m1;"

    invoke-direct {v0, v10, v6, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto/16 :goto_12

    .line 2978
    :cond_1
    const/16 v10, 0x9

    if-ge v6, v10, :cond_2

    const-string v10, "iconst_"

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v10, v6, -0x3

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto/16 :goto_12

    .line 2979
    :cond_2
    const/16 v10, 0x10

    if-ge v6, v10, :cond_5

    .line 2982
    const/16 v10, 0xb

    if-ge v6, v10, :cond_3

    const/16 v10, 0x6c

    .local v10, "typ":C
    add-int/lit8 v6, v6, -0x9

    goto :goto_2

    .line 2983
    .end local v10    # "typ":C
    :cond_3
    const/16 v10, 0xe

    if-ge v6, v10, :cond_4

    const/16 v10, 0x66

    .restart local v10    # "typ":C
    add-int/lit8 v6, v6, -0xb

    goto :goto_2

    .line 2984
    .end local v10    # "typ":C
    :cond_4
    const/16 v10, 0x64

    .restart local v10    # "typ":C
    add-int/lit8 v6, v6, -0xe

    .line 2985
    :goto_2
    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    const-string v11, "const_"

    invoke-virtual {v1, v11}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2986
    .end local v10    # "typ":C
    goto/16 :goto_12

    .line 2987
    :cond_5
    const/16 v11, 0x15

    if-ge v6, v11, :cond_9

    .line 2989
    const/16 v11, 0x12

    if-ge v6, v11, :cond_7

    .line 2991
    add-int/lit8 v11, v6, -0x10

    const-string v12, "bipush ;sipush ;"

    invoke-direct {v0, v12, v11, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 2993
    if-ne v6, v10, :cond_6

    iget-object v10, v0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v11, v5, 0x1

    .end local v5    # "i":I
    .local v11, "i":I
    aget-byte v5, v10, v5

    .local v5, "constant":I
    goto :goto_3

    .line 2994
    .end local v11    # "i":I
    .local v5, "i":I
    :cond_6
    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v10

    int-to-short v10, v10

    .local v10, "constant":I
    add-int/lit8 v5, v5, 0x2

    move v11, v5

    move v5, v10

    .line 2995
    .end local v10    # "constant":I
    .local v5, "constant":I
    .restart local v11    # "i":I
    :goto_3
    invoke-virtual {v1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2996
    .end local v5    # "constant":I
    move v5, v11

    goto/16 :goto_12

    .line 2999
    .end local v11    # "i":I
    .local v5, "i":I
    :cond_7
    if-ne v6, v11, :cond_8

    const/16 v16, 0x1

    :cond_8
    move/from16 v8, v16

    .line 3000
    add-int/lit8 v10, v6, -0x12

    const-string v11, "ldc;ldc_w;ldc2_w;"

    invoke-direct {v0, v11, v10, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto/16 :goto_12

    .line 3006
    :cond_9
    const/16 v10, 0x36

    if-ge v6, v10, :cond_a

    const-string v10, "load"

    .local v10, "load_or_store":Ljava/lang/String;
    goto :goto_4

    .line 3007
    .end local v10    # "load_or_store":Ljava/lang/String;
    :cond_a
    const-string v10, "store"

    .restart local v10    # "load_or_store":Ljava/lang/String;
    add-int/lit8 v6, v6, -0x21

    .line 3009
    :goto_4
    const/16 v11, 0x1a

    if-ge v6, v11, :cond_b

    const/4 v11, -0x1

    .local v11, "index":I
    add-int/lit8 v6, v6, -0x15

    goto :goto_5

    .line 3010
    .end local v11    # "index":I
    :cond_b
    const/16 v11, 0x2e

    if-ge v6, v11, :cond_c

    add-int/lit8 v6, v6, -0x1a

    rem-int/lit8 v11, v6, 0x4

    .restart local v11    # "index":I
    shr-int/lit8 v6, v6, 0x2

    goto :goto_5

    .line 3011
    .end local v11    # "index":I
    :cond_c
    const/4 v11, -0x2

    .restart local v11    # "index":I
    add-int/lit8 v6, v6, -0x2e

    .line 3012
    :goto_5
    const-string v13, "ilfdabcs"

    invoke-virtual {v13, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v1, v13}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3013
    const/4 v13, -0x2

    if-ne v11, v13, :cond_d

    const/16 v13, 0x61

    invoke-virtual {v1, v13}, Lgnu/bytecode/ClassTypeWriter;->write(I)V

    .line 3014
    :cond_d
    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3015
    if-ltz v11, :cond_e

    const/16 v12, 0x5f

    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->write(I)V

    invoke-virtual {v1, v11}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    goto :goto_7

    .line 3016
    :cond_e
    const/4 v13, -0x1

    if-ne v11, v13, :cond_10

    .line 3018
    if-eqz v2, :cond_f

    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v11

    add-int/lit8 v5, v5, 0x2

    goto :goto_6

    .line 3019
    :cond_f
    iget-object v13, v0, Lgnu/bytecode/CodeAttr;->code:[B

    aget-byte v13, v13, v5

    and-int/lit16 v11, v13, 0xff

    add-int/lit8 v5, v5, 0x1

    .line 3020
    :goto_6
    const/4 v2, 0x0

    .line 3021
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3022
    invoke-virtual {v1, v11}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3024
    .end local v10    # "load_or_store":Ljava/lang/String;
    .end local v11    # "index":I
    :cond_10
    :goto_7
    goto/16 :goto_12

    .line 3028
    :cond_11
    const/16 v11, 0x60

    if-ge v6, v11, :cond_12

    .line 3029
    add-int/lit8 v10, v6, -0x57

    const-string v11, "pop;pop2;dup;dup_x1;dup_x2;dup2;dup2_x1;dup2_x2;swap;"

    invoke-direct {v0, v11, v10, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto/16 :goto_12

    .line 3033
    :cond_12
    add-int/lit8 v11, v6, -0x60

    rem-int/2addr v11, v10

    invoke-virtual {v14, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3034
    add-int/lit8 v10, v6, -0x60

    shr-int/lit8 v10, v10, 0x2

    const-string v11, "add;sub;mul;div;rem;neg;"

    invoke-direct {v0, v11, v10, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto/16 :goto_12

    .line 3040
    :cond_13
    const/16 v15, 0xaa

    if-ge v6, v15, :cond_1f

    .line 3042
    const/16 v10, 0x84

    if-ge v6, v10, :cond_15

    .line 3044
    and-int/lit8 v10, v6, 0x1

    if-nez v10, :cond_14

    const/16 v10, 0x69

    goto :goto_8

    :cond_14
    const/16 v10, 0x6c

    :goto_8
    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3045
    add-int/lit8 v10, v6, -0x78

    const/4 v11, 0x1

    shr-int/2addr v10, v11

    const-string v11, "shl;shr;ushr;and;or;xor;"

    invoke-direct {v0, v11, v10, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto/16 :goto_12

    .line 3047
    :cond_15
    if-ne v6, v10, :cond_17

    .line 3051
    const-string v10, "iinc"

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3052
    if-nez v2, :cond_16

    .line 3054
    iget-object v10, v0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v11, v5, 0x1

    .end local v5    # "i":I
    .local v11, "i":I
    aget-byte v5, v10, v5

    and-int/lit16 v5, v5, 0xff

    .line 3055
    .local v5, "var_index":I
    iget-object v10, v0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v13, v11, 0x1

    .end local v11    # "i":I
    .local v13, "i":I
    aget-byte v10, v10, v11

    .local v10, "constant":I
    goto :goto_9

    .line 3059
    .end local v10    # "constant":I
    .end local v13    # "i":I
    .local v5, "i":I
    :cond_16
    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v10

    .line 3060
    .local v10, "var_index":I
    add-int/lit8 v5, v5, 0x2

    .line 3061
    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v11

    int-to-short v11, v11

    .line 3062
    .local v11, "constant":I
    add-int/lit8 v5, v5, 0x2

    .line 3063
    const/4 v2, 0x0

    move v13, v5

    move v5, v10

    move v10, v11

    .line 3065
    .end local v11    # "constant":I
    .local v5, "var_index":I
    .local v10, "constant":I
    .restart local v13    # "i":I
    :goto_9
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    invoke-virtual {v1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3066
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3067
    .end local v5    # "var_index":I
    .end local v10    # "constant":I
    move v5, v13

    goto/16 :goto_12

    .line 3068
    .end local v13    # "i":I
    .local v5, "i":I
    :cond_17
    const/16 v10, 0x94

    if-ge v6, v10, :cond_18

    .line 3070
    add-int/lit16 v10, v6, -0x85

    div-int/2addr v10, v11

    const-string v11, "ilfdi"

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3071
    const/16 v10, 0x32

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3072
    add-int/lit16 v10, v6, -0x85

    const-string v11, "lfdifdildilfbcs"

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto/16 :goto_12

    .line 3074
    :cond_18
    const/16 v10, 0x99

    if-ge v6, v10, :cond_19

    .line 3075
    add-int/lit16 v10, v6, -0x94

    const-string v11, "lcmp;fcmpl;fcmpg;dcmpl;dcmpg;"

    invoke-direct {v0, v11, v10, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto/16 :goto_12

    .line 3076
    :cond_19
    const/16 v10, 0xa9

    if-ge v6, v10, :cond_1d

    .line 3078
    const/16 v10, 0x9f

    if-ge v6, v10, :cond_1a

    .line 3080
    const-string v10, "if"

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3081
    add-int/lit16 v10, v6, -0x99

    const-string v11, "eq;ne;lt;ge;gt;le;"

    invoke-direct {v0, v11, v10, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto :goto_b

    .line 3083
    :cond_1a
    const/16 v10, 0xa7

    if-ge v6, v10, :cond_1c

    .line 3085
    const/16 v10, 0xa5

    if-ge v6, v10, :cond_1b

    const-string v10, "if_icmp"

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_a

    .line 3086
    :cond_1b
    const-string v10, "if_acmp"

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v6, v6, -0x6

    .line 3087
    :goto_a
    add-int/lit16 v10, v6, -0x9f

    const-string v11, "eq;ne;lt;ge;gt;le;"

    invoke-direct {v0, v11, v10, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto :goto_b

    .line 3090
    :cond_1c
    add-int/lit16 v10, v6, -0xa7

    const-string v11, "goto;jsr;"

    invoke-direct {v0, v11, v10, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3091
    :goto_b
    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v10

    int-to-short v10, v10

    .line 3092
    .local v10, "delta":I
    add-int/lit8 v5, v5, 0x2

    .line 3093
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    add-int v11, v3, v10

    invoke-virtual {v1, v11}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3094
    .end local v10    # "delta":I
    goto/16 :goto_12

    .line 3098
    :cond_1d
    const-string v10, "ret "

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3099
    if-eqz v2, :cond_1e

    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v10

    .local v10, "index":I
    add-int/lit8 v10, v10, 0x2

    goto :goto_c

    .line 3100
    .end local v10    # "index":I
    :cond_1e
    iget-object v10, v0, Lgnu/bytecode/CodeAttr;->code:[B

    aget-byte v10, v10, v5

    and-int/lit16 v10, v10, 0xff

    .restart local v10    # "index":I
    add-int/lit8 v5, v5, 0x1

    .line 3101
    :goto_c
    const/4 v2, 0x0

    .line 3102
    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3103
    .end local v10    # "index":I
    goto/16 :goto_12

    .line 3107
    :cond_1f
    const/16 v11, 0xac

    if-ge v6, v11, :cond_24

    .line 3109
    iget v11, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    if-gtz v11, :cond_20

    .line 3110
    add-int/lit8 v11, v5, 0x3

    and-int/lit8 v5, v11, -0x4

    .line 3111
    :cond_20
    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v11

    .local v11, "code_offset":I
    add-int/2addr v5, v10

    .line 3112
    const-string v12, " default: "

    if-ne v6, v15, :cond_22

    .line 3114
    const-string v14, "tableswitch"

    invoke-virtual {v1, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3115
    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v14

    .local v14, "low":I
    add-int/lit8 v5, v5, 0x4

    .line 3116
    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v15

    .local v15, "high":I
    add-int/2addr v5, v10

    .line 3117
    const-string v10, " low: "

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3118
    const-string v10, " high: "

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3119
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int v10, v3, v11

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3120
    :goto_d
    if-gt v14, v15, :cond_21

    .line 3122
    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v11

    add-int/lit8 v5, v5, 0x4

    .line 3123
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 3124
    const-string v10, "  "

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3125
    invoke-virtual {v1, v13}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int v10, v3, v11

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3120
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    .line 3127
    .end local v14    # "low":I
    .end local v15    # "high":I
    :cond_21
    goto :goto_f

    .line 3130
    :cond_22
    const-string v14, "lookupswitch"

    invoke-virtual {v1, v14}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3131
    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v14

    .local v14, "npairs":I
    add-int/lit8 v5, v5, 0x4

    .line 3132
    const-string v15, " npairs: "

    invoke-virtual {v1, v15}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3133
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int v12, v3, v11

    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3134
    :goto_e
    add-int/lit8 v14, v14, -0x1

    if-ltz v14, :cond_23

    .line 3136
    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v12

    .local v12, "match":I
    add-int/lit8 v5, v5, 0x4

    .line 3137
    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v11

    add-int/2addr v5, v10

    .line 3138
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 3139
    const-string v15, "  "

    invoke-virtual {v1, v15}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3140
    invoke-virtual {v1, v13}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    add-int v15, v3, v11

    invoke-virtual {v1, v15}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3141
    .end local v12    # "match":I
    goto :goto_e

    .line 3143
    .end local v11    # "code_offset":I
    .end local v14    # "npairs":I
    :cond_23
    :goto_f
    goto/16 :goto_12

    .line 3144
    :cond_24
    const/16 v11, 0xb2

    if-ge v6, v11, :cond_26

    .line 3146
    const/16 v10, 0xb1

    if-ge v6, v10, :cond_25

    add-int/lit16 v10, v6, -0xac

    invoke-virtual {v14, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3147
    :cond_25
    const-string v10, "return"

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 3149
    :cond_26
    const/16 v11, 0xb6

    if-ge v6, v11, :cond_27

    .line 3151
    add-int/lit16 v10, v6, -0xb2

    const-string v11, "getstatic;putstatic;getfield;putfield;"

    invoke-direct {v0, v11, v10, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3152
    const/4 v8, 0x2

    goto/16 :goto_12

    .line 3154
    :cond_27
    const/16 v11, 0xb9

    if-ge v6, v11, :cond_28

    .line 3156
    const-string v10, "invoke"

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3157
    add-int/lit16 v10, v6, -0xb6

    const-string v11, "virtual;special;static;"

    invoke-direct {v0, v11, v10, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3158
    const/4 v8, 0x2

    goto/16 :goto_12

    .line 3160
    :cond_28
    if-ne v6, v11, :cond_29

    .line 3162
    const-string v10, "invokeinterface ("

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3163
    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v10

    .line 3164
    .restart local v10    # "index":I
    add-int/lit8 v5, v5, 0x2

    .line 3165
    iget-object v11, v0, Lgnu/bytecode/CodeAttr;->code:[B

    aget-byte v11, v11, v5

    and-int/lit16 v11, v11, 0xff

    .line 3166
    .local v11, "args":I
    add-int/lit8 v5, v5, 0x2

    .line 3167
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " args)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3168
    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->printConstantOperand(I)V

    .line 3169
    .end local v10    # "index":I
    .end local v11    # "args":I
    goto/16 :goto_12

    .line 3170
    :cond_29
    const/16 v11, 0xc4

    if-ge v6, v11, :cond_2d

    .line 3172
    add-int/lit16 v11, v6, -0xba

    const-string v13, "186;new;newarray;anewarray;arraylength;athrow;checkcast;instanceof;monitorenter;monitorexit;"

    invoke-direct {v0, v13, v11, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3173
    const/16 v11, 0xbb

    if-eq v6, v11, :cond_2c

    const/16 v11, 0xbd

    if-eq v6, v11, :cond_2c

    const/16 v11, 0xc0

    if-eq v6, v11, :cond_2c

    const/16 v11, 0xc1

    if-ne v6, v11, :cond_2a

    goto :goto_11

    .line 3175
    :cond_2a
    const/16 v11, 0xbc

    if-ne v6, v11, :cond_32

    .line 3177
    iget-object v11, v0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v13, v5, 0x1

    .end local v5    # "i":I
    .restart local v13    # "i":I
    aget-byte v5, v11, v5

    .line 3178
    .local v5, "type":I
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3179
    if-lt v5, v10, :cond_2b

    const/16 v10, 0xb

    if-gt v5, v10, :cond_2b

    .line 3180
    add-int/lit8 v10, v5, -0x4

    const-string v11, "boolean;char;float;double;byte;short;int;long;"

    invoke-direct {v0, v11, v10, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    goto :goto_10

    .line 3183
    :cond_2b
    invoke-virtual {v1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3184
    .end local v5    # "type":I
    :goto_10
    move v5, v13

    goto :goto_12

    .line 3174
    .end local v13    # "i":I
    .local v5, "i":I
    :cond_2c
    :goto_11
    const/4 v8, 0x2

    goto :goto_12

    .line 3187
    :cond_2d
    const/16 v10, 0xc4

    if-ne v6, v10, :cond_2e

    .line 3189
    const-string v10, "wide"

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3190
    const/4 v2, 0x1

    goto :goto_12

    .line 3192
    :cond_2e
    const/16 v10, 0xc5

    if-ne v6, v10, :cond_2f

    .line 3194
    const-string v10, "multianewarray"

    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 3195
    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v10

    .line 3196
    .restart local v10    # "index":I
    add-int/lit8 v5, v5, 0x2

    .line 3197
    invoke-virtual {v1, v10}, Lgnu/bytecode/ClassTypeWriter;->printConstantOperand(I)V

    .line 3198
    iget-object v11, v0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v13, v5, 0x1

    .end local v5    # "i":I
    .restart local v13    # "i":I
    aget-byte v5, v11, v5

    and-int/lit16 v5, v5, 0xff

    .line 3199
    .local v5, "dims":I
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 3200
    invoke-virtual {v1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3201
    .end local v5    # "dims":I
    .end local v10    # "index":I
    move v5, v13

    goto :goto_12

    .line 3202
    .end local v13    # "i":I
    .local v5, "i":I
    :cond_2f
    const/16 v10, 0xc8

    if-ge v6, v10, :cond_30

    .line 3204
    add-int/lit16 v10, v6, -0xc6

    const-string v11, "ifnull;ifnonnull;"

    invoke-direct {v0, v11, v10, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3205
    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v10

    int-to-short v10, v10

    .line 3206
    .local v10, "delta":I
    add-int/lit8 v5, v5, 0x2

    .line 3207
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    add-int v11, v3, v10

    invoke-virtual {v1, v11}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3208
    .end local v10    # "delta":I
    goto :goto_12

    .line 3209
    :cond_30
    const/16 v10, 0xca

    if-ge v6, v10, :cond_31

    .line 3211
    add-int/lit16 v10, v6, -0xc8

    const-string v11, "goto_w;jsr_w;"

    invoke-direct {v0, v11, v10, v1}, Lgnu/bytecode/CodeAttr;->print(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 3212
    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->readInt(I)I

    move-result v10

    .line 3213
    .restart local v10    # "delta":I
    add-int/lit8 v5, v5, 0x4

    .line 3214
    invoke-virtual {v1, v12}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    add-int v11, v3, v10

    invoke-virtual {v1, v11}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3215
    .end local v10    # "delta":I
    goto :goto_12

    .line 3217
    :cond_31
    invoke-virtual {v1, v6}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 3220
    :cond_32
    :goto_12
    if-lez v8, :cond_34

    .line 3223
    const/4 v10, 0x1

    if-ne v8, v10, :cond_33

    iget-object v10, v0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v11, v5, 0x1

    .end local v5    # "i":I
    .local v11, "i":I
    aget-byte v5, v10, v5

    and-int/lit16 v5, v5, 0xff

    .local v5, "index":I
    goto :goto_13

    .line 3224
    .end local v11    # "i":I
    .local v5, "i":I
    :cond_33
    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->readUnsignedShort(I)I

    move-result v10

    .local v10, "index":I
    add-int/lit8 v11, v5, 0x2

    move v5, v10

    .line 3225
    .end local v10    # "index":I
    .local v5, "index":I
    .restart local v11    # "i":I
    :goto_13
    invoke-virtual {v1, v5}, Lgnu/bytecode/ClassTypeWriter;->printConstantOperand(I)V

    move v5, v11

    .line 3227
    .end local v11    # "i":I
    .local v5, "i":I
    :cond_34
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 3228
    .end local v3    # "oldpc":I
    .end local v6    # "op":I
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "printConstant":I
    .end local v9    # "j":I
    move v3, v5

    goto/16 :goto_0

    .line 3229
    .end local v5    # "i":I
    :cond_35
    return-void
.end method

.method public final emitAdd()V
    .locals 1

    .line 1274
    const/16 v0, 0x60

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public final emitAdd(C)V
    .locals 1
    .param p1, "sig"    # C

    .line 1271
    const/16 v0, 0x60

    invoke-direct {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitBinop(IC)V

    return-void
.end method

.method public final emitAdd(Lgnu/bytecode/PrimType;)V
    .locals 1
    .param p1, "type"    # Lgnu/bytecode/PrimType;

    .line 1272
    const/16 v0, 0x60

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitBinop(ILgnu/bytecode/Type;)V

    return-void
.end method

.method public final emitAnd()V
    .locals 1

    .line 1284
    const/16 v0, 0x7e

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public final emitArrayLength()V
    .locals 2

    .line 1070
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_0

    .line 1073
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1074
    const/16 v0, 0xbe

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1075
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1076
    return-void

    .line 1071
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "non-array type in emitArrayLength"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public emitArrayLoad()V
    .locals 3

    .line 1161
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1162
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 1163
    .local v0, "arrayType":Lgnu/bytecode/Type;
    move-object v1, v0

    check-cast v1, Lgnu/bytecode/ArrayType;

    invoke-virtual {v1}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 1164
    .local v1, "elementType":Lgnu/bytecode/Type;
    const/16 v2, 0x2e

    invoke-direct {p0, v2, v1}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1165
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1166
    return-void
.end method

.method public emitArrayLoad(Lgnu/bytecode/Type;)V
    .locals 1
    .param p1, "element_type"    # Lgnu/bytecode/Type;

    .line 1148
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1149
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1150
    const/16 v0, 0x2e

    invoke-direct {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1151
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1152
    return-void
.end method

.method public emitArrayStore()V
    .locals 3

    .line 1135
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1136
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1137
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 1138
    .local v0, "arrayType":Lgnu/bytecode/Type;
    move-object v1, v0

    check-cast v1, Lgnu/bytecode/ArrayType;

    invoke-virtual {v1}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 1139
    .local v1, "elementType":Lgnu/bytecode/Type;
    const/16 v2, 0x4f

    invoke-direct {p0, v2, v1}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1140
    return-void
.end method

.method public emitArrayStore(Lgnu/bytecode/Type;)V
    .locals 1
    .param p1, "element_type"    # Lgnu/bytecode/Type;

    .line 1122
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1123
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1124
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1125
    const/16 v0, 0x4f

    invoke-direct {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1126
    return-void
.end method

.method public emitBinop(ILgnu/bytecode/Type;)V
    .locals 0
    .param p1, "base_code"    # I
    .param p2, "type"    # Lgnu/bytecode/Type;

    .line 1260
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1261
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1262
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 1263
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1264
    return-void
.end method

.method public emitCatchEnd()V
    .locals 2

    .line 2270
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->gotoFinallyOrEnd(Z)V

    .line 2271
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    const/4 v1, 0x0

    iput-object v1, v0, Lgnu/bytecode/TryState;->try_type:Lgnu/bytecode/ClassType;

    .line 2272
    return-void
.end method

.method public emitCatchStart(Lgnu/bytecode/Variable;)V
    .locals 3
    .param p1, "var"    # Lgnu/bytecode/Variable;

    .line 2257
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitTryEnd(Z)V

    .line 2258
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    iget-object v0, v0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    sget-object v1, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/CodeAttr;->setTypes([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    .line 2259
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->try_type:Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    .line 2260
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 2261
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    .line 2262
    .local v0, "type":Lgnu/bytecode/ClassType;
    :goto_0
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v0, v1, Lgnu/bytecode/TryState;->try_type:Lgnu/bytecode/ClassType;

    .line 2263
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v2, v2, Lgnu/bytecode/TryState;->end_try:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1, v2, v0}, Lgnu/bytecode/CodeAttr;->addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V

    .line 2264
    if-eqz p1, :cond_2

    .line 2265
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2266
    :cond_2
    return-void
.end method

.method public emitCheckcast(Lgnu/bytecode/Type;)V
    .locals 1
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 2027
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->topType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/bytecode/CodeAttr;->castNeeded(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2029
    const/16 v0, 0xc0

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;I)V

    .line 2030
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 2032
    :cond_0
    return-void
.end method

.method public final emitConvert(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V
    .locals 8
    .param p1, "from"    # Lgnu/bytecode/Type;
    .param p2, "to"    # Lgnu/bytecode/Type;

    .line 1923
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    .line 1924
    .local v0, "to_sig":Ljava/lang/String;
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    .line 1925
    .local v1, "from_sig":Ljava/lang/String;
    const/4 v2, -0x1

    .line 1926
    .local v2, "op":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_5

    .line 1928
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1929
    .local v5, "to_sig0":C
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1930
    .local v3, "from_sig0":C
    if-ne v3, v5, :cond_1

    .line 1931
    return-void

    .line 1932
    :cond_1
    iget v6, p1, Lgnu/bytecode/Type;->size:I

    const/4 v7, 0x4

    if-ge v6, v7, :cond_2

    .line 1933
    const/16 v3, 0x49

    .line 1934
    :cond_2
    iget v6, p2, Lgnu/bytecode/Type;->size:I

    if-ge v6, v7, :cond_3

    .line 1936
    sget-object v6, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v6}, Lgnu/bytecode/CodeAttr;->emitConvert(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V

    .line 1937
    const/16 v3, 0x49

    .line 1939
    :cond_3
    if-ne v3, v5, :cond_4

    .line 1940
    return-void

    .line 1941
    :cond_4
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 1955
    :pswitch_1
    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 1957
    :sswitch_0
    const/16 v2, 0x88

    goto :goto_0

    .line 1958
    :sswitch_1
    const/16 v2, 0x89

    goto :goto_0

    .line 1959
    :sswitch_2
    const/16 v2, 0x8a

    .line 1961
    :goto_0
    goto :goto_3

    .line 1944
    :pswitch_2
    sparse-switch v5, :sswitch_data_1

    goto :goto_1

    .line 1948
    :sswitch_3
    const/16 v2, 0x93

    goto :goto_1

    .line 1949
    :sswitch_4
    const/16 v2, 0x85

    goto :goto_1

    .line 1950
    :sswitch_5
    const/16 v2, 0x86

    goto :goto_1

    .line 1951
    :sswitch_6
    const/16 v2, 0x87

    goto :goto_1

    .line 1947
    :sswitch_7
    const/16 v2, 0x92

    goto :goto_1

    .line 1946
    :sswitch_8
    const/16 v2, 0x91

    .line 1953
    :goto_1
    goto :goto_3

    .line 1963
    :pswitch_3
    sparse-switch v5, :sswitch_data_2

    goto :goto_2

    .line 1966
    :sswitch_9
    const/16 v2, 0x8c

    goto :goto_2

    .line 1965
    :sswitch_a
    const/16 v2, 0x8b

    goto :goto_2

    .line 1967
    :sswitch_b
    const/16 v2, 0x8d

    .line 1969
    :goto_2
    goto :goto_3

    .line 1971
    :pswitch_4
    packed-switch v5, :pswitch_data_1

    :pswitch_5
    goto :goto_3

    .line 1974
    :pswitch_6
    const/16 v2, 0x8f

    goto :goto_3

    .line 1973
    :pswitch_7
    const/16 v2, 0x8e

    goto :goto_3

    .line 1975
    :pswitch_8
    const/16 v2, 0x90

    .line 1980
    .end local v3    # "from_sig0":C
    .end local v5    # "to_sig0":C
    :cond_5
    :goto_3
    if-ltz v2, :cond_6

    .line 1982
    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1983
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1984
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1985
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1986
    return-void

    .line 1981
    :cond_6
    new-instance v3, Ljava/lang/Error;

    const-string v4, "unsupported CodeAttr.emitConvert"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x46 -> :sswitch_1
        0x49 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x42 -> :sswitch_8
        0x43 -> :sswitch_7
        0x44 -> :sswitch_6
        0x46 -> :sswitch_5
        0x4a -> :sswitch_4
        0x53 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x44 -> :sswitch_b
        0x49 -> :sswitch_a
        0x4a -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x46
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final emitDiv()V
    .locals 1

    .line 1282
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public emitDup()V
    .locals 3

    .line 518
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 520
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->topType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 521
    .local v0, "type":Lgnu/bytecode/Type;
    iget v1, v0, Lgnu/bytecode/Type;->size:I

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    const/16 v1, 0x59

    goto :goto_0

    :cond_0
    const/16 v1, 0x5c

    :goto_0
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 522
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 523
    return-void
.end method

.method public emitDup(I)V
    .locals 1
    .param p1, "size"    # I

    .line 619
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitDup(II)V

    .line 620
    return-void
.end method

.method public emitDup(II)V
    .locals 8
    .param p1, "size"    # I
    .param p2, "offset"    # I

    .line 551
    if-nez p1, :cond_0

    .line 552
    return-void

    .line 553
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 555
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 556
    .local v1, "copied1":Lgnu/bytecode/Type;
    const/4 v2, 0x0

    .line 557
    .local v2, "copied2":Lgnu/bytecode/Type;
    const/4 v3, 0x2

    const-string v4, "dup will cause invalid types on stack"

    const/4 v5, 0x4

    if-ne p1, v0, :cond_2

    .line 559
    iget v6, v1, Lgnu/bytecode/Type;->size:I

    if-gt v6, v5, :cond_1

    goto :goto_0

    .line 560
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v3, "using dup for 2-word type"

    invoke-direct {v0, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_2
    if-ne p1, v3, :cond_12

    .line 564
    iget v6, v1, Lgnu/bytecode/Type;->size:I

    if-gt v6, v5, :cond_4

    .line 566
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 567
    iget v6, v2, Lgnu/bytecode/Type;->size:I

    if-gt v6, v5, :cond_3

    goto :goto_0

    .line 568
    :cond_3
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_4
    :goto_0
    const/4 v6, 0x0

    .line 574
    .local v6, "skipped1":Lgnu/bytecode/Type;
    const/4 v7, 0x0

    .line 575
    .local v7, "skipped2":Lgnu/bytecode/Type;
    if-nez p2, :cond_6

    .line 577
    if-ne p1, v0, :cond_5

    const/16 v0, 0x59

    goto :goto_1

    :cond_5
    const/16 v0, 0x5c

    .local v0, "kind":I
    :goto_1
    goto :goto_4

    .line 579
    .end local v0    # "kind":I
    :cond_6
    if-ne p2, v0, :cond_9

    .line 581
    if-ne p1, v0, :cond_7

    const/16 v0, 0x5a

    goto :goto_2

    :cond_7
    const/16 v0, 0x5d

    .line 582
    .restart local v0    # "kind":I
    :goto_2
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v6

    .line 583
    iget v3, v6, Lgnu/bytecode/Type;->size:I

    if-gt v3, v5, :cond_8

    goto :goto_4

    .line 584
    :cond_8
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 586
    .end local v0    # "kind":I
    :cond_9
    if-ne p2, v3, :cond_11

    .line 588
    if-ne p1, v0, :cond_a

    const/16 v0, 0x5b

    goto :goto_3

    :cond_a
    const/16 v0, 0x5e

    .line 589
    .restart local v0    # "kind":I
    :goto_3
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v6

    .line 590
    iget v3, v6, Lgnu/bytecode/Type;->size:I

    if-gt v3, v5, :cond_c

    .line 592
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v7

    .line 593
    iget v3, v7, Lgnu/bytecode/Type;->size:I

    if-gt v3, v5, :cond_b

    goto :goto_4

    .line 594
    :cond_b
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 600
    :cond_c
    :goto_4
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 601
    if-eqz v2, :cond_d

    .line 602
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 603
    :cond_d
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 604
    if-eqz v7, :cond_e

    .line 605
    invoke-virtual {p0, v7}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 606
    :cond_e
    if-eqz v6, :cond_f

    .line 607
    invoke-virtual {p0, v6}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 608
    :cond_f
    if-eqz v2, :cond_10

    .line 609
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 610
    :cond_10
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 611
    return-void

    .line 598
    .end local v0    # "kind":I
    :cond_11
    new-instance v0, Ljava/lang/Error;

    const-string v3, "emitDup:  invalid offset"

    invoke-direct {v0, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    .end local v6    # "skipped1":Lgnu/bytecode/Type;
    .end local v7    # "skipped2":Lgnu/bytecode/Type;
    :cond_12
    new-instance v0, Ljava/lang/Error;

    const-string v3, "invalid size to emitDup"

    invoke-direct {v0, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public emitDup(Lgnu/bytecode/Type;)V
    .locals 2
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 624
    iget v0, p1, Lgnu/bytecode/Type;->size:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(II)V

    .line 625
    return-void
.end method

.method public emitDupX()V
    .locals 4

    .line 529
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 531
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 532
    .local v0, "type":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 534
    .local v1, "skipedType":Lgnu/bytecode/Type;
    iget v2, v1, Lgnu/bytecode/Type;->size:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_1

    .line 535
    iget v2, v0, Lgnu/bytecode/Type;->size:I

    if-gt v2, v3, :cond_0

    const/16 v2, 0x5a

    goto :goto_0

    :cond_0
    const/16 v2, 0x5d

    :goto_0
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_2

    .line 537
    :cond_1
    iget v2, v0, Lgnu/bytecode/Type;->size:I

    if-gt v2, v3, :cond_2

    const/16 v2, 0x5b

    goto :goto_1

    :cond_2
    const/16 v2, 0x5e

    :goto_1
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 539
    :goto_2
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 540
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 541
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 542
    return-void
.end method

.method public final emitElse()V
    .locals 7

    .line 1856
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v0, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    .line 1857
    .local v0, "else_label":Lgnu/bytecode/Label;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1859
    new-instance v1, Lgnu/bytecode/Label;

    invoke-direct {v1, p0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1860
    .local v1, "end_label":Lgnu/bytecode/Label;
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iput-object v1, v2, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    .line 1861
    iget v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v3, v3, Lgnu/bytecode/IfState;->start_stack_size:I

    sub-int/2addr v2, v3

    .line 1862
    .local v2, "growth":I
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iput v2, v3, Lgnu/bytecode/IfState;->stack_growth:I

    .line 1863
    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 1865
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    new-array v5, v2, [Lgnu/bytecode/Type;

    iput-object v5, v4, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    .line 1866
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v5, v5, Lgnu/bytecode/IfState;->start_stack_size:I

    iget-object v6, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v6, v6, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    invoke-static {v4, v5, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1870
    :cond_0
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    new-array v3, v3, [Lgnu/bytecode/Type;

    iput-object v3, v4, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    .line 1871
    :goto_0
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 1872
    .end local v1    # "end_label":Lgnu/bytecode/Label;
    .end local v2    # "growth":I
    goto :goto_1

    .line 1874
    :cond_1
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    .line 1875
    :goto_1
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v2, v2, Lgnu/bytecode/IfState;->start_stack_size:I

    if-le v1, v2, :cond_2

    .line 1876
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    goto :goto_1

    .line 1877
    :cond_2
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v1, v1, Lgnu/bytecode/IfState;->start_stack_size:I

    iput v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 1878
    if-eqz v0, :cond_3

    .line 1879
    invoke-virtual {v0, p0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1880
    :cond_3
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lgnu/bytecode/IfState;->doing_else:Z

    .line 1881
    return-void
.end method

.method public final emitFi()V
    .locals 7

    .line 1886
    const/4 v0, 0x0

    .line 1887
    .local v0, "make_unreachable":Z
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-boolean v1, v1, Lgnu/bytecode/IfState;->doing_else:Z

    const-string v2, "at PC "

    if-nez v1, :cond_1

    .line 1889
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v3, v3, Lgnu/bytecode/IfState;->start_stack_size:I

    if-ne v1, v3, :cond_0

    goto/16 :goto_1

    .line 1891
    :cond_0
    new-instance v1, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " then clause grows stack with no else clause"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1893
    :cond_1
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v1, v1, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    if-eqz v1, :cond_5

    .line 1895
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v1, v1, Lgnu/bytecode/IfState;->start_stack_size:I

    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v3, v3, Lgnu/bytecode/IfState;->stack_growth:I

    add-int/2addr v1, v3

    .line 1897
    .local v1, "then_clause_stack_size":I
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1899
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v2, v2, Lgnu/bytecode/IfState;->stack_growth:I

    if-lez v2, :cond_2

    .line 1900
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v2, v2, Lgnu/bytecode/IfState;->then_stacked_types:[Lgnu/bytecode/Type;

    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v4, v4, Lgnu/bytecode/IfState;->start_stack_size:I

    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v5, v5, Lgnu/bytecode/IfState;->stack_growth:I

    const/4 v6, 0x0

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1903
    :cond_2
    iput v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    goto :goto_0

    .line 1905
    :cond_3
    iget v3, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-ne v3, v1, :cond_4

    .line 1909
    .end local v1    # "then_clause_stack_size":I
    :goto_0
    goto :goto_1

    .line 1906
    .restart local v1    # "then_clause_stack_size":I
    :cond_4
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": SP at end of \'then\' was "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " while SP at end of \'else\' was "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lgnu/bytecode/CodeAttr;->SP:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1910
    .end local v1    # "then_clause_stack_size":I
    :cond_5
    iget-boolean v1, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    if-eqz v1, :cond_6

    .line 1911
    const/4 v0, 0x1

    .line 1913
    :cond_6
    :goto_1
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v1, v1, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    if-eqz v1, :cond_7

    .line 1914
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v1, v1, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {v1, p0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 1915
    :cond_7
    if-eqz v0, :cond_8

    .line 1916
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 1918
    :cond_8
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget-object v1, v1, Lgnu/bytecode/IfState;->previous:Lgnu/bytecode/IfState;

    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    .line 1919
    return-void
.end method

.method public emitFinallyEnd()V
    .locals 7

    .line 2351
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2352
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_ret_addr:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitRet(Lgnu/bytecode/Variable;)V

    goto/16 :goto_2

    .line 2353
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    if-nez v0, :cond_1

    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    if-nez v0, :cond_1

    .line 2355
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    goto :goto_2

    .line 2359
    :cond_1
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2360
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2361
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitIfNotNull()V

    .line 2362
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2363
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 2364
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 2366
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    .line 2368
    .local v0, "exit":Lgnu/bytecode/ExitableBlock;
    if-eqz v0, :cond_4

    .line 2370
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->startSwitch()Lgnu/bytecode/SwitchState;

    move-result-object v2

    .line 2372
    .local v2, "sw":Lgnu/bytecode/SwitchState;
    :goto_0
    if-eqz v0, :cond_3

    .line 2374
    iget-object v3, v0, Lgnu/bytecode/ExitableBlock;->nextCase:Lgnu/bytecode/ExitableBlock;

    .line 2375
    .local v3, "next":Lgnu/bytecode/ExitableBlock;
    iput-object v1, v0, Lgnu/bytecode/ExitableBlock;->nextCase:Lgnu/bytecode/ExitableBlock;

    .line 2376
    iput-object v1, v0, Lgnu/bytecode/ExitableBlock;->currentTryState:Lgnu/bytecode/TryState;

    .line 2377
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v4, v4, Lgnu/bytecode/TryState;->previous:Lgnu/bytecode/TryState;

    iget-object v5, v0, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    invoke-static {v4, v5}, Lgnu/bytecode/TryState;->outerHandler(Lgnu/bytecode/TryState;Lgnu/bytecode/TryState;)Lgnu/bytecode/TryState;

    move-result-object v4

    .line 2379
    .local v4, "nextTry":Lgnu/bytecode/TryState;
    iget-object v5, v0, Lgnu/bytecode/ExitableBlock;->initialTryState:Lgnu/bytecode/TryState;

    if-ne v4, v5, :cond_2

    .line 2381
    iget v5, v0, Lgnu/bytecode/ExitableBlock;->switchCase:I

    iget-object v6, v0, Lgnu/bytecode/ExitableBlock;->endLabel:Lgnu/bytecode/Label;

    invoke-virtual {v2, v5, p0, v6}, Lgnu/bytecode/SwitchState;->addCaseGoto(ILgnu/bytecode/CodeAttr;Lgnu/bytecode/Label;)Z

    goto :goto_1

    .line 2385
    :cond_2
    iget v5, v0, Lgnu/bytecode/ExitableBlock;->switchCase:I

    invoke-virtual {v2, v5, p0}, Lgnu/bytecode/SwitchState;->addCase(ILgnu/bytecode/CodeAttr;)Z

    .line 2386
    invoke-virtual {v0, v4}, Lgnu/bytecode/ExitableBlock;->exit(Lgnu/bytecode/TryState;)V

    .line 2388
    :goto_1
    move-object v0, v3

    .line 2389
    .end local v3    # "next":Lgnu/bytecode/ExitableBlock;
    .end local v4    # "nextTry":Lgnu/bytecode/TryState;
    goto :goto_0

    .line 2390
    :cond_3
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v1, v3, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    .line 2392
    invoke-virtual {v2, p0}, Lgnu/bytecode/SwitchState;->addDefault(Lgnu/bytecode/CodeAttr;)V

    .line 2393
    invoke-virtual {v2, p0}, Lgnu/bytecode/SwitchState;->finish(Lgnu/bytecode/CodeAttr;)V

    .line 2395
    .end local v2    # "sw":Lgnu/bytecode/SwitchState;
    :cond_4
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 2397
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 2399
    .end local v0    # "exit":Lgnu/bytecode/ExitableBlock;
    :goto_2
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 2400
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v1, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    .line 2401
    return-void
.end method

.method public emitFinallyStart()V
    .locals 5

    .line 2301
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitTryEnd(Z)V

    .line 2302
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->try_type:Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    .line 2303
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 2304
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getLabel()Lgnu/bytecode/Label;

    move-result-object v1

    iput-object v1, v0, Lgnu/bytecode/TryState;->end_try:Lgnu/bytecode/Label;

    .line 2306
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 2307
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2309
    const/4 v0, 0x0

    iput v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 2311
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2312
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitJsr(Lgnu/bytecode/Label;)V

    .line 2313
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->exception:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2314
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    goto :goto_0

    .line 2318
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 2319
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 2320
    .local v0, "endLabel":Lgnu/bytecode/Label;
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->beginFragment(Lgnu/bytecode/Label;)I

    move-result v1

    .line 2321
    .local v1, "fragment_cookie":I
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v2, v2, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v3, v3, Lgnu/bytecode/TryState;->end_try:Lgnu/bytecode/Label;

    sget-object v4, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v2, v3, v4}, Lgnu/bytecode/CodeAttr;->addHandler(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/bytecode/ClassType;)V

    .line 2322
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v2, v2, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_2

    .line 2323
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v2, v2, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->emitStoreDefaultValue(Lgnu/bytecode/Variable;)V

    .line 2324
    :cond_2
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v2, v2, Lgnu/bytecode/TryState;->exitCases:Lgnu/bytecode/ExitableBlock;

    if-eqz v2, :cond_3

    .line 2326
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 2327
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 2329
    :cond_3
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v2, v2, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 2330
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->endFragment(I)V

    .line 2332
    .end local v0    # "endLabel":Lgnu/bytecode/Label;
    .end local v1    # "fragment_cookie":I
    :goto_0
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    invoke-virtual {v0, p0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 2334
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->useJsr()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2336
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    .line 2337
    .local v0, "ret_addr_type":Lgnu/bytecode/Type;
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v2

    iput-object v2, v1, Lgnu/bytecode/TryState;->finally_ret_addr:Lgnu/bytecode/Variable;

    .line 2338
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 2339
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->finally_ret_addr:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2347
    .end local v0    # "ret_addr_type":Lgnu/bytecode/Type;
    :cond_4
    return-void
.end method

.method public final emitGetField(Lgnu/bytecode/Field;)V
    .locals 1
    .param p1, "field"    # Lgnu/bytecode/Field;

    .line 1432
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1433
    iget-object v0, p1, Lgnu/bytecode/Field;->type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1434
    const/16 v0, 0xb4

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitFieldop(Lgnu/bytecode/Field;I)V

    .line 1435
    return-void
.end method

.method public final emitGetStatic(Lgnu/bytecode/Field;)V
    .locals 1
    .param p1, "field"    # Lgnu/bytecode/Field;

    .line 1423
    iget-object v0, p1, Lgnu/bytecode/Field;->type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1424
    const/16 v0, 0xb2

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitFieldop(Lgnu/bytecode/Field;I)V

    .line 1425
    return-void
.end method

.method public final emitGoto(Lgnu/bytecode/Label;)V
    .locals 1
    .param p1, "label"    # Lgnu/bytecode/Label;

    .line 1573
    invoke-virtual {p1, p0}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 1574
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 1575
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1576
    const/16 v0, 0xa7

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1577
    iget v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    .line 1578
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 1579
    return-void
.end method

.method public final emitGotoIfCompare1(Lgnu/bytecode/Label;I)V
    .locals 1
    .param p1, "label"    # Lgnu/bytecode/Label;
    .param p2, "opcode"    # I

    .line 1615
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1616
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1617
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    .line 1618
    return-void
.end method

.method public final emitGotoIfCompare2(Lgnu/bytecode/Label;I)V
    .locals 7
    .param p1, "label"    # Lgnu/bytecode/Label;
    .param p2, "logop"    # I

    .line 1635
    const/16 v0, 0x99

    if-lt p2, v0, :cond_b

    const/16 v0, 0x9e

    if-gt p2, v0, :cond_b

    .line 1638
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v1

    .line 1639
    .local v1, "type2":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v2

    .line 1640
    .local v2, "type1":Lgnu/bytecode/Type;
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1641
    invoke-virtual {v2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1642
    .local v3, "sig1":C
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1644
    .local v5, "sig2":C
    const/16 v6, 0x9b

    if-eq p2, v6, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    move v0, v4

    .line 1646
    .local v0, "cmpg":Z
    const/16 v4, 0x49

    if-ne v3, v4, :cond_2

    if-ne v5, v4, :cond_2

    .line 1647
    add-int/lit8 p2, p2, 0x6

    goto :goto_2

    .line 1648
    :cond_2
    const/16 v4, 0x4a

    if-ne v3, v4, :cond_3

    if-ne v5, v4, :cond_3

    .line 1649
    const/16 v4, 0x94

    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_2

    .line 1650
    :cond_3
    const/16 v4, 0x46

    if-ne v3, v4, :cond_5

    if-ne v5, v4, :cond_5

    .line 1651
    if-eqz v0, :cond_4

    const/16 v4, 0x95

    goto :goto_0

    :cond_4
    const/16 v4, 0x96

    :goto_0
    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_2

    .line 1652
    :cond_5
    const/16 v4, 0x44

    if-ne v3, v4, :cond_7

    if-ne v5, v4, :cond_7

    .line 1653
    if-eqz v0, :cond_6

    const/16 v4, 0x97

    goto :goto_1

    :cond_6
    const/16 v4, 0x98

    :goto_1
    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_2

    .line 1654
    :cond_7
    const/16 v4, 0x5b

    const/16 v6, 0x4c

    if-eq v3, v6, :cond_8

    if-ne v3, v4, :cond_a

    :cond_8
    if-eq v5, v6, :cond_9

    if-ne v5, v4, :cond_a

    :cond_9
    const/16 v4, 0x9a

    if-gt p2, v4, :cond_a

    .line 1657
    add-int/lit8 p2, p2, 0xc

    .line 1661
    :goto_2
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    .line 1662
    return-void

    .line 1659
    :cond_a
    new-instance v4, Ljava/lang/Error;

    const-string v6, "invalid types to emitGotoIfCompare2"

    invoke-direct {v4, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1636
    .end local v0    # "cmpg":Z
    .end local v1    # "type2":Lgnu/bytecode/Type;
    .end local v2    # "type1":Lgnu/bytecode/Type;
    .end local v3    # "sig1":C
    .end local v5    # "sig2":C
    :cond_b
    new-instance v0, Ljava/lang/Error;

    const-string v1, "emitGotoIfCompare2: logop must be one of ifeq...ifle"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final emitGotoIfEq(Lgnu/bytecode/Label;)V
    .locals 1
    .param p1, "label"    # Lgnu/bytecode/Label;

    .line 1674
    const/16 v0, 0x99

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    .line 1675
    return-void
.end method

.method public final emitGotoIfEq(Lgnu/bytecode/Label;Z)V
    .locals 1
    .param p1, "label"    # Lgnu/bytecode/Label;
    .param p2, "invert"    # Z

    .line 1668
    if-eqz p2, :cond_0

    const/16 v0, 0x9a

    goto :goto_0

    :cond_0
    const/16 v0, 0x99

    :goto_0
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    .line 1669
    return-void
.end method

.method public final emitGotoIfGe(Lgnu/bytecode/Label;)V
    .locals 1
    .param p1, "label"    # Lgnu/bytecode/Label;

    .line 1686
    const/16 v0, 0x9c

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfGt(Lgnu/bytecode/Label;)V
    .locals 1
    .param p1, "label"    # Lgnu/bytecode/Label;

    .line 1688
    const/16 v0, 0x9d

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntEqZero(Lgnu/bytecode/Label;)V
    .locals 1
    .param p1, "label"    # Lgnu/bytecode/Label;

    .line 1621
    const/16 v0, 0x99

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntGeZero(Lgnu/bytecode/Label;)V
    .locals 1
    .param p1, "label"    # Lgnu/bytecode/Label;

    .line 1627
    const/16 v0, 0x9c

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntGtZero(Lgnu/bytecode/Label;)V
    .locals 1
    .param p1, "label"    # Lgnu/bytecode/Label;

    .line 1629
    const/16 v0, 0x9d

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntLeZero(Lgnu/bytecode/Label;)V
    .locals 1
    .param p1, "label"    # Lgnu/bytecode/Label;

    .line 1631
    const/16 v0, 0x9e

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntLtZero(Lgnu/bytecode/Label;)V
    .locals 1
    .param p1, "label"    # Lgnu/bytecode/Label;

    .line 1625
    const/16 v0, 0x9b

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfIntNeZero(Lgnu/bytecode/Label;)V
    .locals 1
    .param p1, "label"    # Lgnu/bytecode/Label;

    .line 1623
    const/16 v0, 0x9a

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare1(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfLe(Lgnu/bytecode/Label;)V
    .locals 1
    .param p1, "label"    # Lgnu/bytecode/Label;

    .line 1690
    const/16 v0, 0x9e

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfLt(Lgnu/bytecode/Label;)V
    .locals 1
    .param p1, "label"    # Lgnu/bytecode/Label;

    .line 1684
    const/16 v0, 0x9b

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    return-void
.end method

.method public final emitGotoIfNE(Lgnu/bytecode/Label;)V
    .locals 1
    .param p1, "label"    # Lgnu/bytecode/Label;

    .line 1680
    const/16 v0, 0x9a

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitGotoIfCompare2(Lgnu/bytecode/Label;I)V

    .line 1681
    return-void
.end method

.method public final emitIOr()V
    .locals 1

    .line 1285
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public final emitIfCompare1(I)V
    .locals 3
    .param p1, "opcode"    # I

    .line 1698
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1699
    .local v0, "new_if":Lgnu/bytecode/IfState;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v1

    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-ne v1, v2, :cond_0

    .line 1701
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1702
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1, p1}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    .line 1703
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1704
    return-void

    .line 1700
    :cond_0
    new-instance v1, Ljava/lang/Error;

    const-string v2, "non-int type to emitIfCompare1"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final emitIfEq()V
    .locals 2

    .line 1782
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1783
    .local v0, "new_if":Lgnu/bytecode/IfState;
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfNE(Lgnu/bytecode/Label;)V

    .line 1784
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1785
    return-void
.end method

.method public final emitIfGe()V
    .locals 2

    .line 1800
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1801
    .local v0, "new_if":Lgnu/bytecode/IfState;
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfLt(Lgnu/bytecode/Label;)V

    .line 1802
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1803
    return-void
.end method

.method public final emitIfGt()V
    .locals 2

    .line 1809
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1810
    .local v0, "new_if":Lgnu/bytecode/IfState;
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfLe(Lgnu/bytecode/Label;)V

    .line 1811
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1812
    return-void
.end method

.method public final emitIfIntCompare(I)V
    .locals 2
    .param p1, "opcode"    # I

    .line 1755
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1756
    .local v0, "new_if":Lgnu/bytecode/IfState;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1757
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1758
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1759
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1, p1}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    .line 1760
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1761
    return-void
.end method

.method public final emitIfIntEqZero()V
    .locals 1

    .line 1717
    const/16 v0, 0x9a

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitIfCompare1(I)V

    .line 1718
    return-void
.end method

.method public final emitIfIntLEqZero()V
    .locals 1

    .line 1723
    const/16 v0, 0x9d

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitIfCompare1(I)V

    .line 1724
    return-void
.end method

.method public final emitIfIntLt()V
    .locals 1

    .line 1766
    const/16 v0, 0xa2

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitIfIntCompare(I)V

    .line 1767
    return-void
.end method

.method public final emitIfIntNotZero()V
    .locals 1

    .line 1710
    const/16 v0, 0x99

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitIfCompare1(I)V

    .line 1711
    return-void
.end method

.method public final emitIfLe()V
    .locals 2

    .line 1818
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1819
    .local v0, "new_if":Lgnu/bytecode/IfState;
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfGt(Lgnu/bytecode/Label;)V

    .line 1820
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1821
    return-void
.end method

.method public final emitIfLt()V
    .locals 2

    .line 1791
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1792
    .local v0, "new_if":Lgnu/bytecode/IfState;
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfGe(Lgnu/bytecode/Label;)V

    .line 1793
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1794
    return-void
.end method

.method public final emitIfNEq()V
    .locals 2

    .line 1773
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1774
    .local v0, "new_if":Lgnu/bytecode/IfState;
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitGotoIfEq(Lgnu/bytecode/Label;)V

    .line 1775
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1776
    return-void
.end method

.method public final emitIfNotNull()V
    .locals 1

    .line 1742
    const/16 v0, 0xc6

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitIfRefCompare1(I)V

    .line 1743
    return-void
.end method

.method public final emitIfNull()V
    .locals 1

    .line 1748
    const/16 v0, 0xc7

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitIfRefCompare1(I)V

    .line 1749
    return-void
.end method

.method public final emitIfRefCompare1(I)V
    .locals 3
    .param p1, "opcode"    # I

    .line 1731
    new-instance v0, Lgnu/bytecode/IfState;

    invoke-direct {v0, p0}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1732
    .local v0, "new_if":Lgnu/bytecode/IfState;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    instance-of v1, v1, Lgnu/bytecode/ObjectType;

    if-eqz v1, :cond_0

    .line 1734
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1735
    iget-object v1, v0, Lgnu/bytecode/IfState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {p0, v1, p1}, Lgnu/bytecode/CodeAttr;->emitTransfer(Lgnu/bytecode/Label;I)V

    .line 1736
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1737
    return-void

    .line 1733
    :cond_0
    new-instance v1, Ljava/lang/Error;

    const-string v2, "non-ref type to emitIfRefCompare1"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final emitIfThen()V
    .locals 2

    .line 1850
    new-instance v0, Lgnu/bytecode/IfState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgnu/bytecode/IfState;-><init>(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Label;)V

    .line 1851
    return-void
.end method

.method public emitInc(Lgnu/bytecode/Variable;S)V
    .locals 4
    .param p1, "var"    # Lgnu/bytecode/Variable;
    .param p2, "inc"    # S

    .line 1383
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->dead()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1385
    iget v0, p1, Lgnu/bytecode/Variable;->offset:I

    .line 1386
    .local v0, "offset":I
    if-ltz v0, :cond_4

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1389
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1390
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v1

    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-ne v1, v2, :cond_3

    .line 1393
    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    if-gt p2, v1, :cond_1

    const/16 v1, -0x100

    if-ge p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1395
    .local v1, "wide":Z
    :goto_1
    const/16 v2, 0x84

    if-eqz v1, :cond_2

    .line 1397
    const/16 v3, 0xc4

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1398
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1399
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put2(I)V

    .line 1400
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put2(I)V

    goto :goto_2

    .line 1404
    :cond_2
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1405
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1406
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1408
    :goto_2
    return-void

    .line 1391
    .end local v1    # "wide":Z
    :cond_3
    new-instance v1, Ljava/lang/Error;

    const-string v2, "attempting to increment non-int variable"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1387
    :cond_4
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempting to increment unassigned variable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simple:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1384
    .end local v0    # "offset":I
    :cond_5
    new-instance v0, Ljava/lang/Error;

    const-string v1, "attempting to increment dead variable"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public emitInstanceof(Lgnu/bytecode/Type;)V
    .locals 1
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 2036
    const/16 v0, 0xc1

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;I)V

    .line 2037
    sget-object v0, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 2038
    return-void
.end method

.method public emitInvoke(Lgnu/bytecode/Method;)V
    .locals 2
    .param p1, "method"    # Lgnu/bytecode/Method;

    .line 1521
    iget v0, p1, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 1522
    const/16 v0, 0xb8

    .local v0, "opcode":I
    goto :goto_0

    .line 1523
    .end local v0    # "opcode":I
    :cond_0
    iget-object v0, p1, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1524
    const/16 v0, 0xb9

    .restart local v0    # "opcode":I
    goto :goto_0

    .line 1525
    .end local v0    # "opcode":I
    :cond_1
    const-string v0, "<init>"

    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1526
    const/16 v0, 0xb7

    .restart local v0    # "opcode":I
    goto :goto_0

    .line 1528
    .end local v0    # "opcode":I
    :cond_2
    const/16 v0, 0xb6

    .line 1529
    .restart local v0    # "opcode":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 1530
    return-void
.end method

.method public emitInvokeInterface(Lgnu/bytecode/Method;)V
    .locals 1
    .param p1, "method"    # Lgnu/bytecode/Method;

    .line 1557
    const/16 v0, 0xb9

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 1558
    return-void
.end method

.method public emitInvokeMethod(Lgnu/bytecode/Method;I)V
    .locals 10
    .param p1, "method"    # Lgnu/bytecode/Method;
    .param p2, "opcode"    # I

    .line 1470
    const/16 v0, 0xb9

    if-ne p2, v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1471
    iget-object v1, p1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v1, v1

    .line 1472
    .local v1, "arg_count":I
    const/16 v2, 0xb8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p2, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1473
    .local v2, "is_invokestatic":Z
    :goto_1
    const/16 v5, 0xb7

    if-ne p2, v5, :cond_2

    const-string v5, "<init>"

    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 1475
    .local v5, "is_init":Z
    :goto_2
    iget v6, p1, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-ne v2, v6, :cond_12

    .line 1478
    if-nez v2, :cond_4

    if-nez v5, :cond_4

    .line 1479
    add-int/lit8 v1, v1, 0x1

    .line 1480
    :cond_4
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1481
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v6

    invoke-virtual {v6, p1}, Lgnu/bytecode/ConstantPool;->addMethodRef(Lgnu/bytecode/Method;)Lgnu/bytecode/CpoolRef;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    .line 1482
    if-ne p2, v0, :cond_5

    .line 1484
    iget-object v0, p1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->words([Lgnu/bytecode/Type;)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1485
    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1487
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_7

    .line 1489
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 1490
    .local v0, "t":Lgnu/bytecode/Type;
    instance-of v3, v0, Lgnu/bytecode/UninitializedType;

    if-nez v3, :cond_6

    .line 1492
    .end local v0    # "t":Lgnu/bytecode/Type;
    goto :goto_4

    .line 1491
    .restart local v0    # "t":Lgnu/bytecode/Type;
    :cond_6
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "passing "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " as parameter"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1493
    .end local v0    # "t":Lgnu/bytecode/Type;
    :cond_7
    if-eqz v5, :cond_10

    .line 1495
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 1497
    .restart local v0    # "t":Lgnu/bytecode/Type;
    instance-of v3, v0, Lgnu/bytecode/UninitializedType;

    if-eqz v3, :cond_f

    .line 1499
    move-object v3, v0

    check-cast v3, Lgnu/bytecode/UninitializedType;

    iget-object v3, v3, Lgnu/bytecode/UninitializedType;->ctype:Lgnu/bytecode/ClassType;

    .line 1500
    .local v3, "ctype":Lgnu/bytecode/ClassType;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    iget v7, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-ge v6, v7, :cond_9

    .line 1501
    iget-object v7, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    aget-object v7, v7, v6

    if-ne v7, v0, :cond_8

    .line 1502
    iget-object v7, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    aput-object v3, v7, v6

    .line 1500
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1503
    .end local v6    # "i":I
    :cond_9
    iget-object v6, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v6, v6, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    .line 1504
    .local v6, "used":[Lgnu/bytecode/Variable;
    if-nez v6, :cond_a

    const/4 v7, 0x0

    goto :goto_6

    :cond_a
    array-length v7, v6

    .local v7, "i":I
    :goto_6
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_c

    .line 1506
    aget-object v8, v6, v7

    .line 1507
    .local v8, "var":Lgnu/bytecode/Variable;
    if-eqz v8, :cond_b

    iget-object v9, v8, Lgnu/bytecode/Variable;->type:Lgnu/bytecode/Type;

    if-ne v9, v0, :cond_b

    .line 1508
    iput-object v3, v8, Lgnu/bytecode/Variable;->type:Lgnu/bytecode/Type;

    .line 1509
    .end local v8    # "var":Lgnu/bytecode/Variable;
    :cond_b
    goto :goto_6

    .line 1510
    .end local v7    # "i":I
    :cond_c
    iget-object v7, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-nez v7, :cond_d

    goto :goto_7

    :cond_d
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v4, v4

    .local v4, "i":I
    :cond_e
    :goto_7
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_10

    .line 1511
    iget-object v7, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aget-object v7, v7, v4

    if-ne v7, v0, :cond_e

    .line 1512
    iget-object v7, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aput-object v3, v7, v4

    goto :goto_7

    .line 1498
    .end local v3    # "ctype":Lgnu/bytecode/ClassType;
    .end local v4    # "i":I
    .end local v6    # "used":[Lgnu/bytecode/Variable;
    :cond_f
    new-instance v3, Ljava/lang/Error;

    const-string v4, "calling <init> on already-initialized object"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1514
    .end local v0    # "t":Lgnu/bytecode/Type;
    :cond_10
    iget-object v0, p1, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    iget v0, v0, Lgnu/bytecode/Type;->size:I

    if-eqz v0, :cond_11

    .line 1515
    iget-object v0, p1, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1516
    :cond_11
    return-void

    .line 1476
    :cond_12
    new-instance v0, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emitInvokeXxx static flag mis-match method.flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lgnu/bytecode/Method;->access_flags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public emitInvokeSpecial(Lgnu/bytecode/Method;)V
    .locals 1
    .param p1, "method"    # Lgnu/bytecode/Method;

    .line 1543
    const/16 v0, 0xb7

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 1544
    return-void
.end method

.method public emitInvokeStatic(Lgnu/bytecode/Method;)V
    .locals 1
    .param p1, "method"    # Lgnu/bytecode/Method;

    .line 1552
    const/16 v0, 0xb8

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 1553
    return-void
.end method

.method public emitInvokeVirtual(Lgnu/bytecode/Method;)V
    .locals 1
    .param p1, "method"    # Lgnu/bytecode/Method;

    .line 1538
    const/16 v0, 0xb6

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeMethod(Lgnu/bytecode/Method;I)V

    .line 1539
    return-void
.end method

.method public final emitJsr(Lgnu/bytecode/Label;)V
    .locals 1
    .param p1, "label"    # Lgnu/bytecode/Label;

    .line 1583
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 1584
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1585
    const/16 v0, 0xa8

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1586
    iget v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    .line 1587
    return-void
.end method

.method public final emitLoad(Lgnu/bytecode/Variable;)V
    .locals 4
    .param p1, "var"    # Lgnu/bytecode/Variable;

    .line 1347
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->dead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1349
    iget v0, p1, Lgnu/bytecode/Variable;->offset:I

    .line 1350
    .local v0, "offset":I
    if-ltz v0, :cond_1

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1353
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v1

    .line 1354
    .local v1, "type":Lgnu/bytecode/Type;
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1355
    invoke-direct {p0, v1}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(Lgnu/bytecode/Type;)I

    move-result v2

    .line 1356
    .local v2, "kind":I
    const/4 v3, 0x3

    if-gt v0, v3, :cond_0

    .line 1357
    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x1a

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    .line 1359
    :cond_0
    add-int/lit8 v3, v2, 0x15

    invoke-virtual {p0, v3, v0}, Lgnu/bytecode/CodeAttr;->emitMaybeWide(II)V

    .line 1360
    :goto_0
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1361
    return-void

    .line 1351
    .end local v1    # "type":Lgnu/bytecode/Type;
    .end local v2    # "kind":I
    :cond_1
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempting to load from unassigned variable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simple:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1348
    .end local v0    # "offset":I
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "attempting to push dead variable"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method emitMaybeWide(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "index"    # I

    .line 1328
    const/16 v0, 0x100

    if-lt p2, v0, :cond_0

    .line 1330
    const/16 v0, 0xc4

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1331
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1332
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put2(I)V

    goto :goto_0

    .line 1336
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1337
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1339
    :goto_0
    return-void
.end method

.method public final emitMonitorEnter()V
    .locals 1

    .line 2050
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 2051
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 2052
    const/16 v0, 0xc2

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 2053
    return-void
.end method

.method public final emitMonitorExit()V
    .locals 1

    .line 2057
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 2058
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 2059
    const/16 v0, 0xc3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 2060
    return-void
.end method

.method public final emitMul()V
    .locals 1

    .line 1281
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public emitNew(Lgnu/bytecode/ClassType;)V
    .locals 2
    .param p1, "type"    # Lgnu/bytecode/ClassType;

    .line 1175
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1176
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 1177
    .local v0, "label":Lgnu/bytecode/Label;
    invoke-virtual {v0, p0}, Lgnu/bytecode/Label;->defineRaw(Lgnu/bytecode/CodeAttr;)V

    .line 1178
    const/16 v1, 0xbb

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1179
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    .line 1180
    new-instance v1, Lgnu/bytecode/UninitializedType;

    invoke-direct {v1, p1, v0}, Lgnu/bytecode/UninitializedType;-><init>(Lgnu/bytecode/ClassType;Lgnu/bytecode/Label;)V

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1181
    return-void
.end method

.method emitNewArray(I)V
    .locals 1
    .param p1, "type_code"    # I

    .line 1063
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1064
    const/16 v0, 0xbc

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1065
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1066
    return-void
.end method

.method public emitNewArray(Lgnu/bytecode/Type;)V
    .locals 1
    .param p1, "element_type"    # Lgnu/bytecode/Type;

    .line 1235
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;I)V

    .line 1236
    return-void
.end method

.method public emitNewArray(Lgnu/bytecode/Type;I)V
    .locals 3
    .param p1, "element_type"    # Lgnu/bytecode/Type;
    .param p2, "dims"    # I

    .line 1189
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v0

    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    const-string v2, "non-int dim. spec. in emitNewArray"

    if-ne v0, v1, :cond_6

    .line 1192
    instance-of v0, p1, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_0

    .line 1195
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 1205
    .local v0, "code":I
    new-instance v1, Ljava/lang/Error;

    const-string v2, "bad PrimType in emitNewArray"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1195
    .end local v0    # "code":I
    :sswitch_0
    move v0, v1

    .line 1203
    .restart local v0    # "code":I
    const/4 v0, 0x4

    goto :goto_0

    .line 1195
    .end local v0    # "code":I
    :sswitch_1
    move v0, v1

    .line 1198
    .restart local v0    # "code":I
    const/16 v0, 0x9

    goto :goto_0

    .line 1195
    .end local v0    # "code":I
    :sswitch_2
    move v0, v1

    .line 1200
    .restart local v0    # "code":I
    const/16 v0, 0xb

    goto :goto_0

    .line 1195
    .end local v0    # "code":I
    :sswitch_3
    move v0, v1

    .line 1199
    .restart local v0    # "code":I
    const/16 v0, 0xa

    goto :goto_0

    .line 1195
    .end local v0    # "code":I
    :sswitch_4
    move v0, v1

    .line 1201
    .restart local v0    # "code":I
    const/4 v0, 0x6

    goto :goto_0

    .line 1195
    .end local v0    # "code":I
    :sswitch_5
    move v0, v1

    .line 1202
    .restart local v0    # "code":I
    const/4 v0, 0x7

    goto :goto_0

    .line 1195
    .end local v0    # "code":I
    :sswitch_6
    move v0, v1

    .line 1204
    .restart local v0    # "code":I
    const/4 v0, 0x5

    goto :goto_0

    .line 1197
    .end local v0    # "code":I
    :sswitch_7
    const/16 v0, 0x8

    .line 1207
    .restart local v0    # "code":I
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitNewArray(I)V

    .line 1208
    .end local v0    # "code":I
    goto :goto_2

    .line 1209
    :cond_0
    instance-of v0, p1, Lgnu/bytecode/ObjectType;

    if-eqz v0, :cond_1

    .line 1211
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1212
    const/16 v0, 0xbd

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1213
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lgnu/bytecode/ObjectType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_2

    .line 1215
    :cond_1
    instance-of v0, p1, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_5

    .line 1217
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1218
    const/16 v0, 0xc5

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1219
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    new-instance v1, Lgnu/bytecode/ArrayType;

    invoke-direct {v1, p1}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->putIndex2(Lgnu/bytecode/CpoolEntry;)V

    .line 1220
    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    const/16 v0, 0xff

    if-gt p2, v0, :cond_4

    .line 1222
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1223
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_3

    .line 1224
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v0

    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 1225
    :cond_2
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1230
    :cond_3
    :goto_2
    new-instance v0, Lgnu/bytecode/ArrayType;

    invoke-direct {v0, p1}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1231
    return-void

    .line 1221
    :cond_4
    new-instance v0, Ljava/lang/Error;

    const-string v1, "dims out of range in emitNewArray"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1228
    :cond_5
    new-instance v0, Ljava/lang/Error;

    const-string v1, "unimplemented type in emitNewArray"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1190
    :cond_6
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3

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

.method public final emitNot(Lgnu/bytecode/Type;)V
    .locals 1
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 1311
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(ILgnu/bytecode/Type;)V

    .line 1312
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitAdd()V

    .line 1313
    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(ILgnu/bytecode/Type;)V

    .line 1314
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitAnd()V

    .line 1315
    return-void
.end method

.method public emitPop(I)V
    .locals 7
    .param p1, "nvalues"    # I

    .line 460
    nop

    :goto_0
    if-lez p1, :cond_3

    .line 462
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 463
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 464
    .local v1, "type":Lgnu/bytecode/Type;
    iget v2, v1, Lgnu/bytecode/Type;->size:I

    const/16 v3, 0x58

    const/4 v4, 0x4

    if-le v2, v4, :cond_0

    .line 465
    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_1

    .line 466
    :cond_0
    const/16 v2, 0x57

    if-le p1, v0, :cond_2

    .line 468
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 469
    .local v5, "type2":Lgnu/bytecode/Type;
    iget v6, v5, Lgnu/bytecode/Type;->size:I

    if-le v6, v4, :cond_1

    .line 471
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 472
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 474
    :cond_1
    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 475
    nop

    .end local v5    # "type2":Lgnu/bytecode/Type;
    add-int/lit8 p1, p1, -0x1

    .line 476
    goto :goto_1

    .line 478
    :cond_2
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 460
    .end local v1    # "type":Lgnu/bytecode/Type;
    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 480
    :cond_3
    return-void
.end method

.method public emitPrimop(IILgnu/bytecode/Type;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "arg_count"    # I
    .param p3, "retType"    # Lgnu/bytecode/Type;

    .line 1319
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1320
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    .line 1321
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    goto :goto_0

    .line 1322
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1323
    invoke-virtual {p0, p3}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 1324
    return-void
.end method

.method public final emitPushClass(Lgnu/bytecode/ObjectType;)V
    .locals 1
    .param p1, "ctype"    # Lgnu/bytecode/ObjectType;

    .line 944
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    .line 945
    sget-object v0, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 946
    return-void
.end method

.method public final emitPushConstant(ILgnu/bytecode/Type;)V
    .locals 2
    .param p1, "val"    # I
    .param p2, "type"    # Lgnu/bytecode/Type;

    .line 710
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 721
    new-instance v0, Ljava/lang/Error;

    const-string v1, "bad type to emitPushConstant"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :sswitch_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushLong(J)V

    goto :goto_0

    .line 717
    :sswitch_1
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushFloat(F)V

    goto :goto_0

    .line 719
    :sswitch_2
    int-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushDouble(D)V

    goto :goto_0

    .line 713
    :sswitch_3
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 723
    :goto_0
    return-void

    nop

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

.method public final emitPushConstant(Lgnu/bytecode/CpoolEntry;)V
    .locals 2
    .param p1, "cnst"    # Lgnu/bytecode/CpoolEntry;

    .line 729
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 730
    iget v0, p1, Lgnu/bytecode/CpoolEntry;->index:I

    .line 731
    .local v0, "index":I
    instance-of v1, p1, Lgnu/bytecode/CpoolValue2;

    if-eqz v1, :cond_0

    .line 733
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 734
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put2(I)V

    goto :goto_0

    .line 736
    :cond_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    .line 738
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 739
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    .line 743
    :cond_1
    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 744
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put2(I)V

    .line 746
    :goto_0
    return-void
.end method

.method public emitPushDefaultValue(Lgnu/bytecode/Type;)V
    .locals 1
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 958
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p1

    .line 959
    instance-of v0, p1, Lgnu/bytecode/PrimType;

    if-eqz v0, :cond_0

    .line 960
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(ILgnu/bytecode/Type;)V

    goto :goto_0

    .line 962
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    .line 963
    :goto_0
    return-void
.end method

.method public emitPushDouble(D)V
    .locals 7
    .param p1, "x"    # D

    .line 825
    double-to-int v0, p1

    .line 826
    .local v0, "xi":I
    int-to-double v1, v0

    cmpl-double v3, v1, p1

    if-nez v3, :cond_2

    const/16 v1, -0x80

    if-lt v0, v1, :cond_2

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    .line 828
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 842
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 843
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 844
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 845
    const/16 v1, 0x87

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_1

    .line 830
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 831
    add-int/lit8 v2, v0, 0xe

    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 832
    if-nez v0, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 834
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 835
    const/16 v1, 0x77

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_1

    .line 850
    :cond_2
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lgnu/bytecode/ConstantPool;->addDouble(D)Lgnu/bytecode/CpoolValue2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    .line 852
    :cond_3
    :goto_1
    sget-object v1, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 853
    return-void
.end method

.method public emitPushFloat(F)V
    .locals 3
    .param p1, "x"    # F

    .line 793
    float-to-int v0, p1

    .line 794
    .local v0, "xi":I
    int-to-float v1, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_1

    const/16 v1, -0x80

    if-lt v0, v1, :cond_1

    const/16 v1, 0x80

    if-ge v0, v1, :cond_1

    .line 796
    const/4 v1, 0x1

    if-ltz v0, :cond_0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 798
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 799
    add-int/lit8 v2, v0, 0xb

    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 800
    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eqz v2, :cond_2

    .line 802
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 803
    const/16 v1, 0x76

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    .line 810
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 811
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 812
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 813
    const/16 v1, 0x86

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    .line 818
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgnu/bytecode/ConstantPool;->addFloat(F)Lgnu/bytecode/CpoolValue1;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    .line 820
    :cond_2
    :goto_0
    sget-object v1, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 821
    return-void
.end method

.method public final emitPushInt(I)V
    .locals 1
    .param p1, "i"    # I

    .line 750
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 751
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 752
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    .line 753
    :cond_0
    const/16 v0, -0x80

    if-lt p1, v0, :cond_1

    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    .line 755
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 756
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    .line 758
    :cond_1
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_2

    const v0, 0x8000

    if-ge p1, v0, :cond_2

    .line 760
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 761
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->put2(I)V

    goto :goto_0

    .line 765
    :cond_2
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addInt(I)Lgnu/bytecode/CpoolValue1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    .line 767
    :goto_0
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 768
    return-void
.end method

.method public emitPushLong(J)V
    .locals 4
    .param p1, "i"    # J

    .line 772
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    cmp-long v3, p1, v0

    if-eqz v3, :cond_2

    const-wide/16 v0, 0x1

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    goto :goto_0

    .line 777
    :cond_0
    long-to-int v0, p1

    int-to-long v0, v0

    cmp-long v3, v0, p1

    if-nez v3, :cond_1

    .line 779
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 780
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 781
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 782
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_1

    .line 786
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/ConstantPool;->addLong(J)Lgnu/bytecode/CpoolValue2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    goto :goto_1

    .line 774
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 775
    long-to-int v0, p1

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 788
    :goto_1
    sget-object v0, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 789
    return-void
.end method

.method public emitPushNull()V
    .locals 1

    .line 950
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 951
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 952
    sget-object v0, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 953
    return-void
.end method

.method public final emitPushPrimArray(Ljava/lang/Object;Lgnu/bytecode/ArrayType;)V
    .locals 15
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "arrayType"    # Lgnu/bytecode/ArrayType;

    .line 983
    move-object v0, p0

    invoke-virtual/range {p2 .. p2}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 984
    .local v1, "elementType":Lgnu/bytecode/Type;
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 985
    .local v2, "len":I
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 986
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 987
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 988
    .local v3, "sig":C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 990
    const-wide/16 v5, 0x0

    .local v5, "ival":J
    const/4 v7, 0x0

    .local v7, "fval":F
    const-wide/16 v8, 0x0

    .line 991
    .local v8, "dval":D
    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_2

    .line 1019
    :sswitch_0
    move-object/from16 v10, p1

    check-cast v10, [Z

    check-cast v10, [Z

    aget-boolean v10, v10, v4

    if-eqz v10, :cond_0

    const-wide/16 v10, 0x1

    goto :goto_1

    :cond_0
    move-wide v10, v12

    :goto_1
    move-wide v5, v10

    .line 1020
    cmp-long v10, v5, v12

    if-nez v10, :cond_1

    .line 1021
    move-object/from16 v10, p2

    goto/16 :goto_4

    .line 1004
    :sswitch_1
    move-object/from16 v10, p1

    check-cast v10, [S

    check-cast v10, [S

    aget-short v10, v10, v4

    int-to-long v5, v10

    .line 1005
    cmp-long v10, v5, v12

    if-nez v10, :cond_1

    .line 1006
    move-object/from16 v10, p2

    goto/16 :goto_4

    .line 994
    :sswitch_2
    move-object/from16 v10, p1

    check-cast v10, [J

    check-cast v10, [J

    aget-wide v5, v10, v4

    .line 995
    cmp-long v10, v5, v12

    if-nez v10, :cond_1

    .line 996
    move-object/from16 v10, p2

    goto/16 :goto_4

    .line 999
    :sswitch_3
    move-object/from16 v10, p1

    check-cast v10, [I

    check-cast v10, [I

    aget v10, v10, v4

    int-to-long v5, v10

    .line 1000
    cmp-long v10, v5, v12

    if-nez v10, :cond_1

    .line 1001
    move-object/from16 v10, p2

    goto :goto_4

    .line 1024
    :sswitch_4
    move-object/from16 v12, p1

    check-cast v12, [F

    check-cast v12, [F

    aget v7, v12, v4

    .line 1025
    float-to-double v12, v7

    cmpl-double v14, v12, v10

    if-nez v14, :cond_1

    .line 1026
    move-object/from16 v10, p2

    goto :goto_4

    .line 1029
    :sswitch_5
    move-object/from16 v12, p1

    check-cast v12, [D

    check-cast v12, [D

    aget-wide v8, v12, v4

    .line 1030
    cmpl-double v12, v8, v10

    if-nez v12, :cond_1

    .line 1031
    move-object/from16 v10, p2

    goto :goto_4

    .line 1009
    :sswitch_6
    move-object/from16 v10, p1

    check-cast v10, [C

    check-cast v10, [C

    aget-char v10, v10, v4

    int-to-long v5, v10

    .line 1010
    cmp-long v10, v5, v12

    if-nez v10, :cond_1

    .line 1011
    move-object/from16 v10, p2

    goto :goto_4

    .line 1014
    :sswitch_7
    move-object/from16 v10, p1

    check-cast v10, [B

    check-cast v10, [B

    aget-byte v10, v10, v4

    int-to-long v5, v10

    .line 1015
    cmp-long v10, v5, v12

    if-nez v10, :cond_1

    .line 1016
    move-object/from16 v10, p2

    goto :goto_4

    .line 1034
    :cond_1
    :goto_2
    move-object/from16 v10, p2

    invoke-virtual {p0, v10}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 1035
    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1036
    sparse-switch v3, :sswitch_data_1

    goto :goto_3

    .line 1046
    :sswitch_8
    invoke-virtual {p0, v5, v6}, Lgnu/bytecode/CodeAttr;->emitPushLong(J)V

    .line 1047
    goto :goto_3

    .line 1049
    :sswitch_9
    invoke-virtual {p0, v7}, Lgnu/bytecode/CodeAttr;->emitPushFloat(F)V

    .line 1050
    goto :goto_3

    .line 1052
    :sswitch_a
    invoke-virtual {p0, v8, v9}, Lgnu/bytecode/CodeAttr;->emitPushDouble(D)V

    goto :goto_3

    .line 1043
    :sswitch_b
    long-to-int v11, v5

    invoke-virtual {p0, v11}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1044
    nop

    .line 1055
    :goto_3
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 988
    .end local v5    # "ival":J
    .end local v7    # "fval":F
    .end local v8    # "dval":D
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v10, p2

    .line 1057
    .end local v4    # "i":I
    return-void

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

    :sswitch_data_1
    .sparse-switch
        0x42 -> :sswitch_b
        0x43 -> :sswitch_b
        0x44 -> :sswitch_a
        0x46 -> :sswitch_9
        0x49 -> :sswitch_b
        0x4a -> :sswitch_8
        0x53 -> :sswitch_b
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method public final emitPushString(Ljava/lang/String;)V
    .locals 12
    .param p1, "str"    # Ljava/lang/String;

    .line 890
    if-nez p1, :cond_0

    .line 891
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    goto :goto_0

    .line 894
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 895
    .local v0, "length":I
    invoke-static {p1}, Lgnu/bytecode/CodeAttr;->calculateSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 896
    .local v1, "segments":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 897
    .local v2, "numSegments":I
    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 898
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v3

    invoke-virtual {v3, p1}, Lgnu/bytecode/ConstantPool;->addString(Ljava/lang/String;)Lgnu/bytecode/CpoolString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->emitPushConstant(Lgnu/bytecode/CpoolEntry;)V

    .line 936
    sget-object v3, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 938
    .end local v0    # "length":I
    .end local v1    # "segments":Ljava/lang/String;
    .end local v2    # "numSegments":I
    :goto_0
    return-void

    .line 901
    .restart local v0    # "length":I
    .restart local v1    # "segments":Ljava/lang/String;
    .restart local v2    # "numSegments":I
    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    .line 903
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 904
    .local v4, "firstSegment":I
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 905
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 906
    sget-object v6, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    const-string v7, "concat"

    invoke-virtual {v6, v7, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    .line 908
    .local v3, "concatMethod":Lgnu/bytecode/Method;
    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 909
    .end local v3    # "concatMethod":Lgnu/bytecode/Method;
    .end local v4    # "firstSegment":I
    goto :goto_2

    .line 912
    :cond_2
    const-string v4, "java.lang.StringBuffer"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    .line 913
    .local v4, "sbufType":Lgnu/bytecode/ClassType;
    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 914
    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 915
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 916
    new-array v6, v3, [Lgnu/bytecode/Type;

    sget-object v7, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v7, v6, v5

    .line 917
    .local v6, "args1":[Lgnu/bytecode/Type;
    const-string v7, "<init>"

    invoke-virtual {v4, v7, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 918
    new-array v3, v3, [Lgnu/bytecode/Type;

    sget-object v7, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    aput-object v7, v3, v5

    .line 919
    .local v3, "args2":[Lgnu/bytecode/Type;
    const-string v7, "append"

    invoke-virtual {v4, v7, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v7

    .line 921
    .local v7, "appendMethod":Lgnu/bytecode/Method;
    const/4 v8, 0x0

    .line 922
    .local v8, "segStart":I
    const/4 v9, 0x0

    .local v9, "seg":I
    :goto_1
    if-ge v9, v2, :cond_3

    .line 924
    invoke-virtual {p0, v4}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 925
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/2addr v10, v8

    .line 926
    .local v10, "segEnd":I
    invoke-virtual {p1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p0, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 928
    move v8, v10

    .line 922
    .end local v10    # "segEnd":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 930
    .end local v9    # "seg":I
    :cond_3
    sget-object v9, Lgnu/bytecode/Type;->toString_method:Lgnu/bytecode/Method;

    invoke-virtual {p0, v9}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 932
    .end local v3    # "args2":[Lgnu/bytecode/Type;
    .end local v4    # "sbufType":Lgnu/bytecode/ClassType;
    .end local v6    # "args1":[Lgnu/bytecode/Type;
    .end local v7    # "appendMethod":Lgnu/bytecode/Method;
    .end local v8    # "segStart":I
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    if-ne p1, v3, :cond_4

    .line 933
    sget-object v3, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    const-string v4, "intern"

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 934
    :cond_4
    return-void
.end method

.method public final emitPushThis()V
    .locals 2

    .line 974
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 975
    return-void
.end method

.method public final emitPutField(Lgnu/bytecode/Field;)V
    .locals 1
    .param p1, "field"    # Lgnu/bytecode/Field;

    .line 1451
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1452
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1453
    const/16 v0, 0xb5

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitFieldop(Lgnu/bytecode/Field;I)V

    .line 1454
    return-void
.end method

.method public final emitPutStatic(Lgnu/bytecode/Field;)V
    .locals 1
    .param p1, "field"    # Lgnu/bytecode/Field;

    .line 1442
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1443
    const/16 v0, 0xb3

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/CodeAttr;->emitFieldop(Lgnu/bytecode/Field;I)V

    .line 1444
    return-void
.end method

.method final emitRawReturn()V
    .locals 2

    .line 2077
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v0

    iget v0, v0, Lgnu/bytecode/Type;->size:I

    if-nez v0, :cond_0

    .line 2079
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 2080
    const/16 v0, 0xb1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    .line 2083
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v0

    const/16 v1, 0xac

    invoke-direct {p0, v1, v0}, Lgnu/bytecode/CodeAttr;->emitTypedOp(ILgnu/bytecode/Type;)V

    .line 2084
    :goto_0
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 2085
    return-void
.end method

.method public final emitRem()V
    .locals 1

    .line 1283
    const/16 v0, 0x70

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public emitRet(Lgnu/bytecode/Variable;)V
    .locals 3
    .param p1, "var"    # Lgnu/bytecode/Variable;

    .line 1827
    iget v0, p1, Lgnu/bytecode/Variable;->offset:I

    .line 1828
    .local v0, "offset":I
    const/16 v1, 0x100

    const/16 v2, 0xa9

    if-ge v0, v1, :cond_0

    .line 1830
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1831
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1832
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    .line 1836
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1837
    const/16 v1, 0xc4

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1838
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1839
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put2(I)V

    .line 1841
    :goto_0
    return-void
.end method

.method public final emitReturn()V
    .locals 1

    .line 2070
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    if-eqz v0, :cond_0

    .line 2071
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    .line 2072
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitRawReturn()V

    .line 2073
    return-void
.end method

.method public final emitShl()V
    .locals 1

    .line 1288
    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitShift(I)V

    return-void
.end method

.method public final emitShr()V
    .locals 1

    .line 1289
    const/16 v0, 0x7a

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitShift(I)V

    return-void
.end method

.method public emitStore(Lgnu/bytecode/Variable;)V
    .locals 4
    .param p1, "var"    # Lgnu/bytecode/Variable;

    .line 1365
    iget v0, p1, Lgnu/bytecode/Variable;->offset:I

    .line 1366
    .local v0, "offset":I
    if-ltz v0, :cond_1

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1369
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v1

    .line 1370
    .local v1, "type":Lgnu/bytecode/Type;
    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/CodeAttr;->noteVarType(ILgnu/bytecode/Type;)V

    .line 1371
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 1372
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 1373
    invoke-direct {p0, v1}, Lgnu/bytecode/CodeAttr;->adjustTypedOp(Lgnu/bytecode/Type;)I

    move-result v2

    .line 1374
    .local v2, "kind":I
    const/4 v3, 0x3

    if-gt v0, v3, :cond_0

    .line 1375
    mul-int/lit8 v3, v2, 0x4

    add-int/lit8 v3, v3, 0x3b

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lgnu/bytecode/CodeAttr;->put1(I)V

    goto :goto_0

    .line 1377
    :cond_0
    add-int/lit8 v3, v2, 0x36

    invoke-virtual {p0, v3, v0}, Lgnu/bytecode/CodeAttr;->emitMaybeWide(II)V

    .line 1378
    :goto_0
    return-void

    .line 1367
    .end local v1    # "type":Lgnu/bytecode/Type;
    .end local v2    # "kind":I
    :cond_1
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempting to store in unassigned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simple:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/bytecode/Variable;->isSimple()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public emitStoreDefaultValue(Lgnu/bytecode/Variable;)V
    .locals 1
    .param p1, "var"    # Lgnu/bytecode/Variable;

    .line 968
    invoke-virtual {p1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPushDefaultValue(Lgnu/bytecode/Type;)V

    .line 969
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 970
    return-void
.end method

.method public final emitSub()V
    .locals 1

    .line 1279
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public final emitSub(C)V
    .locals 1
    .param p1, "sig"    # C

    .line 1276
    const/16 v0, 0x64

    invoke-direct {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitBinop(IC)V

    return-void
.end method

.method public final emitSub(Lgnu/bytecode/PrimType;)V
    .locals 1
    .param p1, "type"    # Lgnu/bytecode/PrimType;

    .line 1277
    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->emitBinop(ILgnu/bytecode/Type;)V

    return-void
.end method

.method public emitSwap()V
    .locals 5

    .line 494
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 495
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 496
    .local v1, "type1":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 498
    .local v2, "type2":Lgnu/bytecode/Type;
    iget v3, v1, Lgnu/bytecode/Type;->size:I

    const/4 v4, 0x4

    if-gt v3, v4, :cond_1

    iget v3, v2, Lgnu/bytecode/Type;->size:I

    if-le v3, v4, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 510
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 511
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 502
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 503
    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 504
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    .line 505
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 513
    :goto_1
    return-void
.end method

.method public emitTailCall(ZLgnu/bytecode/Scope;)V
    .locals 7
    .param p1, "pop_args"    # Z
    .param p2, "scope"    # Lgnu/bytecode/Scope;

    .line 2459
    if-eqz p1, :cond_4

    .line 2461
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    .line 2462
    .local v0, "meth":Lgnu/bytecode/Method;
    iget v1, v0, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2463
    .local v1, "arg_slots":I
    :goto_0
    iget-object v3, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v3, v3

    .local v3, "i":I
    :goto_1
    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-ltz v3, :cond_2

    .line 2464
    iget-object v6, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    aget-object v6, v6, v3

    iget v6, v6, Lgnu/bytecode/Type;->size:I

    if-le v6, v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x1

    :goto_2
    add-int/2addr v1, v4

    goto :goto_1

    .line 2465
    .end local v3    # "i":I
    :cond_2
    iget-object v3, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v3, v3

    .restart local v3    # "i":I
    :goto_3
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4

    .line 2467
    iget-object v6, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    aget-object v6, v6, v3

    iget v6, v6, Lgnu/bytecode/Type;->size:I

    if-le v6, v5, :cond_3

    const/4 v6, 0x2

    goto :goto_4

    :cond_3
    const/4 v6, 0x1

    :goto_4
    sub-int/2addr v1, v6

    .line 2468
    iget-object v6, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v6, v6, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    aget-object v6, v6, v1

    invoke-virtual {p0, v6}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_3

    .line 2471
    .end local v0    # "meth":Lgnu/bytecode/Method;
    .end local v1    # "arg_slots":I
    .end local v3    # "i":I
    :cond_4
    iget-object v0, p2, Lgnu/bytecode/Scope;->start:Lgnu/bytecode/Label;

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 2472
    return-void
.end method

.method public final emitThen()V
    .locals 2

    .line 1845
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->if_stack:Lgnu/bytecode/IfState;

    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v1, v0, Lgnu/bytecode/IfState;->start_stack_size:I

    .line 1846
    return-void
.end method

.method public final emitThrow()V
    .locals 1

    .line 2042
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 2043
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 2044
    const/16 v0, 0xbf

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 2045
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 2046
    return-void
.end method

.method final emitTransfer(Lgnu/bytecode/Label;I)V
    .locals 1
    .param p1, "label"    # Lgnu/bytecode/Label;
    .param p2, "opcode"    # I

    .line 1562
    invoke-virtual {p1, p0}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 1563
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 1564
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 1565
    iget v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    .line 1566
    return-void
.end method

.method public emitTryCatchEnd()V
    .locals 3

    .line 2405
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    if-eqz v0, :cond_0

    .line 2406
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitFinallyEnd()V

    .line 2407
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->savedStack:[Lgnu/bytecode/Variable;

    .line 2408
    .local v0, "vars":[Lgnu/bytecode/Variable;
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    if-nez v1, :cond_1

    .line 2409
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    goto :goto_1

    .line 2412
    :cond_1
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    iget-object v1, v1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    sget-object v2, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/CodeAttr;->setTypes([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    .line 2413
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->end_label:Lgnu/bytecode/Label;

    invoke-virtual {v1, p0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 2414
    if-eqz v0, :cond_3

    .line 2416
    array-length v1, v0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 2418
    aget-object v2, v0, v1

    .line 2419
    .local v2, "v":Lgnu/bytecode/Variable;
    if-eqz v2, :cond_2

    .line 2420
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2422
    .end local v2    # "v":Lgnu/bytecode/Variable;
    :cond_2
    goto :goto_0

    .line 2424
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_4

    .line 2425
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    invoke-virtual {p0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2427
    :cond_4
    :goto_1
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    if-nez v1, :cond_5

    if-eqz v0, :cond_6

    .line 2428
    :cond_5
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 2429
    :cond_6
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->previous:Lgnu/bytecode/TryState;

    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    .line 2430
    return-void
.end method

.method public emitTryEnd()V
    .locals 1

    .line 2242
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitTryEnd(Z)V

    .line 2243
    return-void
.end method

.method public emitTryStart(ZLgnu/bytecode/Type;)V
    .locals 6
    .param p1, "has_finally"    # Z
    .param p2, "result_type"    # Lgnu/bytecode/Type;

    .line 2197
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2198
    const/4 p2, 0x0

    .line 2199
    :cond_0
    const/4 v0, 0x0

    .line 2200
    .local v0, "savedStack":[Lgnu/bytecode/Variable;
    if-nez p2, :cond_1

    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-lez v1, :cond_2

    .line 2201
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 2202
    :cond_2
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-lez v1, :cond_3

    .line 2204
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    new-array v0, v1, [Lgnu/bytecode/Variable;

    .line 2205
    const/4 v1, 0x0

    .line 2206
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-lez v2, :cond_3

    .line 2208
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->topType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v2

    .line 2209
    .local v2, "var":Lgnu/bytecode/Variable;
    invoke-virtual {p0, v2}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 2210
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aput-object v2, v0, v1

    .line 2211
    .end local v2    # "var":Lgnu/bytecode/Variable;
    move v1, v3

    goto :goto_0

    .line 2213
    .end local v3    # "i":I
    :cond_3
    new-instance v1, Lgnu/bytecode/TryState;

    invoke-direct {v1, p0}, Lgnu/bytecode/TryState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 2214
    .local v1, "try_state":Lgnu/bytecode/TryState;
    iput-object v0, v1, Lgnu/bytecode/TryState;->savedStack:[Lgnu/bytecode/Variable;

    .line 2216
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    const/4 v3, 0x0

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v2, v2

    .line 2217
    .local v2, "usedLocals":I
    :goto_1
    if-lez v2, :cond_6

    .line 2219
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    .line 2220
    .local v4, "last":Lgnu/bytecode/Type;
    if-eqz v4, :cond_5

    .line 2221
    goto :goto_2

    .line 2217
    .end local v4    # "last":Lgnu/bytecode/Type;
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2225
    :cond_6
    :goto_2
    if-nez v2, :cond_7

    .line 2226
    sget-object v3, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    .local v3, "startLocals":[Lgnu/bytecode/Type;
    goto :goto_3

    .line 2229
    .end local v3    # "startLocals":[Lgnu/bytecode/Type;
    :cond_7
    new-array v4, v2, [Lgnu/bytecode/Type;

    .line 2230
    .local v4, "startLocals":[Lgnu/bytecode/Type;
    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    invoke-static {v5, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 2232
    .end local v4    # "startLocals":[Lgnu/bytecode/Type;
    .restart local v3    # "startLocals":[Lgnu/bytecode/Type;
    :goto_3
    iget-object v4, v1, Lgnu/bytecode/TryState;->start_try:Lgnu/bytecode/Label;

    iput-object v3, v4, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    .line 2234
    if-eqz p2, :cond_8

    .line 2235
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v4

    iput-object v4, v1, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    .line 2236
    :cond_8
    if-eqz p1, :cond_9

    .line 2237
    new-instance v4, Lgnu/bytecode/Label;

    invoke-direct {v4}, Lgnu/bytecode/Label;-><init>()V

    iput-object v4, v1, Lgnu/bytecode/TryState;->finally_subr:Lgnu/bytecode/Label;

    .line 2238
    :cond_9
    return-void
.end method

.method public final emitUshr()V
    .locals 1

    .line 1290
    const/16 v0, 0x7c

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitShift(I)V

    return-void
.end method

.method public emitWithCleanupCatch(Lgnu/bytecode/Variable;)V
    .locals 4
    .param p1, "catchVar"    # Lgnu/bytecode/Variable;

    .line 2153
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 2155
    iget v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-lez v0, :cond_0

    .line 2157
    iget v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    new-array v0, v0, [Lgnu/bytecode/Type;

    .line 2158
    .local v0, "savedTypes":[Lgnu/bytecode/Type;
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2159
    iput v3, p0, Lgnu/bytecode/CodeAttr;->SP:I

    goto :goto_0

    .line 2162
    .end local v0    # "savedTypes":[Lgnu/bytecode/Type;
    :cond_0
    const/4 v0, 0x0

    .line 2163
    .restart local v0    # "savedTypes":[Lgnu/bytecode/Type;
    :goto_0
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v0, v1, Lgnu/bytecode/TryState;->savedTypes:[Lgnu/bytecode/Type;

    .line 2165
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object p1, v1, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    .line 2166
    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2167
    .local v1, "save_SP":I
    invoke-virtual {p0, p1}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 2168
    return-void
.end method

.method public emitWithCleanupDone()V
    .locals 5

    .line 2174
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v0, v0, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    .line 2175
    .local v0, "catchVar":Lgnu/bytecode/Variable;
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/bytecode/TryState;->saved_result:Lgnu/bytecode/Variable;

    .line 2176
    if-eqz v0, :cond_0

    .line 2177
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 2178
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 2179
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 2180
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iget-object v1, v1, Lgnu/bytecode/TryState;->savedTypes:[Lgnu/bytecode/Type;

    .line 2181
    .local v1, "savedTypes":[Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 2182
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2184
    array-length v3, v1

    iput v3, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2185
    iget v3, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 2186
    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    goto :goto_0

    .line 2188
    :cond_1
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v4, p0, Lgnu/bytecode/CodeAttr;->SP:I

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2191
    :cond_2
    iput v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2192
    :goto_0
    return-void
.end method

.method public emitWithCleanupStart()V
    .locals 3

    .line 2142
    iget v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2143
    .local v0, "savedSP":I
    const/4 v1, 0x0

    iput v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2144
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 2145
    iput v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 2146
    return-void
.end method

.method public final emitXOr()V
    .locals 1

    .line 1286
    const/16 v0, 0x82

    invoke-direct {p0, v0}, Lgnu/bytecode/CodeAttr;->emitBinop(I)V

    return-void
.end method

.method public endExitableBlock()V
    .locals 2

    .line 1608
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->currentExitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 1609
    .local v0, "bl":Lgnu/bytecode/ExitableBlock;
    invoke-virtual {v0}, Lgnu/bytecode/ExitableBlock;->finish()V

    .line 1610
    iget-object v1, v0, Lgnu/bytecode/ExitableBlock;->outer:Lgnu/bytecode/ExitableBlock;

    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->currentExitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 1611
    return-void
.end method

.method public endFragment(I)V
    .locals 4
    .param p1, "cookie"    # I

    .line 3285
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    iget v1, p0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    shl-int/lit8 v1, v1, 0x4

    or-int/lit8 v1, v1, 0xa

    aput v1, v0, p1

    .line 3286
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aget-object v0, v0, p1

    .line 3287
    .local v0, "after":Lgnu/bytecode/Label;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {p0, v3, v1, v2}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 3288
    invoke-virtual {v0, p0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 3289
    return-void
.end method

.method public enterScope(Lgnu/bytecode/Scope;)V
    .locals 1
    .param p1, "scope"    # Lgnu/bytecode/Scope;

    .line 629
    invoke-virtual {p1, p0}, Lgnu/bytecode/Scope;->setStartPC(Lgnu/bytecode/CodeAttr;)V

    .line 630
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    invoke-virtual {v0, p1}, Lgnu/bytecode/LocalVarsAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 631
    return-void
.end method

.method final fixupAdd(IILgnu/bytecode/Label;)V
    .locals 6
    .param p1, "kind"    # I
    .param p2, "offset"    # I
    .param p3, "label"    # Lgnu/bytecode/Label;

    .line 144
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    .line 146
    iput-boolean v0, p3, Lgnu/bytecode/Label;->needsStackMapEntry:Z

    .line 147
    :cond_0
    iget v0, p0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    .line 148
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 150
    const/16 v1, 0x1e

    new-array v2, v1, [I

    iput-object v2, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    .line 151
    new-array v1, v1, [Lgnu/bytecode/Label;

    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    goto :goto_0

    .line 153
    :cond_1
    iget v1, p0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    array-length v2, v2

    if-ne v1, v2, :cond_2

    .line 155
    mul-int/lit8 v1, v0, 0x2

    .line 156
    .local v1, "new_length":I
    new-array v2, v1, [Lgnu/bytecode/Label;

    .line 157
    .local v2, "new_labels":[Lgnu/bytecode/Label;
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iput-object v2, p0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    .line 159
    new-array v3, v1, [I

    .line 160
    .local v3, "new_offsets":[I
    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    invoke-static {v5, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iput-object v3, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    .line 163
    .end local v1    # "new_length":I
    .end local v2    # "new_labels":[Lgnu/bytecode/Label;
    .end local v3    # "new_offsets":[I
    :cond_2
    :goto_0
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    shl-int/lit8 v2, p2, 0x4

    or-int/2addr v2, p1

    aput v2, v1, v0

    .line 164
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aput-object p3, v1, v0

    .line 165
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    .line 166
    return-void
.end method

.method public final fixupAdd(ILgnu/bytecode/Label;)V
    .locals 1
    .param p1, "kind"    # I
    .param p2, "label"    # Lgnu/bytecode/Label;

    .line 139
    iget v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-virtual {p0, p1, v0, p2}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 140
    return-void
.end method

.method public final fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V
    .locals 2
    .param p1, "here"    # Lgnu/bytecode/Label;
    .param p2, "target"    # Lgnu/bytecode/Label;

    .line 130
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 131
    invoke-virtual {p1, p0}, Lgnu/bytecode/Label;->defineRaw(Lgnu/bytecode/CodeAttr;)V

    .line 132
    return-void
.end method

.method public getArg(I)Lgnu/bytecode/Variable;
    .locals 1
    .param p1, "index"    # I

    .line 660
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Scope;->getVariable(I)Lgnu/bytecode/Variable;

    move-result-object v0

    return-object v0
.end method

.method public final getAttributes()Lgnu/bytecode/Attribute;
    .locals 1

    .line 24
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->attributes:Lgnu/bytecode/Attribute;

    return-object v0
.end method

.method public getCode()[B
    .locals 1

    .line 220
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    return-object v0
.end method

.method public getCodeLength()I
    .locals 1

    .line 231
    iget v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    return v0
.end method

.method public final getConstants()Lgnu/bytecode/ConstantPool;
    .locals 1

    .line 197
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    iget-object v0, v0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    return-object v0
.end method

.method public getCurrentScope()Lgnu/bytecode/Scope;
    .locals 1

    .line 646
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    return-object v0
.end method

.method public final getCurrentTry()Lgnu/bytecode/TryState;
    .locals 1

    .line 2434
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    return-object v0
.end method

.method public getLabel()Lgnu/bytecode/Label;
    .locals 1

    .line 487
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0}, Lgnu/bytecode/Label;-><init>()V

    .line 488
    .local v0, "label":Lgnu/bytecode/Label;
    invoke-virtual {v0, p0}, Lgnu/bytecode/Label;->defineRaw(Lgnu/bytecode/CodeAttr;)V

    .line 489
    return-object v0
.end method

.method public final getLength()I
    .locals 2

    .line 2809
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getCodeLength()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    iget v1, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-static {p0}, Lgnu/bytecode/Attribute;->getLengthAll(Lgnu/bytecode/AttrContainer;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getMaxLocals()I
    .locals 1

    .line 211
    iget v0, p0, Lgnu/bytecode/CodeAttr;->max_locals:I

    return v0
.end method

.method public getMaxStack()I
    .locals 1

    .line 209
    iget v0, p0, Lgnu/bytecode/CodeAttr;->max_stack:I

    return v0
.end method

.method public final getMethod()Lgnu/bytecode/Method;
    .locals 1

    .line 189
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getContainer()Lgnu/bytecode/AttrContainer;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Method;

    return-object v0
.end method

.method public final getPC()I
    .locals 1

    .line 191
    iget v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    return v0
.end method

.method public final getSP()I
    .locals 1

    .line 193
    iget v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    return v0
.end method

.method invert_opcode(B)B
    .locals 3
    .param p1, "opcode"    # B

    .line 257
    and-int/lit16 v0, p1, 0xff

    .line 258
    .local v0, "iopcode":I
    const/16 v1, 0x99

    if-lt v0, v1, :cond_0

    const/16 v1, 0xa6

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v1, 0xc6

    if-lt v0, v1, :cond_2

    const/16 v1, 0xc7

    if-gt v0, v1, :cond_2

    .line 260
    :cond_1
    xor-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    return v1

    .line 261
    :cond_2
    new-instance v1, Ljava/lang/Error;

    const-string v2, "unknown opcode to invert_opcode"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final isInTry()Z
    .locals 1

    .line 2441
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 670
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    .line 671
    .local v0, "scope":Lgnu/bytecode/Scope;
    :goto_0
    if-eqz v0, :cond_1

    .line 673
    invoke-virtual {v0, p1}, Lgnu/bytecode/Scope;->lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v1

    .line 674
    .local v1, "var":Lgnu/bytecode/Variable;
    if-eqz v1, :cond_0

    .line 675
    return-object v1

    .line 671
    .end local v1    # "var":Lgnu/bytecode/Variable;
    :cond_0
    iget-object v0, v0, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    goto :goto_0

    .line 677
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method noteParamTypes()V
    .locals 9

    .line 322
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    .line 323
    .local v0, "method":Lgnu/bytecode/Method;
    const/4 v1, 0x0

    .line 324
    .local v1, "offset":I
    iget v2, v0, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    .line 326
    iget-object v2, v0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    .line 327
    .local v2, "type":Lgnu/bytecode/Type;
    const-string v3, "<init>"

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "java.lang.Object"

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    move-object v3, v2

    check-cast v3, Lgnu/bytecode/ClassType;

    invoke-static {v3}, Lgnu/bytecode/UninitializedType;->uninitializedThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/UninitializedType;

    move-result-object v2

    .line 330
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "offset":I
    .local v3, "offset":I
    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/CodeAttr;->noteVarType(ILgnu/bytecode/Type;)V

    move v1, v3

    .line 332
    .end local v2    # "type":Lgnu/bytecode/Type;
    .end local v3    # "offset":I
    .restart local v1    # "offset":I
    :cond_1
    iget-object v2, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v2, v2

    .line 333
    .local v2, "arg_count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 335
    iget-object v4, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    aget-object v4, v4, v3

    .line 336
    .local v4, "type":Lgnu/bytecode/Type;
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "offset":I
    .local v5, "offset":I
    invoke-virtual {p0, v1, v4}, Lgnu/bytecode/CodeAttr;->noteVarType(ILgnu/bytecode/Type;)V

    .line 337
    invoke-virtual {v4}, Lgnu/bytecode/Type;->getSizeInWords()I

    move-result v1

    .local v1, "size":I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_2

    .line 338
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 333
    .end local v1    # "size":I
    .end local v4    # "type":Lgnu/bytecode/Type;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v1, v5

    goto :goto_0

    .line 340
    .end local v3    # "i":I
    .end local v5    # "offset":I
    .local v1, "offset":I
    :cond_3
    iget v3, p0, Lgnu/bytecode/CodeAttr;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    .line 342
    new-instance v3, Lgnu/bytecode/StackMapTableAttr;

    invoke-direct {v3}, Lgnu/bytecode/StackMapTableAttr;-><init>()V

    iput-object v3, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    .line 344
    add-int/lit8 v3, v1, 0x14

    new-array v3, v3, [I

    .line 345
    .local v3, "encodedLocals":[I
    const/4 v4, 0x0

    .line 346
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v1, :cond_6

    .line 348
    iget-object v6, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    iget-object v7, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7, p0}, Lgnu/bytecode/StackMapTableAttr;->encodeVerificationType(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)I

    move-result v6

    .line 349
    .local v6, "encoded":I
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "count":I
    .local v7, "count":I
    aput v6, v3, v4

    .line 350
    and-int/lit16 v4, v6, 0xff

    .line 351
    .local v4, "tag":I
    const/4 v8, 0x3

    if-eq v4, v8, :cond_4

    const/4 v8, 0x4

    if-ne v4, v8, :cond_5

    .line 352
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 346
    .end local v4    # "tag":I
    .end local v6    # "encoded":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_2

    .line 354
    .end local v5    # "i":I
    .end local v7    # "count":I
    .local v4, "count":I
    :cond_6
    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    iput-object v3, v5, Lgnu/bytecode/StackMapTableAttr;->encodedLocals:[I

    .line 355
    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    iput v4, v5, Lgnu/bytecode/StackMapTableAttr;->countLocals:I

    .line 356
    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    const/16 v6, 0xa

    new-array v6, v6, [I

    iput-object v6, v5, Lgnu/bytecode/StackMapTableAttr;->encodedStack:[I

    .line 357
    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    const/4 v6, 0x0

    iput v6, v5, Lgnu/bytecode/StackMapTableAttr;->countStack:I

    .line 359
    .end local v3    # "encodedLocals":[I
    .end local v4    # "count":I
    :cond_7
    return-void
.end method

.method public noteVarType(ILgnu/bytecode/Type;)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "type"    # Lgnu/bytecode/Type;

    .line 363
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSizeInWords()I

    move-result v0

    .line 365
    .local v0, "size":I
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 366
    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x14

    new-array v1, v1, [Lgnu/bytecode/Type;

    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    goto :goto_0

    .line 367
    :cond_0
    add-int v1, p1, v0

    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v4, v4

    if-le v1, v4, :cond_1

    .line 368
    add-int v1, p1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lgnu/bytecode/Type;

    .line 369
    .local v1, "new_array":[Lgnu/bytecode/Type;
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v5, v5

    invoke-static {v4, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    .line 372
    .end local v1    # "new_array":[Lgnu/bytecode/Type;
    :cond_1
    :goto_0
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aput-object p2, v1, p1

    .line 373
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    if-nez v1, :cond_2

    .line 374
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    goto :goto_1

    .line 375
    :cond_2
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    array-length v1, v1

    if-gt v1, p1, :cond_3

    .line 377
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v1, v1

    new-array v1, v1, [Z

    .line 378
    .local v1, "tmp":[Z
    iget-object v4, p0, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    array-length v5, v5

    invoke-static {v4, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    .line 381
    .end local v1    # "tmp":[Z
    :cond_3
    :goto_1
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    const/4 v3, 0x1

    aput-boolean v3, v1, p1

    .line 382
    const/4 v1, 0x0

    if-lez p1, :cond_4

    .line 384
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    .line 385
    .local v3, "prev":Lgnu/bytecode/Type;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getSizeInWords()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 386
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    add-int/lit8 v4, p1, -0x1

    aput-object v1, v2, v4

    .line 388
    .end local v3    # "prev":Lgnu/bytecode/Type;
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_5

    .line 389
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    add-int/lit8 p1, p1, 0x1

    aput-object v1, v2, p1

    goto :goto_2

    .line 390
    :cond_5
    return-void
.end method

.method public popScope()Lgnu/bytecode/Scope;
    .locals 3

    .line 650
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v0, v0, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    .line 651
    .local v0, "scope":Lgnu/bytecode/Scope;
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v2, v0, Lgnu/bytecode/Scope;->parent:Lgnu/bytecode/Scope;

    iput-object v2, v1, Lgnu/bytecode/LocalVarsAttr;->current_scope:Lgnu/bytecode/Scope;

    .line 652
    invoke-virtual {v0, p0}, Lgnu/bytecode/Scope;->freeLocals(Lgnu/bytecode/CodeAttr;)V

    .line 653
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getLabel()Lgnu/bytecode/Label;

    move-result-object v1

    iput-object v1, v0, Lgnu/bytecode/Scope;->end:Lgnu/bytecode/Label;

    .line 654
    return-object v0
.end method

.method public final popType()Lgnu/bytecode/Type;
    .locals 3

    .line 441
    iget v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    if-lez v0, :cond_2

    .line 443
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    aget-object v0, v0, v1

    .line 444
    .local v0, "type":Lgnu/bytecode/Type;
    iget v1, v0, Lgnu/bytecode/Type;->size:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 445
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    new-instance v1, Ljava/lang/Error;

    const-string v2, "missing void type on stack"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 447
    :cond_1
    :goto_0
    return-object v0

    .line 442
    .end local v0    # "type":Lgnu/bytecode/Type;
    :cond_2
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popType called with empty stack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 6
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;

    .line 2835
    const-string v0, "Attribute \""

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2836
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2837
    const-string v0, "\", length:"

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2838
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2839
    const-string v0, ", max_stack:"

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2840
    iget v0, p0, Lgnu/bytecode/CodeAttr;->max_stack:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2841
    const-string v0, ", max_locals:"

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2842
    iget v0, p0, Lgnu/bytecode/CodeAttr;->max_locals:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2843
    const-string v0, ", code_length:"

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2844
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getCodeLength()I

    move-result v0

    .line 2845
    .local v0, "length":I
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 2846
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lgnu/bytecode/CodeAttr;->disAssemble(Lgnu/bytecode/ClassTypeWriter;II)V

    .line 2847
    iget v1, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    if-lez v1, :cond_1

    .line 2849
    const-string v1, "Exceptions (count: "

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2850
    iget v1, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2851
    const-string v1, "):"

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 2852
    iget v1, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    .line 2853
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 2855
    const-string v3, "  start: "

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2856
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    aget-short v3, v3, v2

    const v4, 0xffff

    and-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2857
    const-string v3, ", end: "

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2858
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v5, v2, 0x1

    aget-short v3, v3, v5

    and-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2859
    const-string v3, ", handler: "

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2860
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v5, v2, 0x2

    aget-short v3, v3, v5

    and-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 2861
    const-string v3, ", type: "

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 2862
    iget-object v3, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v5, v2, 0x3

    aget-short v3, v3, v5

    and-int/2addr v3, v4

    .line 2863
    .local v3, "catch_type_index":I
    if-nez v3, :cond_0

    .line 2864
    const-string v4, "0 /* finally */"

    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 2867
    :cond_0
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 2868
    const/4 v4, 0x7

    invoke-virtual {p1, v3, v4}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 2870
    :goto_1
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 2853
    .end local v3    # "catch_type_index":I
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 2873
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p1, p0}, Lgnu/bytecode/ClassTypeWriter;->printAttributes(Lgnu/bytecode/AttrContainer;)V

    .line 2874
    return-void
.end method

.method public processFixups()V
    .locals 18

    .line 2476
    move-object/from16 v0, p0

    iget v1, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    if-gtz v1, :cond_0

    .line 2477
    return-void

    .line 2484
    :cond_0
    nop

    .line 2485
    iget v1, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    .line 2486
    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 2489
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2491
    :goto_0
    iget-object v7, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    aget v7, v7, v5

    .line 2492
    and-int/lit8 v8, v7, 0xf

    .line 2493
    const/4 v9, 0x4

    shr-int/2addr v7, v9

    .line 2494
    iget-object v10, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aget-object v10, v10, v5

    .line 2495
    const v11, 0x8000

    const-string v12, "unexpected fixup"

    packed-switch v8, :pswitch_data_0

    .line 2550
    :pswitch_0
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v12}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2501
    :pswitch_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_11

    .line 2498
    :pswitch_2
    add-int/lit8 v5, v5, 0x2

    .line 2499
    goto/16 :goto_12

    .line 2533
    :pswitch_3
    iget-object v8, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    iget-object v11, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    add-int/lit8 v14, v5, 0x1

    aget-object v11, v11, v14

    aput-object v11, v8, v1

    .line 2534
    move v1, v7

    .line 2537
    :pswitch_4
    add-int/lit8 v7, v5, 0x1

    iget v8, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    if-lt v7, v8, :cond_1

    iget v7, v0, Lgnu/bytecode/CodeAttr;->PC:I

    goto :goto_1

    :cond_1
    iget-object v8, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aget-object v7, v8, v7

    iget v7, v7, Lgnu/bytecode/Label;->first_fixup:I

    invoke-direct {v0, v7}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v7

    .line 2539
    :goto_1
    iget-object v8, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    shl-int/lit8 v11, v7, 0x4

    or-int/2addr v11, v2

    aput v11, v8, v5

    .line 2540
    if-nez v10, :cond_1a

    .line 2541
    nop

    .line 2558
    iget v1, v0, Lgnu/bytecode/CodeAttr;->PC:I

    .line 2560
    nop

    .line 2562
    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_2
    iget v6, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    const/4 v7, 0x6

    const/4 v8, 0x3

    if-ge v2, v6, :cond_9

    .line 2564
    iget-object v6, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    aget v6, v6, v2

    .line 2565
    and-int/lit8 v10, v6, 0xf

    .line 2566
    iget-object v11, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aget-object v11, v11, v2

    .line 2567
    if-eqz v11, :cond_3

    iget v14, v11, Lgnu/bytecode/Label;->position:I

    if-ltz v14, :cond_2

    goto :goto_3

    .line 2568
    :cond_2
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "undefined label "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2572
    :cond_3
    :goto_3
    const/4 v14, 0x7

    if-eqz v11, :cond_4

    if-lt v10, v9, :cond_4

    if-gt v10, v14, :cond_4

    iget v15, v11, Lgnu/bytecode/Label;->first_fixup:I

    add-int/lit8 v15, v15, 0x1

    iget v13, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    if-ge v15, v13, :cond_4

    iget-object v13, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    iget v15, v11, Lgnu/bytecode/Label;->first_fixup:I

    add-int/lit8 v15, v15, 0x1

    aget v13, v13, v15

    iget-object v15, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    iget v4, v11, Lgnu/bytecode/Label;->first_fixup:I

    aget v4, v15, v4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v4, v9

    if-ne v13, v4, :cond_4

    .line 2578
    iget-object v4, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    iget v11, v11, Lgnu/bytecode/Label;->first_fixup:I

    add-int/lit8 v11, v11, 0x1

    aget-object v11, v4, v11

    .line 2579
    iget-object v4, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aput-object v11, v4, v2

    const/4 v4, 0x0

    goto :goto_3

    .line 2581
    :cond_4
    shr-int/lit8 v4, v6, 0x4

    .line 2582
    packed-switch v10, :pswitch_data_1

    .line 2630
    :pswitch_5
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v12}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2589
    :pswitch_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2585
    :pswitch_7
    add-int/lit8 v2, v2, 0x2

    .line 2586
    iget-object v6, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aget-object v6, v6, v2

    add-int/2addr v4, v5

    iput v4, v6, Lgnu/bytecode/Label;->position:I

    .line 2587
    goto :goto_7

    .line 2620
    :pswitch_8
    if-nez v11, :cond_5

    .line 2621
    goto :goto_8

    .line 2624
    :cond_5
    iget v2, v11, Lgnu/bytecode/Label;->first_fixup:I

    .line 2625
    invoke-direct {v0, v2}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v6

    .line 2626
    add-int/2addr v4, v5

    sub-int v5, v4, v6

    .line 2627
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 2594
    :pswitch_9
    add-int/lit8 v5, v5, -0x3

    .line 2595
    add-int/lit8 v1, v1, -0x3

    .line 2596
    goto :goto_7

    .line 2608
    :pswitch_a
    iget v6, v11, Lgnu/bytecode/Label;->position:I

    add-int v8, v4, v5

    sub-int/2addr v6, v8

    .line 2609
    int-to-short v8, v6

    if-ne v8, v6, :cond_6

    .line 2611
    iget-object v6, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v14

    aput v4, v6, v2

    goto :goto_7

    .line 2615
    :cond_6
    const/4 v4, 0x5

    const/4 v6, 0x2

    if-ne v10, v7, :cond_7

    const/4 v8, 0x5

    goto :goto_4

    :cond_7
    const/4 v8, 0x2

    :goto_4
    add-int/2addr v5, v8

    .line 2616
    if-ne v10, v7, :cond_8

    goto :goto_5

    :cond_8
    const/4 v4, 0x2

    :goto_5
    add-int/2addr v1, v4

    .line 2618
    goto :goto_7

    .line 2601
    :pswitch_b
    add-int/2addr v4, v5

    rsub-int/lit8 v4, v4, 0x3

    and-int/2addr v4, v8

    .line 2602
    add-int/2addr v5, v4

    .line 2603
    add-int/2addr v1, v4

    .line 2604
    goto :goto_7

    .line 2598
    :pswitch_c
    add-int/2addr v4, v5

    iput v4, v11, Lgnu/bytecode/Label;->position:I

    .line 2599
    goto :goto_7

    .line 2592
    :goto_6
    :pswitch_d
    nop

    .line 2632
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 2633
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 2635
    :cond_9
    :goto_8
    new-array v2, v1, [B

    .line 2636
    nop

    .line 2637
    nop

    .line 2638
    nop

    .line 2639
    invoke-direct {v0, v3}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v4

    .line 2640
    nop

    .line 2641
    nop

    .line 2643
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, -0x1

    .line 2645
    :goto_9
    if-ge v9, v4, :cond_a

    .line 2646
    add-int/lit8 v14, v11, 0x1

    iget-object v15, v0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v16, v9, 0x1

    aget-byte v9, v15, v9

    aput-byte v9, v2, v11

    move v11, v14

    move/from16 v9, v16

    goto :goto_9

    .line 2649
    :cond_a
    iget-object v4, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    aget v4, v4, v10

    and-int/lit8 v4, v4, 0xf

    .line 2650
    iget-object v14, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aget-object v14, v14, v10

    .line 2651
    if-eqz v6, :cond_b

    iget v15, v6, Lgnu/bytecode/Label;->position:I

    if-ge v15, v11, :cond_b

    .line 2654
    iget-object v15, v0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    invoke-virtual {v15, v6, v0}, Lgnu/bytecode/StackMapTableAttr;->emitStackMapEntry(Lgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)V

    .line 2655
    const/4 v6, 0x0

    .line 2657
    :cond_b
    if-eqz v6, :cond_d

    iget v15, v6, Lgnu/bytecode/Label;->position:I

    if-gt v15, v11, :cond_c

    goto :goto_a

    .line 2659
    :cond_c
    new-instance v1, Ljava/lang/Error;

    const-string v2, "labels out of order"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2660
    :cond_d
    :goto_a
    packed-switch v4, :pswitch_data_2

    .line 2763
    :pswitch_e
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v12}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2742
    :pswitch_f
    iget-object v4, v0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    if-nez v4, :cond_e

    .line 2743
    new-instance v4, Lgnu/bytecode/LineNumbersAttr;

    invoke-direct {v4, v0}, Lgnu/bytecode/LineNumbersAttr;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v4, v0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    .line 2744
    :cond_e
    add-int/lit8 v10, v10, 0x1

    .line 2745
    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v4

    .line 2746
    if-eq v4, v13, :cond_f

    .line 2747
    iget-object v13, v0, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    invoke-virtual {v13, v4, v11}, Lgnu/bytecode/LineNumbersAttr;->put(II)V

    .line 2748
    :cond_f
    nop

    .line 2749
    move v13, v4

    const/4 v8, -0x1

    const/4 v15, 0x3

    goto/16 :goto_f

    .line 2730
    :pswitch_10
    iget-object v4, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    add-int/lit8 v14, v10, 0x2

    aget-object v4, v4, v14

    .line 2731
    add-int/lit8 v15, v10, 0x1

    invoke-direct {v0, v15}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v5

    .line 2732
    iget-object v8, v0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    if-eqz v8, :cond_10

    .line 2733
    invoke-direct {v0, v6, v4}, Lgnu/bytecode/CodeAttr;->mergeLabels(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)Lgnu/bytecode/Label;

    move-result-object v6

    .line 2735
    :cond_10
    iget-object v4, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aget-object v4, v4, v10

    iget v4, v4, Lgnu/bytecode/Label;->position:I

    iget-object v8, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aget-object v8, v8, v15

    iget v8, v8, Lgnu/bytecode/Label;->position:I

    invoke-virtual {v0, v4, v8, v11, v5}, Lgnu/bytecode/CodeAttr;->addHandler(IIII)V

    .line 2739
    nop

    .line 2740
    move v10, v14

    const/4 v8, -0x1

    const/4 v15, 0x3

    goto/16 :goto_f

    .line 2751
    :pswitch_11
    if-nez v14, :cond_12

    .line 2752
    nop

    .line 2769
    if-ne v1, v11, :cond_11

    .line 2771
    iput v1, v0, Lgnu/bytecode/CodeAttr;->PC:I

    .line 2772
    iput-object v2, v0, Lgnu/bytecode/CodeAttr;->code:[B

    .line 2773
    iput v3, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    .line 2774
    const/4 v1, 0x0

    iput-object v1, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    .line 2775
    iput-object v1, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    .line 2776
    return-void

    .line 2770
    :cond_11
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PC confusion new_pc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new_size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2755
    :cond_12
    iget v10, v14, Lgnu/bytecode/Label;->first_fixup:I

    .line 2756
    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v9

    .line 2757
    nop

    .line 2758
    iget v4, v14, Lgnu/bytecode/Label;->position:I

    if-ne v4, v11, :cond_13

    move v4, v9

    const/4 v8, 0x3

    goto/16 :goto_9

    .line 2759
    :cond_13
    new-instance v1, Ljava/lang/Error;

    const-string v2, "bad pc"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2672
    :pswitch_12
    add-int/lit8 v9, v9, 0x3

    .line 2673
    const/4 v8, -0x1

    const/4 v15, 0x3

    goto/16 :goto_f

    .line 2675
    :pswitch_13
    iget v4, v14, Lgnu/bytecode/Label;->position:I

    sub-int/2addr v4, v11

    .line 2676
    add-int/lit8 v5, v11, 0x1

    iget-object v8, v0, Lgnu/bytecode/CodeAttr;->code:[B

    aget-byte v8, v8, v9

    aput-byte v8, v2, v11

    .line 2677
    add-int/lit8 v8, v5, 0x1

    shr-int/lit8 v11, v4, 0x8

    int-to-byte v11, v11

    aput-byte v11, v2, v5

    .line 2678
    add-int/lit8 v5, v8, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v8

    .line 2679
    add-int/lit8 v9, v9, 0x3

    .line 2680
    move v11, v5

    const/4 v8, -0x1

    const/4 v15, 0x3

    goto/16 :goto_f

    .line 2684
    :pswitch_14
    iget v5, v14, Lgnu/bytecode/Label;->position:I

    sub-int/2addr v5, v11

    .line 2685
    iget-object v8, v0, Lgnu/bytecode/CodeAttr;->code:[B

    aget-byte v8, v8, v9

    .line 2686
    if-ne v4, v7, :cond_14

    .line 2689
    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->invert_opcode(B)B

    move-result v4

    .line 2690
    add-int/lit8 v8, v11, 0x1

    aput-byte v4, v2, v11

    .line 2691
    add-int/lit8 v4, v8, 0x1

    aput-byte v3, v2, v8

    .line 2692
    add-int/lit8 v11, v4, 0x1

    const/16 v8, 0x8

    aput-byte v8, v2, v4

    .line 2693
    const/16 v4, -0x38

    goto :goto_b

    .line 2698
    :cond_14
    add-int/lit8 v8, v8, 0x21

    int-to-byte v4, v8

    .line 2700
    :goto_b
    add-int/lit8 v8, v11, 0x1

    aput-byte v4, v2, v11

    .line 2701
    add-int/lit8 v4, v8, 0x1

    shr-int/lit8 v11, v5, 0x18

    int-to-byte v11, v11

    aput-byte v11, v2, v8

    .line 2702
    add-int/lit8 v8, v4, 0x1

    shr-int/lit8 v11, v5, 0x10

    int-to-byte v11, v11

    aput-byte v11, v2, v4

    .line 2703
    add-int/lit8 v4, v8, 0x1

    shr-int/lit8 v11, v5, 0x8

    int-to-byte v11, v11

    aput-byte v11, v2, v8

    .line 2704
    add-int/lit8 v8, v4, 0x1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 2705
    add-int/lit8 v9, v9, 0x3

    .line 2706
    move v11, v8

    const/4 v8, -0x1

    const/4 v15, 0x3

    goto/16 :goto_f

    .line 2708
    :pswitch_15
    rsub-int/lit8 v4, v11, 0x3

    const/4 v5, 0x3

    and-int/2addr v4, v5

    .line 2709
    nop

    .line 2710
    add-int/lit8 v5, v11, 0x1

    iget-object v8, v0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v14, v9, 0x1

    aget-byte v8, v8, v9

    aput-byte v8, v2, v11

    .line 2711
    :goto_c
    const/4 v8, -0x1

    add-int/2addr v4, v8

    if-ltz v4, :cond_15

    .line 2712
    add-int/lit8 v9, v5, 0x1

    aput-byte v3, v2, v5

    move v5, v9

    goto :goto_c

    .line 2711
    :cond_15
    move v9, v14

    .line 2714
    :goto_d
    iget v4, v0, Lgnu/bytecode/CodeAttr;->fixup_count:I

    if-ge v10, v4, :cond_17

    add-int/lit8 v4, v10, 0x1

    invoke-direct {v0, v4}, Lgnu/bytecode/CodeAttr;->fixupKind(I)I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_18

    .line 2716
    nop

    .line 2717
    invoke-direct {v0, v4}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v10

    .line 2718
    :goto_e
    if-ge v9, v10, :cond_16

    .line 2719
    add-int/lit8 v14, v5, 0x1

    iget-object v3, v0, Lgnu/bytecode/CodeAttr;->code:[B

    add-int/lit8 v17, v9, 0x1

    aget-byte v3, v3, v9

    aput-byte v3, v2, v5

    move v5, v14

    move/from16 v9, v17

    const/4 v3, 0x0

    goto :goto_e

    .line 2720
    :cond_16
    iget-object v3, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    aget-object v3, v3, v4

    iget v3, v3, Lgnu/bytecode/Label;->position:I

    sub-int/2addr v3, v11

    .line 2722
    add-int/lit8 v10, v5, 0x1

    shr-int/lit8 v14, v3, 0x18

    int-to-byte v14, v14

    aput-byte v14, v2, v5

    .line 2723
    add-int/lit8 v5, v10, 0x1

    shr-int/lit8 v14, v3, 0x10

    int-to-byte v14, v14

    aput-byte v14, v2, v10

    .line 2724
    add-int/lit8 v10, v5, 0x1

    shr-int/lit8 v14, v3, 0x8

    int-to-byte v14, v14

    aput-byte v14, v2, v5

    .line 2725
    add-int/lit8 v5, v10, 0x1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v10

    .line 2726
    add-int/lit8 v9, v9, 0x4

    .line 2727
    move v10, v4

    const/4 v3, 0x0

    goto :goto_d

    .line 2714
    :cond_17
    const/4 v15, 0x3

    .line 2765
    :cond_18
    move v11, v5

    goto :goto_f

    .line 2665
    :pswitch_16
    const/4 v8, -0x1

    const/4 v15, 0x3

    iget-object v3, v0, Lgnu/bytecode/CodeAttr;->stackMap:Lgnu/bytecode/StackMapTableAttr;

    if-eqz v3, :cond_19

    if-eqz v14, :cond_19

    iget-object v3, v14, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    if-eqz v3, :cond_19

    iget-boolean v3, v14, Lgnu/bytecode/Label;->needsStackMapEntry:Z

    if-eqz v3, :cond_19

    .line 2667
    invoke-direct {v0, v6, v14}, Lgnu/bytecode/CodeAttr;->mergeLabels(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)Lgnu/bytecode/Label;

    move-result-object v3

    move-object v6, v3

    goto :goto_f

    .line 2663
    :pswitch_17
    const/4 v8, -0x1

    const/4 v15, 0x3

    .line 2765
    :cond_19
    :goto_f
    add-int/lit8 v10, v10, 0x1

    .line 2766
    invoke-direct {v0, v10}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v4

    .line 2767
    const/4 v3, 0x0

    const/4 v8, 0x3

    goto/16 :goto_9

    .line 2544
    :cond_1a
    iget v5, v10, Lgnu/bytecode/Label;->first_fixup:I

    .line 2545
    invoke-direct {v0, v5}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v3

    .line 2546
    add-int/2addr v7, v6

    sub-int v6, v7, v3

    .line 2547
    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2529
    :pswitch_18
    iget v3, v0, Lgnu/bytecode/CodeAttr;->PC:I

    if-lt v3, v11, :cond_1b

    .line 2530
    add-int/lit8 v6, v6, 0x5

    const/4 v4, 0x0

    goto :goto_12

    .line 2529
    :cond_1b
    const/4 v4, 0x0

    goto :goto_12

    .line 2495
    :pswitch_19
    const/4 v4, 0x0

    goto :goto_10

    .line 2514
    :pswitch_1a
    iget v3, v10, Lgnu/bytecode/Label;->first_fixup:I

    add-int/lit8 v4, v5, 0x1

    if-ne v3, v4, :cond_1c

    invoke-direct {v0, v4}, Lgnu/bytecode/CodeAttr;->fixupOffset(I)I

    move-result v3

    add-int/lit8 v4, v7, 0x3

    if-ne v3, v4, :cond_1c

    .line 2518
    iget-object v3, v0, Lgnu/bytecode/CodeAttr;->fixup_offsets:[I

    shl-int/lit8 v4, v7, 0x4

    const/16 v7, 0x8

    or-int/2addr v4, v7

    aput v4, v3, v5

    .line 2519
    iget-object v3, v0, Lgnu/bytecode/CodeAttr;->fixup_labels:[Lgnu/bytecode/Label;

    const/4 v4, 0x0

    aput-object v4, v3, v5

    .line 2520
    add-int/lit8 v6, v6, -0x3

    .line 2521
    goto :goto_12

    .line 2514
    :cond_1c
    const/4 v4, 0x0

    .line 2525
    :goto_10
    iget v3, v0, Lgnu/bytecode/CodeAttr;->PC:I

    if-lt v3, v11, :cond_1d

    .line 2526
    add-int/lit8 v6, v6, 0x2

    goto :goto_12

    .line 2510
    :pswitch_1b
    add-int/lit8 v6, v6, 0x3

    .line 2511
    goto :goto_12

    .line 2507
    :pswitch_1c
    iget v3, v10, Lgnu/bytecode/Label;->position:I

    add-int/2addr v3, v6

    iput v3, v10, Lgnu/bytecode/Label;->position:I

    .line 2508
    goto :goto_12

    .line 2505
    :goto_11
    :pswitch_1d
    nop

    .line 2552
    :cond_1d
    :goto_12
    add-int/lit8 v5, v5, 0x1

    .line 2553
    const/4 v3, 0x0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1d
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_1d
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_e
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_e
        :pswitch_10
        :pswitch_e
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public pushScope()Lgnu/bytecode/Scope;
    .locals 3

    .line 635
    new-instance v0, Lgnu/bytecode/Scope;

    invoke-direct {v0}, Lgnu/bytecode/Scope;-><init>()V

    .line 636
    .local v0, "scope":Lgnu/bytecode/Scope;
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    if-nez v1, :cond_0

    .line 637
    new-instance v1, Lgnu/bytecode/LocalVarsAttr;

    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v2

    invoke-direct {v1, v2}, Lgnu/bytecode/LocalVarsAttr;-><init>(Lgnu/bytecode/Method;)V

    iput-object v1, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    .line 638
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 639
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v1, v1, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    if-nez v1, :cond_1

    .line 640
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iput-object v0, v1, Lgnu/bytecode/LocalVarsAttr;->parameter_scope:Lgnu/bytecode/Scope;

    .line 641
    :cond_1
    return-object v0
.end method

.method public final pushType(Lgnu/bytecode/Type;)V
    .locals 4
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 423
    iget v0, p1, Lgnu/bytecode/Type;->size:I

    if-eqz v0, :cond_5

    .line 425
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 427
    :cond_0
    iget v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 428
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lgnu/bytecode/Type;

    .line 429
    .local v0, "new_array":[Lgnu/bytecode/Type;
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    iput-object v0, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    goto :goto_1

    .line 426
    .end local v0    # "new_array":[Lgnu/bytecode/Type;
    :cond_1
    :goto_0
    const/16 v0, 0x14

    new-array v0, v0, [Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    .line 432
    :cond_2
    :goto_1
    iget v0, p1, Lgnu/bytecode/Type;->size:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 433
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    sget-object v2, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    aput-object v2, v0, v1

    .line 434
    :cond_3
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->SP:I

    aput-object p1, v0, v1

    .line 435
    iget v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iget v1, p0, Lgnu/bytecode/CodeAttr;->max_stack:I

    if-le v0, v1, :cond_4

    .line 436
    iget v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    iput v0, p0, Lgnu/bytecode/CodeAttr;->max_stack:I

    .line 437
    :cond_4
    return-void

    .line 424
    :cond_5
    new-instance v0, Ljava/lang/Error;

    const-string v1, "pushing void type onto stack"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final put1(I)V
    .locals 3
    .param p1, "i"    # I

    .line 270
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    .line 272
    return-void
.end method

.method public final put2(I)V
    .locals 3
    .param p1, "i"    # I

    .line 280
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 281
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    .line 283
    return-void
.end method

.method public final put4(I)V
    .locals 3
    .param p1, "i"    # I

    .line 291
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 292
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 293
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 295
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    .line 297
    return-void
.end method

.method public final putIndex2(Lgnu/bytecode/CpoolEntry;)V
    .locals 1
    .param p1, "cnst"    # Lgnu/bytecode/CpoolEntry;

    .line 301
    iget v0, p1, Lgnu/bytecode/CpoolEntry;->index:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/CodeAttr;->put2(I)V

    .line 302
    return-void
.end method

.method public final putLineNumber(I)V
    .locals 2
    .param p1, "linenumber"    # I

    .line 313
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    invoke-virtual {v0, p1}, Lgnu/bytecode/SourceDebugExtAttr;->fixLine(I)I

    move-result p1

    .line 315
    :cond_0
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 316
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1, v1}, Lgnu/bytecode/CodeAttr;->fixupAdd(IILgnu/bytecode/Label;)V

    .line 317
    return-void
.end method

.method public final putLineNumber(Ljava/lang/String;I)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "linenumber"    # I

    .line 306
    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p0}, Lgnu/bytecode/CodeAttr;->getMethod()Lgnu/bytecode/Method;

    move-result-object v0

    iget-object v0, v0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->setSourceFile(Ljava/lang/String;)V

    .line 308
    :cond_0
    invoke-virtual {p0, p2}, Lgnu/bytecode/CodeAttr;->putLineNumber(I)V

    .line 309
    return-void
.end method

.method public final reachableHere()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final reserve(I)V
    .locals 4
    .param p1, "bytes"    # I

    .line 244
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    if-nez v0, :cond_0

    .line 245
    add-int/lit8 v0, p1, 0x64

    new-array v0, v0, [B

    iput-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    goto :goto_0

    .line 246
    :cond_0
    iget v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->code:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 248
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    new-array v0, v0, [B

    .line 249
    .local v0, "new_code":[B
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->code:[B

    iget v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iput-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    .line 252
    .end local v0    # "new_code":[B
    :cond_1
    :goto_0
    return-void
.end method

.method public final setAttributes(Lgnu/bytecode/Attribute;)V
    .locals 0
    .param p1, "attributes"    # Lgnu/bytecode/Attribute;

    .line 26
    iput-object p1, p0, Lgnu/bytecode/CodeAttr;->attributes:Lgnu/bytecode/Attribute;

    return-void
.end method

.method public setCode([B)V
    .locals 1
    .param p1, "code"    # [B

    .line 225
    iput-object p1, p0, Lgnu/bytecode/CodeAttr;->code:[B

    array-length v0, p1

    iput v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    return-void
.end method

.method public setCodeLength(I)V
    .locals 0
    .param p1, "len"    # I

    .line 229
    iput p1, p0, Lgnu/bytecode/CodeAttr;->PC:I

    return-void
.end method

.method public setMaxLocals(I)V
    .locals 0
    .param p1, "n"    # I

    .line 216
    iput p1, p0, Lgnu/bytecode/CodeAttr;->max_locals:I

    return-void
.end method

.method public setMaxStack(I)V
    .locals 0
    .param p1, "n"    # I

    .line 214
    iput p1, p0, Lgnu/bytecode/CodeAttr;->max_stack:I

    return-void
.end method

.method public final setReachable(Z)V
    .locals 1
    .param p1, "val"    # Z

    .line 205
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    return-void
.end method

.method public final setTypes(Lgnu/bytecode/Label;)V
    .locals 2
    .param p1, "label"    # Lgnu/bytecode/Label;

    .line 395
    iget-object v0, p1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    iget-object v1, p1, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/CodeAttr;->setTypes([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V

    .line 396
    return-void
.end method

.method public final setTypes([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)V
    .locals 6
    .param p1, "labelLocals"    # [Lgnu/bytecode/Type;
    .param p2, "labelStack"    # [Lgnu/bytecode/Type;

    .line 401
    array-length v0, p2

    .line 402
    .local v0, "usedStack":I
    array-length v1, p1

    .line 403
    .local v1, "usedLocals":I
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 405
    if-lez v1, :cond_0

    .line 406
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    invoke-static {p1, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    :cond_0
    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 408
    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aput-object v3, v5, v2

    .line 407
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v2, v2

    if-le v0, v2, :cond_2

    goto :goto_2

    .line 414
    :cond_2
    move v2, v0

    .restart local v2    # "i":I
    :goto_1
    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 415
    iget-object v5, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    aput-object v3, v5, v2

    .line 414
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 411
    .end local v2    # "i":I
    :cond_3
    :goto_2
    new-array v2, v0, [Lgnu/bytecode/Type;

    iput-object v2, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    .line 417
    :cond_4
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    invoke-static {p2, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    iput v0, p0, Lgnu/bytecode/CodeAttr;->SP:I

    .line 419
    return-void
.end method

.method public final setUnreachable()V
    .locals 1

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/bytecode/CodeAttr;->unreachable_here:Z

    return-void
.end method

.method public startExitableBlock(Lgnu/bytecode/Type;Z)Lgnu/bytecode/ExitableBlock;
    .locals 2
    .param p1, "resultType"    # Lgnu/bytecode/Type;
    .param p2, "runFinallyBlocks"    # Z

    .line 1598
    new-instance v0, Lgnu/bytecode/ExitableBlock;

    invoke-direct {v0, p1, p0, p2}, Lgnu/bytecode/ExitableBlock;-><init>(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;Z)V

    .line 1599
    .local v0, "bl":Lgnu/bytecode/ExitableBlock;
    iget-object v1, p0, Lgnu/bytecode/CodeAttr;->currentExitableBlock:Lgnu/bytecode/ExitableBlock;

    iput-object v1, v0, Lgnu/bytecode/ExitableBlock;->outer:Lgnu/bytecode/ExitableBlock;

    .line 1600
    iput-object v0, p0, Lgnu/bytecode/CodeAttr;->currentExitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 1601
    return-object v0
.end method

.method public startSwitch()Lgnu/bytecode/SwitchState;
    .locals 1

    .line 2449
    new-instance v0, Lgnu/bytecode/SwitchState;

    invoke-direct {v0, p0}, Lgnu/bytecode/SwitchState;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 2450
    .local v0, "sw":Lgnu/bytecode/SwitchState;
    invoke-virtual {v0, p0}, Lgnu/bytecode/SwitchState;->switchValuePushed(Lgnu/bytecode/CodeAttr;)V

    .line 2451
    return-object v0
.end method

.method public final topType()Lgnu/bytecode/Type;
    .locals 2

    .line 452
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v1, p0, Lgnu/bytecode/CodeAttr;->SP:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method useJsr()Z
    .locals 1

    .line 56
    iget v0, p0, Lgnu/bytecode/CodeAttr;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "dstr"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2815
    iget v0, p0, Lgnu/bytecode/CodeAttr;->max_stack:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2816
    iget v0, p0, Lgnu/bytecode/CodeAttr;->max_locals:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2817
    iget v0, p0, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2818
    iget-object v0, p0, Lgnu/bytecode/CodeAttr;->code:[B

    const/4 v1, 0x0

    iget v2, p0, Lgnu/bytecode/CodeAttr;->PC:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2820
    iget v0, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2821
    iget v0, p0, Lgnu/bytecode/CodeAttr;->exception_table_length:I

    .line 2822
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 2824
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    aget-short v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2825
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v3, v1, 0x1

    aget-short v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2826
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v3, v1, 0x2

    aget-short v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2827
    iget-object v2, p0, Lgnu/bytecode/CodeAttr;->exception_table:[S

    add-int/lit8 v3, v1, 0x3

    aget-short v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2822
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 2830
    .end local v1    # "i":I
    :cond_0
    invoke-static {p0, p1}, Lgnu/bytecode/Attribute;->writeAll(Lgnu/bytecode/AttrContainer;Ljava/io/DataOutputStream;)V

    .line 2831
    return-void
.end method
