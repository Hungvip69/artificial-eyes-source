.class public final Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ChatBotToken.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$requestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    }
.end annotation


# static fields
.field public static final APIKEY_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

.field public static final DOIMAGE_FIELD_NUMBER:I = 0x14

.field public static final INPUTIMAGE_FIELD_NUMBER:I = 0x9

.field public static final MODEL_FIELD_NUMBER:I = 0x8

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROVIDER_FIELD_NUMBER:I = 0x7

.field public static final QUESTION_FIELD_NUMBER:I = 0x4

.field public static final SYSTEM_FIELD_NUMBER:I = 0x5

.field public static final TOKEN_FIELD_NUMBER:I = 0x2

.field public static final UUID_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile apikey_:Ljava/lang/Object;

.field private bitField0_:I

.field private doimage_:Z

.field private inputimage_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private volatile model_:Ljava/lang/Object;

.field private volatile provider_:Ljava/lang/Object;

.field private volatile question_:Ljava/lang/Object;

.field private volatile system_:Ljava/lang/Object;

.field private token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

.field private volatile uuid_:Ljava/lang/Object;

.field private version_:J


# direct methods
.method static bridge synthetic -$$Nest$fgetapikey_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmodel_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprovider_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetquestion_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsystem_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuuid_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputapikey_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbitField0_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdoimage_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->doimage_:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputinputimage_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Lcom/google/protobuf/ByteString;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->inputimage_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmodel_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputprovider_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputquestion_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsystem_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtoken_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputuuid_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputversion_(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->version_:J

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 3442
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 3450
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1779
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 2226
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->memoizedIsInitialized:B

    .line 1780
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->version_:J

    .line 1781
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    .line 1782
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    .line 1783
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    .line 1784
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    .line 1785
    const-string v1, "chatgpt"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    .line 1786
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    .line 1787
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->inputimage_:Lcom/google/protobuf/ByteString;

    .line 1788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->doimage_:Z

    .line 1789
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1800
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;-><init>()V

    .line 1801
    const/4 v0, 0x0

    .line 1803
    .local v0, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 1805
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v2, 0x0

    .line 1806
    .local v2, "done":Z
    :goto_0
    if-nez v2, :cond_3

    .line 1807
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 1808
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1813
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_1

    .line 1879
    :sswitch_0
    iget v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    .line 1880
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->doimage_:Z

    goto/16 :goto_2

    .line 1874
    :sswitch_1
    iget v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    .line 1875
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->inputimage_:Lcom/google/protobuf/ByteString;

    .line 1876
    goto/16 :goto_2

    .line 1868
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1869
    .local v4, "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    .line 1870
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    .line 1871
    goto/16 :goto_2

    .line 1862
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1863
    .restart local v4    # "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    .line 1864
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    .line 1865
    goto/16 :goto_2

    .line 1856
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1857
    .restart local v4    # "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    .line 1858
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    .line 1859
    goto :goto_2

    .line 1850
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1851
    .restart local v4    # "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    .line 1852
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    .line 1853
    goto :goto_2

    .line 1844
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1845
    .restart local v4    # "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    .line 1846
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    .line 1847
    goto :goto_2

    .line 1838
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 1839
    .restart local v4    # "bs":Lcom/google/protobuf/ByteString;
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    .line 1840
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    .line 1841
    goto :goto_2

    .line 1825
    .end local v4    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_8
    const/4 v4, 0x0

    .line 1826
    .local v4, "subBuilder":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    .line 1827
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    move-result-object v5

    move-object v4, v5

    .line 1829
    :cond_0
    sget-object v5, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 1830
    if-eqz v4, :cond_1

    .line 1831
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;

    .line 1832
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;->buildPartial()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    .line 1834
    :cond_1
    iget v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    .line 1835
    goto :goto_2

    .line 1820
    .end local v4    # "subBuilder":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token$Builder;
    :sswitch_9
    iget v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    .line 1821
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->version_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1822
    goto :goto_2

    .line 1810
    :sswitch_a
    const/4 v2, 0x1

    .line 1811
    goto :goto_2

    .line 1813
    :goto_1
    if-nez v4, :cond_2

    .line 1815
    const/4 v2, 0x1

    .line 1884
    .end local v3    # "tag":I
    :cond_2
    :goto_2
    goto/16 :goto_0

    .line 1891
    .end local v2    # "done":Z
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1887
    :catch_0
    move-exception v2

    .line 1888
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v3, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1889
    invoke-virtual {v3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    .end local v0    # "mutable_bitField0_":I
    .end local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v3

    .line 1885
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catch_1
    move-exception v2

    .line 1886
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

    .line 1891
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local v1    # "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_3
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1892
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->makeExtensionsImmutable()V

    .line 1893
    throw v2

    .line 1891
    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1892
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->makeExtensionsImmutable()V

    .line 1893
    nop

    .line 1894
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x12 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x2a -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x4a -> :sswitch_1
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1777
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 2226
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->memoizedIsInitialized:B

    .line 1778
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 1771
    sget-boolean v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 1771
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .locals 1

    .line 3446
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1897
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_request_descriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 2496
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2499
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2470
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2471
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2470
    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2477
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2478
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2477
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2438
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2444
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2483
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2484
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2483
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2490
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2491
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2490
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2458
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2459
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2458
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2465
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    .line 2466
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2465
    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2448
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2454
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;",
            ">;"
        }
    .end annotation

    .line 3460
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2318
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 2319
    return v0

    .line 2321
    :cond_0
    instance-of v1, p1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    if-nez v1, :cond_1

    .line 2322
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2324
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    .line 2326
    .local v1, "other":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    const/4 v2, 0x1

    .line 2327
    .local v2, "result":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasVersion()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasVersion()Z

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 2328
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2329
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getVersion()J

    move-result-wide v4

    .line 2330
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getVersion()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    move v2, v4

    .line 2332
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasToken()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasToken()Z

    move-result v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    move v2, v4

    .line 2333
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasToken()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2334
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v4

    .line 2335
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    move v2, v4

    .line 2337
    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasUuid()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasUuid()Z

    move-result v5

    if-ne v4, v5, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    move v2, v4

    .line 2338
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasUuid()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2339
    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getUuid()Ljava/lang/String;

    move-result-object v4

    .line 2340
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getUuid()Ljava/lang/String;

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

    .line 2342
    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasQuestion()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasQuestion()Z

    move-result v5

    if-ne v4, v5, :cond_b

    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_6
    move v2, v4

    .line 2343
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasQuestion()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2344
    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getQuestion()Ljava/lang/String;

    move-result-object v4

    .line 2345
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getQuestion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    :goto_7
    move v2, v4

    .line 2347
    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasSystem()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasSystem()Z

    move-result v5

    if-ne v4, v5, :cond_e

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    :goto_8
    move v2, v4

    .line 2348
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasSystem()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2349
    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getSystem()Ljava/lang/String;

    move-result-object v4

    .line 2350
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getSystem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    :goto_9
    move v2, v4

    .line 2352
    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasApikey()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasApikey()Z

    move-result v5

    if-ne v4, v5, :cond_11

    const/4 v4, 0x1

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    :goto_a
    move v2, v4

    .line 2353
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasApikey()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2354
    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getApikey()Ljava/lang/String;

    move-result-object v4

    .line 2355
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getApikey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    goto :goto_b

    :cond_12
    const/4 v4, 0x0

    :goto_b
    move v2, v4

    .line 2357
    :cond_13
    if-eqz v2, :cond_14

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasProvider()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasProvider()Z

    move-result v5

    if-ne v4, v5, :cond_14

    const/4 v4, 0x1

    goto :goto_c

    :cond_14
    const/4 v4, 0x0

    :goto_c
    move v2, v4

    .line 2358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasProvider()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2359
    if-eqz v2, :cond_15

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getProvider()Ljava/lang/String;

    move-result-object v4

    .line 2360
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    goto :goto_d

    :cond_15
    const/4 v4, 0x0

    :goto_d
    move v2, v4

    .line 2362
    :cond_16
    if-eqz v2, :cond_17

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasModel()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasModel()Z

    move-result v5

    if-ne v4, v5, :cond_17

    const/4 v4, 0x1

    goto :goto_e

    :cond_17
    const/4 v4, 0x0

    :goto_e
    move v2, v4

    .line 2363
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasModel()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 2364
    if-eqz v2, :cond_18

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getModel()Ljava/lang/String;

    move-result-object v4

    .line 2365
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v4, 0x1

    goto :goto_f

    :cond_18
    const/4 v4, 0x0

    :goto_f
    move v2, v4

    .line 2367
    :cond_19
    if-eqz v2, :cond_1a

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasInputimage()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasInputimage()Z

    move-result v5

    if-ne v4, v5, :cond_1a

    const/4 v4, 0x1

    goto :goto_10

    :cond_1a
    const/4 v4, 0x0

    :goto_10
    move v2, v4

    .line 2368
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasInputimage()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2369
    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getInputimage()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 2370
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getInputimage()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_11

    :cond_1b
    const/4 v4, 0x0

    :goto_11
    move v2, v4

    .line 2372
    :cond_1c
    if-eqz v2, :cond_1d

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasDoimage()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasDoimage()Z

    move-result v5

    if-ne v4, v5, :cond_1d

    const/4 v4, 0x1

    goto :goto_12

    :cond_1d
    const/4 v4, 0x0

    :goto_12
    move v2, v4

    .line 2373
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasDoimage()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2374
    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDoimage()Z

    move-result v4

    .line 2375
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDoimage()Z

    move-result v5

    if-ne v4, v5, :cond_1e

    const/4 v4, 0x1

    goto :goto_13

    :cond_1e
    const/4 v4, 0x0

    :goto_13
    move v2, v4

    .line 2377
    :cond_1f
    if-eqz v2, :cond_20

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object v5, v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    goto :goto_14

    :cond_20
    const/4 v0, 0x0

    .line 2378
    .end local v2    # "result":Z
    .local v0, "result":Z
    :goto_14
    return v0
.end method

.method public getApikey()Ljava/lang/String;
    .locals 4

    .line 2082
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    .line 2083
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2084
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2086
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2088
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2089
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2090
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    .line 2092
    :cond_1
    return-object v2
.end method

.method public getApikeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    .line 2101
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2102
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2103
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2105
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    .line 2106
    return-object v1

    .line 2108
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;
    .locals 1

    .line 3469
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1771
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1771
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDefaultInstanceForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    move-result-object v0

    return-object v0
.end method

.method public getDoimage()Z
    .locals 1

    .line 2223
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->doimage_:Z

    return v0
.end method

.method public getInputimage()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2208
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->inputimage_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 4

    .line 2166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    .line 2167
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2168
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2170
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2172
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2173
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2174
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    .line 2176
    :cond_1
    return-object v2
.end method

.method public getModelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2184
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    .line 2185
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2186
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2187
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2189
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    .line 2190
    return-object v1

    .line 2192
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;",
            ">;"
        }
    .end annotation

    .line 3465
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 4

    .line 2124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    .line 2125
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2126
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2128
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2130
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2131
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2132
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    .line 2134
    :cond_1
    return-object v2
