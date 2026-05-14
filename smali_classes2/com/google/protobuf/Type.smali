.class public final Lcom/google/protobuf/Type;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Type.java"

# interfaces
.implements Lcom/google/protobuf/TypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Type$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/Type;

.field public static final FIELDS_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final ONEOFS_FIELD_NUMBER:I = 0x3

.field public static final OPTIONS_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_CONTEXT_FIELD_NUMBER:I = 0x5

.field public static final SYNTAX_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private fields_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Field;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private oneofs_:Lcom/google/protobuf/LazyStringList;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1936
    new-instance v0, Lcom/google/protobuf/Type;

    invoke-direct {v0}, Lcom/google/protobuf/Type;-><init>()V

    sput-object v0, Lcom/google/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/protobuf/Type;

    .line 1944
    new-instance v0, Lcom/google/protobuf/Type$1;

    invoke-direct {v0}, Lcom/google/protobuf/Type$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/Type;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    .line 393
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/Type;->memoizedIsInitialized:B

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/Type;->name_:Ljava/lang/Object;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type;->fields_:Ljava/util/List;

    .line 24
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/Type;->oneofs_:Lcom/google/protobuf/LazyStringList;

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Type;->options_:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/Type;->syntax_:I

    .line 27
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

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/Type;-><init>()V

    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, "mutable_bitField0_":I
    const/4 v1, 0x0

    .line 42
    .local v1, "done":Z
    :goto_0
    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-nez v1, :cond_8

    .line 43
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 44
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 49
    invoke-virtual {p1, v5}, Lcom/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result v2

    goto/16 :goto_1

    .line 101
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 103
    .local v6, "rawValue":I
    iput v6, p0, Lcom/google/protobuf/Type;->syntax_:I

    .line 104
    goto/16 :goto_2

    .line 88
    .end local v6    # "rawValue":I
    :sswitch_1
    const/4 v6, 0x0

    .line 89
    .local v6, "subBuilder":Lcom/google/protobuf/SourceContext$Builder;
    iget-object v7, p0, Lcom/google/protobuf/Type;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-eqz v7, :cond_0

    .line 90
    iget-object v7, p0, Lcom/google/protobuf/Type;->sourceContext_:Lcom/google/protobuf/SourceContext;

    invoke-virtual {v7}, Lcom/google/protobuf/SourceContext;->toBuilder()Lcom/google/protobuf/SourceContext$Builder;

    move-result-object v7

    move-object v6, v7

    .line 92
    :cond_0
    invoke-static {}, Lcom/google/protobuf/SourceContext;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/SourceContext;

    iput-object v7, p0, Lcom/google/protobuf/Type;->sourceContext_:Lcom/google/protobuf/SourceContext;

    .line 93
    if-eqz v6, :cond_4

    .line 94
    iget-object v7, p0, Lcom/google/protobuf/Type;->sourceContext_:Lcom/google/protobuf/SourceContext;

    invoke-virtual {v6, v7}, Lcom/google/protobuf/SourceContext$Builder;->mergeFrom(Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext$Builder;

    .line 95
    invoke-virtual {v6}, Lcom/google/protobuf/SourceContext$Builder;->buildPartial()Lcom/google/protobuf/SourceContext;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protobuf/Type;->sourceContext_:Lcom/google/protobuf/SourceContext;

    goto :goto_2

    .line 79
    .end local v6    # "subBuilder":Lcom/google/protobuf/SourceContext$Builder;
    :sswitch_2
    and-int/lit8 v6, v0, 0x8

    if-eq v6, v2, :cond_1

    .line 80
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/Type;->options_:Ljava/util/List;

    .line 81
    or-int/lit8 v0, v0, 0x8

    .line 83
    :cond_1
    iget-object v6, p0, Lcom/google/protobuf/Type;->options_:Ljava/util/List;

    .line 84
    invoke-static {}, Lcom/google/protobuf/Option;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    .line 83
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    goto :goto_2

    .line 70
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "s":Ljava/lang/String;
    and-int/lit8 v7, v0, 0x4

    if-eq v7, v3, :cond_2

    .line 72
    new-instance v7, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v7}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/protobuf/Type;->oneofs_:Lcom/google/protobuf/LazyStringList;

    .line 73
    or-int/lit8 v0, v0, 0x4

    .line 75
    :cond_2
    iget-object v7, p0, Lcom/google/protobuf/Type;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v7, v6}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_2

    .line 61
    .end local v6    # "s":Ljava/lang/String;
    :sswitch_4
    and-int/lit8 v6, v0, 0x2

    if-eq v6, v4, :cond_3

    .line 62
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/protobuf/Type;->fields_:Ljava/util/List;

    .line 63
    or-int/lit8 v0, v0, 0x2

    .line 65
    :cond_3
    iget-object v6, p0, Lcom/google/protobuf/Type;->fields_:Ljava/util/List;

    .line 66
    invoke-static {}, Lcom/google/protobuf/Field;->parser()Lcom/google/protobuf/Parser;

    move-result-object v7

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    .line 65
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_2

    .line 55
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v6

    .line 57
    .restart local v6    # "s":Ljava/lang/String;
    iput-object v6, p0, Lcom/google/protobuf/Type;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    goto :goto_2

    .line 46
    .end local v6    # "s":Ljava/lang/String;
    :sswitch_6
    const/4 v1, 0x1

    .line 47
    goto :goto_2

    .line 49
    :goto_1
    if-nez v2, :cond_4

    .line 50
    const/4 v1, 0x1

    .line 107
    .end local v5    # "tag":I
    :cond_4
    :goto_2
    goto/16 :goto_0

    .line 114
    .end local v1    # "done":Z
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v5, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 112
    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    .end local v0    # "mutable_bitField0_":I
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v5

    .line 108
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :catch_1
    move-exception v1

    .line 109
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    .end local v0    # "mutable_bitField0_":I
    .end local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .end local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    .restart local v0    # "mutable_bitField0_":I
    .restart local p1    # "input":Lcom/google/protobuf/CodedInputStream;
    .restart local p2    # "extensionRegistry":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_3
    and-int/lit8 v5, v0, 0x2

    if-ne v5, v4, :cond_5

    .line 115
    iget-object v4, p0, Lcom/google/protobuf/Type;->fields_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/Type;->fields_:Ljava/util/List;

    .line 117
    :cond_5
    and-int/lit8 v4, v0, 0x4

    if-ne v4, v3, :cond_6

    .line 118
    iget-object v3, p0, Lcom/google/protobuf/Type;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protobuf/Type;->oneofs_:Lcom/google/protobuf/LazyStringList;

    .line 120
    :cond_6
    and-int/lit8 v3, v0, 0x8

    if-ne v3, v2, :cond_7

    .line 121
    iget-object v2, p0, Lcom/google/protobuf/Type;->options_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/Type;->options_:Ljava/util/List;

    .line 123
    :cond_7
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->makeExtensionsImmutable()V

    throw v1

    .line 114
    :cond_8
    and-int/lit8 v1, v0, 0x2

    if-ne v1, v4, :cond_9

    .line 115
    iget-object v1, p0, Lcom/google/protobuf/Type;->fields_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Type;->fields_:Ljava/util/List;

    .line 117
    :cond_9
    and-int/lit8 v1, v0, 0x4

    if-ne v1, v3, :cond_a

    .line 118
    iget-object v1, p0, Lcom/google/protobuf/Type;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Type;->oneofs_:Lcom/google/protobuf/LazyStringList;

    .line 120
    :cond_a
    and-int/lit8 v1, v0, 0x8

    if-ne v1, v2, :cond_b

    .line 121
    iget-object v1, p0, Lcom/google/protobuf/Type;->options_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Type;->options_:Ljava/util/List;

    .line 123
    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->makeExtensionsImmutable()V

    .line 124
    nop

    .line 125
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0xa -> :sswitch_5
        0x12 -> :sswitch_4
        0x1a -> :sswitch_3
        0x22 -> :sswitch_2
        0x2a -> :sswitch_1
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Type$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/protobuf/Type$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Type;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 393
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/protobuf/Type;->memoizedIsInitialized:B

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/Type$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .param p2, "x1"    # Lcom/google/protobuf/Type$1;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/protobuf/Type;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000()Lcom/google/protobuf/Parser;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/protobuf/Type;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/protobuf/Type;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Type;

    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Type;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/protobuf/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Type;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Type;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/protobuf/Type;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Type;

    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Type;->fields_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/protobuf/Type;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Type;
    .param p1, "x1"    # Ljava/util/List;

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Type;->fields_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/protobuf/Type;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Type;

    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Type;->oneofs_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/protobuf/Type;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Type;
    .param p1, "x1"    # Lcom/google/protobuf/LazyStringList;

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Type;->oneofs_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/protobuf/Type;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Type;

    .line 13
    iget-object v0, p0, Lcom/google/protobuf/Type;->options_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/protobuf/Type;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Type;
    .param p1, "x1"    # Ljava/util/List;

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Type;->options_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protobuf/Type;Lcom/google/protobuf/SourceContext;)Lcom/google/protobuf/SourceContext;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Type;
    .param p1, "x1"    # Lcom/google/protobuf/SourceContext;

    .line 13
    iput-object p1, p0, Lcom/google/protobuf/Type;->sourceContext_:Lcom/google/protobuf/SourceContext;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/protobuf/Type;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Type;

    .line 13
    iget v0, p0, Lcom/google/protobuf/Type;->syntax_:I

    return v0
