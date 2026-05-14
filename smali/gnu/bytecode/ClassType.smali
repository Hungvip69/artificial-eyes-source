.class public Lgnu/bytecode/ClassType;
.super Lgnu/bytecode/ObjectType;
.source "ClassType.java"

# interfaces
.implements Lgnu/bytecode/AttrContainer;
.implements Ljava/io/Externalizable;
.implements Lgnu/bytecode/Member;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/bytecode/ClassType$AbstractMethodFilter;
    }
.end annotation


# static fields
.field public static final JDK_1_1_VERSION:I = 0x2d0003

.field public static final JDK_1_2_VERSION:I = 0x2e0000

.field public static final JDK_1_3_VERSION:I = 0x2f0000

.field public static final JDK_1_4_VERSION:I = 0x300000

.field public static final JDK_1_5_VERSION:I = 0x310000

.field public static final JDK_1_6_VERSION:I = 0x320000

.field public static final JDK_1_7_VERSION:I = 0x330000

.field public static final noClasses:[Lgnu/bytecode/ClassType;


# instance fields
.field Code_name_index:I

.field ConstantValue_name_index:I

.field LineNumberTable_name_index:I

.field LocalVariableTable_name_index:I

.field access_flags:I

.field attributes:Lgnu/bytecode/Attribute;

.field classfileFormatVersion:I

.field constants:Lgnu/bytecode/ConstantPool;

.field public constructor:Lgnu/bytecode/Method;

.field emitDebugInfo:Z

.field enclosingMember:Lgnu/bytecode/Member;

.field fields:Lgnu/bytecode/Field;

.field fields_count:I

.field firstInnerClass:Lgnu/bytecode/ClassType;

.field interfaceIndexes:[I

.field interfaces:[Lgnu/bytecode/ClassType;

.field last_field:Lgnu/bytecode/Field;

.field last_method:Lgnu/bytecode/Method;

.field methods:Lgnu/bytecode/Method;

.field methods_count:I

.field nextInnerClass:Lgnu/bytecode/ClassType;

.field sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

.field superClass:Lgnu/bytecode/ClassType;

.field superClassIndex:I

.field thisClassIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    const/4 v0, 0x0

    new-array v0, v0, [Lgnu/bytecode/ClassType;

    sput-object v0, Lgnu/bytecode/ClassType;->noClasses:[Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 479
    invoke-direct {p0}, Lgnu/bytecode/ObjectType;-><init>()V

    .line 20
    const v0, 0x2d0003

    iput v0, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/ClassType;->superClassIndex:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/bytecode/ClassType;->emitDebugInfo:Z

    .line 479
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "class_name"    # Ljava/lang/String;

    .line 483
    invoke-direct {p0}, Lgnu/bytecode/ObjectType;-><init>()V

    .line 20
    const v0, 0x2d0003

    iput v0, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lgnu/bytecode/ClassType;->superClassIndex:I

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/bytecode/ClassType;->emitDebugInfo:Z

    .line 484
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public static make(Ljava/lang/String;)Lgnu/bytecode/ClassType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    invoke-static {p0}, Lgnu/bytecode/Type;->getType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public static make(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/bytecode/ClassType;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "superClass"    # Lgnu/bytecode/ClassType;

    .line 60
    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 61
    .local v0, "type":Lgnu/bytecode/ClassType;
    iget-object v1, v0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 63
    :cond_0
    return-object v0
.end method

.method public static to_utf8(Ljava/lang/String;)[B
    .locals 10
    .param p0, "str"    # Ljava/lang/String;

    .line 1195
    if-nez p0, :cond_0

    .line 1196
    const/4 v0, 0x0

    return-object v0

    .line 1197
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1198
    .local v0, "str_len":I
    const/4 v1, 0x0

    .line 1199
    .local v1, "utf_len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x7f

    const/16 v4, 0x7ff

    if-ge v2, v0, :cond_3

    .line 1200
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1201
    .local v5, "c":I
    if-lez v5, :cond_1

    if-gt v5, v3, :cond_1

    .line 1202
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1203
    :cond_1
    if-gt v5, v4, :cond_2

    .line 1204
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1206
    :cond_2
    add-int/lit8 v1, v1, 0x3

    .line 1199
    .end local v5    # "c":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1208
    .end local v2    # "i":I
    :cond_3
    new-array v2, v1, [B

    .line 1209
    .local v2, "buffer":[B
    const/4 v5, 0x0

    .line 1210
    .local v5, "j":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v0, :cond_6

    .line 1211
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1212
    .local v7, "c":I
    if-lez v7, :cond_4

    if-gt v7, v3, :cond_4

    .line 1213
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "j":I
    .local v8, "j":I
    int-to-byte v9, v7

    aput-byte v9, v2, v5

    move v5, v8

    goto :goto_3

    .line 1214
    .end local v8    # "j":I
    .restart local v5    # "j":I
    :cond_4
    if-gt v7, v4, :cond_5

    .line 1215
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "j":I
    .restart local v8    # "j":I
    shr-int/lit8 v9, v7, 0x6

    and-int/lit8 v9, v9, 0x1f

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v2, v5

    .line 1216
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "j":I
    .restart local v5    # "j":I
    shr-int/lit8 v9, v7, 0x0

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    goto :goto_3

    .line 1218
    :cond_5
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "j":I
    .restart local v8    # "j":I
    shr-int/lit8 v9, v7, 0xc

    and-int/lit8 v9, v9, 0xf

    or-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v2, v5

    .line 1219
    add-int/lit8 v5, v8, 0x1

    .end local v8    # "j":I
    .restart local v5    # "j":I
    shr-int/lit8 v9, v7, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    .line 1220
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "j":I
    .restart local v8    # "j":I
    shr-int/lit8 v9, v7, 0x0

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v2, v5

    move v5, v8

    .line 1210
    .end local v7    # "c":I
    .end local v8    # "j":I
    .restart local v5    # "j":I
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1223
    .end local v6    # "i":I
    :cond_6
    return-object v2
.end method


# virtual methods
.method declared-synchronized addEnclosingMember()V
    .locals 5

    monitor-enter p0

    .line 207
    :try_start_0
    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x18

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 208
    monitor-exit p0

    return-void

    .line 209
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    .line 210
    .local v0, "clas":Ljava/lang/Class;
    iget v1, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 214
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    .local v1, "dclas":Ljava/lang/Class;
    if-nez v1, :cond_1

    .line 216
    monitor-exit p0

    return-void

    .line 217
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-nez v2, :cond_3

    .line 219
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 220
    .local v2, "rmeth":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2

    .line 222
    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;

    move-result-object v3

    iput-object v3, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 225
    .end local p0    # "this":Lgnu/bytecode/ClassType;
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 226
    .local v3, "rcons":Ljava/lang/reflect/Constructor;
    if-eqz v3, :cond_3

    .line 228
    invoke-virtual {p0, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/reflect/Constructor;)Lgnu/bytecode/Method;

    move-result-object v4

    iput-object v4, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 232
    .end local v2    # "rmeth":Ljava/lang/reflect/Method;
    .end local v3    # "rcons":Ljava/lang/reflect/Constructor;
    :cond_3
    :try_start_4
    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    iput-object v2, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 206
    .end local v0    # "clas":Ljava/lang/Class;
    .end local v1    # "dclas":Ljava/lang/Class;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addField()Lgnu/bytecode/Field;
    .locals 1

    .line 570
    new-instance v0, Lgnu/bytecode/Field;

    invoke-direct {v0, p0}, Lgnu/bytecode/Field;-><init>(Lgnu/bytecode/ClassType;)V

    return-object v0
.end method

.method public addField(Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 577
    new-instance v0, Lgnu/bytecode/Field;

    invoke-direct {v0, p0}, Lgnu/bytecode/Field;-><init>(Lgnu/bytecode/ClassType;)V

    .line 578
    .local v0, "field":Lgnu/bytecode/Field;
    invoke-virtual {v0, p1}, Lgnu/bytecode/Field;->setName(Ljava/lang/String;)V

    .line 579
    return-object v0
.end method

.method public final addField(Ljava/lang/String;Lgnu/bytecode/Type;)Lgnu/bytecode/Field;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lgnu/bytecode/Type;

    .line 583
    new-instance v0, Lgnu/bytecode/Field;

    invoke-direct {v0, p0}, Lgnu/bytecode/Field;-><init>(Lgnu/bytecode/ClassType;)V

    .line 584
    .local v0, "field":Lgnu/bytecode/Field;
    invoke-virtual {v0, p1}, Lgnu/bytecode/Field;->setName(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0, p2}, Lgnu/bytecode/Field;->setType(Lgnu/bytecode/Type;)V

    .line 586
    return-object v0
.end method

.method public final addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lgnu/bytecode/Type;
    .param p3, "flags"    # I

    .line 591
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;)Lgnu/bytecode/Field;

    move-result-object v0

    .line 592
    .local v0, "field":Lgnu/bytecode/Field;
    iput p3, v0, Lgnu/bytecode/Field;->flags:I

    .line 593
    return-object v0
.end method

.method public declared-synchronized addFields()V
    .locals 8

    monitor-enter p0

    .line 602
    :try_start_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    .local v0, "clas":Ljava/lang/Class;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    .local v1, "fields":[Ljava/lang/reflect/Field;
    goto :goto_0

    .line 608
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    .end local p0    # "this":Lgnu/bytecode/ClassType;
    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 610
    .local v1, "ex":Ljava/lang/SecurityException;
    .local v2, "fields":[Ljava/lang/reflect/Field;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v2, v3

    move-object v1, v2

    .line 612
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .local v1, "fields":[Ljava/lang/reflect/Field;
    :goto_0
    array-length v2, v1

    .line 613
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 615
    aget-object v4, v1, v3

    .line 616
    .local v4, "field":Ljava/lang/reflect/Field;
    const-string v5, "this$0"

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 617
    iget v5, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 618
    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    .line 613
    nop

    .end local v4    # "field":Ljava/lang/reflect/Field;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 621
    .end local v3    # "i":I
    :cond_1
    iget v3, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lgnu/bytecode/ClassType;->flags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 622
    monitor-exit p0

    return-void

    .line 601
    .end local v0    # "clas":Ljava/lang/Class;
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    .end local v2    # "count":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public addInterface(Lgnu/bytecode/ClassType;)V
    .locals 4
    .param p1, "newInterface"    # Lgnu/bytecode/ClassType;

    .line 452
    iget-object v0, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    array-length v0, v0

    .line 460
    .local v0, "oldCount":I
    move v1, v0

    .local v1, "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 461
    iget-object v2, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    .line 462
    return-void

    .line 463
    .end local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lgnu/bytecode/ClassType;

    .line 464
    .local v1, "newInterfaces":[Lgnu/bytecode/ClassType;
    iget-object v2, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    iput-object v1, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    goto :goto_1

    .line 454
    .end local v0    # "oldCount":I
    .end local v1    # "newInterfaces":[Lgnu/bytecode/ClassType;
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 455
    .restart local v0    # "oldCount":I
    const/4 v1, 0x1

    new-array v1, v1, [Lgnu/bytecode/ClassType;

    iput-object v1, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    .line 467
    :goto_1
    iget-object v1, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    aput-object p1, v1, v0

    .line 468
    return-void
.end method

.method public addMemberClass(Lgnu/bytecode/ClassType;)V
    .locals 2
    .param p1, "member"    # Lgnu/bytecode/ClassType;

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "prev":Lgnu/bytecode/ClassType;
    iget-object v1, p0, Lgnu/bytecode/ClassType;->firstInnerClass:Lgnu/bytecode/ClassType;

    .line 156
    .local v1, "entry":Lgnu/bytecode/ClassType;
    :goto_0
    if-eqz v1, :cond_1

    .line 158
    if-ne v1, p1, :cond_0

    .line 159
    return-void

    .line 160
    :cond_0
    move-object v0, v1

    .line 161
    iget-object v1, v1, Lgnu/bytecode/ClassType;->nextInnerClass:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 163
    :cond_1
    if-nez v0, :cond_2

    .line 164
    iput-object p1, p0, Lgnu/bytecode/ClassType;->firstInnerClass:Lgnu/bytecode/ClassType;

    goto :goto_1

    .line 166
    :cond_2
    iput-object p1, v0, Lgnu/bytecode/ClassType;->nextInnerClass:Lgnu/bytecode/ClassType;

    .line 167
    :goto_1
    return-void
.end method

.method public declared-synchronized addMemberClasses()V
    .locals 5

    monitor-enter p0

    .line 242
    :try_start_0
    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x14

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 243
    monitor-exit p0

    return-void

    .line 244
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    .line 245
    .local v0, "clas":Ljava/lang/Class;
    iget v1, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 246
    invoke-virtual {v0}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v1

    .line 247
    .local v1, "memberClasses":[Ljava/lang/Class;
    array-length v2, v1

    .line 248
    .local v2, "numMembers":I
    if-lez v2, :cond_1

    .line 250
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 252
    aget-object v4, v1, v3

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/ClassType;

    .line 253
    .local v4, "member":Lgnu/bytecode/ClassType;
    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassType;->addMemberClass(Lgnu/bytecode/ClassType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    .end local v4    # "member":Lgnu/bytecode/ClassType;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 256
    .end local v3    # "i":I
    .end local p0    # "this":Lgnu/bytecode/ClassType;
    :cond_1
    monitor-exit p0

    return-void

    .line 241
    .end local v0    # "clas":Ljava/lang/Class;
    .end local v1    # "memberClasses":[Ljava/lang/Class;
    .end local v2    # "numMembers":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method addMethod()Lgnu/bytecode/Method;
    .locals 2

    .line 640
    new-instance v0, Lgnu/bytecode/Method;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgnu/bytecode/Method;-><init>(Lgnu/bytecode/ClassType;I)V

    return-object v0
.end method

.method public addMethod(Ljava/lang/String;)Lgnu/bytecode/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 644
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 648
    new-instance v0, Lgnu/bytecode/Method;

    invoke-direct {v0, p0, p2}, Lgnu/bytecode/Method;-><init>(Lgnu/bytecode/ClassType;I)V

    .line 649
    .local v0, "method":Lgnu/bytecode/Method;
    invoke-virtual {v0, p1}, Lgnu/bytecode/Method;->setName(Ljava/lang/String;)V

    .line 650
    return-object v0
.end method

.method public declared-synchronized addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "arg_types"    # [Lgnu/bytecode/Type;
    .param p4, "return_type"    # Lgnu/bytecode/Type;

    monitor-enter p0

    .line 667
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    .line 668
    .local v0, "method":Lgnu/bytecode/Method;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lgnu/bytecode/Method;->access_flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v1, p2

    if-ne v1, p2, :cond_0

    .line 671
    monitor-exit p0

    return-object v0

    .line 672
    .end local p0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    move-object v0, v1

    .line 673
    iput-object p3, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 674
    iput-object p4, v0, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    monitor-exit p0

    return-object v0

    .line 666
    .end local v0    # "method":Lgnu/bytecode/Method;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "flags":I
    .end local p3    # "arg_types":[Lgnu/bytecode/Type;
    .end local p4    # "return_type":Lgnu/bytecode/Type;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addMethod(Ljava/lang/String;Ljava/lang/String;I)Lgnu/bytecode/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .line 703
    invoke-virtual {p0, p1, p3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 704
    .local v0, "meth":Lgnu/bytecode/Method;
    invoke-virtual {v0, p2}, Lgnu/bytecode/Method;->setSignature(Ljava/lang/String;)V

    .line 705
    return-object v0
.end method

.method public addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arg_types"    # [Lgnu/bytecode/Type;
    .param p3, "return_type"    # Lgnu/bytecode/Type;
    .param p4, "flags"    # I

    .line 657
    invoke-virtual {p0, p1, p4, p2, p3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public addMethod(Ljava/lang/reflect/Constructor;)Lgnu/bytecode/Method;
    .locals 6
    .param p1, "method"    # Ljava/lang/reflect/Constructor;

    .line 692
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 693
    .local v0, "paramTypes":[Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    .line 694
    .local v1, "modifiers":I
    array-length v2, v0

    .line 695
    .local v2, "j":I
    new-array v3, v2, [Lgnu/bytecode/Type;

    .line 696
    .local v3, "args":[Lgnu/bytecode/Type;
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 697
    aget-object v4, v0, v2

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_0

    .line 698
    :cond_0
    const-string v4, "<init>"

    sget-object v5, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v4, v1, v3, v5}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v4

    return-object v4
.end method

.method public addMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;
    .locals 6
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 680
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 681
    .local v0, "modifiers":I
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 682
    .local v1, "paramTypes":[Ljava/lang/Class;
    array-length v2, v1

    .line 683
    .local v2, "j":I
    new-array v3, v2, [Lgnu/bytecode/Type;

    .line 684
    .local v3, "args":[Lgnu/bytecode/Type;
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 685
    aget-object v4, v1, v2

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_0

    .line 686
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    .line 687
    .local v4, "rtype":Lgnu/bytecode/Type;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v0, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v5

    return-object v5
.end method

.method public declared-synchronized addMethods(Ljava/lang/Class;)V
    .locals 6
    .param p1, "clas"    # Ljava/lang/Class;

    monitor-enter p0

    .line 974
    :try_start_0
    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/bytecode/ClassType;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 984
    .local v0, "methods":[Ljava/lang/reflect/Method;
    goto :goto_0

    .line 981
    .end local v0    # "methods":[Ljava/lang/reflect/Method;
    .end local p0    # "this":Lgnu/bytecode/ClassType;
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 983
    .local v0, "ex":Ljava/lang/SecurityException;
    .local v1, "methods":[Ljava/lang/reflect/Method;
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v1, v2

    move-object v0, v1

    .line 985
    .end local v1    # "methods":[Ljava/lang/reflect/Method;
    .local v0, "methods":[Ljava/lang/reflect/Method;
    :goto_0
    array-length v1, v0

    .line 986
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 988
    aget-object v3, v0, v2

    .line 989
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 990
    goto :goto_2

    .line 991
    :cond_0
    invoke-virtual {p0, v3}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 986
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 997
    .end local v2    # "i":I
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1002
    .local v2, "cmethods":[Ljava/lang/reflect/Constructor;
    goto :goto_3

    .line 999
    .end local v2    # "cmethods":[Ljava/lang/reflect/Constructor;
    :catch_1
    move-exception v3

    .line 1001
    .restart local v2    # "cmethods":[Ljava/lang/reflect/Constructor;
    .local v3, "ex":Ljava/lang/SecurityException;
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    move-object v2, v4

    .line 1003
    .end local v3    # "ex":Ljava/lang/SecurityException;
    :goto_3
    array-length v3, v2

    move v1, v3

    .line 1004
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v1, :cond_3

    .line 1006
    aget-object v4, v2, v3

    .line 1007
    .local v4, "method":Ljava/lang/reflect/Constructor;
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1008
    goto :goto_5

    .line 1009
    :cond_2
    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/reflect/Constructor;)Lgnu/bytecode/Method;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1004
    .end local v4    # "method":Ljava/lang/reflect/Constructor;
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1011
    .end local v3    # "i":I
    :cond_3
    monitor-exit p0

    return-void

    .line 973
    .end local v0    # "methods":[Ljava/lang/reflect/Method;
    .end local v1    # "count":I
    .end local v2    # "cmethods":[Ljava/lang/reflect/Constructor;
    .end local p1    # "clas":Ljava/lang/Class;
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public final addModifiers(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 115
    iget v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    return-void
.end method

.method public checkSingleAbstractMethod()Lgnu/bytecode/Method;
    .locals 9

    .line 1363
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getAbstractMethods()[Lgnu/bytecode/Method;

    move-result-object v0

    .line 1364
    .local v0, "methods":[Lgnu/bytecode/Method;
    array-length v1, v0

    .line 1365
    .local v1, "nmethods":I
    const/4 v2, 0x0

    .line 1366
    .local v2, "result":Lgnu/bytecode/Method;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 1368
    aget-object v4, v0, v3

    .line 1369
    .local v4, "meth":Lgnu/bytecode/Method;
    invoke-virtual {v4}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1370
    .local v5, "mname":Ljava/lang/String;
    invoke-virtual {v4}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v6

    .line 1372
    .local v6, "ptypes":[Lgnu/bytecode/Type;
    invoke-virtual {p0, v5, v6}, Lgnu/bytecode/ClassType;->getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v7

    .line 1373
    .local v7, "mimpl":Lgnu/bytecode/Method;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lgnu/bytecode/Method;->isAbstract()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1374
    goto :goto_1

    .line 1375
    :cond_0
    if-eqz v2, :cond_1

    .line 1376
    const/4 v8, 0x0

    return-object v8

    .line 1377
    :cond_1
    move-object v2, v4

    .line 1366
    .end local v4    # "meth":Lgnu/bytecode/Method;
    .end local v5    # "mname":Ljava/lang/String;
    .end local v6    # "ptypes":[Lgnu/bytecode/Type;
    .end local v7    # "mimpl":Lgnu/bytecode/Method;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1379
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method public cleanupAfterCompilation()V
    .locals 1

    .line 1346
    iget-object v0, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    .local v0, "meth":Lgnu/bytecode/Method;
    :goto_0
    if-eqz v0, :cond_0

    .line 1347
    invoke-virtual {v0}, Lgnu/bytecode/Method;->cleanupAfterCompilation()V

    .line 1346
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v0

    goto :goto_0

    .line 1349
    .end local v0    # "meth":Lgnu/bytecode/Method;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 1350
    iput-object v0, p0, Lgnu/bytecode/ClassType;->attributes:Lgnu/bytecode/Attribute;

    .line 1351
    iput-object v0, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    .line 1352
    return-void
.end method

.method public compare(Lgnu/bytecode/Type;)I
    .locals 6
    .param p1, "other"    # Lgnu/bytecode/Type;

    .line 1282
    sget-object v0, Lgnu/bytecode/ClassType;->nullType:Lgnu/bytecode/ObjectType;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 1283
    return v1

    .line 1284
    :cond_0
    instance-of v0, p1, Lgnu/bytecode/ClassType;

    if-nez v0, :cond_1

    .line 1285
    invoke-virtual {p1, p0}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v0

    invoke-static {v0}, Lgnu/bytecode/ClassType;->swappedCompareResult(I)I

    move-result v0

    return v0

    .line 1286
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1287
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1288
    const/4 v1, 0x0

    return v1

    .line 1289
    :cond_2
    move-object v2, p1

    check-cast v2, Lgnu/bytecode/ClassType;

    .line 1290
    .local v2, "cother":Lgnu/bytecode/ClassType;
    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_3

    .line 1291
    return v4

    .line 1292
    :cond_3
    invoke-virtual {v2, p0}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1293
    return v1

    .line 1294
    :cond_4
    sget-object v3, Lgnu/bytecode/ClassType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p0, v3, :cond_6

    .line 1295
    sget-object v3, Lgnu/bytecode/Type;->javalangObjectType:Lgnu/bytecode/ClassType;

    if-ne v2, v3, :cond_5

    const/4 v1, -0x1

    :cond_5
    return v1

    .line 1296
    :cond_6
    sget-object v3, Lgnu/bytecode/ClassType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne v2, v3, :cond_8

    .line 1297
    sget-object v3, Lgnu/bytecode/Type;->javalangObjectType:Lgnu/bytecode/ClassType;

    if-ne p0, v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 1298
    :cond_8
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v3

    const/4 v5, -0x2

    if-eqz v3, :cond_a

    .line 1299
    sget-object v1, Lgnu/bytecode/Type;->javalangObjectType:Lgnu/bytecode/ClassType;

    if-ne v2, v1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v4, -0x2

    :goto_1
    return v4

    .line 1300
    :cond_a
    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1301
    sget-object v3, Lgnu/bytecode/Type;->javalangObjectType:Lgnu/bytecode/ClassType;

    if-ne p0, v3, :cond_b

    goto :goto_2

    :cond_b
    const/4 v1, -0x2

    :goto_2
    return v1

    .line 1302
    :cond_c
    const/4 v1, -0x3

    return v1
.end method

.method public final countMethods(Lgnu/bytecode/Filter;I)I
    .locals 2
    .param p1, "filter"    # Lgnu/bytecode/Filter;
    .param p2, "searchSupers"    # I

    .line 738
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 739
    .local v0, "vec":Ljava/util/Vector;
    invoke-virtual {p0, p1, p2, v0}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    .line 740
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    return v1
.end method

.method public doFixups()V
    .locals 7

    .line 1041
    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    if-nez v0, :cond_0

    .line 1042
    new-instance v0, Lgnu/bytecode/ConstantPool;

    invoke-direct {v0}, Lgnu/bytecode/ConstantPool;-><init>()V

    iput-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 1043
    :cond_0
    iget v0, p0, Lgnu/bytecode/ClassType;->thisClassIndex:I

    if-nez v0, :cond_1

    .line 1044
    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    invoke-virtual {v0, p0}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    iget v0, v0, Lgnu/bytecode/CpoolClass;->index:I

    iput v0, p0, Lgnu/bytecode/ClassType;->thisClassIndex:I

    .line 1045
    :cond_1
    iget-object v0, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    if-ne v0, p0, :cond_2

    .line 1046
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 1047
    :cond_2
    iget v0, p0, Lgnu/bytecode/ClassType;->superClassIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_4

    .line 1048
    iget-object v0, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v2, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v2}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    iget v0, v0, Lgnu/bytecode/CpoolClass;->index:I

    :goto_0
    iput v0, p0, Lgnu/bytecode/ClassType;->superClassIndex:I

    .line 1050
    :cond_4
    iget-object v0, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    if-nez v0, :cond_5

    .line 1052
    iget-object v0, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    array-length v0, v0

    .line 1053
    .local v0, "n":I
    new-array v2, v0, [I

    iput-object v2, p0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    .line 1054
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 1055
    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    iget-object v4, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v5, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v4

    iget v4, v4, Lgnu/bytecode/CpoolClass;->index:I

    aput v4, v3, v2

    .line 1054
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1057
    .end local v0    # "n":I
    .end local v2    # "i":I
    :cond_5
    iget-object v0, p0, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;

    .local v0, "field":Lgnu/bytecode/Field;
    :goto_2
    if-eqz v0, :cond_6

    .line 1058
    invoke-virtual {v0, p0}, Lgnu/bytecode/Field;->assign_constants(Lgnu/bytecode/ClassType;)V

    .line 1057
    iget-object v0, v0, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    goto :goto_2

    .line 1060
    .end local v0    # "field":Lgnu/bytecode/Field;
    :cond_6
    iget-object v0, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    .local v0, "method":Lgnu/bytecode/Method;
    :goto_3
    if-eqz v0, :cond_7

    .line 1061
    invoke-virtual {v0}, Lgnu/bytecode/Method;->assignConstants()V

    .line 1060
    iget-object v0, v0, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    goto :goto_3

    .line 1062
    .end local v0    # "method":Lgnu/bytecode/Method;
    :cond_7
    iget-object v0, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    instance-of v0, v0, Lgnu/bytecode/Method;

    if-eqz v0, :cond_9

    .line 1064
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/EnclosingMethodAttr;->getFirstEnclosingMethod(Lgnu/bytecode/Attribute;)Lgnu/bytecode/EnclosingMethodAttr;

    move-result-object v0

    .line 1066
    .local v0, "attr":Lgnu/bytecode/EnclosingMethodAttr;
    if-nez v0, :cond_8

    .line 1067
    new-instance v2, Lgnu/bytecode/EnclosingMethodAttr;

    invoke-direct {v2, p0}, Lgnu/bytecode/EnclosingMethodAttr;-><init>(Lgnu/bytecode/ClassType;)V

    move-object v0, v2

    .line 1068
    :cond_8
    iget-object v2, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    check-cast v2, Lgnu/bytecode/Method;

    iput-object v2, v0, Lgnu/bytecode/EnclosingMethodAttr;->method:Lgnu/bytecode/Method;

    .line 1069
    .end local v0    # "attr":Lgnu/bytecode/EnclosingMethodAttr;
    goto :goto_4

    .line 1070
    :cond_9
    iget-object v0, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_a

    .line 1071
    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v2, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    check-cast v2, Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v2}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    .line 1072
    :cond_a
    :goto_4
    iget-object v0, p0, Lgnu/bytecode/ClassType;->firstInnerClass:Lgnu/bytecode/ClassType;

    .local v0, "member":Lgnu/bytecode/ClassType;
    :goto_5
    if-eqz v0, :cond_b

    .line 1075
    iget-object v2, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    invoke-virtual {v2, v0}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    .line 1073
    iget-object v0, v0, Lgnu/bytecode/ClassType;->nextInnerClass:Lgnu/bytecode/ClassType;

    goto :goto_5

    .line 1078
    .end local v0    # "member":Lgnu/bytecode/ClassType;
    :cond_b
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/InnerClassesAttr;->getFirstInnerClasses(Lgnu/bytecode/Attribute;)Lgnu/bytecode/InnerClassesAttr;

    move-result-object v0

    .line 1080
    .local v0, "innerAttr":Lgnu/bytecode/InnerClassesAttr;
    if-eqz v0, :cond_c

    .line 1083
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgnu/bytecode/InnerClassesAttr;->setSkipped(Z)V

    .line 1086
    :cond_c
    invoke-static {p0, p0}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/AttrContainer;Lgnu/bytecode/ClassType;)V

    .line 1092
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_6
    iget-object v3, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget v3, v3, Lgnu/bytecode/ConstantPool;->count:I

    if-gt v2, v3, :cond_11

    .line 1094
    iget-object v3, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v3, v3, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v3, v3, v2

    .line 1095
    .local v3, "entry":Lgnu/bytecode/CpoolEntry;
    instance-of v4, v3, Lgnu/bytecode/CpoolClass;

    if-nez v4, :cond_d

    .line 1096
    goto :goto_7

    .line 1097
    :cond_d
    move-object v4, v3

    check-cast v4, Lgnu/bytecode/CpoolClass;

    .line 1098
    .local v4, "centry":Lgnu/bytecode/CpoolClass;
    iget-object v5, v4, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    instance-of v5, v5, Lgnu/bytecode/ClassType;

    if-nez v5, :cond_e

    .line 1099
    goto :goto_7

    .line 1100
    :cond_e
    iget-object v5, v4, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    check-cast v5, Lgnu/bytecode/ClassType;

    .line 1101
    .local v5, "ctype":Lgnu/bytecode/ClassType;
    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getEnclosingMember()Lgnu/bytecode/Member;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 1103
    if-nez v0, :cond_f

    .line 1104
    new-instance v6, Lgnu/bytecode/InnerClassesAttr;

    invoke-direct {v6, p0}, Lgnu/bytecode/InnerClassesAttr;-><init>(Lgnu/bytecode/ClassType;)V

    move-object v0, v6

    .line 1105
    :cond_f
    invoke-virtual {v0, v4, p0}, Lgnu/bytecode/InnerClassesAttr;->addClass(Lgnu/bytecode/CpoolClass;Lgnu/bytecode/ClassType;)V

    .line 1092
    .end local v3    # "entry":Lgnu/bytecode/CpoolEntry;
    .end local v4    # "centry":Lgnu/bytecode/CpoolClass;
    .end local v5    # "ctype":Lgnu/bytecode/ClassType;
    :cond_10
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1108
    .end local v2    # "i":I
    :cond_11
    if-eqz v0, :cond_12

    .line 1110
    invoke-virtual {v0, v1}, Lgnu/bytecode/InnerClassesAttr;->setSkipped(Z)V

    .line 1111
    invoke-virtual {v0, p0}, Lgnu/bytecode/InnerClassesAttr;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 1113
    :cond_12
    return-void
.end method

.method public getAbstractMethods()[Lgnu/bytecode/Method;
    .locals 2

    .line 868
    sget-object v0, Lgnu/bytecode/ClassType$AbstractMethodFilter;->instance:Lgnu/bytecode/ClassType$AbstractMethodFilter;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;I)[Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public final getAttributes()Lgnu/bytecode/Attribute;
    .locals 1

    .line 80
    iget-object v0, p0, Lgnu/bytecode/ClassType;->attributes:Lgnu/bytecode/Attribute;

    return-object v0
.end method

.method public getClassfileMajorVersion()S
    .locals 1

    .line 24
    iget v0, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    shr-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    return v0
.end method

.method public getClassfileMinorVersion()S
    .locals 2

    .line 28
    iget v0, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public getClassfileVersion()I
    .locals 1

    .line 40
    iget v0, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    return v0
.end method

.method public final getConstant(I)Lgnu/bytecode/CpoolEntry;
    .locals 1
    .param p1, "i"    # I

    .line 94
    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v0, v0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget v0, v0, Lgnu/bytecode/ConstantPool;->count:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v0, v0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v0, v0, p1

    return-object v0

    .line 96
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getConstants()Lgnu/bytecode/ConstantPool;
    .locals 1

    .line 90
    iget-object v0, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    return-object v0
.end method

.method public getDeclaredClass(Ljava/lang/String;)Lgnu/bytecode/ClassType;
    .locals 2
    .param p1, "simpleName"    # Ljava/lang/String;

    .line 171
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->addMemberClasses()V

    .line 172
    iget-object v0, p0, Lgnu/bytecode/ClassType;->firstInnerClass:Lgnu/bytecode/ClassType;

    .local v0, "member":Lgnu/bytecode/ClassType;
    :goto_0
    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    return-object v0

    .line 173
    :cond_0
    iget-object v0, v0, Lgnu/bytecode/ClassType;->nextInnerClass:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 178
    .end local v0    # "member":Lgnu/bytecode/ClassType;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 520
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v0

    .local v0, "field":Lgnu/bytecode/Field;
    :goto_0
    if-eqz v0, :cond_1

    .line 522
    iget-object v1, v0, Lgnu/bytecode/Field;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    return-object v0

    .line 520
    :cond_0
    iget-object v0, v0, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    goto :goto_0

    .line 525
    .end local v0    # "field":Lgnu/bytecode/Field;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "argCount"    # I

    monitor-enter p0

    .line 913
    const/4 v0, 0x0

    .line 914
    .local v0, "result":Lgnu/bytecode/Method;
    :try_start_0
    const-string v1, "<init>"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local p0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    const/4 v1, 0x0

    .line 915
    .local v1, "needOuterLinkArg":I
    :goto_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v2

    .line 916
    .local v2, "method":Lgnu/bytecode/Method;
    :goto_1
    if-eqz v2, :cond_3

    .line 918
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int v3, p2, v1

    invoke-virtual {v2}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v4

    array-length v4, v4

    if-ne v3, v4, :cond_2

    .line 921
    if-nez v0, :cond_1

    .line 925
    move-object v0, v2

    goto :goto_2

    .line 922
    :cond_1
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ambiguous call to getDeclaredMethod(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")\n - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 916
    :cond_2
    :goto_2
    iget-object v3, v2, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    goto :goto_1

    .line 928
    .end local v2    # "method":Lgnu/bytecode/Method;
    :cond_3
    monitor-exit p0

    return-object v0

    .line 912
    .end local v0    # "result":Lgnu/bytecode/Method;
    .end local v1    # "needOuterLinkArg":I
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "argCount":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arg_types"    # [Lgnu/bytecode/Type;

    .line 880
    const-string v0, "<init>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 881
    .local v0, "needOuterLinkArg":I
    :goto_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v1

    .line 882
    .local v1, "method":Lgnu/bytecode/Method;
    :goto_1
    if-eqz v1, :cond_9

    .line 884
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 885
    goto :goto_4

    .line 886
    :cond_1
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v2

    .line 887
    .local v2, "method_args":[Lgnu/bytecode/Type;
    if-eqz p2, :cond_8

    if-ne p2, v2, :cond_2

    if-nez v0, :cond_2

    goto :goto_5

    .line 890
    :cond_2
    array-length v3, p2

    .line 891
    .local v3, "i":I
    array-length v4, v2

    sub-int/2addr v4, v0

    if-eq v3, v4, :cond_3

    .line 892
    goto :goto_4

    .line 893
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_6

    .line 895
    add-int v4, v3, v0

    aget-object v4, v2, v4

    .line 896
    .local v4, "meth_type":Lgnu/bytecode/Type;
    aget-object v5, p2, v3

    .line 897
    .local v5, "need_type":Lgnu/bytecode/Type;
    if-eq v4, v5, :cond_3

    if-nez v5, :cond_4

    .line 898
    goto :goto_2

    .line 899
    :cond_4
    invoke-virtual {v4}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v6

    .line 900
    .local v6, "meth_sig":Ljava/lang/String;
    invoke-virtual {v5}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v7

    .line 901
    .local v7, "need_sig":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 902
    goto :goto_3

    .line 903
    .end local v4    # "meth_type":Lgnu/bytecode/Type;
    .end local v5    # "need_type":Lgnu/bytecode/Type;
    .end local v6    # "meth_sig":Ljava/lang/String;
    .end local v7    # "need_sig":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 904
    :cond_6
    :goto_3
    if-gez v3, :cond_7

    .line 905
    return-object v1

    .line 882
    .end local v2    # "method_args":[Lgnu/bytecode/Type;
    .end local v3    # "i":I
    :cond_7
    :goto_4
    iget-object v1, v1, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    goto :goto_1

    .line 889
    .restart local v2    # "method_args":[Lgnu/bytecode/Type;
    :cond_8
    :goto_5
    return-object v1

    .line 907
    .end local v1    # "method":Lgnu/bytecode/Method;
    .end local v2    # "method_args":[Lgnu/bytecode/Type;
    :cond_9
    const/4 v1, 0x0

    return-object v1
.end method

.method public final declared-synchronized getDeclaredMethods()Lgnu/bytecode/Method;
    .locals 2

    monitor-enter p0

    .line 724
    :try_start_0
    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 725
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->addMethods(Ljava/lang/Class;)V

    .line 726
    .end local p0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 723
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeclaringClass()Lgnu/bytecode/ClassType;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->addEnclosingMember()V

    .line 188
    iget-object v0, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    instance-of v0, v0, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    check-cast v0, Lgnu/bytecode/ClassType;

    return-object v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnclosingMember()Lgnu/bytecode/Member;
    .locals 1

    .line 196
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->addEnclosingMember()V

    .line 197
    iget-object v0, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Lgnu/bytecode/Field;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 564
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getField(Ljava/lang/String;I)Lgnu/bytecode/Field;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mask"    # I

    monitor-enter p0

    .line 536
    move-object v0, p0

    .line 539
    .local v0, "cl":Lgnu/bytecode/ClassType;
    :goto_0
    :try_start_0
    invoke-virtual {v0, p1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    .line 540
    .local v1, "field":Lgnu/bytecode/Field;
    if-eqz v1, :cond_1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    .line 542
    .end local p0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 543
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 544
    .local v2, "interfaces":[Lgnu/bytecode/ClassType;
    if-eqz v2, :cond_3

    .line 546
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 548
    aget-object v4, v2, v3

    invoke-virtual {v4, p1, p2}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;I)Lgnu/bytecode/Field;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    .line 549
    if-eqz v1, :cond_2

    .line 550
    monitor-exit p0

    return-object v1

    .line 546
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 553
    .end local v3    # "i":I
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v3

    .line 554
    if-nez v0, :cond_4

    .line 555
    monitor-exit p0

    const/4 v3, 0x0

    return-object v3

    .line 556
    .end local v1    # "field":Lgnu/bytecode/Field;
    .end local v2    # "interfaces":[Lgnu/bytecode/ClassType;
    :cond_4
    goto :goto_0

    .line 535
    .end local v0    # "cl":Lgnu/bytecode/ClassType;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "mask":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final getFieldCount()I
    .locals 1

    .line 512
    iget v0, p0, Lgnu/bytecode/ClassType;->fields_count:I

    return v0
.end method

.method public final declared-synchronized getFields()Lgnu/bytecode/Field;
    .locals 2

    monitor-enter p0

    .line 505
    :try_start_0
    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v0, v0, 0x11

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 506
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->addFields()V

    .line 507
    .end local p0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInterfaces()[Lgnu/bytecode/ClassType;
    .locals 5

    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v0, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    if-nez v0, :cond_1

    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 435
    .local v0, "reflectInterfaces":[Ljava/lang/Class;
    array-length v1, v0

    .line 436
    .local v1, "numInterfaces":I
    if-nez v1, :cond_0

    sget-object v2, Lgnu/bytecode/ClassType;->noClasses:[Lgnu/bytecode/ClassType;

    goto :goto_0

    .end local p0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    new-array v2, v1, [Lgnu/bytecode/ClassType;

    :goto_0
    iput-object v2, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    .line 439
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 440
    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    aget-object v4, v0, v2

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/ClassType;

    aput-object v4, v3, v2

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 442
    .end local v0    # "reflectInterfaces":[Ljava/lang/Class;
    .end local v1    # "numInterfaces":I
    .end local v2    # "i":I
    :cond_1
    iget-object v0, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getMatchingMethods(Ljava/lang/String;[Lgnu/bytecode/Type;I)[Lgnu/bytecode/Method;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "paramTypes"    # [Lgnu/bytecode/Type;
    .param p3, "flags"    # I

    .line 1015
    const/4 v0, 0x0

    .line 1016
    .local v0, "nMatches":I
    new-instance v1, Ljava/util/Vector;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 1017
    .local v1, "matches":Ljava/util/Vector;
    iget-object v2, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    .local v2, "method":Lgnu/bytecode/Method;
    :goto_0
    if-eqz v2, :cond_4

    .line 1019
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1020
    goto :goto_1

    .line 1021
    :cond_0
    and-int/lit8 v3, p3, 0x8

    iget v4, v2, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v4, v4, 0x8

    if-eq v3, v4, :cond_1

    .line 1022
    goto :goto_1

    .line 1023
    :cond_1
    and-int/lit8 v3, p3, 0x1

    iget v4, v2, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v4, v4, 0x1

    if-le v3, v4, :cond_2

    .line 1024
    goto :goto_1

    .line 1025
    :cond_2
    iget-object v3, v2, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 1026
    .local v3, "mtypes":[Lgnu/bytecode/Type;
    array-length v4, v3

    array-length v5, p2

    if-eq v4, v5, :cond_3

    .line 1027
    goto :goto_1

    .line 1028
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 1029
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1017
    .end local v3    # "mtypes":[Lgnu/bytecode/Type;
    :goto_1
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v2

    goto :goto_0

    .line 1031
    .end local v2    # "method":Lgnu/bytecode/Method;
    :cond_4
    new-array v2, v0, [Lgnu/bytecode/Method;

    .line 1032
    .local v2, "result":[Lgnu/bytecode/Method;
    invoke-virtual {v1, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1033
    return-object v2
.end method

.method public declared-synchronized getMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arg_types"    # [Lgnu/bytecode/Type;

    monitor-enter p0

    .line 933
    move-object v0, p0

    .line 936
    .local v0, "cl":Lgnu/bytecode/ClassType;
    :goto_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    .local v1, "method":Lgnu/bytecode/Method;
    if-eqz v1, :cond_0

    .line 938
    monitor-exit p0

    return-object v1

    .line 939
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v2

    move-object v0, v2

    .line 940
    if-nez v0, :cond_4

    .line 941
    nop

    .line 943
    .end local v1    # "method":Lgnu/bytecode/Method;
    move-object v0, p0

    .line 946
    :goto_1
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 947
    .local v1, "interfaces":[Lgnu/bytecode/ClassType;
    if-eqz v1, :cond_2

    .line 949
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 951
    aget-object v3, v1, v2

    invoke-virtual {v3, p1, p2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 953
    .local v3, "method":Lgnu/bytecode/Method;
    if-eqz v3, :cond_1

    .line 954
    monitor-exit p0

    return-object v3

    .line 949
    .end local v3    # "method":Lgnu/bytecode/Method;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 957
    .end local v2    # "i":I
    .end local p0    # "this":Lgnu/bytecode/ClassType;
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    .line 958
    if-nez v0, :cond_3

    .line 959
    nop

    .line 961
    .end local v1    # "interfaces":[Lgnu/bytecode/ClassType;
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    .line 960
    :cond_3
    goto :goto_1

    .line 942
    :cond_4
    goto :goto_0

    .line 932
    .end local v0    # "cl":Lgnu/bytecode/ClassType;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "arg_types":[Lgnu/bytecode/Type;
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getMethod(Ljava/lang/reflect/Method;)Lgnu/bytecode/Method;
    .locals 5
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 713
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 715
    .local v1, "parameterClasses":[Ljava/lang/Class;
    array-length v2, v1

    new-array v2, v2, [Lgnu/bytecode/Type;

    .line 716
    .local v2, "parameterTypes":[Lgnu/bytecode/Type;
    array-length v3, v1

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    .line 717
    aget-object v4, v1, v3

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_0

    .line 718
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {p0, v0, v3, v2, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v3

    return-object v3
.end method

.method public final getMethodCount()I
    .locals 1

    .line 636
    iget v0, p0, Lgnu/bytecode/ClassType;->methods_count:I

    return v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I
    .locals 7
    .param p1, "filter"    # Lgnu/bytecode/Filter;
    .param p2, "searchSupers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/bytecode/Filter;",
            "I",
            "Ljava/util/List<",
            "Lgnu/bytecode/Method;",
            ">;)I"
        }
    .end annotation

    .line 803
    .local p3, "result":Ljava/util/List;, "Ljava/util/List<Lgnu/bytecode/Method;>;"
    const/4 v0, 0x0

    .line 804
    .local v0, "count":I
    const/4 v1, 0x0

    .line 805
    .local v1, "inheritingPackage":Ljava/lang/String;
    move-object v2, p0

    .local v2, "ctype":Lgnu/bytecode/ClassType;
    :goto_0
    if-eqz v2, :cond_7

    .line 808
    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 809
    .local v3, "curPackage":Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v4

    .line 810
    .local v4, "meth":Lgnu/bytecode/Method;
    :goto_1
    if-eqz v4, :cond_4

    .line 812
    if-eq v2, p0, :cond_1

    .line 814
    invoke-virtual {v4}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v5

    .line 815
    .local v5, "mmods":I
    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_0

    .line 816
    goto :goto_2

    .line 817
    :cond_0
    and-int/lit8 v6, v5, 0x5

    if-nez v6, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 819
    goto :goto_2

    .line 821
    .end local v5    # "mmods":I
    :cond_1
    invoke-interface {p1, v4}, Lgnu/bytecode/Filter;->select(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 823
    if-eqz p3, :cond_2

    .line 826
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 810
    :cond_3
    :goto_2
    invoke-virtual {v4}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v4

    goto :goto_1

    .line 835
    .end local v4    # "meth":Lgnu/bytecode/Method;
    :cond_4
    move-object v1, v3

    .line 837
    if-nez p2, :cond_5

    .line 838
    goto :goto_4

    .line 840
    :cond_5
    const/4 v4, 0x1

    if-le p2, v4, :cond_6

    .line 842
    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v4

    .line 843
    .local v4, "interfaces":[Lgnu/bytecode/ClassType;
    if-eqz v4, :cond_6

    .line 845
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v6, v4

    if-ge v5, v6, :cond_6

    .line 846
    aget-object v6, v4, v5

    invoke-virtual {v6, p1, p2, p3}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    move-result v6

    add-int/2addr v0, v6

    .line 845
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 806
    .end local v3    # "curPackage":Ljava/lang/String;
    .end local v4    # "interfaces":[Lgnu/bytecode/ClassType;
    .end local v5    # "i":I
    :cond_6
    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v2

    goto :goto_0

    .line 851
    .end local v2    # "ctype":Lgnu/bytecode/ClassType;
    :cond_7
    :goto_4
    return v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;I[Lgnu/bytecode/Method;I)I
    .locals 5
    .param p1, "filter"    # Lgnu/bytecode/Filter;
    .param p2, "searchSupers"    # I
    .param p3, "result"    # [Lgnu/bytecode/Method;
    .param p4, "offset"    # I

    .line 779
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 780
    .local v0, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Lgnu/bytecode/Method;>;"
    invoke-virtual {p0, p1, p2, v0}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    .line 781
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 782
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 783
    add-int v3, p4, v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/Method;

    aput-object v4, p3, v3

    .line 782
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 784
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method public final getMethods()Lgnu/bytecode/Method;
    .locals 1

    .line 632
    iget-object v0, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    return-object v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;I)[Lgnu/bytecode/Method;
    .locals 5
    .param p1, "filter"    # Lgnu/bytecode/Filter;
    .param p2, "searchSupers"    # I

    .line 757
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 758
    .local v0, "vec":Ljava/util/Vector;, "Ljava/util/Vector<Lgnu/bytecode/Method;>;"
    invoke-virtual {p0, p1, p2, v0}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    .line 759
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 760
    .local v1, "count":I
    new-array v2, v1, [Lgnu/bytecode/Method;

    .line 761
    .local v2, "result":[Lgnu/bytecode/Method;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 762
    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/bytecode/Method;

    aput-object v4, v2, v3

    .line 761
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 763
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method public getMethods(Lgnu/bytecode/Filter;Z)[Lgnu/bytecode/Method;
    .locals 1
    .param p1, "filter"    # Lgnu/bytecode/Filter;
    .param p2, "searchSupers"    # Z

    .line 745
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;I)[Lgnu/bytecode/Method;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getModifiers()I
    .locals 1

    monitor-enter p0

    .line 103
    :try_start_0
    iget v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    iput v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    .line 106
    .end local p0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    iget v0, p0, Lgnu/bytecode/ClassType;->access_flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOuterLinkType()Lgnu/bytecode/ClassType;
    .locals 1

    .line 266
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->hasOuterLink()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "this$0"

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    :goto_0
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    .line 420
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 422
    .local v1, "index":I
    if-gez v1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method public declared-synchronized getSimpleName()Ljava/lang/String;
    .locals 7

    monitor-enter p0

    .line 120
    :try_start_0
    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 124
    :try_start_1
    iget-object v0, p0, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    .line 130
    .end local p0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 132
    .local v1, "dot":I
    if-lez v1, :cond_1

    .line 133
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 134
    :cond_1
    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 135
    .local v2, "dollar":I
    if-ltz v2, :cond_3

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 138
    .local v3, "len":I
    add-int/lit8 v4, v2, 0x1

    .line 139
    .local v4, "start":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 141
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 142
    .local v5, "ch":C
    const/16 v6, 0x30

    if-lt v5, v6, :cond_2

    const/16 v6, 0x39

    if-gt v5, v6, :cond_2

    .line 143
    nop

    .end local v5    # "ch":C
    add-int/lit8 v4, v4, 0x1

    .line 146
    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v5

    .line 149
    .end local v3    # "len":I
    .end local v4    # "start":I
    :cond_3
    monitor-exit p0

    return-object v0

    .line 119
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "dot":I
    .end local v2    # "dollar":I
    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final getStaticFlag()Z
    .locals 1

    .line 110
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized getSuperclass()Lgnu/bytecode/ClassType;
    .locals 2

    monitor-enter p0

    .line 408
    :try_start_0
    iget-object v0, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "java.lang.Object"

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lgnu/bytecode/ClassType;->reflectClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    .line 415
    .end local p0    # "this":Lgnu/bytecode/ClassType;
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final hasOuterLink()Z
    .locals 1

    .line 260
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    .line 261
    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final implementsInterface(Lgnu/bytecode/ClassType;)Z
    .locals 5
    .param p1, "iface"    # Lgnu/bytecode/ClassType;

    .line 1229
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1230
    return v0

    .line 1231
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 1232
    .local v1, "baseClass":Lgnu/bytecode/ClassType;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lgnu/bytecode/ClassType;->implementsInterface(Lgnu/bytecode/ClassType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1233
    return v0

    .line 1234
    :cond_1
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 1235
    .local v2, "interfaces":[Lgnu/bytecode/ClassType;
    if-eqz v2, :cond_3

    .line 1237
    array-length v3, v2

    .local v3, "i":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_3

    .line 1239
    aget-object v4, v2, v3

    invoke-virtual {v4, p1}, Lgnu/bytecode/ClassType;->implementsInterface(Lgnu/bytecode/ClassType;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1240
    return v0

    .line 1243
    .end local v3    # "i":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public isAccessible(Lgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;I)Z
    .locals 9
    .param p1, "declaring"    # Lgnu/bytecode/ClassType;
    .param p2, "receiver"    # Lgnu/bytecode/ObjectType;
    .param p3, "modifiers"    # I

    .line 328
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v0

    .line 330
    .local v0, "cmods":I
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 331
    return v2

    .line 332
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "callerName":Ljava/lang/String;
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "className":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 335
    return v2

    .line 336
    :cond_1
    and-int/lit8 v4, p3, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 337
    return v5

    .line 338
    :cond_2
    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 339
    .local v6, "dot":I
    const-string v7, ""

    if-ltz v6, :cond_3

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_3
    move-object v8, v7

    .line 340
    .local v8, "callerPackage":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 341
    .end local v6    # "dot":I
    .local v4, "dot":I
    if-ltz v4, :cond_4

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_4
    move-object v6, v7

    .line 342
    .local v6, "classPackage":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 343
    return v2

    .line 344
    :cond_5
    and-int/lit8 v7, v0, 0x1

    if-nez v7, :cond_6

    .line 345
    return v5

    .line 346
    :cond_6
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_8

    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v7

    if-eqz v7, :cond_8

    instance-of v7, p2, Lgnu/bytecode/ClassType;

    if-eqz v7, :cond_7

    move-object v7, p2

    check-cast v7, Lgnu/bytecode/ClassType;

    invoke-virtual {v7, p0}, Lgnu/bytecode/ClassType;->isSubclass(Lgnu/bytecode/ClassType;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 350
    :cond_7
    return v2

    .line 351
    :cond_8
    return v5
.end method

.method public isAccessible(Lgnu/bytecode/Member;Lgnu/bytecode/ObjectType;)Z
    .locals 2
    .param p1, "member"    # Lgnu/bytecode/Member;
    .param p2, "receiver"    # Lgnu/bytecode/ObjectType;

    .line 312
    invoke-interface {p1}, Lgnu/bytecode/Member;->getStaticFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const/4 p2, 0x0

    .line 314
    :cond_0
    invoke-interface {p1}, Lgnu/bytecode/Member;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-interface {p1}, Lgnu/bytecode/Member;->getModifiers()I

    move-result v1

    invoke-virtual {p0, v0, p2, v1}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;I)Z

    move-result v0

    return v0
.end method

.method public final isInterface()Z
    .locals 1

    .line 471
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSubclass(Lgnu/bytecode/ClassType;)Z
    .locals 2
    .param p1, "other"    # Lgnu/bytecode/ClassType;

    .line 1265
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1266
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassType;->implementsInterface(Lgnu/bytecode/ClassType;)Z

    move-result v0

    return v0

    .line 1267
    :cond_0
    sget-object v0, Lgnu/bytecode/ClassType;->toStringType:Lgnu/bytecode/ClassType;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_1

    sget-object v0, Lgnu/bytecode/ClassType;->javalangStringType:Lgnu/bytecode/ClassType;

    if-eq p1, v0, :cond_2

    :cond_1
    sget-object v0, Lgnu/bytecode/ClassType;->javalangStringType:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_3

    sget-object v0, Lgnu/bytecode/ClassType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p1, v0, :cond_3

    .line 1269
    :cond_2
    return v1

    .line 1270
    :cond_3
    move-object v0, p0

    .line 1271
    .local v0, "baseClass":Lgnu/bytecode/ClassType;
    :goto_0
    if-eqz v0, :cond_5

    .line 1273
    if-ne v0, p1, :cond_4

    .line 1274
    return v1

    .line 1275
    :cond_4
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    goto :goto_0

    .line 1277
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method public final isSubclass(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cname"    # Ljava/lang/String;

    .line 1252
    move-object v0, p0

    .line 1255
    .local v0, "ctype":Lgnu/bytecode/ClassType;
    :cond_0
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1256
    const/4 v1, 0x1

    return v1

    .line 1257
    :cond_1
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 1258
    if-nez v0, :cond_0

    .line 1259
    const/4 v1, 0x0

    return v1
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

    .line 1321
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->setName(Ljava/lang/String;)V

    .line 1322
    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 1323
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1327
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1329
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lgnu/bytecode/ClassType;->mapNameToType:Ljava/util/HashMap;

    .line 1333
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lgnu/bytecode/Type;>;"
    monitor-enter v1

    .line 1335
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/Type;

    .line 1336
    .local v2, "found":Lgnu/bytecode/Type;
    if-eqz v2, :cond_0

    .line 1337
    monitor-exit v1

    return-object v2

    .line 1338
    :cond_0
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    nop

    .end local v2    # "found":Lgnu/bytecode/Type;
    monitor-exit v1

    .line 1340
    return-object p0

    .line 1339
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final setAttributes(Lgnu/bytecode/Attribute;)V
    .locals 0
    .param p1, "attributes"    # Lgnu/bytecode/Attribute;

    .line 82
    iput-object p1, p0, Lgnu/bytecode/ClassType;->attributes:Lgnu/bytecode/Attribute;

    return-void
.end method

.method public setClassfileVersion(I)V
    .locals 0
    .param p1, "code"    # I

    .line 36
    iput p1, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 37
    return-void
.end method

.method public setClassfileVersion(II)V
    .locals 3
    .param p1, "major"    # I
    .param p2, "minor"    # I

    .line 32
    const v0, 0xffff

    and-int v1, p1, v0

    const/high16 v2, 0x10000

    mul-int v1, v1, v2

    mul-int v0, v0, p2

    add-int/2addr v1, v0

    iput v1, p0, Lgnu/bytecode/ClassType;->classfileFormatVersion:I

    .line 33
    return-void
.end method

.method public setClassfileVersionJava5()V
    .locals 1

    .line 44
    const/high16 v0, 0x310000    # 4.49994E-39f

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->setClassfileVersion(I)V

    .line 45
    return-void
.end method

.method public setEnclosingMember(Lgnu/bytecode/Member;)V
    .locals 0
    .param p1, "member"    # Lgnu/bytecode/Member;

    .line 202
    iput-object p1, p0, Lgnu/bytecode/ClassType;->enclosingMember:Lgnu/bytecode/Member;

    .line 203
    return-void
.end method

.method public final setInterface(Z)V
    .locals 1
    .param p1, "val"    # Z

    .line 475
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    or-int/lit16 v0, v0, 0x600

    iput v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    goto :goto_0

    .line 476
    :cond_0
    iget v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lgnu/bytecode/ClassType;->access_flags:I

    .line 477
    :goto_0
    return-void
.end method

.method public setInterfaces([Lgnu/bytecode/ClassType;)V
    .locals 0
    .param p1, "interfaces"    # [Lgnu/bytecode/ClassType;

    .line 446
    iput-object p1, p0, Lgnu/bytecode/ClassType;->interfaces:[Lgnu/bytecode/ClassType;

    return-void
.end method

.method public final setModifiers(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 114
    iput p1, p0, Lgnu/bytecode/ClassType;->access_flags:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 359
    iput-object p1, p0, Lgnu/bytecode/ClassType;->this_name:Ljava/lang/String;

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->setSignature(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public final setOuterLink(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Field;
    .locals 7
    .param p1, "outer"    # Lgnu/bytecode/ClassType;

    .line 278
    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_5

    .line 280
    const-string v0, "this$0"

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    .line 281
    .local v1, "field":Lgnu/bytecode/Field;
    if-nez v1, :cond_3

    .line 283
    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;)Lgnu/bytecode/Field;

    move-result-object v1

    .line 284
    iget v0, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 285
    iget-object v0, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    .local v0, "meth":Lgnu/bytecode/Method;
    :goto_0
    if-eqz v0, :cond_2

    .line 287
    const-string v2, "<init>"

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    iget-object v2, v0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    if-nez v2, :cond_0

    .line 291
    iget-object v2, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 292
    .local v2, "arg_types":[Lgnu/bytecode/Type;
    array-length v3, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Lgnu/bytecode/Type;

    .line 293
    .local v3, "new_types":[Lgnu/bytecode/Type;
    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    aput-object p1, v3, v6

    .line 295
    iput-object v3, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 296
    const/4 v4, 0x0

    iput-object v4, v0, Lgnu/bytecode/Method;->signature:Ljava/lang/String;

    goto :goto_1

    .line 290
    .end local v2    # "arg_types":[Lgnu/bytecode/Type;
    .end local v3    # "new_types":[Lgnu/bytecode/Type;
    :cond_0
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOuterLink called when "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has code"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 285
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v0

    goto :goto_0

    .end local v0    # "meth":Lgnu/bytecode/Method;
    :cond_2
    goto :goto_2

    .line 300
    :cond_3
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    :goto_2
    return-object v1

    .line 301
    :cond_4
    new-instance v0, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inconsistent setOuterLink call for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    .end local v1    # "field":Lgnu/bytecode/Field;
    :cond_5
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOuterLink called for existing class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    invoke-virtual {v0, p1}, Lgnu/bytecode/SourceDebugExtAttr;->addFile(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    iget v0, v0, Lgnu/bytecode/SourceDebugExtAttr;->fileCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 382
    return-void

    .line 385
    :cond_0
    invoke-static {p1}, Lgnu/bytecode/SourceFileAttr;->fixSourceFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 386
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 387
    .local v0, "slash":I
    if-ltz v0, :cond_1

    .line 388
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 389
    :cond_1
    invoke-static {p0, p1}, Lgnu/bytecode/SourceFileAttr;->setSourceFile(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public setStratum(Ljava/lang/String;)V
    .locals 1
    .param p1, "stratum"    # Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Lgnu/bytecode/SourceDebugExtAttr;

    invoke-direct {v0, p0}, Lgnu/bytecode/SourceDebugExtAttr;-><init>(Lgnu/bytecode/ClassType;)V

    iput-object v0, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    .line 372
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    invoke-virtual {v0, p1}, Lgnu/bytecode/SourceDebugExtAttr;->addStratum(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public setSuper(Lgnu/bytecode/ClassType;)V
    .locals 0
    .param p1, "superClass"    # Lgnu/bytecode/ClassType;

    .line 403
    iput-object p1, p0, Lgnu/bytecode/ClassType;->superClass:Lgnu/bytecode/ClassType;

    .line 404
    return-void
.end method

.method public setSuper(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 398
    if-nez p1, :cond_0

    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 399
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClassType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1315
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 1316
    return-void
.end method

.method public writeToArray()[B
    .locals 4

    .line 1176
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1179
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->writeToStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    nop

    .line 1185
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 1181
    :catch_0
    move-exception v1

    .line 1183
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public writeToFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgnu/bytecode/ClassType;->this_name:Ljava/lang/String;

    const/16 v2, 0x2e

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->writeToFile(Ljava/lang/String;)V

    .line 1172
    return-void
.end method

.method public writeToFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1162
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1164
    .local v0, "stream":Ljava/io/OutputStream;
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassType;->writeToStream(Ljava/io/OutputStream;)V

    .line 1165
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1166
    return-void
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1118
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1121
    .local v0, "dstr":Ljava/io/DataOutputStream;
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->doFixups()V

    .line 1123
    const v1, -0x35014542    # -8346975.0f

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1124
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getClassfileMinorVersion()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1125
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getClassfileMajorVersion()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1128
    iget-object v1, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    if-nez v1, :cond_0

    .line 1129
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 1131
    :cond_0
    iget-object v1, p0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    invoke-virtual {v1, v0}, Lgnu/bytecode/ConstantPool;->write(Ljava/io/DataOutputStream;)V

    .line 1133
    :goto_0
    iget v1, p0, Lgnu/bytecode/ClassType;->access_flags:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1134
    iget v1, p0, Lgnu/bytecode/ClassType;->thisClassIndex:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1135
    iget v1, p0, Lgnu/bytecode/ClassType;->superClassIndex:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1136
    iget-object v1, p0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    if-nez v1, :cond_1

    .line 1137
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_2

    .line 1140
    :cond_1
    iget-object v1, p0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    array-length v1, v1

    .line 1141
    .local v1, "interfaces_count":I
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1142
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1143
    iget-object v3, p0, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1142
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1146
    .end local v1    # "interfaces_count":I
    .end local v2    # "i":I
    :cond_2
    :goto_2
    iget v1, p0, Lgnu/bytecode/ClassType;->fields_count:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1147
    iget-object v1, p0, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;

    .local v1, "field":Lgnu/bytecode/Field;
    :goto_3
    if-eqz v1, :cond_3

    .line 1148
    invoke-virtual {v1, v0, p0}, Lgnu/bytecode/Field;->write(Ljava/io/DataOutputStream;Lgnu/bytecode/ClassType;)V

    .line 1147
    iget-object v1, v1, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    goto :goto_3

    .line 1150
    .end local v1    # "field":Lgnu/bytecode/Field;
    :cond_3
    iget v1, p0, Lgnu/bytecode/ClassType;->methods_count:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1151
    iget-object v1, p0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    .local v1, "method":Lgnu/bytecode/Method;
    :goto_4
    if-eqz v1, :cond_4

    .line 1152
    invoke-virtual {v1, v0, p0}, Lgnu/bytecode/Method;->write(Ljava/io/DataOutputStream;Lgnu/bytecode/ClassType;)V

    .line 1151
    iget-object v1, v1, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    goto :goto_4

    .line 1154
    .end local v1    # "method":Lgnu/bytecode/Method;
    :cond_4
    invoke-static {p0, v0}, Lgnu/bytecode/Attribute;->writeAll(Lgnu/bytecode/AttrContainer;Ljava/io/DataOutputStream;)V

    .line 1156
    iget v1, p0, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v1, v1, 0x3

    iput v1, p0, Lgnu/bytecode/ClassType;->flags:I

    .line 1157
    return-void
.end method