.end method

.method public getProviderBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    .line 2143
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2144
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2145
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2147
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    .line 2148
    return-object v1

    .line 2150
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 4

    .line 1998
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    .line 1999
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2000
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2002
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2004
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2005
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2006
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    .line 2008
    :cond_1
    return-object v2
.end method

.method public getQuestionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2016
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    .line 2017
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2018
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2019
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2021
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    .line 2022
    return-object v1

    .line 2024
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getSerializedSize()I
    .locals 5

    .line 2272
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->memoizedSize:I

    .line 2273
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2275
    :cond_0
    const/4 v0, 0x0

    .line 2276
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 2277
    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->version_:J

    .line 2278
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2280
    :cond_1
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 2281
    nop

    .line 2282
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2284
    :cond_2
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 2285
    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2287
    :cond_3
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 2288
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2290
    :cond_4
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 2291
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2293
    :cond_5
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    .line 2294
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2296
    :cond_6
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    .line 2297
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2299
    :cond_7
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 2300
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2302
    :cond_8
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    .line 2303
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->inputimage_:Lcom/google/protobuf/ByteString;

    .line 2304
    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2306
    :cond_9
    iget v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    .line 2307
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->doimage_:Z

    .line 2308
    const/16 v2, 0x14

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2310
    :cond_a
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2311
    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->memoizedSize:I

    .line 2312
    return v0