.end method

.method static synthetic access$802(Lcom/google/protobuf/Type;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Type;
    .param p1, "x1"    # I

    .line 13
    iput p1, p0, Lcom/google/protobuf/Type;->syntax_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/protobuf/Type;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Type;
    .param p1, "x1"    # I

    .line 13
    iput p1, p0, Lcom/google/protobuf/Type;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/Type;
    .locals 1

    .line 1940
    sget-object v0, Lcom/google/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/protobuf/Type;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 128
    sget-object v0, Lcom/google/protobuf/TypeProto;->internal_static_google_protobuf_Type_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 583
    sget-object v0, Lcom/google/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/protobuf/Type;->toBuilder()Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/Type;)Lcom/google/protobuf/Type$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/Type;

    .line 586
    sget-object v0, Lcom/google/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/protobuf/Type;

    invoke-virtual {v0}, Lcom/google/protobuf/Type;->toBuilder()Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/Type$Builder;->mergeFrom(Lcom/google/protobuf/Type;)Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Type;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    sget-object v0, Lcom/google/protobuf/Type;->PARSER:Lcom/google/protobuf/Parser;

    .line 558
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Type;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Type;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    sget-object v0, Lcom/google/protobuf/Type;->PARSER:Lcom/google/protobuf/Parser;

    .line 565
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Type;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Type;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 525
    sget-object v0, Lcom/google/protobuf/Type;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Type;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Type;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 531
    sget-object v0, Lcom/google/protobuf/Type;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Type;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Type;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    sget-object v0, Lcom/google/protobuf/Type;->PARSER:Lcom/google/protobuf/Parser;

    .line 571
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Type;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Type;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    sget-object v0, Lcom/google/protobuf/Type;->PARSER:Lcom/google/protobuf/Parser;

    .line 578
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Type;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/Type;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    sget-object v0, Lcom/google/protobuf/Type;->PARSER:Lcom/google/protobuf/Parser;

    .line 546
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Type;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Type;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    sget-object v0, Lcom/google/protobuf/Type;->PARSER:Lcom/google/protobuf/Parser;

    .line 553
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Type;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/Type;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 535
    sget-object v0, Lcom/google/protobuf/Type;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Type;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Type;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 541
    sget-object v0, Lcom/google/protobuf/Type;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Type;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Type;",
            ">;"
        }
    .end annotation

    .line 1954
    sget-object v0, Lcom/google/protobuf/Type;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 464
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 465
    return v0

    .line 467
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/Type;

    if-nez v1, :cond_1

    .line 468
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 470
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/protobuf/Type;

    .line 472
    .local v1, "other":Lcom/google/protobuf/Type;
    const/4 v2, 0x1

    .line 473
    .local v2, "result":Z
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getName()Ljava/lang/String;

    move-result-object v4

    .line 474
    invoke-virtual {v1}, Lcom/google/protobuf/Type;->getName()Ljava/lang/String;

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

    .line 475
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getFieldsList()Ljava/util/List;

    move-result-object v4

    .line 476
    invoke-virtual {v1}, Lcom/google/protobuf/Type;->getFieldsList()Ljava/util/List;

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

    .line 477
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getOneofsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v4

    .line 478
    invoke-virtual {v1}, Lcom/google/protobuf/Type;->getOneofsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    move v2, v4

    .line 479
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getOptionsList()Ljava/util/List;

    move-result-object v4

    .line 480
    invoke-virtual {v1}, Lcom/google/protobuf/Type;->getOptionsList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    move v2, v4

    .line 481
    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/google/protobuf/Type;->hasSourceContext()Z

    move-result v4

    invoke-virtual {v1}, Lcom/google/protobuf/Type;->hasSourceContext()Z

    move-result v5

    if-ne v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    move v2, v4

    .line 482
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->hasSourceContext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 483
    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v4

    .line 484
    invoke-virtual {v1}, Lcom/google/protobuf/Type;->getSourceContext()Lcom/google/protobuf/SourceContext;

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

    .line 486
    :cond_8
    if-eqz v2, :cond_9

    iget v4, p0, Lcom/google/protobuf/Type;->syntax_:I

    iget v5, v1, Lcom/google/protobuf/Type;->syntax_:I

    if-ne v4, v5, :cond_9

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    .line 487
    .end local v2    # "result":Z
    .local v0, "result":Z
    :goto_6
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getDefaultInstanceForType()Lcom/google/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getDefaultInstanceForType()Lcom/google/protobuf/Type;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/Type;
    .locals 1

    .line 1963
    sget-object v0, Lcom/google/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/protobuf/Type;

    return-object v0
