.class public final Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$AnnotationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Annotation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;
    }
.end annotation


# static fields
.field public static final BEGIN_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

.field public static final END_FIELD_NUMBER:I = 0x4

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x1

.field public static final SOURCE_FILE_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private begin_:I

.field private bitField0_:I

.field private end_:I

.field private memoizedIsInitialized:B

.field private pathMemoizedSerializedSize:I

.field private path_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sourceFile_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37536
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 37544
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 36586
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 36722
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->pathMemoizedSerializedSize:I

    .line 36830
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->memoizedIsInitialized:B

    .line 36587
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Ljava/util/List;

    .line 36588
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    .line 36589
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin_:I

    .line 36590
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->end_:I

    .line 36591
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 36602
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>()V

    .line 36603
    const/4 v0, 0x0

    .line 36605
    .local v0, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 36607
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v2, 0x0

    .line 36608
    .local v2, "done":Z
    :goto_0
    const/4 v3, 0x1

    if-nez v2, :cond_5

    .line 36609
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 36610
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 36615
    invoke-virtual {p0, p1, v1, p2, v4}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 36654
    :sswitch_0
    iget v5, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    .line 36655
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->end_:I

    goto/16 :goto_3

    .line 36649
    :sswitch_1
    iget v5, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    .line 36650
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin_:I

    .line 36651
    goto :goto_3

    .line 36643
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 36644
    .local v5, "bs":Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    or-int/2addr v6, v3

    iput v6, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    .line 36645
    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    .line 36646
    goto :goto_3

    .line 36630
    .end local v5    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v5

    .line 36631
    .local v5, "length":I
    invoke-virtual {p1, v5}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v6

    .line 36632
    .local v6, "limit":I
    and-int/lit8 v7, v0, 0x1

    if-eq v7, v3, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v7

    if-lez v7, :cond_0

    .line 36633
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Ljava/util/List;

    .line 36634
    or-int/lit8 v0, v0, 0x1

    .line 36636
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v7

    if-lez v7, :cond_1

    .line 36637
    iget-object v7, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36639
    :cond_1
    invoke-virtual {p1, v6}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 36640
    goto :goto_3

    .line 36622
    .end local v5    # "length":I
    .end local v6    # "limit":I
    :sswitch_4
    and-int/lit8 v5, v0, 0x1

    if-eq v5, v3, :cond_2

    .line 36623
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Ljava/util/List;

    .line 36624
    or-int/lit8 v0, v0, 0x1

    .line 36626
    :cond_2
    iget-object v5, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36627
    goto :goto_3

    .line 36612
    :sswitch_5
    const/4 v2, 0x1

    .line 36613
    goto :goto_3

    .line 36615
    :goto_2
    if-nez v3, :cond_3

    .line 36617
    const/4 v2, 0x1

    .line 36659
    .end local v4    # "tag":I
    :cond_3
    :goto_3
    goto/16 :goto_0

    .line 36666
    .end local v2    # "done":Z
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 36662
    :catch_0
    move-exception v2

    .line 36663
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v4, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 36664
    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v4

    .line 36660
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catch_1
    move-exception v2

    .line 36661
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36666
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_4
    and-int/lit8 v4, v0, 0x1

    if-ne v4, v3, :cond_4

    .line 36667
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Ljava/util/List;

    .line 36669
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 36670
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->makeExtensionsImmutable()V

    throw v2

    .line 36666
    :cond_5
    and-int/lit8 v2, v0, 0x1

    if-ne v2, v3, :cond_6

    .line 36667
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Ljava/util/List;

    .line 36669
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 36670
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->makeExtensionsImmutable()V

    .line 36671
    nop

    .line 36672
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x8 -> :sswitch_4
        0xa -> :sswitch_3
        0x12 -> :sswitch_2
        0x18 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/protobuf/DescriptorProtos$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 36578
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 36584
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 36722
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->pathMemoizedSerializedSize:I

    .line 36830
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->memoizedIsInitialized:B

    .line 36585
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "x1"    # Lcom/google/protobuf/DescriptorProtos$1;

    .line 36578
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$27100(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 36578
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$27102(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .param p1, "x1"    # Ljava/util/List;

    .line 36578
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$27200(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 36578
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$27202(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 36578
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$27302(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .param p1, "x1"    # I

    .line 36578
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin_:I

    return p1
.end method

.method static synthetic access$27402(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .param p1, "x1"    # I

    .line 36578
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->end_:I

    return p1
.end method

.method static synthetic access$27502(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .param p1, "x1"    # I

    .line 36578
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1

    .line 37540
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 36675
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$26600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;
    .locals 1

    .line 37019
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->toBuilder()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 37022
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->toBuilder()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36993
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/Parser;

    .line 36994
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37000
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/Parser;

    .line 37001
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 36961
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 36967
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37006
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/Parser;

    .line 37007
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37013
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/Parser;

    .line 37014
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36981
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/Parser;

    .line 36982
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36988
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/Parser;

    .line 36989
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 36971
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 36977
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            ">;"
        }
    .end annotation

    .line 37554
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 36900
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 36901
    return v0

    .line 36903
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    if-nez v1, :cond_1

    .line 36904
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 36906
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    .line 36908
    .local v1, "other":Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    const/4 v2, 0x1

    .line 36909
    .local v2, "result":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getPathList()Ljava/util/List;

    move-result-object v4

    .line 36910
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getPathList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 36911
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasSourceFile()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasSourceFile()Z

    move-result v5

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    move v2, v4

    .line 36912
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasSourceFile()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 36913
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getSourceFile()Ljava/lang/String;

    move-result-object v4

    .line 36914
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getSourceFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    move v2, v4

    .line 36916
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasBegin()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasBegin()Z

    move-result v5

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    move v2, v4

    .line 36917
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasBegin()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 36918
    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getBegin()I

    move-result v4

    .line 36919
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getBegin()I

    move-result v5

    if-ne v4, v5, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    move v2, v4

    .line 36921
    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasEnd()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasEnd()Z

    move-result v5

    if-ne v4, v5, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    move v2, v4

    .line 36922
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasEnd()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 36923
    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getEnd()I

    move-result v4

    .line 36924
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getEnd()I

    move-result v5

    if-ne v4, v5, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    move v2, v4

    .line 36926
    :cond_b
    if-eqz v2, :cond_c

    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v1, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    .line 36927
    .end local v2    # "result":Z
    .local v0, "result":Z
    :goto_7
    return v0
.end method

.method public getBegin()I
    .locals 1

    .line 36800
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;
    .locals 1

    .line 37563
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 36578
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 36578
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .line 36827
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->end_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;",
            ">;"
        }
    .end annotation

    .line 37559
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPath(I)I
    .locals 1
    .param p1, "index"    # I

    .line 36720
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPathCount()I
    .locals 1

    .line 36709
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 36698
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 36863
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->memoizedSize:I

    .line 36864
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 36866
    :cond_0
    const/4 v0, 0x0

    .line 36868
    const/4 v1, 0x0

    .line 36869
    .local v1, "dataSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 36870
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Ljava/util/List;

    .line 36871
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 36869
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36873
    .end local v2    # "i":I
    :cond_1
    add-int/2addr v0, v1

    .line 36874
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getPathList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 36875
    add-int/lit8 v0, v0, 0x1

    .line 36876
    nop

    .line 36877
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 36879
    :cond_2
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->pathMemoizedSerializedSize:I

    .line 36881
    .end local v1    # "dataSize":I
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x2

    if-ne v1, v2, :cond_3

    .line 36882
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36884
    :cond_3
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 36885
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin_:I

    .line 36886
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36888
    :cond_4
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 36889
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->end_:I

    .line 36890
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 36892
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 36893
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->memoizedSize:I

    .line 36894
    return v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 4

    .line 36744
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    .line 36745
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36746
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 36748
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 36750
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 36751
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36752
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    .line 36754
    :cond_1
    return-object v2
.end method

.method public getSourceFileBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 36766
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    .line 36767
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36768
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 36769
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 36771
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    .line 36772
    return-object v1

    .line 36774
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 36596
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasBegin()Z
    .locals 2

    .line 36789
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEnd()Z
    .locals 2

    .line 36815
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSourceFile()Z
    .locals 2

    .line 36734
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 36932
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 36933
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->memoizedHashCode:I

    return v0

    .line 36935
    :cond_0
    const/16 v0, 0x29

    .line 36936
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 36937
    .end local v0    # "hash":I
    .local v1, "hash":I
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getPathCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 36938
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 36939
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getPathList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 36941
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasSourceFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36942
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 36943
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getSourceFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 36945
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasBegin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36946
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 36947
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getBegin()I

    move-result v2

    add-int/2addr v1, v2

    .line 36949
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->hasEnd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36950
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x4

    .line 36951
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getEnd()I

    move-result v2

    add-int/2addr v1, v2

    .line 36953
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_4
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 36954
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->memoizedHashCode:I

    .line 36955
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 36680
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$26700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    .line 36681
    const-class v2, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 36832
    iget-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->memoizedIsInitialized:B

    .line 36833
    .local v0, "isInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 36834
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    .line 36836
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->memoizedIsInitialized:B

    .line 36837
    return v1
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;
    .locals 1

    .line 37017
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->newBuilder()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 37032
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 37033
    .local v0, "builder":Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 36578
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 36578
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 36578
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;
    .locals 2

    .line 37025
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 37026
    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;)Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 36578
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->toBuilder()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 36578
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->toBuilder()Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36842
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getSerializedSize()I

    .line 36843
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->getPathList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 36844
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 36845
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->pathMemoizedSerializedSize:I

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 36847
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 36848
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->path_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 36847
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36850
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_2

    .line 36851
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->sourceFile_:Ljava/lang/Object;

    invoke-static {p1, v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 36853
    :cond_2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 36854
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->begin_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 36856
    :cond_3
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 36857
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->end_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 36859
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$GeneratedCodeInfo$Annotation;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 36860
    return-void
.end method
