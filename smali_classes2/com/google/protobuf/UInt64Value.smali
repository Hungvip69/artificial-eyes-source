.class public final Lcom/google/protobuf/UInt64Value;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "UInt64Value.java"

# interfaces
.implements Lcom/google/protobuf/UInt64ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/UInt64Value$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/UInt64Value;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/UInt64Value;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private value_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 421
    new-instance v0, Lcom/google/protobuf/UInt64Value;

    invoke-direct {v0}, Lcom/google/protobuf/UInt64Value;-><init>()V

    sput-object v0, Lcom/google/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/UInt64Value;

    .line 429
    new-instance v0, Lcom/google/protobuf/UInt64Value$1;

    invoke-direct {v0}, Lcom/google/protobuf/UInt64Value$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/UInt64Value;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 92
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/UInt64Value;->memoizedIsInitialized:B

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protobuf/UInt64Value;->value_:J

    .line 24
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/UInt64Value;-><init>()V

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
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/protobuf/UInt64Value;->value_:J
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
    invoke-virtual {p0}, Lcom/google/protobuf/UInt64Value;->makeExtensionsImmutable()V

    throw v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/UInt64Value;->makeExtensionsImmutable()V

    .line 65
    nop

    .line 66
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/UInt64Value$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/protobuf/UInt64Value$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/UInt64Value;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/google/protobuf/UInt64Value;->memoizedIsInitialized:B

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/UInt64Value$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "x1"    # Lcom/google/protobuf/UInt64Value$1;

    .line 14
    invoke-direct {p0, p1}, Lcom/google/protobuf/UInt64Value;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/protobuf/UInt64Value;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/UInt64Value;
    .param p1, "x1"    # J

    .line 14
    iput-wide p1, p0, Lcom/google/protobuf/UInt64Value;->value_:J

    return-wide p1
.end method

.method static synthetic access$400()Lcom/google/protobuf/Parser;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/protobuf/UInt64Value;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/UInt64Value;
    .locals 1

    .line 425
    sget-object v0, Lcom/google/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/UInt64Value;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 69
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_UInt64Value_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/UInt64Value$Builder;
    .locals 1

    .line 215
    sget-object v0, Lcom/google/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/UInt64Value;

    invoke-virtual {v0}, Lcom/google/protobuf/UInt64Value;->toBuilder()Lcom/google/protobuf/UInt64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/UInt64Value;)Lcom/google/protobuf/UInt64Value$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/UInt64Value;

    .line 218
    sget-object v0, Lcom/google/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/UInt64Value;

    invoke-virtual {v0}, Lcom/google/protobuf/UInt64Value;->toBuilder()Lcom/google/protobuf/UInt64Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/UInt64Value$Builder;->mergeFrom(Lcom/google/protobuf/UInt64Value;)Lcom/google/protobuf/UInt64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/UInt64Value;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    sget-object v0, Lcom/google/protobuf/UInt64Value;->PARSER:Lcom/google/protobuf/Parser;

    .line 190
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/UInt64Value;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/UInt64Value;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/google/protobuf/UInt64Value;->PARSER:Lcom/google/protobuf/Parser;

    .line 197
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/UInt64Value;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/UInt64Value;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/google/protobuf/UInt64Value;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/UInt64Value;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/UInt64Value;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/google/protobuf/UInt64Value;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/UInt64Value;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/UInt64Value;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/google/protobuf/UInt64Value;->PARSER:Lcom/google/protobuf/Parser;

    .line 203
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/UInt64Value;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/UInt64Value;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    sget-object v0, Lcom/google/protobuf/UInt64Value;->PARSER:Lcom/google/protobuf/Parser;

    .line 210
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/UInt64Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/UInt64Value;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    sget-object v0, Lcom/google/protobuf/UInt64Value;->PARSER:Lcom/google/protobuf/Parser;

    .line 178
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/UInt64Value;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/UInt64Value;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/google/protobuf/UInt64Value;->PARSER:Lcom/google/protobuf/Parser;

    .line 185
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/UInt64Value;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/UInt64Value;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/google/protobuf/UInt64Value;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/UInt64Value;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/UInt64Value;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/google/protobuf/UInt64Value;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/UInt64Value;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/UInt64Value;",
            ">;"
        }
    .end annotation

    .line 439
    sget-object v0, Lcom/google/protobuf/UInt64Value;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 126
    return v0

    .line 128
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/UInt64Value;

    if-nez v1, :cond_1

    .line 129
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 131
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/UInt64Value;

    .line 133
    .local v1, "other":Lcom/google/protobuf/UInt64Value;
    const/4 v2, 0x1

    .line 134
    .local v2, "result":Z
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/UInt64Value;->getValue()J

    move-result-wide v3

    .line 135
    invoke-virtual {v1}, Lcom/google/protobuf/UInt64Value;->getValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 136
    .end local v2    # "result":Z
    .local v0, "result":Z
    :goto_0
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/UInt64Value;->getDefaultInstanceForType()Lcom/google/protobuf/UInt64Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/UInt64Value;->getDefaultInstanceForType()Lcom/google/protobuf/UInt64Value;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/UInt64Value;
    .locals 1

    .line 448
    sget-object v0, Lcom/google/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/UInt64Value;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/UInt64Value;",
            ">;"
        }
    .end annotation

    .line 444
    sget-object v0, Lcom/google/protobuf/UInt64Value;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 110
    iget v0, p0, Lcom/google/protobuf/UInt64Value;->memoizedSize:I

    .line 111
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 114
    iget-wide v1, p0, Lcom/google/protobuf/UInt64Value;->value_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 115
    iget-wide v1, p0, Lcom/google/protobuf/UInt64Value;->value_:J

    .line 116
    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    :cond_1
    iput v0, p0, Lcom/google/protobuf/UInt64Value;->memoizedSize:I

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