.end method

.method public getFields(I)Lcom/google/protobuf/Field;
    .locals 1
    .param p1, "index"    # I

    .line 222
    iget-object v0, p0, Lcom/google/protobuf/Type;->fields_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field;

    return-object v0
.end method

.method public getFieldsCount()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/google/protobuf/Type;->fields_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFieldsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Field;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/google/protobuf/Type;->fields_:Ljava/util/List;

    return-object v0
.end method

.method public getFieldsOrBuilder(I)Lcom/google/protobuf/FieldOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 233
    iget-object v0, p0, Lcom/google/protobuf/Type;->fields_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldOrBuilder;

    return-object v0
.end method

.method public getFieldsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/FieldOrBuilder;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/google/protobuf/Type;->fields_:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/google/protobuf/Type;->name_:Ljava/lang/Object;

    .line 150
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 151
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 153
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 155
    .local v1, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "s":Ljava/lang/String;
    iput-object v2, p0, Lcom/google/protobuf/Type;->name_:Ljava/lang/Object;

    .line 157
    return-object v2
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/google/protobuf/Type;->name_:Ljava/lang/Object;

    .line 170
    .local v0, "ref":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 171
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 172
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 174
    .local v1, "b":Lcom/google/protobuf/ByteString;
    iput-object v1, p0, Lcom/google/protobuf/Type;->name_:Ljava/lang/Object;

    .line 175
    return-object v1

    .line 177
    .end local v1    # "b":Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/ByteString;

    return-object v1
