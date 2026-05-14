.class public final Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;
.super Ljava/lang/Object;
.source "ImageBotToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;,
        Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$responseOrBuilder;,
        Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;,
        Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$requestOrBuilder;,
        Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$token;,
        Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$tokenOrBuilder;,
        Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;,
        Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsignedOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_request_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_token_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_unsigned_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static bridge synthetic -$$Nest$sfgetinternal_static_request_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_request_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_request_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_response_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_response_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_token_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_token_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_token_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_unsigned_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_unsigned_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_unsigned_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputdescriptor(Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 0

    sput-object p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 3880
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\n\u000bimage.proto\"D\n\u0008unsigned\u0012\r\n\u0005huuid\u0018\u0001 \u0001(\t\u0012\u0012\n\u0007version\u0018\u0002 \u0001(\u0004:\u00010\u0012\u0015\n\ngeneration\u0018\u0003 \u0001(\u0004:\u00010\"i\n\u0005token\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0010\n\u0005keyid\u0018\u0002 \u0001(\u0004:\u00011\u0012\u0015\n\ngeneration\u0018\u0003 \u0001(\u0004:\u00010\u0012\u0010\n\u0008unsigned\u0018\u0004 \u0001(\u000c\u0012\u0011\n\tsignature\u0018\u0005 \u0001(\u000c\"\u00d2\u0001\n\u0007request\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012)\n\toperation\u0018\u0002 \u0002(\u000e2\u0016.request.OperationType\u0012\u0015\n\u0005token\u0018\u0003 \u0001(\u000b2\u0006.token\u0012\u000e\n\u0006prompt\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006source\u0018\u0005 \u0001(\u000c\u0012\u000c\n\u0004mask\u0018\u0006 \u0001(\u000c\u0012\u000e\n\u0006apikey\u0018\u0007 \u0001(\t\u0012\u000c\n\u0004size\u0018\u0008 \u0001(\t\"%\n\rOperationType\u0012\n\n\u0006CREATE\u0010\u0000\u0012\u0008\n\u0004EDI"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "T\u0010\u0001\"@\n\u0008response\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0011\n\u0006status\u0018\u0002 \u0001(\u0004:\u00010\u0012\r\n\u0005image\u0018\u0003 \u0001(\u000cBC\n2com.google.appinventor.components.runtime.imagebotB\rImageBotToken"

    aput-object v4, v1, v3

    .line 3896
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v4, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$1;

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$1;-><init>()V

    .line 3904
    .local v4, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v5, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3905
    invoke-static {v1, v5, v4}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 3909
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v5, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3910
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v6, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/String;

    const-string v9, "Huuid"

    aput-object v9, v8, v2

    const-string v9, "Version"

    aput-object v9, v8, v3

    const-string v10, "Generation"

    aput-object v10, v8, v0

    invoke-direct {v5, v6, v8}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_unsigned_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 3915
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v5, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3916
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v6, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v8, 0x5

    new-array v11, v8, [Ljava/lang/String;

    aput-object v9, v11, v2

    const-string v12, "Keyid"

    aput-object v12, v11, v3

    aput-object v10, v11, v0

    const-string v10, "Unsigned"

    aput-object v10, v11, v7

    const/4 v10, 0x4

    const-string v12, "Signature"

    aput-object v12, v11, v10

    invoke-direct {v5, v6, v11}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_token_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 3921
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v5, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3922
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v6, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/String;

    aput-object v9, v11, v2

    const-string v12, "Operation"

    aput-object v12, v11, v3

    const-string v12, "Token"

    aput-object v12, v11, v0

    const-string v12, "Prompt"

    aput-object v12, v11, v7

    const-string v12, "Source"

    aput-object v12, v11, v10

    const-string v10, "Mask"

    aput-object v10, v11, v8

    const-string v8, "Apikey"

    const/4 v10, 0x6

    aput-object v8, v11, v10

    const-string v8, "Size"

    const/4 v10, 0x7

    aput-object v8, v11, v10

    invoke-direct {v5, v6, v11}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_request_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 3927
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v5, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3928
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v6, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v7, v7, [Ljava/lang/String;

    aput-object v9, v7, v2

    const-string v2, "Status"

    aput-object v2, v7, v3

    const-string v2, "Image"

    aput-object v2, v7, v0

    invoke-direct {v5, v6, v7}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->internal_static_response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 3932
    .end local v1    # "descriptorData":[Ljava/lang/String;
    .end local v4    # "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 3875
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .line 14
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 16
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .line 10
    return-void
.end method
