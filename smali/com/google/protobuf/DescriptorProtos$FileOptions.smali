.class public final Lcom/google/protobuf/DescriptorProtos$FileOptions;
.super Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$FileOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;,
        Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage<",
        "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$FileOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CC_ENABLE_ARENAS_FIELD_NUMBER:I = 0x1f

.field public static final CC_GENERIC_SERVICES_FIELD_NUMBER:I = 0x10

.field public static final CSHARP_NAMESPACE_FIELD_NUMBER:I = 0x25

.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$FileOptions;

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x17

.field public static final GO_PACKAGE_FIELD_NUMBER:I = 0xb

.field public static final JAVA_GENERATE_EQUALS_AND_HASH_FIELD_NUMBER:I = 0x14

.field public static final JAVA_GENERIC_SERVICES_FIELD_NUMBER:I = 0x11

.field public static final JAVA_MULTIPLE_FILES_FIELD_NUMBER:I = 0xa

.field public static final JAVA_OUTER_CLASSNAME_FIELD_NUMBER:I = 0x8

.field public static final JAVA_PACKAGE_FIELD_NUMBER:I = 0x1

.field public static final JAVA_STRING_CHECK_UTF8_FIELD_NUMBER:I = 0x1b

.field public static final OBJC_CLASS_PREFIX_FIELD_NUMBER:I = 0x24

.field public static final OPTIMIZE_FOR_FIELD_NUMBER:I = 0x9

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PY_GENERIC_SERVICES_FIELD_NUMBER:I = 0x12

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private ccEnableArenas_:Z

.field private ccGenericServices_:Z

.field private volatile csharpNamespace_:Ljava/lang/Object;

.field private deprecated_:Z

.field private volatile goPackage_:Ljava/lang/Object;

.field private javaGenerateEqualsAndHash_:Z

.field private javaGenericServices_:Z

.field private javaMultipleFiles_:Z

.field private volatile javaOuterClassname_:Ljava/lang/Object;

.field private volatile javaPackage_:Ljava/lang/Object;

.field private javaStringCheckUtf8_:Z

.field private memoizedIsInitialized:B

.field private volatile objcClassPrefix_:Ljava/lang/Object;

.field private optimizeFor_:I