.end method

.method public getOneofs(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 267
    iget-object v0, p0, Lcom/google/protobuf/Type;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOneofsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 278
    iget-object v0, p0, Lcom/google/protobuf/Type;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOneofsCount()I
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/protobuf/Type;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getOneofsList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/google/protobuf/Type;->oneofs_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public bridge synthetic getOneofsList()Ljava/util/List;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getOneofsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getOptions(I)Lcom/google/protobuf/Option;
    .locals 1
    .param p1, "index"    # I

    .line 322
    iget-object v0, p0, Lcom/google/protobuf/Type;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Option;

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/google/protobuf/Type;->options_:Ljava/util/List;

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

    .line 291
    iget-object v0, p0, Lcom/google/protobuf/Type;->options_:Ljava/util/List;

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Lcom/google/protobuf/OptionOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 333
    iget-object v0, p0, Lcom/google/protobuf/Type;->options_:Ljava/util/List;

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

    .line 302
    iget-object v0, p0, Lcom/google/protobuf/Type;->options_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/Type;",
            ">;"
        }
    .end annotation

    .line 1959
    sget-object v0, Lcom/google/protobuf/Type;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 426
    iget v0, p0, Lcom/google/protobuf/Type;->memoizedSize:I

    .line 427
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 429
    :cond_0
    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 431
    iget-object v1, p0, Lcom/google/protobuf/Type;->name_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 433
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/protobuf/Type;->fields_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 434
    iget-object v3, p0, Lcom/google/protobuf/Type;->fields_:Ljava/util/List;

    .line 435
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .line 439
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/google/protobuf/Type;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 440
    iget-object v4, p0, Lcom/google/protobuf/Type;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v3}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/Type;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    .line 439
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 442
    .end local v3    # "i":I
    :cond_3
    add-int/2addr v0, v1

    .line 443
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getOneofsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 445
    .end local v1    # "dataSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/protobuf/Type;->options_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 446
    iget-object v2, p0, Lcom/google/protobuf/Type;->options_:Ljava/util/List;

    .line 447
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 449
    .end local v1    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/Type;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-eqz v1, :cond_5

    .line 450
    nop

    .line 451
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 453
    :cond_5
    iget v1, p0, Lcom/google/protobuf/Type;->syntax_:I

    sget-object v2, Lcom/google/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/google/protobuf/Syntax;

    invoke-virtual {v2}, Lcom/google/protobuf/Syntax;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 454
    iget v1, p0, Lcom/google/protobuf/Type;->syntax_:I

    .line 455
    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 457
    :cond_6
    iput v0, p0, Lcom/google/protobuf/Type;->memoizedSize:I

    .line 458
    return v0
.end method

