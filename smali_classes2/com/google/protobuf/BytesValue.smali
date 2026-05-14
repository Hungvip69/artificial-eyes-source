.class public final Lcom/google/protobuf/BytesValue;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "BytesValue.java"

# interfaces
.implements Lcom/google/protobuf/BytesValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/BytesValue$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/BytesValue;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/BytesValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private value_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 423
    new-instance v0, Lcom/google/protobuf/BytesValue;

    invoke-direct {v0}, Lcom/google/protobuf/BytesValue;-><init>()V

    sput-object v0, Lcom/google/protobuf/BytesValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/BytesValue;

    .line 431
    new-instance v0, Lcom/google/protobuf/BytesValue$1;

    invoke-direct {v0}, Lcom/google/protobuf/BytesValue$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/BytesValue;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 92
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/BytesValue;->memoizedIsInitialized:B

    .line 23
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protobuf/BytesValue;->value_:Lcom/google/protobuf/ByteString;

    .line 24
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/BytesValue;-><init>()V

    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "mutable_bitField0_":I
    const/4 v1, 0x0

    .line 39
    .local v1, "done":Z
    :goto_0
    if-nez v1, :cond_1

    .line 40
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 41
    .local v2, "tag":I
    sparse-switch v2, :sswitch_data_0

    .line 46
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v3

    goto :goto_1

    .line 53
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/BytesValue;->value_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 43
    :sswitch_1
    const/4 v1, 0x1

    .line 44
    goto :goto_2

    .line 46
    :goto_1
    if-nez v3, :cond_0

    .line 47
    const/4 v1, 0x1

    .line 57
    .end local v2    # "tag":I
    :cond_0
    :goto_2
    goto :goto_0

    .line 64
    .end local v1    # "done":Z
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v2, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 62
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    .end local v0    # "mutable_bitField0_":I
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v2

    .line 58
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catch_1
    move-exception v1

    .line 59
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    .end local v0    # "mutable_bitField0_":I
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue;->makeExtensionsImmutable()V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue;->makeExtensionsImmutable()V

    .line 65
    nop

    .line 66
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/BytesValue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/protobuf/BytesValue$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/BytesValue;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 20
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 92
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/BytesValue;->memoizedIsInitialized:B

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/BytesValue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "x1"    # Lcom/google/protobuf/BytesValue$1;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/protobuf/BytesValue;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/protobuf/BytesValue;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/BytesValue;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 14
    iput-object p1, p0, Lcom/google/protobuf/BytesValue;->value_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$400()Lcom/google/protobuf/Parser;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/protobuf/BytesValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/BytesValue;
    .locals 1

    .line 427
    sget-object v0, Lcom/google/protobuf/BytesValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/BytesValue;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 69
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_BytesValue_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/BytesValue$Builder;
    .locals 1

    .line 214
    sget-object v0, Lcom/google/protobuf/BytesValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/BytesValue;

    invoke-virtual {v0}, Lcom/google/protobuf/BytesValue;->toBuilder()Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/BytesValue;)Lcom/google/protobuf/BytesValue$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/BytesValue;

    .line 217
    sget-object v0, Lcom/google/protobuf/BytesValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/BytesValue;

    invoke-virtual {v0}, Lcom/google/protobuf/BytesValue;->toBuilder()Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/BytesValue$Builder;->mergeFrom(Lcom/google/protobuf/BytesValue;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/BytesValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/google/protobuf/BytesValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 189
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BytesValue;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/BytesValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/google/protobuf/BytesValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 196
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BytesValue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/BytesValue;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 156
    sget-object v0, Lcom/google/protobuf/BytesValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BytesValue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/BytesValue;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 162
    sget-object v0, Lcom/google/protobuf/BytesValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BytesValue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/BytesValue;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    sget-object v0, Lcom/google/protobuf/BytesValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 202
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BytesValue;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/BytesValue;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    sget-object v0, Lcom/google/protobuf/BytesValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 209
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BytesValue;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/BytesValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    sget-object v0, Lcom/google/protobuf/BytesValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 177
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BytesValue;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/BytesValue;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/google/protobuf/BytesValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 184
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BytesValue;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/BytesValue;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/google/protobuf/BytesValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BytesValue;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/BytesValue;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 172
    sget-object v0, Lcom/google/protobuf/BytesValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/BytesValue;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/BytesValue;",
            ">;"
        }
    .end annotation

    .line 441
    sget-object v0, Lcom/google/protobuf/BytesValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 126
    return v0

    .line 128
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/BytesValue;

    if-nez v1, :cond_1

    .line 129
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 131
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/BytesValue;

    .line 133
    .local v1, "other":Lcom/google/protobuf/BytesValue;
    const/4 v2, 0x1

    .line 134
    .local v2, "result":Z
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 135
    invoke-virtual {v1}, Lcom/google/protobuf/BytesValue;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 136
    .end local v2    # "result":Z
    .local v0, "result":Z
    :goto_0
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/BytesValue;
    .locals 1

    .line 450
    sget-object v0, Lcom/google/protobuf/BytesValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/BytesValue;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue;->getDefaultInstanceForType()Lcom/google/protobuf/BytesValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue;->getDefaultInstanceForType()Lcom/google/protobuf/BytesValue;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/BytesValue;",
            ">;"
        }
    .end annotation

    .line 446
    sget-object v0, Lcom/google/protobuf/BytesValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 110
    iget v0, p0, Lcom/google/protobuf/BytesValue;->memoizedSize:I

    .line 111
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/google/protobuf/BytesValue;->value_:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/google/protobuf/BytesValue;->value_:Lcom/google/protobuf/ByteString;

    .line 116
    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    :cond_1
    iput v0, p0, Lcom/google/protobuf/BytesValue;->memoizedSize:I

    .line 119
    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 29
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/protobuf/BytesValue;->value_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 141
    iget v0, p0, Lcom/google/protobuf/BytesValue;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 142
    iget v0, p0, Lcom/google/protobuf/BytesValue;->memoizedHashCode:I

    return v0

    .line 144
    :cond_0
    const/16 v0, 0x29

    .line 145
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 146
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 147
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 148
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lcom/google/protobuf/BytesValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 149
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iput v0, p0, Lcom/google/protobuf/BytesValue;->memoizedHashCode:I

    .line 150
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 74
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_BytesValue_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/BytesValue$Builder;

    .line 75
    const-class v2, Lcom/google/protobuf/BytesValue;

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 94
    iget-byte v0, p0, Lcom/google/protobuf/BytesValue;->memoizedIsInitialized:B

    .line 95
    .local v0, "isInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 96
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    .line 98
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/BytesValue;->memoizedIsInitialized:B

    .line 99
    return v1
