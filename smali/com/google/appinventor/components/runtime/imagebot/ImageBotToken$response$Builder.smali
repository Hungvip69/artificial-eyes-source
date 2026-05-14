.class public final Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ImageBotToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$responseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;",
        ">;",
        "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$responseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private image_:Lcom/google/protobuf/ByteString;

.field private status_:J

.field private version_:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3552
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 3689
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->version_:J

    .line 3769
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->image_:Lcom/google/protobuf/ByteString;

    .line 3553
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->maybeForceBuilderInitialization()V

    .line 3554
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 3558
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 3689
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->version_:J

    .line 3769
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->image_:Lcom/google/protobuf/ByteString;

    .line 3559
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->maybeForceBuilderInitialization()V

    .line 3560
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3541
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->-$$Nest$sfgetinternal_static_response_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 3563
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->access$600()Z

    .line 3565
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .line 3639
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3535
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3535
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .locals 2

    .line 3587
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    move-result-object v0

    .line 3588
    .local v0, "result":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3591
    return-object v0

    .line 3589
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 3535
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->build()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3535
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->build()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .locals 5

    .line 3595
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response-IA;)V

    .line 3596
    .local v0, "result":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    iget v1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    .line 3597
    .local v1, "from_bitField0_":I
    const/4 v2, 0x0

    .line 3598
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3599
    or-int/lit8 v2, v2, 0x1

    .line 3601
    :cond_0
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->version_:J

    invoke-static {v0, v3, v4}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->-$$Nest$fputversion_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;J)V

    .line 3602
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3603
    or-int/lit8 v2, v2, 0x2

    .line 3605
    :cond_1
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->status_:J

    invoke-static {v0, v3, v4}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->-$$Nest$fputstatus_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;J)V

    .line 3606
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3607
    or-int/lit8 v2, v2, 0x4

    .line 3609
    :cond_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->image_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->-$$Nest$fputimage_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;Lcom/google/protobuf/ByteString;)V

    .line 3610
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->-$$Nest$fputbitField0_(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;I)V

    .line 3611
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->onBuilt()V

    .line 3612
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 3535
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3535
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 2

    .line 3567
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 3568
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->version_:J

    .line 3569
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    .line 3570
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->status_:J

    .line 3571
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    .line 3572
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->image_:Lcom/google/protobuf/ByteString;

    .line 3573
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    .line 3574
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3535
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3535
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3535
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3535
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->clear()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 3625
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3535
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3535
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearImage()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 1

    .line 3798
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    .line 3799
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->image_:Lcom/google/protobuf/ByteString;

    .line 3800
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->onChanged()V

    .line 3801
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 1
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .line 3629
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3535
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3535
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3535
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearStatus()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 2

    .line 3763
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    .line 3764
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->status_:J

    .line 3765
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->onChanged()V

    .line 3766
    return-object p0
.end method

.method public clearVersion()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 2

    .line 3715
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    .line 3716
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->version_:J

    .line 3717
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->onChanged()V

    .line 3718
    return-object p0
.end method

.method public clone()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 1

    .line 3616
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3535
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3535
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3535
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3535
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3535
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

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

    .line 3535
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->clone()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .locals 1

    .line 3583
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3535
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3535
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3579
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->-$$Nest$sfgetinternal_static_response_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getImage()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3780
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->image_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStatus()J
    .locals 2

    .line 3740
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->status_:J

    return-wide v0
.end method

.method public getVersion()J
    .locals 2

    .line 3700
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->version_:J

    return-wide v0
.end method

.method public hasImage()Z
    .locals 2

    .line 3774
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .line 3730
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    .line 3694
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

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

    .line 3546
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken;->-$$Nest$sfgetinternal_static_response_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    .line 3547
    const-class v2, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 3546
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 3667
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 2
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    .line 3651
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getDefaultInstance()Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3652
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3653
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->setVersion(J)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    .line 3655
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3656
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getStatus()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->setStatus(J)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    .line 3658
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3659
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->setImage(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    .line 3661
    :cond_3
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->access$700(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    .line 3662
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->onChanged()V

    .line 3663
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3674
    const/4 v0, 0x0

    .line 3676
    .local v0, "parsedMessage":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 3681
    if-eqz v0, :cond_0

    .line 3682
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    .line 3685
    :cond_0
    return-object p0

    .line 3681
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 3677
    :catch_0
    move-exception v1

    .line 3678
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    move-object v0, v2

    .line 3679
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "parsedMessage":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3681
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "parsedMessage":Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_0
    if-eqz v0, :cond_1

    .line 3682
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    .line 3684
    :cond_1
    throw v1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .line 3642
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    if-eqz v0, :cond_0

    .line 3643
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object v0

    return-object v0

    .line 3645
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 3646
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3535
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3535
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

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

    .line 3535
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

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

    .line 3535
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3535
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

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

    .line 3535
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 1
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 3810
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3535
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3535
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3535
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .line 3621
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3535
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3535
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setImage(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3786
    if-eqz p1, :cond_0

    .line 3789
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    .line 3790
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->image_:Lcom/google/protobuf/ByteString;

    .line 3791
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->onChanged()V

    .line 3792
    return-object p0

    .line 3787
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 3634
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3535
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3535
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setStatus(J)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 3750
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    .line 3751
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->status_:J

    .line 3752
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->onChanged()V

    .line 3753
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 1
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 3805
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3535
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3535
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVersion(J)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 3706
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->bitField0_:I

    .line 3707
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->version_:J

    .line 3708
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$response$Builder;->onChanged()V

    .line 3709
    return-object p0
.end method