.method public getSourceContext()Lcom/google/protobuf/SourceContext;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/google/protobuf/Type;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/SourceContext;->getDefaultInstance()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Type;->sourceContext_:Lcom/google/protobuf/SourceContext;

    :goto_0
    return-object v0
.end method

.method public getSourceContextOrBuilder()Lcom/google/protobuf/SourceContextOrBuilder;
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Lcom/google/protobuf/Syntax;
    .locals 2

    .line 389
    iget v0, p0, Lcom/google/protobuf/Type;->syntax_:I

    invoke-static {v0}, Lcom/google/protobuf/Syntax;->valueOf(I)Lcom/google/protobuf/Syntax;

    move-result-object v0

    .line 390
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

    .line 379
    iget v0, p0, Lcom/google/protobuf/Type;->syntax_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 32
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    return-object v0
.end method

.method public hasSourceContext()Z
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/google/protobuf/Type;->sourceContext_:Lcom/google/protobuf/SourceContext;

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

    .line 492
    iget v0, p0, Lcom/google/protobuf/Type;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 493
    iget v0, p0, Lcom/google/protobuf/Type;->memoizedHashCode:I

    return v0

    .line 495
    :cond_0
    const/16 v0, 0x29

    .line 496
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x13

    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 497
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x1

    .line 498
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 499
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getFieldsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 500
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x2

    .line 501
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getFieldsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 503
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getOneofsCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 504
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x3

    .line 505
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getOneofsList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 507
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getOptionsCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 508
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x4

    .line 509
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getOptionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 511
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->hasSourceContext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 512
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x5

    .line 513
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/SourceContext;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 515
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    :cond_4
    mul-int/lit8 v0, v1, 0x25

    add-int/lit8 v0, v0, 0x6

    .line 516
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x35

    iget v2, p0, Lcom/google/protobuf/Type;->syntax_:I

    add-int/2addr v1, v2

    .line 517
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1d

    iget-object v2, p0, Lcom/google/protobuf/Type;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 518
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    iput v0, p0, Lcom/google/protobuf/Type;->memoizedHashCode:I

    .line 519
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 133
    sget-object v0, Lcom/google/protobuf/TypeProto;->internal_static_google_protobuf_Type_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/Type$Builder;

    .line 134
    const-class v2, Lcom/google/protobuf/Type;

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 395
    iget-byte v0, p0, Lcom/google/protobuf/Type;->memoizedIsInitialized:B

    .line 396
    .local v0, "isInitialized":B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 397
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    .line 399
    :cond_1
    iput-byte v1, p0, Lcom/google/protobuf/Type;->memoizedIsInitialized:B

    .line 400
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->newBuilderForType()Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Type;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Type$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->newBuilderForType()Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protobuf/Type$Builder;
    .locals 1

    .line 581
    invoke-static {}, Lcom/google/protobuf/Type;->newBuilder()Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Type$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    .line 596
    new-instance v0, Lcom/google/protobuf/Type$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/Type$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/Type$1;)V

    .line 597
    .local v0, "builder":Lcom/google/protobuf/Type$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->toBuilder()Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->toBuilder()Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/Type$Builder;
    .locals 2

    .line 589
    sget-object v0, Lcom/google/protobuf/Type;->DEFAULT_INSTANCE:Lcom/google/protobuf/Type;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/Type$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Type$Builder;-><init>(Lcom/google/protobuf/Type$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/Type$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/Type$Builder;-><init>(Lcom/google/protobuf/Type$1;)V

    .line 590
    invoke-virtual {v0, p0}, Lcom/google/protobuf/Type$Builder;->mergeFrom(Lcom/google/protobuf/Type;)Lcom/google/protobuf/Type$Builder;

    move-result-object v0

    :goto_0
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

    .line 405
    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/google/protobuf/Type;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 408
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/Type;->fields_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/google/protobuf/Type;->fields_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/Type;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/google/protobuf/Type;->oneofs_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 414
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/google/protobuf/Type;->options_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 415
    iget-object v1, p0, Lcom/google/protobuf/Type;->options_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 417
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/Type;->sourceContext_:Lcom/google/protobuf/SourceContext;

    if-eqz v0, :cond_4

    .line 418
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/protobuf/Type;->getSourceContext()Lcom/google/protobuf/SourceContext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 420
    :cond_4
    iget v0, p0, Lcom/google/protobuf/Type;->syntax_:I

    sget-object v1, Lcom/google/protobuf/Syntax;->SYNTAX_PROTO2:Lcom/google/protobuf/Syntax;

    invoke-virtual {v1}, Lcom/google/protobuf/Syntax;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 421
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/protobuf/Type;->syntax_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 423
    :cond_5
    return-void
.end method
