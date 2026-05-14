.class public final Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "TranslatorToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/translate/TranslatorToken$responseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/translate/TranslatorToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x2

.field public static final TRANSLATED_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private status_:J

.field private volatile translated_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method static bridge synthetic -$$Nest$fgettranslated_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbitField0_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstatus_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->status_:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtranslated_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputversion_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->version_:J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 3686
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .line 3694
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 3021
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 3176
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->memoizedIsInitialized:B

    .line 3022
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->version_:J

    .line 3023
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->status_:J

    .line 3024
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    .line 3025
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

    .line 3036
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;-><init>()V

    .line 3037
    const/4 v0, 0x0

    .line 3039
    .local v0, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 3041
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v2, 0x0

    .line 3042
    .local v2, "done":Z
    :goto_0
    if-nez v2, :cond_1

    .line 3043
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3044
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3049
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto :goto_1

    .line 3066
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 3067
    .local v4, "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    .line 3068
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    .line 3069
    goto :goto_2

    .line 3061
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_1
    iget v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    .line 3062
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->status_:J

    .line 3063
    goto :goto_2

    .line 3056
    :sswitch_2
    iget v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    .line 3057
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->version_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3058
    goto :goto_2

    .line 3046
    :sswitch_3
    const/4 v2, 0x1

    .line 3047
    goto :goto_2

    .line 3049
    :goto_1
    if-nez v4, :cond_0

    .line 3051
    const/4 v2, 0x1

    .line 3072
    .end local v3    # "tag":I
    :cond_0
    :goto_2
    goto :goto_0

    .line 3079
    .end local v2    # "done":Z
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 3075
    :catch_0
    move-exception v2

    .line 3076
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v3, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3077
    invoke-virtual {v3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v3

    .line 3073
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catch_1
    move-exception v2

    .line 3074
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

    .line 3079
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_3
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3080
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->makeExtensionsImmutable()V

    .line 3081
    throw v2

    .line 3079
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3080
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->makeExtensionsImmutable()V

    .line 3081
    nop

    .line 3082
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3019
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 3176
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->memoizedIsInitialized:B

    .line 3020
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 3013
    sget-boolean v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .line 3013
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .locals 1

    .line 3690
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3085
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->-$$Nest$sfgetinternal_static_response_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 1

    .line 3339
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .line 3342
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3313
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3314
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .line 3313
    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3320
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3321
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .line 3320
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3281
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3287
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3326
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3327
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .line 3326
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3333
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3334
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .line 3333
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3301
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3302
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .line 3301
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3308
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    .line 3309
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .line 3308
    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3291
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3297
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;",
            ">;"
        }
    .end annotation

    .line 3704
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 3224
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 3225
    return v0

    .line 3227
    :cond_0
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    if-nez v1, :cond_1

    .line 3228
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 3230
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    .line 3232
    .local v1, "other":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    const/4 v2, 0x1

    .line 3233
    .local v2, "result":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasVersion()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasVersion()Z

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 3234
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3235
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getVersion()J

    move-result-wide v4

    .line 3236
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getVersion()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    move v2, v4

    .line 3238
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasStatus()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasStatus()Z

    move-result v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    move v2, v4

    .line 3239
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasStatus()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3240
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getStatus()J

    move-result-wide v4

    .line 3241
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getStatus()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    move v2, v4

    .line 3243
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasTranslated()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasTranslated()Z

    move-result v5

    if-ne v4, v5, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    move v2, v4

    .line 3244
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasTranslated()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3245
    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getTranslated()Ljava/lang/String;

    move-result-object v4

    .line 3246
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getTranslated()Ljava/lang/String;

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

    .line 3248
    :cond_a
    if-eqz v2, :cond_b

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    .line 3249
    .end local v2    # "result":Z
    .local v0, "result":Z
    :goto_6
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;
    .locals 1

    .line 3713
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3013
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3013
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;",
            ">;"
        }
    .end annotation

    .line 3709
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 3201
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->memoizedSize:I

    .line 3202
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3204
    :cond_0
    const/4 v0, 0x0

    .line 3205
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3206
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->version_:J

    .line 3207
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3209
    :cond_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 3210
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->status_:J

    .line 3211
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3213
    :cond_2
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 3214
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3216
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3217
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->memoizedSize:I

    .line 3218
    return v0
.end method

.method public getStatus()J
    .locals 2

    .line 3131
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->status_:J

    return-wide v0
.end method

.method public getTranslated()Ljava/lang/String;
    .locals 4

    .line 3146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    .line 3147
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3148
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 3150
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 3152
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3153
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3154
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    .line 3156
    :cond_1
    return-object v2
.end method

.method public getTranslatedBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    .line 3165
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3166
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 3167
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 3169
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    .line 3170
    return-object v1

    .line 3172
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 3030
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 3108
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->version_:J

    return-wide v0
.end method

.method public hasStatus()Z
    .locals 2

    .line 3121
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

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

.method public hasTranslated()Z
    .locals 2

    .line 3140
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

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

    .line 3102
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

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

    .line 3254
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 3255
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->memoizedHashCode:I

    return v0

    .line 3257
    :cond_0
    const/16 v0, 0x29

    .line 3258
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x13

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 3259
    .end local v0    # "hash":I
    .local v1, "hash":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3260
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 3261
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 3262
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getVersion()J

    move-result-wide v2

    .line 3261
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 3264
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3265
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 3266
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 3267
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getStatus()J

    move-result-wide v2

    .line 3266
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 3269
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->hasTranslated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3270
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 3271
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->getTranslated()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 3273
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_3
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 3274
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->memoizedHashCode:I

    .line 3275
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3090
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->-$$Nest$sfgetinternal_static_response_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    .line 3091
    const-class v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 3090
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3178
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->memoizedIsInitialized:B

    .line 3179
    .local v0, "isInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 3180
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    .line 3182
    :cond_1
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->memoizedIsInitialized:B

    .line 3183
    return v1
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 1

    .line 3337
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->newBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 3352
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder-IA;)V

    .line 3353
    .local v0, "builder":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3013
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3013
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3013
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;
    .locals 2

    .line 3345
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 3346
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;-><init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder-IA;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;-><init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder-IA;)V

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    .line 3345
    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3013
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3013
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response$Builder;

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

    .line 3188
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3189
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->version_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 3191
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3192
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->status_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 3194
    :cond_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 3195
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->translated_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3197
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3198
    return-void
.end method
