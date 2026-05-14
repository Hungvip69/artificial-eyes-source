.class public final Lcom/google/protobuf/Api;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Api.java"

# interfaces
.implements Lcom/google/protobuf/ApiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Api$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

.field public static final METHODS_FIELD_NUMBER:I = 0x2

.field public static final MIXINS_FIELD_NUMBER:I = 0x6

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Api;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_CONTEXT_FIELD_NUMBER:I = 0x5

.field public static final SYNTAX_FIELD_NUMBER:I = 0x7

.field public static final VERSION_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private methods_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Method;",
            ">;"
        }
    .end annotation
.end field

.field private mixins_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Mixin;",
            ">;"
        }
    .end annotation
.end field

.field private volatile name_:Ljava/lang/Object;

.field private options_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private sourceContext_:Lcom/google/protobuf/SourceContext;

.field private syntax_:I

.field private volatile version_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2442
    new-instance v0, Lcom/google/protobuf/Api;

    invoke-direct {v0}, Lcom/google/protobuf/Api;-><init>()V

    sput-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    .line 2450
    new-instance v0, Lcom/google/protobuf/Api$1;

    invoke-direct {v0}, Lcom/google/protobuf/Api$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 491
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/Api;->memoizedIsInitialized:B

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/Object;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Api;->methods_:Ljava/util/List;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Api;->options_:Ljava/util/List;

    .line 25
    iput-object v0, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/Object;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Ljava/util/List;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/Api;->syntax_:I

    .line 28
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/google/protobuf/Api;-><init>()V

    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "mutable_bitField0_":I
    const/4 v1, 0x0

    .line 43
    .local v1, "done":Z
    :goto_0
    const/16 v2, 0x20

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-nez v1, :cond_8

    .line 44
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 45
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 50
    invoke-virtual {p1, v5}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v2

    goto/16 :goto_1

    .line 108
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 110
    .local v6, "rawValue":I
    iput v6, p0, Lcom/google/protobuf/Api;->syntax_:I

    .line 111
    goto/16 :goto_2

    .line 99
    .end local v6    # "rawValue":I
    :sswitch_1
    and-int/lit8 v6, v0, 0x20

    if-eq v6, v2, :cond_0

    .line 100
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/Api;->mixins_:Ljava/util/List;

    .line 101
    or-int/lit8 v0, v0, 0x20

    .line 103
    :cond_0
    iget-object v6, p0, Lcom/google/protobuf/Api;->mixins_:Ljava/util/List;

    .line 104
    invoke-static {}, Lcom/google/protobuf/Mixin;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    .line 103
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    goto/16 :goto_2

    .line 86
    :sswitch_2
    const/4 v6, 0x0

    .line 87
    .local v6, "subBuilder":Lcom/google/protobuf/SourceContext$Builder;
    iget-object v7, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-eqz v7, :cond_1

    .line 88
    iget-object v7, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    invoke-virtual {v7}, Lcom/google/protobuf/SourceContext;->toBuilder()Lcom/google/protobuf/SourceContext$Builder;

    move-result-object v7

    move-object v6, v7

    .line 90
    :cond_1
    invoke-static {}, Lcom/google/protobuf/SourceContext;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/SourceContext;

    iput-object v7, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 91
    if-eqz v6, :cond_4

    .line 92
    iget-object v7, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    invoke-virtual {v6, v7}, Lcom/google/protobuf/SourceContext$Builder;->mergeFrom(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext$Builder;

    .line 93
    invoke-virtual {v6}, Lcom/google/protobuf/SourceContext$Builder;->buildPartial()Lcom/google/protobuf/SourceContext;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    goto :goto_2

    .line 80
    .end local v6    # "subBuilder":Lcom/google/protobuf/SourceContext$Builder;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "s":Ljava/lang/String;
    iput-object v6, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/Object;

    .line 83
    goto :goto_2

    .line 71
    .end local v6    # "s":Ljava/lang/String;
    :sswitch_4
    and-int/lit8 v6, v0, 0x4

    if-eq v6, v3, :cond_2

    .line 72
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/Api;->options_:Ljava/util/List;

    .line 73
    or-int/lit8 v0, v0, 0x4

    .line 75
    :cond_2
    iget-object v6, p0, Lcom/google/protobuf/Api;->options_:Ljava/util/List;

    .line 76
    invoke-static {}, Lcom/google/protobuf/Option;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    .line 75
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    goto :goto_2

    .line 62
    :sswitch_5
    and-int/lit8 v6, v0, 0x2

    if-eq v6, v4, :cond_3

    .line 63
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/Api;->methods_:Ljava/util/List;

    .line 64
    or-int/lit8 v0, v0, 0x2

    .line 66
    :cond_3
    iget-object v6, p0, Lcom/google/protobuf/Api;->methods_:Ljava/util/List;

    .line 67
    invoke-static {}, Lcom/google/protobuf/Method;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    .line 66
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_2

    .line 56
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v6

    .line 58
    .restart local v6    # "s":Ljava/lang/String;
    iput-object v6, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    goto :goto_2

    .line 47
    .end local v6    # "s":Ljava/lang/String;
    :sswitch_7
    const/4 v1, 0x1

    .line 48
    goto :goto_2

    .line 50
    :goto_1
    if-nez v2, :cond_4

    .line 51
    const/4 v1, 0x1

    .line 114
    .end local v5    # "tag":I
    :cond_4
    :goto_2
    goto/16 :goto_0

    .line 121
    .end local v1    # "done":Z
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v5, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 119
    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    .end local v0    # "mutable_bitField0_":I
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v5

    .line 115
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catch_1
    move-exception v1

    .line 116
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    .end local v0    # "mutable_bitField0_":I
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_3
    and-int/lit8 v5, v0, 0x2

    if-ne v5, v4, :cond_5

    .line 122
    iget-object v4, p0, Lcom/google/protobuf/Api;->methods_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/Api;->methods_:Ljava/util/List;

    .line 124
    :cond_5
    and-int/lit8 v4, v0, 0x4

    if-ne v4, v3, :cond_6

    .line 125
    iget-object v3, p0, Lcom/google/protobuf/Api;->options_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/Api;->options_:Ljava/util/List;

    .line 127
    :cond_6
    and-int/lit8 v3, v0, 0x20

    if-ne v3, v2, :cond_7

    .line 128
    iget-object v2, p0, Lcom/google/protobuf/Api;->mixins_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/Api;->mixins_:Ljava/util/List;

    .line 130
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->makeExtensionsImmutable()V

    throw v1

    .line 121
    :cond_8
    and-int/lit8 v1, v0, 0x2

    if-ne v1, v4, :cond_9

    .line 122
    iget-object v1, p0, Lcom/google/protobuf/Api;->methods_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Api;->methods_:Ljava/util/List;

    .line 124
    :cond_9
    and-int/lit8 v1, v0, 0x4

    if-ne v1, v3, :cond_a

    .line 125
    iget-object v1, p0, Lcom/google/protobuf/Api;->options_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Api;->options_:Ljava/util/List;

    .line 127
    :cond_a
    and-int/lit8 v1, v0, 0x20

    if-ne v1, v2, :cond_b

    .line 128
    iget-object v1, p0, Lcom/google/protobuf/Api;->mixins_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Api;->mixins_:Ljava/util/List;

    .line 130
    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->makeExtensionsImmutable()V

    .line 131
    nop

    .line 132
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0xa -> :sswitch_6
        0x12 -> :sswitch_5
        0x1a -> :sswitch_4
        0x22 -> :sswitch_3
        0x2a -> :sswitch_2
        0x32 -> :sswitch_1
        0x38 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Api$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/protobuf/Api$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Api;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 19
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    .line 491
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/Api;->memoizedIsInitialized:B

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/Api$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "x1"    # Lcom/google/protobuf/Api$1;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Api;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/google/protobuf/Api;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I

    .line 13
    iput p1, p0, Lcom/google/protobuf/Api;->bitField0_:I

    return p1
.end method

.method static synthetic access$1100()Lcom/google/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/protobuf/Api;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/protobuf/Api;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/protobuf/Api;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/protobuf/Api;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Ljava/util/List;

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Api;->methods_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/protobuf/Api;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/protobuf/Api;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Ljava/util/List;

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Api;->options_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/protobuf/Api;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/protobuf/Api;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protobuf/Api;Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Lcom/google/protobuf/SourceContext;

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/protobuf/Api;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/protobuf/Api;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # Ljava/util/List;

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Api;->mixins_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/protobuf/Api;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Api;

    .line 13
    iget v0, p0, Lcom/google/protobuf/Api;->syntax_:I

    return v0
.end method

.method static synthetic access$902(Lcom/google/protobuf/Api;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Api;
    .param p1, "x1"    # I

    .line 13
    iput p1, p0, Lcom/google/protobuf/Api;->syntax_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/Api;
    .locals 1

    .line 2446
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 135
    sget-object v0, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Api_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/Api$Builder;
    .locals 1

    .line 687
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->toBuilder()Lcom/google/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/Api;)Lcom/google/protobuf/Api$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/Api;

    .line 690
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    invoke-virtual {v0}, Lcom/google/protobuf/Api;->toBuilder()Lcom/google/protobuf/Api$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Api$Builder;->mergeFrom(Lcom/google/protobuf/Api;)Lcom/google/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    sget-object v0, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    .line 662
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 668
    sget-object v0, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    .line 669
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 629
    sget-object v0, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 635
    sget-object v0, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    sget-object v0, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    .line 675
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 681
    sget-object v0, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    .line 682
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    sget-object v0, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    .line 650
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 656
    sget-object v0, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    .line 657
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 639
    sget-object v0, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Api;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 645
    sget-object v0, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Api;",
            ">;"
        }
    .end annotation

    .line 2460
    sget-object v0, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 564
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 565
    return v0

    .line 567
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/Api;

    if-nez v1, :cond_1

    .line 568
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 570
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/Api;

    .line 572
    .local v1, "other":Lcom/google/protobuf/Api;
    const/4 v2, 0x1

    .line 573
    .local v2, "result":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getName()Ljava/lang/String;

    move-result-object v4

    .line 574
    invoke-virtual {v1}, Lcom/google/protobuf/Api;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 575
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getMethodsList()Ljava/util/List;

    move-result-object v4

    .line 576
    invoke-virtual {v1}, Lcom/google/protobuf/Api;->getMethodsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    move v2, v4

    .line 577
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getOptionsList()Ljava/util/List;

    move-result-object v4

    .line 578
    invoke-virtual {v1}, Lcom/google/protobuf/Api;->getOptionsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    move v2, v4

    .line 579
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getVersion()Ljava/lang/String;

    move-result-object v4

    .line 580
    invoke-virtual {v1}, Lcom/google/protobuf/Api;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    move v2, v4

    .line 581
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/protobuf/Api;->hasSourceContext()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/Api;->hasSourceContext()Z

    move-result v5

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    move v2, v4

    .line 582
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->hasSourceContext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 583
    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v4

    .line 584
    invoke-virtual {v1}, Lcom/google/protobuf/Api;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/protobuf/SourceContext;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    move v2, v4

    .line 586
    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getMixinsList()Ljava/util/List;

    move-result-object v4

    .line 587
    invoke-virtual {v1}, Lcom/google/protobuf/Api;->getMixinsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    :goto_6
    move v2, v4

    .line 588
    if-eqz v2, :cond_a

    iget v4, p0, Lcom/google/protobuf/Api;->syntax_:I

    iget v5, v1, Lcom/google/protobuf/Api;->syntax_:I

    if-ne v4, v5, :cond_a

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    .line 589
    .end local v2    # "result":Z
    .local v0, "result":Z
    :goto_7
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/Api;
    .locals 1

    .line 2469
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getDefaultInstanceForType()Lcom/google/protobuf/Api;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getDefaultInstanceForType()Lcom/google/protobuf/Api;

    move-result-object v0

    return-object v0
