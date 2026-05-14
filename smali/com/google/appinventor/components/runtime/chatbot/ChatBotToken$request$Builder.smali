.class public final Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ChatBotToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$requestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;",
        ">;",
        "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$requestOrBuilder;"
    }
.end annotation


# instance fields
.field private apikey_:Ljava/lang/Object;

.field private bitField0_:I

.field private doimage_:Z

.field private inputimage_:Lcom/google/protobuf/ByteString;

.field private model_:Ljava/lang/Object;

.field private provider_:Ljava/lang/Object;

.field private question_:Ljava/lang/Object;

.field private system_:Ljava/lang/Object;

.field private tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$tokenOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

.field private uuid_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2532
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 2753
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    .line 2785
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2903
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2979
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 3055
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 3131
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3207
    const-string v1, "chatgpt"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3283
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3359
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->inputimage_:Lcom/google/protobuf/ByteString;

    .line 2533
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->maybeForceBuilderInitialization()V

    .line 2534
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 2538
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 2753
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    .line 2785
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2903
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2979
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 3055
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 3131
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3207
    const-string v1, "chatgpt"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3283
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3359
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->inputimage_:Lcom/google/protobuf/ByteString;

    .line 2539
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->maybeForceBuilderInitialization()V

    .line 2540
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2521
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_request_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$tokenOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2892
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2893
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2895
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v1

    .line 2896
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2897
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2898
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2900
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 2543
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2544
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2546
    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2670
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2515
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2515
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .locals 2

    .line 2586
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    .line 2587
    .local v0, "result":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2590
    return-object v0

    .line 2588
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 2515
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2515
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .locals 5

    .line 2594
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request-IA;)V

    .line 2595
    .local v0, "result":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2596
    .local v1, "from_bitField0_":I
    const/4 v2, 0x0

    .line 2597
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2598
    or-int/lit8 v2, v2, 0x1

    .line 2600
    :cond_0
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    invoke-static {v0, v3, v4}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputversion_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;J)V

    .line 2601
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2602
    or-int/lit8 v2, v2, 0x2

    .line 2604
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_2

    .line 2605
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputtoken_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)V

    goto :goto_0

    .line 2607
    :cond_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputtoken_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)V

    .line 2609
    :goto_0
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 2610
    or-int/lit8 v2, v2, 0x4

    .line 2612
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputuuid_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V

    .line 2613
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 2614
    or-int/lit8 v2, v2, 0x8

    .line 2616
    :cond_4
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputquestion_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V

    .line 2617
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 2618
    or-int/lit8 v2, v2, 0x10

    .line 2620
    :cond_5
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputsystem_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V

    .line 2621
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    .line 2622
    or-int/lit8 v2, v2, 0x20

    .line 2624
    :cond_6
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputapikey_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V

    .line 2625
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_7

    .line 2626
    or-int/lit8 v2, v2, 0x40

    .line 2628
    :cond_7
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputprovider_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V

    .line 2629
    and-int/lit16 v3, v1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_8

    .line 2630
    or-int/lit16 v2, v2, 0x80

    .line 2632
    :cond_8
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputmodel_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V

    .line 2633
    and-int/lit16 v3, v1, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_9

    .line 2634
    or-int/lit16 v2, v2, 0x100

    .line 2636
    :cond_9
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->inputimage_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputinputimage_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Lcom/google/protobuf/ByteString;)V

    .line 2637
    and-int/lit16 v3, v1, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_a

    .line 2638
    or-int/lit16 v2, v2, 0x200

    .line 2640
    :cond_a
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->doimage_:Z

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputdoimage_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Z)V

    .line 2641
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fputbitField0_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;I)V

    .line 2642
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onBuilt()V

    .line 2643
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2515
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2515
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 2

    .line 2548
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 2549
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    .line 2550
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2551
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    goto :goto_0

    .line 2554
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2556
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2557
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2558
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2559
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2560
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2561
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 2562
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2563
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 2564
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2565
    const-string v1, "chatgpt"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 2566
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2567
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 2568
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2569
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->inputimage_:Lcom/google/protobuf/ByteString;

    .line 2570
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->doimage_:Z

    .line 2572
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2573
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2515
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2515
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2515
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2515
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearApikey()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 3188
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3189
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getApikey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3190
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3191
    return-object p0
.end method

.method public clearDoimage()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 3420
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->doimage_:Z

    .line 3422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3423
    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 2656
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2515
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2515
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearInputimage()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 3388
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3389
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getInputimage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->inputimage_:Lcom/google/protobuf/ByteString;

    .line 3390
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3391
    return-object p0
