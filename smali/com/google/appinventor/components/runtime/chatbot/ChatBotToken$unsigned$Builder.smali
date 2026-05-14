.class public final Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ChatBotToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsignedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;",
        ">;",
        "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsignedOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private generation_:J

.field private huuid_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 450
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 589
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 451
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->maybeForceBuilderInitialization()V

    .line 452
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 456
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 589
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 457
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->maybeForceBuilderInitialization()V

    .line 458
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 439
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_unsigned_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 461
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->access$000()Z

    .line 463
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .line 537
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    .locals 2

    .line 485
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    move-result-object v0

    .line 486
    .local v0, "result":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    return-object v0

    .line 487
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    .locals 5

    .line 493
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned-IA;)V

    .line 494
    .local v0, "result":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    .line 495
    .local v1, "from_bitField0_":I
    const/4 v2, 0x0

    .line 496
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 497
    or-int/lit8 v2, v2, 0x1

    .line 499
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->-$$Nest$fputhuuid_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;Ljava/lang/Object;)V

    .line 500
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 501
    or-int/lit8 v2, v2, 0x2

    .line 503
    :cond_1
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->version_:J

    invoke-static {v0, v3, v4}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->-$$Nest$fputversion_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;J)V

    .line 504
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 505
    or-int/lit8 v2, v2, 0x4

    .line 507
    :cond_2
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->generation_:J

    invoke-static {v0, v3, v4}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->-$$Nest$fputgeneration_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;J)V

    .line 508
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->-$$Nest$fputbitField0_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;I)V

    .line 509
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->onBuilt()V

    .line 510
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 3

    .line 465
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 466
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 467
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    .line 468
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->version_:J

    .line 469
    iget v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    .line 470
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->generation_:J

    .line 471
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    .line 472
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 523
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearGeneration()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 2

    .line 763
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    .line 764
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->generation_:J

    .line 765
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->onChanged()V

    .line 766
    return-object p0
.end method

.method public clearHuuid()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 1

    .line 666
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    .line 667
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->getHuuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 668
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->onChanged()V

    .line 669
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 1
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .line 527
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearVersion()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 2

    .line 731
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    .line 732
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->version_:J

    .line 733
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->onChanged()V

    .line 734
    return-object p0
.end method

.method public clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 1

    .line 514
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

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

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    .locals 1

    .line 481
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 477
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_unsigned_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getGeneration()J
    .locals 2

    .line 748
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->generation_:J

    return-wide v0
.end method

.method public getHuuid()Ljava/lang/String;
    .locals 4

    .line 608
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 609
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 610
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 612
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 614
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 616
    :cond_0
    return-object v2

    .line 618
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getHuuidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 631
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 632
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 633
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 635
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 636
    return-object v1

    .line 638
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getVersion()J
    .locals 2

    .line 708
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->version_:J

    return-wide v0
.end method

.method public hasGeneration()Z
    .locals 2

    .line 742
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

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

    .line 598
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

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

    .line 698
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 444
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_unsigned_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    .line 445
    const-class v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 444
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 567
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 2
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    .line 549
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 550
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->hasHuuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    .line 552
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->-$$Nest$fgethuuid_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 553
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->onChanged()V

    .line 555
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 556
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->setVersion(J)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    .line 558
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->hasGeneration()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 559
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->getGeneration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->setGeneration(J)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    .line 561
    :cond_3
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->access$100(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    .line 562
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->onChanged()V

    .line 563
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    const/4 v0, 0x0

    .line 576
    .local v0, "parsedMessage":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 581
    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    .line 585
    :cond_0
    return-object p0

    .line 581
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 577
    :catch_0
    move-exception v1

    .line 578
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    move-object v0, v2

    .line 579
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "parsedMessage":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 581
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "parsedMessage":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_0
    if-eqz v0, :cond_1

    .line 582
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    .line 584
    :cond_1
    throw v1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .line 540
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    if-eqz v0, :cond_0

    .line 541
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object v0

    return-object v0

    .line 543
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 544
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

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

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

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

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

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

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 1
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 775
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .line 519
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setGeneration(J)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 754
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    .line 755
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->generation_:J

    .line 756
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->onChanged()V

    .line 757
    return-object p0
.end method

.method public setHuuid(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 650
    if-eqz p1, :cond_0

    .line 653
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    .line 654
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 655
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->onChanged()V

    .line 656
    return-object p0

    .line 651
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setHuuidBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 680
    if-eqz p1, :cond_0

    .line 683
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    .line 684
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->huuid_:Ljava/lang/Object;

    .line 685
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->onChanged()V

    .line 686
    return-object p0

    .line 681
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 532
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 1
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 770
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVersion(J)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 718
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->bitField0_:I

    .line 719
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->version_:J

    .line 720
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$unsigned$Builder;->onChanged()V

    .line 721
    return-object p0
.end method