.end method

.method public getMethods(I)Lcom/google/protobuf/Method;
    .locals 1
    .param p1, "index"    # I

    .line 231
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Method;

    return-object v0
.end method

.method public getMethodsCount()I
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMethodsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Method;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Ljava/util/List;

    return-object v0
.end method

.method public getMethodsOrBuilder(I)Lcom/google/protobuf/MethodOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 242
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MethodOrBuilder;

    return-object v0
.end method

.method public getMethodsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/MethodOrBuilder;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/google/protobuf/Api;->methods_:Ljava/util/List;

    return-object v0
.end method

.method public getMixins(I)Lcom/google/protobuf/Mixin;
    .locals 1
    .param p1, "index"    # I

    .line 453
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Mixin;

    return-object v0
.end method

.method public getMixinsCount()I
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMixinsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Mixin;",
            ">;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Ljava/util/List;

    return-object v0
.end method

.method public getMixinsOrBuilder(I)Lcom/google/protobuf/MixinOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 464
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MixinOrBuilder;

    return-object v0
.end method

.method public getMixinsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/MixinOrBuilder;",
            ">;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/google/protobuf/Api;->mixins_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/Object;

    .line 158
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 159
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 161
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 163
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "s":Ljava/lang/String;
    iput-object v2, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/Object;

    .line 165
    return-object v2
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/Object;

    .line 179
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 180
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 181
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 183
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/Object;

    .line 184
    return-object v1

    .line 186
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getOptions(I)Lcom/google/protobuf/Option;
    .locals 1
    .param p1, "index"    # I

    .line 286
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Option;

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Ljava/util/List;

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Lcom/google/protobuf/OptionOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 297
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/OptionOrBuilder;

    return-object v0
