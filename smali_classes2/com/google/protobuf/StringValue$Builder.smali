.class public final Lcom/google/protobuf/StringValue$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "StringValue.java"

# interfaces
.implements Lcom/google/protobuf/StringValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/StringValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/protobuf/StringValue$Builder;",
        ">;",
        "Lcom/google/protobuf/StringValueOrBuilder;"
    }
.end annotation


# instance fields
.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 284
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 396
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/StringValue$Builder;->value_:Ljava/lang/Object;

    .line 285
    invoke-direct {p0}, Lcom/google/protobuf/StringValue$Builder;->maybeForceBuilderInitialization()V

    .line 286
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 290
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 396
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/StringValue$Builder;->value_:Ljava/lang/Object;

    .line 291
    invoke-direct {p0}, Lcom/google/protobuf/StringValue$Builder;->maybeForceBuilderInitialization()V

    .line 292
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/StringValue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;
    .param p2, "x1"    # Lcom/google/protobuf/StringValue$1;

    .line 267
    invoke-direct {p0, p1}, Lcom/google/protobuf/StringValue$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/StringValue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/StringValue$1;

    .line 267
    invoke-direct {p0}, Lcom/google/protobuf/StringValue$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 273
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_StringValue_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 294
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 297
    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/StringValue$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/StringValue$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/StringValue$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .line 353
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->build()Lcom/google/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->build()Lcom/google/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protobuf/StringValue;
    .locals 2

    .line 315
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->buildPartial()Lcom/google/protobuf/StringValue;

    move-result-object v0

    .line 316
    .local v0, "result":Lcom/google/protobuf/StringValue;
    invoke-virtual {v0}, Lcom/google/protobuf/StringValue;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    return-object v0

    .line 317
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/StringValue$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->buildPartial()Lcom/google/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->buildPartial()Lcom/google/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/StringValue;
    .locals 2

    .line 323
    new-instance v0, Lcom/google/protobuf/StringValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/StringValue;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/StringValue$1;)V

    .line 324
    .local v0, "result":Lcom/google/protobuf/StringValue;
    iget-object v1, p0, Lcom/google/protobuf/StringValue$Builder;->value_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/StringValue;->access$302(Lcom/google/protobuf/StringValue;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->onBuilt()V

    .line 326
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->clear()Lcom/google/protobuf/StringValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->clear()Lcom/google/protobuf/StringValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->clear()Lcom/google/protobuf/StringValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->clear()Lcom/google/protobuf/StringValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/StringValue$Builder;
    .locals 1

    .line 299
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    .line 300
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/StringValue$Builder;->value_:Ljava/lang/Object;

    .line 302
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/protobuf/StringValue$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/protobuf/StringValue$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/StringValue$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 339
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/protobuf/StringValue$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/protobuf/StringValue$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/protobuf/StringValue$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/StringValue$Builder;
    .locals 1
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .line 343
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public clearValue()Lcom/google/protobuf/StringValue$Builder;
    .locals 1

    .line 462
    invoke-static {}, Lcom/google/protobuf/StringValue;->getDefaultInstance()Lcom/google/protobuf/StringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/StringValue;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/StringValue$Builder;->value_:Ljava/lang/Object;

    .line 463
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->onChanged()V

    .line 464
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->clone()Lcom/google/protobuf/StringValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->clone()Lcom/google/protobuf/StringValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->clone()Lcom/google/protobuf/StringValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->clone()Lcom/google/protobuf/StringValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->clone()Lcom/google/protobuf/StringValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/StringValue$Builder;
    .locals 1

    .line 330
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->clone()Lcom/google/protobuf/StringValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/StringValue;
    .locals 1

    .line 311
    invoke-static {}, Lcom/google/protobuf/StringValue;->getDefaultInstance()Lcom/google/protobuf/StringValue;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 307
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_StringValue_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/google/protobuf/StringValue$Builder;->value_:Ljava/lang/Object;

    .line 406
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 407
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 409
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "s":Ljava/lang/String;
    iput-object v2, p0, Lcom/google/protobuf/StringValue$Builder;->value_:Ljava/lang/Object;

    .line 411
    return-object v2

    .line 413
    .end local v1    # "bs":Lcom/google/protobuf/ByteString;
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/google/protobuf/StringValue$Builder;->value_:Ljava/lang/Object;

    .line 426
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 427
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 428
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 430
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/protobuf/StringValue$Builder;->value_:Ljava/lang/Object;

    .line 431
    return-object v1

    .line 433
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 278
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_StringValue_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/StringValue;

    .line 279
    const-class v2, Lcom/google/protobuf/StringValue$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 375
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/StringValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/protobuf/StringValue$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/StringValue$Builder;

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

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/StringValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/StringValue$Builder;

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

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/StringValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/protobuf/StringValue$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/StringValue$Builder;

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

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/StringValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/StringValue$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    const/4 v0, 0x0

    .line 384
    .local v0, "parsedMessage":Lcom/google/protobuf/StringValue;
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/StringValue;->access$400()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/StringValue;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 389
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0, v0}, Lcom/google/protobuf/StringValue$Builder;->mergeFrom(Lcom/google/protobuf/StringValue;)Lcom/google/protobuf/StringValue$Builder;

    .line 393
    :cond_0
    return-object p0

    .line 389
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 385
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/StringValue;

    move-object v0, v2

    .line 387
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v2

    .end local v0    # "parsedMessage":Lcom/google/protobuf/StringValue;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "parsedMessage":Lcom/google/protobuf/StringValue;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_0
    if-eqz v0, :cond_1

    .line 390
    invoke-virtual {p0, v0}, Lcom/google/protobuf/StringValue$Builder;->mergeFrom(Lcom/google/protobuf/StringValue;)Lcom/google/protobuf/StringValue$Builder;

    :cond_1
    throw v1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/StringValue$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .line 356
    instance-of v0, p1, Lcom/google/protobuf/StringValue;

    if-eqz v0, :cond_0

    .line 357
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/StringValue;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/StringValue$Builder;->mergeFrom(Lcom/google/protobuf/StringValue;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object v0

    return-object v0

    .line 359
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 360
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/StringValue;)Lcom/google/protobuf/StringValue$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/StringValue;

    .line 365
    invoke-static {}, Lcom/google/protobuf/StringValue;->getDefaultInstance()Lcom/google/protobuf/StringValue;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 366
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/StringValue;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    invoke-static {p1}, Lcom/google/protobuf/StringValue;->access$300(Lcom/google/protobuf/StringValue;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/StringValue$Builder;->value_:Ljava/lang/Object;

    .line 368
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->onChanged()V

    .line 370
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->onChanged()V

    .line 371
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/protobuf/StringValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/protobuf/StringValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/protobuf/StringValue$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/StringValue$Builder;
    .locals 0
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 491
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/StringValue$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/StringValue$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/StringValue$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "value"    # Ljava/lang/Object;

    .line 335
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 267
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/StringValue$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 267
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/StringValue$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/StringValue$Builder;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 348
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/StringValue$Builder;

    return-object v0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/protobuf/StringValue$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/google/protobuf/StringValue$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/StringValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/StringValue$Builder;
    .locals 0
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;

    .line 486
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/protobuf/StringValue$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 445
    if-eqz p1, :cond_0

    .line 449
    iput-object p1, p0, Lcom/google/protobuf/StringValue$Builder;->value_:Ljava/lang/Object;

    .line 450
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->onChanged()V

    .line 451
    return-object p0

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public setValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/StringValue$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 475
    if-eqz p1, :cond_0

    .line 478
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 480
    iput-object p1, p0, Lcom/google/protobuf/StringValue$Builder;->value_:Ljava/lang/Object;

    .line 481
    invoke-virtual {p0}, Lcom/google/protobuf/StringValue$Builder;->onChanged()V

    .line 482
    return-object p0

    .line 476
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