.end method

.method public clearModel()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 3340
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3341
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3342
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3343
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .line 2660
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2515
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2515
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2515
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearProvider()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 3264
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3265
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getProvider()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3267
    return-object p0
.end method

.method public clearQuestion()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 3036
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3037
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getQuestion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 3038
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3039
    return-object p0
.end method

.method public clearSystem()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 3112
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3113
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getSystem()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 3114
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3115
    return-object p0
.end method

.method public clearToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 2858
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2860
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    goto :goto_0

    .line 2862
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2864
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2865
    return-object p0
.end method

.method public clearUuid()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 2960
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2961
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2962
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2963
    return-object p0
.end method

.method public clearVersion()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 2

    .line 2779
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2780
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    .line 2781
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2782
    return-object p0
.end method

.method public clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 2647
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2515
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2515
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2515
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2515
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2515
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

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

    .line 2515
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApikey()Ljava/lang/String;
    .locals 4

    .line 3142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3143
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3144
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 3146
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3147
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3148
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3150
    :cond_0
    return-object v2

    .line 3152
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getApikeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3161
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3162
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 3163
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 3165
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3166
    return-object v1

    .line 3168
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .locals 1

    .line 2582
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2515
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2515
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2578
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_request_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDoimage()Z
    .locals 1

    .line 3405
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->doimage_:Z

    return v0
.end method

.method public getInputimage()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3370
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->inputimage_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 4

    .line 3294
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3295
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3296
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 3298
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3299
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3300
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3302
    :cond_0
    return-object v2

    .line 3304
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getModelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3312
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3313
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3314
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 3315
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 3317
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3318
    return-object v1

    .line 3320
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getProvider()Ljava/lang/String;
    .locals 4

    .line 3218
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3219
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3220
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 3222
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3223
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3224
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3226
    :cond_0
    return-object v2

    .line 3228
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getProviderBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3237
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3238
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 3239
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 3241
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3242
    return-object v1

    .line 3244
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 4

    .line 2990
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2991
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2992
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2994
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2995
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2996
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2998
    :cond_0
    return-object v2

    .line 3000
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getQuestionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3008
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 3009
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3010
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 3011
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 3013
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 3014
    return-object v1

    .line 3016
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getSystem()Ljava/lang/String;
    .locals 4

    .line 3066
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 3067
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3068
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 3070
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3071
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3072
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 3074
    :cond_0
    return-object v2

    .line 3076
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getSystemBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3084
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 3085
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3086
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 3087
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 3089
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 3090
    return-object v1

    .line 3092
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    .locals 1

    .line 2798
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2799
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    :goto_0
    return-object v0

    .line 2801
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    return-object v0
.end method

.method public getTokenBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;
    .locals 1

    .line 2871
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2872
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2873
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    return-object v0
.end method

.method public getTokenOrBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$tokenOrBuilder;
    .locals 1

    .line 2879
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2880
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$tokenOrBuilder;

    return-object v0

    .line 2882
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    if-nez v0, :cond_1

    .line 2883
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2882
    :goto_0
    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 4

    .line 2914
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2915
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2916
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2918
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2919
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2920
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2922
    :cond_0
    return-object v2

    .line 2924
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getUuidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2932
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2933
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2934
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2935
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2937
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2938
    return-object v1

    .line 2940
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getVersion()J
    .locals 2

    .line 2764
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    return-wide v0
.end method

.method public hasApikey()Z
    .locals 2

    .line 3136
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

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

.method public hasDoimage()Z
    .locals 2

    .line 3399
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

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

.method public hasInputimage()Z
    .locals 2

    .line 3364
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

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

.method public hasModel()Z
    .locals 2

    .line 3288
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

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

.method public hasProvider()Z
    .locals 2

    .line 3212
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

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

.method public hasQuestion()Z
    .locals 2

    .line 2984
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

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

.method public hasSystem()Z
    .locals 2

    .line 3060
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

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

