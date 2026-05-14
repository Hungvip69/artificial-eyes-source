.class public final Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;
.super Ljava/lang/Object;
.source "ChatBotToken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$responseOrBuilder;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$requestOrBuilder;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$tokenOrBuilder;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;,
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsignedOrBuilder;
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

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_request_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_request_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_response_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_response_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_token_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_token_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_token_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_unsigned_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetinternal_static_unsigned_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_unsigned_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputdescriptor(Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 0

    sput-object p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 4509
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\n\nchat.proto\"D\n\u0008unsigned\u0012\r\n\u0005huuid\u0018\u0001 \u0001(\t\u0012\u0012\n\u0007version\u0018\u0002 \u0001(\u0004:\u00010\u0012\u0015\n\ngeneration\u0018\u0003 \u0001(\u0004:\u00010\"i\n\u0005token\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0010\n\u0005keyid\u0018\u0002 \u0001(\u0004:\u00011\u0012\u0015\n\ngeneration\u0018\u0003 \u0001(\u0004:\u00010\u0012\u0010\n\u0008unsigned\u0018\u0004 \u0001(\u000c\u0012\u0011\n\tsignature\u0018\u0005 \u0001(\u000c\"\u00c3\u0001\n\u0007request\u0012\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0015\n\u0005token\u0018\u0002 \u0001(\u000b2\u0006.token\u0012\u000c\n\u0004uuid\u0018\u0003 \u0001(\t\u0012\u0010\n\u0008question\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006system\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006apikey\u0018\u0006 \u0001(\t\u0012\u0019\n\u0008provider\u0018\u0007 \u0001(\t:\u0007chatgpt\u0012\r\n\u0005model\u0018\u0008 \u0001(\t\u0012\u0012\n\ninputimage\u0018\t \u0001(\u000c\u0012\u000f\n\u0007doimage\u0018\u0014 \u0001(\u0008\"d\n\u0008response\u0012"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "\u0012\n\u0007version\u0018\u0001 \u0001(\u0004:\u00011\u0012\u0011\n\u0006status\u0018\u0002 \u0001(\u0004:\u00010\u0012\u000c\n\u0004uuid\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006answer\u0018\u0004 \u0001(\t\u0012\u0013\n\u000boutputimage\u0018\u0005 \u0001(\u000cBA\n1com.google.appinventor.components.runtime.chatbotB\u000cChatBotToken"

    aput-object v4, v1, v3

    .line 4525
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v4, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$1;

    invoke-direct {v4}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$1;-><init>()V

    .line 4533
    .local v4, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v5, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4534
    invoke-static {v1, v5, v4}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 4538
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v5, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4539
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v6, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_unsigned_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/String;

    const-string v9, "Huuid"

    aput-object v9, v8, v2

    const-string v9, "Version"

    aput-object v9, v8, v3

    const-string v10, "Generation"

    aput-object v10, v8, v0

    invoke-direct {v5, v6, v8}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_unsigned_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4544
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v5, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4545
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v6, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_token_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

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

    sput-object v5, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_token_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4550
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v5, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4551
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v6, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_request_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v11, 0xa

    new-array v11, v11, [Ljava/lang/String;

    aput-object v9, v11, v2

    const-string v12, "Token"

    aput-object v12, v11, v3

    const-string v12, "Uuid"

    aput-object v12, v11, v0

    const-string v13, "Question"

    aput-object v13, v11, v7

    const-string v13, "System"

    aput-object v13, v11, v10

    const-string v13, "Apikey"

    aput-object v13, v11, v8

    const-string v13, "Provider"

    const/4 v14, 0x6

    aput-object v13, v11, v14

    const-string v13, "Model"

    const/4 v14, 0x7

    aput-object v13, v11, v14

    const-string v13, "Inputimage"

    const/16 v14, 0x8

    aput-object v13, v11, v14

    const-string v13, "Doimage"

    const/16 v14, 0x9

    aput-object v13, v11, v14

    invoke-direct {v5, v6, v11}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_request_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4556
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v5, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4557
    new-instance v5, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    sget-object v6, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v8, v8, [Ljava/lang/String;

    aput-object v9, v8, v2

    const-string v2, "Status"

    aput-object v2, v8, v3

    aput-object v12, v8, v0

    const-string v0, "Answer"

    aput-object v0, v8, v7

    const-string v0, "Outputimage"

    aput-object v0, v8, v10

    invoke-direct {v5, v6, v8}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->internal_static_response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4561
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

    .line 4504
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .line 14
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 16
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .line 10
    return-void
.end method