.field private pyGenericServices_:Z

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20873
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 20881
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 17823
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>()V

    .line 18725
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    .line 17824
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 17825
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 17826
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    .line 17827
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    .line 17828
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    .line 17829
    const/4 v2, 0x1

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:I

    .line 17830
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 17831
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    .line 17832
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    .line 17833
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    .line 17834
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    .line 17835
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccEnableArenas_:Z

    .line 17836
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    .line 17837
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    .line 17838
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 17839
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17850
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;-><init>()V

    .line 17851
    const/4 v0, 0x0

    .line 17853
    .local v0, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 17855
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v2, 0x0

    .line 17856
    .local v2, "done":Z
    :goto_0
    const/16 v3, 0x4000

    if-nez v2, :cond_4

    .line 17857
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 17858
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 17863
    invoke-virtual {p0, p1, v1, p2, v4}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_1

    .line 17951
    :sswitch_0
    and-int/lit16 v5, v0, 0x4000

    if-eq v5, v3, :cond_0

    .line 17952
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 17953
    or-int/lit16 v0, v0, 0x4000

    .line 17955
    :cond_0
    iget-object v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    sget-object v6, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/google/protobuf/Parser;

    .line 17956
    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    .line 17955
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 17945
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 17946
    .local v5, "bs":Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 17947
    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    .line 17948
    goto/16 :goto_2

    .line 17939
    .end local v5    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 17940
    .restart local v5    # "bs":Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 17941
    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    .line 17942
    goto/16 :goto_2

    .line 17934
    .end local v5    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_3
    iget v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 17935
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccEnableArenas_:Z

    .line 17936
    goto/16 :goto_2

    .line 17929
    :sswitch_4
    iget v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 17930
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    .line 17931
    goto/16 :goto_2

    .line 17924
    :sswitch_5
    iget v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 17925
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    .line 17926
    goto/16 :goto_2

    .line 17919
    :sswitch_6
    iget v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 17920
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    .line 17921
    goto/16 :goto_2

    .line 17914
    :sswitch_7
    iget v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 17915
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    .line 17916
    goto/16 :goto_2

    .line 17909
    :sswitch_8
    iget v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v5, v5, 0x100

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 17910
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    .line 17911
    goto :goto_2

    .line 17904
    :sswitch_9
    iget v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 17905
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    .line 17906
    goto :goto_2

    .line 17898
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 17899
    .restart local v5    # "bs":Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 17900
    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 17901
    goto :goto_2

    .line 17893
    .end local v5    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_b
    iget v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 17894
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    .line 17895
    goto :goto_2

    .line 17882
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 17883
    .local v5, "rawValue":I
    invoke-static {v5}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v6

    .line 17884
    .local v6, "value":Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    if-nez v6, :cond_1

    .line 17885
    const/16 v7, 0x9

    invoke-virtual {v1, v7, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_2

    .line 17887
    :cond_1
    iget v7, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 17888
    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:I

    .line 17890
    goto :goto_2

    .line 17876
    .end local v5    # "rawValue":I
    .end local v6    # "value":Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 17877
    .local v5, "bs":Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 17878
    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 17879
    goto :goto_2

    .line 17870
    .end local v5    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 17871
    .restart local v5    # "bs":Lcom/google/protobuf/ByteString;
    iget v6, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 17872
    iput-object v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17873
    goto :goto_2

    .line 17860
    .end local v5    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_f
    const/4 v2, 0x1

    .line 17861
    goto :goto_2

    .line 17863
    :goto_1
    if-nez v3, :cond_2

    .line 17865
    const/4 v2, 0x1

    .line 17960
    .end local v4    # "tag":I
    :cond_2
    :goto_2
    goto/16 :goto_0

    .line 17967
    .end local v2    # "done":Z
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 17963
    :catch_0
    move-exception v2

    .line 17964
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v4, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 17965
    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v4

    .line 17961
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catch_1
    move-exception v2

    .line 17962
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

    .line 17967
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_3
    and-int/lit16 v4, v0, 0x4000

    if-ne v4, v3, :cond_3

    .line 17968
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 17970
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 17971
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->makeExtensionsImmutable()V

    throw v2

    .line 17967
    :cond_4
    and-int/lit16 v2, v0, 0x4000

    if-ne v2, v3, :cond_5

    .line 17968
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 17970
    :cond_5
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 17971
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->makeExtensionsImmutable()V

    .line 17972
    nop

    .line 17973
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_e
        0x42 -> :sswitch_d
        0x48 -> :sswitch_c
        0x50 -> :sswitch_b
        0x5a -> :sswitch_a
        0x80 -> :sswitch_9
        0x88 -> :sswitch_8
        0x90 -> :sswitch_7
        0xa0 -> :sswitch_6
        0xb8 -> :sswitch_5
        0xd8 -> :sswitch_4
        0xf8 -> :sswitch_3
        0x122 -> :sswitch_2
        0x12a -> :sswitch_1
        0x1f3a -> :sswitch_0
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

    .line 17814
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder<",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
            "*>;)V"
        }
    .end annotation

    .line 17821
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;, "Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder<Lcom/google/protobuf/DescriptorProtos$FileOptions;*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    .line 18725
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    .line 17822
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;
    .param p2, "x1"    # Lcom/google/protobuf/DescriptorProtos$1;

    .line 17814
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;)V

    return-void
.end method

