.class public final Lcom/google/protobuf/Descriptors$FileDescriptor;
.super Lcom/google/protobuf/Descriptors$GenericDescriptor;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;,
        Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;
    }
.end annotation


# instance fields
.field private final dependencies:[Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private final enumTypes:[Lcom/google/protobuf/Descriptors$EnumDescriptor;

.field private final extensions:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

.field private final messageTypes:[Lcom/google/protobuf/Descriptors$Descriptor;

.field private final pool:Lcom/google/protobuf/Descriptors$DescriptorPool;

.field private proto:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

.field private final publicDependencies:[Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private final services:[Lcom/google/protobuf/Descriptors$ServiceDescriptor;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$DescriptorPool;Z)V
    .locals 16
    .param p1, "proto"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .param p2, "dependencies"    # [Lcom/google/protobuf/Descriptors$FileDescriptor;
    .param p3, "pool"    # Lcom/google/protobuf/Descriptors$DescriptorPool;
    .param p4, "allowUnknownDependencies"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 450
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {p0 .. p0}, Lcom/google/protobuf/Descriptors$GenericDescriptor;-><init>()V

    .line 451
    iput-object v10, v7, Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;

    .line 452
    iput-object v8, v7, Lcom/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 453
    invoke-virtual/range {p2 .. p2}, [Lcom/google/protobuf/Descriptors$FileDescriptor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    iput-object v0, v7, Lcom/google/protobuf/Descriptors$FileDescriptor;->dependencies:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 454
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    .line 456
    .local v11, "nameToFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;>;"
    array-length v0, v9

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, v9, v1

    .line 457
    .local v2, "file":Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    .end local v2    # "file":Lcom/google/protobuf/Descriptors$FileDescriptor;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 460
    .local v12, "publicDependencies":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/Descriptors$FileDescriptor;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependencyCount()I

    move-result v1

    const/4 v6, 0x0

    if-ge v0, v1, :cond_4

    .line 461
    invoke-virtual {v8, v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPublicDependency(I)I

    move-result v1

    .line 462
    .local v1, "index":I
    if-ltz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDependencyCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 466
    invoke-virtual {v8, v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDependency(I)Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 468
    .local v3, "file":Lcom/google/protobuf/Descriptors$FileDescriptor;
    if-nez v3, :cond_2

    .line 469
    if-eqz p4, :cond_1

    goto :goto_2

    .line 470
    :cond_1
    new-instance v4, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid public dependency: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5, v6}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v4

    .line 475
    :cond_2
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    .end local v1    # "index":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "file":Lcom/google/protobuf/Descriptors$FileDescriptor;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 463
    .restart local v1    # "index":I
    :cond_3
    new-instance v2, Lcom/google/protobuf/Descriptors$DescriptorValidationException;

    const-string v3, "Invalid public dependency index."

    invoke-direct {v2, v7, v3, v6}, Lcom/google/protobuf/Descriptors$DescriptorValidationException;-><init>(Lcom/google/protobuf/Descriptors$FileDescriptor;Ljava/lang/String;Lcom/google/protobuf/Descriptors$1;)V

    throw v2

    .line 478
    .end local v0    # "i":I
    .end local v1    # "index":I
    :cond_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    iput-object v0, v7, Lcom/google/protobuf/Descriptors$FileDescriptor;->publicDependencies:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 479
    iget-object v0, v7, Lcom/google/protobuf/Descriptors$FileDescriptor;->publicDependencies:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v7}, Lcom/google/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    .line 483
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/Descriptors$Descriptor;

    iput-object v0, v7, Lcom/google/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/google/protobuf/Descriptors$Descriptor;

    .line 484
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageTypeCount()I

    move-result v0

    if-ge v13, v0, :cond_5

    .line 485
    iget-object v14, v7, Lcom/google/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v15, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 486
    invoke-virtual {v8, v13}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v2, p0

    move v4, v13

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/Descriptors$Descriptor;-><init>(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$Descriptor;ILcom/google/protobuf/Descriptors$1;)V

    aput-object v15, v14, v13

    .line 484
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 489
    .end local v13    # "i":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/Descriptors$EnumDescriptor;

    iput-object v0, v7, Lcom/google/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 490
    const/4 v0, 0x0

    move v13, v0

    .restart local v13    # "i":I
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumTypeCount()I

    move-result v0

    if-ge v13, v0, :cond_6

    .line 491
    iget-object v14, v7, Lcom/google/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/google/protobuf/Descriptors$EnumDescriptor;

    new-instance v15, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {v8, v13}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v2, p0

    move v4, v13

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/Descriptors$EnumDescriptor;-><init>(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$Descriptor;ILcom/google/protobuf/Descriptors$1;)V

    aput-object v15, v14, v13

    .line 490
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 494
    .end local v13    # "i":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    iput-object v0, v7, Lcom/google/protobuf/Descriptors$FileDescriptor;->services:[Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    .line 495
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getServiceCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 496
    iget-object v1, v7, Lcom/google/protobuf/Descriptors$FileDescriptor;->services:[Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    new-instance v2, Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    invoke-virtual {v8, v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getService(I)Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v3

    invoke-direct {v2, v3, v7, v0, v6}, Lcom/google/protobuf/Descriptors$ServiceDescriptor;-><init>(Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;ILcom/google/protobuf/Descriptors$1;)V

    aput-object v2, v1, v0

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 499
    .end local v0    # "i":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result v0

    new-array v0, v0, [Lcom/google/protobuf/Descriptors$FieldDescriptor;

    iput-object v0, v7, Lcom/google/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 500
    const/4 v0, 0x0

    move v13, v0

    .restart local v13    # "i":I
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtensionCount()I

    move-result v0

    if-ge v13, v0, :cond_8

    .line 501
    iget-object v14, v7, Lcom/google/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    new-instance v15, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 502
    invoke-virtual {v8, v13}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtension(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, v15

    move-object/from16 v2, p0

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/google/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$Descriptor;IZLcom/google/protobuf/Descriptors$1;)V

    aput-object v15, v14, v13

    .line 500
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 504
    .end local v13    # "i":I
    :cond_8
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/google/protobuf/Descriptors$Descriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 510
    invoke-direct {p0}, Lcom/google/protobuf/Descriptors$GenericDescriptor;-><init>()V

    .line 511
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorPool;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/google/protobuf/Descriptors$DescriptorPool;-><init>([Lcom/google/protobuf/Descriptors$FileDescriptor;Z)V

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;

    .line 512
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".placeholder.proto"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setName(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    .line 514
    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->setPackage(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$Descriptor;->toProto()Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->addMessageType(Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 515
    new-array v0, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->dependencies:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 516
    new-array v0, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->publicDependencies:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 518
    new-array v0, v3, [Lcom/google/protobuf/Descriptors$Descriptor;

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/google/protobuf/Descriptors$Descriptor;

    .line 519
    new-array v0, v1, [Lcom/google/protobuf/Descriptors$EnumDescriptor;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/google/protobuf/Descriptors$EnumDescriptor;

    .line 520
    new-array v0, v1, [Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->services:[Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    .line 521
    new-array v0, v1, [Lcom/google/protobuf/Descriptors$FieldDescriptor;

    iput-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 523
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v0, p1, p0}, Lcom/google/protobuf/Descriptors$DescriptorPool;->addPackage(Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    .line 524
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v0, p2}, Lcom/google/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/google/protobuf/Descriptors$GenericDescriptor;)V

    .line 525
    return-void
.end method

.method static synthetic access$1400(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$DescriptorPool;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 75
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;

    return-object v0
.end method

.method public static buildFrom(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1
    .param p0, "proto"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .param p1, "dependencies"    # [Lcom/google/protobuf/Descriptors$FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 269
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->buildFrom(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/google/protobuf/Descriptors$FileDescriptor;Z)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static buildFrom(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/google/protobuf/Descriptors$FileDescriptor;Z)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 2
    .param p0, "proto"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .param p1, "dependencies"    # [Lcom/google/protobuf/Descriptors$FileDescriptor;
    .param p2, "allowUnknownDependencies"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 300
    new-instance v0, Lcom/google/protobuf/Descriptors$DescriptorPool;

    invoke-direct {v0, p1, p2}, Lcom/google/protobuf/Descriptors$DescriptorPool;-><init>([Lcom/google/protobuf/Descriptors$FileDescriptor;Z)V

    .line 302
    .local v0, "pool":Lcom/google/protobuf/Descriptors$DescriptorPool;
    new-instance v1, Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/protobuf/Descriptors$FileDescriptor;-><init>(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$DescriptorPool;Z)V

    .line 304
    .local v1, "result":Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-direct {v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->crossLink()V

    .line 305
    return-object v1
.end method

.method private crossLink()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/google/protobuf/Descriptors$Descriptor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 530
    .local v4, "messageType":Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v4}, Lcom/google/protobuf/Descriptors$Descriptor;->access$700(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 529
    .end local v4    # "messageType":Lcom/google/protobuf/Descriptors$Descriptor;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->services:[Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 534
    .local v4, "service":Lcom/google/protobuf/Descriptors$ServiceDescriptor;
    invoke-static {v4}, Lcom/google/protobuf/Descriptors$ServiceDescriptor;->access$800(Lcom/google/protobuf/Descriptors$ServiceDescriptor;)V

    .line 533
    .end local v4    # "service":Lcom/google/protobuf/Descriptors$ServiceDescriptor;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 538
    .local v3, "extension":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-static {v3}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->access$900(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    .line 537
    .end local v3    # "extension":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 540
    :cond_2
    return-void
.end method

.method public static internalBuildGeneratedFileFrom([Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V
    .locals 6
    .param p0, "descriptorDataParts"    # [Ljava/lang/String;
    .param p2, "dependencies"    # [Ljava/lang/String;
    .param p3, "dependencyFileNames"    # [Ljava/lang/String;
    .param p4, "descriptorAssigner"    # Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;",
            ")V"
        }
    .end annotation

    .line 381
    .local p1, "descriptorOuterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v0, "descriptors":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/Descriptors$FileDescriptor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 384
    nop

    .line 385
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 386
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "descriptor"

    .line 387
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 386
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    nop

    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 388
    :catch_0
    move-exception v2

    .line 391
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/google/protobuf/Descriptors;->access$100()Ljava/util/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Descriptors for \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" can not be found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 382
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    .end local v1    # "i":I
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 396
    .local v1, "descriptorArray":[Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 397
    invoke-static {p0, v1, p4}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 399
    return-void
.end method

.method public static internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V
    .locals 8
    .param p0, "descriptorDataParts"    # [Ljava/lang/String;
    .param p1, "dependencies"    # [Lcom/google/protobuf/Descriptors$FileDescriptor;
    .param p2, "descriptorAssigner"    # Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;

    .line 328
    const-string v0, "Failed to parse protocol buffer descriptor for generated code."

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v1, "descriptorData":Ljava/lang/StringBuilder;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 330
    .local v4, "part":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .end local v4    # "part":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Internal;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 338
    .local v2, "descriptorBytes":[B
    :try_start_0
    invoke-static {v2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->parseFrom([B)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v3
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_2

    .line 342
    .local v3, "proto":Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    nop

    .line 348
    const/4 v4, 0x1

    :try_start_1
    invoke-static {v3, p1, v4}, Lcom/google/protobuf/Descriptors$FileDescriptor;->buildFrom(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;[Lcom/google/protobuf/Descriptors$FileDescriptor;Z)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4
    :try_end_1
    .catch Lcom/google/protobuf/Descriptors$DescriptorValidationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 352
    .local v4, "result":Lcom/google/protobuf/Descriptors$FileDescriptor;
    nop

    .line 354
    nop

    .line 355
    invoke-interface {p2, v4}, Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;->assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v5

    .line 357
    .local v5, "registry":Lcom/google/protobuf/ExtensionRegistry;
    if-eqz v5, :cond_1

    .line 360
    :try_start_2
    invoke-static {v2, v5}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v0

    .line 365
    nop

    .line 367
    invoke-direct {v4, v3}, Lcom/google/protobuf/Descriptors$FileDescriptor;->setProto(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V

    goto :goto_1

    .line 361
    :catch_0
    move-exception v6

    .line 362
    .local v6, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 369
    .end local v6    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_1
    :goto_1
    return-void

    .line 349
    .end local v4    # "result":Lcom/google/protobuf/Descriptors$FileDescriptor;
    .end local v5    # "registry":Lcom/google/protobuf/ExtensionRegistry;
    :catch_1
    move-exception v0

    .line 350
    .local v0, "e":Lcom/google/protobuf/Descriptors$DescriptorValidationException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid embedded descriptor for \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 351
    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 339
    .end local v0    # "e":Lcom/google/protobuf/Descriptors$DescriptorValidationException;
    .end local v3    # "proto":Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    :catch_2
    move-exception v3

    .line 340
    .local v3, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v4

    :goto_3
    goto :goto_2
.end method

.method public static internalUpdateFileDescriptor(Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 4
    .param p0, "descriptor"    # Lcom/google/protobuf/Descriptors$FileDescriptor;
    .param p1, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .line 410
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 413
    .local v0, "bytes":Lcom/google/protobuf/ByteString;
    :try_start_0
    invoke-static {v0, p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .local v1, "proto":Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    nop

    .line 418
    invoke-direct {p0, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->setProto(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V

    .line 419
    return-void

    .line 414
    .end local v1    # "proto":Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Failed to parse protocol buffer descriptor for generated code."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private setProto(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)V
    .locals 3
    .param p1, "proto"    # Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 553
    iput-object p1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 555
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/google/protobuf/Descriptors$Descriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 556
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/google/protobuf/Descriptors$Descriptor;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getMessageType(I)Lcom/google/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/Descriptors$Descriptor;->access$1000(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/DescriptorProtos$DescriptorProto;)V

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 559
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/google/protobuf/Descriptors$EnumDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 560
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/google/protobuf/Descriptors$EnumDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getEnumType(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->access$1100(Lcom/google/protobuf/Descriptors$EnumDescriptor;Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)V

    .line 559
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 563
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->services:[Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 564
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->services:[Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getService(I)Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/Descriptors$ServiceDescriptor;->access$1200(Lcom/google/protobuf/Descriptors$ServiceDescriptor;Lcom/google/protobuf/DescriptorProtos$ServiceDescriptorProto;)V

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 567
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 568
    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getExtension(I)Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->access$1300(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 570
    .end local v0    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public findEnumTypeByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 193
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 194
    return-object v3

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 200
    .local v0, "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    if-eqz v1, :cond_2

    .line 201
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    if-ne v1, p0, :cond_2

    .line 202
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v1

    .line 204
    :cond_2
    return-object v3
.end method

.method public findExtensionByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 240
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 241
    return-object v3

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 247
    .local v0, "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    if-eqz v1, :cond_2

    .line 248
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    if-ne v1, p0, :cond_2

    .line 249
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    return-object v1

    .line 251
    :cond_2
    return-object v3
.end method

.method public findMessageTypeByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 169
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 170
    return-object v3

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 176
    .local v0, "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/google/protobuf/Descriptors$Descriptor;

    if-eqz v1, :cond_2

    .line 177
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    if-ne v1, p0, :cond_2

    .line 178
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v1

    .line 180
    :cond_2
    return-object v3
.end method

.method public findServiceByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$ServiceDescriptor;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 217
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 218
    return-object v3

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->pool:Lcom/google/protobuf/Descriptors$DescriptorPool;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 224
    .local v0, "result":Lcom/google/protobuf/Descriptors$GenericDescriptor;
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$GenericDescriptor;->getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v1

    if-ne v1, p0, :cond_2

    .line 226
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    return-object v1

    .line 228
    :cond_2
    return-object v3
.end method

.method public getDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$FileDescriptor;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->dependencies:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnumTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$EnumDescriptor;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->enumTypes:[Lcom/google/protobuf/Descriptors$EnumDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->extensions:[Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 91
    return-object p0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$Descriptor;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->messageTypes:[Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$FileDescriptor;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->publicDependencies:[Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Descriptors$ServiceDescriptor;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->services:[Lcom/google/protobuf/Descriptors$ServiceDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;
    .locals 2

    .line 154
    sget-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    invoke-static {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->access$000(Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getSyntax()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    return-object v0

    .line 157
    :cond_0
    sget-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    return-object v0
.end method

.method supportsUnknownEnumValue()Z
    .locals 2

    .line 573
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getSyntax()Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$Syntax;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toProto()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor;->proto:Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/google/protobuf/Message;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->toProto()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v0

    return-object v0
.end method