.end method

.method public getOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/google/protobuf/Api;->options_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Api;",
            ">;"
        }
    .end annotation

    .line 2465
    sget-object v0, Lcom/google/protobuf/Api;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 527
    iget v0, p0, Lcom/google/protobuf/Api;->memoizedSize:I

    .line 528
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 530
    :cond_0
    const/4 v0, 0x0

    .line 531
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 532
    iget-object v1, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 534
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/Api;->methods_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 535
    iget-object v2, p0, Lcom/google/protobuf/Api;->methods_:Ljava/util/List;

    .line 536
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/protobuf/Api;->options_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 539
    iget-object v2, p0, Lcom/google/protobuf/Api;->options_:Ljava/util/List;

    .line 540
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 542
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 543
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 545
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-eqz v1, :cond_5

    .line 546
    nop

    .line 547
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 549
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/Api;->mixins_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 550
    iget-object v2, p0, Lcom/google/protobuf/Api;->mixins_:Ljava/util/List;

    .line 551
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 553
    .end local v1    # "i":I
    :cond_6
    iget v1, p0, Lcom/google/protobuf/Api;->syntax_:I

    sget-object v2, Lcom/google/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/google/protobuf/Syntax;

    invoke-virtual {v2}, Lcom/google/protobuf/Syntax;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 554
    iget v1, p0, Lcom/google/protobuf/Api;->syntax_:I

    .line 555
    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 557
    :cond_7
    iput v0, p0, Lcom/google/protobuf/Api;->memoizedSize:I

    .line 558
    return v0