.method static synthetic access$13500(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 17814
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 17814
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13600(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 17814
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13602(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 17814
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13702(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Z

    .line 17814
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    return p1
.end method

.method static synthetic access$13802(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Z

    .line 17814
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    return p1
.end method

.method static synthetic access$13902(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Z

    .line 17814
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    return p1
.end method

.method static synthetic access$14002(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # I

    .line 17814
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:I

    return p1
.end method

.method static synthetic access$14100(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 17814
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14102(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 17814
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14202(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Z

    .line 17814
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    return p1
.end method

.method static synthetic access$14302(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Z

    .line 17814
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    return p1
.end method

.method static synthetic access$14402(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Z

    .line 17814
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    return p1
.end method

.method static synthetic access$14502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Z

    .line 17814
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    return p1
.end method

.method static synthetic access$14602(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Z

    .line 17814
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccEnableArenas_:Z

    return p1
.end method

.method static synthetic access$14700(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 17814
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14702(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 17814
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14800(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 17814
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14802(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 17814
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14900(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 17814
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$14902(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Ljava/util/List;

    .line 17814
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15002(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # I

    .line 17814
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .line 20877
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 17976
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$13000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 19096
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 19099
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19070
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 19071
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19077
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 19078
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19038
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19044
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19083
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 19084
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19090
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 19091
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19058
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 19059
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19065
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 19066
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19048
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19054
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
            ">;"
        }
    .end annotation

    .line 20891
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 18868
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 18869
    return v0

    .line 18871
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    if-nez v1, :cond_1

    .line 18872
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 18874
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 18876
    .local v1, "other":Lcom/google/protobuf/DescriptorProtos$FileOptions;
    const/4 v2, 0x1

    .line 18877
    .local v2, "result":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 18878
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 18879
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v4

    .line 18880
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    move v2, v4

    .line 18882
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    move v2, v4

    .line 18883
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 18884
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v4

    .line 18885
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    move v2, v4

    .line 18887
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v5

    if-ne v4, v5, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    move v2, v4

    .line 18888
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 18889
    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v4

    .line 18890
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v5

    if-ne v4, v5, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    move v2, v4

    .line 18892
    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenerateEqualsAndHash()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenerateEqualsAndHash()Z

    move-result v5

    if-ne v4, v5, :cond_b

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    move v2, v4

    .line 18893
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenerateEqualsAndHash()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 18894
    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenerateEqualsAndHash()Z

    move-result v4

    .line 18895
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenerateEqualsAndHash()Z

    move-result v5

    if-ne v4, v5, :cond_c

    const/4 v4, 0x1

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    move v2, v4

    .line 18897
    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaStringCheckUtf8()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaStringCheckUtf8()Z

    move-result v5

    if-ne v4, v5, :cond_e

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    :goto_8
    move v2, v4

    .line 18898
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaStringCheckUtf8()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 18899
    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaStringCheckUtf8()Z

    move-result v4

    .line 18900
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaStringCheckUtf8()Z

    move-result v5

    if-ne v4, v5, :cond_f

    const/4 v4, 0x1

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    :goto_9
    move v2, v4

    .line 18902
    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v5

    if-ne v4, v5, :cond_11

    const/4 v4, 0x1

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    :goto_a
    move v2, v4

    .line 18903
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 18904
    if-eqz v2, :cond_12

    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:I

    iget v5, v1, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:I

    if-ne v4, v5, :cond_12

    const/4 v4, 0x1

    goto :goto_b

    :cond_12
    const/4 v4, 0x0

    :goto_b
    move v2, v4

    .line 18906
    :cond_13
    if-eqz v2, :cond_14

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasGoPackage()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasGoPackage()Z

    move-result v5

    if-ne v4, v5, :cond_14

    const/4 v4, 0x1

    goto :goto_c

    :cond_14
    const/4 v4, 0x0

    :goto_c
    move v2, v4

    .line 18907
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasGoPackage()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 18908
    if-eqz v2, :cond_15

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getGoPackage()Ljava/lang/String;

    move-result-object v4

    .line 18909
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getGoPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    goto :goto_d

    :cond_15
    const/4 v4, 0x0

    :goto_d
    move v2, v4

    .line 18911
    :cond_16
    if-eqz v2, :cond_17

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcGenericServices()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcGenericServices()Z

    move-result v5

    if-ne v4, v5, :cond_17

    const/4 v4, 0x1

    goto :goto_e

    :cond_17
    const/4 v4, 0x0

    :goto_e
    move v2, v4

    .line 18912
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcGenericServices()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 18913
    if-eqz v2, :cond_18

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcGenericServices()Z

    move-result v4

    .line 18914
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcGenericServices()Z

    move-result v5

    if-ne v4, v5, :cond_18

    const/4 v4, 0x1

    goto :goto_f

    :cond_18
    const/4 v4, 0x0

    :goto_f
    move v2, v4

    .line 18916
    :cond_19
    if-eqz v2, :cond_1a

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenericServices()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenericServices()Z

    move-result v5

    if-ne v4, v5, :cond_1a

    const/4 v4, 0x1

    goto :goto_10

    :cond_1a
    const/4 v4, 0x0

    :goto_10
    move v2, v4

    .line 18917
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenericServices()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 18918
    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenericServices()Z

    move-result v4

    .line 18919
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenericServices()Z

    move-result v5

    if-ne v4, v5, :cond_1b

    const/4 v4, 0x1

    goto :goto_11

    :cond_1b
    const/4 v4, 0x0

    :goto_11
    move v2, v4

    .line 18921
    :cond_1c
    if-eqz v2, :cond_1d

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPyGenericServices()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPyGenericServices()Z

    move-result v5

    if-ne v4, v5, :cond_1d

    const/4 v4, 0x1

    goto :goto_12

    :cond_1d
    const/4 v4, 0x0

    :goto_12
    move v2, v4

    .line 18922
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPyGenericServices()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 18923
    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPyGenericServices()Z

    move-result v4

    .line 18924
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPyGenericServices()Z

    move-result v5

    if-ne v4, v5, :cond_1e

    const/4 v4, 0x1

    goto :goto_13

    :cond_1e
    const/4 v4, 0x0

    :goto_13
    move v2, v4

    .line 18926
    :cond_1f
    if-eqz v2, :cond_20

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasDeprecated()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasDeprecated()Z

    move-result v5

    if-ne v4, v5, :cond_20

    const/4 v4, 0x1

    goto :goto_14

    :cond_20
    const/4 v4, 0x0

    :goto_14
    move v2, v4

    .line 18927
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasDeprecated()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 18928
    if-eqz v2, :cond_21

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDeprecated()Z

    move-result v4

    .line 18929
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDeprecated()Z

    move-result v5

    if-ne v4, v5, :cond_21

    const/4 v4, 0x1

    goto :goto_15

    :cond_21
    const/4 v4, 0x0

    :goto_15
    move v2, v4

    .line 18931
    :cond_22
    if-eqz v2, :cond_23

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcEnableArenas()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcEnableArenas()Z

    move-result v5

    if-ne v4, v5, :cond_23

    const/4 v4, 0x1

    goto :goto_16

    :cond_23
    const/4 v4, 0x0

    :goto_16
    move v2, v4

    .line 18932
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcEnableArenas()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 18933
    if-eqz v2, :cond_24

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcEnableArenas()Z

    move-result v4

    .line 18934
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcEnableArenas()Z

    move-result v5

    if-ne v4, v5, :cond_24

    const/4 v4, 0x1

    goto :goto_17

    :cond_24
    const/4 v4, 0x0

    :goto_17
    move v2, v4

    .line 18936
    :cond_25
    if-eqz v2, :cond_26

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasObjcClassPrefix()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasObjcClassPrefix()Z

    move-result v5

    if-ne v4, v5, :cond_26

    const/4 v4, 0x1

    goto :goto_18

    :cond_26
    const/4 v4, 0x0

    :goto_18
    move v2, v4

    .line 18937
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasObjcClassPrefix()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 18938
    if-eqz v2, :cond_27

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getObjcClassPrefix()Ljava/lang/String;

    move-result-object v4

    .line 18939
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getObjcClassPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    goto :goto_19

    :cond_27
    const/4 v4, 0x0

    :goto_19
    move v2, v4

    .line 18941
    :cond_28
    if-eqz v2, :cond_29

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCsharpNamespace()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCsharpNamespace()Z

    move-result v5

    if-ne v4, v5, :cond_29

    const/4 v4, 0x1

    goto :goto_1a

    :cond_29
    const/4 v4, 0x0

    :goto_1a
    move v2, v4

    .line 18942
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCsharpNamespace()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 18943
    if-eqz v2, :cond_2a

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCsharpNamespace()Ljava/lang/String;

    move-result-object v4

    .line 18944
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCsharpNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const/4 v4, 0x1

    goto :goto_1b

    :cond_2a
    const/4 v4, 0x0

    :goto_1b
    move v2, v4

    .line 18946
    :cond_2b
    if-eqz v2, :cond_2c

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v4

    .line 18947
    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v4, 0x1

    goto :goto_1c

    :cond_2c
    const/4 v4, 0x0

    :goto_1c
    move v2, v4

    .line 18948
    if-eqz v2, :cond_2d

    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v1, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_1d

    :cond_2d
    const/4 v4, 0x0

    :goto_1d
    move v2, v4

    .line 18949
    if-eqz v2, :cond_2e

    .line 18950
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    goto :goto_1e

    :cond_2e
    const/4 v0, 0x0

    .line 18951
    .end local v2    # "result":Z
    .local v0, "result":Z
    :goto_1e
    return v0
.end method

.method public getCcEnableArenas()Z
    .locals 1

    .line 18556
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccEnableArenas_:Z

    return v0
.end method

.method public getCcGenericServices()Z
    .locals 1

    .line 18472
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    return v0
.end method

.method public getCsharpNamespace()Ljava/lang/String;
    .locals 4

    .line 18636
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    .line 18637
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18638
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 18640
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 18642
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18643
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 18644
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    .line 18646
    :cond_1
    return-object v2
.end method

.method public getCsharpNamespaceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 18658
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    .line 18659
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18660
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 18661
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 18663
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    .line 18664
    return-object v1

    .line 18666
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .line 20900
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 17814
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 17814
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .line 18531
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    return v0
.end method

.method public getGoPackage()Ljava/lang/String;
    .locals 4

    .line 18398
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 18399
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18400
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 18402
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 18404
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18405
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 18406
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 18408
    :cond_1
    return-object v2
.end method

.method public getGoPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 18424
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 18425
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18426
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 18427
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 18429
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 18430
    return-object v1

    .line 18432
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getJavaGenerateEqualsAndHash()Z
    .locals 1

    .line 18318
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    return v0
.end method

.method public getJavaGenericServices()Z
    .locals 1

    .line 18487
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    return v0
.end method

.method public getJavaMultipleFiles()Z
    .locals 1

    .line 18273
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    return v0
.end method

.method public getJavaOuterClassname()Ljava/lang/String;
    .locals 4

    .line 18205
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 18206
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18207
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 18209
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 18211
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18212
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 18213
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 18215
    :cond_1
    return-object v2
.end method

.method public getJavaOuterClassnameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 18231
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 18232
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18233
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 18234
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 18236
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 18237
    return-object v1

    .line 18239
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getJavaPackage()Ljava/lang/String;
    .locals 4

    .line 18140
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 18141
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18142
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 18144
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 18146
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18147
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 18148
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 18150
    :cond_1
    return-object v2
.end method

.method public getJavaPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 18165
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 18166
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18167
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 18168
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 18170
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 18171
    return-object v1

    .line 18173
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getJavaStringCheckUtf8()Z
    .locals 1

    .line 18351
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    return v0
.end method

.method public getObjcClassPrefix()Ljava/lang/String;
    .locals 4

    .line 18581
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    .line 18582
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18583
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 18585
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 18587
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18588
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 18589
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    .line 18591
    :cond_1
    return-object v2
.end method

.method public getObjcClassPrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 18604
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    .line 18605
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18606
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 18607
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 18609
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    .line 18610
    return-object v1

    .line 18612
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 2

    .line 18366
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:I

    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v0

    .line 18367
    .local v0, "result":Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
            ">;"
        }
    .end annotation

    .line 20896
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPyGenericServices()Z
    .locals 1

    .line 18502
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 18800
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedSize:I

    .line 18801
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 18803
    :cond_0
    const/4 v0, 0x0

    .line 18804
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 18805
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18807
    :cond_1
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/16 v3, 0x8

    if-ne v1, v2, :cond_2

    .line 18808
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18810
    :cond_2
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 18811
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:I

    .line 18812
    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18814
    :cond_3
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 18815
    iget-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    .line 18816
    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18818
    :cond_4
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 18819
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18821
    :cond_5
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    const/16 v4, 0x10

    if-ne v1, v2, :cond_6

    .line 18822
    iget-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    .line 18823
    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18825
    :cond_6
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    .line 18826
    iget-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    .line 18827
    const/16 v2, 0x11

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18829
    :cond_7
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 18830
    iget-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    .line 18831
    const/16 v2, 0x12

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18833
    :cond_8
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_9

    .line 18834
    iget-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    .line 18835
    const/16 v2, 0x14

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18837
    :cond_9
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    .line 18838
    iget-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    .line 18839
    const/16 v2, 0x17

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18841
    :cond_a
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_b

    .line 18842
    iget-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    .line 18843
    const/16 v2, 0x1b

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18845
    :cond_b
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    .line 18846
    iget-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccEnableArenas_:Z

    .line 18847
    const/16 v2, 0x1f

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18849
    :cond_c
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    .line 18850
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18852
    :cond_d
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    .line 18853
    const/16 v1, 0x25

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18855
    :cond_e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 18856
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 18857
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0x3e7

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18855
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18859
    .end local v1    # "i":I
    :cond_f
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 18860
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 18861
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedSize:I

    .line 18862
    return v0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .param p1, "index"    # I

    .line 18711
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .line 18701
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .line 18680
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 18722
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 18691
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 17844
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCcEnableArenas()Z
    .locals 2

    .line 18545
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCcGenericServices()Z
    .locals 2

    .line 18454
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCsharpNamespace()Z
    .locals 2

    .line 18626
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeprecated()Z
    .locals 2

    .line 18518
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGoPackage()Z
    .locals 2

    .line 18384
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasJavaGenerateEqualsAndHash()Z
    .locals 2

    .line 18297
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasJavaGenericServices()Z
    .locals 2

    .line 18481
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasJavaMultipleFiles()Z
    .locals 2

    .line 18258
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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

.method public hasJavaOuterClassname()Z
    .locals 2

    .line 18191
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

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

.method public hasJavaPackage()Z
    .locals 2

    .line 18127
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasJavaStringCheckUtf8()Z
    .locals 2

    .line 18336
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasObjcClassPrefix()Z
    .locals 2

    .line 18570
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOptimizeFor()Z
    .locals 2

    .line 18360
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPyGenericServices()Z
    .locals 2

    .line 18496
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 18956
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 18957
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedHashCode:I

    return v0

    .line 18959
    :cond_0
    const/16 v0, 0x29

    .line 18960
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 18961
    .end local v0    # "hash":I
    .local v1, "hash":I
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaPackage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18962
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 18963
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 18965
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaOuterClassname()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18966
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x8

    .line 18967
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 18969
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaMultipleFiles()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18970
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0xa

    .line 18971
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 18972
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaMultipleFiles()Z

    move-result v2

    .line 18971
    invoke-static {v2}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 18974
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenerateEqualsAndHash()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18975
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x14

    .line 18976
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 18977
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenerateEqualsAndHash()Z

    move-result v2

    .line 18976
    invoke-static {v2}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 18979
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaStringCheckUtf8()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18980
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x1b

    .line 18981
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 18982
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaStringCheckUtf8()Z

    move-result v2

    .line 18981
    invoke-static {v2}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 18984
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasOptimizeFor()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18985
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x9

    .line 18986
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:I

    add-int/2addr v1, v2

    .line 18988
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasGoPackage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18989
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0xb

    .line 18990
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getGoPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 18992
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcGenericServices()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18993
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x10

    .line 18994
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 18995
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcGenericServices()Z

    move-result v2

    .line 18994
    invoke-static {v2}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 18997
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_8
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasJavaGenericServices()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 18998
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x11

    .line 18999
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 19000
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaGenericServices()Z

    move-result v2

    .line 18999
    invoke-static {v2}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 19002
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_9
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasPyGenericServices()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 19003
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x12

    .line 19004
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 19005
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getPyGenericServices()Z

    move-result v2

    .line 19004
    invoke-static {v2}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 19007
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_a
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasDeprecated()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 19008
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x17

    .line 19009
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 19010
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDeprecated()Z

    move-result v2

    .line 19009
    invoke-static {v2}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 19012
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCcEnableArenas()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 19013
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x1f

    .line 19014
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 19015
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCcEnableArenas()Z

    move-result v2

    .line 19014
    invoke-static {v2}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 19017
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_c
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasObjcClassPrefix()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 19018
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x24

    .line 19019
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getObjcClassPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 19021
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_d
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hasCsharpNamespace()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 19022
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x25

    .line 19023
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getCsharpNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 19025
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 19026
    mul-int/lit8 v0, v1, 0x25

    add-int/lit16 v0, v0, 0x3e7

    .line 19027
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 19029
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_f
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getExtensionFields()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->hashFields(ILjava/util/Map;)I

    move-result v0

    .line 19030
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 19031
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedHashCode:I

    .line 19032
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 17981
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$13100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    .line 17982
    const-class v2, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .line 18727
    iget-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    .line 18728
    .local v0, "isInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 18729
    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 18731
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 18732
    invoke-virtual {p0, v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 18733
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    .line 18734
    return v2

    .line 18731
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18737
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->extensionsAreInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 18738
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    .line 18739
    return v2

    .line 18741
    :cond_4
    iput-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    .line 18742
    return v1
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .line 19094
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 19109
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 19110
    .local v0, "builder":Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 17814
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 17814
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 17814
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2

    .line 19102
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 19103
    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 17814
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 17814
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18749
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 18750
    .local v0, "extensionWriter":Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;, "Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage<Lcom/google/protobuf/DescriptorProtos$FileOptions;>.ExtensionWriter;"
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 18751
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18753
    :cond_0
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    const/16 v3, 0x8

    if-ne v1, v2, :cond_1

    .line 18754
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    invoke-static {p1, v3, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18756
    :cond_1
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 18757
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 18759
    :cond_2
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 18760
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18762
    :cond_3
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 18763
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18765
    :cond_4
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    const/16 v4, 0x10

    if-ne v1, v2, :cond_5

    .line 18766
    iget-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18768
    :cond_5
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    .line 18769
    const/16 v1, 0x11

    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18771
    :cond_6
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    .line 18772
    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18774
    :cond_7
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_8

    .line 18775
    const/16 v1, 0x14

    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18777
    :cond_8
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    .line 18778
    const/16 v1, 0x17

    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18780
    :cond_9
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_a

    .line 18781
    const/16 v1, 0x1b

    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18783
    :cond_a
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    .line 18784
    const/16 v1, 0x1f

    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccEnableArenas_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18786
    :cond_b
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c

    .line 18787
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->objcClassPrefix_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18789
    :cond_c
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d

    .line 18790
    const/16 v1, 0x25

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->csharpNamespace_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 18792
    :cond_d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 18793
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/16 v3, 0x3e7

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18792
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18795
    .end local v1    # "i":I
    :cond_e
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 18796
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 18797
    return-void
.end method
