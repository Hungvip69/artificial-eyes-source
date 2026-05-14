.class public final Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "TranslatorToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/translate/TranslatorToken$tokenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/translate/TranslatorToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

.field public static final GENERATION_FIELD_NUMBER:I = 0x3

.field public static final KEYID_FIELD_NUMBER:I = 0x2

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x5

.field public static final UNSIGNED_FIELD_NUMBER:I = 0x4

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private generation_:J

.field private keyid_:J

.field private memoizedIsInitialized:B

.field private signature_:Lcom/google/protobuf/ByteString;

.field private unsigned_:Lcom/google/protobuf/ByteString;

.field private version_:J


# direct methods
.method static bridge synthetic -$$Nest$fputbitField0_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgeneration_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->generation_:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputkeyid_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->keyid_:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsignature_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;Lcom/google/protobuf/ByteString;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->signature_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputunsigned_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;Lcom/google/protobuf/ByteString;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputversion_(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->version_:J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1608
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1616
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 877
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 1038
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->memoizedIsInitialized:B

    .line 878
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->version_:J

    .line 879
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->keyid_:J

    .line 880
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->generation_:J

    .line 881
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 882
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->signature_:Lcom/google/protobuf/ByteString;

    .line 883
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

    .line 894
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;-><init>()V

    .line 895
    const/4 v0, 0x0

    .line 897
    .local v0, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 899
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v2, 0x0

    .line 900
    .local v2, "done":Z
    :goto_0
    if-nez v2, :cond_1

    .line 901
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 902
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 907
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto :goto_1

    .line 934
    :sswitch_0
    iget v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    .line 935
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->signature_:Lcom/google/protobuf/ByteString;

    goto :goto_2

    .line 929
    :sswitch_1
    iget v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    .line 930
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 931
    goto :goto_2

    .line 924
    :sswitch_2
    iget v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    .line 925
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->generation_:J

    .line 926
    goto :goto_2

    .line 919
    :sswitch_3
    iget v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    .line 920
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->keyid_:J

    .line 921
    goto :goto_2

    .line 914
    :sswitch_4
    iget v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    .line 915
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->version_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    goto :goto_2

    .line 904
    :sswitch_5
    const/4 v2, 0x1

    .line 905
    goto :goto_2

    .line 907
    :goto_1
    if-nez v4, :cond_0

    .line 909
    const/4 v2, 0x1

    .line 939
    .end local v3    # "tag":I
    :cond_0
    :goto_2
    goto :goto_0

    .line 946
    .end local v2    # "done":Z
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 942
    :catch_0
    move-exception v2

    .line 943
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v3, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 944
    invoke-virtual {v3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v3

    .line 940
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catch_1
    move-exception v2

    .line 941
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

    .line 946
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_3
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 947
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->makeExtensionsImmutable()V

    .line 948
    throw v2

    .line 946
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 947
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->makeExtensionsImmutable()V

    .line 948
    nop

    .line 949
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x18 -> :sswitch_2
        0x22 -> :sswitch_1
        0x2a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 875
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 1038
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->memoizedIsInitialized:B

    .line 876
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 869
    sget-boolean v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 869
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .locals 1

    .line 1612
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 952
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->-$$Nest$sfgetinternal_static_token_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 1

    .line 1235
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1238
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1209
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1210
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1209
    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1216
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1217
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1216
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1177
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1183
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1222
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1223
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1222
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1229
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1230
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1229
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1197
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1198
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1197
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1204
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    .line 1205
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1204
    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1187
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1193
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;",
            ">;"
        }
    .end annotation

    .line 1626
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1101
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 1102
    return v0

    .line 1104
    :cond_0
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    if-nez v1, :cond_1

    .line 1105
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1107
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    .line 1109
    .local v1, "other":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    const/4 v2, 0x1

    .line 1110
    .local v2, "result":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasVersion()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasVersion()Z

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 1111
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1112
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getVersion()J

    move-result-wide v4

    .line 1113
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getVersion()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    move v2, v4

    .line 1115
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasKeyid()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasKeyid()Z

    move-result v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    move v2, v4

    .line 1116
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasKeyid()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1117
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getKeyid()J

    move-result-wide v4

    .line 1118
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getKeyid()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    move v2, v4

    .line 1120
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasGeneration()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasGeneration()Z

    move-result v5

    if-ne v4, v5, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    move v2, v4

    .line 1121
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasGeneration()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1122
    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getGeneration()J

    move-result-wide v4

    .line 1123
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getGeneration()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    move v2, v4

    .line 1125
    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasUnsigned()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasUnsigned()Z

    move-result v5

    if-ne v4, v5, :cond_b

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    move v2, v4

    .line 1126
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasUnsigned()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1127
    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getUnsigned()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1128
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getUnsigned()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    move v2, v4

    .line 1130
    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasSignature()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasSignature()Z

    move-result v5

    if-ne v4, v5, :cond_e

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    :goto_8
    move v2, v4

    .line 1131
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasSignature()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1132
    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1133
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    :goto_9
    move v2, v4

    .line 1135
    :cond_10
    if-eqz v2, :cond_11

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    .line 1136
    .end local v2    # "result":Z
    .local v0, "result":Z
    :goto_a
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;
    .locals 1

    .line 1635
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    move-result-object v0

    return-object v0
.end method

.method public getGeneration()J
    .locals 2

    .line 1005
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->generation_:J

    return-wide v0
.end method

.method public getKeyid()J
    .locals 2

    .line 990
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->keyid_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;",
            ">;"
        }
    .end annotation

    .line 1631
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1069
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->memoizedSize:I

    .line 1070
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1072
    :cond_0
    const/4 v0, 0x0

    .line 1073
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1074
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->version_:J

    .line 1075
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1077
    :cond_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 1078
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->keyid_:J

    .line 1079
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1081
    :cond_2
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 1082
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->generation_:J

    .line 1083
    const/4 v1, 0x3

    invoke-static {v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1085
    :cond_3
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 1086
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    .line 1087
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1089
    :cond_4
    iget v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 1090
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->signature_:Lcom/google/protobuf/ByteString;

    .line 1091
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1093
    :cond_5
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1094
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->memoizedSize:I

    .line 1095
    return v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUnsigned()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    .line 975
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->version_:J

    return-wide v0
.end method

.method public hasGeneration()Z
    .locals 2

    .line 999
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

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

.method public hasKeyid()Z
    .locals 2

    .line 984
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

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

.method public hasSignature()Z
    .locals 2

    .line 1029
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

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

.method public hasUnsigned()Z
    .locals 2

    .line 1014
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    .line 969
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

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

    .line 1141
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1142
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->memoizedHashCode:I

    return v0

    .line 1144
    :cond_0
    const/16 v0, 0x29

    .line 1145
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x13

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1146
    .end local v0    # "hash":I
    .local v1, "hash":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1147
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 1148
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 1149
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getVersion()J

    move-result-wide v2

    .line 1148
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 1151
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasKeyid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1152
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 1153
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 1154
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getKeyid()J

    move-result-wide v2

    .line 1153
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 1156
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasGeneration()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1157
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 1158
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 1159
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getGeneration()J

    move-result-wide v2

    .line 1158
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 1161
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasUnsigned()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1162
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x4

    .line 1163
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getUnsigned()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1165
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1166
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x5

    .line 1167
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1169
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_5
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1170
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iput v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->memoizedHashCode:I

    .line 1171
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 957
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken;->-$$Nest$sfgetinternal_static_token_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    .line 958
    const-class v2, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 957
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1040
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->memoizedIsInitialized:B

    .line 1041
    .local v0, "isInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 1042
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    .line 1044
    :cond_1
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->memoizedIsInitialized:B

    .line 1045
    return v1
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 1

    .line 1233
    invoke-static {}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->newBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 1248
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder-IA;)V

    .line 1249
    .local v0, "builder":Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 869
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->newBuilderForType()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;
    .locals 2

    .line 1241
    sget-object v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1242
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;-><init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder-IA;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;-><init>(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder-IA;)V

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    .line 1241
    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token$Builder;

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

    .line 1050
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1051
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->version_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1053
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1054
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->keyid_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1056
    :cond_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 1057
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->generation_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1059
    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 1060
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unsigned_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1062
    :cond_3
    iget v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 1063
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->signature_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1065
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$token;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1066
    return-void
.end method