.end method

.method public getSourceContext()Lcom/google/protobuf/SourceContext;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/SourceContext;->getDefaultInstance()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    :goto_0
    return-object v0
.end method

.method public getSourceContextOrBuilder()Lcom/google/protobuf/SourceContextOrBuilder;
    .locals 1

    .line 409
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Lcom/google/protobuf/Syntax;
    .locals 2

    .line 487
    iget v0, p0, Lcom/google/protobuf/Api;->syntax_:I

    invoke-static {v0}, Lcom/google/protobuf/Syntax;->valueOf(I)Lcom/google/protobuf/Syntax;

    move-result-object v0

    .line 488
    .local v0, "result":Lcom/google/protobuf/Syntax;
    if-nez v0, :cond_0

    sget-object v1, Lcom/google/protobuf/Syntax;->UNRECOGNIZED:Lcom/google/protobuf/Syntax;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 477
    iget v0, p0, Lcom/google/protobuf/Api;->syntax_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 33
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/Object;

    .line 328
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 329
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 331
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 333
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "s":Ljava/lang/String;
    iput-object v2, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/Object;

    .line 335
    return-object v2
.end method

.method public getVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/Object;

    .line 365
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 366
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 367
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 369
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/Object;

    .line 370
    return-object v1

    .line 372
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public hasSourceContext()Z
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 594
    iget v0, p0, Lcom/google/protobuf/Api;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 595
    iget v0, p0, Lcom/google/protobuf/Api;->memoizedHashCode:I

    return v0

    .line 597
    :cond_0
    const/16 v0, 0x29

    .line 598
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 599
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 600
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 601
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getMethodsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 602
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 603
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getMethodsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 605
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getOptionsCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 606
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 607
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getOptionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 609
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_2
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x4

    .line 610
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 611
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->hasSourceContext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 612
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x5

    .line 613
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/SourceContext;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 615
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getMixinsCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 616
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x6

    .line 617
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getMixinsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 619
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_4
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x7

    .line 620
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    iget v2, p0, Lcom/google/protobuf/Api;->syntax_:I

    add-int/2addr v1, v2

    .line 621
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lcom/google/protobuf/Api;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 622
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iput v0, p0, Lcom/google/protobuf/Api;->memoizedHashCode:I

    .line 623
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 140
    sget-object v0, Lcom/google/protobuf/ApiProto;->internal_static_google_protobuf_Api_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/Api$Builder;

    .line 141
    const-class v2, Lcom/google/protobuf/Api;

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 493
    iget-byte v0, p0, Lcom/google/protobuf/Api;->memoizedIsInitialized:B

    .line 494
    .local v0, "isInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 495
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    .line 497
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/Api;->memoizedIsInitialized:B

    .line 498
    return v1