.method public hasToken()Z
    .locals 2

    .line 2792
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

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

    .line 2908
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

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

    .line 2758
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

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

    .line 2526
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_request_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2527
    const-class v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 2526
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 2731
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 2
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2682
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2683
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2684
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setVersion(J)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 2686
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2687
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeToken(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 2689
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasUuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2690
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2691
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fgetuuid_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2692
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2694
    :cond_3
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasQuestion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2695
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2696
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fgetquestion_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 2697
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2699
    :cond_4
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasSystem()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2700
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2701
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fgetsystem_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 2702
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2704
    :cond_5
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasApikey()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2705
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2706
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fgetapikey_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 2707
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2709
    :cond_6
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasProvider()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2710
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2711
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fgetprovider_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 2712
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2714
    :cond_7
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2715
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2716
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->-$$Nest$fgetmodel_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 2717
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2719
    :cond_8
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasInputimage()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2720
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getInputimage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setInputimage(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 2722
    :cond_9
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasDoimage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2723
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDoimage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setDoimage(Z)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 2725
    :cond_a
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->access$500(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 2726
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2727
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2738
    const/4 v0, 0x0

    .line 2740
    .local v0, "parsedMessage":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 2745
    if-eqz v0, :cond_0

    .line 2746
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 2749
    :cond_0
    return-object p0

    .line 2745
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2741
    :catch_0
    move-exception v1

    .line 2742
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-object v0, v2

    .line 2743
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "parsedMessage":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2745
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "parsedMessage":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_0
    if-eqz v0, :cond_1

    .line 2746
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 2748
    :cond_1
    throw v1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .line 2673
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    if-eqz v0, :cond_0

    .line 2674
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0

    .line 2676
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 2677
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2515
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2515
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

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

    .line 2515
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

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

    .line 2515
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2515
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

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

    .line 2515
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeToken(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 3
    .param p1, "value"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2838
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 2839
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2841
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2842
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2843
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->newBuilder(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    goto :goto_0

    .line 2845
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2847
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    goto :goto_1

    .line 2849
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2851
    :goto_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2852
    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 3432
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2515
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2515
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2515
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setApikey(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 3176
    if-eqz p1, :cond_0

    .line 3179
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3180
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3181
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3182
    return-object p0

    .line 3177
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setApikeyBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3198
    if-eqz p1, :cond_0

    .line 3201
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3202
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->apikey_:Ljava/lang/Object;

    .line 3203
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3204
    return-object p0

    .line 3199
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setDoimage(Z)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 3411
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3412
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->doimage_:Z

    .line 3413
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3414
    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2652
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2515
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2515
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setInputimage(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3376
    if-eqz p1, :cond_0

    .line 3379
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3380
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->inputimage_:Lcom/google/protobuf/ByteString;

    .line 3381
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3382
    return-object p0

    .line 3377
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setModel(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 3328
    if-eqz p1, :cond_0

    .line 3331
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3332
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3333
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3334
    return-object p0

    .line 3329
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setModelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3350
    if-eqz p1, :cond_0

    .line 3353
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3354
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->model_:Ljava/lang/Object;

    .line 3355
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3356
    return-object p0

    .line 3351
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setProvider(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 3252
    if-eqz p1, :cond_0

    .line 3255
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3256
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3257
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3258
    return-object p0

    .line 3253
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setProviderBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3274
    if-eqz p1, :cond_0

    .line 3277
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3278
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->provider_:Ljava/lang/Object;

    .line 3279
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3280
    return-object p0

    .line 3275
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setQuestion(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 3024
    if-eqz p1, :cond_0

    .line 3027
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3028
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 3029
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3030
    return-object p0

    .line 3025
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setQuestionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3046
    if-eqz p1, :cond_0

    .line 3049
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3050
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->question_:Ljava/lang/Object;

    .line 3051
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3052
    return-object p0

    .line 3047
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 2665
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2515
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2515
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSystem(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 3100
    if-eqz p1, :cond_0

    .line 3103
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3104
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 3105
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3106
    return-object p0

    .line 3101
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setSystemBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 3122
    if-eqz p1, :cond_0

    .line 3125
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 3126
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->system_:Ljava/lang/Object;

    .line 3127
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 3128
    return-object p0

    .line 3123
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setToken(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    .line 2825
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2826
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2827
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    goto :goto_0

    .line 2829
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;->build()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2831
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2832
    return-object p0
.end method

.method public setToken(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2808
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2809
    if-eqz p1, :cond_0

    .line 2812
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 2813
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    goto :goto_0

    .line 2810
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2815
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2817
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2818
    return-object p0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 3427
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2515
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2515
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUuid(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2948
    if-eqz p1, :cond_0

    .line 2951
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2952
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2953
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2954
    return-object p0

    .line 2949
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setUuidBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2970
    if-eqz p1, :cond_0

    .line 2973
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2974
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->uuid_:Ljava/lang/Object;

    .line 2975
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2976
    return-object p0

    .line 2971
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setVersion(J)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 2770
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->bitField0_:I

    .line 2771
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->version_:J

    .line 2772
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->onChanged()V

    .line 2773
    return-object p0
.end method
