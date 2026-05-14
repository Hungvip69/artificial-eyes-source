.class public final Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "TranslatorToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/translate/TranslatorToken$requestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;",
        ">;",
        "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$requestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private languagecode_:Ljava/lang/Object;

.field private sourcelanguage_:Ljava/lang/Object;

.field private targetlanguage_:Ljava/lang/Object;

.field private tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

.field private totranslate_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2283
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 2464
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->version_:J

    .line 2496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2614
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2690
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2766
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2842
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2284
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->maybeForceBuilderInitialization()V

    .line 2285
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 2289
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 2464
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->version_:J

    .line 2496
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2614
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2690
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2766
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2842
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2290
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->maybeForceBuilderInitialization()V

    .line 2291
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2272
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->-$$Nest$sfgetinternal_static_request_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2603
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2604
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2606
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v1

    .line 2607
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2608
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2611
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 2294
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2295
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2297
    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2397
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2266
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2266
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .locals 2

    .line 2329
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    .line 2330
    .local v0, "result":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2333
    return-object v0

    .line 2331
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .locals 5

    .line 2337
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request-IA;)V

    .line 2338
    .local v0, "result":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2339
    .local v1, "from_bitField0_":I
    const/4 v2, 0x0

    .line 2340
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2341
    or-int/lit8 v2, v2, 0x1

    .line 2343
    :cond_0
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->version_:J

    invoke-static {v0, v3, v4}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->-$$Nest$fputversion_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;J)V

    .line 2344
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2345
    or-int/lit8 v2, v2, 0x2

    .line 2347
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_2

    .line 2348
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->-$$Nest$fputtoken_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)V

    goto :goto_0

    .line 2350
    :cond_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->-$$Nest$fputtoken_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)V

    .line 2352
    :goto_0
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 2353
    or-int/lit8 v2, v2, 0x4

    .line 2355
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->-$$Nest$fputtotranslate_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)V

    .line 2356
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 2357
    or-int/lit8 v2, v2, 0x8

    .line 2359
    :cond_4
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->-$$Nest$fputlanguagecode_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)V

    .line 2360
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 2361
    or-int/lit8 v2, v2, 0x10

    .line 2363
    :cond_5
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->-$$Nest$fputsourcelanguage_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)V

    .line 2364
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    .line 2365
    or-int/lit8 v2, v2, 0x20

    .line 2367
    :cond_6
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->-$$Nest$fputtargetlanguage_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;Ljava/lang/Object;)V

    .line 2368
    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->-$$Nest$fputbitField0_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;I)V

    .line 2369
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onBuilt()V

    .line 2370
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 2

    .line 2299
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 2300
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->version_:J

    .line 2301
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2302
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    goto :goto_0

    .line 2305
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2307
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2308
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2309
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2310
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2311
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2312
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2313
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2314
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2315
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2316
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clear()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 2383
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearLanguagecode()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1

    .line 2747
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2748
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getLanguagecode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2749
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2750
    return-object p0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .line 2387
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearSourcelanguage()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1

    .line 2823
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2824
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getSourcelanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2825
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2826
    return-object p0
.end method

.method public clearTargetlanguage()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1

    .line 2899
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2900
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTargetlanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2901
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2902
    return-object p0
.end method

.method public clearToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1

    .line 2569
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2571
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    goto :goto_0

    .line 2573
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->clear()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2575
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2576
    return-object p0
.end method

.method public clearTotranslate()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1

    .line 2671
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2672
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getTotranslate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2673
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2674
    return-object p0
.end method

.method public clearVersion()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 2

    .line 2490
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2491
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->version_:J

    .line 2492
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2493
    return-object p0
.end method

.method public clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1

    .line 2374
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

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

    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->clone()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .locals 1

    .line 2325
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2266
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2321
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->-$$Nest$sfgetinternal_static_request_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLanguagecode()Ljava/lang/String;
    .locals 4

    .line 2701
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2702
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2703
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2705
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2706
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2707
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2709
    :cond_0
    return-object v2

    .line 2711
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getLanguagecodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2719
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2720
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2721
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2722
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2724
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2725
    return-object v1

    .line 2727
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getSourcelanguage()Ljava/lang/String;
    .locals 4

    .line 2777
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2778
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2779
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2781
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2782
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2783
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2785
    :cond_0
    return-object v2

    .line 2787
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getSourcelanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2795
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2796
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2797
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2798
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2800
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2801
    return-object v1

    .line 2803
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getTargetlanguage()Ljava/lang/String;
    .locals 4

    .line 2853
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2854
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2855
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2857
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2858
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2859
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2861
    :cond_0
    return-object v2

    .line 2863
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getTargetlanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2871
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2872
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2873
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2874
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2876
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2877
    return-object v1

    .line 2879
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .locals 1

    .line 2509
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2510
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    :goto_0
    return-object v0

    .line 2512
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    return-object v0
.end method

.method public getTokenBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 1

    .line 2582
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2583
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2584
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->getTokenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    return-object v0
.end method

