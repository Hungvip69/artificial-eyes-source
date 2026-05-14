.class public final Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ChatBotToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$responseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    }
.end annotation


# static fields
.field public static final ANSWER_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

.field public static final OUTPUTIMAGE_FIELD_NUMBER:I = 0x5

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field public static final UUID_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile answer_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private outputimage_:Lcom/google/protobuf/ByteString;

.field private status_:J

.field private volatile uuid_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method static bridge synthetic -$$Nest$fgetanswer_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuuid_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputanswer_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbitField0_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputoutputimage_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;Lcom/google/protobuf/ByteString;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->outputimage_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstatus_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->status_:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputuuid_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputversion_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->version_:J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 4449
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 4457
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 3552
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 3777
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->memoizedIsInitialized:B

    .line 3553
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->version_:J

    .line 3554
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->status_:J

    .line 3555
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    .line 3556
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    .line 3557
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->outputimage_:Lcom/google/protobuf/ByteString;

    .line 3558
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

    .line 3569
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;-><init>()V

    .line 3570
    const/4 v0, 0x0

    .line 3572
    .local v0, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 3574
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v2, 0x0

    .line 3575
    .local v2, "done":Z
    :goto_0
    if-nez v2, :cond_1

    .line 3576
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3577
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3582
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto :goto_1

    .line 3611
    :sswitch_0
    iget v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    .line 3612
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->outputimage_:Lcom/google/protobuf/ByteString;

    goto :goto_2

    .line 3605
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 3606
    .local v4, "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    .line 3607
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    .line 3608
    goto :goto_2

    .line 3599
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 3600
    .restart local v4    # "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    .line 3601
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    .line 3602
    goto :goto_2

    .line 3594
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_3
    iget v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    .line 3595
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->status_:J

    .line 3596
    goto :goto_2

    .line 3589
    :sswitch_4
    iget v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    .line 3590
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->version_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3591
    goto :goto_2

    .line 3579
    :sswitch_5
    const/4 v2, 0x1

    .line 3580
    goto :goto_2

    .line 3582
    :goto_1
    if-nez v4, :cond_0

    .line 3584
    const/4 v2, 0x1

    .line 3616
    .end local v3    # "tag":I
    :cond_0
    :goto_2
    goto :goto_0

    .line 3623
    .end local v2    # "done":Z
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 3619
    :catch_0
    move-exception v2

    .line 3620
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v3, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3621
    invoke-virtual {v3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v3

    .line 3617
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catch_1
    move-exception v2

    .line 3618
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

    .line 3623
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_3
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3624
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->makeExtensionsImmutable()V

    .line 3625
    throw v2

    .line 3623
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3624
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->makeExtensionsImmutable()V

    .line 3625
    nop

    .line 3626
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x1a -> :sswitch_2
        0x22 -> :sswitch_1
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3550
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 3777
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->memoizedIsInitialized:B

    .line 3551
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 3544
    sget-boolean v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3544
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .locals 1

    .line 4453
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3629
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_response_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1

    .line 3971
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3974
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3945
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3946
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3945
    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3952
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3953
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3952
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3913
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3919
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3958
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3959
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3958
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3965
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3966
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3965
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3933
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3934
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3933
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3940
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3941
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3940
    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3923
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3929
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;",
            ">;"
        }
    .end annotation

    .line 4467
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 3838
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 3839
    return v0

    .line 3841
    :cond_0
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    if-nez v1, :cond_1

    .line 3842
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 3844
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 3846
    .local v1, "other":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    const/4 v2, 0x1

    .line 3847
    .local v2, "result":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasVersion()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasVersion()Z

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 3848
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3849
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getVersion()J

    move-result-wide v4

    .line 3850
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getVersion()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    move v2, v4

    .line 3852
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasStatus()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasStatus()Z

    move-result v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    move v2, v4

    .line 3853
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasStatus()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3854
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getStatus()J

    move-result-wide v4

    .line 3855
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getStatus()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    move v2, v4

    .line 3857
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasUuid()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasUuid()Z

    move-result v5

    if-ne v4, v5, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    move v2, v4

    .line 3858
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasUuid()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3859
    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getUuid()Ljava/lang/String;

    move-result-object v4

    .line 3860
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    move v2, v4

    .line 3862
    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasAnswer()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasAnswer()Z

    move-result v5

    if-ne v4, v5, :cond_b

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    move v2, v4

    .line 3863
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasAnswer()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3864
    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getAnswer()Ljava/lang/String;

    move-result-object v4

    .line 3865
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getAnswer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    move v2, v4

    .line 3867
    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasOutputimage()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasOutputimage()Z

    move-result v5

    if-ne v4, v5, :cond_e

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    :goto_8
    move v2, v4

    .line 3868
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasOutputimage()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3869
    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getOutputimage()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 3870
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getOutputimage()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    :goto_9
    move v2, v4

    .line 3872
    :cond_10
    if-eqz v2, :cond_11

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    .line 3873
    .end local v2    # "result":Z
    .local v0, "result":Z
    :goto_a
    return v0
