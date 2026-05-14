.class public abstract Lcom/google/protobuf/GeneratedMessageV3;
.super Lcom/google/protobuf/AbstractMessage;
.source "GeneratedMessageV3.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;,
        Lcom/google/protobuf/GeneratedMessageV3$CachedDescriptorRetriever;,
        Lcom/google/protobuf/GeneratedMessageV3$ExtensionDescriptorRetriever;,
        Lcom/google/protobuf/GeneratedMessageV3$ExtendableBuilder;,
        Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage;,
        Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessageOrBuilder;,
        Lcom/google/protobuf/GeneratedMessageV3$Builder;,
        Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;
    }
.end annotation


# static fields
.field protected static alwaysUseFieldBuilders:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessage;-><init>()V

    .line 77
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 78
    return-void
.end method

.method protected constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 80
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessageV3$Builder;, "Lcom/google/protobuf/GeneratedMessageV3$Builder<*>;"
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessage;-><init>()V

    .line 81
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 82
    return-void
.end method

.method static synthetic access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Class;

    .line 62
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/reflect/Method;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # [Ljava/lang/Object;

    .line 62
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/protobuf/ExtensionLite;)Lcom/google/protobuf/Extension;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/ExtensionLite;

    .line 62
    invoke-static {p0}, Lcom/google/protobuf/GeneratedMessageV3;->checkNotLite(Lcom/google/protobuf/ExtensionLite;)Lcom/google/protobuf/Extension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/protobuf/GeneratedMessageV3;Z)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessageV3;
    .param p1, "x1"    # Z

    .line 62
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static checkNotLite(Lcom/google/protobuf/ExtensionLite;)Lcom/google/protobuf/Extension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/protobuf/GeneratedMessageV3$ExtendableMessage<",
            "TMessageType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/ExtensionLite<",
            "TMessageType;TT;>;)",
            "Lcom/google/protobuf/Extension<",
            "TMessageType;TT;>;"
        }
    .end annotation

    .line 2676
    .local p0, "extension":Lcom/google/protobuf/ExtensionLite;, "Lcom/google/protobuf/ExtensionLite<TMessageType;TT;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/ExtensionLite;->isLite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2680
    move-object v0, p0

    check-cast v0, Lcom/google/protobuf/Extension;

    return-object v0

    .line 2677
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected non-lite extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static computeStringSize(ILjava/lang/Object;)I
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/Object;

    .line 2684
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2685
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 2687
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-static {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    return v0
.end method

.method protected static computeStringSizeNoTag(Ljava/lang/Object;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 2692
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2693
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2695
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v0

    return v0
.end method

.method static enableAlwaysUseFieldBuildersForTesting()V
    .locals 1

    .line 97
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 98
    return-void
.end method

.method private getAllFieldsMutable(Z)Ljava/util/Map;
    .locals 8
    .param p1, "getBytesForString"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 123
    .local v0, "result":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$000(Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;)Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 124
    .local v1, "descriptor":Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v2

    .line 126
    .local v2, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/Descriptors$FieldDescriptor;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 127
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 128
    .local v4, "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/google/protobuf/Descriptors$OneofDescriptor;

    move-result-object v5

    .line 134
    .local v5, "oneofDescriptor":Lcom/google/protobuf/Descriptors$OneofDescriptor;
    if-eqz v5, :cond_1

    .line 136
    invoke-virtual {v5}, Lcom/google/protobuf/Descriptors$OneofDescriptor;->getFieldCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v3, v6

    .line 137
    invoke-virtual {p0, v5}, Lcom/google/protobuf/GeneratedMessageV3;->hasOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 139
    goto :goto_2

    .line 142
    :cond_0
    invoke-virtual {p0, v5}, Lcom/google/protobuf/GeneratedMessageV3;->getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v4

    goto :goto_1

    .line 145
    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 146
    invoke-virtual {p0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 147
    .local v6, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 148
    invoke-virtual {v0, v4, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 152
    .end local v6    # "value":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_2
    invoke-virtual {p0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 153
    goto :goto_2

    .line 157
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v6

    sget-object v7, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v6, v7, :cond_4

    .line 158
    invoke-virtual {p0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->getFieldRaw(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 160
    :cond_4
    invoke-virtual {p0, v4}, Lcom/google/protobuf/GeneratedMessageV3;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .end local v4    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .end local v5    # "oneofDescriptor":Lcom/google/protobuf/Descriptors$OneofDescriptor;
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    .end local v3    # "i":I
    :cond_6
    return-object v0
.end method

.method private static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Class;

    .line 1637
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1638
    :catch_0
    move-exception v0

    .line 1639
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Generated message class \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1640
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" missing method \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 1649
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1654
    :catch_0
    move-exception v0

    .line 1655
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1656
    .local v1, "cause":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    .line 1658
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_0

    .line 1659
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 1661
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected exception thrown by generated accessor method."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1657
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 1650
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1651
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/Message;",
            ">(",
            "Lcom/google/protobuf/Parser<",
            "TM;>;",
            "Ljava/io/InputStream;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    .local p0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TM;>;"
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method protected static parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensions"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/Message;",
            ">(",
            "Lcom/google/protobuf/Parser<",
            "TM;>;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    .local p0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TM;>;"
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method protected static parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/Message;",
            ">(",
            "Lcom/google/protobuf/Parser<",
            "TM;>;",
            "Lcom/google/protobuf/CodedInputStream;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    .local p0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TM;>;"
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method protected static parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensions"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/Message;",
            ">(",
            "Lcom/google/protobuf/Parser<",
            "TM;>;",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    .local p0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TM;>;"
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method protected static parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/Message;",
            ">(",
            "Lcom/google/protobuf/Parser<",
            "TM;>;",
            "Ljava/io/InputStream;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    .local p0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TM;>;"
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method protected static parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "extensions"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/protobuf/Message;",
            ">(",
            "Lcom/google/protobuf/Parser<",
            "TM;>;",
            "Ljava/io/InputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    .local p0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<TM;>;"
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method protected static writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V
    .locals 1
    .param p0, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2701
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2702
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 2704
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2706
    :goto_0
    return-void
.end method

.method protected static writeStringNoTag(Lcom/google/protobuf/CodedOutputStream;Ljava/lang/Object;)V
    .locals 1
    .param p0, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2710
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2711
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    goto :goto_0

    .line 2713
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    .line 2715
    :goto_0
    return-void
.end method


# virtual methods
.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 198
    nop

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageV3;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object v0

    .line 198
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method getAllFieldsRaw()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 213
    nop

    .line 214
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageV3;->getAllFieldsMutable(Z)Ljava/util/Map;

    move-result-object v0

    .line 213
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$000(Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;)Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 234
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$200(Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->get(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getFieldRaw(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 246
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$200(Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->getRaw(Lcom/google/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 1
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .line 224
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$100(Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->get(Lcom/google/protobuf/GeneratedMessageV3;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "+",
            "Lcom/google/protobuf/GeneratedMessageV3;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p2, "index"    # I

    .line 257
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$200(Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    .line 258
    invoke-interface {v0, p0, p2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->getRepeated(Lcom/google/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 251
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$200(Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    .line 252
    invoke-interface {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->getRepeatedCount(Lcom/google/protobuf/GeneratedMessageV3;)I

    move-result v0

    return v0
.end method

.method public getSerializedSize()I
    .locals 2

    .line 340
    iget v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->memoizedSize:I

    .line 341
    .local v0, "size":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 342
    return v0

    .line 345
    :cond_0
    nop

    .line 346
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getAllFieldsRaw()Ljava/util/Map;

    move-result-object v1

    .line 345
    invoke-static {p0, v1}, Lcom/google/protobuf/MessageReflection;->getSerializedSize(Lcom/google/protobuf/Message;Ljava/util/Map;)I

    move-result v1

    iput v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->memoizedSize:I

    .line 347
    iget v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->memoizedSize:I

    return v1
.end method

.method public getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1
    .param p1, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 229
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$200(Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;->has(Lcom/google/protobuf/GeneratedMessageV3;)Z

    move-result v0

    return v0
.end method

.method public hasOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 1
    .param p1, "oneof"    # Lcom/google/protobuf/Descriptors$OneofDescriptor;

    .line 219
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->access$100(Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable$OneofAccessor;->has(Lcom/google/protobuf/GeneratedMessageV3;)Z

    move-result v0

    return v0
.end method

.method protected abstract internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
.end method

.method protected internalGetMapField(I)Lcom/google/protobuf/MapField;
    .locals 3
    .param p1, "fieldNumber"    # I

    .line 1682
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No map fields found in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1683
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInitialized()Z
    .locals 7

    .line 168
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 170
    .local v1, "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    return v3

    .line 176
    :cond_0
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v4, :cond_4

    .line 177
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 179
    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 180
    .local v2, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/Message;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/Message;

    .line 181
    .local v5, "element":Lcom/google/protobuf/Message;
    invoke-interface {v5}, Lcom/google/protobuf/Message;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_1

    .line 182
    return v3

    .line 184
    .end local v5    # "element":Lcom/google/protobuf/Message;
    :cond_1
    goto :goto_1

    .line 185
    .end local v2    # "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/Message;>;"
    :cond_2
    goto :goto_2

    .line 186
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Message;

    invoke-interface {v2}, Lcom/google/protobuf/Message;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4

    .line 187
    return v3

    .line 191
    .end local v1    # "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    :cond_4
    :goto_2
    goto :goto_0

    .line 193
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method protected makeExtensionsImmutable()V
    .locals 0

    .line 357
    return-void
.end method

.method protected newBuilderForType(Lcom/google/protobuf/AbstractMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/AbstractMessage$BuilderParent;

    .line 374
    new-instance v0, Lcom/google/protobuf/GeneratedMessageV3$1;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$1;-><init>(Lcom/google/protobuf/GeneratedMessageV3;Lcom/google/protobuf/AbstractMessage$BuilderParent;)V

    invoke-virtual {p0, v0}, Lcom/google/protobuf/GeneratedMessageV3;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
.end method

.method protected parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "unknownFields"    # Lcom/google/protobuf/UnknownFieldSet$Builder;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p4, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-virtual {p2, p4, p1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeFieldFrom(ILcom/google/protobuf/CodedInputStream;)Z

    move-result v0

    return v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 2666
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;-><init>(Lcom/google/protobuf/MessageLite;)V

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

    .line 335
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->getAllFieldsRaw()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/google/protobuf/MessageReflection;->writeMessageTo(Lcom/google/protobuf/Message;Ljava/util/Map;Lcom/google/protobuf/CodedOutputStream;Z)V

    .line 336
    return-void
.end method