.method public getTokenOrBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;
    .locals 1

    .line 2590
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2591
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;

    return-object v0

    .line 2593
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    if-nez v0, :cond_1

    .line 2594
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2593
    :goto_0
    return-object v0
.end method

.method public getTotranslate()Ljava/lang/String;
    .locals 4

    .line 2625
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2626
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2627
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2629
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2630
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2631
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2633
    :cond_0
    return-object v2

    .line 2635
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getTotranslateBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2643
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2644
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2645
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2646
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2648
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2649
    return-object v1

    .line 2651
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getVersion()J
    .locals 2

    .line 2475
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->version_:J

    return-wide v0
.end method

.method public hasLanguagecode()Z
    .locals 2

    .line 2695
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

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

.method public hasSourcelanguage()Z
    .locals 2

    .line 2771
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

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

.method public hasTargetlanguage()Z
    .locals 2

    .line 2847
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

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

.method public hasToken()Z
    .locals 2

    .line 2503
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

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

.method public hasTotranslate()Z
    .locals 2

    .line 2619
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

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

    .line 2469
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

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

    .line 2277
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->-$$Nest$sfgetinternal_static_request_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2278
    const-class v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 2277
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 2442
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 2
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    .line 2409
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2410
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2411
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getVersion()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->setVersion(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    .line 2413
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2414
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->getToken()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeToken(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    .line 2416
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTotranslate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2417
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2418
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->-$$Nest$fgettotranslate_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2419
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2421
    :cond_3
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasLanguagecode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2422
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2423
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->-$$Nest$fgetlanguagecode_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2424
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2426
    :cond_4
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasSourcelanguage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2427
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2428
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->-$$Nest$fgetsourcelanguage_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2429
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2431
    :cond_5
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->hasTargetlanguage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2432
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2433
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->-$$Nest$fgettargetlanguage_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2434
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2436
    :cond_6
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->access$500(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    .line 2437
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2438
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2449
    const/4 v0, 0x0

    .line 2451
    .local v0, "parsedMessage":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 2456
    if-eqz v0, :cond_0

    .line 2457
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    .line 2460
    :cond_0
    return-object p0

    .line 2456
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2452
    :catch_0
    move-exception v1

    .line 2453
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    move-object v0, v2

    .line 2454
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "parsedMessage":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2456
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "parsedMessage":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_0
    if-eqz v0, :cond_1

    .line 2457
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    .line 2459
    :cond_1
    throw v1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .line 2400
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    if-eqz v0, :cond_0

    .line 2401
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object v0

    return-object v0

    .line 2403
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 2404
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2266
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

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

    .line 2266
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

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

    .line 2266
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

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

    .line 2266
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeToken(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 3
    .param p1, "value"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2549
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 2550
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2552
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2553
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2554
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->newBuilder(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    goto :goto_0

    .line 2556
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2558
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    goto :goto_1

    .line 2560
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2562
    :goto_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2563
    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 2924
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2379
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2266
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2266
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLanguagecode(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2735
    if-eqz p1, :cond_0

    .line 2738
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2739
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2740
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2741
    return-object p0

    .line 2736
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setLanguagecodeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2757
    if-eqz p1, :cond_0

    .line 2760
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2761
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->languagecode_:Ljava/lang/Object;

    .line 2762
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2763
    return-object p0

    .line 2758
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 2392
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2266
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2266
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSourcelanguage(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2811
    if-eqz p1, :cond_0

    .line 2814
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2815
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2816
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2817
    return-object p0

    .line 2812
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setSourcelanguageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2833
    if-eqz p1, :cond_0

    .line 2836
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2837
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->sourcelanguage_:Ljava/lang/Object;

    .line 2838
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2839
    return-object p0

    .line 2834
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setTargetlanguage(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2887
    if-eqz p1, :cond_0

    .line 2890
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2891
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2892
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2893
    return-object p0

    .line 2888
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setTargetlanguageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2909
    if-eqz p1, :cond_0

    .line 2912
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2913
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->targetlanguage_:Ljava/lang/Object;

    .line 2914
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2915
    return-object p0

    .line 2910
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setToken(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 2536
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2537
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2538
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    goto :goto_0

    .line 2540
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->build()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2542
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2543
    return-object p0
.end method

.method public setToken(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2519
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2520
    if-eqz p1, :cond_0

    .line 2523
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->token_:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 2524
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    goto :goto_0

    .line 2521
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2526
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->tokenBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 2528
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2529
    return-object p0
.end method

.method public setTotranslate(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2659
    if-eqz p1, :cond_0

    .line 2662
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2663
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2664
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2665
    return-object p0

    .line 2660
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setTotranslateBytes(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2681
    if-eqz p1, :cond_0

    .line 2684
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2685
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->totranslate_:Ljava/lang/Object;

    .line 2686
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2687
    return-object p0

    .line 2682
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 2919
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2266
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVersion(J)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;
    .locals 1
    .param p1, "value"    # J

    .line 2481
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->bitField0_:I

    .line 2482
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->version_:J

    .line 2483
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$request$Builder;->onChanged()V

    .line 2484
    return-object p0
.end method
