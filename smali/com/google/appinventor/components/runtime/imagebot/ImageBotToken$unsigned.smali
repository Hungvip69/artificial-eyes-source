.class public final Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ImageBotToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsignedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "unsigned"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

.field public static final GENERATION_FIELD_NUMBER:I = 0x3

.field public static final HUUID_FIELD_NUMBER:I = 0x1

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private generation_:J

.field private volatile huuid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private version_:J


# direct methods
.method static bridge synthetic -$$Nest$fgethuuid_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->huuid_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbitField0_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->bitField0_:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgeneration_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->generation_:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhuuid_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->huuid_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputversion_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->version_:J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 785
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    .line 793
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 251
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->memoizedIsInitialized:B

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->huuid_:Ljava/lang/Object;

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->version_:J

    .line 87
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->generation_:J

    .line 88
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;-><init>()V

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 104
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v2, 0x0

    .line 105
    .local v2, "done":Z
    :goto_0
    if-nez v2, :cond_1

    .line 106
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 107
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 112
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto :goto_1

    .line 130
    :sswitch_0
    iget v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->bitField0_:I

    .line 131
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->generation_:J

    goto :goto_2

    .line 125
    :sswitch_1
    iget v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->bitField0_:I

    .line 126
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->version_:J

    .line 127
    goto :goto_2

    .line 119
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 120
    .local v4, "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->bitField0_:I

    .line 121
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->huuid_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    goto :goto_2

    .line 109
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_3
    const/4 v2, 0x1

    .line 110
    goto :goto_2

    .line 112
    :goto_1
    if-nez v4, :cond_0

    .line 114
    const/4 v2, 0x1

    .line 135
    .end local v3    # "tag":I
    :cond_0
    :goto_2
    goto :goto_0

    .line 142
    .end local v2    # "done":Z
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 138
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v3, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 140
    invoke-virtual {v3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v3

    .line 136
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catch_1
    move-exception v2

    .line 137
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_3
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 143
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->makeExtensionsImmutable()V

    .line 144
    throw v2

    .line 142
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 143
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->makeExtensionsImmutable()V

    .line 144
    nop

    .line 145
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0xa -> :sswitch_2
        0x10 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 82
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 251
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->memoizedIsInitialized:B

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 76
    sget-boolean v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;
    .locals 1

    .line 789
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 148
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->-$$Nest$sfgetinternal_static_unsigned_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;
    .locals 1

    .line 414
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    .line 417
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    .line 389
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    .line 388
    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    .line 396
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    .line 395
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 356
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 362
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    .line 402
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    .line 401
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    .line 409
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    .line 408
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    .line 377
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    .line 376
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    .line 384
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    .line 383
    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 366
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 372
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;",
            ">;"
        }
    .end annotation

    .line 803
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 299
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 300
    return v0

    .line 302
    :cond_0
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    if-nez v1, :cond_1

    .line 303
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 305
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    .line 307
    .local v1, "other":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;
    const/4 v2, 0x1

    .line 308
    .local v2, "result":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->hasHuuid()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->hasHuuid()Z

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 309
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->hasHuuid()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 310
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->getHuuid()Ljava/lang/String;

    move-result-object v4

    .line 311
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->getHuuid()Ljava/lang/String;

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

    .line 313
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->hasVersion()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->hasVersion()Z

    move-result v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    move v2, v4

    .line 314
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 315
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->getVersion()J

    move-result-wide v4

    .line 316
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->getVersion()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    move v2, v4

    .line 318
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->hasGeneration()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->hasGeneration()Z

    move-result v5

    if-ne v4, v5, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    move v2, v4

    .line 319
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->hasGeneration()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 320
    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->getGeneration()J

    move-result-wide v4

    .line 321
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->getGeneration()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    move v2, v4

    .line 323
    :cond_a
    if-eqz v2, :cond_b

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    .line 324
    .end local v2    # "result":Z
    .local v0, "result":Z
    :goto_6
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;
    .locals 1

    .line 812
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public getGeneration()J
    .locals 2

    .line 248
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->generation_:J

    return-wide v0
.end method

.method public getHuuid()Ljava/lang/String;
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->huuid_:Ljava/lang/Object;

    .line 180
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 181
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 183
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 185
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->huuid_:Ljava/lang/Object;

    .line 189
    :cond_1
    return-object v2
.end method

.method public getHuuidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->huuid_:Ljava/lang/Object;

    .line 202
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 203
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 204
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 206
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->huuid_:Ljava/lang/Object;

    .line 207
    return-object v1

    .line 209
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;",
            ">;"
        }
    .end annotation

    .line 808
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 276
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->memoizedSize:I

    .line 277
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 279
    :cond_0
    const/4 v0, 0x0

    .line 280
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 281
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->huuid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 283
    :cond_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 284
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->version_:J

    .line 285
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 287
    :cond_2
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 288
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->generation_:J

    .line 289
    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 291
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 292
    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->memoizedSize:I

    .line 293
    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 233
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->version_:J

    return-wide v0
.end method

.method public hasGeneration()Z
    .locals 2

    .line 242
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->bitField0_:I

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

.method public hasHuuid()Z
    .locals 2

    .line 169
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasVersion()Z
    .locals 2

    .line 223
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->bitField0_:I

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

.method public hashCode()I
    .locals 4

    .line 329
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 330
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->memoizedHashCode:I

    return v0

    .line 332
    :cond_0
    const/16 v0, 0x29

    .line 333
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x13

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 334
    .end local v0    # "hash":I
    .local v1, "hash":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->hasHuuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 336
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->getHuuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 338
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 340
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 341
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->getVersion()J

    move-result-wide v2

    .line 340
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 343
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->hasGeneration()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 345
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 346
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->getGeneration()J

    move-result-wide v2

    .line 345
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 348
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_3
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 349
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->memoizedHashCode:I

    .line 350
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 153
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->-$$Nest$sfgetinternal_static_unsigned_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;

    .line 154
    const-class v2, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 153
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 253
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->memoizedIsInitialized:B

    .line 254
    .local v0, "isInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 255
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    .line 257
    :cond_1
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->memoizedIsInitialized:B

    .line 258
    return v1
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;
    .locals 1

    .line 412
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->newBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 427
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder-IA;)V

    .line 428
    .local v0, "builder":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->newBuilderForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->newBuilderForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;
    .locals 2

    .line 420
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 421
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;-><init>(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder-IA;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;-><init>(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder-IA;)V

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;

    move-result-object v0

    .line 420
    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->toBuilder()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->huuid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 266
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 267
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->version_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 269
    :cond_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 270
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->generation_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$unsigned;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 273
    return-void
.end method
