.class public final Lcom/google/protobuf/EmptyProto;
.super Ljava/lang/Object;
.source "EmptyProto.java"


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field static final internal_static_google_protobuf_Empty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field static final internal_static_google_protobuf_Empty_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\n\u001bgoogle/protobuf/empty.proto\u0012\u000fgoogle.protobuf\"\u0007\n\u0005EmptyBy\n\u0013com.google.protobufB\nEmptyProtoP\u0001Z\'github.com/golang/protobuf/ptypes/empty\u00a0\u0001\u0001\u00f8\u0001\u0001\u00a2\u0002\u0003GPB\u00aa\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"

    aput-object v2, v0, v1

    .line 37
    .local v0, "descriptorData":[Ljava/lang/String;
    new-instance v2, Lcom/google/protobuf/EmptyProto$1;

    invoke-direct {v2}, Lcom/google/protobuf/EmptyProto$1;-><init>()V

    .line 45
    .local v2, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v3, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 46
    invoke-static {v0, v3, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 50
    invoke-static {}, Lcom/google/protobuf/EmptyProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v3, Lcom/google/protobuf/EmptyProto;->internal_static_google_protobuf_Empty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 51
    new-instance v3, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v4, Lcom/google/protobuf/EmptyProto;->internal_static_google_protobuf_Empty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v3, Lcom/google/protobuf/EmptyProto;->internal_static_google_protobuf_Empty_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 55
    .end local v0    # "descriptorData":[Ljava/lang/String;
    .end local v2    # "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
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
    sput-object p0, Lcom/google/protobuf/EmptyProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/protobuf/EmptyProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .line 14
    invoke-static {p0}, Lcom/google/protobuf/EmptyProto;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 16
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .line 10
    return-void
.end method