.end method

.method public getSystem()Ljava/lang/String;
    .locals 4

    .line 2040
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    .line 2041
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2042
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 2044
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2046
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2047
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2048
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    .line 2050
    :cond_1
    return-object v2
.end method

.method public getSystemBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2058
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    .line 2059
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2060
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 2061
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2063
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    .line 2064
    return-object v1

    .line 2066
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;
    .locals 1

    .line 1935
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    :goto_0
    return-object v0
.end method

.method public getTokenOrBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$tokenOrBuilder;
    .locals 1

    .line 1941
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->getDefaultInstance()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->token_:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    :goto_0
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1794
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 4

    .line 1956
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    .line 1957
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1958
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1960
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 1962
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1963
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1964
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    .line 1966
    :cond_1
    return-object v2
.end method

.method public getUuidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1974
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    .line 1975
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1976
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 1977
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 1979
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    .line 1980
    return-object v1

    .line 1982
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getVersion()J
    .locals 2

    .line 1920
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->version_:J

    return-wide v0
.end method

.method public hasApikey()Z
    .locals 2

    .line 2076
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

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

    .line 2217
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

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

    .line 2202
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

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

    .line 2160
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

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

    .line 2118
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

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

    .line 1992
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

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

    .line 2034
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

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

    .line 1929
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

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

    .line 1950
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

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

    .line 1914
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

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

    .line 2383
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 2384
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->memoizedHashCode:I

    return v0

    .line 2386
    :cond_0
    const/16 v0, 0x29

    .line 2387
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x13

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2388
    .end local v0    # "hash":I
    .local v1, "hash":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2389
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 2390
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 2391
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getVersion()J

    move-result-wide v2

    .line 2390
    invoke-static {v2, v3}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 2393
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2394
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 2395
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2397
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasUuid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2398
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 2399
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2401
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasQuestion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2402
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x4

    .line 2403
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2405
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasSystem()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2406
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x5

    .line 2407
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getSystem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2409
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_5
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasApikey()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2410
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x6

    .line 2411
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getApikey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2413
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_6
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasProvider()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2414
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x7

    .line 2415
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2417
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_7
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2418
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x8

    .line 2419
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2421
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_8
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasInputimage()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2422
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x9

    .line 2423
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getInputimage()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 2425
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_9
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->hasDoimage()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2426
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x14

    .line 2427
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    .line 2428
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getDoimage()Z

    move-result v2

    .line 2427
    invoke-static {v2}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 2430
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_a
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 2431
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iput v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->memoizedHashCode:I

    .line 2432
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1902
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken;->-$$Nest$sfgetinternal_static_request_fieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    .line 1903
    const-class v2, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    .line 1902
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 2228
    iget-byte v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->memoizedIsInitialized:B

    .line 2229
    .local v0, "isInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2230
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    .line 2232
    :cond_1
    iput-byte v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->memoizedIsInitialized:B

    .line 2233
    return v1
.end method

.method public newBuilderForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 1

    .line 2494
    invoke-static {}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->newBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 2509
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder-IA;)V

    .line 2510
    .local v0, "builder":Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1771
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->newBuilderForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1771
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1771
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->newBuilderForType()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;
    .locals 2

    .line 2502
    sget-object v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->DEFAULT_INSTANCE:Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 2503
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;-><init>(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder-IA;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;-><init>(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder-IA;)V

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;->mergeFrom(Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;)Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    .line 2502
    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1771
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1771
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->toBuilder()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request$Builder;

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

    .line 2238
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2239
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->version_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 2241
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2242
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->getToken()Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$token;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2244
    :cond_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 2245
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->uuid_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2247
    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 2248
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->question_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2250
    :cond_3
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 2251
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->system_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2253
    :cond_4
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    .line 2254
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->apikey_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2256
    :cond_5
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    .line 2257
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->provider_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2259
    :cond_6
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 2260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->model_:Ljava/lang/Object;

    invoke-static {p1, v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2262
    :cond_7
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    .line 2263
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->inputimage_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2265
    :cond_8
    iget v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    .line 2266
    const/16 v0, 0x14

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->doimage_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2268
    :cond_9
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/chatbot/ChatBotToken$request;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 2269
    return-void
.end method
