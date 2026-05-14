.class public abstract Lcom/google/protobuf/AbstractMessage$Builder;
.super Lcom/google/protobuf/AbstractMessageLite$Builder;
.source "AbstractMessage.java"

# interfaces
.implements Lcom/google/protobuf/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/AbstractMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/google/protobuf/AbstractMessage$Builder<",
        "TBuilderType;>;>",
        "Lcom/google/protobuf/AbstractMessageLite$Builder;",
        "Lcom/google/protobuf/Message$Builder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 327
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessageLite$Builder;-><init>()V

    return-void
.end method

.method protected static newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;
    .locals 2
    .param p0, "message"    # Lcom/google/protobuf/Message;

    .line 487
    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    .line 488
    invoke-static {p0}, Lcom/google/protobuf/MessageReflection;->findMissingFields(Lcom/google/protobuf/MessageOrBuilder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/UninitializedMessageException;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 356
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 357
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p0, v2}, Lcom/google/protobuf/AbstractMessage$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    .line 358
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    goto :goto_0

    .line 359
    :cond_0
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->clear()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->clear()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 2
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$OneofDescriptor;",
            ")TBuilderType;"
        }
    .end annotation

    .line 350
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clearOneof() is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public abstract clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->clone()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->clone()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->clone()Lcom/google/protobuf/AbstractMessage$Builder;

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

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->clone()Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method dispose()V
    .locals 2

    .line 513
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findInitializationErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 364
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-static {p0}, Lcom/google/protobuf/MessageReflection;->findMissingFields(Lcom/google/protobuf/MessageOrBuilder;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFieldBuilder(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 2
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 466
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getFieldBuilder() called on an unsupported message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInitializationErrorString()Ljava/lang/String;
    .locals 1

    .line 369
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->findInitializationErrors()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/MessageReflection;->delimitWithCommas(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 2
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .line 343
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getOneofFieldDescriptor() is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeatedFieldBuilder(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Lcom/google/protobuf/Message$Builder;
    .locals 2
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I

    .line 472
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRepeatedFieldBuilder() called on an unsupported message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 2
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .line 337
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "hasOneof() is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected internalMergeFrom(Lcom/google/protobuf/AbstractMessageLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/AbstractMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/AbstractMessageLite;",
            ")TBuilderType;"
        }
    .end annotation

    .line 374
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/Message;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic internalMergeFrom(Lcom/google/protobuf/AbstractMessageLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->internalMergeFrom(Lcom/google/protobuf/AbstractMessageLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method markClean()V
    .locals 2

    .line 501
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 595
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method public mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 538
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "data"    # Lcom/google/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 546
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    nop

    .line 433
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 435
    .local v0, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v7

    .line 436
    .local v7, "tag":I
    if-nez v7, :cond_0

    .line 437
    goto :goto_1

    .line 440
    :cond_0
    new-instance v5, Lcom/google/protobuf/MessageReflection$BuilderAdapter;

    invoke-direct {v5, p0}, Lcom/google/protobuf/MessageReflection$BuilderAdapter;-><init>(Lcom/google/protobuf/Message$Builder;)V

    .line 442
    .local v5, "builderAdapter":Lcom/google/protobuf/MessageReflection$BuilderAdapter;
    nop

    .line 444
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v4

    .line 442
    move-object v1, p1

    move-object v2, v0

    move-object v3, p2

    move v6, v7

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/MessageReflection;->mergeFieldFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/MessageReflection$MergeTarget;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 448
    nop

    .line 451
    .end local v5    # "builderAdapter":Lcom/google/protobuf/MessageReflection$BuilderAdapter;
    .end local v7    # "tag":I
    :goto_1
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;

    .line 452
    return-object p0

    .line 450
    :cond_1
    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 6
    .param p1, "other"    # Lcom/google/protobuf/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Message;",
            ")TBuilderType;"
        }
    .end annotation

    .line 379
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-interface {p1}, Lcom/google/protobuf/Message;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 394
    invoke-interface {p1}, Lcom/google/protobuf/Message;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 395
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 396
    .local v2, "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 398
    .local v4, "element":Ljava/lang/Object;
    invoke-virtual {p0, v2, v4}, Lcom/google/protobuf/AbstractMessage$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    .line 399
    .end local v4    # "element":Ljava/lang/Object;
    goto :goto_1

    :cond_0
    goto :goto_3

    .line 400
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_3

    .line 401
    invoke-virtual {p0, v2}, Lcom/google/protobuf/AbstractMessage$Builder;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Message;

    .line 402
    .local v3, "existingValue":Lcom/google/protobuf/Message;
    invoke-interface {v3}, Lcom/google/protobuf/Message;->getDefaultInstanceForType()Lcom/google/protobuf/Message;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 403
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/google/protobuf/AbstractMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_2

    .line 405
    :cond_2
    nop

    .line 406
    invoke-interface {v3}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v4

    .line 407
    invoke-interface {v4, v3}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    move-result-object v4

    .line 408
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Message;

    invoke-interface {v4, v5}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    move-result-object v4

    .line 409
    invoke-interface {v4}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object v4

    .line 405
    invoke-virtual {p0, v2, v4}, Lcom/google/protobuf/AbstractMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    .line 411
    .end local v3    # "existingValue":Lcom/google/protobuf/Message;
    :goto_2
    goto :goto_3

    .line 412
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/protobuf/AbstractMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    .line 414
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .end local v2    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :goto_3
    goto :goto_0

    .line 416
    :cond_4
    invoke-interface {p1}, Lcom/google/protobuf/Message;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;

    .line 418
    return-object p0

    .line 380
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 589
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 552
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 559
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 575
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "data"    # [B
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 567
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/AbstractMessageLite$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

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

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

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

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

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

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([B)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BII)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BIILcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .param p1, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/UnknownFieldSet;",
            ")TBuilderType;"
        }
    .end annotation

    .line 457
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    nop

    .line 458
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 459
    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    .line 457
    invoke-virtual {p0, v0}, Lcom/google/protobuf/AbstractMessage$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;

    .line 461
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 326
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 478
    .local p0, "this":Lcom/google/protobuf/AbstractMessage$Builder;, "Lcom/google/protobuf/AbstractMessage$Builder<TBuilderType;>;"
    invoke-static {p0}, Lcom/google/protobuf/TextFormat;->printToString(Lcom/google/protobuf/MessageOrBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
