.class public final Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ChatBotToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$responseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;",
        ">;",
        "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$responseOrBuilder;"
    }
.end annotation


# instance fields
.field private answer_:Ljava/lang/Object;

.field private bitField0_:I

.field private outputimage_:Lcom/google/protobuf/ByteString;

.field private status_:J

.field private uuid_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 4007
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 4166
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->version_:J

    .line 4246
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4322
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 4398
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->outputimage_:Lcom/google/protobuf/ByteString;

    .line 4008
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->maybeForceBuilderInitialization()V

    .line 4009
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 4013
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 4166
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->version_:J

    .line 4246
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4322
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 4398
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->outputimage_:Lcom/google/protobuf/ByteString;

    .line 4014
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->maybeForceBuilderInitialization()V

    .line 4015
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3996
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_response_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 4018
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->access$600()Z

    .line 4020
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .line 4106
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3990
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3990
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .locals 2

    .line 4046
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    .line 4047
    .local v0, "result":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4050
    return-object v0

    .line 4048
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 3990
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3990
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .locals 5

    .line 4054
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response-IA;)V

    .line 4055
    .local v0, "result":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4056
    .local v1, "from_bitField0_":I
    const/4 v2, 0x0

    .line 4057
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4058
    or-int/lit8 v2, v2, 0x1

    .line 4060
    :cond_0
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->version_:J

    invoke-static {v0, v3, v4}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->-$$Nest$fputversion_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;J)V

    .line 4061
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4062
    or-int/lit8 v2, v2, 0x2

    .line 4064
    :cond_1
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->status_:J

    invoke-static {v0, v3, v4}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->-$$Nest$fputstatus_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;J)V

    .line 4065
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 4066
    or-int/lit8 v2, v2, 0x4

    .line 4068
    :cond_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->-$$Nest$fputuuid_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;Ljava/lang/Object;)V

    .line 4069
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 4070
    or-int/lit8 v2, v2, 0x8

    .line 4072
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->-$$Nest$fputanswer_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;Ljava/lang/Object;)V

    .line 4073
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 4074
    or-int/lit8 v2, v2, 0x10

    .line 4076
    :cond_4
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->outputimage_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->-$$Nest$fputoutputimage_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;Lcom/google/protobuf/ByteString;)V

    .line 4077
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->-$$Nest$fputbitField0_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;I)V

    .line 4078
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onBuilt()V

    .line 4079
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 3990
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3990
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 2

    .line 4022
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 4023
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->version_:J

    .line 4024
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4025
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->status_:J

    .line 4026
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4027
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4028
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4029
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 4030
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4031
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->outputimage_:Lcom/google/protobuf/ByteString;

    .line 4032
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4033
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3990
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3990
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3990
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3990
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAnswer()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1

    .line 4379
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4380
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getAnswer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 4381
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4382
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 4092
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3990
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3990
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .line 4096
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3990
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3990
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3990
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOutputimage()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1

    .line 4427
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4428
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getOutputimage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->outputimage_:Lcom/google/protobuf/ByteString;

    .line 4429
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4430
    return-object p0
.end method

.method public clearStatus()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 2

    .line 4240
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->status_:J

    .line 4242
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4243
    return-object p0
.end method

.method public clearUuid()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1

    .line 4303
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4304
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4305
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4306
    return-object p0
.end method

.method public clearVersion()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 2

    .line 4192
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4193
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->version_:J

    .line 4194
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4195
    return-object p0
.end method

.method public clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1

    .line 4083
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3990
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3990
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3990
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3990
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3990
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3990
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAnswer()Ljava/lang/String;
    .locals 4

    .line 4333
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 4334
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4335
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 4337
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4338
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4339
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 4341
    :cond_0
    return-object v2

    .line 4343
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getAnswerBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4351
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 4352
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4353
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 4354
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 4356
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 4357
    return-object v1

    .line 4359
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .locals 1

    .line 4042
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3990
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3990
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4038
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_response_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getOutputimage()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4409
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->outputimage_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStatus()J
    .locals 2

    .line 4217
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->status_:J

    return-wide v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 4

    .line 4257
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4258
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4259
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 4261
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4262
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4263
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4265
    :cond_0
    return-object v2

    .line 4267
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getUuidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4275
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4276
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4277
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 4278
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 4280
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4281
    return-object v1

    .line 4283
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getVersion()J
    .locals 2

    .line 4177
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->version_:J

    return-wide v0
.end method

.method public hasAnswer()Z
    .locals 2

    .line 4327
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

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

    .line 4403
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

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

    .line 4207
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

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

    .line 4251
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

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

    .line 4171
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 4001
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_response_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 4002
    const-class v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 4001
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 4144
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 2
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    .line 4118
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4119
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4120
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->setVersion(J)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    .line 4122
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4123
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getStatus()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->setStatus(J)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    .line 4125
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasUuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4126
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4127
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->-$$Nest$fgetuuid_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4128
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4130
    :cond_3
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasAnswer()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4131
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4132
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->-$$Nest$fgetanswer_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 4133
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4135
    :cond_4
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->hasOutputimage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4136
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->getOutputimage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->setOutputimage(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    .line 4138
    :cond_5
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->access$700(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    .line 4139
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4140
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4151
    const/4 v0, 0x0

    .line 4153
    .local v0, "parsedMessage":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 4158
    if-eqz v0, :cond_0

    .line 4159
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    .line 4162
    :cond_0
    return-object p0

    .line 4158
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 4154
    :catch_0
    move-exception v1

    .line 4155
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    move-object v0, v2

    .line 4156
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "parsedMessage":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4158
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "parsedMessage":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_0
    if-eqz v0, :cond_1

    .line 4159
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    .line 4161
    :cond_1
    throw v1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .line 4109
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    if-eqz v0, :cond_0

    .line 4110
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object v0

    return-object v0

    .line 4112
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 4113
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3990
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3990
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3990
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3990
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3990
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3990
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 4439
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3990
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3990
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3990
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAnswer(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4367
    if-eqz p1, :cond_0

    .line 4370
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4371
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 4372
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4373
    return-object p0

    .line 4368
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setAnswerBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 4389
    if-eqz p1, :cond_0

    .line 4392
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4393
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->answer_:Ljava/lang/Object;

    .line 4394
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4395
    return-object p0

    .line 4390
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .line 4088
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3990
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3990
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setOutputimage(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 4415
    if-eqz p1, :cond_0

    .line 4418
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4419
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->outputimage_:Lcom/google/protobuf/ByteString;

    .line 4420
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4421
    return-object p0

    .line 4416
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 4101
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3990
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3990
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setStatus(J)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 4227
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4228
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->status_:J

    .line 4229
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4230
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 4434
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3990
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3990
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUuid(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 4291
    if-eqz p1, :cond_0

    .line 4294
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4295
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4296
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4297
    return-object p0

    .line 4292
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setUuidBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 4313
    if-eqz p1, :cond_0

    .line 4316
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4317
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->uuid_:Ljava/lang/Object;

    .line 4318
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4319
    return-object p0

    .line 4314
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setVersion(J)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 4183
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->bitField0_:I

    .line 4184
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->version_:J

    .line 4185
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$response$Builder;->onChanged()V

    .line 4186
    return-object p0
.end method