.end method

.method public newBuilderForType()Lcom/google/protobuf/BytesValue$Builder;
    .locals 1

    .line 212
    invoke-static {}, Lcom/google/protobuf/BytesValue;->newBuilder()Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/BytesValue$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 227
    new-instance v0, Lcom/google/protobuf/BytesValue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/BytesValue$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/BytesValue$1;)V

    .line 228
    .local v0, "builder":Lcom/google/protobuf/BytesValue$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue;->newBuilderForType()Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/protobuf/BytesValue;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue;->newBuilderForType()Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/BytesValue$Builder;
    .locals 2

    .line 220
    sget-object v0, Lcom/google/protobuf/BytesValue;->DEFAULT_INSTANCE:Lcom/google/protobuf/BytesValue;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/BytesValue$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/BytesValue$Builder;-><init>(Lcom/google/protobuf/BytesValue$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/BytesValue$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/BytesValue$Builder;-><init>(Lcom/google/protobuf/BytesValue$1;)V

    .line 221
    invoke-virtual {v0, p0}, Lcom/google/protobuf/BytesValue$Builder;->mergeFrom(Lcom/google/protobuf/BytesValue;)Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue;->toBuilder()Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/BytesValue;->toBuilder()Lcom/google/protobuf/BytesValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/protobuf/BytesValue;->value_:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/protobuf/BytesValue;->value_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 107
    :cond_0
    return-void
.end method