.end method

.method public getAnswer()Ljava/lang/String;
    .locals 4

    .line 3732
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    .line 3733
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3734
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 3736
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 3738
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3739
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3740
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    .line 3742
    :cond_1
    return-object v2
.end method

.method public getAnswerBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3750
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    .line 3751
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3752
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 3753
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 3755
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    .line 3756
    return-object v1

    .line 3758
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .locals 1

    .line 4476
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3544
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3544
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public getOutputimage()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3774
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->outputimage_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;",
            ">;"
        }
    .end annotation

    .line 4472
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 3808
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->memoizedSize:I

    .line 3809
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3811
    :cond_0
    const/4 v0, 0x0

    .line 3812
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3813
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->version_:J

    .line 3814
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3816
    :cond_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 3817
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->status_:J

    .line 3818
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3820
    :cond_2
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 3821
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3823
    :cond_3
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 3824
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3826
    :cond_4
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 3827
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->outputimage_:Lcom/google/protobuf/ByteString;

    .line 3828
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3830
    :cond_5
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3831
    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->memoizedSize:I

    .line 3832
    return v0
.end method

.method public getStatus()J
    .locals 2

    .line 3675
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->status_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 3563
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 4

    .line 3690
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    .line 3691
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3692
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 3694
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 3696
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3697
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3698
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    .line 3700
    :cond_1
    return-object v2
.end method

.method public getUuidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3708
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    .line 3709
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3710
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 3711
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 3713
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    .line 3714
    return-object v1

    .line 3716
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getVersion()J
    .locals 2

    .line 3652
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->version_:J

    return-wide v0
.end method

.method public hasAnswer()Z
    .locals 2

    .line 3726
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

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

.method public hasOutputimage()Z
    .locals 2

    .line 3768
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .line 3665
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

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

.method public hasUuid()Z
    .locals 2

    .line 3684
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    .line 3646
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

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
    .locals 4

    .line 3878
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 3879
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->memoizedHashCode:I

    return v0

    .line 3881
    :cond_0
    const/16 v0, 0x29

    .line 3882
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x13

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 3883
    .end local v0    # "hash":I
    .local v1, "hash":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3884
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 3885
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 3886
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getVersion()J

    move-result-wide v2

    .line 3885
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 3888
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3889
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 3890
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 3891
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getStatus()J

    move-result-wide v2

    .line 3890
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 3893
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasUuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3894
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 3895
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 3897
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasAnswer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3898
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x4

    .line 3899
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getAnswer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 3901
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasOutputimage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3902
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x5

    .line 3903
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getOutputimage()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 3905
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_5
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 3906
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->memoizedHashCode:I

    .line 3907
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3634
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_response_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    .line 3635
    const-class v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 3634
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3779
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->memoizedIsInitialized:B

    .line 3780
    .local v0, "isInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 3781
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    .line 3783
    :cond_1
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->memoizedIsInitialized:B

    .line 3784
    return v1
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1

    .line 3969
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->newBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 3984
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder-IA;)V

    .line 3985
    .local v0, "builder":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3544
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->newBuilderForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3544
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3544
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->newBuilderForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 2

    .line 3977
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 3978
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;-><init>(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder-IA;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;-><init>(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder-IA;)V

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    .line 3977
    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3544
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3544
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

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

    .line 3789
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3790
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->version_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 3792
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3793
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->status_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 3795
    :cond_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 3796
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->uuid_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3798
    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 3799
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->answer_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3801
    :cond_3
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 3802
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->outputimage_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3804
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3805
    return-void
.end method
