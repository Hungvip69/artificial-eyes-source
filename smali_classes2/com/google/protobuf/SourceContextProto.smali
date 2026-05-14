.class public final Lcom/google/protobuf/SourceContextProto;
.super Ljava/lang/Object;
.source "SourceContextProto.java"


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field static final internal_static_google_protobuf_SourceContext_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_google_protobuf_SourceContext_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 30
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\n$google/protobuf/source_context.proto\u0012\u000fgoogle.protobuf\"\"\n\rSourceContext\u0012\u0011\n\tfile_name\u0018\u0001 \u0001(\tBU\n\u0013com.google.protobufB\u0012SourceContextProtoP\u0001\u00a0\u0001\u0001\u00a2\u0002\u0003GPB\u00aa\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"

    aput-object v3, v1, v2

    .line 37
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v3, Lcom/google/protobuf/SourceContextProto$1;

    invoke-direct {v3}, Lcom/google/protobuf/SourceContextProto$1;-><init>()V

    .line 45
    .local v3, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v4, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 46
    invoke-static {v1, v4, v3}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 50
    invoke-static {}, Lcom/google/protobuf/SourceContextProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v4, Lcom/google/protobuf/SourceContextProto;->internal_static_google_protobuf_SourceContext_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 51
    new-instance v4, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v5, Lcom/google/protobuf/SourceContextProto;->internal_static_google_protobuf_SourceContext_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v0, v0, [Ljava/lang/String;

    const-string v6, "FileName"

    aput-object v6, v0, v2

    invoke-direct {v4, v5, v0}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v4, Lcom/google/protobuf/SourceContextProto;->internal_static_google_protobuf_SourceContext_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 55
    .end local v1    # "descriptorData":[Ljava/lang/String;
    .end local v3    # "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 6
    sput-object p0, Lcom/google/protobuf/SourceContextProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/protobuf/SourceContextProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .line 14
    invoke-static {p0}, Lcom/google/protobuf/SourceContextProto;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 16
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .line 10
    return-void
.end method