.end method

.method public newBuilderForType()Lcom/google/protobuf/Api$Builder;
    .locals 1

    .line 685
    invoke-static {}, Lcom/google/protobuf/Api;->newBuilder()Lcom/google/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Api$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 700
    new-instance v0, Lcom/google/protobuf/Api$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/Api$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/Api$1;)V

    .line 701
    .local v0, "builder":Lcom/google/protobuf/Api$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->newBuilderForType()Lcom/google/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Api;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Api$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->newBuilderForType()Lcom/google/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/Api$Builder;
    .locals 2

    .line 693
    sget-object v0, Lcom/google/protobuf/Api;->DEFAULT_INSTANCE:Lcom/google/protobuf/Api;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Api$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Api$Builder;-><init>(Lcom/google/protobuf/Api$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/Api$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Api$Builder;-><init>(Lcom/google/protobuf/Api$1;)V

    .line 694
    invoke-virtual {v0, p0}, Lcom/google/protobuf/Api$Builder;->mergeFrom(Lcom/google/protobuf/Api;)Lcom/google/protobuf/Api$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->toBuilder()Lcom/google/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->toBuilder()Lcom/google/protobuf/Api$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/google/protobuf/Api;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 506
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/Api;->methods_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 507
    iget-object v1, p0, Lcom/google/protobuf/Api;->methods_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/Api;->options_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 510
    iget-object v1, p0, Lcom/google/protobuf/Api;->options_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 512
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 513
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/protobuf/Api;->version_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 515
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/Api;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-eqz v0, :cond_4

    .line 516
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/Api;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 518
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/google/protobuf/Api;->mixins_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 519
    iget-object v1, p0, Lcom/google/protobuf/Api;->mixins_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 521
    .end local v0    # "i":I
    :cond_5
    iget v0, p0, Lcom/google/protobuf/Api;->syntax_:I

    sget-object v1, Lcom/google/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/google/protobuf/Syntax;

    invoke-virtual {v1}, Lcom/google/protobuf/Syntax;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 522
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/protobuf/Api;->syntax_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 524
    :cond_6
    return-void
.end method