.method public getValue()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/google/protobuf/UInt64Value;->value_:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 141
    iget v0, p0, Lcom/google/protobuf/UInt64Value;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 142
    iget v0, p0, Lcom/google/protobuf/UInt64Value;->memoizedHashCode:I

    return v0

    .line 144
    :cond_0
    const/16 v0, 0x29

    .line 145
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/UInt64Value;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

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

    .line 148
    invoke-virtual {p0}, Lcom/google/protobuf/UInt64Value;->getValue()J

    move-result-wide v2

    .line 147
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 149
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lcom/google/protobuf/UInt64Value;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 150
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iput v0, p0, Lcom/google/protobuf/UInt64Value;->memoizedHashCode:I

    .line 151
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 74
    sget-object v0, Lcom/google/protobuf/WrappersProto;->internal_static_google_protobuf_UInt64Value_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/UInt64Value$Builder;

    .line 75
    const-class v2, Lcom/google/protobuf/UInt64Value;

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 94
    iget-byte v0, p0, Lcom/google/protobuf/UInt64Value;->memoizedIsInitialized:B

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
    iput-byte v1, p0, Lcom/google/protobuf/UInt64Value;->memoizedIsInitialized:B

    .line 99
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/UInt64Value;->newBuilderForType()Lcom/google/protobuf/UInt64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/protobuf/UInt64Value;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/UInt64Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/UInt64Value;->newBuilderForType()Lcom/google/protobuf/UInt64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protobuf/UInt64Value$Builder;
    .locals 1

    .line 213
    invoke-static {}, Lcom/google/protobuf/UInt64Value;->newBuilder()Lcom/google/protobuf/UInt64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/UInt64Value$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 228
    new-instance v0, Lcom/google/protobuf/UInt64Value$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/UInt64Value$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/UInt64Value$1;)V

    .line 229
    .local v0, "builder":Lcom/google/protobuf/UInt64Value$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/UInt64Value;->toBuilder()Lcom/google/protobuf/UInt64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/protobuf/UInt64Value;->toBuilder()Lcom/google/protobuf/UInt64Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/UInt64Value$Builder;
    .locals 2

    .line 221
    sget-object v0, Lcom/google/protobuf/UInt64Value;->DEFAULT_INSTANCE:Lcom/google/protobuf/UInt64Value;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/UInt64Value$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/UInt64Value$Builder;-><init>(Lcom/google/protobuf/UInt64Value$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/UInt64Value$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/UInt64Value$Builder;-><init>(Lcom/google/protobuf/UInt64Value$1;)V

    .line 222
    invoke-virtual {v0, p0}, Lcom/google/protobuf/UInt64Value$Builder;->mergeFrom(Lcom/google/protobuf/UInt64Value;)Lcom/google/protobuf/UInt64Value$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-wide v0, p0, Lcom/google/protobuf/UInt64Value;->value_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 105
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/protobuf/UInt64Value;->value_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 107
    :cond_0
    return-void
.end method
